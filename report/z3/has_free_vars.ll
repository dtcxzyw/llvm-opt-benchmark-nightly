Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/has_free_vars?download=true
inline.NumInlined: 171
inline.NumDeleted: 105
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN13contains_vars3impclEP4exprjj:bb.a
  store i32 0, ptr %i.f, align 4, !tbaa !26
  br label %_ZN6vectorI15expr_delta_pairLb0EjE5resetEv.exit

_ZN6vectorI15expr_delta_pairLb0EjE5resetEv.exit:  ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !27
  %i.i = icmp eq i32 %i.h, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = icmp eq i32 %i.k, 0
  %or.cond.i = select i1 %i.i, i1 %i.l, i1 false
  br i1 %or.cond.i, label %_ZN14core_hashtableI18default_hash_entryI15expr_delta_pairE8obj_hashIS1_E10default_eqIS1_EE5resetEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6vectorI15expr_delta_pairLb0EjE5resetEv.exit
  %i.m = load ptr, ptr %0, align 8, !tbaa !13     ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !8    ; 5 uses
  %.not11.i = icmp eq i32 %i.o, 0
  br i1 %.not11.i, label %._crit_edge.thread.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.p = zext i32 %i.o to i64
  %.idx.i = mul nuw nsw i64 %i.p, 24
  %i.q = add nsw i64 %.idx.i, -24                 ; 2 uses
  %i.r = udiv i64 %i.q, 24                        ; 2 uses
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %i.t = icmp ult i64 %i.q, 24
  br i1 %i.t, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.s, 2305843009213693950
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i.preheader.new
  %.013.i = phi ptr [ %i.m, %.lr.ph.i.preheader.new ], [ %i.ac, %bb.h ] ; 3 uses
  %.0712.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %.1.i.1, %bb.h ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %bb.h ]
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i, i64 4 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !28
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  store i32 0, ptr %i.u, align 4, !tbaa !28
  br label %.lr.ph.i.1

