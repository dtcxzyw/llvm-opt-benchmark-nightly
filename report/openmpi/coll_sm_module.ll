inline.NumInlined: 26
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@mca_coll_sm_comm_query:bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_coll_base_framework, i64 76), align 4, !tbaa !48
  %i.ai = tail call zeroext i1 @opal_output_check_verbosity(i32 noundef 10, i32 noundef %i.ah) #10
  br i1 %i.ai, label %opal_obj_new.exit.sink.split, label %opal_obj_new.exit

opal_obj_new.exit.sink.split:                     ; preds = %.loopexit, %bb.f, %bb.d
  %.str.4.sink = phi ptr [ @.str.3, %bb.f ], [ @.str.2, %bb.d ], [ @.str.4, %.loopexit ]
  %.0.ph = phi ptr [ null, %bb.f ], [ null, %bb.d ], [ %i.o, %.loopexit ]
  %i.aj = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_coll_base_framework, i64 76), align 4, !tbaa !48
  %i.ak = tail call ptr @ompi_comm_print_cid(ptr noundef nonnull %0) #10
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !96
  tail call void (i32, ptr, ...) @opal_output(i32 noundef %i.aj, ptr noundef nonnull %.str.4.sink, ptr noundef %i.ak, ptr noundef %i.am) #10
  br label %opal_obj_new.exit

opal_obj_new.exit:                                ; preds = %opal_obj_new.exit.sink.split, %bb.i, %.loopexit, %bb.f, %bb.d
  %.0 = phi ptr [ %i.o, %.loopexit ], [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.i ], [ %.0.ph, %opal_obj_new.exit.sink.split ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare zeroext i1 @ompi_group_have_remote_peers(ptr noundef) local_unnamed_addr #2

declare ptr @ompi_comm_print_cid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @sm_module_enable(ptr nofree readnone captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !101
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_coll_base_framework, i64 76), align 4, !tbaa !48
  %i.j = tail call zeroext i1 @opal_output_check_verbosity(i32 noundef 10, i32 noundef %i.i) #10
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_coll_base_framework, i64 76), align 4, !tbaa !48
  %i.l = tail call ptr @ompi_comm_print_cid(ptr noundef nonnull %1) #10
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !96
  tail call void (i32, ptr, ...) @opal_output(i32 noundef %i.k, ptr noundef nonnull @.str.10, ptr noundef %i.l, ptr noundef %i.n) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.0 = phi i32 [ -1, %bb.d ], [ -1, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

declare i32 @mca_coll_sm_allreduce_intra(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @mca_coll_sm_barrier_intra(ptr noundef, ptr noundef) #2

declare i32 @mca_coll_sm_bcast_intra(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare i32 @mca_coll_sm_reduce_intra(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define range(i32 -3, 1) i32 @ompi_coll_sm_lazy_enable(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %2 = alloca %struct.opal_shmem_ds_t, align 8    ; 4 uses
  %i.b = getelementptr i8, ptr %1, i64 220        ; 2 uses
  %.val220 = load i32, ptr %i.b, align 4, !tbaa !102 ; 3 uses
  %i.c = getelementptr i8, ptr %1, i64 264        ; 4 uses
  %.val = load ptr, ptr %i.c, align 8, !tbaa !75  ; 2 uses
  %i.d = getelementptr i8, ptr %.val, i64 16
  %.val.val = load i32, ptr %i.d, align 8, !tbaa !76 ; 18 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !8, !range !28, !noundef !29
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.bc, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.e, align 8, !tbaa !8
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_sm_component, i64 292), align 4, !tbaa !103 ; 2 uses
  %i.i = sext i32 %i.h to i64                     ; 3 uses
  %i.j = mul nsw i64 %i.i, 48
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #11 ; 10 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_coll_base_framework, i64 76), align 4, !tbaa !48
  %i.n = tail call zeroext i1 @opal_output_check_verbosity(i32 noundef 10, i32 noundef %i.m) #10
  br i1 %i.n, label %bb.d, label %bb.bc

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_coll_base_framework, i64 76), align 4, !tbaa !48
  %i.p = tail call ptr @ompi_comm_print_cid(ptr noundef nonnull %1) #10
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !96
  tail call void (i32, ptr, ...) @opal_output(i32 noundef %i.o, ptr noundef nonnull @.str.5, ptr noundef %i.p, ptr noundef %i.r) #10
  br label %bb.bc

bb.e:                                             ; preds = %bb.b
  %i.s = shl nsw i64 %i.i, 4
  %i.t = add nsw i64 %i.s, 72
  %i.u = sext i32 %.val.val to i64                ; 3 uses
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_sm_component, i64 300), align 4, !tbaa !104 ; 7 uses
  %i.w = sext i32 %i.v to i64                     ; 7 uses
  %i.x = shl nsw i64 %i.w, 3
  %i.y = add nsw i64 %i.x, 32
  %i.z = mul i64 %i.y, %i.u
  %i.aa = add i64 %i.t, %i.z
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.aa) #11 ; 20 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !19
  %i.ad = icmp eq ptr %i.ab, null
  br i1 %i.ad, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.k) #10
  %i.ae = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_coll_base_framework, i64 76), align 4, !tbaa !48
  %i.af = tail call zeroext i1 @opal_output_check_verbosity(i32 noundef 10, i32 noundef %i.ae) #10
  br i1 %i.af, label %bb.g, label %bb.bc

bb.g:                                             ; preds = %bb.f
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_coll_base_framework, i64 76), align 4, !tbaa !48
  %i.ah = tail call ptr @ompi_comm_print_cid(ptr noundef nonnull %1) #10
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !96
  tail call void (i32, ptr, ...) @opal_output(i32 noundef %i.ag, ptr noundef nonnull @.str.6, ptr noundef %i.ah, ptr noundef %i.aj) #10
  br label %bb.bc

bb.h:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  store i32 0, ptr %i.ak, align 8, !tbaa !105
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 72 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 3 uses
  store ptr %i.al, ptr %i.am, align 8, !tbaa !106
  %i.an = getelementptr inbounds [16 x i8], ptr %i.al, i64 %i.i ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 56 ; 6 uses
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !107
  %i.ap = getelementptr inbounds [32 x i8], ptr %i.an, i64 %i.u
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !108
  %i.ar = icmp sgt i32 %.val.val, 1               ; 2 uses
  br i1 %i.ar, label %.lr.ph.preheader, label %.preheader229

.lr.ph.preheader:                                 ; preds = %bb.h
  %wide.trip.count = zext nneg i32 %.val.val to i64
  %i.as = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %i.as, 3                    ; 3 uses
  %i.at = add nsw i32 %.val.val, -2
  %i.au = icmp ult i32 %i.at, 3
  br i1 %i.au, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.as, -4
  br label %.lr.ph

