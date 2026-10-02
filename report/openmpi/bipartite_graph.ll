Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/bipartite_graph?download=true
inline.NumInlined: 66
inline.NumDeleted: 20
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@opal_bp_graph_solve_bipartite_assignment:bb.a
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
  %i.jl = mul nuw nsw i64 %i.jk, %i.jk
  %i.jm = shl nuw i64 %i.jl, 2
  %scevgep = getelementptr i8, ptr %i.n, i64 %i.jm
  %i.jn = add nuw nsw i64 %i.jk, 4611686018427387903
  %i.jo = mul i64 %i.jn, %i.jj
  %i.jp = add i64 %i.jo, %i.jk
  %i.jq = shl i64 %i.jp, 2
  %scevgep219 = getelementptr i8, ptr %i.n, i64 %i.jq
  %i.jr = add nsw i64 %i.jk, -1                   ; 2 uses
  %min.iters.check = icmp ult i32 %i.jg, 8
  %bound0 = icmp ult ptr %i.n, %scevgep219
  %bound1 = icmp ult ptr %i.n, %scevgep
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
  %wide.load220 = load <4 x i32>, ptr %i.jw, align 4, !tbaa !12, !alias.scope !111
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep25.i, i64 %index ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  store <4 x i32> %wide.load, ptr %i.jx, align 4, !tbaa !12, !alias.scope !112, !noalias !111
  store <4 x i32> %wide.load220, ptr %i.jy, align 4, !tbaa !12, !alias.scope !112, !noalias !111
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
  %xtraiter243 = and i64 %i.jk, 1
  %i.ki = icmp eq i64 %i.jr, 0
  %unroll_iter = and i64 %i.jk, 2147483646
  %lcmp.mod244.not = icmp eq i64 %xtraiter243, 0
  %lcmp.mod245 = trunc i32 %i.jg to i1
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
  br i1 %lcmp.mod244.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader73
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader73 ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod245)
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

.preheader72:                                     ; preds = %bb.bk
  br i1 %i.jh, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader72
  %i.le = zext nneg i32 %i.jg to i64              ; 4 uses
  %xtraiter247 = and i64 %i.le, 1
  %i.lf = icmp eq i32 %i.jg, 1
  %unroll_iter251 = and i64 %i.le, 2147483646
  %lcmp.mod248.not = icmp eq i64 %xtraiter247, 0
  %lcmp.mod250 = trunc i32 %i.jg to i1
  br label %.preheader

bb.bl:                                            ; preds = %bb.bk
  store i32 0, ptr %1, align 4, !tbaa !12
  %i.lg = call ptr @opal_strerror(i32 noundef -2) #12
  call void (i32, ptr, ...) @opal_output(i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef %i.lg, ptr noundef nonnull @.str.2, i32 noundef 904) #12
  br label %.loopexit

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge102
  %indvars.iv138 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next139, %._crit_edge102 ] ; 3 uses
  %.047103 = phi i32 [ 0, %.preheader.preheader ], [ %.2.lcssa, %._crit_edge102 ] ; 2 uses
  %i.lh = mul nuw nsw i64 %indvars.iv138, %i.le
  %invariant.gep195 = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.lh ; 3 uses
  %i.li = trunc nuw nsw i64 %indvars.iv138 to i32 ; 3 uses
  br i1 %i.lf, label %.epil.preheader246, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %bb.bp
  %indvars.iv133 = phi i64 [ %indvars.iv.next134.1, %bb.bp ], [ 0, %.preheader ] ; 4 uses
  %.148100 = phi i32 [ %.2.1, %bb.bp ], [ %.047103, %.preheader ] ; 3 uses
  %niter252 = phi i64 [ %niter252.next.1, %bb.bp ], [ 0, %.preheader ]
  %gep196 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep195, i64 %indvars.iv133
  %i.lj = load i32, ptr %gep196, align 4, !tbaa !12
  %i.lk = icmp sgt i32 %i.lj, 0
  br i1 %i.lk, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.preheader.new
  %i.ll = sext i32 %.148100 to i64
  %i.lm = getelementptr inbounds [4 x i8], ptr %i.lc, i64 %i.ll ; 2 uses
  store i32 %i.li, ptr %i.lm, align 4, !tbaa !12
  %i.ln = add nsw i32 %.148100, 2
  %i.lo = getelementptr i8, ptr %i.lm, i64 4
  %i.lp = trunc nuw nsw i64 %indvars.iv133 to i32
  store i32 %i.lp, ptr %i.lo, align 4, !tbaa !12
  br label %bb.bn

