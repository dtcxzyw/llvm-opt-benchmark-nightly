Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Pdxpl?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@H5Pset_hyper_vector_size:bb.a
  %i.i = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !14
  %i.j = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !14
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_hyper_vector_size, i32 noundef 1623, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.2) #9 ; 0 uses
  br label %.thread21

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %i.l = phi i8 [ %.pre, %._crit_edge ], [ %i.d, %bb.a ]
  %i.m = load i8, ptr @H5P_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = trunc nuw i8 %i.l to i1
  %i.p = select i1 %i.n, i1 true, i1 %i.o
  br i1 %i.p, label %bb.g, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr @H5P_init_g, align 1, !tbaa !9
  %i.q = tail call i32 @H5P__init_package() #9
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g, !prof !19

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr @H5P_init_g, align 1, !tbaa !9
  %i.s = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !14
  %i.t = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !14
  %i.u = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_hyper_vector_size, i32 noundef 1623, i64 noundef %i.s, i64 noundef %i.t, ptr noundef nonnull @.str.3) #9 ; 0 uses
  br label %.thread21

bb.g:                                             ; preds = %bb.d, %bb.e
  %i.v = call i32 @H5CX_push(ptr noundef nonnull %2) #9
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %bb.i, !prof !18

bb.h:                                             ; preds = %bb.g
  %i.x = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !14
  %i.y = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !14
  %i.z = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_hyper_vector_size, i32 noundef 1623, i64 noundef %i.x, i64 noundef %i.y, ptr noundef nonnull @.str.4) #9 ; 0 uses
  br label %.thread21

bb.i:                                             ; preds = %bb.g
  %i.aa = call i32 @H5E_clear_stack() #9          ; 0 uses
  %i.ab = icmp eq i64 %1, 0
  br i1 %i.ab, label %bb.j, label %bb.k, !prof !20

bb.j:                                             ; preds = %bb.i
  %i.ac = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !14
  %i.ad = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !14
  %i.ae = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_hyper_vector_size, i32 noundef 1627, i64 noundef %i.ac, i64 noundef %i.ad, ptr noundef nonnull @.str.38) #9 ; 0 uses
  br label %.thread27

bb.k:                                             ; preds = %bb.i
  %i.af = load i64, ptr @H5P_CLS_DATASET_XFER_ID_g, align 8, !tbaa !14
  %i.ag = call ptr @H5P_object_verify(i64 noundef %0, i64 noundef %i.af, i1 noundef zeroext false) #9 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.l, label %bb.m, !prof !20

bb.l:                                             ; preds = %bb.k
  %i.ai = load i64, ptr @H5E_ID_g, align 8, !tbaa !14
  %i.aj = load i64, ptr @H5E_BADID_g, align 8, !tbaa !14
  %i.ak = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_hyper_vector_size, i32 noundef 1631, i64 noundef %i.ai, i64 noundef %i.aj, ptr noundef nonnull @.str.6) #9 ; 0 uses
  br label %.thread27

bb.m:                                             ; preds = %bb.k
  %i.al = call i32 @H5P_set(ptr noundef nonnull %i.ag, ptr noundef nonnull @.str.39, ptr noundef nonnull %i.a) #9
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %bb.n, label %bb.o, !prof !20

bb.n:                                             ; preds = %bb.m
  %i.an = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !14
  %i.ao = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !14
  %i.ap = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_hyper_vector_size, i32 noundef 1635, i64 noundef %i.an, i64 noundef %i.ao, ptr noundef nonnull @.str.24) #9 ; 0 uses
  br label %.thread27

.thread27:                                        ; preds = %bb.n, %bb.l, %bb.j
  %i.aq = call i32 @H5CX_pop(i1 noundef zeroext true) #9 ; 0 uses
  br label %.thread21

bb.o:                                             ; preds = %bb.m
  %i.ar = call i32 @H5CX_pop(i1 noundef zeroext true) #9 ; 0 uses
  br label %bb.p

.thread21:                                        ; preds = %bb.h, %bb.f, %bb.c, %.thread27
  %i.as = call i32 @H5E_dump_api_stack() #9       ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread21
  %.0111624 = phi i32 [ -1, %.thread21 ], [ 0, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret i32 %.0111624
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5Pget_hyper_vector_size(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.H5CX_node_t, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %2, i8 0, i64 480, i1 false)
  %i.a = load i8, ptr @H5_libinit_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10 ; 2 uses
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @H5_init_library() #9
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge, !prof !18

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5_libterm_g, align 1, !range !10
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !14
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !14
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pget_hyper_vector_size, i32 noundef 1656, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.2) #9 ; 0 uses
  br label %.thread23

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %i.k = phi i8 [ %.pre, %._crit_edge ], [ %i.c, %bb.a ]
  %i.l = load i8, ptr @H5P_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = trunc nuw i8 %i.k to i1
  %i.o = select i1 %i.m, i1 true, i1 %i.n
  br i1 %i.o, label %bb.g, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr @H5P_init_g, align 1, !tbaa !9
  %i.p = tail call i32 @H5P__init_package() #9
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g, !prof !19

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr @H5P_init_g, align 1, !tbaa !9
  %i.r = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !14
  %i.s = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !14
  %i.t = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pget_hyper_vector_size, i32 noundef 1656, i64 noundef %i.r, i64 noundef %i.s, ptr noundef nonnull @.str.3) #9 ; 0 uses
  br label %.thread23

bb.g:                                             ; preds = %bb.d, %bb.e
  %i.u = call i32 @H5CX_push(ptr noundef nonnull %2) #9
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %bb.i, !prof !18

bb.h:                                             ; preds = %bb.g
  %i.w = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !14
  %i.x = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !14
  %i.y = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pget_hyper_vector_size, i32 noundef 1656, i64 noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.4) #9 ; 0 uses
  br label %.thread23

bb.i:                                             ; preds = %bb.g
  %i.z = call i32 @H5E_clear_stack() #9           ; 0 uses
  %i.aa = load i64, ptr @H5P_CLS_DATASET_XFER_ID_g, align 8, !tbaa !14
  %i.ab = call ptr @H5P_object_verify(i64 noundef %0, i64 noundef %i.aa, i1 noundef zeroext true) #9 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.j, label %bb.k, !prof !20

bb.j:                                             ; preds = %bb.i
  %i.ad = load i64, ptr @H5E_ID_g, align 8, !tbaa !14
  %i.ae = load i64, ptr @H5E_BADID_g, align 8, !tbaa !14
  %i.af = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pget_hyper_vector_size, i32 noundef 1660, i64 noundef %i.ad, i64 noundef %i.ae, ptr noundef nonnull @.str.6) #9 ; 0 uses
  br label %.thread29

bb.k:                                             ; preds = %bb.i
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = call i32 @H5P_get(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.39, ptr noundef nonnull %1) #9
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.m, label %bb.n, !prof !20

bb.m:                                             ; preds = %bb.l
  %i.ai = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !14
  %i.aj = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !14
  %i.ak = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pget_hyper_vector_size, i32 noundef 1665, i64 noundef %i.ai, i64 noundef %i.aj, ptr noundef nonnull @.str.25) #9 ; 0 uses
  br label %.thread29

