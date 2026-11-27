Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Pgcpl?download=true
begin_hunk_0_@H5Pset_est_link_info:bb.a
  br i1 %i.ak, label %bb.n, label %bb.o, !prof !17

bb.n:                                             ; preds = %bb.m
  %i.al = load i64, ptr @H5E_ID_g, align 8, !tbaa !14
  %i.am = load i64, ptr @H5E_BADID_g, align 8, !tbaa !14
  %i.an = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_est_link_info, i32 noundef 339, i64 noundef %i.al, i64 noundef %i.am, ptr noundef nonnull @.str.5) #6 ; 0 uses
  br label %.thread39

bb.o:                                             ; preds = %bb.m
  %i.ao = call i32 @H5P_get(ptr noundef nonnull %i.aj, ptr noundef nonnull @.str.6, ptr noundef nonnull %3) #6
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %bb.p, label %bb.q, !prof !17

bb.p:                                             ; preds = %bb.o
  %i.aq = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !14
  %i.ar = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !14
  %i.as = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_est_link_info, i32 noundef 343, i64 noundef %i.aq, i64 noundef %i.ar, ptr noundef nonnull @.str.7) #6 ; 0 uses
  br label %.thread39

bb.q:                                             ; preds = %bb.o
  %i.at = icmp ne i32 %1, 4
  %i.au = icmp ne i32 %2, 8
  %or.cond = or i1 %i.at, %i.au
  %spec.select = zext i1 %or.cond to i8
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i8 %spec.select, ptr %i.av, align 2, !tbaa !25
  %i.aw = trunc nuw i32 %1 to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i16 %i.aw, ptr %i.ax, align 4, !tbaa !26
  %i.ay = trunc nuw i32 %2 to i16
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i16 %i.ay, ptr %i.az, align 2, !tbaa !27
  %i.ba = call i32 @H5P_set(ptr noundef nonnull %i.aj, ptr noundef nonnull @.str.6, ptr noundef nonnull %3) #6
  %i.bb = icmp slt i32 %i.ba, 0
  br i1 %i.bb, label %bb.r, label %bb.s, !prof !17

bb.r:                                             ; preds = %bb.q
  %i.bc = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !14
  %i.bd = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !14
  %i.be = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_est_link_info, i32 noundef 355, i64 noundef %i.bc, i64 noundef %i.bd, ptr noundef nonnull @.str.8) #6 ; 0 uses
  br label %.thread39

.thread39:                                        ; preds = %bb.r, %bb.p, %bb.n, %bb.l, %bb.j
  %i.bf = call i32 @H5CX_pop(i1 noundef zeroext true) #6 ; 0 uses
  br label %.thread33

bb.s:                                             ; preds = %bb.q
  %i.bg = call i32 @H5CX_pop(i1 noundef zeroext true) #6 ; 0 uses
  br label %bb.t

.thread33:                                        ; preds = %bb.h, %bb.f, %bb.c, %.thread39
  %i.bh = call i32 @H5E_dump_api_stack() #6       ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.thread33
  %.0212836 = phi i32 [ -1, %.thread33 ], [ 0, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  ret i32 %.0212836
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5Pget_est_link_info(i64 noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.H5CX_node_t, align 8        ; 4 uses
  %4 = alloca %struct.H5O_ginfo_t, align 4        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %3, i8 0, i64 480, i1 false)
  %i.a = load i8, ptr @H5_libinit_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10 ; 2 uses
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @H5_init_library() #6
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge, !prof !15

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5_libterm_g, align 1, !range !10
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !14
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !14
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pget_est_link_info, i32 noundef 376, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.2) #6 ; 0 uses
  br label %.thread31

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %i.k = phi i8 [ %.pre, %._crit_edge ], [ %i.c, %bb.a ]
  %i.l = load i8, ptr @H5P_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = trunc nuw i8 %i.k to i1
  %i.o = select i1 %i.m, i1 true, i1 %i.n
  br i1 %i.o, label %bb.g, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr @H5P_init_g, align 1, !tbaa !9
  %i.p = tail call i32 @H5P__init_package() #6
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g, !prof !16

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr @H5P_init_g, align 1, !tbaa !9
  %i.r = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !14
  %i.s = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !14
  %i.t = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pget_est_link_info, i32 noundef 376, i64 noundef %i.r, i64 noundef %i.s, ptr noundef nonnull @.str.3) #6 ; 0 uses
  br label %.thread31

