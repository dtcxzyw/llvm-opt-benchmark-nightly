inline.NumInlined: 6
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.prov_param_st = type { ptr, ptr, ptr, i32 }

@.str = private unnamed_addr constant [105 x i8] c"%s: unable to load provider %s\0AHint: use -provider-path option or OPENSSL_MODULES environment variable.\0A\00", align 1
@bio_err = external local_unnamed_addr global ptr, align 8
@app_providers = internal unnamed_addr global ptr null, align 8
@provider_option_given = internal unnamed_addr global i1 false, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"../../deps/openssl/openssl/apps/lib/app_provider.c\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"%s: malformed '-provparam' option value: '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"%s: Error setting provider '%s' parameter '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"%s: No provider named '%s' is loaded\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @app_provider_load(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @OSSL_PROVIDER_load(ptr noundef %0, ptr noundef %1) #6 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @opt_getprog() #6
  %i.d = tail call i32 (ptr, ...) @opt_printf_stderr(ptr noundef nonnull @.str, ptr noundef %i.c, ptr noundef %1) #6 ; 0 uses
  %i.e = load ptr, ptr @bio_err, align 8, !tbaa !9
  tail call void @ERR_print_errors(ptr noundef %i.e) #6
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @app_providers, align 8, !tbaa !12 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @OPENSSL_sk_new_null() #6  ; 3 uses
  store ptr %i.h, ptr @app_providers, align 8, !tbaa !12
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.j = phi ptr [ %i.h, %bb.d ], [ %i.f, %bb.c ]
  %i.k = tail call i32 @OPENSSL_sk_push(ptr noundef nonnull %i.j, ptr noundef nonnull %i.a) #6
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %.thread._crit_edge, label %bb.f