.thread29:                                        ; preds = %bb.m, %bb.j
  %i.al = call i32 @H5CX_pop(i1 noundef zeroext true) #9 ; 0 uses
  br label %.thread23

bb.n:                                             ; preds = %bb.k, %bb.l
  %i.am = call i32 @H5CX_pop(i1 noundef zeroext true) #9 ; 0 uses
  br label %bb.o

.thread23:                                        ; preds = %bb.h, %bb.f, %bb.c, %.thread29
  %i.an = call i32 @H5E_dump_api_stack() #9       ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread23
  %.0121826 = phi i32 [ -1, %.thread23 ], [ 0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret i32 %.0121826
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5Pset_dataset_io_hyperslab_selection(i64 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 12 uses
  %7 = alloca %struct.H5CX_node_t, align 8        ; 4 uses
  %i.b = alloca [32 x i64], align 16              ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %7, i8 0, i64 480, i1 false)
  %i.c = load i8, ptr @H5_libinit_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = load i8, ptr @H5_libterm_g, align 1, !range !10 ; 2 uses
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = select i1 %i.d, i1 true, i1 %i.f
  br i1 %i.g, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @H5_init_library() #9
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %._crit_edge191, !prof !18

._crit_edge191:                                   ; preds = %bb.b
  %.pre = load i8, ptr @H5_libterm_g, align 1, !range !10
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !14
  %i.k = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !14
  %i.l = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_dataset_io_hyperslab_selection, i32 noundef 2250, i64 noundef %i.j, i64 noundef %i.k, ptr noundef nonnull @.str.2) #9 ; 0 uses
  br label %.thread165

bb.d:                                             ; preds = %._crit_edge191, %bb.a
  %i.m = phi i8 [ %.pre, %._crit_edge191 ], [ %i.e, %bb.a ]
  %i.n = load i8, ptr @H5P_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = trunc nuw i8 %i.m to i1
  %i.q = select i1 %i.o, i1 true, i1 %i.p
  br i1 %i.q, label %bb.g, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr @H5P_init_g, align 1, !tbaa !9
  %i.r = tail call i32 @H5P__init_package() #9
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.f, label %bb.g, !prof !41

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr @H5P_init_g, align 1, !tbaa !9
  %i.t = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !14
  %i.u = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !14
  %i.v = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_dataset_io_hyperslab_selection, i32 noundef 2250, i64 noundef %i.t, i64 noundef %i.u, ptr noundef nonnull @.str.3) #9 ; 0 uses
  br label %.thread165

bb.g:                                             ; preds = %bb.d, %bb.e
  %i.w = call i32 @H5CX_push(ptr noundef nonnull %7) #9
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %bb.i, !prof !18

bb.h:                                             ; preds = %bb.g
  %i.y = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !14
  %i.z = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !14
  %i.aa = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_dataset_io_hyperslab_selection, i32 noundef 2250, i64 noundef %i.y, i64 noundef %i.z, ptr noundef nonnull @.str.4) #9 ; 0 uses
  br label %.thread165

bb.i:                                             ; preds = %bb.g
  %i.ab = call i32 @H5E_clear_stack() #9          ; 0 uses
  %i.ac = add i32 %1, -33
  %or.cond = icmp ult i32 %i.ac, -32
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !14
  %i.ae = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !14
  %i.af = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_dataset_io_hyperslab_selection, i32 noundef 2254, i64 noundef %i.ad, i64 noundef %i.ae, ptr noundef nonnull @.str.40, i32 noundef %1) #9 ; 0 uses
  br label %.thread170

bb.k:                                             ; preds = %bb.i
  %or.cond3 = icmp ult i32 %2, 8
  br i1 %or.cond3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !14
  %i.ah = load i64, ptr @H5E_UNSUPPORTED_g, align 8, !tbaa !14
  %i.ai = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_dataset_io_hyperslab_selection, i32 noundef 2256, i64 noundef %i.ag, i64 noundef %i.ah, ptr noundef nonnull @.str.41) #9 ; 0 uses
  br label %.thread170

bb.m:                                             ; preds = %bb.k
  %i.aj = icmp eq ptr %3, null
  br i1 %i.aj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ak = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !14
  %i.al = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !14
  %i.am = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_dataset_io_hyperslab_selection, i32 noundef 2258, i64 noundef %i.ak, i64 noundef %i.al, ptr noundef nonnull @.str.42) #9 ; 0 uses
  br label %.thread170

bb.o:                                             ; preds = %bb.m
  %.not.not = icmp eq ptr %4, null
  br i1 %.not.not, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.o
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !14
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !39

bb.q:                                             ; preds = %.lr.ph
  %i.aq = trunc nuw nsw i64 %indvars.iv to i32
  %i.ar = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !14
  %i.as = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !14
  %i.at = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_dataset_io_hyperslab_selection, i32 noundef 2265, i64 noundef %i.ar, i64 noundef %i.as, ptr noundef nonnull @.str.43, i32 noundef %i.aq) #9 ; 0 uses
  br label %.thread170

.thread:                                          ; preds = %bb.p, %bb.o
  %i.au = icmp eq ptr %5, null
  br i1 %i.au, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.thread
  %i.av = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !14
  %i.aw = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !14
  %i.ax = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_dataset_io_hyperslab_selection, i32 noundef 2268, i64 noundef %i.av, i64 noundef %i.aw, ptr noundef nonnull @.str.44) #9 ; 0 uses
  br label %.thread170

bb.s:                                             ; preds = %.thread
  %i.ay = load i64, ptr @H5P_CLS_DATASET_XFER_ID_g, align 8, !tbaa !14
  %i.az = call ptr @H5P_object_verify(i64 noundef %0, i64 noundef %i.ay, i1 noundef zeroext false) #9 ; 4 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bb = load i64, ptr @H5E_ID_g, align 8, !tbaa !14
  %i.bc = load i64, ptr @H5E_BADID_g, align 8, !tbaa !14
  %i.bd = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_dataset_io_hyperslab_selection, i32 noundef 2273, i64 noundef %i.bb, i64 noundef %i.bc, ptr noundef nonnull @.str.6) #9 ; 0 uses
  br label %.thread170

bb.u:                                             ; preds = %bb.s
  %i.be = call i32 @H5P_peek(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.45, ptr noundef nonnull %i.a) #9
  %i.bf = icmp slt i32 %i.be, 0
  br i1 %i.bf, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bg = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !14
  %i.bh = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !14
  %i.bi = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_dataset_io_hyperslab_selection, i32 noundef 2277, i64 noundef %i.bg, i64 noundef %i.bh, ptr noundef nonnull @.str.46) #9 ; 0 uses
  br label %.thread170

bb.w:                                             ; preds = %bb.u
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !30  ; 2 uses
  %.not97 = icmp eq ptr %i.bj, null
  br i1 %.not97, label %.thread109, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bk = call i32 @H5S_get_simple_extent_ndims(ptr noundef nonnull %i.bj) #9 ; 2 uses
  %i.bl = icmp slt i32 %i.bk, 0
  br i1 %i.bl, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bm = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !14
  %i.bn = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !14
  %i.bo = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_dataset_io_hyperslab_selection, i32 noundef 2285, i64 noundef %i.bm, i64 noundef %i.bn, ptr noundef nonnull @.str.47) #9 ; 0 uses
  br label %.thread170