bb.g:                                             ; preds = %bb.d, %bb.e
  %i.u = call i32 @H5CX_push(ptr noundef nonnull %3) #6
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %bb.i, !prof !15

bb.h:                                             ; preds = %bb.g
  %i.w = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !14
  %i.x = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !14
  %i.y = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pget_est_link_info, i32 noundef 376, i64 noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.4) #6 ; 0 uses
  br label %.thread31

bb.i:                                             ; preds = %bb.g
  %i.z = call i32 @H5E_clear_stack() #6           ; 0 uses
  %i.aa = icmp ne ptr %1, null                    ; 2 uses
  %i.ab = icmp ne ptr %2, null                    ; 2 uses
  %or.cond = or i1 %i.aa, %i.ab
  br i1 %or.cond, label %bb.j, label %.thread36

.thread36:                                        ; preds = %bb.i
  %i.ac = call i32 @H5CX_pop(i1 noundef zeroext true) #6 ; 0 uses
  br label %bb.s

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.ad = load i64, ptr @H5P_CLS_GROUP_CREATE_ID_g, align 8, !tbaa !14
  %i.ae = call ptr @H5P_object_verify(i64 noundef %0, i64 noundef %i.ad, i1 noundef zeroext true) #6 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.k, label %bb.l, !prof !17

bb.k:                                             ; preds = %bb.j
  %i.ag = load i64, ptr @H5E_ID_g, align 8, !tbaa !14
  %i.ah = load i64, ptr @H5E_BADID_g, align 8, !tbaa !14
  %i.ai = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pget_est_link_info, i32 noundef 385, i64 noundef %i.ag, i64 noundef %i.ah, ptr noundef nonnull @.str.5) #6 ; 0 uses
  br label %.thread40

bb.l:                                             ; preds = %bb.j
  %i.aj = call i32 @H5P_get(ptr noundef nonnull %i.ae, ptr noundef nonnull @.str.6, ptr noundef nonnull %4) #6
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %bb.m, label %bb.n, !prof !17

bb.m:                                             ; preds = %bb.l
  %i.al = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !14
  %i.am = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !14
  %i.an = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pget_est_link_info, i32 noundef 389, i64 noundef %i.al, i64 noundef %i.am, ptr noundef nonnull @.str.7) #6 ; 0 uses
  br label %.thread40

bb.n:                                             ; preds = %bb.l
  br i1 %i.aa, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ap = load i16, ptr %i.ao, align 4, !tbaa !26
  %i.aq = zext i16 %i.ap to i32
  store i32 %i.aq, ptr %1, align 4, !tbaa !24
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  br i1 %i.ab, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !27
  %i.at = zext i16 %i.as to i32
  store i32 %i.at, ptr %2, align 4, !tbaa !24
  br label %bb.r

.thread40:                                        ; preds = %bb.k, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  %i.au = call i32 @H5CX_pop(i1 noundef zeroext true) #6 ; 0 uses
  br label %.thread31

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  %i.av = call i32 @H5CX_pop(i1 noundef zeroext true) #6 ; 0 uses
  br label %bb.s

