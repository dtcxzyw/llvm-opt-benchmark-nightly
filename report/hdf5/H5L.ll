begin_hunk_0_@H5Lvisit_by_name2:bb.a

bb.o:                                             ; preds = %bb.m
  %or.cond3 = icmp ugt i32 %3, 2
  br i1 %or.cond3, label %bb.p, label %bb.q, !prof !21

bb.p:                                             ; preds = %bb.o
  %i.al = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !8
  %i.am = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !8
  %i.an = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Lvisit_by_name2, i32 noundef 1857, i64 noundef %i.al, i64 noundef %i.am, ptr noundef nonnull @.str.59) #7 ; 0 uses
  br label %.thread56

bb.q:                                             ; preds = %bb.o
  %.not41 = icmp eq ptr %4, null
  br i1 %.not41, label %bb.r, label %bb.s, !prof !21

bb.r:                                             ; preds = %bb.q
  %i.ao = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !8
  %i.ap = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !8
  %i.aq = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Lvisit_by_name2, i32 noundef 1859, i64 noundef %i.ao, i64 noundef %i.ap, ptr noundef nonnull @.str.87) #7 ; 0 uses
  br label %.thread56

bb.s:                                             ; preds = %bb.q
  %i.ar = call i32 @H5CX_set_apl(ptr noundef nonnull %i.a, ptr noundef nonnull @H5P_CLS_LACC, i64 noundef %0, i1 noundef zeroext false) #7
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %bb.t, label %bb.u, !prof !21

bb.t:                                             ; preds = %bb.s
  %i.at = load i64, ptr @H5E_LINK_g, align 8, !tbaa !8
  %i.au = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !8
  %i.av = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Lvisit_by_name2, i32 noundef 1863, i64 noundef %i.at, i64 noundef %i.au, ptr noundef nonnull @.str.10) #7 ; 0 uses
  br label %.thread56

bb.u:                                             ; preds = %bb.s
  %i.aw = call ptr @H5VL_vol_object(i64 noundef %0) #7 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.v, label %bb.w, !prof !21

bb.v:                                             ; preds = %bb.u
  %i.ay = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !8
  %i.az = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !8
  %i.ba = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Lvisit_by_name2, i32 noundef 1867, i64 noundef %i.ay, i64 noundef %i.az, ptr noundef nonnull @.str.11) #7 ; 0 uses
  br label %.thread56

bb.w:                                             ; preds = %bb.u
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 1, ptr %i.bb, align 4, !tbaa !18
  %i.bc = call i32 @H5I_get_type(i64 noundef %0) #7
  store i32 %i.bc, ptr %8, align 8, !tbaa !20
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %1, ptr %i.bd, align 8, !tbaa !17
  %i.be = load i64, ptr %i.a, align 8, !tbaa !8
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !17
  store i32 2, ptr %7, align 8, !tbaa !30
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 1, ptr %i.bg, align 8, !tbaa !17
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %2, ptr %i.bh, align 4, !tbaa !17
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %3, ptr %i.bi, align 8, !tbaa !17
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr null, ptr %i.bj, align 8, !tbaa !17
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %4, ptr %i.bk, align 8, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %5, ptr %i.bl, align 8, !tbaa !17
  %i.bm = load i64, ptr @H5P_LST_DATASET_XFER_ID_g, align 8, !tbaa !8
  %i.bn = call i32 @H5VL_link_specific(ptr noundef nonnull %i.aw, ptr noundef nonnull %8, ptr noundef nonnull %7, i64 noundef %i.bm, ptr noundef null) #7 ; 2 uses
  %i.bo = icmp slt i32 %i.bn, 0
  br i1 %i.bo, label %bb.x, label %bb.y, !prof !21

bb.x:                                             ; preds = %bb.w
  %i.bp = load i64, ptr @H5E_LINK_g, align 8, !tbaa !8
  %i.bq = load i64, ptr @H5E_BADITER_g, align 8, !tbaa !8
  %i.br = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Lvisit_by_name2, i32 noundef 1887, i64 noundef %i.bp, i64 noundef %i.bq, ptr noundef nonnull @.str.88) #7 ; 0 uses
  br label %.thread56

.thread56:                                        ; preds = %bb.j, %bb.l, %bb.r, %bb.x, %bb.v, %bb.t, %bb.p, %bb.n
  %i.bs = call i32 @H5CX_pop(i1 noundef zeroext true) #7 ; 0 uses
  br label %.thread50

bb.y:                                             ; preds = %bb.w
  %i.bt = call i32 @H5CX_pop(i1 noundef zeroext true) #7 ; 0 uses
  br label %bb.z