bb.z:                                             ; preds = %bb.x
  %.not98.not = icmp eq i32 %i.bk, %1
  br i1 %.not98.not, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bp = icmp eq i32 %2, 0
  br i1 %i.bp, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.br = call i32 @H5S_close(ptr noundef %i.bq) #9
  %i.bs = icmp slt i32 %i.br, 0
  br i1 %i.bs, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bt = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !14
  %i.bu = load i64, ptr @H5E_CLOSEERROR_g, align 8, !tbaa !14
  %i.bv = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_dataset_io_hyperslab_selection, i32 noundef 2293, i64 noundef %i.bt, i64 noundef %i.bu, ptr noundef nonnull @.str.48) #9 ; 0 uses
  br label %.thread170

bb.ad:                                            ; preds = %bb.ab
  store ptr null, ptr %i.a, align 8, !tbaa !30
  br label %.thread109

bb.ae:                                            ; preds = %bb.aa
  %i.bw = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !14
  %i.bx = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !14
  %i.by = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_dataset_io_hyperslab_selection, i32 noundef 2302, i64 noundef %i.bw, i64 noundef %i.bx, ptr noundef nonnull @.str.49) #9 ; 0 uses
  br label %.thread170

bb.af:                                            ; preds = %bb.z
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.bz = icmp eq ptr %.pr, null
  br i1 %i.bz, label %.thread109, label %bb.ag

.thread109:                                       ; preds = %bb.w, %bb.ad, %bb.af
  %.281114 = phi i1 [ false, %bb.af ], [ true, %bb.ad ], [ false, %bb.w ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %.not183 = icmp eq i32 %1, 0
  br i1 %.not183, label %._crit_edge, label %.lr.ph181.preheader

.lr.ph181.preheader:                              ; preds = %.thread109
  %wide.trip.count189 = zext nneg i32 %1 to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %.lr.ph181.preheader208, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph181.preheader
  %n.vec = and i64 %wide.trip.count189, 60        ; 9 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store <2 x i64> splat (i64 -2), ptr %i.b, align 16, !tbaa !14
  store <2 x i64> splat (i64 -2), ptr %8, align 16, !tbaa !14
  %9 = icmp eq i64 %n.vec, 4
  br i1 %9, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %10 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %11 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store <2 x i64> splat (i64 -2), ptr %10, align 16, !tbaa !14
  store <2 x i64> splat (i64 -2), ptr %11, align 16, !tbaa !14
  %12 = icmp eq i64 %n.vec, 8
  br i1 %12, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %13 = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %14 = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store <2 x i64> splat (i64 -2), ptr %13, align 16, !tbaa !14
  store <2 x i64> splat (i64 -2), ptr %14, align 16, !tbaa !14
  %15 = icmp eq i64 %n.vec, 12
  br i1 %15, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %16 = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %17 = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store <2 x i64> splat (i64 -2), ptr %16, align 16, !tbaa !14
  store <2 x i64> splat (i64 -2), ptr %17, align 16, !tbaa !14
  %18 = icmp eq i64 %n.vec, 16
  br i1 %18, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %19 = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %20 = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store <2 x i64> splat (i64 -2), ptr %19, align 16, !tbaa !14
  store <2 x i64> splat (i64 -2), ptr %20, align 16, !tbaa !14
  %21 = icmp eq i64 %n.vec, 20
  br i1 %21, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %22 = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %23 = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store <2 x i64> splat (i64 -2), ptr %22, align 16, !tbaa !14
  store <2 x i64> splat (i64 -2), ptr %23, align 16, !tbaa !14
  %24 = icmp eq i64 %n.vec, 24
  br i1 %24, label %middle.block, label %vector.body

vector.body:                                      ; preds = %vector.body.5
  %25 = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store <2 x i64> splat (i64 -2), ptr %25, align 16, !tbaa !14
  store <2 x i64> splat (i64 -2), ptr %i.ca, align 16, !tbaa !14
  %i.cb = icmp eq i64 %n.vec, 28
  br i1 %i.cb, label %middle.block, label %vector.body.7

vector.body.7:                                    ; preds = %vector.body
  %26 = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %27 = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  store <2 x i64> splat (i64 -2), ptr %26, align 16, !tbaa !14
  store <2 x i64> splat (i64 -2), ptr %27, align 16, !tbaa !14
  br label %middle.block

middle.block:                                     ; preds = %vector.body.7, %vector.body, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count189
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph181.preheader208

.lr.ph181.preheader208:                           ; preds = %.lr.ph181.preheader, %middle.block
  %indvars.iv186.ph = phi i64 [ 0, %.lr.ph181.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph181

.lr.ph181:                                        ; preds = %.lr.ph181.preheader208, %.lr.ph181
  %indvars.iv186 = phi i64 [ %indvars.iv.next187, %.lr.ph181 ], [ %indvars.iv186.ph, %.lr.ph181.preheader208 ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv186
  store i64 -2, ptr %i.cc, align 8, !tbaa !14
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 1 ; 2 uses
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count189
  br i1 %exitcond190.not, label %._crit_edge, label %.lr.ph181, !llvm.loop !40

._crit_edge:                                      ; preds = %.lr.ph181, %middle.block, %.thread109
  %i.cd = call ptr @H5S_create_simple(i32 noundef %1, ptr noundef nonnull %i.b, ptr noundef null) #9 ; 3 uses
  store ptr %i.cd, ptr %i.a, align 8, !tbaa !30
  %.not177 = icmp eq ptr %i.cd, null
  br i1 %.not177, label %.split203, label %.thread117

.thread117:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.ag

.split203:                                        ; preds = %._crit_edge
  %i.ce = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !14
  %i.cf = load i64, ptr @H5E_CANTCREATE_g, align 8, !tbaa !14
  %i.cg = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_dataset_io_hyperslab_selection, i32 noundef 2317, i64 noundef %i.ce, i64 noundef %i.cf, ptr noundef nonnull @.str.50) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br i1 %.281114, label %bb.aj, label %.thread174

bb.ag:                                            ; preds = %.thread117, %bb.af
  %i.ch = phi ptr [ %i.cd, %.thread117 ], [ %.pr, %bb.af ]
  %.281113 = phi i1 [ %.281114, %.thread117 ], [ false, %bb.af ] ; 2 uses
  %.184 = phi i1 [ true, %.thread117 ], [ false, %bb.af ] ; 4 uses
  %i.ci = call i32 @H5S_select_hyperslab(ptr noundef nonnull %i.ch, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %6) #9
  %i.cj = icmp slt i32 %i.ci, 0
  br i1 %i.cj, label %.split200, label %bb.ah

.split200:                                        ; preds = %bb.ag
  %i.ck = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !14
  %i.cl = load i64, ptr @H5E_CANTSELECT_g, align 8, !tbaa !14
  %i.cm = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_dataset_io_hyperslab_selection, i32 noundef 2323, i64 noundef %i.ck, i64 noundef %i.cl, ptr noundef nonnull @.str.51) #9 ; 0 uses
  br i1 %.281113, label %bb.aj, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.cn = call i32 @H5P_poke(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.45, ptr noundef nonnull %i.a) #9
  %i.co = icmp slt i32 %i.cn, 0
  br i1 %i.co, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %bb.ah
  %i.cp = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !14
  %i.cq = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !14
  %i.cr = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_dataset_io_hyperslab_selection, i32 noundef 2327, i64 noundef %i.cp, i64 noundef %i.cq, ptr noundef nonnull @.str.52) #9 ; 0 uses
  br i1 %.281113, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.split203, %.split200, %bb.ai
  %.285.ph201 = phi i1 [ %.184, %.split200 ], [ %.184, %bb.ai ], [ false, %.split203 ] ; 2 uses
  %i.cs = call i32 @H5P_poke(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.45, ptr noundef nonnull %i.a) #9
  %i.ct = icmp slt i32 %i.cs, 0
  br i1 %i.ct, label %.split, label %bb.ak

