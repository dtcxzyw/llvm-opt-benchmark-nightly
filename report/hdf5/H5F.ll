Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5F?download=true
begin_hunk_0_@H5Fflush_async:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0192533
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5Fclose(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.H5CX_node_t, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %1, i8 0, i64 480, i1 false)
  %i.a = load i8, ptr @H5_libinit_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10 ; 2 uses
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @H5_init_library() #6
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge, !prof !13

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5_libterm_g, align 1, !range !10
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !15
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !15
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Fclose, i32 noundef 1031, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.1) #6 ; 0 uses
  br label %.thread20

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %i.k = phi i8 [ %.pre, %._crit_edge ], [ %i.c, %bb.a ]
  %i.l = load i8, ptr @H5F_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = trunc nuw i8 %i.k to i1
  %i.o = select i1 %i.m, i1 true, i1 %i.n
  br i1 %i.o, label %bb.g, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr @H5F_init_g, align 1, !tbaa !9
  %i.p = tail call i32 @H5F__init_package() #6
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g, !prof !16

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr @H5F_init_g, align 1, !tbaa !9
  %i.r = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !15
  %i.s = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !15
  %i.t = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Fclose, i32 noundef 1031, i64 noundef %i.r, i64 noundef %i.s, ptr noundef nonnull @.str.2) #6 ; 0 uses
  br label %.thread20

bb.g:                                             ; preds = %bb.d, %bb.e
  %i.u = call i32 @H5CX_push(ptr noundef nonnull %1) #6
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.w = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !15
  %i.x = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !15
  %i.y = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Fclose, i32 noundef 1031, i64 noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.3) #6 ; 0 uses
  br label %.thread20

bb.i:                                             ; preds = %bb.g
  %i.z = call i32 @H5E_clear_stack() #6           ; 0 uses
  %i.aa = call i32 @H5I_get_type(i64 noundef %0) #6
  %.not = icmp eq i32 %i.aa, 1
  br i1 %.not, label %bb.k, label %bb.j, !prof !40

bb.j:                                             ; preds = %bb.i
  %i.ab = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !15
  %i.ac = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !15
  %i.ad = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Fclose, i32 noundef 1035, i64 noundef %i.ab, i64 noundef %i.ac, ptr noundef nonnull @.str.45) #6 ; 0 uses
  br label %.thread26

bb.k:                                             ; preds = %bb.i
  %i.ae = call i32 @H5I_dec_app_ref(i64 noundef %0) #6
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.l, label %bb.m, !prof !17

bb.l:                                             ; preds = %bb.k
  %i.ag = load i64, ptr @H5E_FILE_g, align 8, !tbaa !15
  %i.ah = load i64, ptr @H5E_CANTCLOSEFILE_g, align 8, !tbaa !15
  %i.ai = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Fclose, i32 noundef 1041, i64 noundef %i.ag, i64 noundef %i.ah, ptr noundef nonnull @.str.46) #6 ; 0 uses
  br label %.thread26

.thread26:                                        ; preds = %bb.l, %bb.j
  %i.aj = call i32 @H5CX_pop(i1 noundef zeroext true) #6 ; 0 uses
  br label %.thread20

bb.m:                                             ; preds = %bb.k
  %i.ak = call i32 @H5CX_pop(i1 noundef zeroext true) #6 ; 0 uses
  br label %bb.n

.thread20:                                        ; preds = %bb.h, %bb.f, %bb.c, %.thread26
  %i.al = call i32 @H5E_dump_api_stack() #6       ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread20
  %.0111523 = phi i32 [ -1, %.thread20 ], [ 0, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  ret i32 %.0111523
}

declare i32 @H5I_get_type(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5Fclose_async(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %5 = alloca %struct.H5CX_node_t, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store ptr null, ptr %i.a, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %5, i8 0, i64 480, i1 false)
  %i.b = load i8, ptr @H5_libinit_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !10 ; 2 uses
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = select i1 %i.c, i1 true, i1 %i.e
  br i1 %i.f, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @H5_init_library() #6
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %._crit_edge, !prof !13

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5_libterm_g, align 1, !range !10
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !15
  %i.j = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !15
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Fclose_async, i32 noundef 1065, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.1) #6 ; 0 uses
  br label %.thread55

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %i.l = phi i8 [ %.pre, %._crit_edge ], [ %i.d, %bb.a ]
  %i.m = load i8, ptr @H5F_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = trunc nuw i8 %i.l to i1
  %i.p = select i1 %i.n, i1 true, i1 %i.o
  br i1 %i.p, label %bb.g, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr @H5F_init_g, align 1, !tbaa !9
  %i.q = tail call i32 @H5F__init_package() #6
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g, !prof !48

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr @H5F_init_g, align 1, !tbaa !9
  %i.s = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !15
  %i.t = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !15
  %i.u = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Fclose_async, i32 noundef 1065, i64 noundef %i.s, i64 noundef %i.t, ptr noundef nonnull @.str.2) #6 ; 0 uses
  br label %.thread55

