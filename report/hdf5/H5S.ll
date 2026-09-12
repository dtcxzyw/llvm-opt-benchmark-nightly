Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5S?download=true
inline.NumInlined: 8
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@H5S_set_extent_simple:bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !16
  %i.ap = mul i64 %i.ao, %i.al
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !16
  %i.at = mul i64 %i.as, %i.ap
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !16
  %i.ax = mul i64 %i.aw, %i.at
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !16
  %i.bb = mul i64 %i.ba, %i.ax
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !16
  %i.bf = mul i64 %i.be, %i.bb
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !16
  %i.bj = mul i64 %i.bi, %i.bf
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !16
  %i.bn = mul i64 %i.bm, %i.bj                    ; 3 uses
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.critedge.loopexit.unr-lcssa, label %.lr.ph69

.critedge.loopexit.unr-lcssa:                     ; preds = %.lr.ph69
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge, label %.lr.ph69.epil.preheader

.lr.ph69.epil.preheader:                          ; preds = %.critedge.loopexit.unr-lcssa, %.lr.ph69.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph69.preheader ], [ %indvars.iv.next.7, %.critedge.loopexit.unr-lcssa ]
  %.05967.epil.init = phi i64 [ 1, %.lr.ph69.preheader ], [ %i.bn, %.critedge.loopexit.unr-lcssa ]
  %lcmp.mod95 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod95)
  br label %.lr.ph69.epil

.lr.ph69.epil:                                    ; preds = %.lr.ph69.epil, %.lr.ph69.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph69.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph69.epil ] ; 2 uses
  %.05967.epil = phi i64 [ %.05967.epil.init, %.lr.ph69.epil.preheader ], [ %i.bq, %.lr.ph69.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph69.epil.preheader ], [ %epil.iter.next, %.lr.ph69.epil ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !16
  %i.bq = mul i64 %i.bp, %.05967.epil             ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge, label %.lr.ph69.epil, !llvm.loop !77

.critedge:                                        ; preds = %.critedge.loopexit.unr-lcssa, %.lr.ph69.epil, %.lr.ph, %bb.m
  %.0.lcssa = phi i64 [ 1, %bb.m ], [ 1, %.lr.ph ], [ %i.bn, %.critedge.loopexit.unr-lcssa ], [ %i.bq, %.lr.ph69.epil ]
  store i64 %.0.lcssa, ptr %i.aa, align 8, !tbaa !28
  %i.br = tail call noalias ptr @H5FL_arr_malloc(ptr noundef nonnull @H5_hsize_t_arr_free_list, i64 noundef %i.ac) #10 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !47
  %.not57 = icmp eq ptr %3, null
  br i1 %.not57, label %.preheader, label %bb.n

.preheader:                                       ; preds = %.critedge
  %.pre84 = load i32, ptr %i.z, align 8, !tbaa !27 ; 4 uses
  br i1 %.not, label %.critedge2, label %.lr.ph72

.lr.ph72:                                         ; preds = %.preheader
  %.not77 = icmp eq i32 %.pre84, 0
  br i1 %.not77, label %.critedge2, label %.lr.ph75.preheader

.lr.ph75.preheader:                               ; preds = %.lr.ph72
  %i.bt = zext i32 %.pre84 to i64
  %i.bu = shl nuw nsw i64 %i.bt, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.br, ptr nonnull align 8 %2, i64 %i.bu, i1 false), !tbaa !16
  br label %.critedge2

bb.n:                                             ; preds = %.critedge
  %i.bv = shl nuw nsw i64 %i.ac, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.br, ptr nonnull align 8 %3, i64 %i.bv, i1 false)
  %.pre83 = load i32, ptr %i.z, align 8, !tbaa !27
  br label %.critedge2