.split:                                           ; preds = %bb.aj
  %i.cu = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !14
  %i.cv = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !14
  %i.cw = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_dataset_io_hyperslab_selection, i32 noundef 2334, i64 noundef %i.cu, i64 noundef %i.cv, ptr noundef nonnull @.str.52) #9 ; 0 uses
  br i1 %.285.ph201, label %bb.al, label %.thread174, !prof !44

bb.ak:                                            ; preds = %.split200, %bb.aj, %bb.ai
  %.285.ph202 = phi i1 [ %.184, %.split200 ], [ %.285.ph201, %bb.aj ], [ %.184, %bb.ai ]
  br i1 %.285.ph202, label %bb.al, label %.thread174

bb.al:                                            ; preds = %.split, %bb.ak
  %i.cx = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.cy = call i32 @H5S_close(ptr noundef %i.cx) #9
  %i.cz = icmp slt i32 %i.cy, 0
  br i1 %i.cz, label %bb.am, label %.thread174, !prof !20

bb.am:                                            ; preds = %bb.al
  %i.da = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !14
  %i.db = load i64, ptr @H5E_CLOSEERROR_g, align 8, !tbaa !14
  %i.dc = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_dataset_io_hyperslab_selection, i32 noundef 2336, i64 noundef %i.da, i64 noundef %i.db, ptr noundef nonnull @.str.48) #9 ; 0 uses
  br label %.thread174

.thread170:                                       ; preds = %bb.ae, %bb.ac, %bb.y, %bb.q, %bb.l, %bb.v, %bb.t, %bb.r, %bb.n, %bb.j
  %i.dd = call i32 @H5CX_pop(i1 noundef zeroext true) #9 ; 0 uses
  br label %.thread165

.thread174:                                       ; preds = %.split203, %.split, %bb.ak, %bb.al, %bb.am
  %i.de = call i32 @H5CX_pop(i1 noundef zeroext true) #9 ; 0 uses
  br label %.thread165

bb.an:                                            ; preds = %bb.ah
  %i.df = call i32 @H5CX_pop(i1 noundef zeroext true) #9 ; 0 uses
  br label %bb.ao

.thread165:                                       ; preds = %bb.h, %bb.f, %bb.c, %.thread174, %.thread170
  %i.dg = call i32 @H5E_dump_api_stack() #9       ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.thread165
  %.878156168 = phi i32 [ 0, %bb.an ], [ -1, %.thread165 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.878156168
}

declare i32 @H5S_get_simple_extent_ndims(ptr noundef) local_unnamed_addr #3

declare i32 @H5S_close(ptr noundef) local_unnamed_addr #3

declare ptr @H5S_create_simple(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @H5S_select_hyperslab(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5Pset_selection_io(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %2 = alloca %struct.H5CX_node_t, align 8        ; 4 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %2, i8 0, i64 480, i1 false)
  %i.b = load i8, ptr @H5_libinit_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !10 ; 2 uses
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = select i1 %i.c, i1 true, i1 %i.e
  br i1 %i.f, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @H5_init_library() #9
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %._crit_edge, !prof !18

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5_libterm_g, align 1, !range !10
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !14
  %i.j = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !14
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_selection_io, i32 noundef 2362, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.2) #9 ; 0 uses
  br label %.thread23

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %i.l = phi i8 [ %.pre, %._crit_edge ], [ %i.d, %bb.a ]
  %i.m = load i8, ptr @H5P_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = trunc nuw i8 %i.l to i1
  %i.p = select i1 %i.n, i1 true, i1 %i.o
  br i1 %i.p, label %bb.g, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr @H5P_init_g, align 1, !tbaa !9
  %i.q = tail call i32 @H5P__init_package() #9
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g, !prof !19

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr @H5P_init_g, align 1, !tbaa !9
  %i.s = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !14
  %i.t = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !14
  %i.u = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_selection_io, i32 noundef 2362, i64 noundef %i.s, i64 noundef %i.t, ptr noundef nonnull @.str.3) #9 ; 0 uses
  br label %.thread23

bb.g:                                             ; preds = %bb.d, %bb.e
  %i.v = call i32 @H5CX_push(ptr noundef nonnull %2) #9
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %bb.i, !prof !18

bb.h:                                             ; preds = %bb.g
  %i.x = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !14
  %i.y = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !14
  %i.z = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_selection_io, i32 noundef 2362, i64 noundef %i.x, i64 noundef %i.y, ptr noundef nonnull @.str.4) #9 ; 0 uses
  br label %.thread23

bb.i:                                             ; preds = %bb.g
  %i.aa = call i32 @H5E_clear_stack() #9          ; 0 uses
  %i.ab = icmp eq i64 %0, 0
  br i1 %i.ab, label %bb.j, label %bb.k, !prof !20

bb.j:                                             ; preds = %bb.i
  %i.ac = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !14
  %i.ad = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !14
  %i.ae = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_selection_io, i32 noundef 2366, i64 noundef %i.ac, i64 noundef %i.ad, ptr noundef nonnull @.str.53) #9 ; 0 uses
  br label %.thread29

bb.k:                                             ; preds = %bb.i
  %i.af = load i64, ptr @H5P_CLS_DATASET_XFER_ID_g, align 8, !tbaa !14
  %i.ag = call ptr @H5P_object_verify(i64 noundef %0, i64 noundef %i.af, i1 noundef zeroext false) #9 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.l, label %bb.m, !prof !20

bb.l:                                             ; preds = %bb.k
  %i.ai = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !14
  %i.aj = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !14
  %i.ak = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_selection_io, i32 noundef 2369, i64 noundef %i.ai, i64 noundef %i.aj, ptr noundef nonnull @.str.54) #9 ; 0 uses
  br label %.thread29

bb.m:                                             ; preds = %bb.k
  %i.al = call i32 @H5P_set(ptr noundef nonnull %i.ag, ptr noundef nonnull @.str.55, ptr noundef nonnull %i.a) #9
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %bb.n, label %bb.o, !prof !20

bb.n:                                             ; preds = %bb.m
  %i.an = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !14
  %i.ao = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !14
  %i.ap = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_selection_io, i32 noundef 2373, i64 noundef %i.an, i64 noundef %i.ao, ptr noundef nonnull @.str.24) #9 ; 0 uses
  br label %.thread29

.thread29:                                        ; preds = %bb.n, %bb.l, %bb.j
  %i.aq = call i32 @H5CX_pop(i1 noundef zeroext true) #9 ; 0 uses
  br label %.thread23

