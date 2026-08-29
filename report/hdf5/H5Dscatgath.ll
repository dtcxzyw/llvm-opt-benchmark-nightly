Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Dscatgath?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@H5D__gather_file:bb.a
  store i32 0, ptr %i.n, align 8, !tbaa !66
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 120 ; 3 uses
  store ptr %4, ptr %i.o, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 64
  store ptr %6, ptr %i.p, align 8, !tbaa !67
  %i.q = call i32 @H5CX_get_vec_size(ptr noundef nonnull %i.g) #8
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !13
  %i.t = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !13
  %i.u = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5D__gather_file, i32 noundef 228, i64 noundef %i.s, i64 noundef %i.t, ptr noundef nonnull @.str.1) #8 ; 0 uses
  br label %.thread46

bb.d:                                             ; preds = %bb.b
  %i.v = load i64, ptr %i.g, align 8, !tbaa !13
  %. = call i64 @llvm.umax.i64(i64 %i.v, i64 1024) ; 3 uses
  %i.w = call noalias ptr @H5FL_seq_malloc(ptr noundef nonnull @H5_size_t_seq_free_list, i64 noundef %.) #8 ; 5 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !13
  %i.z = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !13
  %i.aa = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5D__gather_file, i32 noundef 236, i64 noundef %i.y, i64 noundef %i.z, ptr noundef nonnull @.str.2) #8 ; 0 uses
  br label %.thread46

bb.f:                                             ; preds = %bb.d
  %i.ab = call noalias ptr @H5FL_seq_malloc(ptr noundef nonnull @H5_hsize_t_seq_free_list, i64 noundef %.) #8 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.f
  %.not57 = icmp eq i64 %3, 0
  br i1 %.not57, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 536
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 80
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.k
  %.02958 = phi i64 [ %3, %.lr.ph ], [ %i.ax, %bb.k ] ; 2 uses
  %i.af = call i32 @H5S_select_iter_get_seq_list(ptr noundef nonnull %2, i64 noundef %., i64 noundef %.02958, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.w) #8
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = load i64, ptr @H5E_INTERNAL_g, align 8, !tbaa !13
  %i.ai = load i64, ptr @H5E_UNSUPPORTED_g, align 8, !tbaa !13
  %i.aj = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5D__gather_file, i32 noundef 244, i64 noundef %i.ah, i64 noundef %i.ai, ptr noundef nonnull @.str.4) #8 ; 0 uses
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  store i64 0, ptr %i.c, align 8, !tbaa !13
  store i64 0, ptr %i.b, align 8, !tbaa !13
  %i.ak = load i64, ptr %i.f, align 8, !tbaa !13
  %i.al = load i64, ptr %i.ad, align 8, !tbaa !68
  %i.am = mul i64 %i.al, %i.ak                    ; 2 uses
  store i64 %i.am, ptr %i.d, align 8, !tbaa !13
  store i64 0, ptr %i.a, align 8, !tbaa !13
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !71
  %i.ao = load i64, ptr %i.e, align 8, !tbaa !13
  %i.ap = call i64 %i.an(ptr noundef nonnull %5, ptr noundef nonnull %6, i64 noundef %i.ao, ptr noundef nonnull %i.c, ptr noundef nonnull %i.w, ptr noundef nonnull %i.ab, i64 noundef 1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a) #8
  %i.aq = icmp slt i64 %i.ap, 0
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ar = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !13
  %i.as = load i64, ptr @H5E_READERROR_g, align 8, !tbaa !13
  %i.at = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5D__gather_file, i32 noundef 254, i64 noundef %i.ar, i64 noundef %i.as, ptr noundef nonnull @.str.30) #8 ; 0 uses
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.au = load ptr, ptr %i.o, align 8, !tbaa !20
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.am
  store ptr %i.av, ptr %i.o, align 8, !tbaa !20
  %i.aw = load i64, ptr %i.f, align 8, !tbaa !13
  %i.ax = sub i64 %.02958, %i.aw                  ; 2 uses
  %.not = icmp eq i64 %i.ax, 0
  br i1 %.not, label %.loopexit, label %bb.g, !llvm.loop !72