.thread31:                                        ; preds = %bb.c, %bb.f, %bb.h, %.thread40
  %i.aw = call i32 @H5E_dump_api_stack() #6       ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.thread36, %.thread31
  %.1212934 = phi i32 [ 0, %bb.r ], [ -1, %.thread31 ], [ 0, %.thread36 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  ret i32 %.1212934
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5Pset_link_creation_order(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.H5O_linfo_t, align 8        ; 6 uses
  %3 = alloca %struct.H5CX_node_t, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %3, i8 0, i64 480, i1 false)
  %i.a = load i8, ptr @H5_libinit_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10 ; 2 uses
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @H5_init_library() #6
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge, !prof !15

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5_libterm_g, align 1, !range !10
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !14
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !14
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_link_creation_order, i32 noundef 417, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.2) #6 ; 0 uses
  br label %.thread27

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %i.k = phi i8 [ %.pre, %._crit_edge ], [ %i.c, %bb.a ]
  %i.l = load i8, ptr @H5P_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = trunc nuw i8 %i.k to i1
  %i.o = select i1 %i.m, i1 true, i1 %i.n
  br i1 %i.o, label %bb.g, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr @H5P_init_g, align 1, !tbaa !9
  %i.p = tail call i32 @H5P__init_package() #6
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g, !prof !16

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr @H5P_init_g, align 1, !tbaa !9
  %i.r = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !14
  %i.s = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !14
  %i.t = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_link_creation_order, i32 noundef 417, i64 noundef %i.r, i64 noundef %i.s, ptr noundef nonnull @.str.3) #6 ; 0 uses
  br label %.thread27

bb.g:                                             ; preds = %bb.d, %bb.e
  %i.u = call i32 @H5CX_push(ptr noundef nonnull %3) #6
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %bb.i, !prof !15

bb.h:                                             ; preds = %bb.g
  %i.w = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !14
  %i.x = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !14
  %i.y = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_link_creation_order, i32 noundef 417, i64 noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.4) #6 ; 0 uses
  br label %.thread27

bb.i:                                             ; preds = %bb.g
  %i.z = call i32 @H5E_clear_stack() #6           ; 0 uses
  %i.aa = and i32 %1, 3
  %or.cond.not = icmp eq i32 %i.aa, 2
  br i1 %or.cond.not, label %bb.j, label %bb.k, !prof !17

bb.j:                                             ; preds = %bb.i
  %i.ab = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !14
  %i.ac = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !14
  %i.ad = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_link_creation_order, i32 noundef 421, i64 noundef %i.ab, i64 noundef %i.ac, ptr noundef nonnull @.str.14) #6 ; 0 uses
  br label %.thread33

bb.k:                                             ; preds = %bb.i
  %i.ae = load i64, ptr @H5P_CLS_GROUP_CREATE_ID_g, align 8, !tbaa !14
  %i.af = call ptr @H5P_object_verify(i64 noundef %0, i64 noundef %i.ae, i1 noundef zeroext false) #6 ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.l, label %bb.m, !prof !17

bb.l:                                             ; preds = %bb.k
  %i.ah = load i64, ptr @H5E_ID_g, align 8, !tbaa !14
  %i.ai = load i64, ptr @H5E_BADID_g, align 8, !tbaa !14
  %i.aj = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_link_creation_order, i32 noundef 425, i64 noundef %i.ah, i64 noundef %i.ai, ptr noundef nonnull @.str.5) #6 ; 0 uses
  br label %.thread33

bb.m:                                             ; preds = %bb.k
  %i.ak = call i32 @H5P_get(ptr noundef nonnull %i.af, ptr noundef nonnull @.str.15, ptr noundef nonnull %2) #6
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %bb.n, label %bb.o, !prof !17

bb.n:                                             ; preds = %bb.m
  %i.am = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !14
  %i.an = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !14
  %i.ao = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_link_creation_order, i32 noundef 429, i64 noundef %i.am, i64 noundef %i.an, ptr noundef nonnull @.str.16) #6 ; 0 uses
  br label %.thread33