bb.o:                                             ; preds = %bb.m
  %i.ar = call i32 @H5CX_pop(i1 noundef zeroext true) #9 ; 0 uses
  br label %bb.p

.thread23:                                        ; preds = %bb.h, %bb.f, %bb.c, %.thread29
  %i.as = call i32 @H5E_dump_api_stack() #9       ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread23
  %.0121826 = phi i32 [ -1, %.thread23 ], [ 0, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret i32 %.0121826
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5Pget_selection_io(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.H5CX_node_t, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %2, i8 0, i64 480, i1 false)
  %i.a = load i8, ptr @H5_libinit_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10 ; 2 uses
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @H5_init_library() #9
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge, !prof !18

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5_libterm_g, align 1, !range !10
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !14
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !14
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pget_selection_io, i32 noundef 2399, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.2) #9 ; 0 uses
  br label %.thread23

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %i.k = phi i8 [ %.pre, %._crit_edge ], [ %i.c, %bb.a ]
  %i.l = load i8, ptr @H5P_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = trunc nuw i8 %i.k to i1
  %i.o = select i1 %i.m, i1 true, i1 %i.n
  br i1 %i.o, label %bb.g, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr @H5P_init_g, align 1, !tbaa !9
end_hunk_0
begin_hunk_1_@H5P__dxfr_xform_get:bb.a
bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @H5Z_xform_copy(ptr noundef %3) #9
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !14
  %i.j = load i64, ptr @H5E_CANTCOPY_g, align 8, !tbaa !14
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5P__dxfr_xform_get, i32 noundef 696, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.72) #9 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @H5P__dxfr_xform_enc(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.b = load i8, ptr @H5P_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  br i1 %i.g, label %bb.b, label %bb.an, !prof !12

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.a, null                  ; 2 uses
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @H5Z_xform_extract_xform_str(ptr noundef nonnull %i.a) #9 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !14
  %i.k = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !14
  %i.l = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5P__dxfr_xform_enc, i32 noundef 734, i64 noundef %i.j, i64 noundef %i.k, ptr noundef nonnull @.str.13) #9 ; 0 uses
  br label %bb.an

bb.e:                                             ; preds = %bb.c
  %i.m = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #10
  %i.n = add i64 %i.m, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.038 = phi ptr [ %i.h, %bb.e ], [ null, %bb.b ] ; 2 uses
  %.037 = phi i64 [ %i.n, %bb.e ], [ 0, %bb.b ]   ; 20 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !33     ; 3 uses
  %.not42 = icmp eq ptr %i.o, null
  %.pre = lshr i64 %.037, 32                      ; 4 uses
  br i1 %.not42, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i64 %.pre, 0
  br i1 %.not.i.i, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = lshr i64 %.037, 48                       ; 2 uses
  %.not26.i.i = icmp eq i64 %i.p, 0
  br i1 %.not26.i.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = lshr i64 %.037, 56                       ; 2 uses
  %.not28.i.i = icmp eq i64 %i.q, 0
  br i1 %.not28.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !21
  %i.t = zext i8 %i.s to i32
  %i.u = add nuw nsw i32 %i.t, 56
  br label %H5VM_limit_enc_size.exit

bb.k:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.p
  %i.w = load i8, ptr %i.v, align 1, !tbaa !21
  %i.x = zext i8 %i.w to i32
  %i.y = add nuw nsw i32 %i.x, 48
  br label %H5VM_limit_enc_size.exit

bb.l:                                             ; preds = %bb.h
  %i.z = lshr i64 %.037, 40                       ; 2 uses
  %.not27.i.i = icmp eq i64 %i.z, 0
  br i1 %.not27.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !21
  %i.ac = zext i8 %i.ab to i32
  %i.ad = add nuw nsw i32 %i.ac, 40
  br label %H5VM_limit_enc_size.exit

bb.n:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %.pre
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !21
  %i.ag = zext i8 %i.af to i32
  %i.ah = add nuw nsw i32 %i.ag, 32
  br label %H5VM_limit_enc_size.exit

bb.o:                                             ; preds = %bb.g
  %i.ai = lshr i64 %.037, 16                      ; 2 uses
  %.not23.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not23.i.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = lshr i64 %.037, 24                      ; 2 uses
  %.not25.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not25.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !21
  %i.am = zext i8 %i.al to i32
  %i.an = add nuw nsw i32 %i.am, 24
  br label %H5VM_limit_enc_size.exit

bb.r:                                             ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.ai
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !21
  %i.aq = zext i8 %i.ap to i32
  %i.ar = add nuw nsw i32 %i.aq, 16
  br label %H5VM_limit_enc_size.exit

bb.s:                                             ; preds = %bb.o
  %i.as = lshr i64 %.037, 8                       ; 2 uses
  %.not24.i.i = icmp eq i64 %i.as, 0
  br i1 %.not24.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !21
  %i.av = zext i8 %i.au to i32
  %i.aw = add nuw nsw i32 %i.av, 8
  br label %H5VM_limit_enc_size.exit

bb.u:                                             ; preds = %bb.s
  %i.ax = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %.037
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !21
  %i.az = zext i8 %i.ay to i32
  br label %H5VM_limit_enc_size.exit

H5VM_limit_enc_size.exit:                         ; preds = %bb.j, %bb.k, %bb.m, %bb.n, %bb.q, %bb.r, %bb.t, %bb.u
  %.0.i.i = phi i32 [ %i.ar, %bb.r ], [ %i.y, %bb.k ], [ %i.ah, %bb.n ], [ %i.u, %bb.j ], [ %i.ad, %bb.m ], [ %i.an, %bb.q ], [ %i.aw, %bb.t ], [ %i.az, %bb.u ] ; 2 uses
  %i.ba = lshr i32 %.0.i.i, 3
  %i.bb = add nuw nsw i32 %i.ba, 1                ; 2 uses
  %i.bc = trunc nuw nsw i32 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store ptr %i.bd, ptr %1, align 8, !tbaa !33
  store i8 %i.bc, ptr %i.o, align 1, !tbaa !21
  %i.be = load ptr, ptr %1, align 8, !tbaa !33    ; 2 uses
  %i.bf = zext nneg i32 %i.bb to i64              ; 3 uses
  %xtraiter = and i64 %i.bf, 7                    ; 3 uses
  %i.bg = icmp ult i32 %.0.i.i, 56
  br i1 %i.bg, label %.epil.preheader, label %H5VM_limit_enc_size.exit.new

