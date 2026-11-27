Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Ldeprec?download=true
begin_hunk_0_@H5Lget_info1:bb.a
  br i1 %i.q, label %bb.g, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr @H5L_init_g, align 1, !tbaa !9
  %i.r = tail call i32 @H5L__init_package() #4
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.f, label %bb.g, !prof !16

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr @H5L_init_g, align 1, !tbaa !9
  %i.t = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !15
  %i.u = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !15
  %i.v = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Lget_info1, i32 noundef 311, i64 noundef %i.t, i64 noundef %i.u, ptr noundef nonnull @.str.2) #4 ; 0 uses
  br label %.thread51

bb.g:                                             ; preds = %bb.d, %bb.e
  %i.w = call i32 @H5CX_push(ptr noundef nonnull %7) #4
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.y = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !15
  %i.z = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !15
  %i.aa = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Lget_info1, i32 noundef 311, i64 noundef %i.y, i64 noundef %i.z, ptr noundef nonnull @.str.3) #4 ; 0 uses
  br label %.thread51

bb.i:                                             ; preds = %bb.g
  %i.ab = call i32 @H5E_clear_stack() #4          ; 0 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = load i8, ptr %1, align 1, !tbaa !28
  %.not41 = icmp eq i8 %i.ac, 0
  br i1 %.not41, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.ad = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !15
  %i.ae = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !15
  %i.af = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Lget_info1, i32 noundef 315, i64 noundef %i.ad, i64 noundef %i.ae, ptr noundef nonnull @.str.16) #4 ; 0 uses
  br label %.thread57

bb.l:                                             ; preds = %bb.j
  %i.ag = call i32 @H5CX_set_apl(ptr noundef nonnull %i.a, ptr noundef nonnull @H5P_CLS_LACC, i64 noundef %0, i1 noundef zeroext true) #4
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ai = load i64, ptr @H5E_LINK_g, align 8, !tbaa !15
  %i.aj = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !15
  %i.ak = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Lget_info1, i32 noundef 319, i64 noundef %i.ai, i64 noundef %i.aj, ptr noundef nonnull @.str.14) #4 ; 0 uses
  br label %.thread57

bb.n:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 1, ptr %i.al, align 4, !tbaa !20
  %i.am = call i32 @H5I_get_type(i64 noundef %0) #4
  store i32 %i.am, ptr %5, align 8, !tbaa !21
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.an, align 8, !tbaa !28
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !15
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !28
  %i.aq = call ptr @H5VL_vol_object(i64 noundef %0) #4 ; 4 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.as = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !15
  %i.at = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !15
  %i.au = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Lget_info1, i32 noundef 329, i64 noundef %i.as, i64 noundef %i.at, ptr noundef nonnull @.str.8) #4 ; 0 uses
  br label %.thread57

bb.p:                                             ; preds = %bb.n
  %i.av = call i32 @H5VL_object_is_native(ptr noundef nonnull %i.aq, ptr noundef nonnull %i.b) #4
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ax = load i64, ptr @H5E_LINK_g, align 8, !tbaa !15
  %i.ay = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !15
  %i.az = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Lget_info1, i32 noundef 333, i64 noundef %i.ax, i64 noundef %i.ay, ptr noundef nonnull @.str.9) #4 ; 0 uses
  br label %.thread57

bb.r:                                             ; preds = %bb.p
  %i.ba = load i8, ptr %i.b, align 1, !tbaa !9, !range !10, !noundef !11
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.t, label %bb.s, !prof !17

bb.s:                                             ; preds = %bb.r
  %i.bc = load i64, ptr @H5E_LINK_g, align 8, !tbaa !15
  %i.bd = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !15
  %i.be = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Lget_info1, i32 noundef 336, i64 noundef %i.bc, i64 noundef %i.bd, ptr noundef nonnull @.str.17) #4 ; 0 uses
  br label %.thread57