bb.e:                                             ; preds = %.lr.ph.i
  %i.x = add i32 %.0712.i, 1
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.e, %bb.d
  %.1.i = phi i32 [ %i.x, %bb.e ], [ %.0712.i, %bb.d ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i, i64 28 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !28
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.1
  store i32 0, ptr %i.y, align 4, !tbaa !28
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.1
  %i.ab = add i32 %.1.i, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1.i.1 = phi i32 [ %i.ab, %bb.g ], [ %.1.i, %bb.f ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i, i64 48 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !33

._crit_edge.i.unr-lcssa:                          ; preds = %bb.h
  %i.ad = and i64 %i.r, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ad, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.epil.preheader, label %._crit_edge.i

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i.preheader
  %.013.i.epil.init = phi ptr [ %i.m, %.lr.ph.i.preheader ], [ %i.ac, %._crit_edge.i.unr-lcssa ]
  %.0712.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %.1.i.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %lcmp.mod27 = trunc i64 %i.s to i1
  tail call void @llvm.assume(i1 %lcmp.mod27)
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.epil.init, i64 4 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !28
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.epil.preheader
  store i32 0, ptr %i.ae, align 4, !tbaa !28
  br label %._crit_edge.i

bb.j:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.ah = add i32 %.0712.i.epil.init, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.i, %bb.j, %._crit_edge.i.unr-lcssa
  %.1.i.lcssa = phi i32 [ %.1.i.1, %._crit_edge.i.unr-lcssa ], [ %i.ah, %bb.j ], [ %.0712.i.epil.init, %bb.i ]
  %i.ai = shl i32 %.1.i.lcssa, 2
  %i.aj = icmp ugt i32 %i.o, 16
  %i.ak = mul i32 %i.o, 3
  %i.al = icmp ugt i32 %i.ai, %i.ak
  %or.cond19.i = select i1 %i.aj, i1 %i.al, i1 false
  br i1 %or.cond19.i, label %bb.k, label %._crit_edge.thread.i

bb.k:                                             ; preds = %._crit_edge.i
  %i.am = icmp eq ptr %i.m, null
  br i1 %i.am, label %_ZN14core_hashtableI18default_hash_entryI15expr_delta_pairE8obj_hashIS1_E10default_eqIS1_EE12delete_tableEv.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.m)
  %.pre.i = load i32, ptr %i.n, align 8, !tbaa !8
  br label %_ZN14core_hashtableI18default_hash_entryI15expr_delta_pairE8obj_hashIS1_E10default_eqIS1_EE12delete_tableEv.exit.i

_ZN14core_hashtableI18default_hash_entryI15expr_delta_pairE8obj_hashIS1_E10default_eqIS1_EE12delete_tableEv.exit.i: ; preds = %bb.l, %bb.k
  %i.an = phi i32 [ %i.o, %bb.k ], [ %.pre.i, %bb.l ] ; 2 uses
  store ptr null, ptr %0, align 8, !tbaa !13
  %i.ao = lshr i32 %i.an, 1                       ; 6 uses
  store i32 %i.ao, ptr %i.n, align 8, !tbaa !8
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = mul nuw nsw i64 %i.ap, 24
  %i.ar = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.aq) ; 3 uses
  %.not6.i.i.i.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not6.i.i.i.i.i.i, label %_ZN14core_hashtableI18default_hash_entryI15expr_delta_pairE8obj_hashIS1_E10default_eqIS1_EE11alloc_tableEj.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZN14core_hashtableI18default_hash_entryI15expr_delta_pairE8obj_hashIS1_E10default_eqIS1_EE12delete_tableEv.exit.i
  %xtraiter28 = and i32 %i.ao, 7                  ; 2 uses
  %lcmp.mod29.not = icmp eq i32 %xtraiter28, 0
  br i1 %lcmp.mod29.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.08.i.i.i.i.i.i.prol = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ar, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.057.i.i.i.i.i.i.prol = phi i32 [ %i.as, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i.i.prol, i8 0, i64 20, i1 false)
  %i.as = add nsw i32 %.057.i.i.i.i.i.i.prol, -1  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 24 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter28
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !35

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.08.i.i.i.i.i.i.unr = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.at, %.lr.ph.i.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.i.unr = phi i32 [ %i.ao, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.as, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.au = icmp ult i32 %i.an, 16
  br i1 %i.au, label %_ZN14core_hashtableI18default_hash_entryI15expr_delta_pairE8obj_hashIS1_E10default_eqIS1_EE11alloc_tableEj.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.057.i.i.i.i.i.i = phi i32 [ %i.bc, %.lr.ph.i.i.i.i.i.i ], [ %.057.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i.i, i8 0, i64 20, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 20, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 20, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i8 0, i64 20, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 20, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i8 0, i64 20, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i8 0, i64 20, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 0, i64 20, i1 false)
  %i.bc = add nsw i32 %.057.i.i.i.i.i.i, -8       ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 192
  %.not.i.i.i.i.i.i.7 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i.i.i.i.7, label %_ZN14core_hashtableI18default_hash_entryI15expr_delta_pairE8obj_hashIS1_E10default_eqIS1_EE11alloc_tableEj.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !37

_ZN14core_hashtableI18default_hash_entryI15expr_delta_pairE8obj_hashIS1_E10default_eqIS1_EE11alloc_tableEj.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZN14core_hashtableI18default_hash_entryI15expr_delta_pairE8obj_hashIS1_E10default_eqIS1_EE12delete_tableEv.exit.i
  store ptr %i.ar, ptr %0, align 8, !tbaa !13
  %.pre.pre = load ptr, ptr %i.d, align 8, !tbaa !14
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %_ZN14core_hashtableI18default_hash_entryI15expr_delta_pairE8obj_hashIS1_E10default_eqIS1_EE11alloc_tableEj.exit.i, %._crit_edge.i, %bb.c
  %.pre = phi ptr [ %.pre.pre, %_ZN14core_hashtableI18default_hash_entryI15expr_delta_pairE8obj_hashIS1_E10default_eqIS1_EE11alloc_tableEj.exit.i ], [ %i.e, %._crit_edge.i ], [ %i.e, %bb.c ]
  store i32 0, ptr %i.g, align 4, !tbaa !27
  store i32 0, ptr %i.j, align 8, !tbaa !12
  br label %_ZN14core_hashtableI18default_hash_entryI15expr_delta_pairE8obj_hashIS1_E10default_eqIS1_EE5resetEv.exit

_ZN14core_hashtableI18default_hash_entryI15expr_delta_pairE8obj_hashIS1_E10default_eqIS1_EE5resetEv.exit: ; preds = %_ZN6vectorI15expr_delta_pairLb0EjE5resetEv.exit, %._crit_edge.thread.i
  %i.be = phi ptr [ %i.e, %_ZN6vectorI15expr_delta_pairLb0EjE5resetEv.exit ], [ %.pre, %._crit_edge.thread.i ] ; 4 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN14core_hashtableI18default_hash_entryI15expr_delta_pairE8obj_hashIS1_E10default_eqIS1_EE5resetEv.exit
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 -4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !26 ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.be, i64 -8
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !26
  %i.bk = icmp eq i32 %i.bh, %i.bj
  br i1 %i.bk, label %bb.n, label %_ZNK6vectorI15expr_delta_pairLb0EjE5emptyEv.exit.lr.ph

bb.n:                                             ; preds = %bb.m, %_ZN14core_hashtableI18default_hash_entryI15expr_delta_pairE8obj_hashIS1_E10default_eqIS1_EE5resetEv.exit
  tail call void @_ZN6vectorI15expr_delta_pairLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %.pre.i8 = load ptr, ptr %i.d, align 8, !tbaa !14 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i8, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !26
  br label %_ZNK6vectorI15expr_delta_pairLb0EjE5emptyEv.exit.lr.ph

_ZNK6vectorI15expr_delta_pairLb0EjE5emptyEv.exit.lr.ph: ; preds = %bb.m, %bb.n
  %i.bl = phi i32 [ %.pre2.i, %bb.n ], [ %i.bh, %bb.m ] ; 2 uses
  %i.bm = phi ptr [ %.pre.i8, %bb.n ], [ %i.be, %bb.m ] ; 2 uses
  %i.bn = zext i32 %i.bl to i64
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %i.bn ; 2 uses
  store ptr %1, ptr %i.bo, align 8, !tbaa !38
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i32 %2, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  %i.bp = getelementptr inbounds i8, ptr %i.bm, i64 -4
  %i.bq = add i32 %i.bl, 1
  store i32 %i.bq, ptr %i.bp, align 4, !tbaa !26
  %.sroa.5.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.p, %_ZNK6vectorI15expr_delta_pairLb0EjE5emptyEv.exit.lr.ph
  %.pr = load ptr, ptr %i.d, align 8, !tbaa !14   ; 3 uses
  %i.br = icmp eq ptr %.pr, null
  br i1 %i.br, label %_ZNK6vectorI15expr_delta_pairLb0EjE5emptyEv.exit.thread, label %_ZNK6vectorI15expr_delta_pairLb0EjE5emptyEv.exit

_ZNK6vectorI15expr_delta_pairLb0EjE5emptyEv.exit: ; preds = %thread-pre-split
  %i.bs = getelementptr inbounds i8, ptr %.pr, i64 -4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !26 ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %_ZNK6vectorI15expr_delta_pairLb0EjE5emptyEv.exit.thread, label %_ZN6vectorI15expr_delta_pairLb0EjE4backEv.exit

_ZN6vectorI15expr_delta_pairLb0EjE4backEv.exit:   ; preds = %_ZNK6vectorI15expr_delta_pairLb0EjE5emptyEv.exit
  %i.bv = add i32 %i.bt, -1
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %.pr, i64 %i.bw ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.bx, align 8, !tbaa !38 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !26 ; 2 uses
  %i.by = call noundef zeroext i1 @_ZN13contains_vars3imp14visit_childrenEP4exprj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %.sroa.0.0.copyload, i32 noundef %.sroa.5.0.copyload)
  br i1 %i.by, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN6vectorI15expr_delta_pairLb0EjE4backEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr %.sroa.0.0.copyload, ptr %4, align 8, !tbaa !38
  store i32 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx10, align 8, !tbaa !26
  call void @_ZN14core_hashtableI18default_hash_entryI15expr_delta_pairE8obj_hashIS1_E10default_eqIS1_EE6insertEOS1_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(12) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.bz = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -4 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !26
  %i.cc = add i32 %i.cb, -1
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !26
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN6vectorI15expr_delta_pairLb0EjE4backEv.exit
  %i.cd = load i8, ptr %i.a, align 8, !tbaa !20, !range !39, !noundef !40
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %_ZNK6vectorI15expr_delta_pairLb0EjE5emptyEv.exit.thread, label %thread-pre-split