.preheader229:                                    ; preds = %bb.h
  %i.av = icmp eq i32 %.val.val, 1
  br i1 %i.av, label %.lr.ph235, label %._crit_edge236

.lr.ph235.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph235, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph235.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.lr.ph235.loopexit.unr-lcssa ]
  %lcmp.mod309 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod309)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.aw = getelementptr [32 x i8], ptr %i.an, i64 %indvars.iv.epil ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 -8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !108
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.w
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !108
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph235, label %.lr.ph.epil, !llvm.loop !111

.lr.ph235:                                        ; preds = %.lr.ph235.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader229
  %i.bb = add nsw i32 %.val.val, -1
  %i.bc = icmp sgt i32 %i.v, 0
  %wide.trip.count264 = zext nneg i32 %.val.val to i64
  %wide.trip.count259 = zext i32 %i.v to i64      ; 2 uses
  %xtraiter310 = and i64 %wide.trip.count259, 1
  %i.bd = icmp eq i32 %i.v, 1
  %unroll_iter314 = and i64 %wide.trip.count259, 2147483646
  %lcmp.mod312.not = icmp eq i64 %xtraiter310, 0
  %lcmp.mod313 = trunc i32 %i.v to i1
  br label %bb.i

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.be = getelementptr [32 x i8], ptr %i.an, i64 %indvars.iv ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 -8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !108
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.w
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !108
  %i.bj = getelementptr [32 x i8], ptr %i.an, i64 %indvars.iv ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !108
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.w
  %i.bn = getelementptr i8, ptr %i.bj, i64 56
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !108
  %i.bo = getelementptr [32 x i8], ptr %i.an, i64 %indvars.iv ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 56
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !108
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.w
  %i.bs = getelementptr i8, ptr %i.bo, i64 88
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !108
  %i.bt = getelementptr [32 x i8], ptr %i.an, i64 %indvars.iv ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 88
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !108
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.w
  %i.bx = getelementptr i8, ptr %i.bt, i64 120
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !108
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph235.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !113

bb.i:                                             ; preds = %.lr.ph235, %._crit_edge
  %indvars.iv261 = phi i64 [ 0, %.lr.ph235 ], [ %indvars.iv.next262, %._crit_edge ] ; 9 uses
  %3 = trunc i64 %indvars.iv261 to i32
  %4 = add i32 %3, -1
  %5 = sdiv i32 %4, %i.v                          ; 2 uses
  %i.by = mul nsw i64 %indvars.iv261, %i.w        ; 3 uses
  %i.bz = add nsw i64 %i.by, 1                    ; 2 uses
  %.not218 = icmp slt i64 %i.bz, %i.u
  br i1 %.not218, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ca = trunc i64 %i.by to i32
  %i.cb = add i32 %i.v, %i.ca
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.cb, i32 %i.bb)
  %i.cc = trunc nsw i64 %i.by to i32
  %i.cd = sub i32 %spec.select, %i.cc
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.0206 = phi i64 [ %i.bz, %bb.j ], [ -1, %bb.i ] ; 3 uses
  %.0205 = phi i32 [ %i.cd, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %i.ce = load ptr, ptr %i.ao, align 8, !tbaa !107 ; 2 uses
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %i.ce, i64 %indvars.iv261 ; 3 uses
  %i.cg = trunc nuw nsw i64 %indvars.iv261 to i32
  store i32 %i.cg, ptr %i.cf, align 8, !tbaa !114
  %i.ch = icmp eq i64 %indvars.iv261, 0
  %6 = icmp eq i32 %5, 0
  %or.cond = and i1 %i.ch, %6
  %7 = sext i32 %5 to i64
  %i.ci = getelementptr inbounds [32 x i8], ptr %i.ce, i64 %7
  %.sink = select i1 %or.cond, ptr null, ptr %i.ci
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %.sink, ptr %i.cj, align 8, !tbaa !115
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store i32 %.0205, ptr %i.ck, align 8, !tbaa !116
  br i1 %i.bc, label %.lr.ph233.preheader, label %._crit_edge

.lr.ph233.preheader:                              ; preds = %bb.k
  %i.cl = sext i32 %.0205 to i64                  ; 3 uses
  br i1 %i.bd, label %.lr.ph233.epil.preheader, label %.lr.ph233

.lr.ph233:                                        ; preds = %.lr.ph233.preheader, %.lr.ph233
  %indvars.iv256 = phi i64 [ %indvars.iv.next257.1, %.lr.ph233 ], [ 0, %.lr.ph233.preheader ] ; 5 uses
  %niter315 = phi i64 [ %niter315.next.1, %.lr.ph233 ], [ 0, %.lr.ph233.preheader ]
  %i.cm = icmp slt i64 %indvars.iv256, %i.cl
  %.pre = load ptr, ptr %i.ao, align 8, !tbaa !107 ; 2 uses
  %i.cn = getelementptr [32 x i8], ptr %.pre, i64 %indvars.iv256
  %i.co = getelementptr [32 x i8], ptr %i.cn, i64 %.0206
  %i.cp = select i1 %i.cm, ptr %i.co, ptr null
  %i.cq = getelementptr inbounds nuw [32 x i8], ptr %.pre, i64 %indvars.iv261
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !108
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv256
  store ptr %i.cp, ptr %i.ct, align 8, !tbaa !117
  %indvars.iv.next257 = or disjoint i64 %indvars.iv256, 1 ; 3 uses
  %i.cu = icmp slt i64 %indvars.iv.next257, %i.cl
  %.pre.1 = load ptr, ptr %i.ao, align 8, !tbaa !107 ; 2 uses
  %i.cv = getelementptr [32 x i8], ptr %.pre.1, i64 %indvars.iv.next257
  %i.cw = getelementptr [32 x i8], ptr %i.cv, i64 %.0206
  %i.cx = select i1 %i.cu, ptr %i.cw, ptr null
  %i.cy = getelementptr inbounds nuw [32 x i8], ptr %.pre.1, i64 %indvars.iv261
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !108
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv.next257
  store ptr %i.cx, ptr %i.db, align 8, !tbaa !117
  %indvars.iv.next257.1 = add nuw nsw i64 %indvars.iv256, 2 ; 2 uses
  %niter315.next.1 = add i64 %niter315, 2         ; 2 uses
  %niter315.ncmp.1 = icmp eq i64 %niter315.next.1, %unroll_iter314
  br i1 %niter315.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph233, !llvm.loop !118

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph233
  br i1 %lcmp.mod312.not, label %._crit_edge, label %.lr.ph233.epil.preheader

.lr.ph233.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph233.preheader
  %indvars.iv256.epil.init = phi i64 [ 0, %.lr.ph233.preheader ], [ %indvars.iv.next257.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod313)
  %i.dc = icmp slt i64 %indvars.iv256.epil.init, %i.cl
  %.pre.epil = load ptr, ptr %i.ao, align 8, !tbaa !107 ; 2 uses
  %i.dd = getelementptr [32 x i8], ptr %.pre.epil, i64 %indvars.iv256.epil.init
  %i.de = getelementptr [32 x i8], ptr %i.dd, i64 %.0206
  %i.df = select i1 %i.dc, ptr %i.de, ptr null
  %i.dg = getelementptr inbounds nuw [32 x i8], ptr %.pre.epil, i64 %indvars.iv261
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !108
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv256.epil.init
  store ptr %i.df, ptr %i.dj, align 8, !tbaa !117
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph233.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.k
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1 ; 2 uses
  %exitcond265.not = icmp eq i64 %indvars.iv.next262, %wide.trip.count264
  br i1 %exitcond265.not, label %._crit_edge236, label %bb.i, !llvm.loop !119

._crit_edge236:                                   ; preds = %._crit_edge, %.preheader229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.dk = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_sm_component, i64 288), align 8, !tbaa !120
  %i.dl = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_sm_component, i64 296), align 8, !tbaa !121
  %i.dm = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_sm_component, i64 284), align 4, !tbaa !122 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !123
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !124 ; 2 uses
  %i.dq = ptrtoint ptr %i.dp to i64               ; 4 uses
  %i.dr = trunc i64 %i.dq to i1
  br i1 %i.dr, label %bb.l, label %ompi_group_peer_lookup.exit.i, !prof !30