bb.o:                                             ; preds = %bb.m
  %i.ap = trunc i32 %1 to i8                      ; 2 uses
  %i.aq = and i8 %i.ap, 1
  store i8 %i.aq, ptr %2, align 8, !tbaa !29
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %5 = lshr i8 %i.ap, 1
  %6 = and i8 %5, 1
  store i8 %6, ptr %4, align 1, !tbaa !30
  %i.ar = call i32 @H5P_set(ptr noundef nonnull %i.af, ptr noundef nonnull @.str.15, ptr noundef nonnull %2) #6
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %bb.p, label %bb.q, !prof !17

bb.p:                                             ; preds = %bb.o
  %i.at = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !14
  %i.au = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !14
  %i.av = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_link_creation_order, i32 noundef 437, i64 noundef %i.at, i64 noundef %i.au, ptr noundef nonnull @.str.17) #6 ; 0 uses
  br label %.thread33

.thread33:                                        ; preds = %bb.j, %bb.p, %bb.n, %bb.l
  %i.aw = call i32 @H5CX_pop(i1 noundef zeroext true) #6 ; 0 uses
  br label %.thread27

bb.q:                                             ; preds = %bb.o
  %i.ax = call i32 @H5CX_pop(i1 noundef zeroext true) #6 ; 0 uses
  br label %bb.r

.thread27:                                        ; preds = %bb.h, %bb.f, %bb.c, %.thread33
  %i.ay = call i32 @H5E_dump_api_stack() #6       ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread27
  %.0172230 = phi i32 [ -1, %.thread27 ], [ 0, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret i32 %.0172230
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5Pget_link_creation_order(i64 noundef %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.H5CX_node_t, align 8        ; 4 uses
  %3 = alloca %struct.H5O_linfo_t, align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %2, i8 0, i64 480, i1 false)
  %i.a = load i8, ptr @H5_libinit_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10 ; 2 uses
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @H5_init_library() #6
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge, !prof !15

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5_libterm_g, align 1, !range !10
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !14
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !14
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pget_link_creation_order, i32 noundef 458, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.2) #6 ; 0 uses
  br label %.thread27

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %i.k = phi i8 [ %.pre, %._crit_edge ], [ %i.c, %bb.a ]
  %i.l = load i8, ptr @H5P_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = trunc nuw i8 %i.k to i1
  %i.o = select i1 %i.m, i1 true, i1 %i.n
  br i1 %i.o, label %bb.g, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr @H5P_init_g, align 1, !tbaa !9
  %i.p = tail call i32 @H5P__init_package() #6
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g, !prof !16

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr @H5P_init_g, align 1, !tbaa !9
  %i.r = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !14
  %i.s = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !14
  %i.t = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pget_link_creation_order, i32 noundef 458, i64 noundef %i.r, i64 noundef %i.s, ptr noundef nonnull @.str.3) #6 ; 0 uses
  br label %.thread27

bb.g:                                             ; preds = %bb.d, %bb.e
  %i.u = call i32 @H5CX_push(ptr noundef nonnull %2) #6
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %bb.i, !prof !15

bb.h:                                             ; preds = %bb.g
  %i.w = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !14
  %i.x = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !14
  %i.y = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pget_link_creation_order, i32 noundef 458, i64 noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.4) #6 ; 0 uses
  br label %.thread27

bb.i:                                             ; preds = %bb.g
  %i.z = call i32 @H5E_clear_stack() #6           ; 0 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.thread32, label %bb.j

.thread32:                                        ; preds = %bb.i
  %i.aa = call i32 @H5CX_pop(i1 noundef zeroext true) #6 ; 0 uses
  br label %bb.o

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  store i32 0, ptr %1, align 4, !tbaa !24
  %i.ab = load i64, ptr @H5P_CLS_GROUP_CREATE_ID_g, align 8, !tbaa !14
  %i.ac = call ptr @H5P_object_verify(i64 noundef %0, i64 noundef %i.ab, i1 noundef zeroext true) #6 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.k, label %bb.l, !prof !17

