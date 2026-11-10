Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/bipartite_graph?download=true
inline.NumInlined: 66
inline.NumDeleted: 20
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@opal_bp_graph_solve_bipartite_assignment:bb.a
  br label %opal_pointer_array_get_item.exit.i101.i

opal_pointer_array_get_item.exit.i101.i:          ; preds = %bb.aq, %bb.ap, %.thread.i.i121.i, %.opal_pointer_array_get_item.exit_crit_edge.i99.i
  %.pre-phi.i102.i = phi i64 [ %.pre34.i100.i, %.opal_pointer_array_get_item.exit_crit_edge.i99.i ], [ %i.ga, %.thread.i.i121.i ], [ %i.gg, %bb.ap ], [ %i.gg, %bb.aq ] ; 2 uses
  %.0.i.i103.i = phi ptr [ null, %.opal_pointer_array_get_item.exit_crit_edge.i99.i ], [ %i.gc, %.thread.i.i121.i ], [ %i.gi, %bb.ap ], [ %i.gi, %bb.aq ]
  %i.gk = getelementptr inbounds nuw i8, ptr %.0.i.i103.i, i64 48
  %i.gl = load volatile ptr, ptr %i.gk, align 8, !tbaa !51 ; 3 uses
  %i.gm = load i32, ptr %i.u, align 8, !tbaa !38  ; 2 uses
  %i.gn = icmp sgt i32 %i.gm, %.0224.i
  br i1 %i.gn, label %opal_pointer_array_get_item.exit.split.i112.i, label %opal_pointer_array_get_item.exit.split.us.i104.i, !prof !39

opal_pointer_array_get_item.exit.split.us.i104.i: ; preds = %opal_pointer_array_get_item.exit.i101.i
  %.not21.us28.i105.i = icmp eq ptr %i.gl, inttoptr (i64 32 to ptr)
  br i1 %.not21.us28.i105.i, label %get_capacity.exit123.thread.i, label %.lr.ph.i106.i

.lr.ph.i106.i:                                    ; preds = %opal_pointer_array_get_item.exit.split.us.i104.i, %opal_pointer_array_get_item.exit26.us.i108.i
  %.pn.us29.i107.i = phi ptr [ %i.gs, %opal_pointer_array_get_item.exit26.us.i108.i ], [ %i.gl, %opal_pointer_array_get_item.exit.split.us.i104.i ] ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.pn.us29.i107.i, i64 84
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !59
  %i.gq = icmp eq i32 %i.gp, %.063225.i
  br i1 %i.gq, label %.split.us.i110.i, label %opal_pointer_array_get_item.exit26.us.i108.i

opal_pointer_array_get_item.exit26.us.i108.i:     ; preds = %.lr.ph.i106.i
  %i.gr = getelementptr inbounds nuw i8, ptr %.pn.us29.i107.i, i64 16
  %i.gs = load volatile ptr, ptr %i.gr, align 8, !tbaa !52 ; 2 uses
  %.not21.us.i109.i = icmp eq ptr %i.gs, inttoptr (i64 32 to ptr)
  br i1 %.not21.us.i109.i, label %get_capacity.exit123.thread.i, label %.lr.ph.i106.i, !llvm.loop !92

opal_pointer_array_get_item.exit.split.i112.i:    ; preds = %opal_pointer_array_get_item.exit.i101.i, %bb.av
  %i.gt = phi i32 [ %.pre.i118.i, %bb.av ], [ %i.gm, %opal_pointer_array_get_item.exit.i101.i ]
  %.pn.i113.i = phi ptr [ %i.hm, %bb.av ], [ %i.gl, %opal_pointer_array_get_item.exit.i101.i ] ; 4 uses
  %.not.i22.i114.i = icmp sgt i32 %i.gt, %.0224.i
  br i1 %.not.i22.i114.i, label %bb.ar, label %opal_pointer_array_get_item.exit26.i115.i, !prof !39

bb.ar:                                            ; preds = %opal_pointer_array_get_item.exit.split.i112.i
  %i.gu = load i8, ptr @opal_uses_threads, align 1, !tbaa !41, !range !42, !noundef !43
  %i.gv = trunc nuw i8 %i.gu to i1
  br i1 %i.gv, label %bb.as, label %.thread.i24.i119.i, !prof !44

.thread.i24.i119.i:                               ; preds = %bb.ar
  %i.gw = load ptr, ptr %i.v, align 8, !tbaa !45
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %.pre-phi.i102.i
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !24
  br label %opal_pointer_array_get_item.exit26.i115.i