bb.l:                                             ; preds = %._crit_edge236
  %i.ds = lshr i64 %i.dq, 1
  %i.dt = and i64 %i.ds, 32767
  %i.du = and i64 %i.dq, -65536
  %.sroa.0.0.insert.insert.i.i.i.i.i = or disjoint i64 %i.dt, %i.du
  %i.dv = tail call ptr @ompi_proc_for_name(i64 %.sroa.0.0.insert.insert.i.i.i.i.i) #10 ; 5 uses
  %i.dw = load ptr, ptr %i.dn, align 8, !tbaa !123
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = cmpxchg volatile ptr %i.dw, i64 %i.dq, i64 %i.dx acquire monotonic, align 8
  %i.dz = extractvalue { i64, i1 } %i.dy, 1
  br i1 %i.dz, label %bb.m, label %ompi_group_peer_lookup.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 4 uses
  %i.eb = load i8, ptr @opal_uses_threads, align 1, !tbaa !27, !range !28, !noundef !29
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.n, label %bb.o, !prof !30

bb.n:                                             ; preds = %bb.m
  %i.ed = atomicrmw volatile add ptr %i.ea, i32 1 monotonic, align 4 ; 0 uses
  br label %ompi_group_peer_lookup.exit.i

bb.o:                                             ; preds = %bb.m
  %i.ee = load volatile i32, ptr %i.ea, align 4, !tbaa !31
  %i.ef = add nsw i32 %i.ee, 1
  store volatile i32 %i.ef, ptr %i.ea, align 4, !tbaa !31
  %i.eg = load volatile i32, ptr %i.ea, align 4, !tbaa !31 ; 0 uses
  br label %ompi_group_peer_lookup.exit.i

ompi_group_peer_lookup.exit.i:                    ; preds = %bb.o, %bb.n, %bb.l, %._crit_edge236
  %.0.i.i.i.i = phi ptr [ %i.dp, %._crit_edge236 ], [ %i.dv, %bb.o ], [ %i.dv, %bb.n ], [ %i.dv, %bb.l ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 40 ; 2 uses
  br i1 %i.ar, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %ompi_group_peer_lookup.exit.i
  %wide.trip.count.i = zext nneg i32 %.val.val to i64
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %ompi_group_peer_lookup.exit63.i, %ompi_group_peer_lookup.exit.i
  %.054.lcssa.i = phi ptr [ %i.eh, %ompi_group_peer_lookup.exit.i ], [ %spec.select.i, %ompi_group_peer_lookup.exit63.i ]
  %i.ei = tail call ptr @ompi_comm_print_cid(ptr noundef nonnull %1) #10
  %i.ej = tail call ptr @ompi_pmix_print_name(ptr noundef %.054.lcssa.i) #10
  %i.ek = call i32 (ptr, ptr, ...) @opal_asprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.11, ptr noundef %i.ei, ptr noundef %i.ej) #10 ; 0 uses
  %i.el = load ptr, ptr %i.a, align 8, !tbaa !126 ; 2 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %bb.t, label %bb.v

.lr.ph.i:                                         ; preds = %ompi_group_peer_lookup.exit63.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %ompi_group_peer_lookup.exit63.i ] ; 3 uses
  %.0543.i = phi ptr [ %i.eh, %.lr.ph.preheader.i ], [ %spec.select.i, %ompi_group_peer_lookup.exit63.i ] ; 2 uses
  %i.en = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 32 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !123
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.i
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !124 ; 2 uses
  %i.es = ptrtoint ptr %i.er to i64               ; 4 uses
  %i.et = trunc i64 %i.es to i1
  br i1 %i.et, label %bb.p, label %ompi_group_peer_lookup.exit63.i, !prof !30

bb.p:                                             ; preds = %.lr.ph.i
  %i.eu = lshr i64 %i.es, 1
  %i.ev = and i64 %i.eu, 32767
  %i.ew = and i64 %i.es, -65536
  %.sroa.0.0.insert.insert.i.i.i.i62.i = or disjoint i64 %i.ev, %i.ew
  %i.ex = tail call ptr @ompi_proc_for_name(i64 %.sroa.0.0.insert.insert.i.i.i.i62.i) #10 ; 5 uses
  %i.ey = load ptr, ptr %i.eo, align 8, !tbaa !123
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv.i
  %i.fa = ptrtoint ptr %i.ex to i64
  %i.fb = cmpxchg volatile ptr %i.ez, i64 %i.es, i64 %i.fa acquire monotonic, align 8
  %i.fc = extractvalue { i64, i1 } %i.fb, 1
  br i1 %i.fc, label %bb.q, label %ompi_group_peer_lookup.exit63.i