bb.t:                                             ; preds = %bb.r
  store i32 0, ptr %4, align 8, !tbaa !35
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %6, ptr %i.bf, align 8, !tbaa !28
  %i.bg = load i64, ptr @H5P_LST_DATASET_XFER_ID_g, align 8, !tbaa !15
  %i.bh = call i32 @H5VL_link_get(ptr noundef nonnull %i.aq, ptr noundef nonnull %5, ptr noundef nonnull %4, i64 noundef %i.bg, ptr noundef null) #4
  %i.bi = icmp slt i32 %i.bh, 0
  br i1 %i.bi, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bj = load i64, ptr @H5E_LINK_g, align 8, !tbaa !15
  %i.bk = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !15
  %i.bl = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Lget_info1, i32 noundef 344, i64 noundef %i.bj, i64 noundef %i.bk, ptr noundef nonnull @.str.18) #4 ; 0 uses
  br label %.thread57

bb.v:                                             ; preds = %bb.t
  %.not42 = icmp eq ptr %2, null
  br i1 %.not42, label %bb.ac, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bm = load i32, ptr %6, align 8, !tbaa !30    ; 2 uses
  store i32 %i.bm, ptr %2, align 8, !tbaa !30
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.bo = load i8, ptr %i.bn, align 4, !tbaa !31, !range !10, !noundef !11
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %i.bo, ptr %i.bp, align 4, !tbaa !31
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !32
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !32
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !33
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.bu, ptr %i.bv, align 8, !tbaa !33
  %i.bw = icmp eq i32 %i.bm, 0
  br i1 %i.bw, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.bx = call ptr @H5VL_object_data(ptr noundef nonnull %i.aq) #4 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.y, label %bb.z, !prof !18

bb.y:                                             ; preds = %bb.x
  %i.bz = load i64, ptr @H5E_LINK_g, align 8, !tbaa !15
  %i.ca = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !15
  %i.cb = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Lget_info1, i32 noundef 356, i64 noundef %i.bz, i64 noundef %i.ca, ptr noundef nonnull @.str.19) #4 ; 0 uses
  br label %.thread57

bb.z:                                             ; preds = %bb.x
  %i.cc = load i32, ptr %5, align 8, !tbaa !21
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cf = load i64, ptr %i.cd, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = call i32 @H5VL_native_token_to_addr(ptr noundef nonnull %i.bx, i32 noundef %i.cc, i64 %i.cf, i64 %i.ch, ptr noundef nonnull %i.ce) #4
  %i.cj = icmp slt i32 %i.ci, 0
  br i1 %i.cj, label %bb.aa, label %bb.ac, !prof !18

bb.aa:                                            ; preds = %bb.z
  %i.ck = load i64, ptr @H5E_LINK_g, align 8, !tbaa !15
  %i.cl = load i64, ptr @H5E_CANTUNSERIALIZE_g, align 8, !tbaa !15
  %i.cm = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Lget_info1, i32 noundef 361, i64 noundef %i.ck, i64 noundef %i.cl, ptr noundef nonnull @.str.20) #4 ; 0 uses
  br label %.thread57

bb.ab:                                            ; preds = %bb.w
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !28
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.co, ptr %i.cp, align 8, !tbaa !28
  br label %bb.ac

.thread57:                                        ; preds = %bb.aa, %bb.y, %bb.s, %bb.k, %bb.u, %bb.q, %bb.o, %bb.m
  %i.cq = call i32 @H5CX_pop(i1 noundef zeroext true) #4 ; 0 uses
  br label %.thread51

bb.ac:                                            ; preds = %bb.z, %bb.v, %bb.ab
  %i.cr = call i32 @H5CX_pop(i1 noundef zeroext true) #4 ; 0 uses
  br label %bb.ad

.thread51:                                        ; preds = %bb.h, %bb.f, %bb.c, %.thread57
  %i.cs = call i32 @H5E_dump_api_stack() #4       ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.thread51
  %.1354654 = phi i32 [ 0, %bb.ac ], [ -1, %.thread51 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  ret i32 %.1354654
}