bb.as:                                            ; preds = %bb.ar
  %i.gz = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.w) #12 ; 0 uses
  %.pre.i25.i120.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !41, !range !42
  %i.ha = trunc nuw i8 %.pre.i25.i120.i to i1
  %i.hb = load ptr, ptr %i.v, align 8, !tbaa !45
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %.pre-phi.i102.i
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !24 ; 2 uses
  br i1 %i.ha, label %bb.at, label %opal_pointer_array_get_item.exit26.i115.i, !prof !46

bb.at:                                            ; preds = %bb.as
  %i.he = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.w) #12 ; 0 uses
  br label %opal_pointer_array_get_item.exit26.i115.i

opal_pointer_array_get_item.exit26.i115.i:        ; preds = %bb.at, %bb.as, %.thread.i24.i119.i, %opal_pointer_array_get_item.exit.split.i112.i
  %.0.i23.i116.i = phi ptr [ null, %opal_pointer_array_get_item.exit.split.i112.i ], [ %i.hd, %bb.as ], [ %i.hd, %bb.at ], [ %i.gy, %.thread.i24.i119.i ]
  %i.hf = getelementptr inbounds nuw i8, ptr %.0.i23.i116.i, i64 32
  %.not21.i117.i = icmp eq ptr %.pn.i113.i, %i.hf
  br i1 %.not21.i117.i, label %get_capacity.exit123.thread.i, label %bb.au

bb.au:                                            ; preds = %opal_pointer_array_get_item.exit26.i115.i
  %i.hg = getelementptr inbounds nuw i8, ptr %.pn.i113.i, i64 84
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !59
  %i.hi = icmp eq i32 %i.hh, %.063225.i
  br i1 %i.hi, label %.split.us.i110.i, label %bb.av

.split.us.i110.i:                                 ; preds = %.lr.ph.i106.i, %bb.au
  %.us-phi.i111.i = phi ptr [ %.pn.i113.i, %bb.au ], [ %.pn.us29.i107.i, %.lr.ph.i106.i ]
  %i.hj = getelementptr inbounds nuw i8, ptr %.us-phi.i111.i, i64 96
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !61
  br label %get_capacity.exit123.thread.i

bb.av:                                            ; preds = %bb.au
  %i.hl = getelementptr inbounds nuw i8, ptr %.pn.i113.i, i64 16
  %i.hm = load volatile ptr, ptr %i.hl, align 8, !tbaa !52
  %.pre.i118.i = load i32, ptr %i.u, align 8, !tbaa !38
  br label %opal_pointer_array_get_item.exit.split.i112.i, !llvm.loop !93

get_capacity.exit123.thread.i:                    ; preds = %opal_pointer_array_get_item.exit26.us.i108.i, %opal_pointer_array_get_item.exit26.i115.i, %.split.us.i110.i, %opal_pointer_array_get_item.exit.split.us.i104.i, %.loopexit199.i
  %.015.i95.ph.pn.i = phi i32 [ -5, %.loopexit199.i ], [ 0, %opal_pointer_array_get_item.exit.split.us.i104.i ], [ %i.hk, %.split.us.i110.i ], [ 0, %opal_pointer_array_get_item.exit26.i115.i ], [ 0, %opal_pointer_array_get_item.exit26.us.i108.i ]
  %i.hn = add nsw i32 %.015.i95.ph.pn.i, %i.bv
  %i.ho = load i32, ptr %.pre, align 8, !tbaa !37 ; 2 uses
  %.not.i124.i = icmp slt i32 %.0224.i, %i.ho
  %.not21.i126.i = icmp slt i32 %.063225.i, %i.ho
  %or.cond194.i = and i1 %.not.i124.i, %.not21.i126.i
  br i1 %or.cond194.i, label %bb.aw, label %get_capacity.exit123.thread190.i

bb.aw:                                            ; preds = %get_capacity.exit123.thread.i
  %i.hp = load i32, ptr %i.u, align 8, !tbaa !38
  %.not.i.i128.i = icmp sgt i32 %i.hp, %.0224.i
  br i1 %.not.i.i128.i, label %bb.ax, label %.opal_pointer_array_get_item.exit_crit_edge.i129.i, !prof !39

.opal_pointer_array_get_item.exit_crit_edge.i129.i: ; preds = %bb.aw
  %.pre35.i130.i = zext nneg i32 %.0224.i to i64
  br label %opal_pointer_array_get_item.exit.i131.i