bb.q:                                             ; preds = %bb.p
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 4 uses
  %i.fe = load i8, ptr @opal_uses_threads, align 1, !tbaa !27, !range !28, !noundef !29
  %i.ff = trunc nuw i8 %i.fe to i1
  br i1 %i.ff, label %bb.r, label %bb.s, !prof !30

bb.r:                                             ; preds = %bb.q
  %i.fg = atomicrmw volatile add ptr %i.fd, i32 1 monotonic, align 4 ; 0 uses
  br label %ompi_group_peer_lookup.exit63.i

bb.s:                                             ; preds = %bb.q
  %i.fh = load volatile i32, ptr %i.fd, align 4, !tbaa !31
  %i.fi = add nsw i32 %i.fh, 1
  store volatile i32 %i.fi, ptr %i.fd, align 4, !tbaa !31
  %i.fj = load volatile i32, ptr %i.fd, align 4, !tbaa !31 ; 0 uses
  br label %ompi_group_peer_lookup.exit63.i

ompi_group_peer_lookup.exit63.i:                  ; preds = %bb.s, %bb.r, %bb.p, %.lr.ph.i
  %.0.i.i.i61.i = phi ptr [ %i.er, %.lr.ph.i ], [ %i.ex, %bb.s ], [ %i.ex, %bb.r ], [ %i.ex, %bb.p ]
  %i.fk = getelementptr inbounds nuw i8, ptr %.0.i.i.i61.i, i64 40 ; 2 uses
  %i.fl = tail call i32 @ompi_rte_compare_name_fields(i8 noundef zeroext 15, ptr noundef nonnull %i.fk, ptr noundef %.0543.i) #10
  %i.fm = icmp slt i32 %i.fl, 0
  %spec.select.i = select i1 %i.fm, ptr %i.fk, ptr %.0543.i ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !127

bb.t:                                             ; preds = %._crit_edge.i
  %i.fn = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_coll_base_framework, i64 76), align 4, !tbaa !48
  %i.fo = call zeroext i1 @opal_output_check_verbosity(i32 noundef 10, i32 noundef %i.fn) #10
  br i1 %i.fo, label %bb.u, label %bb.ag

bb.u:                                             ; preds = %bb.t
  %i.fp = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_coll_base_framework, i64 76), align 4, !tbaa !48
  %i.fq = call ptr @ompi_comm_print_cid(ptr noundef nonnull %1) #10
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !96
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.fp, ptr noundef nonnull @.str.12, ptr noundef %i.fq, ptr noundef %i.fs) #10
  br label %bb.ag

bb.v:                                             ; preds = %._crit_edge.i
  %i.ft = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_process_info, i64 288), align 8, !tbaa !43
  %i.fu = call noalias ptr (i32, ...) @opal_os_path(i32 noundef 0, ptr noundef %i.ft, ptr noundef nonnull %i.el, ptr noundef null) #10 ; 5 uses
  %i.fv = load ptr, ptr %i.a, align 8, !tbaa !126
  call void @free(ptr noundef %i.fv) #10
  %i.fw = icmp eq ptr %i.fu, null
  br i1 %i.fw, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.fx = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_coll_base_framework, i64 76), align 4, !tbaa !48
  %i.fy = call zeroext i1 @opal_output_check_verbosity(i32 noundef 10, i32 noundef %i.fx) #10
  br i1 %i.fy, label %bb.x, label %bb.ag

bb.x:                                             ; preds = %bb.w
  %i.fz = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_coll_base_framework, i64 76), align 4, !tbaa !48
  %i.ga = call ptr @ompi_comm_print_cid(ptr noundef nonnull %1) #10
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !96
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.fz, ptr noundef nonnull @.str.13, ptr noundef %i.ga, ptr noundef %i.gc) #10
  br label %bb.ag

bb.y:                                             ; preds = %bb.v
  %i.gd = add i32 %i.dk, 4
  %i.ge = mul i32 %i.dm, %i.gd
  %i.gf = shl i32 %i.dm, 1
  %reass.add1.i = add i32 %i.gf, %i.dl
  %reass.mul2.i = mul i32 %.val.val, %i.h
  %reass.mul.i = mul i32 %reass.mul2.i, %reass.add1.i
  %i.gg = add i32 %reass.mul.i, %i.ge
  %i.gh = sext i32 %i.gg to i64                   ; 2 uses
  %i.gi = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_coll_base_framework, i64 76), align 4, !tbaa !48
  %i.gj = call zeroext i1 @opal_output_check_verbosity(i32 noundef 10, i32 noundef %i.gi) #10
  br i1 %i.gj, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gk = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_coll_base_framework, i64 76), align 4, !tbaa !48
  %i.gl = call ptr @ompi_comm_print_cid(ptr noundef nonnull %1) #10
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !96
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.gk, ptr noundef nonnull @.str.14, ptr noundef %i.gl, ptr noundef %i.gn, i64 noundef %i.gh, ptr noundef nonnull %i.fu) #10
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.val60.i = load i32, ptr %i.b, align 4, !tbaa !102
  %i.go = icmp eq i32 %.val60.i, 0
  br i1 %i.go, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.gp = call ptr @mca_common_sm_module_create_and_attach(i64 noundef %i.gh, ptr noundef nonnull %i.fu, i64 noundef 32, i64 noundef 8) #10 ; 3 uses
  store ptr %i.gp, ptr %i.ab, align 8, !tbaa !20
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %bb.ac, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ab
  %.val5.i = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.gr = getelementptr i8, ptr %.val5.i, i64 16
  %.val.val6.i = load i32, ptr %i.gr, align 8, !tbaa !76
  %i.gs = icmp sgt i32 %.val.val6.i, 1
  br i1 %i.gs, label %.lr.ph8.i, label %.loopexit228

bb.ac:                                            ; preds = %bb.ab
  %i.gt = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_coll_base_framework, i64 76), align 4, !tbaa !48
  %i.gu = call zeroext i1 @opal_output_check_verbosity(i32 noundef 10, i32 noundef %i.gt) #10
  br i1 %i.gu, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gv = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_coll_base_framework, i64 76), align 4, !tbaa !48
  %i.gw = call ptr @ompi_comm_print_cid(ptr noundef nonnull %1) #10
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !96
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.gv, ptr noundef nonnull @.str.15, ptr noundef %i.gw, ptr noundef %i.gy) #10
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  call void @free(ptr noundef nonnull %i.fu) #10
  br label %bb.ag

