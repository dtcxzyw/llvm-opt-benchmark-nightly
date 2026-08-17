inline.NumInlined: 15
inline.NumDeleted: 6
begin_hunk_0_@evp_keymgmt_util_match:bb.a
  br i1 %.not92, label %.thread129, label %bb.n

.thread129:                                       ; preds = %bb.c, %bb.j, %bb.g, %.split127
  %.3137 = phi ptr [ %.3, %.split127 ], [ %i.j, %bb.g ], [ null, %bb.j ], [ %i.j, %bb.c ] ; 2 uses
  %.366136 = phi ptr [ %i.f, %.split127 ], [ null, %bb.g ], [ %i.f, %bb.j ], [ %i.f, %bb.c ] ; 2 uses
  %.374135 = phi ptr [ %.374, %.split127 ], [ %i.h, %bb.g ], [ %i.d, %bb.j ], [ %i.d, %bb.c ]
  %i.v = icmp eq ptr %.366136, null               ; 2 uses
  %i.w = icmp eq ptr %.3137, null                 ; 2 uses
  %or.cond9 = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond9, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.thread129.thread, %.thread129
  %i.x = phi i1 [ %i.r, %.thread129.thread ], [ %i.w, %.thread129 ]
  %i.y = phi i1 [ false, %.thread129.thread ], [ %i.v, %.thread129 ]
  %.374135162 = phi ptr [ %i.h, %.thread129.thread ], [ %.374135, %.thread129 ]
  %.366136161 = phi ptr [ %.fr, %.thread129.thread ], [ %.366136, %.thread129 ]
  %.3137160 = phi ptr [ %i.j, %.thread129.thread ], [ %.3137, %.thread129 ]
  %or.cond11 = select i1 %i.y, i1 true, i1 %i.x
  br i1 %or.cond11, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = tail call i32 @evp_keymgmt_match(ptr noundef %.374135162, ptr noundef nonnull %.366136161, ptr noundef nonnull %.3137160, i32 noundef %2) #5
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %.thread129, %.split127, %.critedge, %bb.b, %bb.m
  %.176 = phi i32 [ %., %bb.b ], [ -1, %.critedge ], [ %i.z, %bb.m ], [ -2, %.split127 ], [ 1, %.thread129 ], [ 0, %bb.l ]
  ret i32 %.176
}

declare i32 @evp_keymgmt_match(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @evp_keymgmt_util_copy(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.evp_keymgmt_util_try_import_data_st, align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18   ; 4 uses
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18   ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq ptr %i.b, null
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  br i1 %i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp eq ptr %i.b, %i.k
  br i1 %i.m, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.c, %bb.d
  %.03652 = phi ptr [ %i.b, %bb.d ], [ %i.k, %bb.c ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.03652, i64 256
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !55
  %i.p = icmp ne ptr %i.o, null
  %i.q = icmp eq ptr %i.d, null
  %or.cond = select i1 %i.p, i1 %i.q, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread
  %i.r = tail call ptr @evp_keymgmt_dup(ptr noundef nonnull %.03652, ptr noundef nonnull %i.g, i32 noundef %2) #5 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.l, label %bb.h

bb.f:                                             ; preds = %.thread, %bb.d
  %.03651 = phi ptr [ %.03652, %.thread ], [ %i.b, %bb.d ] ; 3 uses
  %i.t = tail call ptr @EVP_KEYMGMT_get0_name(ptr noundef %i.k) #5
  %i.u = tail call i32 @EVP_KEYMGMT_is_a(ptr noundef nonnull %.03651, ptr noundef %i.t) #5
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.g, label %evp_keymgmt_util_export.exit

evp_keymgmt_util_export.exit:                     ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  store ptr %.03651, ptr %3, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.d, ptr %i.v, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %2, ptr %i.w, align 8, !tbaa !17
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !33
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.z = call i32 @evp_keymgmt_export(ptr noundef %i.x, ptr noundef %i.y, i32 noundef %2, ptr noundef nonnull @evp_keymgmt_util_try_import, ptr noundef nonnull %3) #5
  %.not43.not = icmp eq i32 %i.z, 0
  %i.aa = icmp eq ptr %i.d, null                  ; 2 uses
  %i.ab = load ptr, ptr %i.v, align 8             ; 2 uses
  %spec.select = select i1 %i.aa, ptr %i.ab, ptr %i.d
  %spec.select45 = select i1 %i.aa, ptr %i.ab, ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br i1 %.not43.not, label %bb.l, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 490, ptr noundef nonnull @__func__.evp_keymgmt_util_copy) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 101, ptr noundef null) #5
  br label %bb.l

bb.h:                                             ; preds = %evp_keymgmt_util_export.exit, %bb.e
  %.03650 = phi ptr [ %.03652, %bb.e ], [ %.03651, %evp_keymgmt_util_export.exit ] ; 2 uses
  %.235 = phi ptr [ %i.r, %bb.e ], [ %spec.select, %evp_keymgmt_util_export.exit ]
  %.2 = phi ptr [ %i.r, %bb.e ], [ %spec.select45, %evp_keymgmt_util_export.exit ]
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ae = call i32 @EVP_PKEY_set_type_by_keymgmt(ptr noundef nonnull %0, ptr noundef nonnull %.03650) #5
  %.not44 = icmp eq i32 %i.ae, 0
  br i1 %.not44, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @evp_keymgmt_freedata(ptr noundef nonnull %.03650, ptr noundef %.2) #5
  br label %bb.l

bb.k:                                             ; preds = %bb.i, %bb.h
  store ptr %.235, ptr %i.c, align 8, !tbaa !18
  call void @evp_keymgmt_util_cache_keyinfo(ptr noundef nonnull %0)
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.a, %bb.b, %evp_keymgmt_util_export.exit, %bb.k, %bb.j, %bb.g
  %.138 = phi i32 [ 0, %bb.g ], [ 0, %bb.a ], [ 1, %bb.k ], [ 0, %bb.j ], [ 0, %evp_keymgmt_util_export.exit ], [ 0, %bb.b ], [ 0, %bb.e ]
  ret i32 %.138
}