bb.k:                                             ; preds = %bb.j
  %i.ae = load i64, ptr @H5E_ID_g, align 8, !tbaa !14
  %i.af = load i64, ptr @H5E_BADID_g, align 8, !tbaa !14
  %i.ag = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pget_link_creation_order, i32 noundef 470, i64 noundef %i.ae, i64 noundef %i.af, ptr noundef nonnull @.str.5) #6 ; 0 uses
  br label %.thread36

bb.l:                                             ; preds = %bb.j
  %i.ah = call i32 @H5P_get(ptr noundef nonnull %i.ac, ptr noundef nonnull @.str.15, ptr noundef nonnull %3) #6
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.m, label %bb.n, !prof !17

bb.m:                                             ; preds = %bb.l
  %i.aj = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !14
  %i.ak = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !14
  %i.al = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pget_link_creation_order, i32 noundef 474, i64 noundef %i.aj, i64 noundef %i.ak, ptr noundef nonnull @.str.16) #6 ; 0 uses
  br label %.thread36

.thread36:                                        ; preds = %bb.k, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  %i.am = call i32 @H5CX_pop(i1 noundef zeroext true) #6 ; 0 uses
  br label %.thread27

bb.n:                                             ; preds = %bb.l
  %i.an = load i8, ptr %3, align 8, !tbaa !29, !range !10, !noundef !11
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = load i32, ptr %1, align 4, !tbaa !24
  %i.aq = or i32 %i.ap, %i.ao
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !30, !range !10, !noundef !11
  %i.at = shl nuw nsw i8 %i.as, 1
  %i.au = zext nneg i8 %i.at to i32
  %i.av = or i32 %i.aq, %i.au
  store i32 %i.av, ptr %1, align 4, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  %i.aw = call i32 @H5CX_pop(i1 noundef zeroext true) #6 ; 0 uses
  br label %bb.o

.thread27:                                        ; preds = %bb.c, %bb.f, %bb.h, %.thread36
  %i.ax = call i32 @H5E_dump_api_stack() #6       ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread32, %.thread27
  %.1182530 = phi i32 [ 0, %bb.n ], [ -1, %.thread27 ], [ 0, %.thread32 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret i32 %.1182530
}

declare i32 @H5P__register_real(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @H5P__gcrt_group_info_enc(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) #4 {
bb.a:
  %i.a = load i8, ptr @H5P_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.e, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !33     ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %0, align 4, !tbaa !20
  %i.i = trunc i32 %i.h to i8
  store i8 %i.i, ptr %i.g, align 1, !tbaa !34
  %i.j = load ptr, ptr %1, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  store ptr %i.k, ptr %1, align 8, !tbaa !33
  %i.l = load i32, ptr %0, align 4, !tbaa !20
  %i.m = lshr i32 %i.l, 8
  %i.n = trunc i32 %i.m to i8
  store i8 %i.n, ptr %i.k, align 1, !tbaa !34
  %i.o = load ptr, ptr %1, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  store ptr %i.p, ptr %1, align 8, !tbaa !33
  %i.q = load i32, ptr %0, align 4, !tbaa !20
  %i.r = lshr i32 %i.q, 16
  %i.s = trunc i32 %i.r to i8
  store i8 %i.s, ptr %i.p, align 1, !tbaa !34
  %i.t = load ptr, ptr %1, align 8, !tbaa !33
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 2 uses
  store ptr %i.u, ptr %1, align 8, !tbaa !33
  %i.v = load i32, ptr %0, align 4, !tbaa !20
  %i.w = lshr i32 %i.v, 24
  %i.x = trunc nuw i32 %i.w to i8
  store i8 %i.x, ptr %i.u, align 1, !tbaa !34
  %i.y = load ptr, ptr %1, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  store ptr %i.z, ptr %1, align 8, !tbaa !33
end_hunk_0