.lr.ph8.i:                                        ; preds = %.preheader.i, %.lr.ph8.i
  %.07.i = phi i32 [ %i.hd, %.lr.ph8.i ], [ 1, %.preheader.i ] ; 2 uses
  %i.gz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 96), align 8, !tbaa !128
  %i.ha = load ptr, ptr %i.ab, align 8, !tbaa !20
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 64
  %i.hc = call i32 %i.gz(ptr noundef nonnull %i.hb, i64 noundef 4136, ptr noundef nonnull @ompi_mpi_byte, i32 noundef %.07.i, i32 noundef -17, i32 noundef 4, ptr noundef nonnull %1) #10, !inline_history !130 ; 0 uses
  %i.hd = add nuw nsw i32 %.07.i, 1               ; 2 uses
  %.val.i = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.he = getelementptr i8, ptr %.val.i, i64 16
  %.val.val.i = load i32, ptr %i.he, align 8, !tbaa !76
  %i.hf = icmp slt i32 %i.hd, %.val.val.i
  br i1 %i.hf, label %.lr.ph8.i, label %.loopexit228.loopexit, !llvm.loop !131

bb.af:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.hg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 72), align 8, !tbaa !132
  %i.hh = call i32 %i.hg(ptr noundef nonnull %2, i64 noundef 4136, ptr noundef nonnull @ompi_mpi_byte, i32 noundef 0, i32 noundef -17, ptr noundef nonnull %1, ptr noundef null) #10, !inline_history !130 ; 0 uses
  %i.hi = call ptr @mca_common_sm_module_attach(ptr noundef nonnull %2, i64 noundef 32, i64 noundef 8) #10 ; 2 uses
  store ptr %i.hi, ptr %i.ab, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %.loopexit228

bb.ag:                                            ; preds = %bb.t, %bb.ae, %bb.u, %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @free(ptr noundef %i.ab) #10
  call void @free(ptr noundef %i.k) #10
  store ptr null, ptr %i.ac, align 8, !tbaa !19
  br label %bb.bc

.loopexit228.loopexit:                            ; preds = %.lr.ph8.i
  %.pre286 = load ptr, ptr %i.ab, align 8, !tbaa !20
  br label %.loopexit228

.loopexit228:                                     ; preds = %.loopexit228.loopexit, %bb.af, %.preheader.i
  %i.hj = phi ptr [ %.pre286, %.loopexit228.loopexit ], [ %i.hi, %bb.af ], [ %i.gp, %.preheader.i ]
  call void @free(ptr noundef nonnull %i.fu) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.hk = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_sm_component, i64 284), align 4, !tbaa !122 ; 5 uses
  %i.hl = sext i32 %i.hk to i64                   ; 6 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 56
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !133 ; 4 uses
  %i.ho = sext i32 %.val220 to i64                ; 2 uses
  %i.hp = shl nsw i64 %i.ho, 2
  %i.hq = mul i64 %i.hp, %i.hl
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  store ptr %i.hr, ptr %i.hs, align 8, !tbaa !138
  %i.ht = load ptr, ptr %i.ao, align 8, !tbaa !107
  %i.hu = getelementptr inbounds [32 x i8], ptr %i.ht, i64 %i.ho ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !115 ; 2 uses
  %.not217 = icmp eq ptr %i.hw, null
  br i1 %.not217, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.loopexit228
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !114
  %i.hy = sext i32 %i.hx to i64
  %i.hz = shl nsw i64 %i.hl, 2
  %i.ia = mul i64 %i.hz, %i.hy
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.ia
  br label %bb.ai

bb.ai:                                            ; preds = %.loopexit228, %bb.ah
  %.sink284 = phi ptr [ %i.ib, %bb.ah ], [ null, %.loopexit228 ]
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %.sink284, ptr %i.ic, align 8, !tbaa !139
  %i.id = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !116
  %i.if = icmp sgt i32 %i.ie, 0
  br i1 %i.if, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !108
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !117
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !114
  %i.ik = sext i32 %i.ij to i64
  %i.il = shl nsw i64 %i.hl, 2
  %i.im = mul i64 %i.il, %i.ik
  %i.in = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.im
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %.sink285 = phi ptr [ %i.in, %bb.aj ], [ null, %bb.ai ]
  %i.io = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %.sink285, ptr %i.io, align 8, !tbaa !140
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store i32 0, ptr %i.ip, align 8, !tbaa !141
  %i.iq = mul nsw i32 %i.hk, %.val.val            ; 2 uses
  %i.ir = shl nsw i32 %i.iq, 2
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr inbounds i8, ptr %i.hn, i64 %i.is ; 8 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store ptr %i.it, ptr %i.iu, align 8, !tbaa !142
  %i.iv = icmp eq i32 %.val220, 0                 ; 2 uses
  %.pre287 = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_sm_component, i64 288), align 8, !tbaa !120
  %.pre287.fr = freeze i32 %.pre287               ; 5 uses
  br i1 %i.iv, label %bb.al, label %..loopexit227_crit_edge

..loopexit227_crit_edge:                          ; preds = %bb.ak
  %.pre288 = mul nsw i32 %.pre287.fr, %i.hk
  %.pre289 = sext i32 %.pre288 to i64
  br label %.loopexit227

bb.al:                                            ; preds = %bb.ak
  store ptr %i.it, ptr %i.k, align 8, !tbaa !143
  %i.iw = mul nsw i32 %.pre287.fr, %i.hk
  %i.ix = sext i32 %i.iw to i64                   ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.ix, ptr %i.iy, align 8, !tbaa !145
  %i.iz = icmp sgt i32 %.pre287.fr, 0
  br i1 %i.iz, label %.lr.ph239.preheader, label %.loopexit227

.lr.ph239.preheader:                              ; preds = %bb.al
  %wide.trip.count269 = zext nneg i32 %.pre287.fr to i64 ; 2 uses
  %xtraiter316 = and i64 %wide.trip.count269, 3   ; 3 uses
  %i.ja = icmp ult i32 %.pre287.fr, 4
  br i1 %i.ja, label %.lr.ph239.epil.preheader, label %.lr.ph239.preheader.new

.lr.ph239.preheader.new:                          ; preds = %.lr.ph239.preheader
  %unroll_iter320 = and i64 %wide.trip.count269, 2147483644
  br label %.lr.ph239