H5VM_limit_enc_size.exit.new:                     ; preds = %H5VM_limit_enc_size.exit
  %unroll_iter = and i64 %i.bf, 1073741816
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %H5VM_limit_enc_size.exit.new
  %.055 = phi ptr [ %i.be, %H5VM_limit_enc_size.exit.new ], [ %i.cd, %bb.v ] ; 9 uses
  %.03553 = phi i64 [ %.037, %H5VM_limit_enc_size.exit.new ], [ 0, %bb.v ] ; 8 uses
  %niter = phi i64 [ 0, %H5VM_limit_enc_size.exit.new ], [ %niter.next.7, %bb.v ]
  %i.bh = trunc i64 %.03553 to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %.055, i64 1
  store i8 %i.bh, ptr %.055, align 1, !tbaa !21
  %i.bj = lshr i64 %.03553, 8
  %i.bk = trunc i64 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %.055, i64 2
  store i8 %i.bk, ptr %i.bi, align 1, !tbaa !21
  %i.bm = lshr i64 %.03553, 16
  %i.bn = trunc i64 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %.055, i64 3
  store i8 %i.bn, ptr %i.bl, align 1, !tbaa !21
  %i.bp = lshr i64 %.03553, 24
  %i.bq = trunc i64 %i.bp to i8
  %i.br = getelementptr inbounds nuw i8, ptr %.055, i64 4
  store i8 %i.bq, ptr %i.bo, align 1, !tbaa !21
  %i.bs = lshr i64 %.03553, 32
  %i.bt = trunc i64 %i.bs to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %.055, i64 5
  store i8 %i.bt, ptr %i.br, align 1, !tbaa !21
  %i.bv = lshr i64 %.03553, 40
  %i.bw = trunc i64 %i.bv to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %.055, i64 6
  store i8 %i.bw, ptr %i.bu, align 1, !tbaa !21
  %i.by = lshr i64 %.03553, 48
  %i.bz = trunc i64 %i.by to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %.055, i64 7
  store i8 %i.bz, ptr %i.bx, align 1, !tbaa !21
  %i.cb = lshr i64 %.03553, 56
  %i.cc = trunc nuw i64 %i.cb to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %.055, i64 8 ; 2 uses
  store i8 %i.cc, ptr %i.ca, align 1, !tbaa !21
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.unr-lcssa, label %bb.v, !llvm.loop !45

.unr-lcssa:                                       ; preds = %bb.v
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %H5VM_limit_enc_size.exit
  %.055.epil.init = phi ptr [ %i.be, %H5VM_limit_enc_size.exit ], [ %i.cd, %.unr-lcssa ]
  %.03553.epil.init = phi i64 [ %.037, %H5VM_limit_enc_size.exit ], [ 0, %.unr-lcssa ]
  %lcmp.mod72 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod72)
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.epil.preheader
  %.055.epil = phi ptr [ %.055.epil.init, %.epil.preheader ], [ %i.cf, %bb.w ] ; 2 uses
  %.03553.epil = phi i64 [ %.03553.epil.init, %.epil.preheader ], [ %i.cg, %bb.w ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.w ]
  %i.ce = trunc i64 %.03553.epil to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %.055.epil, i64 1
  store i8 %i.ce, ptr %.055.epil, align 1, !tbaa !21
  %i.cg = lshr i64 %.03553.epil, 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.w, !llvm.loop !46

.epilog-lcssa:                                    ; preds = %bb.w, %.unr-lcssa
  %i.ch = load ptr, ptr %1, align 8, !tbaa !33
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.bf ; 2 uses
  store ptr %i.ci, ptr %1, align 8, !tbaa !33
  br i1 %.not, label %._crit_edge, label %bb.x

bb.x:                                             ; preds = %.epilog-lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ci, ptr align 1 %.038, i64 %.037, i1 false)
  %i.cj = load ptr, ptr %1, align 8, !tbaa !33
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.037 ; 2 uses
  store ptr %i.ck, ptr %1, align 8, !tbaa !33
  store i8 0, ptr %i.ck, align 1, !tbaa !21
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %.epilog-lcssa, %bb.x
  %.not.i.i44 = icmp eq i64 %.pre, 0
  br i1 %.not.i.i44, label %bb.af, label %bb.y

bb.y:                                             ; preds = %._crit_edge
  %i.cl = lshr i64 %.037, 48                      ; 2 uses
  %.not26.i.i45 = icmp eq i64 %i.cl, 0
  br i1 %.not26.i.i45, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cm = lshr i64 %.037, 56                      ; 2 uses
  %.not28.i.i46 = icmp eq i64 %i.cm, 0
  br i1 %.not28.i.i46, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cn = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !21
  %i.cp = zext i8 %i.co to i32
  %i.cq = add nuw nsw i32 %i.cp, 56
  br label %H5VM_limit_enc_size.exit52

bb.ab:                                            ; preds = %bb.z
  %i.cr = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.cl
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !21
  %i.ct = zext i8 %i.cs to i32
  %i.cu = add nuw nsw i32 %i.ct, 48
  br label %H5VM_limit_enc_size.exit52

bb.ac:                                            ; preds = %bb.y
  %i.cv = lshr i64 %.037, 40                      ; 2 uses
  %.not27.i.i48 = icmp eq i64 %i.cv, 0
  br i1 %.not27.i.i48, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cw = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !21
  %i.cy = zext i8 %i.cx to i32
  %i.cz = add nuw nsw i32 %i.cy, 40
  br label %H5VM_limit_enc_size.exit52

bb.ae:                                            ; preds = %bb.ac
  %i.da = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %.pre
  %i.db = load i8, ptr %i.da, align 1, !tbaa !21
  %i.dc = zext i8 %i.db to i32
  %i.dd = add nuw nsw i32 %i.dc, 32
  br label %H5VM_limit_enc_size.exit52

bb.af:                                            ; preds = %._crit_edge
  %i.de = lshr i64 %.037, 16                      ; 2 uses
  %.not23.i.i49 = icmp eq i64 %i.de, 0
  br i1 %.not23.i.i49, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.df = lshr i64 %.037, 24                      ; 2 uses
  %.not25.i.i50 = icmp eq i64 %i.df, 0
  br i1 %.not25.i.i50, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dg = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !21
  %i.di = zext i8 %i.dh to i32
  %i.dj = add nuw nsw i32 %i.di, 24
  br label %H5VM_limit_enc_size.exit52

bb.ai:                                            ; preds = %bb.ag
  %i.dk = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.de
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !21
  %i.dm = zext i8 %i.dl to i32
  %i.dn = add nuw nsw i32 %i.dm, 16
  br label %H5VM_limit_enc_size.exit52

bb.aj:                                            ; preds = %bb.af
  %i.do = lshr i64 %.037, 8                       ; 2 uses
  %.not24.i.i51 = icmp eq i64 %i.do, 0
  br i1 %.not24.i.i51, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dp = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !21
  %i.dr = zext i8 %i.dq to i32
  %i.ds = add nuw nsw i32 %i.dr, 8
  br label %H5VM_limit_enc_size.exit52

bb.al:                                            ; preds = %bb.aj
  %i.dt = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %.037
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !21
  %i.dv = zext i8 %i.du to i32
  br label %H5VM_limit_enc_size.exit52

H5VM_limit_enc_size.exit52:                       ; preds = %bb.aa, %bb.ab, %bb.ad, %bb.ae, %bb.ah, %bb.ai, %bb.ak, %bb.al
  %.0.i.i47 = phi i32 [ %i.dn, %bb.ai ], [ %i.cu, %bb.ab ], [ %i.dd, %bb.ae ], [ %i.cq, %bb.aa ], [ %i.cz, %bb.ad ], [ %i.dj, %bb.ah ], [ %i.ds, %bb.ak ], [ %i.dv, %bb.al ]
  %i.dw = lshr i32 %.0.i.i47, 3
  %i.dx = add nuw nsw i32 %i.dw, 2
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = load i64, ptr %2, align 8, !tbaa !14
  %i.ea = add i64 %i.dz, %i.dy                    ; 2 uses
  store i64 %i.ea, ptr %2, align 8, !tbaa !14
  %.not43 = icmp eq ptr %.038, null
  br i1 %.not43, label %bb.an, label %bb.am