declare i32 @H5VL_link_get(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @H5VL_object_data(ptr noundef) local_unnamed_addr #3

declare i32 @H5VL_native_token_to_addr(ptr noundef, i32 noundef, i64, i64, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5Lget_info_by_idx1(i64 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %7 = alloca %struct.H5VL_link_get_args_t, align 8 ; 5 uses
  %8 = alloca %struct.H5VL_loc_params_t, align 8  ; 11 uses
  %9 = alloca %struct.H5L_info2_t, align 8        ; 10 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %10 = alloca %struct.H5CX_node_t, align 8       ; 4 uses
  store i64 %6, ptr %i.a, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %10, i8 0, i64 480, i1 false)
  %i.c = load i8, ptr @H5_libinit_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = load i8, ptr @H5_libterm_g, align 1, !range !10 ; 2 uses
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = select i1 %i.d, i1 true, i1 %i.f
  br i1 %i.g, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @H5_init_library() #4
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %._crit_edge, !prof !13

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5_libterm_g, align 1, !range !10
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !15
  %i.k = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !15
  %i.l = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Lget_info_by_idx1, i32 noundef 395, i64 noundef %i.j, i64 noundef %i.k, ptr noundef nonnull @.str.1) #4 ; 0 uses
  br label %.thread65

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %i.m = phi i8 [ %.pre, %._crit_edge ], [ %i.e, %bb.a ]
  %i.n = load i8, ptr @H5L_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = trunc nuw i8 %i.m to i1
  %i.q = select i1 %i.o, i1 true, i1 %i.p
  br i1 %i.q, label %bb.g, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr @H5L_init_g, align 1, !tbaa !9
  %i.r = tail call i32 @H5L__init_package() #4
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.f, label %bb.g, !prof !16

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr @H5L_init_g, align 1, !tbaa !9
  %i.t = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !15
  %i.u = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !15
  %i.v = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Lget_info_by_idx1, i32 noundef 395, i64 noundef %i.t, i64 noundef %i.u, ptr noundef nonnull @.str.2) #4 ; 0 uses
  br label %.thread65

bb.g:                                             ; preds = %bb.d, %bb.e
  %i.w = call i32 @H5CX_push(ptr noundef nonnull %10) #4
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.y = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !15
  %i.z = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !15
  %i.aa = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Lget_info_by_idx1, i32 noundef 395, i64 noundef %i.y, i64 noundef %i.z, ptr noundef nonnull @.str.3) #4 ; 0 uses
  br label %.thread65

bb.i:                                             ; preds = %bb.g
  %i.ab = call i32 @H5E_clear_stack() #4          ; 0 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = load i8, ptr %1, align 1, !tbaa !28
  %.not55 = icmp eq i8 %i.ac, 0
  br i1 %.not55, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.ad = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !15
  %i.ae = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !15
  %i.af = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Lget_info_by_idx1, i32 noundef 399, i64 noundef %i.ad, i64 noundef %i.ae, ptr noundef nonnull @.str.16) #4 ; 0 uses
  br label %.thread71

bb.l:                                             ; preds = %bb.j
  %or.cond = icmp ugt i32 %2, 1
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ag = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !15
  %i.ah = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !15
  %i.ai = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Lget_info_by_idx1, i32 noundef 401, i64 noundef %i.ag, i64 noundef %i.ah, ptr noundef nonnull @.str.5) #4 ; 0 uses
  br label %.thread71

bb.n:                                             ; preds = %bb.l
  %or.cond3 = icmp ugt i32 %3, 2
  br i1 %or.cond3, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aj = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !15
  %i.ak = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !15
  %i.al = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Lget_info_by_idx1, i32 noundef 403, i64 noundef %i.aj, i64 noundef %i.ak, ptr noundef nonnull @.str.6) #4 ; 0 uses
  br label %.thread71

bb.p:                                             ; preds = %bb.n
  %i.am = call i32 @H5CX_set_apl(ptr noundef nonnull %i.a, ptr noundef nonnull @H5P_CLS_LACC, i64 noundef %0, i1 noundef zeroext false) #4
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ao = load i64, ptr @H5E_LINK_g, align 8, !tbaa !15
  %i.ap = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !15
  %i.aq = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Lget_info_by_idx1, i32 noundef 407, i64 noundef %i.ao, i64 noundef %i.ap, ptr noundef nonnull @.str.14) #4 ; 0 uses
  br label %.thread71