_ZNK6vectorI15expr_delta_pairLb0EjE5emptyEv.exit.thread: ; preds = %thread-pre-split, %bb.p, %_ZNK6vectorI15expr_delta_pairLb0EjE5emptyEv.exit
  %.2.ph = phi i1 [ false, %_ZNK6vectorI15expr_delta_pairLb0EjE5emptyEv.exit ], [ true, %bb.p ], [ false, %thread-pre-split ]
  ret i1 %.2.ph
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_Z13has_free_varsP4expr(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.contains_vars, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.a = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 40) ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 8, ptr %i.b, align 8, !tbaa !8
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 192) ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 20, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 20, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 20, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 20, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 20, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 20, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 20, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 20, i1 false)
  store ptr %i.c, ptr %i.a, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr null, ptr %i.k, align 8, !tbaa !14
  store ptr %i.a, ptr %1, align 8, !tbaa !17
  %i.l = invoke noundef zeroext i1 @_ZN13contains_vars3impclEP4exprjj(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %0, i32 noundef 0, i32 noundef -1)
          to label %_ZN13contains_varsclEP4expr.exit unwind label %bb.g

_ZN13contains_varsclEP4expr.exit:                 ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !14   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %_ZN6vectorI15expr_delta_pairLb0EjED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN13contains_varsclEP4expr.exit
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.n)
          to label %_ZN6vectorI15expr_delta_pairLb0EjED2Ev.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #16
  unreachable