.thread50:                                        ; preds = %bb.h, %bb.f, %bb.c, %.thread56
  %i.bu = call i32 @H5E_dump_api_stack() #7       ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.thread50
  %.0334553 = phi i32 [ -1, %.thread50 ], [ %i.bn, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  ret i32 %.0334553
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5Lunpack_elink_val(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.H5CX_node_t, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %5, i8 0, i64 480, i1 false)
  %i.a = load i8, ptr @H5_libinit_g, align 1, !tbaa !10, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !12 ; 2 uses
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @H5_init_library() #7
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge, !prof !15

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5_libterm_g, align 1, !range !12
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !8
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !8
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Lunpack_elink_val, i32 noundef 1923, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.1) #7 ; 0 uses
  br label %.thread55

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %i.k = phi i8 [ %.pre, %._crit_edge ], [ %i.c, %bb.a ]
  %i.l = load i8, ptr @H5L_init_g, align 1, !tbaa !10, !range !12, !noundef !13
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = trunc nuw i8 %i.k to i1
  %i.o = select i1 %i.m, i1 true, i1 %i.n
  br i1 %i.o, label %bb.g, label %bb.e, !prof !14

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr @H5L_init_g, align 1, !tbaa !10
  %i.p = tail call i32 @H5L__init_package() #7
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g, !prof !16

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr @H5L_init_g, align 1, !tbaa !10
  %i.r = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !8
  %i.s = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !8
  %i.t = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Lunpack_elink_val, i32 noundef 1923, i64 noundef %i.r, i64 noundef %i.s, ptr noundef nonnull @.str.2) #7 ; 0 uses
  br label %.thread55

bb.g:                                             ; preds = %bb.d, %bb.e
  %i.u = call i32 @H5CX_push(ptr noundef nonnull %5) #7
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %bb.i, !prof !15

bb.h:                                             ; preds = %bb.g
  %i.w = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !8
  %i.x = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !8
  %i.y = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Lunpack_elink_val, i32 noundef 1923, i64 noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.3) #7 ; 0 uses
  br label %.thread55

bb.i:                                             ; preds = %bb.g
  %i.z = call i32 @H5E_clear_stack() #7           ; 0 uses
  %i.aa = icmp eq ptr %0, null
  br i1 %i.aa, label %bb.j, label %bb.k, !prof !21

bb.j:                                             ; preds = %bb.i
  %i.ab = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !8
  %i.ac = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !8
  %i.ad = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Lunpack_elink_val, i32 noundef 1927, i64 noundef %i.ab, i64 noundef %i.ac, ptr noundef nonnull @.str.89) #7 ; 0 uses
  br label %.thread61

bb.k:                                             ; preds = %bb.i
  %i.ae = load i8, ptr %0, align 1, !tbaa !17     ; 2 uses
  %.not = icmp ult i8 %i.ae, 16
  br i1 %.not, label %bb.m, label %bb.l, !prof !39

bb.l:                                             ; preds = %bb.k
  %i.af = load i64, ptr @H5E_LINK_g, align 8, !tbaa !8
  %i.ag = load i64, ptr @H5E_CANTDECODE_g, align 8, !tbaa !8
  %i.ah = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Lunpack_elink_val, i32 noundef 1931, i64 noundef %i.af, i64 noundef %i.ag, ptr noundef nonnull @.str.90) #7 ; 0 uses
  br label %.thread61

bb.m:                                             ; preds = %bb.k
  %.not41 = icmp eq i8 %i.ae, 0
  br i1 %.not41, label %bb.o, label %bb.n, !prof !39

bb.n:                                             ; preds = %bb.m
  %i.ai = load i64, ptr @H5E_LINK_g, align 8, !tbaa !8
  %i.aj = load i64, ptr @H5E_CANTDECODE_g, align 8, !tbaa !8
  %i.ak = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Lunpack_elink_val, i32 noundef 1933, i64 noundef %i.ai, i64 noundef %i.aj, ptr noundef nonnull @.str.91) #7 ; 0 uses
  br label %.thread61

bb.o:                                             ; preds = %bb.m
  %i.al = icmp ult i64 %1, 3
  br i1 %i.al, label %bb.p, label %bb.q, !prof !21

bb.p:                                             ; preds = %bb.o
  %i.am = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !8
  %i.an = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !8
  %i.ao = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Lunpack_elink_val, i32 noundef 1935, i64 noundef %i.am, i64 noundef %i.an, ptr noundef nonnull @.str.92) #7 ; 0 uses
  br label %.thread61