bb.ax:                                            ; preds = %bb.aw
  %i.hq = load i8, ptr @opal_uses_threads, align 1, !tbaa !41, !range !42, !noundef !43
  %i.hr = trunc nuw i8 %i.hq to i1
  br i1 %i.hr, label %bb.ay, label %.thread.i.i151.i, !prof !44

.thread.i.i151.i:                                 ; preds = %bb.ax
  %i.hs = load ptr, ptr %i.v, align 8, !tbaa !45
  %i.ht = zext nneg i32 %.0224.i to i64           ; 2 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.ht
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !24
  br label %opal_pointer_array_get_item.exit.i131.i

bb.ay:                                            ; preds = %bb.ax
  %i.hw = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.w) #12 ; 0 uses
  %.pre.i.i152.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !41, !range !42
  %i.hx = trunc nuw i8 %.pre.i.i152.i to i1
  %i.hy = load ptr, ptr %i.v, align 8, !tbaa !45
  %i.hz = zext nneg i32 %.0224.i to i64           ; 3 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %i.hz
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !24 ; 2 uses
  br i1 %i.hx, label %bb.az, label %opal_pointer_array_get_item.exit.i131.i, !prof !46

bb.az:                                            ; preds = %bb.ay
  %i.ic = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.w) #12 ; 0 uses
  br label %opal_pointer_array_get_item.exit.i131.i

opal_pointer_array_get_item.exit.i131.i:          ; preds = %bb.az, %bb.ay, %.thread.i.i151.i, %.opal_pointer_array_get_item.exit_crit_edge.i129.i
  %.pre-phi.i132.i = phi i64 [ %.pre35.i130.i, %.opal_pointer_array_get_item.exit_crit_edge.i129.i ], [ %i.ht, %.thread.i.i151.i ], [ %i.hz, %bb.ay ], [ %i.hz, %bb.az ] ; 2 uses
  %.0.i.i133.i = phi ptr [ null, %.opal_pointer_array_get_item.exit_crit_edge.i129.i ], [ %i.hv, %.thread.i.i151.i ], [ %i.ib, %bb.ay ], [ %i.ib, %bb.az ]
  %i.id = getelementptr inbounds nuw i8, ptr %.0.i.i133.i, i64 48
  %i.ie = load volatile ptr, ptr %i.id, align 8, !tbaa !51 ; 3 uses
  %i.if = load i32, ptr %i.u, align 8, !tbaa !38  ; 2 uses
  %i.ig = icmp sgt i32 %i.if, %.0224.i
  br i1 %i.ig, label %opal_pointer_array_get_item.exit.split.i142.i, label %opal_pointer_array_get_item.exit.split.us.i134.i, !prof !39

opal_pointer_array_get_item.exit.split.us.i134.i: ; preds = %opal_pointer_array_get_item.exit.i131.i
  %.not22.us29.i135.i = icmp eq ptr %i.ie, inttoptr (i64 32 to ptr)
  br i1 %.not22.us29.i135.i, label %get_capacity.exit123.thread190.i, label %.lr.ph.i136.i

.lr.ph.i136.i:                                    ; preds = %opal_pointer_array_get_item.exit.split.us.i134.i, %opal_pointer_array_get_item.exit27.us.i138.i
  %.pn.us30.i137.i = phi ptr [ %i.il, %opal_pointer_array_get_item.exit27.us.i138.i ], [ %i.ie, %opal_pointer_array_get_item.exit.split.us.i134.i ] ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.pn.us30.i137.i, i64 84
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !59
  %i.ij = icmp eq i32 %i.ii, %.063225.i
  br i1 %i.ij, label %.loopexit.i, label %opal_pointer_array_get_item.exit27.us.i138.i

opal_pointer_array_get_item.exit27.us.i138.i:     ; preds = %.lr.ph.i136.i
  %i.ik = getelementptr inbounds nuw i8, ptr %.pn.us30.i137.i, i64 16
  %i.il = load volatile ptr, ptr %i.ik, align 8, !tbaa !52 ; 2 uses
  %.not22.us.i139.i = icmp eq ptr %i.il, inttoptr (i64 32 to ptr)
  br i1 %.not22.us.i139.i, label %get_capacity.exit123.thread190.i, label %.lr.ph.i136.i, !llvm.loop !95