bb.l:                                             ; preds = %bb.f
  %i.ay = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !13
  %i.az = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !13
  %i.ba = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5D__gather_file, i32 noundef 238, i64 noundef %i.ay, i64 noundef %i.az, ptr noundef nonnull @.str.3) #8 ; 0 uses
  %i.bb = call ptr @H5FL_seq_free(ptr noundef nonnull @H5_size_t_seq_free_list, ptr noundef nonnull %i.w) #8 ; 0 uses
  br label %.thread46

.loopexit:                                        ; preds = %bb.k, %.preheader, %bb.j, %bb.h
  %.0.ph.ph = phi i64 [ 0, %bb.h ], [ 0, %bb.j ], [ 0, %.preheader ], [ %3, %bb.k ]
  %i.bc = call ptr @H5FL_seq_free(ptr noundef nonnull @H5_size_t_seq_free_list, ptr noundef nonnull %i.w) #8 ; 0 uses
  %i.bd = call ptr @H5FL_seq_free(ptr noundef nonnull @H5_hsize_t_seq_free_list, ptr noundef nonnull %i.ab) #8 ; 0 uses
  br label %.thread46

.thread46:                                        ; preds = %bb.e, %bb.c, %bb.l, %.loopexit, %bb.a
  %.1 = phi i64 [ %.0.ph.ph, %.loopexit ], [ 0, %bb.l ], [ %3, %bb.a ], [ 0, %bb.c ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @H5D__compound_opt_read(i64 noundef %0, ptr noundef nonnull %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.d = load i8, ptr @H5D_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = xor i1 %i.g, true
  %i.i = select i1 %i.e, i1 true, i1 %i.h
  br i1 %i.i, label %bb.b, label %.thread84, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.j = call i32 @H5CX_get_vec_size(ptr noundef nonnull %i.a) #8
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !13
  %i.m = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !13
  %i.n = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5D__compound_opt_read, i32 noundef 1414, i64 noundef %i.l, i64 noundef %i.m, ptr noundef nonnull @.str.1) #8 ; 0 uses
  br label %.thread84

bb.d:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.a, align 8, !tbaa !13
  %. = call i64 @llvm.umax.i64(i64 %i.o, i64 1024) ; 3 uses
  %i.p = call noalias ptr @H5FL_seq_malloc(ptr noundef nonnull @H5_size_t_seq_free_list, i64 noundef %.) #8 ; 5 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !13
  %i.s = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !13
  %i.t = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5D__compound_opt_read, i32 noundef 1422, i64 noundef %i.r, i64 noundef %i.s, ptr noundef nonnull @.str.2) #8 ; 0 uses
  br label %.thread84

bb.f:                                             ; preds = %bb.d
  %i.u = call noalias ptr @H5FL_seq_malloc(ptr noundef nonnull @H5_hsize_t_seq_free_list, i64 noundef %.) #8 ; 4 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.thread76.thread114, label %bb.g

.thread76.thread114:                              ; preds = %bb.f
  %i.w = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !13
  %i.x = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !13
  %i.y = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5D__compound_opt_read, i32 noundef 1424, i64 noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.3) #8 ; 0 uses
  %i.z = call ptr @H5FL_seq_free(ptr noundef nonnull @H5_size_t_seq_free_list, ptr noundef nonnull %i.p) #8 ; 0 uses
  br label %.thread84

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !73 ; 9 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !74 ; 11 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !75
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !76 ; 9 uses
  %.not96 = icmp eq i64 %0, 0
  br i1 %.not96, label %.thread76.thread, label %.lr.ph100