bb.q:                                             ; preds = %bb.o
  %6 = getelementptr i8, ptr %0, i64 %1
  %i.ap = getelementptr i8, ptr %6, i64 -1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !17
  %.not42 = icmp eq i8 %i.aq, 0
  br i1 %.not42, label %bb.s, label %bb.r, !prof !39

bb.r:                                             ; preds = %bb.q
  %i.ar = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !8
  %i.as = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !8
  %i.at = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Lunpack_elink_val, i32 noundef 1941, i64 noundef %i.ar, i64 noundef %i.as, ptr noundef nonnull @.str.93) #7 ; 0 uses
  br label %.thread61

bb.s:                                             ; preds = %bb.q
  %7 = add i64 %1, -1
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.av = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.au) #8 ; 2 uses
  %i.aw = add i64 %i.av, 1
  %.not43 = icmp ult i64 %i.aw, %7
  br i1 %.not43, label %bb.u, label %bb.t, !prof !39

bb.t:                                             ; preds = %bb.s
  %i.ax = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !8
  %i.ay = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !8
  %i.az = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Lunpack_elink_val, i32 noundef 1952, i64 noundef %i.ax, i64 noundef %i.ay, ptr noundef nonnull @.str.94) #7 ; 0 uses
  br label %.thread61

bb.u:                                             ; preds = %bb.s
  %.not44 = icmp eq ptr %3, null
  br i1 %.not44, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr %i.au, ptr %3, align 8, !tbaa !40
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.not45 = icmp eq ptr %4, null
  br i1 %.not45, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.av
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store ptr %i.bb, ptr %4, align 8, !tbaa !40
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.not46 = icmp eq ptr %2, null
  br i1 %.not46, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %2, align 4, !tbaa !41
  br label %bb.aa

.thread61:                                        ; preds = %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j
  %i.bc = call i32 @H5CX_pop(i1 noundef zeroext true) #7 ; 0 uses
  br label %.thread55

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.bd = call i32 @H5CX_pop(i1 noundef zeroext true) #7 ; 0 uses
  br label %bb.ab

.thread55:                                        ; preds = %bb.h, %bb.f, %bb.c, %.thread61
  %i.be = call i32 @H5E_dump_api_stack() #7       ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.thread55
  %.0345058 = phi i32 [ -1, %.thread55 ], [ 0, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  ret i32 %.0345058
}

declare i32 @H5VL_setup_name_args(i64 noundef, ptr noundef, i1 noundef zeroext, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @H5VL_obj_get_data(ptr noundef) local_unnamed_addr #3

declare i32 @H5VL_setup_idx_args(i64 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i1 noundef zeroext, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @H5VL_setup_self_args(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind allocsize(0) }

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
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"_Bool", !6, i64 0}
!12 = !{i8 0, i8 2}
!13 = !{}
!14 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!15 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!16 = !{!"branch_weights", i32 1073205, i32 2146410443}
!17 = !{!6, !6, i64 0}
!18 = !{!19, !5, i64 4}
!19 = !{!"H5VL_loc_params_t", !5, i64 0, !5, i64 4, !6, i64 8}
!20 = !{!19, !5, i64 0}
!21 = !{!"branch_weights", i32 0, i32 -2147483648}
!22 = !{!23, !23, i64 0}
!23 = !{!"p1 _ZTS13H5VL_object_t", !24, i64 0}
!24 = !{!"any pointer", !6, i64 0}
!25 = !{!26, !5, i64 0}
!26 = !{!"H5VL_link_create_args_t", !5, i64 0, !6, i64 8}
!27 = !{!24, !24, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"p1 _ZTS16H5VL_connector_t", !24, i64 0}
!30 = !{!31, !5, i64 0}
!31 = !{!"H5VL_link_specific_args_t", !5, i64 0, !6, i64 8}
!32 = !{!33, !5, i64 0}
!33 = !{!"H5VL_link_get_args_t", !5, i64 0, !6, i64 8}
!34 = !{!35, !5, i64 0}
!35 = !{!"", !5, i64 0, !5, i64 4, !36, i64 8, !24, i64 16, !24, i64 24, !24, i64 32, !24, i64 40, !24, i64 48, !24, i64 56}
!36 = !{!"p1 omnipotent char", !24, i64 0}
!37 = !{!35, !5, i64 4}
!38 = !{!35, !24, i64 40}
!39 = !{!"branch_weights", i32 -2147483648, i32 0}
!40 = !{!36, !36, i64 0}
!41 = !{!5, !5, i64 0}
end_hunk_0