opal_pointer_array_get_item.exit.split.i142.i:    ; preds = %opal_pointer_array_get_item.exit.i131.i, %bb.be
  %i.im = phi i32 [ %.pre.i148.i, %bb.be ], [ %i.if, %opal_pointer_array_get_item.exit.i131.i ]
  %.pn.i143.i = phi ptr [ %i.jd, %bb.be ], [ %i.ie, %opal_pointer_array_get_item.exit.i131.i ] ; 4 uses
  %.not.i23.i144.i = icmp sgt i32 %i.im, %.0224.i
  br i1 %.not.i23.i144.i, label %bb.ba, label %opal_pointer_array_get_item.exit27.i145.i, !prof !39

bb.ba:                                            ; preds = %opal_pointer_array_get_item.exit.split.i142.i
  %i.in = load i8, ptr @opal_uses_threads, align 1, !tbaa !41, !range !42, !noundef !43
  %i.io = trunc nuw i8 %i.in to i1
  br i1 %i.io, label %bb.bb, label %.thread.i25.i149.i, !prof !44

.thread.i25.i149.i:                               ; preds = %bb.ba
  %i.ip = load ptr, ptr %i.v, align 8, !tbaa !45
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %.pre-phi.i132.i
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !24
  br label %opal_pointer_array_get_item.exit27.i145.i

bb.bb:                                            ; preds = %bb.ba
  %i.is = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.w) #12 ; 0 uses
  %.pre.i26.i150.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !41, !range !42
  %i.it = trunc nuw i8 %.pre.i26.i150.i to i1
  %i.iu = load ptr, ptr %i.v, align 8, !tbaa !45
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %.pre-phi.i132.i
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !24 ; 2 uses
  br i1 %i.it, label %bb.bc, label %opal_pointer_array_get_item.exit27.i145.i, !prof !46

bb.bc:                                            ; preds = %bb.bb
  %i.ix = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.w) #12 ; 0 uses
  br label %opal_pointer_array_get_item.exit27.i145.i

opal_pointer_array_get_item.exit27.i145.i:        ; preds = %bb.bc, %bb.bb, %.thread.i25.i149.i, %opal_pointer_array_get_item.exit.split.i142.i
  %.0.i24.i146.i = phi ptr [ null, %opal_pointer_array_get_item.exit.split.i142.i ], [ %i.iw, %bb.bb ], [ %i.iw, %bb.bc ], [ %i.ir, %.thread.i25.i149.i ]
  %i.iy = getelementptr inbounds nuw i8, ptr %.0.i24.i146.i, i64 32
  %.not22.i147.i = icmp eq ptr %.pn.i143.i, %i.iy
  br i1 %.not22.i147.i, label %get_capacity.exit123.thread190.i, label %bb.bd

bb.bd:                                            ; preds = %opal_pointer_array_get_item.exit27.i145.i
  %i.iz = getelementptr inbounds nuw i8, ptr %.pn.i143.i, i64 84
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !59
  %i.jb = icmp eq i32 %i.ja, %.063225.i
  br i1 %i.jb, label %.loopexit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jc = getelementptr inbounds nuw i8, ptr %.pn.i143.i, i64 16
  %i.jd = load volatile ptr, ptr %i.jc, align 8, !tbaa !52
  %.pre.i148.i = load i32, ptr %i.u, align 8, !tbaa !38
  br label %opal_pointer_array_get_item.exit.split.i142.i, !llvm.loop !96

get_capacity.exit123.thread190.i:                 ; preds = %opal_pointer_array_get_item.exit.split.us.i134.i, %get_capacity.exit123.thread.i, %opal_pointer_array_get_item.exit27.us.i138.i, %opal_pointer_array_get_item.exit27.i145.i
  call void (i32, ptr, ...) @opal_output(i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 805, ptr noundef nonnull @__func__.min_cost_flow_ssp) #12
  call void @abort() #14
  unreachable

.loopexit.i:                                      ; preds = %.lr.ph.i136.i, %bb.bd
  %.us-phi.i141.i = phi ptr [ %.pn.i143.i, %bb.bd ], [ %.pn.us30.i137.i, %.lr.ph.i136.i ]
  %i.je = getelementptr inbounds nuw i8, ptr %.us-phi.i141.i, i64 96
  store i32 %i.hn, ptr %i.je, align 8, !tbaa !61
  %.pn.i = zext nneg i32 %.063225.i to i64
  %.063.in.i = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.pn.i
  %.063.i = load i32, ptr %.063.in.i, align 4, !tbaa !12 ; 2 uses
  %.not.i = icmp eq i32 %.063.i, -1
  br i1 %.not.i, label %.loopexit206.loopexit.i, label %.lr.ph.i, !llvm.loop !97