.thread._crit_edge:                               ; preds = %.thread
  %.pre = load ptr, ptr @app_providers, align 8, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %.thread._crit_edge, %bb.d
  %i.l = phi ptr [ %.pre, %.thread._crit_edge ], [ null, %bb.d ]
  tail call void @OPENSSL_sk_pop_free(ptr noundef %i.l, ptr noundef nonnull @provider_free) #6
  store ptr null, ptr @app_providers, align 8, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.e ], [ 1, %.thread ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @OSSL_PROVIDER_load(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @opt_printf_stderr(ptr noundef, ...) local_unnamed_addr #2

declare ptr @opt_getprog() local_unnamed_addr #2

declare void @ERR_print_errors(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @app_providers_cleanup() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @app_providers, align 8, !tbaa !12
  tail call void @OPENSSL_sk_pop_free(ptr noundef %i.a, ptr noundef nonnull @provider_free) #6
  store ptr null, ptr @app_providers, align 8, !tbaa !12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal void @provider_free(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @OSSL_PROVIDER_unload(ptr noundef %0) #6 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @opt_provider(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.prov_param_st, align 8      ; 9 uses
  %.b = load i1, ptr @provider_option_given, align 4
  store i1 true, ptr @provider_option_given, align 4
  switch i32 %0, label %bb.s [
    i32 1600, label %bb.t
    i32 1605, label %bb.t
    i32 1601, label %bb.b
    i32 1602, label %bb.c
    i32 1604, label %bb.e
    i32 1603, label %bb.r
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @app_get0_libctx() #6
  %i.b = tail call ptr @opt_arg() #6
  %i.c = tail call i32 @app_provider_load(ptr noundef %i.a, ptr noundef %i.b)
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @opt_arg() #6              ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %opt_provider_path.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !14
  %i.f = icmp eq i8 %i.e, 0
  %spec.store.select.i = select i1 %i.f, ptr null, ptr %i.d
  br label %opt_provider_path.exit

opt_provider_path.exit:                           ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %spec.store.select.i, %bb.d ], [ null, %bb.c ]
  %i.g = tail call ptr @app_get0_libctx() #6
  %i.h = tail call i32 @OSSL_PROVIDER_set_default_search_path(ptr noundef %i.g, ptr noundef %.0.i) #6
  br label %bb.t

bb.e:                                             ; preds = %bb.a
  %i.i = tail call ptr @opt_arg() #6              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  %i.j = tail call ptr @CRYPTO_strdup(ptr noundef %i.i, ptr noundef nonnull @.str.1, i32 noundef 92) #6 ; 10 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.j, i32 noundef 61) #7 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !15
  %i.n = icmp eq ptr %i.l, null
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = tail call ptr @opt_getprog() #6
  %i.p = tail call i32 (ptr, ...) @opt_printf_stderr(ptr noundef nonnull @.str.2, ptr noundef %i.o, ptr noundef %i.i) #6 ; 0 uses
  br label %opt_provider_param.exit

bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store ptr %i.q, ptr %i.m, align 8, !tbaa !15
  store i8 0, ptr %i.l, align 1, !tbaa !14
  %i.r = icmp ugt ptr %i.l, %i.j
  %i.s = tail call ptr @__ctype_b_loc() #8        ; 2 uses
  br i1 %i.r, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.h, %bb.i
  %.01422.i = phi ptr [ %i.u, %bb.i ], [ %i.l, %bb.h ]
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !18
  %i.u = getelementptr inbounds i8, ptr %.01422.i, i64 -1 ; 4 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !14
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2, !tbaa !20
  %i.z = and i16 %i.y, 8192
  %.not.i5 = icmp eq i16 %i.z, 0
  br i1 %.not.i5, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  store i8 0, ptr %i.u, align 1, !tbaa !14
  %i.aa = icmp ugt ptr %i.u, %i.j
  br i1 %i.aa, label %.lr.ph.i, label %.critedge.i, !llvm.loop !22

.critedge.i:                                      ; preds = %bb.i, %.lr.ph.i, %bb.h
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !18  ; 2 uses
  %.promoted.i = load ptr, ptr %i.m, align 8, !tbaa !15 ; 2 uses
  %i.ac = load i8, ptr %.promoted.i, align 1, !tbaa !14
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !20
  %i.ag = and i16 %i.af, 8192
  %.not1924.i = icmp eq i16 %i.ag, 0
  br i1 %.not1924.i, label %._crit_edge.i, label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %.critedge.i, %.lr.ph25.i
  %i.ah = phi ptr [ %i.ai, %.lr.ph25.i ], [ %.promoted.i, %.critedge.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1 ; 3 uses
  store ptr %i.ai, ptr %i.m, align 8, !tbaa !15
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !14
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.ak
  %i.am = load i16, ptr %i.al, align 2, !tbaa !20
  %i.an = and i16 %i.am, 8192
  %.not19.i = icmp eq i16 %i.an, 0
  br i1 %.not19.i, label %._crit_edge.i, label %.lr.ph25.i, !llvm.loop !24

._crit_edge.i:                                    ; preds = %.lr.ph25.i, %.critedge.i
  %i.ao = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.j, i32 noundef 58) #7 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.not20.i = icmp eq ptr %i.ao, null
  br i1 %.not20.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !25
  store i8 0, ptr %i.ao, align 1, !tbaa !14
  %i.ar = load i8, ptr %i.j, align 1, !tbaa !14
  %.not21.i = icmp eq i8 %i.ar, 0
  %i.as = select i1 %.not21.i, ptr null, ptr %i.j
  %.pre.i = load ptr, ptr %i.ap, align 8, !tbaa !25
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i
  store ptr %i.j, ptr %i.ap, align 8, !tbaa !25
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.at = phi ptr [ %i.j, %bb.k ], [ %.pre.i, %bb.j ]
  %.sink.i = phi ptr [ null, %bb.k ], [ %i.as, %bb.j ]
  store ptr %.sink.i, ptr %1, align 8, !tbaa !26
  %i.au = load i8, ptr %i.at, align 1, !tbaa !14
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aw = tail call ptr @opt_getprog() #6
  %i.ax = tail call i32 (ptr, ...) @opt_printf_stderr(ptr noundef nonnull @.str.2, ptr noundef %i.aw, ptr noundef %i.i) #6 ; 0 uses
  br label %opt_provider_param.exit

bb.n:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store i32 0, ptr %i.ay, align 8, !tbaa !27
  %i.az = tail call ptr @app_get0_libctx() #6
  %i.ba = call i32 @OSSL_PROVIDER_do_all(ptr noundef %i.az, ptr noundef nonnull @set_prov_param, ptr noundef nonnull %1) #6 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bc = call ptr @opt_getprog() #6
  %i.bd = load ptr, ptr %1, align 8, !tbaa !26
  %i.be = load ptr, ptr %i.ap, align 8, !tbaa !25
  %i.bf = call i32 (ptr, ...) @opt_printf_stderr(ptr noundef nonnull @.str.3, ptr noundef %i.bc, ptr noundef %i.bd, ptr noundef %i.be) #6 ; 0 uses
  br label %opt_provider_param.exit

bb.p:                                             ; preds = %bb.n
  %i.bg = load i32, ptr %i.ay, align 8, !tbaa !27
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.q, label %opt_provider_param.exit

bb.q:                                             ; preds = %bb.p
  %i.bi = call ptr @opt_getprog() #6
  %i.bj = load ptr, ptr %1, align 8, !tbaa !26
  %i.bk = call i32 (ptr, ...) @opt_printf_stderr(ptr noundef nonnull @.str.4, ptr noundef %i.bi, ptr noundef %i.bj) #6 ; 0 uses
  br label %opt_provider_param.exit

opt_provider_param.exit:                          ; preds = %bb.g, %bb.m, %bb.o, %bb.p, %bb.q
  %.0.i4 = phi i32 [ 0, %bb.g ], [ 0, %bb.m ], [ 0, %bb.o ], [ 0, %bb.q ], [ %i.ba, %bb.p ]
  call void @CRYPTO_free(ptr noundef %i.j, ptr noundef nonnull @.str.1, i32 noundef 137) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  br label %bb.t

bb.r:                                             ; preds = %bb.a
  %i.bl = tail call ptr @opt_arg() #6
  %i.bm = tail call i32 @app_set_propq(ptr noundef %i.bl) #6
  br label %bb.t

bb.s:                                             ; preds = %bb.a
  store i1 %.b, ptr @provider_option_given, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.a, %bb.a, %bb.s, %bb.r, %opt_provider_param.exit, %opt_provider_path.exit, %bb.b
  %.0 = phi i32 [ 0, %bb.s ], [ %i.bm, %bb.r ], [ %i.c, %bb.b ], [ %i.h, %opt_provider_path.exit ], [ %.0.i4, %opt_provider_param.exit ], [ 1, %bb.a ], [ 1, %bb.a ]
  ret i32 %.0
}

declare ptr @app_get0_libctx() local_unnamed_addr #2

declare ptr @opt_arg() local_unnamed_addr #2

declare i32 @app_set_propq(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @opt_provider_option_given() local_unnamed_addr #3 {
bb.a:
  %.b = load i1, ptr @provider_option_given, align 4
  %i.a = zext i1 %.b to i32
  ret i32 %i.a
}

declare ptr @OPENSSL_sk_new_null() local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @OSSL_PROVIDER_unload(ptr noundef) local_unnamed_addr #2

declare i32 @OSSL_PROVIDER_set_default_search_path(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CRYPTO_strdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #5

declare i32 @OSSL_PROVIDER_do_all(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @set_prov_param(ptr noundef %0, ptr noundef captures(none) %1) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !26
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @OSSL_PROVIDER_get0_name(ptr noundef %0) #6
  %i.c = load ptr, ptr %1, align 8, !tbaa !26
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %i.c) #7
  %.not8 = icmp eq i32 %i.d, 0
  br i1 %.not8, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.e, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.j = tail call i32 @OSSL_PROVIDER_add_conf_parameter(ptr noundef %0, ptr noundef %i.g, ptr noundef %i.i) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ %i.j, %bb.c ], [ 1, %bb.b ]
  ret i32 %.0
}

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare ptr @OSSL_PROVIDER_get0_name(ptr noundef) local_unnamed_addr #2

declare i32 @OSSL_PROVIDER_add_conf_parameter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind willreturn memory(none) }

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
!10 = !{!"p1 _ZTS6bio_st", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 _ZTS22stack_st_OSSL_PROVIDER", !11, i64 0}
!14 = !{!7, !7, i64 0}
!15 = !{!16, !17, i64 16}
!16 = !{!"prov_param_st", !17, i64 0, !17, i64 8, !17, i64 16, !6, i64 24}
!17 = !{!"p1 omnipotent char", !11, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 short", !11, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"short", !7, i64 0}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = distinct !{!24, !23}
!25 = !{!16, !17, i64 8}
!26 = !{!16, !17, i64 0}
!27 = !{!16, !6, i64 24}
end_hunk_0