bb.am:                                            ; preds = %H5VM_limit_enc_size.exit52
  %i.eb = add i64 %i.ea, %.037
  store i64 %i.eb, ptr %2, align 8, !tbaa !14
  br label %bb.an

bb.an:                                            ; preds = %bb.d, %bb.am, %H5VM_limit_enc_size.exit52, %bb.a
  %.036 = phi i32 [ -1, %bb.d ], [ 0, %bb.am ], [ 0, %H5VM_limit_enc_size.exit52 ], [ 0, %bb.a ]
  ret i32 %.036
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @H5P__dxfr_xform_dec(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = load i8, ptr @H5P_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.g, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !33
  %i.i = load i8, ptr %i.g, align 1, !tbaa !21    ; 3 uses
  %i.j = zext i8 %i.i to i64                      ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j ; 3 uses
  %.not25 = icmp eq i8 %i.i, 0
  br i1 %.not25, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %xtraiter = and i64 %i.j, 3                     ; 3 uses
  %i.l = icmp ult i8 %i.i, 4
  br i1 %i.l, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.j, 252
  br label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  store ptr %i.m, ptr %0, align 8, !tbaa !33
  br label %bb.f

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %i.n = phi ptr [ %i.k, %.lr.ph.preheader.new ], [ %i.ae, %.lr.ph ] ; 4 uses
  %.02123 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ah, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -1 ; 2 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !33
  %i.p = load i8, ptr %i.o, align 1, !tbaa !21
  %i.q = zext i8 %i.p to i64
  %i.r = shl i64 %.02123, 16
  %i.s = shl nuw nsw i64 %i.q, 8
  %i.t = or disjoint i64 %i.r, %i.s
  %i.u = getelementptr inbounds i8, ptr %i.n, i64 -2 ; 2 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !33
  %i.v = load i8, ptr %i.u, align 1, !tbaa !21
  %i.w = zext i8 %i.v to i64
  %i.x = or disjoint i64 %i.t, %i.w
  %i.y = getelementptr inbounds i8, ptr %i.n, i64 -3 ; 2 uses
  store ptr %i.y, ptr %0, align 8, !tbaa !33
  %i.z = load i8, ptr %i.y, align 1, !tbaa !21
  %i.aa = zext i8 %i.z to i64
  %i.ab = shl i64 %i.x, 16
  %i.ac = shl nuw nsw i64 %i.aa, 8
  %i.ad = or disjoint i64 %i.ab, %i.ac
  %i.ae = getelementptr inbounds i8, ptr %i.n, i64 -4 ; 5 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !33
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !21
  %i.ag = zext i8 %i.af to i64
  %i.ah = or disjoint i64 %i.ad, %i.ag            ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !47

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi ptr [ %i.k, %.lr.ph.preheader ], [ %i.ae, %._crit_edge.unr-lcssa ]
  %.02123.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ah, %._crit_edge.unr-lcssa ]
  %lcmp.mod33 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod33)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %i.ai = phi ptr [ %i.ak, %.lr.ph.epil ], [ %.epil.init, %.lr.ph.epil.preheader ]
  %.02123.epil = phi i64 [ %i.an, %.lr.ph.epil ], [ %.02123.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.aj = shl i64 %.02123.epil, 8
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -1 ; 4 uses
  store ptr %i.ak, ptr %0, align 8, !tbaa !33
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !21
  %i.am = zext i8 %i.al to i64
  %i.an = or disjoint i64 %i.aj, %i.am            ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !48

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.lcssa30 = phi ptr [ %i.ae, %._crit_edge.unr-lcssa ], [ %i.ak, %.lr.ph.epil ]
  %.lcssa = phi i64 [ %i.ah, %._crit_edge.unr-lcssa ], [ %i.an, %.lr.ph.epil ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.lcssa30, i64 %i.j ; 2 uses
  store ptr %i.ao, ptr %0, align 8, !tbaa !33
  %.not = icmp eq i64 %.lcssa, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.ap = tail call ptr @H5Z_xform_create(ptr noundef nonnull %i.ao) #9 ; 2 uses
  store ptr %i.ap, ptr %1, align 8, !tbaa !17
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ar = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !14
  %i.as = load i64, ptr @H5E_CANTCREATE_g, align 8, !tbaa !14
  %i.at = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5P__dxfr_xform_dec, i32 noundef 809, i64 noundef %i.ar, i64 noundef %i.as, ptr noundef nonnull @.str.10) #9 ; 0 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.au = load ptr, ptr %0, align 8, !tbaa !33
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.lcssa
  store ptr %i.av, ptr %0, align 8, !tbaa !33
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.thread, %._crit_edge
  store ptr null, ptr %1, align 8, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e, %bb.a
  %.020 = phi i32 [ -1, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.a ]
  ret i32 %.020
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @H5P__dxfr_xform_del(i64 %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = load i8, ptr @H5P_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.d, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %3, align 8, !tbaa !17
  %i.h = tail call i32 @H5Z_xform_destroy(ptr noundef %i.g) #9
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !14
  %i.k = load i64, ptr @H5E_CANTCLOSEOBJ_g, align 8, !tbaa !14
  %i.l = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5P__dxfr_xform_del, i32 noundef 839, i64 noundef %i.j, i64 noundef %i.k, ptr noundef nonnull @.str.73) #9 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @H5P__dxfr_xform_copy(ptr nofree readnone captures(none) %0, i64 %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i8, ptr @H5P_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.d, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @H5Z_xform_copy(ptr noundef %2) #9
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !14
  %i.j = load i64, ptr @H5E_CANTCOPY_g, align 8, !tbaa !14
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5P__dxfr_xform_copy, i32 noundef 867, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.72) #9 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @H5P__dxfr_xform_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = load i8, ptr @H5P_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.thread24, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  %i.i = load ptr, ptr %1, align 8, !tbaa !17     ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not = icmp ne ptr %i.i, null
  %spec.select = sext i1 %.not to i32
  br label %.thread24

bb.d:                                             ; preds = %bb.b
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.thread24, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @H5Z_xform_extract_xform_str(ptr noundef nonnull %i.g) #9 ; 3 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !17
  %i.m = tail call ptr @H5Z_xform_extract_xform_str(ptr noundef %i.l) #9 ; 3 uses
  %i.n = icmp eq ptr %i.k, null
  %i.o = icmp ne ptr %i.m, null
  %or.cond = select i1 %i.n, i1 %i.o, i1 false
  br i1 %or.cond, label %.thread24, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = icmp ne ptr %i.k, null                   ; 2 uses
  %i.q = icmp eq ptr %i.m, null                   ; 2 uses
  %or.cond3 = select i1 %i.p, i1 %i.q, i1 false
  %.not23 = xor i1 %i.p, true
  %brmerge = select i1 %.not23, i1 true, i1 %i.q
  %.mux = zext i1 %or.cond3 to i32
  br i1 %brmerge, label %.thread24, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(1) %i.m) #10
  br label %.thread24