min_cost_flow_ssp.exit:                           ; preds = %bb.e, %bb.f
  %.sink295.i = phi i32 [ 753, %bb.e ], [ 761, %bb.f ]
  %i.jf = call ptr @opal_strerror(i32 noundef -2) #12
  call void (i32, ptr, ...) @opal_output(i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef %i.jf, ptr noundef nonnull @.str.2, i32 noundef %.sink295.i) #12
  call void @free(ptr noundef %i.j) #12
  br label %bb.br

.loopexit86:                                      ; preds = %.loopexit206.i, %.preheader.i
  call void @free(ptr noundef nonnull %i.j) #12
  %i.jg = load i32, ptr %0, align 8, !tbaa !37    ; 8 uses
  %i.jh = icmp sgt i32 %i.jg, 0                   ; 2 uses
  br i1 %i.jh, label %.preheader.preheader.i, label %._crit_edge99.split

.preheader.preheader.i:                           ; preds = %.loopexit86
  %i.ji = load i32, ptr %.pre, align 8, !tbaa !37 ; 2 uses
  %i.jj = sext i32 %i.ji to i64                   ; 2 uses
  %i.jk = zext nneg i32 %i.jg to i64              ; 13 uses
  %i.jl = add nuw nsw i64 %i.jk, 4611686018427387903
  %i.jm = mul i64 %i.jl, %i.jj
  %i.jn = add i64 %i.jm, %i.jk
  %i.jo = shl i64 %i.jn, 2
  %scevgep = getelementptr i8, ptr %i.n, i64 %i.jo
  %i.jp = mul nuw nsw i64 %i.jk, %i.jk
  %i.jq = shl nuw i64 %i.jp, 2
  %scevgep220 = getelementptr i8, ptr %i.n, i64 %i.jq
  %i.jr = add nsw i64 %i.jk, -1                   ; 2 uses
  %min.iters.check = icmp ult i32 %i.jg, 8
  %bound0 = icmp ult ptr %i.n, %scevgep
  %bound1 = icmp ult ptr %i.n, %scevgep220
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.ji, 0
  %i.js = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.jk, 2147483640              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.jk
  %xtraiter = and i64 %i.jk, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i62

.preheader.i62:                                   ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv20.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next21.i, %._crit_edge.i ] ; 3 uses
  %i.jt = mul nsw i64 %indvars.iv20.i, %i.jj
  %i.ju = mul nuw nsw i64 %indvars.iv20.i, %i.jk
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.n, i64 %i.jt ; 6 uses
  %invariant.gep25.i = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ju ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.js
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i62, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i62 ] ; 3 uses
  %i.jv = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.jw = getelementptr i8, ptr %i.jv, i64 16
  %wide.load = load <4 x i32>, ptr %i.jv, align 4, !tbaa !12, !alias.scope !111
  %wide.load221 = load <4 x i32>, ptr %i.jw, align 4, !tbaa !12, !alias.scope !111
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep25.i, i64 %index ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  store <4 x i32> %wide.load, ptr %i.jx, align 4, !tbaa !12, !alias.scope !112, !noalias !111
  store <4 x i32> %wide.load221, ptr %i.jy, align 4, !tbaa !12, !alias.scope !112, !noalias !111
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jz = icmp eq i64 %index.next, %n.vec
  br i1 %i.jz, label %middle.block, label %vector.body, !llvm.loop !101

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i62, %middle.block
  %indvars.iv.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i62 ] ; 3 uses
  %i.ka = sub nsw i64 %i.jr, %indvars.iv.i.ph
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.prol
  %i.kb = load i32, ptr %gep.i.prol, align 4, !tbaa !12
  %gep26.i.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep25.i, i64 %indvars.iv.i.prol
  store i32 %i.kb, ptr %gep26.i.prol, align 4, !tbaa !12
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !102

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.kc = icmp ult i64 %i.ka, 3
  br i1 %i.kc, label %._crit_edge.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.kd = load i32, ptr %gep.i, align 4, !tbaa !12
  %gep26.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep25.i, i64 %indvars.iv.i
  store i32 %i.kd, ptr %gep26.i, align 4, !tbaa !12
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.ke = load i32, ptr %gep.i.1, align 4, !tbaa !12
  %gep26.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep25.i, i64 %indvars.iv.next.i
  store i32 %i.ke, ptr %gep26.i.1, align 4, !tbaa !12
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.1
  %i.kf = load i32, ptr %gep.i.2, align 4, !tbaa !12
  %gep26.i.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep25.i, i64 %indvars.iv.next.i.1
  store i32 %i.kf, ptr %gep26.i.2, align 4, !tbaa !12
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.2
  %i.kg = load i32, ptr %gep.i.3, align 4, !tbaa !12
  %gep26.i.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep25.i, i64 %indvars.iv.next.i.2
  store i32 %i.kg, ptr %gep26.i.3, align 4, !tbaa !12
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %i.jk
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %scalar.ph, !llvm.loop !103

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1 ; 2 uses
  %exitcond24.not.i = icmp eq i64 %indvars.iv.next21.i, %i.jk
  br i1 %exitcond24.not.i, label %.preheader73.preheader, label %.preheader.i62, !llvm.loop !104