bb.g:                                             ; preds = %bb.d, %bb.e
  %i.v = call i32 @H5CX_push(ptr noundef nonnull %5) #6
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.x = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !15
  %i.y = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !15
  %i.z = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Fclose_async, i32 noundef 1065, i64 noundef %i.x, i64 noundef %i.y, ptr noundef nonnull @.str.3) #6 ; 0 uses
  br label %.thread55

bb.i:                                             ; preds = %bb.g
  %i.aa = call i32 @H5E_clear_stack() #6          ; 0 uses
  %i.ab = call i32 @H5I_get_type(i64 noundef %3) #6
  %.not = icmp eq i32 %i.ab, 1
  br i1 %.not, label %bb.k, label %bb.j, !prof !40

bb.j:                                             ; preds = %bb.i
  %i.ac = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !15
  %i.ad = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !15
  %i.ae = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Fclose_async, i32 noundef 1069, i64 noundef %i.ac, i64 noundef %i.ad, ptr noundef nonnull @.str.45) #6 ; 0 uses
  br label %.thread61

bb.k:                                             ; preds = %bb.i
  %.not34 = icmp eq i64 %4, 0
  br i1 %.not34, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = call ptr @H5VL_vol_object(i64 noundef %3) #6 ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.m, label %bb.n, !prof !17

bb.m:                                             ; preds = %bb.l
  %i.ah = load i64, ptr @H5E_FILE_g, align 8, !tbaa !15
  %i.ai = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !15
  %i.aj = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Fclose_async, i32 noundef 1075, i64 noundef %i.ah, i64 noundef %i.ai, ptr noundef nonnull @.str.47) #6 ; 0 uses
  br label %.thread61

bb.n:                                             ; preds = %bb.l
  %i.ak = call ptr @H5VL_obj_get_connector(ptr noundef nonnull %i.af) #6 ; 3 uses
  %i.al = call i64 @H5VL_conn_inc_rc(ptr noundef %i.ak) #6 ; 0 uses
  %6 = icmp eq ptr %i.ak, null
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %.032 = phi ptr [ %i.af, %bb.n ], [ null, %bb.k ]
  %.030 = phi i1 [ %6, %bb.n ], [ true, %bb.k ]
  %.030.a = phi ptr [ %i.ak, %bb.n ], [ null, %bb.k ]
  %.029 = phi ptr [ %i.a, %bb.n ], [ null, %bb.k ]
  %i.am = call i32 @H5I_dec_app_ref_async(i64 noundef %3, ptr noundef %.029) #6
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ao = load i64, ptr @H5E_FILE_g, align 8, !tbaa !15
  %i.ap = load i64, ptr @H5E_CANTCLOSEFILE_g, align 8, !tbaa !15
  %i.aq = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Fclose_async, i32 noundef 1090, i64 noundef %i.ao, i64 noundef %i.ap, ptr noundef nonnull @.str.46) #6 ; 0 uses
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !37
  %.not35 = icmp eq ptr %i.ar, null
  br i1 %.not35, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = call ptr @H5VL_obj_get_connector(ptr noundef %.032) #6
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.au = call i32 (i64, ptr, ptr, ptr, ptr, ...) @H5ES_insert(i64 noundef %4, ptr noundef %i.as, ptr noundef %i.at, ptr noundef nonnull @__func__.H5Fclose_async, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.27, ptr noundef %0, ptr noundef nonnull @.str.28, ptr noundef %1, ptr noundef nonnull @.str.29, i32 noundef %2, ptr noundef nonnull @.str.49, i64 noundef %3, ptr noundef nonnull @.str.34, i64 noundef %4) #6
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.aw = load i64, ptr @H5E_FILE_g, align 8, !tbaa !15
  %i.ax = load i64, ptr @H5E_CANTINSERT_g, align 8, !tbaa !15
  %i.ay = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Fclose_async, i32 noundef 1098, i64 noundef %i.aw, i64 noundef %i.ax, ptr noundef nonnull @.str.36) #6 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.r, %bb.s, %bb.p
  %.027 = phi i32 [ 0, %bb.q ], [ -1, %bb.p ], [ -1, %bb.s ], [ 0, %bb.r ] ; 2 uses
  %.0 = phi i1 [ false, %bb.q ], [ true, %bb.p ], [ true, %bb.s ], [ false, %bb.r ]
  br i1 %.030, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.az = call i64 @H5VL_conn_dec_rc(ptr noundef nonnull %.030.a) #6
  %i.ba = icmp slt i64 %i.az, 0
  br i1 %i.ba, label %.thread64, label %bb.v, !prof !17

