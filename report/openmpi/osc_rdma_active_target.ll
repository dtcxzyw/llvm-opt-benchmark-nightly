Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/osc_rdma_active_target?download=true
inline.NumInlined: 156
inline.NumDeleted: 58
begin_hunk_0_@ompi_osc_rdma_post_atomic:bb.a
ompi_osc_rdma_selected_btl.exit.i.i.i:            ; preds = %.thread.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 248
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !144
  %i.di = call i32 %i.dh(ptr noundef %.0.i.i.i.i, ptr noundef %i.bz, ptr noundef %i.db, i64 noundef %i.bp, ptr noundef %i.dd, ptr noundef %i.ca, i64 noundef 0, i64 noundef range(i64 -2147483647, 2147483649) %i.bs, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @ompi_osc_rdma_atomic_complete, ptr noundef nonnull %i.cc, ptr noundef null) #14, !inline_history !138
  br label %ompi_osc_rdma_btl_atomic_cswap.exit.i.i

bb.z:                                             ; preds = %.thread.i.i
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %i.cw
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !115 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 88
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !145
  %i.dn = call i32 %i.dm(ptr noundef %i.dk, ptr noundef %i.bz, ptr noundef %i.db, i64 noundef %i.bp, ptr noundef %i.dd, ptr noundef %i.ca, i64 noundef 0, i64 noundef range(i64 -2147483647, 2147483649) %i.bs, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @ompi_osc_rdma_atomic_complete, ptr noundef nonnull %i.cc, ptr noundef null) #14, !inline_history !138
  br label %ompi_osc_rdma_btl_atomic_cswap.exit.i.i

ompi_osc_rdma_btl_atomic_cswap.exit.i.i:          ; preds = %bb.z, %ompi_osc_rdma_selected_btl.exit.i.i.i, %bb.y
  %.2.i.i = phi i32 [ %i.cz, %bb.y ], [ %i.di, %ompi_osc_rdma_selected_btl.exit.i.i.i ], [ %i.dn, %bb.z ] ; 3 uses
  %i.do = add i32 %.2.i.i, 3
  %i.dp = icmp ult i32 %i.do, 2
  br i1 %i.dp, label %bb.aa, label %bb.ab, !prof !35

bb.aa:                                            ; preds = %ompi_osc_rdma_btl_atomic_cswap.exit.i.i
  %i.dq = call i32 @opal_progress() #14           ; 0 uses
  br label %bb.x

bb.ab:                                            ; preds = %ompi_osc_rdma_btl_atomic_cswap.exit.i.i
  switch i32 %.2.i.i, label %bb.ad [
    i32 0, label %.preheader.i.i
    i32 1, label %bb.ac
  ], !prof !118

.preheader.i.i:                                   ; preds = %bb.ab
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cc, i64 80 ; 2 uses
  %i.ds = load volatile i8, ptr %i.dr, align 8, !tbaa !28, !range !33, !noundef !34
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %.loopexit.i.i, label %.lr.ph.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.du = load ptr, ptr %i.cv, align 8, !tbaa !104
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !69
  store i64 %i.dv, ptr %i.b, align 8, !tbaa !69
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.3.i.i = phi i32 [ 0, %bb.ac ], [ %.2.i.i, %bb.ab ] ; 2 uses
  %i.dw = load i8, ptr @opal_uses_threads, align 1, !tbaa !32, !range !33, !noundef !34
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %bb.ae, label %bb.af, !prof !35

bb.ae:                                            ; preds = %bb.ad
  %i.dy = atomicrmw volatile add ptr %i.cl, i32 -1 monotonic, align 4
  %i.dz = add i32 %i.dy, -1
  br label %opal_thread_add_fetch_32.exit41.i.i

bb.af:                                            ; preds = %bb.ad
  %i.ea = load volatile i32, ptr %i.cl, align 8, !tbaa !36
  %i.eb = add nsw i32 %i.ea, -1
  store volatile i32 %i.eb, ptr %i.cl, align 8, !tbaa !36
  %i.ec = load volatile i32, ptr %i.cl, align 8, !tbaa !36
  br label %opal_thread_add_fetch_32.exit41.i.i