bb.bn:                                            ; preds = %.preheader.new, %bb.bm
  %.2 = phi i32 [ %i.ln, %bb.bm ], [ %.148100, %.preheader.new ] ; 3 uses
  %indvars.iv.next134 = or disjoint i64 %indvars.iv133, 1 ; 2 uses
  %gep196.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep195, i64 %indvars.iv.next134
  %i.lq = load i32, ptr %gep196.1, align 4, !tbaa !12
  %i.lr = icmp sgt i32 %i.lq, 0
  br i1 %i.lr, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.ls = sext i32 %.2 to i64
  %i.lt = getelementptr inbounds [4 x i8], ptr %i.lc, i64 %i.ls ; 2 uses
  store i32 %i.li, ptr %i.lt, align 4, !tbaa !12
  %i.lu = add nsw i32 %.2, 2
  %i.lv = getelementptr i8, ptr %i.lt, i64 4
  %i.lw = trunc nuw nsw i64 %indvars.iv.next134 to i32
  store i32 %i.lw, ptr %i.lv, align 4, !tbaa !12
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.2.1 = phi i32 [ %i.lu, %bb.bo ], [ %.2, %bb.bn ] ; 3 uses
  %indvars.iv.next134.1 = add nuw nsw i64 %indvars.iv133, 2 ; 2 uses
  %niter252.next.1 = add i64 %niter252, 2         ; 2 uses
  %niter252.ncmp.1 = icmp eq i64 %niter252.next.1, %unroll_iter251
  br i1 %niter252.ncmp.1, label %._crit_edge102.unr-lcssa, label %.preheader.new, !llvm.loop !107

._crit_edge102.unr-lcssa:                         ; preds = %bb.bp
  br i1 %lcmp.mod248.not, label %._crit_edge102, label %.epil.preheader246

.epil.preheader246:                               ; preds = %._crit_edge102.unr-lcssa, %.preheader
  %indvars.iv133.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next134.1, %._crit_edge102.unr-lcssa ] ; 2 uses
  %.148100.epil.init = phi i32 [ %.047103, %.preheader ], [ %.2.1, %._crit_edge102.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod250)
  %gep196.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep195, i64 %indvars.iv133.epil.init
  %i.lx = load i32, ptr %gep196.epil, align 4, !tbaa !12
  %i.ly = icmp sgt i32 %i.lx, 0
  br i1 %i.ly, label %bb.bq, label %._crit_edge102

bb.bq:                                            ; preds = %.epil.preheader246
  %i.lz = sext i32 %.148100.epil.init to i64
  %i.ma = getelementptr inbounds [4 x i8], ptr %i.lc, i64 %i.lz ; 2 uses
  store i32 %i.li, ptr %i.ma, align 4, !tbaa !12
  %i.mb = add nsw i32 %.148100.epil.init, 2
  %i.mc = getelementptr i8, ptr %i.ma, i64 4
  %i.md = trunc nuw nsw i64 %indvars.iv133.epil.init to i32
  store i32 %i.md, ptr %i.mc, align 4, !tbaa !12
  br label %._crit_edge102

._crit_edge102:                                   ; preds = %.epil.preheader246, %bb.bq, %._crit_edge102.unr-lcssa
  %.2.lcssa = phi i32 [ %.2.1, %._crit_edge102.unr-lcssa ], [ %i.mb, %bb.bq ], [ %.148100.epil.init, %.epil.preheader246 ]
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %exitcond142.not = icmp eq i64 %indvars.iv.next139, %i.le
  br i1 %exitcond142.not, label %.loopexit, label %.preheader, !llvm.loop !108

.loopexit:                                        ; preds = %._crit_edge102, %.preheader72, %._crit_edge99.split, %bb.b, %bb.bl
  %.067 = phi ptr [ %i.n, %._crit_edge99.split ], [ %i.n, %bb.bl ], [ null, %bb.b ], [ %i.n, %.preheader72 ], [ %i.n, %._crit_edge102 ]
  %.049 = phi i32 [ 0, %._crit_edge99.split ], [ -2, %bb.bl ], [ %i.d, %bb.b ], [ 0, %.preheader72 ], [ 0, %._crit_edge102 ]
  call void @free(ptr noundef %.067) #12
  %i.me = call i32 @opal_bp_graph_free(ptr noundef %.pre) ; 0 uses
  br label %bb.br