.thread64:                                        ; preds = %bb.u
  %i.bb = load i64, ptr @H5E_FILE_g, align 8, !tbaa !15
  %i.bc = load i64, ptr @H5E_CANTDEC_g, align 8, !tbaa !15
  %i.bd = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Fclose_async, i32 noundef 1102, i64 noundef %i.bb, i64 noundef %i.bc, ptr noundef nonnull @.str.50) #6 ; 0 uses
  %i.be = call i32 @H5CX_pop(i1 noundef zeroext true) #6 ; 0 uses
  br label %.thread55

.thread61:                                        ; preds = %bb.j, %bb.m
  %i.bf = call i32 @H5CX_pop(i1 noundef zeroext true) #6 ; 0 uses
  br label %.thread55

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bg = call i32 @H5CX_pop(i1 noundef zeroext true) #6 ; 0 uses
  br i1 %.0, label %.thread55, label %bb.w, !prof !41

.thread55:                                        ; preds = %bb.h, %bb.f, %bb.c, %.thread64, %.thread61, %bb.v
  %.1284859 = phi i32 [ -1, %.thread64 ], [ %.027, %bb.v ], [ -1, %.thread61 ], [ -1, %bb.c ], [ -1, %bb.f ], [ -1, %bb.h ]
  %i.bh = call i32 @H5E_dump_api_stack() #6       ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %.thread55, %bb.v
  %.1284858 = phi i32 [ %.1284859, %.thread55 ], [ %.027, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.1284858
}

declare i64 @H5VL_conn_inc_rc(ptr noundef) local_unnamed_addr #3

declare i32 @H5I_dec_app_ref_async(i64 noundef, ptr noundef) local_unnamed_addr #3

declare i64 @H5VL_conn_dec_rc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5Fdelete(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %struct.H5VL_connector_prop_t, align 8 ; 4 uses
  %3 = alloca %struct.H5VL_file_specific_args_t, align 8 ; 9 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %4 = alloca %struct.H5CX_node_t, align 8        ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i8 0, ptr %i.b, align 1, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %4, i8 0, i64 480, i1 false)
  %i.c = load i8, ptr @H5_libinit_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = load i8, ptr @H5_libterm_g, align 1, !range !10 ; 2 uses
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = select i1 %i.d, i1 true, i1 %i.f
  br i1 %i.g, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @H5_init_library() #6
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %._crit_edge, !prof !13

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5_libterm_g, align 1, !range !10
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !15
  %i.k = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !15
  %i.l = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Fdelete, i32 noundef 1125, i64 noundef %i.j, i64 noundef %i.k, ptr noundef nonnull @.str.1) #6 ; 0 uses
  br label %.thread31

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %i.m = phi i8 [ %.pre, %._crit_edge ], [ %i.e, %bb.a ]
  %i.n = load i8, ptr @H5F_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = trunc nuw i8 %i.m to i1
  %i.q = select i1 %i.o, i1 true, i1 %i.p
  br i1 %i.q, label %bb.g, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr @H5F_init_g, align 1, !tbaa !9
  %i.r = tail call i32 @H5F__init_package() #6
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.f, label %bb.g, !prof !16

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr @H5F_init_g, align 1, !tbaa !9
  %i.t = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !15
  %i.u = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !15
  %i.v = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Fdelete, i32 noundef 1125, i64 noundef %i.t, i64 noundef %i.u, ptr noundef nonnull @.str.2) #6 ; 0 uses
  br label %.thread31

bb.g:                                             ; preds = %bb.d, %bb.e
  %i.w = call i32 @H5CX_push(ptr noundef nonnull %4) #6
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.y = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !15
  %i.z = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !15
  %i.aa = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Fdelete, i32 noundef 1125, i64 noundef %i.y, i64 noundef %i.z, ptr noundef nonnull @.str.3) #6 ; 0 uses
  br label %.thread31