.critedge2:                                       ; preds = %.lr.ph75.preheader, %.preheader, %.lr.ph72, %bb.n, %bb.l
  %i.bw = phi i32 [ %.pre84, %.lr.ph75.preheader ], [ %.pre84, %.preheader ], [ 0, %.lr.ph72 ], [ %.pre83, %bb.n ], [ 0, %bb.l ]
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bz = zext i32 %i.bw to i64
  %i.ca = shl nuw nsw i64 %i.bz, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.by, i8 0, i64 %i.ca, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %i.cb, align 8, !tbaa !78
  %i.cc = load ptr, ptr %i.bx, align 8, !tbaa !39
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !41
  %i.ce = icmp eq i32 %i.cd, 3
  br i1 %i.ce, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.critedge2
  %i.cf = tail call i32 @H5S_select_all(ptr noundef nonnull %0, i1 noundef zeroext false) #10
  %i.cg = icmp slt i32 %i.cf, 0
  br i1 %i.cg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ch = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !16
  %i.ci = load i64, ptr @H5E_CANTDELETE_g, align 8, !tbaa !16
  %i.cj = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5S_set_extent_simple, i32 noundef 1310, i64 noundef %i.ch, i64 noundef %i.ci, ptr noundef nonnull @.str.22) #10 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.c, %bb.f, %bb.p, %bb.o, %.critedge2, %bb.d
  %.050 = phi i32 [ -1, %bb.c ], [ -1, %bb.f ], [ 0, %bb.d ], [ -1, %bb.p ], [ 0, %bb.o ], [ 0, %.critedge2 ]
  ret i32 %.050
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define range(i64 -1, -9223372036854775808) i64 @H5Screate_simple(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.H5CX_node_t, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %3, i8 0, i64 480, i1 false)
  %i.a = load i8, ptr @H5_libinit_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !12 ; 2 uses
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @H5_init_library() #10
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge96, !prof !35

._crit_edge96:                                    ; preds = %bb.b
  %.pre = load i8, ptr @H5_libterm_g, align 1, !range !12
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !16
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !16
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5Screate_simple, i32 noundef 1341, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.11) #10 ; 0 uses
  br label %.thread74

bb.d:                                             ; preds = %._crit_edge96, %bb.a
  %i.k = phi i8 [ %.pre, %._crit_edge96 ], [ %i.c, %bb.a ]
  %i.l = load i8, ptr @H5S_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = trunc nuw i8 %i.k to i1
  %i.o = select i1 %i.m, i1 true, i1 %i.n
  br i1 %i.o, label %bb.g, label %bb.e, !prof !14

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr @H5S_init_g, align 1, !tbaa !11
  %i.p = tail call i32 @H5S__init_package()
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g, !prof !36

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr @H5S_init_g, align 1, !tbaa !11
  %i.r = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !16
  %i.s = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !16
  %i.t = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5Screate_simple, i32 noundef 1341, i64 noundef %i.r, i64 noundef %i.s, ptr noundef nonnull @.str.4) #10 ; 0 uses
  br label %.thread74

bb.g:                                             ; preds = %bb.d, %bb.e
  %i.u = call i32 @H5CX_push(ptr noundef nonnull %3) #10
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %bb.i, !prof !35

bb.h:                                             ; preds = %bb.g
  %i.w = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !16
  %i.x = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !16
  %i.y = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5Screate_simple, i32 noundef 1341, i64 noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.12) #10 ; 0 uses
  br label %.thread74

bb.i:                                             ; preds = %bb.g
  %i.z = call i32 @H5E_clear_stack() #10          ; 0 uses
  %i.aa = icmp slt i32 %0, 0
  br i1 %i.aa, label %bb.j, label %bb.k, !prof !37

bb.j:                                             ; preds = %bb.i
  %i.ab = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !16
  %i.ac = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !16
  %i.ad = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5Screate_simple, i32 noundef 1345, i64 noundef %i.ab, i64 noundef %i.ac, ptr noundef nonnull @.str.38) #10 ; 0 uses
  br label %.thread83

bb.k:                                             ; preds = %bb.i
  %i.ae = icmp samesign ugt i32 %0, 32
  br i1 %i.ae, label %bb.l, label %bb.m, !prof !37

bb.l:                                             ; preds = %bb.k
  %i.af = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !16
  %i.ag = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !16
  %i.ah = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5Screate_simple, i32 noundef 1347, i64 noundef %i.af, i64 noundef %i.ag, ptr noundef nonnull @.str.39) #10 ; 0 uses
  br label %.thread83

bb.m:                                             ; preds = %bb.k
  %i.ai = icmp eq ptr %1, null
  %i.aj = icmp ne i32 %0, 0
  %or.cond = and i1 %i.aj, %i.ai
  br i1 %or.cond, label %bb.o, label %.preheader, !prof !37