.preheader73.preheader:                           ; preds = %._crit_edge.i
  %i.kh = zext nneg i32 %i.jg to i64              ; 2 uses
  %xtraiter244 = and i64 %i.jk, 1
  %i.ki = icmp eq i64 %i.jr, 0
  %unroll_iter = and i64 %i.jk, 2147483646
  %lcmp.mod245.not = icmp eq i64 %xtraiter244, 0
  %lcmp.mod246 = trunc i32 %i.jg to i1
  br label %.preheader73

.preheader73:                                     ; preds = %.preheader73.preheader, %._crit_edge
  %indvars.iv128 = phi i64 [ 0, %.preheader73.preheader ], [ %indvars.iv.next129, %._crit_edge ] ; 2 uses
  %i.kj = mul nuw nsw i64 %indvars.iv128, %i.kh
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.kj ; 3 uses
  br i1 %i.ki, label %.epil.preheader, label %.preheader73.new

.preheader73.new:                                 ; preds = %.preheader73, %bb.bi
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.bi ], [ 0, %.preheader73 ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %bb.bi ], [ 0, %.preheader73 ]
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.kk = load i32, ptr %gep, align 4, !tbaa !12
  %i.kl = icmp sgt i32 %i.kk, 0
  br i1 %i.kl, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.preheader73.new
  %i.km = load i32, ptr %1, align 4, !tbaa !12
  %i.kn = add nsw i32 %i.km, 1
  store i32 %i.kn, ptr %1, align 4, !tbaa !12
  br label %bb.bg

bb.bg:                                            ; preds = %.preheader73.new, %bb.bf
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.ko, i64 4
  %i.kp = load i32, ptr %gep.1, align 4, !tbaa !12
  %i.kq = icmp sgt i32 %i.kp, 0
  br i1 %i.kq, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.kr = load i32, ptr %1, align 4, !tbaa !12
  %i.ks = add nsw i32 %i.kr, 1
  store i32 %i.ks, ptr %1, align 4, !tbaa !12
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader73.new, !llvm.loop !105

._crit_edge.unr-lcssa:                            ; preds = %bb.bi
  br i1 %lcmp.mod245.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader73
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader73 ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod246)
  %gep.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init
  %i.kt = load i32, ptr %gep.epil, align 4, !tbaa !12
  %i.ku = icmp sgt i32 %i.kt, 0
  br i1 %i.ku, label %bb.bj, label %._crit_edge

bb.bj:                                            ; preds = %.epil.preheader
  %i.kv = load i32, ptr %1, align 4, !tbaa !12
  %i.kw = add nsw i32 %i.kv, 1
  store i32 %i.kw, ptr %1, align 4, !tbaa !12
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.bj, %._crit_edge.unr-lcssa
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %exitcond132.not = icmp eq i64 %indvars.iv.next129, %i.kh
  br i1 %exitcond132.not, label %._crit_edge99.split, label %.preheader73, !llvm.loop !106

._crit_edge99.split:                              ; preds = %._crit_edge, %.loopexit86
  %i.kx = load i32, ptr %1, align 4, !tbaa !12    ; 2 uses
  %i.ky = icmp eq i32 %i.kx, 0
  br i1 %i.ky, label %.loopexit, label %bb.bk

bb.bk:                                            ; preds = %._crit_edge99.split
  %i.kz = shl nsw i32 %i.kx, 1
  %i.la = sext i32 %i.kz to i64
  %i.lb = shl nsw i64 %i.la, 2
  %i.lc = call noalias ptr @malloc(i64 noundef %i.lb) #15 ; 5 uses
  store ptr %i.lc, ptr %2, align 8, !tbaa !110
  %i.ld = icmp eq ptr %i.lc, null
  br i1 %i.ld, label %bb.bl, label %.preheader72

end_hunk_0