bb.i:                                             ; preds = %bb.g
  %i.ab = call i32 @H5E_clear_stack() #6          ; 0 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = load i8, ptr %0, align 1, !tbaa !20
  %.not22 = icmp eq i8 %i.ac, 0
  br i1 %.not22, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.ad = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !15
  %i.ae = load i64, ptr @H5E_BADRANGE_g, align 8, !tbaa !15
  %i.af = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Fdelete, i32 noundef 1129, i64 noundef %i.ad, i64 noundef %i.ae, ptr noundef nonnull @.str.19) #6 ; 0 uses
  br label %.thread37

bb.l:                                             ; preds = %bb.j
  %i.ag = call i32 @H5CX_set_apl(ptr noundef nonnull %i.a, ptr noundef nonnull @H5P_CLS_FACC, i64 noundef -1, i1 noundef zeroext true) #6
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ai = load i64, ptr @H5E_FILE_g, align 8, !tbaa !15
  %i.aj = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !15
  %i.ak = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Fdelete, i32 noundef 1133, i64 noundef %i.ai, i64 noundef %i.aj, ptr noundef nonnull @.str.51) #6 ; 0 uses
  br label %.thread37

bb.n:                                             ; preds = %bb.l
  %i.al = load i64, ptr %i.a, align 8, !tbaa !15
  %i.am = call ptr @H5I_object_verify(i64 noundef %i.al, i32 noundef 11) #6 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ao = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !15
  %i.ap = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !15
  %i.aq = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Fdelete, i32 noundef 1137, i64 noundef %i.ao, i64 noundef %i.ap, ptr noundef nonnull @.str.52) #6 ; 0 uses
  br label %.thread37

bb.p:                                             ; preds = %bb.n
  %i.ar = call i32 @H5P_peek(ptr noundef nonnull %i.am, ptr noundef nonnull @.str.53, ptr noundef nonnull %2) #6
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.at = load i64, ptr @H5E_FILE_g, align 8, !tbaa !15
  %i.au = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !15
  %i.av = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Fdelete, i32 noundef 1139, i64 noundef %i.at, i64 noundef %i.au, ptr noundef nonnull @.str.54) #6 ; 0 uses
  br label %.thread37

bb.r:                                             ; preds = %bb.p
  %i.aw = call i32 @H5CX_set_vol_connector_prop(ptr noundef nonnull %2) #6
  %i.ax = icmp slt i32 %i.aw, 0
  br i1 %i.ax, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ay = load i64, ptr @H5E_FILE_g, align 8, !tbaa !15
  %i.az = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !15
  %i.ba = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Fdelete, i32 noundef 1145, i64 noundef %i.ay, i64 noundef %i.az, ptr noundef nonnull @.str.55) #6 ; 0 uses
  br label %.thread37

bb.t:                                             ; preds = %bb.r
  store i32 2, ptr %3, align 8, !tbaa !33
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %0, ptr %i.bb, align 8, !tbaa !20
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !15
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !20
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.b, ptr %i.be, align 8, !tbaa !20
  %i.bf = load i64, ptr @H5P_LST_DATASET_XFER_ID_g, align 8, !tbaa !15
  %i.bg = call i32 @H5VL_file_specific(ptr noundef null, ptr noundef nonnull %3, i64 noundef %i.bf, ptr noundef null) #6
  %i.bh = icmp slt i32 %i.bg, 0
  br i1 %i.bh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bi = load i64, ptr @H5E_FILE_g, align 8, !tbaa !15
  %i.bj = load i64, ptr @H5E_NOTHDF5_g, align 8, !tbaa !15
  %i.bk = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Fdelete, i32 noundef 1155, i64 noundef %i.bi, i64 noundef %i.bj, ptr noundef nonnull @.str.21) #6 ; 0 uses
  br label %.thread37

bb.v:                                             ; preds = %bb.t
  %i.bl = load i8, ptr %i.b, align 1, !tbaa !9, !range !10, !noundef !11
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bn = load i64, ptr @H5E_FILE_g, align 8, !tbaa !15
  %i.bo = load i64, ptr @H5E_NOTHDF5_g, align 8, !tbaa !15
  %i.bp = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Fdelete, i32 noundef 1157, i64 noundef %i.bn, i64 noundef %i.bo, ptr noundef nonnull @.str.56) #6 ; 0 uses
  br label %.thread37

end_hunk_0