.thread24:                                        ; preds = %bb.c, %bb.f, %bb.e, %bb.d, %bb.g, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.c ], [ 1, %bb.d ], [ -1, %bb.e ], [ %i.r, %bb.g ], [ %.mux, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @H5P__dxfr_xform_close(ptr nofree readnone captures(none) %0, i64 %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = load i8, ptr @H5P_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.d, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !17
  %i.h = tail call i32 @H5Z_xform_destroy(ptr noundef %i.g) #9
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !14
  %i.k = load i64, ptr @H5E_CANTCLOSEOBJ_g, align 8, !tbaa !14
  %i.l = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5P__dxfr_xform_close, i32 noundef 948, i64 noundef %i.j, i64 noundef %i.k, ptr noundef nonnull @.str.73) #9 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @H5P__dxfr_dset_io_hyp_sel_copy(ptr nofree readnone captures(none) %0, i64 %1, ptr nofree noundef captures(none) %2) #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !30     ; 2 uses
  %i.b = load i8, ptr @H5P_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.e = trunc nuw i8 %i.d to i1
  %not. = xor i1 %i.c, true
  %.not22 = select i1 %not., i1 %i.e, i1 false
  %.not = icmp eq ptr %i.a, null
  %or.cond = select i1 %.not22, i1 true, i1 %.not, !prof !49
  br i1 %or.cond, label %.loopexit, label %bb.b, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @H5S_copy(ptr noundef nonnull %i.a, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %i.g = freeze ptr %i.f                          ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !14
  %i.j = load i64, ptr @H5E_CANTCOPY_g, align 8, !tbaa !14
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5P__dxfr_dset_io_hyp_sel_copy, i32 noundef 2055, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.74) #9 ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  store ptr %i.g, ptr %2, align 8, !tbaa !22
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.d, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ -1, %bb.c ], [ 0, %bb.d ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 2) i32 @H5P__dxfr_dset_io_hyp_sel_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = load i8, ptr @H5P_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.thread16, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  %i.i = load ptr, ptr %1, align 8, !tbaa !30     ; 3 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not = icmp ne ptr %i.i, null
  %spec.select17 = sext i1 %.not to i32
  br label %.thread16

bb.d:                                             ; preds = %bb.b
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.thread16, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 @H5S_extent_equal(ptr noundef nonnull %i.g, ptr noundef nonnull %i.i) #9
  %.not14 = icmp eq i32 %i.k, 1
  br i1 %.not14, label %bb.f, label %.thread16

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %0, align 8, !tbaa !30
  %i.m = load ptr, ptr %1, align 8, !tbaa !30
  %i.n = tail call i32 @H5S_select_shape_same(ptr noundef %i.l, ptr noundef %i.m) #9
  %.not15 = icmp ne i32 %i.n, 1
  %spec.select = sext i1 %.not15 to i32
  br label %.thread16

.thread16:                                        ; preds = %bb.c, %bb.f, %bb.e, %bb.d, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select17, %bb.c ], [ 1, %bb.d ], [ -1, %bb.e ], [ %spec.select, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @H5P__dxfr_dset_io_hyp_sel_close(ptr nofree readnone captures(none) %0, i64 %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !30     ; 2 uses
  %i.b = load i8, ptr @H5P_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  %i.h = icmp ne ptr %i.a, null
  %or.cond = select i1 %i.g, i1 %i.h, i1 false, !prof !50
  br i1 %or.cond, label %bb.b, label %bb.d, !prof !50

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @H5S_close(ptr noundef nonnull %i.a) #9
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !14
  %i.l = load i64, ptr @H5E_CANTCLOSEOBJ_g, align 8, !tbaa !14
  %i.m = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5P__dxfr_dset_io_hyp_sel_close, i32 noundef 2145, i64 noundef %i.k, i64 noundef %i.l, ptr noundef nonnull @.str.75) #9 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @H5P__dxfr_selection_io_mode_enc(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) #6 {
bb.a:
  %i.a = load i8, ptr @H5P_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.e, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !33     ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %0, align 4, !tbaa !23
  %i.i = trunc i32 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.j, ptr %1, align 8, !tbaa !33
  store i8 %i.i, ptr %i.g, align 1, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = load i64, ptr %2, align 8, !tbaa !14
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %2, align 8, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @H5P__dxfr_selection_io_mode_dec(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #7 {
bb.a:
  %i.a = load i8, ptr @H5P_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.h, ptr %0, align 8, !tbaa !33
  %i.i = load i8, ptr %i.g, align 1, !tbaa !21
  %i.j = zext i8 %i.i to i32
  store i32 %i.j, ptr %1, align 4, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @H5P__dxfr_modify_write_buf_enc(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) #6 {
bb.a:
  %i.a = load i8, ptr @H5P_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.e, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !33     ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %0, align 1, !tbaa !9, !range !10, !noundef !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.i, ptr %1, align 8, !tbaa !33
  store i8 %i.h, ptr %i.g, align 1, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = load i64, ptr %2, align 8, !tbaa !14
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %2, align 8, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @H5P__dxfr_modify_write_buf_dec(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #7 {
bb.a:
  %i.a = load i8, ptr @H5P_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.h, ptr %0, align 8, !tbaa !33
  %i.i = load i8, ptr %i.g, align 1, !tbaa !21
  %i.j = icmp ne i8 %i.i, 0
  %i.k = zext i1 %i.j to i8
  store i8 %i.k, ptr %1, align 1, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @H5Z_xform_copy(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare ptr @H5S_copy(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

declare i32 @H5S_extent_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @H5S_select_shape_same(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

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
!8 = !{!"_Bool", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = !{!"long", !4, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"any pointer", !4, i64 0}
!16 = !{!"p1 _ZTS16H5Z_data_xform_t", !15, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!19 = !{!"branch_weights", i32 1073205, i32 2146410443}
!20 = !{!"branch_weights", i32 0, i32 -2147483648}
!21 = !{!4, !4, i64 0}
!22 = !{!15, !15, i64 0}
!23 = !{!5, !5, i64 0}
!24 = !{!"H5T_conv_cb_t", !15, i64 0, !15, i64 8}
!25 = !{!24, !15, i64 0}
!26 = !{!24, !15, i64 8}
!27 = !{!"double", !4, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"p1 _ZTS5H5S_t", !15, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!"p1 omnipotent char", !15, i64 0}
!33 = !{!32, !32, i64 0}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = !{!"branch_weights", !"expected", i32 2146342471, i32 1141177}
!36 = !{!"H5Z_cb_t", !15, i64 0, !15, i64 8}
!37 = !{!36, !15, i64 0}
!38 = !{!36, !15, i64 8}
!39 = distinct !{!39, !31}
!40 = distinct !{!40, !31, !42, !43}
!41 = !{!"branch_weights", i32 1090947, i32 2146392701}
!42 = !{!"llvm.loop.unroll.runtime.disable"}
!43 = !{!"llvm.loop.isvectorized", i32 1}
!44 = !{!"branch_weights", i32 -2147483648, i32 0}
!45 = distinct !{!45, !31}
!46 = distinct !{!46, !34}
!47 = distinct !{!47, !31}
!48 = distinct !{!48, !34}
!49 = !{!"branch_weights", i32 2002, i32 2000}
!50 = !{!"branch_weights", i32 2000, i32 2002}
end_hunk_1