opal_thread_add_fetch_32.exit41.i.i:              ; preds = %bb.af, %bb.ae
  %.0.i40.i.i = phi i32 [ %i.dz, %bb.ae ], [ %i.ec, %bb.af ]
  %i.ed = icmp eq i32 %.0.i40.i.i, 0
  br i1 %i.ed, label %bb.ag, label %.loopexit.i.i

bb.ag:                                            ; preds = %opal_thread_add_fetch_32.exit41.i.i
  %i.ee = load ptr, ptr %i.cc, align 8, !tbaa !97
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 48
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !119 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !100 ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.eh, null
  br i1 %.not6.i.i.i, label %opal_obj_run_destructors.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ag, %.lr.ph.i.i.i
  %i.ei = phi ptr [ %i.ek, %.lr.ph.i.i.i ], [ %i.eh, %bb.ag ]
  %.07.i.i.i = phi ptr [ %i.ej, %.lr.ph.i.i.i ], [ %i.eg, %bb.ag ]
  call void %i.ei(ptr noundef nonnull %i.cc) #14, !inline_history !139
  %i.ej = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 8 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !100 ; 2 uses
  %.not.i42.i.i = icmp eq ptr %i.ek, null
  br i1 %.not.i42.i.i, label %opal_obj_run_destructors.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1