bb.br:                                            ; preds = %min_cost_flow_ssp.exit, %bb.a, %.loopexit, %bb.d
  %.050 = phi i32 [ -5, %bb.a ], [ %.049, %.loopexit ], [ %i.e, %bb.d ], [ -2, %min_cost_flow_ssp.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.050
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0,1) }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{null}
!1 = distinct !{!1, !25}
!2 = distinct !{null}
!3 = distinct !{!3, !25}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!9, !9, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"p1 _ZTS12opal_class_t", !13, i64 0}
!16 = !{!"any p2 pointer", !13, i64 0}
!17 = !{!"long", !8, i64 0}
!18 = !{!"opal_class_t", !14, i64 0, !15, i64 8, !13, i64 16, !13, i64 24, !9, i64 32, !9, i64 36, !16, i64 40, !16, i64 48, !17, i64 56}
!19 = !{!18, !9, i64 32}
!20 = !{!"opal_object_t", !15, i64 0, !9, i64 8}
!21 = !{!20, !15, i64 0}
!22 = !{!20, !9, i64 8}
!23 = !{!18, !16, i64 40}
!24 = !{!13, !13, i64 0}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!18, !16, i64 48}
!27 = !{!"p1 _ZTS15opal_bp_graph_t", !13, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"opal_mutex_t", !20, i64 0, !8, i64 16, !9, i64 56}
!30 = !{!"p1 long", !13, i64 0}
!31 = !{!"opal_pointer_array_t", !20, i64 0, !29, i64 16, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !9, i64 96, !30, i64 104, !16, i64 112}
!32 = !{!"opal_bp_graph_t", !9, i64 0, !31, i64 8, !9, i64 128, !9, i64 132, !13, i64 136, !13, i64 144}
!33 = !{!32, !9, i64 128}
!34 = !{!32, !9, i64 132}
!35 = !{!32, !13, i64 136}
!36 = !{!32, !13, i64 144}
!37 = !{!32, !9, i64 0}
!38 = !{!31, !9, i64 88}
!39 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!40 = !{!"_Bool", !8, i64 0}
!41 = !{!40, !40, i64 0}
!42 = !{i8 0, i8 2}
!43 = !{}
!44 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!45 = !{!31, !16, i64 112}
!46 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!47 = !{!"p1 _ZTS16opal_list_item_t", !13, i64 0}
!48 = !{!"opal_list_item_t", !20, i64 0, !47, i64 16, !47, i64 24, !9, i64 32}
!49 = !{!"opal_list_t", !20, i64 0, !48, i64 16, !17, i64 56}
!50 = !{!"opal_bp_graph_vertex_t", !9, i64 0, !13, i64 8, !49, i64 16, !49, i64 80}
!51 = !{!50, !47, i64 48}
!52 = !{!48, !47, i64 16}
!53 = !{!48, !47, i64 24}
!54 = !{!49, !17, i64 56}
!55 = !{!"opal_bp_graph_edge_t", !20, i64 0, !48, i64 16, !48, i64 56, !9, i64 96, !9, i64 100, !17, i64 104, !9, i64 112, !13, i64 120}
!56 = !{!55, !13, i64 120}
!57 = !{!50, !13, i64 8}
!58 = !{!55, !9, i64 96}
!59 = !{!55, !9, i64 100}
!60 = !{!55, !17, i64 104}
!61 = !{!55, !9, i64 112}
!62 = !{!"llvm.loop.unswitch.partial.disable"}
!63 = !{!"llvm.loop.isvectorized", i32 1}
!64 = !{!"llvm.loop.unroll.runtime.disable"}
!65 = distinct !{!65, !25}
!66 = distinct !{!66, !25}
!67 = distinct !{!67, !25}
!68 = distinct !{null}
!69 = distinct !{!69, !25}
!70 = !{!50, !47, i64 112}
!71 = distinct !{!71, !25}
!72 = distinct !{!72, !25}
!73 = distinct !{!73, !25}
!74 = !{!50, !9, i64 0}
!75 = distinct !{!75, !25}
!76 = distinct !{!76, !25, !62}
!77 = distinct !{null, null}
!78 = !{!18, !17, i64 56}
!79 = distinct !{!79, !25, !63, !64}
!80 = distinct !{!80, !25, !64, !63}
!81 = distinct !{!81, !25}
!82 = distinct !{!82, !25}
!83 = distinct !{!83, !25, !62}
!84 = distinct !{!84, !25}
!85 = distinct !{!85, !25, !62}
!86 = distinct !{!86, !25}
!87 = !{!17, !17, i64 0}
!88 = distinct !{!88, !25}
!89 = distinct !{!89, !25}
!90 = distinct !{!90, !25}
!91 = distinct !{!91, !25}
!92 = distinct !{!92, !25}
!93 = distinct !{!93, !25, !62}
!94 = distinct !{!94, !25}
!95 = distinct !{!95, !25}
!96 = distinct !{!96, !25, !62}
!97 = distinct !{!97, !25}
!98 = distinct !{!98, i1 false, !"LVerDomain"}
!99 = distinct !{!99, !98}
!100 = distinct !{!100, !98}
!101 = distinct !{!101, !25, !63, !64}
!102 = distinct !{!102, !113}
!103 = distinct !{!103, !25, !63}
!104 = distinct !{!104, !25}
!105 = distinct !{!105, !25}
!106 = distinct !{!106, !25}
!107 = distinct !{!107, !25}
!108 = distinct !{!108, !25}
!109 = !{!"p1 int", !13, i64 0}
!110 = !{!109, !109, i64 0}
!111 = !{!99}
!112 = !{!100}
!113 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