.preheader:                                       ; preds = %bb.m
  %.not87 = icmp eq i32 %0, 0
  br i1 %.not87, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.not = icmp eq ptr %2, null
  %wide.trip.count94 = zext nneg i32 %0 to i64    ; 3 uses
  br i1 %.not, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %xtraiter = and i64 %wide.trip.count94, 3       ; 3 uses
  %i.ak = icmp ult i32 %0, 4
  br i1 %i.ak, label %.lr.ph.split.us.epil.preheader, label %.lr.ph.split.us.preheader.new

.lr.ph.split.us.preheader.new:                    ; preds = %.lr.ph.split.us.preheader
  %unroll_iter = and i64 %wide.trip.count94, 60
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %bb.n, %.lr.ph.split.us.preheader.new
  %indvars.iv91 = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %indvars.iv.next92.3, %bb.n ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %niter.next.3, %bb.n ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv91
  %i.am = load i64, ptr %i.al, align 8, !tbaa !16
  %i.an = icmp eq i64 %i.am, -1
  br i1 %i.an, label %.split.us, label %.lr.ph.split.us.1, !prof !37

.lr.ph.split.us.1:                                ; preds = %.lr.ph.split.us
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv91
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !16
  %i.ar = icmp eq i64 %i.aq, -1
  br i1 %i.ar, label %.split.us, label %.lr.ph.split.us.2, !prof !37

.lr.ph.split.us.2:                                ; preds = %.lr.ph.split.us.1
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv91
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !16
  %i.av = icmp eq i64 %i.au, -1
  br i1 %i.av, label %.split.us, label %.lr.ph.split.us.3, !prof !37

.lr.ph.split.us.3:                                ; preds = %.lr.ph.split.us.2
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv91
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !16
  %i.az = icmp eq i64 %i.ay, -1
  br i1 %i.az, label %.split.us, label %bb.n, !prof !37

bb.n:                                             ; preds = %.lr.ph.split.us.3
  %indvars.iv.next92.3 = add nuw nsw i64 %indvars.iv91, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split.us, !llvm.loop !79

bb.o:                                             ; preds = %bb.m
  %i.ba = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !16
  %i.bb = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !16
  %i.bc = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5Screate_simple, i32 noundef 1353, i64 noundef %i.ba, i64 noundef %i.bb, ptr noundef nonnull @.str.40) #10 ; 0 uses
  br label %.thread83

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.r
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.r ], [ 0, %.lr.ph ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !16 ; 2 uses
  %i.bf = icmp eq i64 %i.be, -1
  br i1 %i.bf, label %.split.us, label %bb.p, !prof !37

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us.3, %.lr.ph.split.us.2, %.lr.ph.split.us.1, %.lr.ph.split.us, %.lr.ph.split.us.epil
  %i.bg = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !16
  %i.bh = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !16
  %i.bi = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5Screate_simple, i32 noundef 1359, i64 noundef %i.bg, i64 noundef %i.bh, ptr noundef nonnull @.str.32) #10 ; 0 uses
  br label %.thread83

bb.p:                                             ; preds = %.lr.ph.split
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !16
  %i.bl = icmp ult i64 %i.bk, %i.be
  br i1 %i.bl, label %bb.q, label %bb.r, !prof !37

bb.q:                                             ; preds = %bb.p
  %i.bm = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !16
  %i.bn = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !16
  %i.bo = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5Screate_simple, i32 noundef 1361, i64 noundef %i.bm, i64 noundef %i.bn, ptr noundef nonnull @.str.41) #10 ; 0 uses
  br label %.thread83

bb.r:                                             ; preds = %bb.p
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count94
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !79

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.us.epil.preheader

.lr.ph.split.us.epil.preheader:                   ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us.preheader
  %indvars.iv91.epil.init = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next92.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod107 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod107)
  br label %.lr.ph.split.us.epil

.lr.ph.split.us.epil:                             ; preds = %bb.s, %.lr.ph.split.us.epil.preheader
  %indvars.iv91.epil = phi i64 [ %indvars.iv.next92.epil, %bb.s ], [ %indvars.iv91.epil.init, %.lr.ph.split.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.s ], [ 0, %.lr.ph.split.us.epil.preheader ]
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv91.epil
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !16
  %i.br = icmp eq i64 %i.bq, -1
  br i1 %i.br, label %.split.us, label %bb.s, !prof !37