bb.r:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 2, ptr %i.ar, align 4, !tbaa !20
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %1, ptr %i.as, align 8, !tbaa !28
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %2, ptr %i.at, align 8, !tbaa !28
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 %3, ptr %11, align 4, !tbaa !28
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 %4, ptr %i.au, align 8, !tbaa !28
  %i.av = load i64, ptr %i.a, align 8, !tbaa !15
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !28
  %i.ax = call i32 @H5I_get_type(i64 noundef %0) #4
  store i32 %i.ax, ptr %8, align 8, !tbaa !21
  %i.ay = call ptr @H5VL_vol_object(i64 noundef %0) #4 ; 4 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ba = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !15
  %i.bb = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !15
  %i.bc = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Lget_info_by_idx1, i32 noundef 420, i64 noundef %i.ba, i64 noundef %i.bb, ptr noundef nonnull @.str.8) #4 ; 0 uses
  br label %.thread71

bb.t:                                             ; preds = %bb.r
  %i.bd = call i32 @H5VL_object_is_native(ptr noundef nonnull %i.ay, ptr noundef nonnull %i.b) #4
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bf = load i64, ptr @H5E_LINK_g, align 8, !tbaa !15
  %i.bg = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !15
  %i.bh = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Lget_info_by_idx1, i32 noundef 424, i64 noundef %i.bf, i64 noundef %i.bg, ptr noundef nonnull @.str.9) #4 ; 0 uses
  br label %.thread71

bb.v:                                             ; preds = %bb.t
  %i.bi = load i8, ptr %i.b, align 1, !tbaa !9, !range !10, !noundef !11
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.x, label %bb.w, !prof !17

bb.w:                                             ; preds = %bb.v
  %i.bk = load i64, ptr @H5E_LINK_g, align 8, !tbaa !15
  %i.bl = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !15
  %i.bm = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Lget_info_by_idx1, i32 noundef 427, i64 noundef %i.bk, i64 noundef %i.bl, ptr noundef nonnull @.str.21) #4 ; 0 uses
  br label %.thread71

bb.x:                                             ; preds = %bb.v
  store i32 0, ptr %7, align 8, !tbaa !35
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %9, ptr %i.bn, align 8, !tbaa !28
  %i.bo = load i64, ptr @H5P_LST_DATASET_XFER_ID_g, align 8, !tbaa !15
  %i.bp = call i32 @H5VL_link_get(ptr noundef nonnull %i.ay, ptr noundef nonnull %8, ptr noundef nonnull %7, i64 noundef %i.bo, ptr noundef null) #4
  %i.bq = icmp slt i32 %i.bp, 0
  br i1 %i.bq, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.br = load i64, ptr @H5E_LINK_g, align 8, !tbaa !15
  %i.bs = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !15
  %i.bt = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Lget_info_by_idx1, i32 noundef 435, i64 noundef %i.br, i64 noundef %i.bs, ptr noundef nonnull @.str.18) #4 ; 0 uses
  br label %.thread71

bb.z:                                             ; preds = %bb.x
  %.not56 = icmp eq ptr %5, null
  br i1 %.not56, label %bb.ag, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bu = load i32, ptr %9, align 8, !tbaa !30    ; 2 uses
  store i32 %i.bu, ptr %5, align 8, !tbaa !30
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.bw = load i8, ptr %i.bv, align 4, !tbaa !31, !range !10, !noundef !11
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i8 %i.bw, ptr %i.bx, align 4, !tbaa !31
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !32
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !32
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !33
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %i.cc, ptr %i.cd, align 8, !tbaa !33
  %i.ce = icmp eq i32 %i.bu, 0
  br i1 %i.ce, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.cf = call ptr @H5VL_object_data(ptr noundef nonnull %i.ay) #4 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.ac, label %bb.ad, !prof !18

bb.ac:                                            ; preds = %bb.ab
  %i.ch = load i64, ptr @H5E_LINK_g, align 8, !tbaa !15
  %i.ci = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !15
  %i.cj = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Lget_info_by_idx1, i32 noundef 447, i64 noundef %i.ch, i64 noundef %i.ci, ptr noundef nonnull @.str.19) #4 ; 0 uses
  br label %.thread71