.lr.ph239:                                        ; preds = %.lr.ph239, %.lr.ph239.preheader.new
  %indvars.iv266 = phi i64 [ 0, %.lr.ph239.preheader.new ], [ %indvars.iv.next267.3, %.lr.ph239 ] ; 5 uses
  %niter321 = phi i64 [ 0, %.lr.ph239.preheader.new ], [ %niter321.next.3, %.lr.ph239 ]
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %indvars.iv266 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  store volatile i32 1, ptr %i.jc, align 4, !tbaa !146
  store volatile i32 0, ptr %i.jb, align 4, !tbaa !148
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %indvars.iv266 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 12
  store volatile i32 1, ptr %i.jf, align 4, !tbaa !146
  store volatile i32 0, ptr %i.je, align 4, !tbaa !148
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %indvars.iv266 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 20
  store volatile i32 1, ptr %i.ji, align 4, !tbaa !146
  store volatile i32 0, ptr %i.jh, align 4, !tbaa !148
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %indvars.iv266 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 24
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 28
  store volatile i32 1, ptr %i.jl, align 4, !tbaa !146
  store volatile i32 0, ptr %i.jk, align 4, !tbaa !148
  %indvars.iv.next267.3 = add nuw nsw i64 %indvars.iv266, 4 ; 2 uses
  %niter321.next.3 = add i64 %niter321, 4         ; 2 uses
  %niter321.ncmp.3 = icmp eq i64 %niter321.next.3, %unroll_iter320
  br i1 %niter321.ncmp.3, label %.loopexit227.loopexit.unr-lcssa, label %.lr.ph239, !llvm.loop !149

.loopexit227.loopexit.unr-lcssa:                  ; preds = %.lr.ph239
  %lcmp.mod318.not = icmp eq i64 %xtraiter316, 0
  br i1 %lcmp.mod318.not, label %.loopexit227, label %.lr.ph239.epil.preheader

.lr.ph239.epil.preheader:                         ; preds = %.loopexit227.loopexit.unr-lcssa, %.lr.ph239.preheader
  %indvars.iv266.epil.init = phi i64 [ 0, %.lr.ph239.preheader ], [ %indvars.iv.next267.3, %.loopexit227.loopexit.unr-lcssa ]
  %lcmp.mod319 = icmp ne i64 %xtraiter316, 0
  call void @llvm.assume(i1 %lcmp.mod319)
  br label %.lr.ph239.epil

.lr.ph239.epil:                                   ; preds = %.lr.ph239.epil, %.lr.ph239.epil.preheader
  %indvars.iv266.epil = phi i64 [ %indvars.iv266.epil.init, %.lr.ph239.epil.preheader ], [ %indvars.iv.next267.epil, %.lr.ph239.epil ] ; 2 uses
  %epil.iter317 = phi i64 [ 0, %.lr.ph239.epil.preheader ], [ %epil.iter317.next, %.lr.ph239.epil ]
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %indvars.iv266.epil ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 4
  store volatile i32 1, ptr %i.jn, align 4, !tbaa !146
  store volatile i32 0, ptr %i.jm, align 4, !tbaa !148
  %indvars.iv.next267.epil = add nuw nsw i64 %indvars.iv266.epil, 1
  %epil.iter317.next = add i64 %epil.iter317, 1   ; 2 uses
  %epil.iter317.cmp.not = icmp eq i64 %epil.iter317.next, %xtraiter316
  br i1 %epil.iter317.cmp.not, label %.loopexit227, label %.lr.ph239.epil, !llvm.loop !150

.loopexit227:                                     ; preds = %.loopexit227.loopexit.unr-lcssa, %.lr.ph239.epil, %..loopexit227_crit_edge, %bb.al
  %.pre-phi290 = phi i64 [ %.pre289, %..loopexit227_crit_edge ], [ %i.ix, %bb.al ], [ %i.ix, %.lr.ph239.epil ], [ %i.ix, %.loopexit227.loopexit.unr-lcssa ]
  %.0208 = phi i32 [ 0, %..loopexit227_crit_edge ], [ 1, %bb.al ], [ 1, %.lr.ph239.epil ], [ 1, %.loopexit227.loopexit.unr-lcssa ] ; 2 uses
  %i.jo = getelementptr inbounds i8, ptr %i.it, i64 %.pre-phi290 ; 3 uses
  %i.jp = sext i32 %i.iq to i64                   ; 4 uses
  %i.jq = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_sm_component, i64 292), align 4, !tbaa !103 ; 4 uses
  %i.jr = icmp sgt i32 %i.jq, 0
  br i1 %i.jr, label %.lr.ph243, label %._crit_edge244

.lr.ph243:                                        ; preds = %.loopexit227
  %i.js = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_sm_component, i64 296), align 8, !tbaa !121 ; 2 uses
  %i.jt = mul nsw i32 %i.js, %.val.val
  %i.ju = sext i32 %i.jt to i64
  %i.jv = add nsw i64 %i.ju, %i.jp                ; 3 uses
  %i.jw = load ptr, ptr %i.am, align 8, !tbaa !106 ; 3 uses
  %i.jx = mul nsw i32 %i.hk, %.val220
  %i.jy = sext i32 %i.jx to i64                   ; 6 uses
  %i.jz = sext i32 %i.js to i64                   ; 3 uses
  %i.ka = zext nneg i32 %.0208 to i64             ; 2 uses
  %wide.trip.count278 = zext nneg i32 %i.jq to i64 ; 2 uses
  %xtraiter322 = and i64 %wide.trip.count278, 1
  %i.kb = icmp eq i32 %i.jq, 1
  br i1 %i.kb, label %.epil.preheader, label %.lr.ph243.new