bb.s:                                             ; preds = %.lr.ph.split.us.epil
  %indvars.iv.next92.epil = add nuw nsw i64 %indvars.iv91.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.split.us.epil, !llvm.loop !80

._crit_edge:                                      ; preds = %bb.r, %._crit_edge.loopexit.unr-lcssa, %bb.s, %.preheader
  %i.bs = call ptr @H5S_create_simple(i32 noundef %0, ptr noundef %1, ptr noundef %2) ; 3 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.t, label %bb.u, !prof !37

bb.t:                                             ; preds = %._crit_edge
  %i.bu = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !16
  %i.bv = load i64, ptr @H5E_CANTCREATE_g, align 8, !tbaa !16
  %i.bw = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5Screate_simple, i32 noundef 1366, i64 noundef %i.bu, i64 noundef %i.bv, ptr noundef nonnull @.str.42) #10 ; 0 uses
  br label %.thread83

bb.u:                                             ; preds = %._crit_edge
  %i.bx = call i64 @H5I_register(i32 noundef 4, ptr noundef nonnull %i.bs, i1 noundef zeroext true) #10 ; 2 uses
  %i.by = icmp slt i64 %i.bx, 0
  br i1 %i.by, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bz = load i64, ptr @H5E_ID_g, align 8, !tbaa !16
  %i.ca = load i64, ptr @H5E_CANTREGISTER_g, align 8, !tbaa !16
  %i.cb = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5Screate_simple, i32 noundef 1370, i64 noundef %i.bz, i64 noundef %i.ca, ptr noundef nonnull @.str.15) #10 ; 0 uses
  %i.cc = call i32 @H5S_close(ptr noundef nonnull %i.bs)
  %i.cd = icmp slt i32 %i.cc, 0
  br i1 %i.cd, label %bb.w, label %.thread79

bb.w:                                             ; preds = %bb.v
  %i.ce = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !16
  %i.cf = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !16
  %i.cg = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5Screate_simple, i32 noundef 1375, i64 noundef %i.ce, i64 noundef %i.cf, ptr noundef nonnull @.str.10) #10 ; 0 uses
  br label %.thread79

.thread79:                                        ; preds = %bb.v, %bb.w
  %i.ch = call i32 @H5CX_pop(i1 noundef zeroext true) #10 ; 0 uses
  br label %.thread74

.thread83:                                        ; preds = %bb.j, %bb.l, %bb.o, %.split.us, %bb.q, %bb.t
  %i.ci = call i32 @H5CX_pop(i1 noundef zeroext true) #10 ; 0 uses
  br label %.thread74

bb.x:                                             ; preds = %bb.u
  %i.cj = call i32 @H5CX_pop(i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.y

.thread74:                                        ; preds = %bb.f, %bb.h, %bb.c, %.thread83, %.thread79
  %i.ck = call i32 @H5E_dump_api_stack() #10      ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.thread74
  %.1416477 = phi i64 [ -1, %.thread74 ], [ %i.bx, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i64 %.1416477
}

; Function Attrs: nounwind uwtable
define ptr @H5S_create_simple(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5S_init_g, align 1, !tbaa !11
  %i.f = tail call i32 @H5S__init_package()
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5S_init_g, align 1, !tbaa !11, !range !12
  %.pre8 = load i8, ptr @H5_libterm_g, align 1, !range !12
  %.pre9 = trunc nuw i8 %.pre to i1
  %.pre10 = trunc nuw i8 %.pre8 to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @H5S_init_g, align 1, !tbaa !11
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !16
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !16
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5S_create_simple, i32 noundef 1395, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.4) #10 ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.pre-phi11 = phi i1 [ %.pre10, %._crit_edge ], [ %i.d, %bb.a ]
  %.pre-phi = phi i1 [ %.pre9, %._crit_edge ], [ %i.b, %bb.a ]
  %i.k = xor i1 %.pre-phi11, true
  %i.l = select i1 %.pre-phi, i1 true, i1 %i.k
  br i1 %i.l, label %bb.e, label %bb.i, !prof !14

bb.e:                                             ; preds = %bb.d
end_hunk_0