declare ptr @evp_keymgmt_dup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @evp_keymgmt_util_gen(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @evp_keymgmt_gen(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #5 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, null
  %i.d = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.c, %i.d
  br i1 %or.cond.i, label %evp_keymgmt_util_assign_pkey.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @EVP_PKEY_set_type_by_keymgmt(ptr noundef nonnull %0, ptr noundef nonnull %1) #5
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %evp_keymgmt_util_assign_pkey.exit.thread, label %evp_keymgmt_util_assign_pkey.exit

evp_keymgmt_util_assign_pkey.exit.thread:         ; preds = %bb.b, %bb.c
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 65, ptr noundef nonnull @__func__.evp_keymgmt_util_assign_pkey) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786691, ptr noundef null) #5
  br label %bb.d

evp_keymgmt_util_assign_pkey.exit:                ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.a, ptr %i.f, align 8, !tbaa !18
  tail call void @evp_keymgmt_util_cache_keyinfo(ptr noundef nonnull %0)
  br label %bb.e

bb.d:                                             ; preds = %evp_keymgmt_util_assign_pkey.exit.thread, %bb.a
  tail call void @evp_keymgmt_freedata(ptr noundef %1, ptr noundef %i.a) #5
  br label %bb.e

bb.e:                                             ; preds = %evp_keymgmt_util_assign_pkey.exit, %bb.d
  %.0 = phi ptr [ null, %bb.d ], [ %i.a, %evp_keymgmt_util_assign_pkey.exit ]
  ret ptr %.0
}