_ZN6vectorI15expr_delta_pairLb0EjED2Ev.exit.i.i.i: ; preds = %bb.b, %_ZN13contains_varsclEP4expr.exit
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZN13contains_vars3impD2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN6vectorI15expr_delta_pairLb0EjED2Ev.exit.i.i.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.q)
          to label %_ZN13contains_vars3impD2Ev.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #16
  unreachable

_ZN13contains_vars3impD2Ev.exit.i.i:              ; preds = %bb.d, %_ZN6vectorI15expr_delta_pairLb0EjED2Ev.exit.i.i.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.a)
          to label %_ZN13contains_varsD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZN13contains_vars3impD2Ev.exit.i.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #16
  unreachable

_ZN13contains_varsD2Ev.exit:                      ; preds = %_ZN13contains_vars3impD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret i1 %i.l

bb.g:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN13contains_varsD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  resume { ptr, i32 } %i.w
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN13contains_vars3imp14visit_childrenEP4exprj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %struct.expr_delta_pair, align 8    ; 6 uses
  %4 = alloca %struct.expr_delta_pair, align 8    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %trunc = trunc i32 %i.b to i16
  switch i16 %trunc, label %.loopexit [
    i16 1, label %bb.b
    i16 0, label %bb.d
    i16 2, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = load i32, ptr %i.c, align 4, !tbaa !25
  %spec.select = tail call i32 @llvm.uadd.sat.i32(i32 %2, i32 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !41   ; 2 uses
  %.not22 = icmp ult i32 %i.f, %2
  %.not23 = icmp ugt i32 %i.f, %spec.select
  %or.cond = select i1 %.not22, i1 true, i1 %.not23
  br i1 %or.cond, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.g, align 8, !tbaa !20
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !46   ; 2 uses
  %.not2033 = icmp eq i32 %i.i, 0
  br i1 %.not2033, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.m = zext i32 %i.i to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZN13contains_vars3imp5visitEP4exprjRb.exit
  %indvars.iv = phi i64 [ %i.m, %.lr.ph ], [ %i.n, %_ZN13contains_vars3imp5visitEP4exprjRb.exit ]
  %.03234 = phi i1 [ true, %.lr.ph ], [ %.2, %_ZN13contains_vars3imp5visitEP4exprjRb.exit ] ; 2 uses
  %i.n = add nsw i64 %indvars.iv, -1              ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !38   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr %i.p, ptr %4, align 8, !tbaa !50
  store i32 %2, ptr %i.k, align 8, !tbaa !51
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4
  %i.s = and i32 %i.r, 65535
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_Z9is_groundPK4expr.exit.i, label %_Z9is_groundPK4expr.exit.thread.i

_Z9is_groundPK4expr.exit.i:                       ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 30
  %i.v = load i8, ptr %i.u, align 2
  %i.w = trunc i8 %i.v to i1
  br i1 %i.w, label %_ZN13contains_vars3imp5visitEP4exprjRb.exit, label %_Z9is_groundPK4expr.exit.thread.i

_Z9is_groundPK4expr.exit.thread.i:                ; preds = %_Z9is_groundPK4expr.exit.i, %bb.e
  %i.x = call noundef ptr @_ZNK14core_hashtableI18default_hash_entryI15expr_delta_pairE8obj_hashIS1_E10default_eqIS1_EE9find_coreERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(12) %4)
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %bb.f, label %_ZN13contains_vars3imp5visitEP4exprjRb.exit

bb.f:                                             ; preds = %_Z9is_groundPK4expr.exit.thread.i
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !14   ; 4 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !26 ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.y, i64 -8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !26
  %i.ae = icmp eq i32 %i.ab, %i.ad
  br i1 %i.ae, label %bb.h, label %_ZN6vectorI15expr_delta_pairLb0EjE9push_backERKS0_.exit.i

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @_ZN6vectorI15expr_delta_pairLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  %.pre.i.i = load ptr, ptr %i.l, align 8, !tbaa !14 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !26
  br label %_ZN6vectorI15expr_delta_pairLb0EjE9push_backERKS0_.exit.i

_ZN6vectorI15expr_delta_pairLb0EjE9push_backERKS0_.exit.i: ; preds = %bb.h, %bb.g
  %i.af = phi i32 [ %.pre2.i.i, %bb.h ], [ %i.ab, %bb.g ]
  %i.ag = phi ptr [ %.pre.i.i, %bb.h ], [ %i.y, %bb.g ]
  %i.ah = zext i32 %i.af to i64
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !52
  %i.aj = load ptr, ptr %i.l, align 8, !tbaa !14
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !26
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !26
end_hunk_0