.lr.ph243.new:                                    ; preds = %.lr.ph243
  %unroll_iter327 = and i64 %wide.trip.count278, 2147483646
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.lr.ph243.new
  %indvars.iv273 = phi i64 [ %i.ka, %.lr.ph243.new ], [ %indvars.iv.next274.1, %bb.am ] ; 3 uses
  %indvars.iv271 = phi i64 [ 0, %.lr.ph243.new ], [ %indvars.iv.next272.1, %bb.am ] ; 4 uses
  %niter328 = phi i64 [ 0, %.lr.ph243.new ], [ %niter328.next.1, %bb.am ]
  %i.kc = mul nsw i64 %i.jv, %indvars.iv271
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.kc ; 3 uses
  %i.ke = getelementptr inbounds nuw [16 x i8], ptr %i.jw, i64 %indvars.iv271 ; 2 uses
  store ptr %i.kd, ptr %i.ke, align 8, !tbaa !151
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.jp ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  store ptr %i.kf, ptr %i.kg, align 8, !tbaa !153
  %i.kh = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv273 ; 4 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  store i64 %i.hl, ptr %i.ki, align 8, !tbaa !145
  %i.kj = getelementptr inbounds i8, ptr %i.kd, i64 %i.jy
  store ptr %i.kj, ptr %i.kh, align 8, !tbaa !143
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kh, i64 24
  store i64 %i.jz, ptr %i.kl, align 8, !tbaa !145
  %i.km = getelementptr inbounds i8, ptr %i.kf, i64 %i.jy
  store ptr %i.km, ptr %i.kk, align 8, !tbaa !143
  %indvars.iv.next272 = or disjoint i64 %indvars.iv271, 1 ; 2 uses
  %i.kn = mul nsw i64 %i.jv, %indvars.iv.next272
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.kn ; 3 uses
  %i.kp = getelementptr inbounds nuw [16 x i8], ptr %i.jw, i64 %indvars.iv.next272 ; 2 uses
  store ptr %i.ko, ptr %i.kp, align 8, !tbaa !151
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.jp ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  store ptr %i.kq, ptr %i.kr, align 8, !tbaa !153
  %i.ks = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv273 ; 4 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 32
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 40
  store i64 %i.hl, ptr %i.ku, align 8, !tbaa !145
  %i.kv = getelementptr inbounds i8, ptr %i.ko, i64 %i.jy
  store ptr %i.kv, ptr %i.kt, align 8, !tbaa !143
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ks, i64 48
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ks, i64 56
  store i64 %i.jz, ptr %i.kx, align 8, !tbaa !145
  %i.ky = getelementptr inbounds i8, ptr %i.kq, i64 %i.jy
  store ptr %i.ky, ptr %i.kw, align 8, !tbaa !143
  %indvars.iv.next274.1 = add nuw nsw i64 %indvars.iv273, 4 ; 3 uses
  %indvars.iv.next272.1 = add nuw nsw i64 %indvars.iv271, 2 ; 2 uses
  %niter328.next.1 = add i64 %niter328, 2         ; 2 uses
  %niter328.ncmp.1 = icmp eq i64 %niter328.next.1, %unroll_iter327
  br i1 %niter328.ncmp.1, label %._crit_edge244.loopexit.unr-lcssa, label %bb.am, !llvm.loop !154

._crit_edge244.loopexit.unr-lcssa:                ; preds = %bb.am
  %lcmp.mod324.not = icmp eq i64 %xtraiter322, 0
  br i1 %lcmp.mod324.not, label %._crit_edge244.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge244.loopexit.unr-lcssa, %.lr.ph243
  %indvars.iv273.epil.init = phi i64 [ %i.ka, %.lr.ph243 ], [ %indvars.iv.next274.1, %._crit_edge244.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv271.epil.init = phi i64 [ 0, %.lr.ph243 ], [ %indvars.iv.next272.1, %._crit_edge244.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod326 = trunc i32 %i.jq to i1
  call void @llvm.assume(i1 %lcmp.mod326)
  %i.kz = mul nsw i64 %i.jv, %indvars.iv271.epil.init
  %i.la = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.kz ; 3 uses
  %i.lb = getelementptr inbounds nuw [16 x i8], ptr %i.jw, i64 %indvars.iv271.epil.init ; 2 uses
  store ptr %i.la, ptr %i.lb, align 8, !tbaa !151
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 %i.jp ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  store ptr %i.lc, ptr %i.ld, align 8, !tbaa !153
  %i.le = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv273.epil.init ; 4 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  store i64 %i.hl, ptr %i.lf, align 8, !tbaa !145
  %i.lg = getelementptr inbounds i8, ptr %i.la, i64 %i.jy
  store ptr %i.lg, ptr %i.le, align 8, !tbaa !143
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %i.li = getelementptr inbounds nuw i8, ptr %i.le, i64 24
  store i64 %i.jz, ptr %i.li, align 8, !tbaa !145
  %i.lj = getelementptr inbounds i8, ptr %i.lc, i64 %i.jy
  store ptr %i.lj, ptr %i.lh, align 8, !tbaa !143
  %indvars.iv.next274.epil = add nuw nsw i64 %indvars.iv273.epil.init, 2
  br label %._crit_edge244.loopexit

._crit_edge244.loopexit:                          ; preds = %._crit_edge244.loopexit.unr-lcssa, %.epil.preheader
  %indvars.iv.next274.lcssa = phi i64 [ %indvars.iv.next274.1, %._crit_edge244.loopexit.unr-lcssa ], [ %indvars.iv.next274.epil, %.epil.preheader ]
  %i.lk = trunc nuw i64 %indvars.iv.next274.lcssa to i32
  br label %._crit_edge244

._crit_edge244:                                   ; preds = %._crit_edge244.loopexit, %.loopexit227
  %.1209.lcssa = phi i32 [ %.0208, %.loopexit227 ], [ %i.lk, %._crit_edge244.loopexit ]
  %i.ll = zext nneg i32 %.1209.lcssa to i64
  %i.lm = call i32 @opal_hwloc_base_memory_set(ptr noundef nonnull %i.k, i64 noundef %i.ll) #10 ; 0 uses
  call void @free(ptr noundef %i.k) #10
  %i.ln = load ptr, ptr %i.hs, align 8, !tbaa !138
  %i.lo = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_sm_component, i64 284), align 4, !tbaa !122
  %i.lp = shl nsw i32 %i.lo, 2
  %i.lq = sext i32 %i.lp to i64
  call void @llvm.memset.p0.i64(ptr align 4 %i.ln, i8 0, i64 %i.lq, i1 false)
  %i.lr = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_sm_component, i64 292), align 4, !tbaa !103
  %i.ls = icmp sgt i32 %i.lr, 0
  br i1 %i.ls, label %.lr.ph247, label %._crit_edge248

.lr.ph247:                                        ; preds = %._crit_edge244, %.lr.ph247
  %indvars.iv280 = phi i64 [ %indvars.iv.next281, %.lr.ph247 ], [ 0, %._crit_edge244 ] ; 2 uses
  %i.lt = load ptr, ptr %i.am, align 8, !tbaa !106
  %i.lu = getelementptr inbounds nuw [16 x i8], ptr %i.lt, i64 %indvars.iv280
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !151
  %i.lw = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_sm_component, i64 284), align 4, !tbaa !122
  %i.lx = sext i32 %i.lw to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.lv, i8 0, i64 %i.lx, i1 false)
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 1 ; 2 uses
  %i.ly = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_sm_component, i64 292), align 4, !tbaa !103
  %i.lz = sext i32 %i.ly to i64
  %i.ma = icmp slt i64 %indvars.iv.next281, %i.lz
  br i1 %i.ma, label %.lr.ph247, label %._crit_edge248, !llvm.loop !155

._crit_edge248:                                   ; preds = %.lr.ph247, %._crit_edge244
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !97 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 176
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mc, i64 184
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !101
  %i.mh = load <2 x ptr>, ptr %i.md, align 8, !tbaa !38
  store <2 x ptr> %i.mh, ptr %i.me, align 8, !tbaa !38
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mg, i64 8 ; 4 uses
  %i.mj = load i8, ptr @opal_uses_threads, align 1, !tbaa !27, !range !28, !noundef !29
  %i.mk = trunc nuw i8 %i.mj to i1
  br i1 %i.mk, label %bb.an, label %bb.ao, !prof !30