.lr.ph100:                                        ; preds = %bb.g, %._crit_edge94
  %.05198 = phi ptr [ %.152.lcssa, %._crit_edge94 ], [ %3, %bb.g ] ; 2 uses
  %.05697 = phi i64 [ %i.bo, %._crit_edge94 ], [ %0, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.ai = call i32 @H5S_select_iter_get_seq_list(ptr noundef nonnull %1, i64 noundef %., i64 noundef %.05697, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.u, ptr noundef nonnull %i.p) #8
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %.thread, label %.preheader

.preheader:                                       ; preds = %.lr.ph100
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !13  ; 2 uses
  %.not101 = icmp eq i64 %i.ak, 0
  br i1 %.not101, label %._crit_edge94, label %.lr.ph93

.thread:                                          ; preds = %.lr.ph100
  %i.al = load i64, ptr @H5E_INTERNAL_g, align 8, !tbaa !13
  %i.am = load i64, ptr @H5E_UNSUPPORTED_g, align 8, !tbaa !13
  %i.an = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5D__compound_opt_read, i32 noundef 1442, i64 noundef %i.al, i64 noundef %i.am, ptr noundef nonnull @.str.4) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %.thread76.thread

.lr.ph93:                                         ; preds = %.preheader, %._crit_edge
  %.04692 = phi i64 [ %i.bm, %._crit_edge ], [ 0, %.preheader ] ; 3 uses
  %.15291 = phi ptr [ %.253.lcssa, %._crit_edge ], [ %.05198, %.preheader ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.04692
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !13 ; 2 uses
  %5 = udiv i64 %i.ap, %i.ad                      ; 3 uses
  %.not102 = icmp ugt i64 %i.ad, %i.ap
  br i1 %.not102, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph93
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.04692
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 %i.ar ; 2 uses
  %6 = add i64 %5, -1
  %xtraiter = and i64 %5, 7                       ; 3 uses
  %i.at = icmp ult i64 %6, 7
  br i1 %i.at, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %5, -8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.04589 = phi ptr [ %i.as, %.lr.ph.preheader.new ], [ %i.bj, %.lr.ph ] ; 2 uses
  %.25388 = phi ptr [ %.15291, %.lr.ph.preheader.new ], [ %i.bi, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %.04589, ptr align 1 %.25388, i64 %i.ah, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %.25388, i64 %i.ab ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.04589, i64 %i.ad ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.av, ptr align 1 %i.au, i64 %i.ah, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ab ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ad ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr align 1 %i.aw, i64 %i.ah, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ab ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ad ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.az, ptr align 1 %i.ay, i64 %i.ah, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ab ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ad ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bb, ptr align 1 %i.ba, i64 %i.ah, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ab ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ad ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr align 1 %i.bc, i64 %i.ah, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ab ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ad ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bf, ptr align 1 %i.be, i64 %i.ah, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.ab ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ad ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bh, ptr align 1 %i.bg, i64 %i.ah, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ab ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ad ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7.not = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7.not, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !77

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.04589.epil.init = phi ptr [ %i.as, %.lr.ph.preheader ], [ %i.bj, %._crit_edge.loopexit.unr-lcssa ]
  %.25388.epil.init = phi ptr [ %.15291, %.lr.ph.preheader ], [ %i.bi, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod119 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod119)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.04589.epil = phi ptr [ %i.bl, %.lr.ph.epil ], [ %.04589.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.25388.epil = phi ptr [ %i.bk, %.lr.ph.epil ], [ %.25388.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %.04589.epil, ptr align 1 %.25388.epil, i64 %i.ah, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %.25388.epil, i64 %i.ab ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.04589.epil, i64 %i.ad
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !78

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.lr.ph93
  %.253.lcssa = phi ptr [ %.15291, %.lr.ph93 ], [ %i.bi, %._crit_edge.loopexit.unr-lcssa ], [ %i.bk, %.lr.ph.epil ] ; 2 uses
  %i.bm = add nuw i64 %.04692, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bm, %i.ak
  br i1 %exitcond.not, label %._crit_edge94, label %.lr.ph93, !llvm.loop !80

._crit_edge94:                                    ; preds = %._crit_edge, %.preheader
  %.152.lcssa = phi ptr [ %.05198, %.preheader ], [ %.253.lcssa, %._crit_edge ]
  %i.bn = load i64, ptr %i.c, align 8, !tbaa !13
  %i.bo = sub i64 %.05697, %i.bn                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %.not = icmp eq i64 %i.bo, 0
  br i1 %.not, label %.thread76.thread, label %.lr.ph100

.thread76.thread:                                 ; preds = %._crit_edge94, %bb.g, %.thread
  %i.bp = call ptr @H5FL_seq_free(ptr noundef nonnull @H5_size_t_seq_free_list, ptr noundef nonnull %i.p) #8 ; 0 uses
  %i.bq = call ptr @H5FL_seq_free(ptr noundef nonnull @H5_hsize_t_seq_free_list, ptr noundef nonnull %i.u) #8 ; 0 uses
  br label %.thread84

.thread84:                                        ; preds = %.thread76.thread114, %bb.c, %bb.e, %bb.a, %.thread76.thread
  %.3 = phi i32 [ 0, %.thread76.thread ], [ -1, %.thread76.thread114 ], [ 0, %bb.a ], [ -1, %bb.e ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.3
}

declare i32 @H5T_convert(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5CX_get_data_transform(ptr noundef) local_unnamed_addr #2

declare i32 @H5Z_xform_eval(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5S_select_iter_release(ptr noundef) local_unnamed_addr #2

declare ptr @H5FL_reg_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5D__scatgath_write(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.H5D_io_info_t, align 8      ; 8 uses
  %3 = alloca %struct.H5D_dset_io_info_t, align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 7 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = load i8, ptr @H5D_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = xor i1 %i.l, true
  %i.n = select i1 %i.j, i1 true, i1 %i.m
  br i1 %i.n, label %bb.b, label %.thread260, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !21   ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %.thread260, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20   ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 316
  %i.w = load i8, ptr %i.v, align 4, !tbaa !34, !range !10, !noundef !11
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !37   ; 3 uses
  %.not147 = icmp eq ptr %i.z, null
  br i1 %.not147, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !38
  %i.ab = icmp eq i32 %i.aa, 2
  br i1 %i.ab, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !54
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !76
  %i.ag = icmp eq i64 %i.ad, %i.af
  br i1 %i.ag, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !40
  %.not148 = icmp eq i32 %i.ai, 2
  br i1 %.not148, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !49
  %.not149 = icmp eq i32 %i.ak, 0
  br i1 %.not149, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.am = load i64, ptr %i.al, align 8, !tbaa !50
  %.not150 = icmp ugt i64 %i.r, %i.am
  br i1 %.not150, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.k, %bb.j, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.0118.shrunk = phi i1 [ false, %bb.k ], [ true, %bb.j ], [ true, %bb.h ], [ true, %bb.g ], [ true, %bb.f ], [ true, %bb.e ], [ false, %bb.d ], [ false, %bb.c ] ; 2 uses
  %i.an = tail call noalias ptr @H5FL_reg_malloc(ptr noundef nonnull @H5_H5S_sel_iter_t_reg_free_list) #8 ; 6 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.thread
  %i.ap = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !13
  %i.aq = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !13
  %i.ar = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5D__scatgath_write, i32 noundef 677, i64 noundef %i.ap, i64 noundef %i.aq, ptr noundef nonnull @.str.5) #8 ; 0 uses
  br label %.thread260

bb.m:                                             ; preds = %.thread
  %i.as = tail call noalias ptr @H5FL_reg_malloc(ptr noundef nonnull @H5_H5S_sel_iter_t_reg_free_list) #8 ; 5 uses
  %i.at = icmp eq ptr %i.as, null                 ; 2 uses
  br i1 %i.at, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.au = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !13
  %i.av = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !13
  %i.aw = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5D__scatgath_write, i32 noundef 679, i64 noundef %i.au, i64 noundef %i.av, ptr noundef nonnull @.str.6) #8 ; 0 uses
  br label %.split257.thread

bb.o:                                             ; preds = %bb.m
  %i.ax = tail call noalias ptr @H5FL_reg_malloc(ptr noundef nonnull @H5_H5S_sel_iter_t_reg_free_list) #8 ; 7 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.p, label %bb.q
end_hunk_0