bb.ad:                                            ; preds = %bb.ab
  %i.ck = load i32, ptr %8, align 8, !tbaa !21
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cn = load i64, ptr %i.cl, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = call i32 @H5VL_native_token_to_addr(ptr noundef nonnull %i.cf, i32 noundef %i.ck, i64 %i.cn, i64 %i.cp, ptr noundef nonnull %i.cm) #4
  %i.cr = icmp slt i32 %i.cq, 0
  br i1 %i.cr, label %bb.ae, label %bb.ag, !prof !18

bb.ae:                                            ; preds = %bb.ad
  %i.cs = load i64, ptr @H5E_LINK_g, align 8, !tbaa !15
  %i.ct = load i64, ptr @H5E_CANTUNSERIALIZE_g, align 8, !tbaa !15
  %i.cu = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Lget_info_by_idx1, i32 noundef 452, i64 noundef %i.cs, i64 noundef %i.ct, ptr noundef nonnull @.str.20) #4 ; 0 uses
  br label %.thread71

bb.af:                                            ; preds = %bb.aa
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !28
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !28
  br label %bb.ag

.thread71:                                        ; preds = %bb.ae, %bb.ac, %bb.w, %bb.k, %bb.y, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m
  %i.cy = call i32 @H5CX_pop(i1 noundef zeroext true) #4 ; 0 uses
  br label %.thread65

bb.ag:                                            ; preds = %bb.ad, %bb.z, %bb.af
  %i.cz = call i32 @H5CX_pop(i1 noundef zeroext true) #4 ; 0 uses
  br label %bb.ah

.thread65:                                        ; preds = %bb.h, %bb.f, %bb.c, %.thread71
  %i.da = call i32 @H5E_dump_api_stack() #4       ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.thread65
  %.1476068 = phi i32 [ 0, %bb.ag ], [ -1, %.thread65 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  ret i32 %.1476068
}

; Function Attrs: nounwind uwtable
define range(i32 -1, -2147483648) i32 @H5Lvisit1(i64 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.H5VL_link_specific_args_t, align 8 ; 10 uses
  %6 = alloca %struct.H5VL_loc_params_t, align 8  ; 5 uses
  %7 = alloca %struct.H5L_shim_data_t, align 8    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %8 = alloca %struct.H5CX_node_t, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %8, i8 0, i64 480, i1 false)
  %i.b = load i8, ptr @H5_libinit_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !10 ; 2 uses
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = select i1 %i.c, i1 true, i1 %i.e
  br i1 %i.f, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @H5_init_library() #4
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %._crit_edge, !prof !13

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5_libterm_g, align 1, !range !10
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !15
  %i.j = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !15
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Lvisit1, i32 noundef 500, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.1) #4 ; 0 uses
  br label %.thread49

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %i.l = phi i8 [ %.pre, %._crit_edge ], [ %i.d, %bb.a ]
  %i.m = load i8, ptr @H5L_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = trunc nuw i8 %i.l to i1
  %i.p = select i1 %i.n, i1 true, i1 %i.o
  br i1 %i.p, label %bb.g, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr @H5L_init_g, align 1, !tbaa !9
  %i.q = tail call i32 @H5L__init_package() #4
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g, !prof !16

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr @H5L_init_g, align 1, !tbaa !9
  %i.s = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !15
  %i.t = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !15
  %i.u = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Lvisit1, i32 noundef 500, i64 noundef %i.s, i64 noundef %i.t, ptr noundef nonnull @.str.2) #4 ; 0 uses
  br label %.thread49

bb.g:                                             ; preds = %bb.d, %bb.e
  %i.v = call i32 @H5CX_push(ptr noundef nonnull %8) #4
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.x = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !15
  %i.y = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !15
  %i.z = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Lvisit1, i32 noundef 500, i64 noundef %i.x, i64 noundef %i.y, ptr noundef nonnull @.str.3) #4 ; 0 uses
  br label %.thread49
end_hunk_0