opal_obj_run_destructors.exit.i.i:                ; preds = %.lr.ph.i.i.i, %bb.ag
  call void @free(ptr noundef nonnull %i.cc) #14
  br label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %i.el = call i32 @opal_progress() #14           ; 0 uses
  %i.em = load volatile i8, ptr %i.dr, align 8, !tbaa !28, !range !33, !noundef !34
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !140

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %opal_obj_run_destructors.exit.i.i, %opal_thread_add_fetch_32.exit41.i.i, %.preheader.i.i
  %.035.i.i = phi ptr [ null, %opal_obj_run_destructors.exit.i.i ], [ %i.cc, %opal_thread_add_fetch_32.exit41.i.i ], [ %i.cc, %.preheader.i.i ], [ %i.cc, %.lr.ph.i.i ] ; 4 uses
  %.4.i.i = phi i32 [ %.3.i.i, %opal_obj_run_destructors.exit.i.i ], [ %.3.i.i, %opal_thread_add_fetch_32.exit41.i.i ], [ 0, %.preheader.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.035.i.i, i64 8 ; 4 uses
  %i.ep = load i8, ptr @opal_uses_threads, align 1, !tbaa !32, !range !33, !noundef !34
  %i.eq = trunc nuw i8 %i.ep to i1
  br i1 %i.eq, label %bb.ah, label %bb.ai, !prof !35

bb.ah:                                            ; preds = %.loopexit.i.i
  %i.er = atomicrmw volatile add ptr %i.eo, i32 -1 monotonic, align 4
  %i.es = add i32 %i.er, -1
  br label %opal_thread_add_fetch_32.exit44.i.i

bb.ai:                                            ; preds = %.loopexit.i.i
  %i.et = load volatile i32, ptr %i.eo, align 4, !tbaa !36
  %i.eu = add nsw i32 %i.et, -1
  store volatile i32 %i.eu, ptr %i.eo, align 4, !tbaa !36
  %i.ev = load volatile i32, ptr %i.eo, align 4, !tbaa !36
  br label %opal_thread_add_fetch_32.exit44.i.i

opal_thread_add_fetch_32.exit44.i.i:              ; preds = %bb.ai, %bb.ah
  %.0.i43.i.i = phi i32 [ %i.es, %bb.ah ], [ %i.ev, %bb.ai ]
  %i.ew = icmp eq i32 %.0.i43.i.i, 0
  br i1 %i.ew, label %bb.aj, label %ompi_osc_rdma_btl_cswap.exit.i

bb.aj:                                            ; preds = %opal_thread_add_fetch_32.exit44.i.i
  %i.ex = load ptr, ptr %.035.i.i, align 8, !tbaa !97
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 48
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !119 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !100 ; 2 uses
  %.not6.i45.i.i = icmp eq ptr %i.fa, null
  br i1 %.not6.i45.i.i, label %opal_obj_run_destructors.exit49.i.i, label %.lr.ph.i46.i.i

.lr.ph.i46.i.i:                                   ; preds = %bb.aj, %.lr.ph.i46.i.i
  %i.fb = phi ptr [ %i.fd, %.lr.ph.i46.i.i ], [ %i.fa, %bb.aj ]
  %.07.i47.i.i = phi ptr [ %i.fc, %.lr.ph.i46.i.i ], [ %i.ez, %bb.aj ]
  call void %i.fb(ptr noundef nonnull %.035.i.i) #14, !inline_history !139
  %i.fc = getelementptr inbounds nuw i8, ptr %.07.i47.i.i, i64 8 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !100 ; 2 uses
  %.not.i48.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i48.i.i, label %opal_obj_run_destructors.exit49.i.i, label %.lr.ph.i46.i.i, !llvm.loop !1

opal_obj_run_destructors.exit49.i.i:              ; preds = %.lr.ph.i46.i.i, %bb.aj
  call void @free(ptr noundef nonnull %.035.i.i) #14
  br label %ompi_osc_rdma_btl_cswap.exit.i

ompi_osc_rdma_btl_cswap.exit.i:                   ; preds = %opal_obj_run_destructors.exit49.i.i, %opal_thread_add_fetch_32.exit44.i.i
  %.not27.i = icmp eq i32 %.4.i.i, 0
  br i1 %.not27.i, label %thread-pre-split.i, label %ompi_osc_rdma_post_peer.exit, !prof !143

thread-pre-split.i:                               ; preds = %ompi_osc_rdma_btl_cswap.exit.i
  %.pr.i = load i64, ptr %i.b, align 8, !tbaa !69
  %i.fe = icmp eq i64 %.pr.i, 0
  br i1 %i.fe, label %ompi_osc_rdma_post_peer.exit.thread, label %bb.al, !prof !143

bb.ak:                                            ; preds = %bb.q
  fence seq_cst
  %i.ff = cmpxchg volatile ptr %i.bq, i64 0, i64 %i.bs acquire monotonic, align 8
  %i.fg = extractvalue { i64, i1 } %i.ff, 1       ; 2 uses
  fence seq_cst
  %i.fh = xor i1 %i.fg, true
  %i.fi = zext i1 %i.fh to i64
  store i64 %i.fi, ptr %i.b, align 8, !tbaa !69
  br i1 %i.fg, label %ompi_osc_rdma_post_peer.exit.thread, label %bb.al, !prof !143

bb.al:                                            ; preds = %bb.ak, %thread-pre-split.i
  call fastcc void @ompi_osc_rdma_check_posts(ptr noundef nonnull %i.d)
  store i64 0, ptr %3, align 8, !tbaa !147
  store i64 100, ptr %i.an, align 8, !tbaa !148
  %i.fj = call i32 @nanosleep(ptr noundef nonnull %3, ptr noundef null) #14 ; 0 uses
  br label %bb.q

ompi_osc_rdma_post_peer.exit.thread:              ; preds = %thread-pre-split.i, %bb.ak, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fk = load ptr, ptr %i.g, align 64, !tbaa !68
  %i.fl = getelementptr i8, ptr %i.fk, i64 16
  %.val34 = load i32, ptr %i.fl, align 8, !tbaa !73 ; 2 uses
  %i.fm = sext i32 %.val34 to i64
  %i.fn = icmp slt i64 %indvars.iv.next, %i.fm
  br i1 %i.fn, label %bb.k, label %.loopexit, !llvm.loop !141

ompi_osc_rdma_post_peer.exit:                     ; preds = %bb.n, %ompi_osc_rdma_btl_cswap.exit.i
  %.0.i36 = phi i32 [ %.4.i.i, %ompi_osc_rdma_btl_cswap.exit.i ], [ %i.bh, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.pre48 = load ptr, ptr %i.g, align 64, !tbaa !68
  %.phi.trans.insert = getelementptr i8, ptr %.pre48, i64 16
  %.val.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !73
  br label %.loopexit

.loopexit:                                        ; preds = %ompi_osc_rdma_post_peer.exit.thread, %ompi_osc_rdma_post_peer.exit
  %.val = phi i32 [ %.val.pre, %ompi_osc_rdma_post_peer.exit ], [ %.val34, %ompi_osc_rdma_post_peer.exit.thread ] ; 2 uses
  %.1 = phi i32 [ %.0.i36, %ompi_osc_rdma_post_peer.exit ], [ 0, %ompi_osc_rdma_post_peer.exit.thread ] ; 2 uses
  %i.fo = icmp sgt i32 %.val, 0
  br i1 %i.fo, label %.lr.ph.preheader.i, label %ompi_osc_rdma_release_peers.exit

.lr.ph.preheader.i:                               ; preds = %.loopexit
  %wide.trip.count.i = zext nneg i32 %.val to i64
  %.pre13.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !32, !range !33
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ap, %.lr.ph.preheader.i
  %i.fp = phi i8 [ %.pre13.i, %.lr.ph.preheader.i ], [ %i.gh, %bb.ap ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.ap ] ; 2 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.i ; 4 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !74
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 4 uses
  %i.ft = trunc nuw i8 %i.fp to i1
  br i1 %i.ft, label %bb.am, label %bb.an, !prof !35

bb.am:                                            ; preds = %.lr.ph.i
  %i.fu = atomicrmw volatile add ptr %i.fs, i32 -1 monotonic, align 4
  %i.fv = add i32 %i.fu, -1
  br label %opal_thread_add_fetch_32.exit.i

bb.an:                                            ; preds = %.lr.ph.i
  %i.fw = load volatile i32, ptr %i.fs, align 4, !tbaa !36
  %i.fx = add nsw i32 %i.fw, -1
  store volatile i32 %i.fx, ptr %i.fs, align 4, !tbaa !36
  %i.fy = load volatile i32, ptr %i.fs, align 4, !tbaa !36
  br label %opal_thread_add_fetch_32.exit.i

opal_thread_add_fetch_32.exit.i:                  ; preds = %bb.an, %bb.am
  %.0.i.i = phi i32 [ %i.fv, %bb.am ], [ %i.fy, %bb.an ]
  %i.fz = icmp eq i32 %.0.i.i, 0
  br i1 %i.fz, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %opal_thread_add_fetch_32.exit.i
  %4 = load ptr, ptr %i.fq, align 8, !tbaa !74    ; 3 uses
  %i.ga = load ptr, ptr %4, align 8, !tbaa !97
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 48
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !119 ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !100 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.gd, null
  br i1 %.not6.i.i, label %opal_obj_run_destructors.exit.i, label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %bb.ao, %.lr.ph.i.i38
  %i.ge = phi ptr [ %i.gg, %.lr.ph.i.i38 ], [ %i.gd, %bb.ao ]
  %.07.i.i = phi ptr [ %i.gf, %.lr.ph.i.i38 ], [ %i.gc, %bb.ao ]
  call void %i.ge(ptr noundef nonnull %4) #14, !inline_history !2
  %i.gf = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !100 ; 2 uses
  %.not.i.i39 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i39, label %opal_obj_run_destructors.exit.loopexit.i, label %.lr.ph.i.i38, !llvm.loop !1

opal_obj_run_destructors.exit.loopexit.i:         ; preds = %.lr.ph.i.i38
  %.pre14.i = load ptr, ptr %i.fq, align 8, !tbaa !74
  br label %opal_obj_run_destructors.exit.i

opal_obj_run_destructors.exit.i:                  ; preds = %opal_obj_run_destructors.exit.loopexit.i, %bb.ao
  %5 = phi ptr [ %.pre14.i, %opal_obj_run_destructors.exit.loopexit.i ], [ %4, %bb.ao ]
  call void @free(ptr noundef %5) #14
  store ptr null, ptr %i.fq, align 8, !tbaa !74
  %.pre.i40 = load i8, ptr @opal_uses_threads, align 1, !tbaa !32, !range !33
  br label %bb.ap

bb.ap:                                            ; preds = %opal_obj_run_destructors.exit.i, %opal_thread_add_fetch_32.exit.i
  %i.gh = phi i8 [ %i.fp, %opal_thread_add_fetch_32.exit.i ], [ %.pre.i40, %opal_obj_run_destructors.exit.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %ompi_osc_rdma_release_peers.exit, label %.lr.ph.i, !llvm.loop !3

ompi_osc_rdma_release_peers.exit:                 ; preds = %bb.ap, %.preheader, %.loopexit
  %.160 = phi i32 [ 0, %.preheader ], [ %.1, %.loopexit ], [ %.1, %bb.ap ]
  call void @free(ptr noundef nonnull %i.af) #14
  br label %bb.aq

bb.aq:                                            ; preds = %bb.j, %bb.h, %bb.i, %bb.d, %bb.e, %bb.a, %ompi_osc_rdma_release_peers.exit
  %.027 = phi i32 [ %.160, %ompi_osc_rdma_release_peers.exit ], [ -102, %bb.a ], [ -102, %bb.d ], [ 0, %bb.h ], [ -102, %bb.e ], [ 0, %bb.i ], [ -2, %bb.j ]
  ret i32 %.027
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @ompi_osc_rdma_get_peers(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr i8, ptr %1, i64 16
  %.val = load i32, ptr %i.b, align 8, !tbaa !73  ; 6 uses
  %i.c = sext i32 %.val to i64                    ; 4 uses
  %i.d = tail call noalias ptr @calloc(i64 noundef %i.c, i64 noundef 4) #16 ; 6 uses
  %i.e = tail call noalias ptr @calloc(i64 noundef %i.c, i64 noundef 4) #16 ; 7 uses
  %i.f = tail call noalias ptr @calloc(i64 noundef %i.c, i64 noundef 8) #16 ; 8 uses
  %i.g = icmp eq ptr %i.d, null
  %i.h = icmp eq ptr %i.e, null
  %or.cond = or i1 %i.g, %i.h
  %i.i = icmp eq ptr %i.f, null
  %or.cond3 = or i1 %or.cond, %i.i
  br i1 %or.cond3, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.j = icmp sgt i32 %.val, 0                    ; 2 uses
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %.val to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %.val, 8
  br i1 %min.iters.check, label %.lr.ph.preheader70, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <4 x i32> %vec.ind, ptr %i.k, align 4, !tbaa !36
  store <4 x i32> %step.add, ptr %i.l, align 4, !tbaa !36
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !149

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader70

.lr.ph.preheader70:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.d) #14
  tail call void @free(ptr noundef %i.e) #14
  tail call void @free(ptr noundef %i.f) #14
  br label %bb.l

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !78
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 264
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !120
  %i.r = tail call i32 @ompi_group_translate_ranks(ptr noundef nonnull %1, i32 noundef %.val, ptr noundef nonnull %i.d, ptr noundef %i.q, ptr noundef nonnull %i.e) #14
  tail call void @free(ptr noundef nonnull %i.d) #14
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.d, label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader70, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader70 ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.t = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.t, ptr %i.s, align 4, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !150

bb.c:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.e) #14
  tail call void @free(ptr noundef nonnull %i.f) #14
  br label %bb.l

bb.d:                                             ; preds = %._crit_edge
  tail call void @qsort(ptr noundef nonnull %i.e, i64 noundef %i.c, i64 noundef 4, ptr noundef nonnull @compare_ranks) #14
  br i1 %i.j, label %.lr.ph59, label %.loopexit

.lr.ph59:                                         ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 928
  %wide.trip.count64 = zext nneg i32 %.val to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph59, %opal_thread_add_fetch_32.exit
  %indvars.iv61 = phi i64 [ 0, %.lr.ph59 ], [ %indvars.iv.next62, %opal_thread_add_fetch_32.exit ] ; 4 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv61
  %i.x = load i32, ptr %i.w, align 4, !tbaa !36   ; 3 uses
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !154  ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !tbaa !74
  %i.aa = call i32 @opal_hash_table_get_value_uint32(ptr noundef nonnull %i.v, i32 noundef %i.x, ptr noundef nonnull %i.a) #14 ; 0 uses
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %ompi_osc_module_get_peer.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ac = sext i32 %i.x to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !74
  br label %ompi_osc_module_get_peer.exit.i

ompi_osc_module_get_peer.exit.i:                  ; preds = %bb.g, %bb.f
  %.0.i.i = phi ptr [ %i.ab, %bb.f ], [ %i.ae, %bb.g ] ; 3 uses
  %.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i, label %ompi_osc_rdma_module_peer.exit, label %ompi_osc_rdma_module_peer.exit.thread

ompi_osc_rdma_module_peer.exit.thread:            ; preds = %ompi_osc_module_get_peer.exit.i
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv61
  store ptr %.0.i.i, ptr %i.af, align 8, !tbaa !74
  br label %bb.i

ompi_osc_rdma_module_peer.exit:                   ; preds = %ompi_osc_module_get_peer.exit.i
  %i.ag = call ptr @ompi_osc_rdma_peer_lookup(ptr noundef nonnull %0, i32 noundef %i.x) #14 ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv61
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !74
  %i.ai = icmp eq ptr %i.ag, null
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %ompi_osc_rdma_module_peer.exit
  call void @free(ptr noundef nonnull %i.f) #14
  br label %.loopexit

bb.i:                                             ; preds = %ompi_osc_rdma_module_peer.exit.thread, %ompi_osc_rdma_module_peer.exit
  %.0.i55 = phi ptr [ %.0.i.i, %ompi_osc_rdma_module_peer.exit.thread ], [ %i.ag, %ompi_osc_rdma_module_peer.exit ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i55, i64 8 ; 4 uses
  %i.ak = load i8, ptr @opal_uses_threads, align 1, !tbaa !32, !range !33, !noundef !34
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.j, label %bb.k, !prof !35

bb.j:                                             ; preds = %bb.i
  %i.am = atomicrmw volatile add ptr %i.aj, i32 1 monotonic, align 4 ; 0 uses
  br label %opal_thread_add_fetch_32.exit

bb.k:                                             ; preds = %bb.i
  %i.an = load volatile i32, ptr %i.aj, align 4, !tbaa !36
  %i.ao = add nsw i32 %i.an, 1
  store volatile i32 %i.ao, ptr %i.aj, align 4, !tbaa !36
  %i.ap = load volatile i32, ptr %i.aj, align 4, !tbaa !36 ; 0 uses
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.j, %bb.k
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count64
  br i1 %exitcond65.not, label %.loopexit, label %bb.e, !llvm.loop !151

.loopexit:                                        ; preds = %opal_thread_add_fetch_32.exit, %bb.d, %bb.h
  %.046 = phi ptr [ null, %bb.h ], [ %i.f, %bb.d ], [ %i.f, %opal_thread_add_fetch_32.exit ]
  call void @free(ptr noundef nonnull %i.e) #14
  br label %bb.l

bb.l:                                             ; preds = %.loopexit, %bb.c, %bb.b
  %.047 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %.046, %.loopexit ]
  ret ptr %.047
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define range(i32 -102, 1) i32 @ompi_osc_rdma_start_atomic(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 368 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !67
  %i.e = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %.val59 = load i32, ptr %i.e, align 8, !tbaa !73 ; 4 uses
  %i.f = load i8, ptr @opal_uses_threads, align 1, !tbaa !32, !range !33, !noundef !34
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.i = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.h) #14 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 628 ; 2 uses
  %i.k = load i8, ptr %i.j, align 4, !tbaa !121, !range !33, !noundef !34
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %ompi_osc_rdma_access_epoch_active.exit.thread, label %ompi_osc_rdma_access_epoch_active.exit

ompi_osc_rdma_access_epoch_active.exit:           ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.b, i64 840
  %.val.i = load i64, ptr %i.m, align 8, !tbaa !122
  %.not67 = icmp eq i64 %.val.i, 0
  br i1 %.not67, label %bb.d, label %ompi_osc_rdma_access_epoch_active.exit.thread

ompi_osc_rdma_access_epoch_active.exit.thread:    ; preds = %bb.c, %ompi_osc_rdma_access_epoch_active.exit
  %i.n = load i8, ptr @opal_uses_threads, align 1, !tbaa !32, !range !33, !noundef !34
end_hunk_0