bb.an:                                            ; preds = %._crit_edge248
  %i.ml = atomicrmw volatile add ptr %i.mi, i32 1 monotonic, align 4 ; 0 uses
  br label %opal_thread_add_fetch_32.exit

bb.ao:                                            ; preds = %._crit_edge248
  %i.mm = load volatile i32, ptr %i.mi, align 4, !tbaa !31
  %i.mn = add nsw i32 %i.mm, 1
  store volatile i32 %i.mn, ptr %i.mi, align 4, !tbaa !31
  %i.mo = load volatile i32, ptr %i.mi, align 4, !tbaa !31 ; 0 uses
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.an, %bb.ao
  %i.mp = load ptr, ptr %i.ab, align 8, !tbaa !20
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 40
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !156
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
  %i.mt = atomicrmw volatile add ptr %i.ms, i32 1 monotonic, align 4 ; 0 uses
  %i.mu = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_coll_base_framework, i64 76), align 4, !tbaa !48
  %i.mv = call zeroext i1 @opal_output_check_verbosity(i32 noundef 10, i32 noundef %i.mu) #10
  br i1 %i.mv, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %opal_thread_add_fetch_32.exit
  %i.mw = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_coll_base_framework, i64 76), align 4, !tbaa !48
  %i.mx = call ptr @ompi_comm_print_cid(ptr noundef nonnull %1) #10
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !96
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.mw, ptr noundef nonnull @.str.7, ptr noundef %i.mx, ptr noundef %i.mz) #10
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %opal_thread_add_fetch_32.exit
  %i.na = load ptr, ptr %i.ab, align 8, !tbaa !20 ; 3 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 40
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !156
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 4 ; 2 uses
  %i.ne = load volatile i32, ptr %i.nd, align 4, !tbaa !157
  %i.nf = icmp eq i32 %.val.val, %i.ne
  br i1 %i.nf, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.aq, %bb.ax
  %i.ng = phi ptr [ %i.nx, %bb.ax ], [ %i.nd, %bb.aq ] ; 5 uses
  %i.nh = phi ptr [ %i.nu, %bb.ax ], [ %i.na, %bb.aq ] ; 5 uses
  br label %bb.aw

bb.ar:                                            ; preds = %bb.aw
  %i.ni = load volatile i32, ptr %i.ng, align 4, !tbaa !157
  %i.nj = icmp eq i32 %.val.val, %i.ni
  br i1 %i.nj, label %.loopexit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.nk = load volatile i32, ptr %i.ng, align 4, !tbaa !157
  %i.nl = icmp eq i32 %.val.val, %i.nk
  br i1 %i.nl, label %.loopexit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.nm = load volatile i32, ptr %i.ng, align 4, !tbaa !157
  %i.nn = icmp eq i32 %.val.val, %i.nm
  br i1 %i.nn, label %.loopexit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.no = load volatile i32, ptr %i.ng, align 4, !tbaa !157
  %i.np = icmp eq i32 %.val.val, %i.no
  br i1 %i.np, label %.loopexit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.nq = add nuw nsw i32 %.0249, 5               ; 2 uses
  %exitcond283.not.4 = icmp eq i32 %i.nq, 100000
  br i1 %exitcond283.not.4, label %bb.ax, label %bb.aw, !llvm.loop !159

bb.aw:                                            ; preds = %bb.av, %.preheader
  %.0249 = phi i32 [ 0, %.preheader ], [ %i.nq, %bb.av ]
  %i.nr = load volatile i32, ptr %i.ng, align 4, !tbaa !157
  %i.ns = icmp eq i32 %.val.val, %i.nr
  br i1 %i.ns, label %.loopexit, label %bb.ar

bb.ax:                                            ; preds = %bb.av
  %i.nt = call i32 @opal_progress() #10           ; 0 uses
  %i.nu = load ptr, ptr %i.ab, align 8, !tbaa !20 ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 40
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !156
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 4 ; 2 uses
  %i.ny = load volatile i32, ptr %i.nx, align 4, !tbaa !157
  %i.nz = icmp eq i32 %.val.val, %i.ny
  br i1 %i.nz, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %bb.ax, %bb.aw, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.aq
  %i.oa = phi ptr [ %i.nh, %bb.aw ], [ %i.na, %bb.aq ], [ %i.nh, %bb.au ], [ %i.nh, %bb.at ], [ %i.nh, %bb.as ], [ %i.nh, %bb.ar ], [ %i.nu, %bb.ax ]
  br i1 %i.iv, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %.loopexit
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 96
  %i.oc = call i32 @unlink(ptr noundef nonnull %i.ob) #10 ; 0 uses
  %i.od = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_coll_base_framework, i64 76), align 4, !tbaa !48
  %i.oe = call zeroext i1 @opal_output_check_verbosity(i32 noundef 10, i32 noundef %i.od) #10
  br i1 %i.oe, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.of = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_coll_base_framework, i64 76), align 4, !tbaa !48
  %i.og = call ptr @ompi_comm_print_cid(ptr noundef nonnull %1) #10
  %i.oh = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !96
  %i.oj = load ptr, ptr %i.ab, align 8, !tbaa !20
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 96
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.of, ptr noundef nonnull @.str.8, ptr noundef %i.og, ptr noundef %i.oi, ptr noundef nonnull %i.ok) #10
  br label %bb.ba

bb.ba:                                            ; preds = %.loopexit, %bb.az, %bb.ay
  %i.ol = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_coll_base_framework, i64 76), align 4, !tbaa !48
  %i.om = call zeroext i1 @opal_output_check_verbosity(i32 noundef 10, i32 noundef %i.ol) #10
  br i1 %i.om, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.on = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_coll_base_framework, i64 76), align 4, !tbaa !48
  %i.oo = call ptr @ompi_comm_print_cid(ptr noundef nonnull %1) #10
  %i.op = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !96
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.on, ptr noundef nonnull @.str.9, ptr noundef %i.oo, ptr noundef %i.oq) #10
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb, %bb.f, %bb.g, %bb.c, %bb.d, %bb.a, %bb.ag
  %.0201 = phi i32 [ -3, %bb.f ], [ 0, %bb.a ], [ -2, %bb.c ], [ -2, %bb.ag ], [ -2, %bb.d ], [ -3, %bb.g ], [ 0, %bb.bb ], [ 0, %bb.ba ]
  ret i32 %.0201
end_hunk_0