declare ptr @evp_keymgmt_gen(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -2, 3) i32 @evp_keymgmt_util_get_deflt_digest_name(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca [3 x %struct.ossl_param_st], align 16 ; 9 uses
  %i.a = alloca [100 x i8], align 16              ; 5 uses
  %i.b = alloca [100 x i8], align 16              ; 5 uses
  %5 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %6 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(100) %i.a, i8 0, i64 100, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(100) %i.b, i8 0, i64 100, i1 false)
  call void @OSSL_PARAM_construct_utf8_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %4, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.a, i64 noundef 100) #5
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @OSSL_PARAM_construct_utf8_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %5, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.b, i64 noundef 100) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %6) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  %i.e = call i32 @evp_keymgmt_get_params(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #5
  %.not = icmp eq i32 %i.e, 0
  %.sink18.sroa.gep19 = getelementptr inbounds nuw i8, ptr %4, i64 32
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sink18.sroa.gep = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.f = call i32 @OSSL_PARAM_modified(ptr noundef nonnull %i.c) #5
  %.not9 = icmp eq i32 %i.f, 0
  br i1 %.not9, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = call i32 @OSSL_PARAM_modified(ptr noundef nonnull %4) #5
  %.not10 = icmp eq i32 %i.g, 0
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink18.sroa.phi = phi ptr [ %.sink18.sroa.gep, %bb.b ], [ %.sink18.sroa.gep19, %bb.c ]
  %.sink16 = phi ptr [ %i.b, %bb.b ], [ %i.a, %bb.c ]
  %.0.ph = phi i32 [ 2, %bb.b ], [ 1, %bb.c ]
  %7 = load i64, ptr %.sink18.sroa.phi, align 8, !tbaa !56
  %i.h = icmp ult i64 %7, 2
  %.str.7. = select i1 %i.h, ptr @.str.7, ptr %.sink16
  %i.i = call i64 @OPENSSL_strlcpy(ptr noundef %2, ptr noundef nonnull %.str.7., i64 noundef %3) #5 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.08 = phi i32 [ 0, %bb.a ], [ %.0.ph, %bb.d ], [ -2, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  ret i32 %.08
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare void @OSSL_PARAM_construct_utf8_string(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @OSSL_PARAM_modified(ptr noundef) local_unnamed_addr #2

declare i64 @OPENSSL_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @evp_keymgmt_util_query_operation_name(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %.not8 = icmp eq ptr %i.b, null
  br i1 %.not8, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr %i.b(i32 noundef %1) #5    ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.b, %bb.c
  %i.e = tail call ptr @EVP_KEYMGMT_get0_name(ptr noundef nonnull %0) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread, %bb.a
  %.1 = phi ptr [ %i.e, %.thread ], [ %i.c, %bb.c ], [ null, %bb.a ]
  ret ptr %.1
}

declare ptr @EVP_KEYMGMT_get0_name(ptr noundef) local_unnamed_addr #2

declare i32 @EVP_KEYMGMT_is_a(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @sk_OP_CACHE_ELEM_freefunc_thunk(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #4 {
bb.a:
  tail call void %0(ptr noundef %1) #5
  ret void
}

declare ptr @OPENSSL_sk_set_thunks(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_sk_value(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @OPENSSL_sk_new_null() local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!8 = !{!9, !11, i64 8}
!9 = !{!"evp_keymgmt_util_try_import_data_st", !10, i64 0, !11, i64 8, !5, i64 16}
!10 = !{!"p1 _ZTS14evp_keymgmt_st", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!9, !10, i64 0}
!13 = !{!14, !15, i64 0}
!14 = !{!"ossl_param_st", !15, i64 0, !5, i64 8, !11, i64 16, !16, i64 24, !16, i64 32}
!15 = !{!"p1 omnipotent char", !11, i64 0}
!16 = !{!"long", !6, i64 0}
!17 = !{!9, !5, i64 16}
!18 = !{!19, !11, i64 88}
!19 = !{!"evp_pkey_st", !5, i64 0, !5, i64 4, !20, i64 8, !6, i64 16, !6, i64 24, !21, i64 32, !11, i64 40, !22, i64 48, !5, i64 56, !5, i64 60, !23, i64 64, !10, i64 80, !11, i64 88, !16, i64 96, !26, i64 104, !16, i64 112, !27, i64 120}
!20 = !{!"p1 _ZTS23evp_pkey_asn1_method_st", !11, i64 0}
!21 = !{!"", !6, i64 0}
!22 = !{!"p1 _ZTS23stack_st_X509_ATTRIBUTE", !11, i64 0}
!23 = !{!"crypto_ex_data_st", !24, i64 0, !25, i64 8}
!24 = !{!"p1 _ZTS15ossl_lib_ctx_st", !11, i64 0}
!25 = !{!"p1 _ZTS13stack_st_void", !11, i64 0}
!26 = !{!"p1 _ZTS22stack_st_OP_CACHE_ELEM", !11, i64 0}
!27 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!28 = !{!5, !5, i64 0}
!29 = !{i64 0, i64 8, !30, i64 8, i64 4, !28, i64 16, i64 8, !31, i64 24, i64 8, !32, i64 32, i64 8, !32}
!30 = !{!15, !15, i64 0}
!31 = !{!11, !11, i64 0}
!32 = !{!16, !16, i64 0}
!33 = !{!19, !10, i64 80}
!34 = !{!19, !5, i64 132}
!35 = !{!19, !5, i64 120}
!36 = !{!19, !5, i64 124}
!37 = !{!19, !5, i64 128}
!38 = !{!39, !5, i64 4}
!39 = !{!"evp_keymgmt_st", !5, i64 0, !5, i64 4, !5, i64 8, !15, i64 16, !15, i64 24, !40, i64 32, !21, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256}
!40 = !{!"p1 _ZTS16ossl_provider_st", !11, i64 0}
!41 = !{!39, !40, i64 32}
!42 = !{!19, !11, i64 40}
!43 = !{!19, !16, i64 96}
!44 = !{!19, !16, i64 112}
!45 = !{!19, !26, i64 104}
!46 = !{!47, !5, i64 16}
!47 = !{!"", !10, i64 0, !11, i64 8, !5, i64 16}
!48 = !{!47, !10, i64 0}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!47, !11, i64 8}
!52 = !{!39, !11, i64 232}
!53 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!54 = !{!39, !11, i64 200}
!55 = !{!39, !11, i64 256}
!56 = !{!14, !16, i64 32}
!57 = !{!39, !11, i64 176}
end_hunk_0
