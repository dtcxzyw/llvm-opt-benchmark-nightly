inline.NumInlined: 61
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@boost_cont_multialloc_nodes:bb.a
  %i.aj = add i64 %.18711.i, -1                   ; 2 uses
  %i.ak = load ptr, ptr %.sroa.0.110.i, align 8, !tbaa !98
  %i.al = getelementptr inbounds i8, ptr %.sroa.0.110.i, i64 -8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !28
  %i.an = and i64 %i.am, -8
  %i.ao = load i64, ptr @s_allocated_memory, align 8, !tbaa !41
  %i.ap = sub i64 %i.ao, %i.an
  store i64 %i.ap, ptr @s_allocated_memory, align 8, !tbaa !41
  tail call fastcc void @mspace_free_lockless(ptr noundef nonnull %.sroa.0.110.i)
  %.not97.i = icmp eq i64 %i.aj, 0
  br i1 %.not97.i, label %._crit_edge14.i, label %.lr.ph13.i, !llvm.loop !106

._crit_edge14.i:                                  ; preds = %.lr.ph13.i, %bb.n
  br i1 %.not98.i, label %internal_node_multialloc.exit, label %.loopexit.sink.split.i

bb.o:                                             ; preds = %.lr.ph
  %i.aq = getelementptr inbounds i8, ptr %i.ah, i64 -16 ; 3 uses
  %i.ar = getelementptr inbounds i8, ptr %i.ah, i64 -8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !28
  %i.at = and i64 %i.as, -8                       ; 2 uses
  %i.au = load i64, ptr @s_allocated_memory, align 8, !tbaa !41
  %i.av = add i64 %i.au, %i.at
  store i64 %i.av, ptr @s_allocated_memory, align 8, !tbaa !41
  %i.aw = add i64 %i.ad, -1                       ; 6 uses
  %i.ax = mul i64 %i.aw, %i.n
  %i.ay = sub i64 %i.at, %i.ax
  %.not963.i = icmp eq i64 %i.aw, 0
  %.pre.i = load ptr, ptr %i.o, align 8, !tbaa !101 ; 3 uses
  %.pre21.i = load i64, ptr %3, align 8, !tbaa !103 ; 2 uses
  br i1 %.not963.i, label %bb.p, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.o
  %i.az = add i64 %i.ad, -2
  %xtraiter = and i64 %i.aw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %i.ba = phi ptr [ %.0836.i.prol, %.lr.ph.i.prol ], [ %.pre.i, %.lr.ph.i.preheader ]
  %.0836.i.prol = phi ptr [ %i.be, %.lr.ph.i.prol ], [ %i.ah, %.lr.ph.i.preheader ] ; 5 uses
  %.0845.i.prol = phi ptr [ %i.bd, %.lr.ph.i.prol ], [ %i.aq, %.lr.ph.i.preheader ] ; 2 uses
  %.0854.i.prol = phi i64 [ %i.bb, %.lr.ph.i.prol ], [ %i.aw, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.bb = add i64 %.0854.i.prol, -1               ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0845.i.prol, i64 8
  store i64 %i.ab, ptr %i.bc, align 8, !tbaa !28
  store ptr %.0836.i.prol, ptr %i.ba, align 8, !tbaa !98
  store ptr null, ptr %.0836.i.prol, align 8, !tbaa !98
  %i.bd = getelementptr inbounds nuw i8, ptr %.0845.i.prol, i64 %i.n ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !107

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.0836.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.0836.i.prol, %.lr.ph.i.prol ]
  %.lcssa30.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.bd, %.lr.ph.i.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.be, %.lr.ph.i.prol ]
  %.unr = phi ptr [ %.pre.i, %.lr.ph.i.preheader ], [ %.0836.i.prol, %.lr.ph.i.prol ]
  %.0836.i.unr = phi ptr [ %i.ah, %.lr.ph.i.preheader ], [ %i.be, %.lr.ph.i.prol ]
  %.0845.i.unr = phi ptr [ %i.aq, %.lr.ph.i.preheader ], [ %i.bd, %.lr.ph.i.prol ]
  %.0854.i.unr = phi i64 [ %i.aw, %.lr.ph.i.preheader ], [ %i.bb, %.lr.ph.i.prol ]
  %i.bf = icmp ult i64 %i.az, 3
  br i1 %i.bf, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.bg = phi ptr [ %i.bp, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ]
  %.0836.i = phi ptr [ %i.bt, %.lr.ph.i ], [ %.0836.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.0845.i = phi ptr [ %i.bs, %.lr.ph.i ], [ %.0845.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.0854.i = phi i64 [ %i.bq, %.lr.ph.i ], [ %.0854.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.0845.i, i64 8
  store i64 %i.ab, ptr %i.bh, align 8, !tbaa !28
  store ptr %.0836.i, ptr %i.bg, align 8, !tbaa !98
  store ptr null, ptr %.0836.i, align 8, !tbaa !98
  %i.bi = getelementptr inbounds nuw i8, ptr %.0845.i, i64 %i.n ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i64 %i.ab, ptr %i.bk, align 8, !tbaa !28
  store ptr %i.bj, ptr %.0836.i, align 8, !tbaa !98
  store ptr null, ptr %i.bj, align 8, !tbaa !98
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.n ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 %i.ab, ptr %i.bn, align 8, !tbaa !28
  store ptr %i.bm, ptr %i.bj, align 8, !tbaa !98
  store ptr null, ptr %i.bm, align 8, !tbaa !98
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.n ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 4 uses
  %i.bq = add i64 %.0854.i, -4                    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 %i.ab, ptr %i.br, align 8, !tbaa !28
  store ptr %i.bp, ptr %i.bm, align 8, !tbaa !98
  store ptr null, ptr %i.bp, align 8, !tbaa !98
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.n ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %.not96.i.3 = icmp eq i64 %i.bq, 0
  br i1 %.not96.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !108

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.0836.i.lcssa = phi ptr [ %.0836.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.bp, %.lr.ph.i ]
  %.lcssa30 = phi ptr [ %.lcssa30.unr, %.lr.ph.i.prol.loopexit ], [ %i.bs, %.lr.ph.i ]
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.bt, %.lr.ph.i ]
  %i.bu = add i64 %i.aw, %.pre21.i
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge.i, %bb.o
  %i.bv = phi i64 [ %i.bu, %._crit_edge.i ], [ %.pre21.i, %bb.o ]
  %i.bw = phi ptr [ %.0836.i.lcssa, %._crit_edge.i ], [ %.pre.i, %bb.o ]
  %.084.lcssa.i = phi ptr [ %.lcssa30, %._crit_edge.i ], [ %i.aq, %bb.o ]
  %.083.lcssa.i = phi ptr [ %.lcssa, %._crit_edge.i ], [ %i.ah, %bb.o ] ; 3 uses
  %i.bx = or disjoint i64 %i.ay, 3
  %i.by = getelementptr inbounds nuw i8, ptr %.084.lcssa.i, i64 8
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !28
  store ptr %.083.lcssa.i, ptr %i.bw, align 8, !tbaa !98
  store ptr null, ptr %.083.lcssa.i, align 8, !tbaa !98
  store ptr %.083.lcssa.i, ptr %i.o, align 8, !tbaa !101
  %i.bz = add i64 %i.bv, 1
  store i64 %i.bz, ptr %3, align 8, !tbaa !103
  %.not94.i = icmp eq i64 %i.ae, %0
  br i1 %.not94.i, label %._crit_edge, label %.lr.ph, !llvm.loop !109

._crit_edge:                                      ; preds = %bb.p, %bb.m
  br i1 %.not98.i, label %internal_node_multialloc.exit, label %.loopexit.sink.split.i

.loopexit.sink.split.i:                           ; preds = %._crit_edge, %._crit_edge14.i
  %.not94.i16 = phi i32 [ 1, %._crit_edge ], [ 0, %._crit_edge14.i ]
  %i.ca = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !11
  %i.cb = or i32 %i.ca, 1
  store i32 %i.cb, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !11
  br label %internal_node_multialloc.exit

internal_node_multialloc.exit:                    ; preds = %._crit_edge14.i, %._crit_edge, %.loopexit.sink.split.i, %spin_acquire_lock.exit, %bb.g, %bb.i
  %.3.i = phi i32 [ 0, %bb.i ], [ 0, %spin_acquire_lock.exit ], [ 0, %bb.g ], [ 1, %._crit_edge ], [ 0, %._crit_edge14.i ], [ %.not94.i16, %.loopexit.sink.split.i ]
  %i.cc = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !11
  %i.cd = and i32 %i.cc, 2
  %.not12 = icmp eq i32 %i.cd, 0
  br i1 %.not12, label %bb.r, label %bb.q

bb.q:                                             ; preds = %internal_node_multialloc.exit
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884) release, align 4
  br label %bb.r

bb.r:                                             ; preds = %internal_node_multialloc.exit, %bb.q
  ret i32 %.3.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @boost_cont_footprint() local_unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 856), align 8, !tbaa !55
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define hidden i64 @boost_cont_allocated_memory() local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @mparams, align 8, !tbaa !8
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @init_mparams()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !11
  %i.c = and i32 %i.b, 2
  %.not45 = icmp eq i32 %i.c, 0
  br i1 %.not45, label %spin_acquire_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not46 = icmp eq i32 %i.d, 0
  br i1 %.not46, label %spin_acquire_lock.exit, label %.preheader

.preheader:                                       ; preds = %bb.d, %.preheader.backedge
  %.0.i = phi i32 [ %i.g, %.preheader.backedge ], [ 0, %bb.d ]
  %i.e = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), align 4, !tbaa !18
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %.preheader
  %i.f = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not2.i = icmp eq i32 %i.f, 0
  br i1 %.not2.i, label %spin_acquire_lock.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.e, %.preheader
  %i.g = add nuw nsw i32 %.0.i, 1                 ; 2 uses
  %i.h = and i32 %i.g, 63
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %.preheader.backedge

bb.f:                                             ; preds = %.critedge.i
  %i.j = tail call i32 @sched_yield() #16         ; 0 uses
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.f, %.critedge.i
  br label %.preheader, !llvm.loop !19

spin_acquire_lock.exit:                           ; preds = %bb.e, %bb.c, %bb.d
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 40), align 8, !tbaa !34 ; 3 uses
  %.not47 = icmp eq ptr %i.k, null
  br i1 %.not47, label %bb.k, label %bb.g

bb.g:                                             ; preds = %spin_acquire_lock.exit
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 16), align 8, !tbaa !33
  %i.m = add i64 %i.l, 80
  br label %.lr.ph.a

.lr.ph.a:                                         ; preds = %bb.g, %.critedge
  %.03469 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_gm_, i64 888), %bb.g ], [ %i.ad, %.critedge ] ; 3 uses
  %.03568 = phi i64 [ %i.m, %bb.g ], [ %.1.lcssa.ph, %.critedge ] ; 2 uses
  %.03667 = phi i64 [ 1, %bb.g ], [ %.137.lcssa.ph, %.critedge ] ; 2 uses
  %i.n = load ptr, ptr %.03469, align 8, !tbaa !63 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, 15                         ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  %i.s = sub nuw nsw i64 16, %i.q
  %spec.select = select i1 %i.r, i64 0, i64 %i.s  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %spec.select ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.03469, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !64   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.v
  %0 = icmp samesign uge i64 %spec.select, %i.v
  %.not5356 = icmp eq ptr %i.t, %i.k
  %or.cond57 = or i1 %.not5356, %0
  br i1 %or.cond57, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph.a, %bb.i
  %.059 = phi ptr [ %i.ab, %bb.i ], [ %i.t, %.lr.ph.a ] ; 2 uses
  %.158 = phi i64 [ %.2, %bb.i ], [ %.03568, %.lr.ph.a ] ; 2 uses
  %.13757 = phi i64 [ %.238, %bb.i ], [ %.03667, %.lr.ph.a ] ; 2 uses
  %1 = getelementptr inbounds nuw i8, ptr %.059, i64 8
  %2 = load i64, ptr %1, align 8, !tbaa !28       ; 3 uses
  %.not54 = icmp eq i64 %2, 11
  br i1 %.not54, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = and i64 %2, 3
  %.not55 = icmp eq i64 %i.x, 1                   ; 2 uses
  %i.y = and i64 %2, -8                           ; 2 uses
  %i.z = zext i1 %.not55 to i64
  %.238 = add i64 %.13757, %i.z                   ; 2 uses
  %i.aa = select i1 %.not55, i64 %i.y, i64 0
  %.2 = add i64 %i.aa, %.158                      ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.059, i64 %i.y ; 3 uses
  %3 = icmp uge ptr %i.ab, %i.w
  %.not53 = icmp eq ptr %i.ab, %i.k
  %or.cond = or i1 %.not53, %3
  br i1 %or.cond, label %.critedge, label %bb.h, !llvm.loop !110

.critedge:                                        ; preds = %bb.h, %bb.i, %.lr.ph.a
  %.137.lcssa.ph = phi i64 [ %.03667, %.lr.ph.a ], [ %.238, %bb.i ], [ %.13757, %bb.h ] ; 3 uses
  %.1.lcssa.ph = phi i64 [ %.03568, %.lr.ph.a ], [ %.2, %bb.i ], [ %.158, %bb.h ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.03469, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !65 ; 2 uses
  %.not48 = icmp eq ptr %i.ad, null
  br i1 %.not48, label %bb.j, label %.lr.ph.a, !llvm.loop !111

bb.j:                                             ; preds = %.critedge
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 856), align 8, !tbaa !55
  %.not49 = icmp eq i64 %.137.lcssa.ph, 0
  %.neg = mul i64 %.137.lcssa.ph, -80
  %.neg50 = add i64 %.neg, 80
  %i.af = select i1 %.not49, i64 0, i64 %.neg50
  %i.ag = sub i64 %i.af, %.1.lcssa.ph
  %.039 = add i64 %i.ag, %i.ae
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %spin_acquire_lock.exit
  %.140 = phi i64 [ %.039, %bb.j ], [ 0, %spin_acquire_lock.exit ]
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !11
  %i.ai = and i32 %i.ah, 2
  %.not51 = icmp eq i32 %i.ai, 0
  br i1 %.not51, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884) release, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  ret i64 %.140
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i64 0, -7) i64 @boost_cont_chunksize(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !28
  %i.c = and i64 %i.b, -8
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @boost_cont_all_deallocated() local_unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr @s_allocated_memory, align 8, !tbaa !41
  %.not = icmp eq i64 %i.a, 0
  %i.b = zext i1 %.not to i32
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define hidden void @boost_cont_malloc_stats(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.boost_cont_malloc_stats_impl) align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %i.a = load i64, ptr @mparams, align 8, !tbaa !8, !noalias !112
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @init_mparams()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !11, !noalias !112
  %i.c = and i32 %i.b, 2
  %.not38.i = icmp eq i32 %i.c, 0
  br i1 %.not38.i, label %spin_acquire_lock.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4, !noalias !112
  %.not39.i = icmp eq i32 %i.d, 0
  br i1 %.not39.i, label %spin_acquire_lock.exit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i.backedge
  %.0.i.i = phi i32 [ %i.g, %.preheader.i.backedge ], [ 0, %bb.d ]
  %i.e = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), align 4, !tbaa !18, !noalias !112
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.e, label %.critedge.i.i

bb.e:                                             ; preds = %.preheader.i
  %i.f = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4, !noalias !112
  %.not2.i.i = icmp eq i32 %i.f, 0
  br i1 %.not2.i.i, label %spin_acquire_lock.exit.i, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.e, %.preheader.i
  %i.g = add nuw nsw i32 %.0.i.i, 1               ; 2 uses
  %i.h = and i32 %i.g, 63
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %.preheader.i.backedge

bb.f:                                             ; preds = %.critedge.i.i
  %i.j = tail call i32 @sched_yield() #16, !noalias !112 ; 0 uses
  br label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %bb.f, %.critedge.i.i
  br label %.preheader.i, !llvm.loop !19

spin_acquire_lock.exit.i:                         ; preds = %bb.e, %bb.d, %bb.c
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 40), align 8, !tbaa !34, !noalias !112 ; 3 uses
  %.not40.i = icmp eq ptr %i.k, null
  br i1 %.not40.i, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %spin_acquire_lock.exit.i
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 864), align 8, !tbaa !56, !noalias !112
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 856), align 8, !tbaa !55, !noalias !112 ; 2 uses
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 16), align 8, !tbaa !33, !noalias !112
  %.neg1.i = add i64 %i.m, -80
  %i.o = sub i64 %.neg1.i, %i.n
  br label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %.critedge.i, %bb.g
  %.03110.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_gm_, i64 888), %bb.g ], [ %i.ae, %.critedge.i ] ; 3 uses
  %.0329.i = phi i64 [ %i.o, %bb.g ], [ %.1.lcssa.ph.i, %.critedge.i ] ; 2 uses
  %i.p = load ptr, ptr %.03110.i, align 8, !tbaa !63, !noalias !112 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = and i64 %i.r, 15                         ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  %i.u = sub nuw nsw i64 16, %i.s
  %spec.select.i = select i1 %i.t, i64 0, i64 %i.u ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %spec.select.i ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.03110.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !64, !noalias !112 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.x
  %1 = icmp samesign uge i64 %spec.select.i, %i.x
  %.not442.i = icmp eq ptr %i.v, %i.k
  %or.cond3.i = or i1 %1, %.not442.i
  br i1 %or.cond3.i, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.a, %bb.i
  %.04.i = phi ptr [ %i.ac, %bb.i ], [ %i.v, %.lr.ph.i.a ] ; 2 uses
  %.13.i = phi i64 [ %.2.i, %bb.i ], [ %.0329.i, %.lr.ph.i.a ] ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %.04.i, i64 8
  %3 = load i64, ptr %2, align 8, !tbaa !28, !noalias !112 ; 3 uses
  %.not45.i = icmp eq i64 %3, 11
  br i1 %.not45.i, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = and i64 %3, 2
  %.not46.i = icmp eq i64 %i.z, 0
  %i.aa = and i64 %3, -8                          ; 2 uses
  %i.ab = select i1 %.not46.i, i64 %i.aa, i64 0
  %.2.i = sub i64 %.13.i, %i.ab                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.04.i, i64 %i.aa ; 3 uses
  %4 = icmp uge ptr %i.ac, %i.y
  %.not44.i = icmp eq ptr %i.ac, %i.k
  %or.cond.i = or i1 %.not44.i, %4
  br i1 %or.cond.i, label %.critedge.i, label %bb.h, !llvm.loop !115

.critedge.i:                                      ; preds = %bb.i, %bb.h, %.lr.ph.i.a
  %.1.lcssa.ph.i = phi i64 [ %.0329.i, %.lr.ph.i.a ], [ %.13.i, %bb.h ], [ %.2.i, %bb.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.03110.i, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !65, !noalias !112 ; 2 uses
  %.not41.i = icmp eq ptr %i.ae, null
  br i1 %.not41.i, label %.loopexit.i, label %.lr.ph.i.a, !llvm.loop !116

.loopexit.i:                                      ; preds = %.critedge.i, %spin_acquire_lock.exit.i
  %.034.i = phi i64 [ 0, %spin_acquire_lock.exit.i ], [ %i.l, %.critedge.i ]
  %.033.i = phi i64 [ 0, %spin_acquire_lock.exit.i ], [ %i.m, %.critedge.i ]
  %.3.i = phi i64 [ 0, %spin_acquire_lock.exit.i ], [ %.1.lcssa.ph.i, %.critedge.i ]
  store i64 %.034.i, ptr %0, align 8, !tbaa !117, !alias.scope !112
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.033.i, ptr %i.af, align 8, !tbaa !119, !alias.scope !112
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.3.i, ptr %i.ag, align 8, !tbaa !120, !alias.scope !112
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !11, !noalias !112
  %i.ai = and i32 %i.ah, 2
  %.not42.i = icmp eq i32 %i.ai, 0
  br i1 %.not42.i, label %get_malloc_stats.exit, label %bb.j

bb.j:                                             ; preds = %.loopexit.i
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884) release, align 4, !noalias !112
  br label %get_malloc_stats.exit

get_malloc_stats.exit:                            ; preds = %.loopexit.i, %bb.j
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @boost_cont_in_use_memory() local_unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr @s_allocated_memory, align 8, !tbaa !41
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @boost_cont_trim(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @mparams, align 8, !tbaa !8
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @init_mparams()
  %.pr = load i64, ptr @mparams, align 8, !tbaa !8
  %.not.i = icmp eq i64 %.pr, 0
  br i1 %.not.i, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @init_mparams()
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c, %bb.b
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !11
  %i.c = and i32 %i.b, 2
  %.not2.i = icmp eq i32 %i.c, 0
  br i1 %.not2.i, label %spin_acquire_lock.exit.i, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.d = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not3.i = icmp eq i32 %i.d, 0
  br i1 %.not3.i, label %spin_acquire_lock.exit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i.backedge
  %.0.i.i = phi i32 [ %i.g, %.preheader.i.backedge ], [ 0, %bb.d ]
  %i.e = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), align 4, !tbaa !18
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.e, label %.critedge.i.i

bb.e:                                             ; preds = %.preheader.i
  %i.f = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not2.i.i = icmp eq i32 %i.f, 0
  br i1 %.not2.i.i, label %spin_acquire_lock.exit.i, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.e, %.preheader.i
  %i.g = add nuw nsw i32 %.0.i.i, 1               ; 2 uses
  %i.h = and i32 %i.g, 63
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %.preheader.i.backedge

bb.f:                                             ; preds = %.critedge.i.i
  %i.j = tail call i32 @sched_yield() #16         ; 0 uses
  br label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %bb.f, %.critedge.i.i
  br label %.preheader.i, !llvm.loop !19

spin_acquire_lock.exit.i:                         ; preds = %bb.e, %bb.d, %.thread
  %i.k = tail call fastcc i32 @sys_trim(ptr noundef nonnull @_gm_, i64 noundef %0)
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !11
  %i.m = and i32 %i.l, 2
  %.not4.i = icmp eq i32 %i.m, 0
  br i1 %.not4.i, label %dlmalloc_trim.exit, label %bb.g

bb.g:                                             ; preds = %spin_acquire_lock.exit.i
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884) release, align 4
  br label %dlmalloc_trim.exit

dlmalloc_trim.exit:                               ; preds = %spin_acquire_lock.exit.i, %bb.g
  ret i32 %i.k
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @boost_cont_grow(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !11
  %i.b = and i32 %i.a, 2
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %spin_acquire_lock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not21 = icmp eq i32 %i.c, 0
  br i1 %.not21, label %spin_acquire_lock.exit, label %.preheader

.preheader:                                       ; preds = %bb.b, %.preheader.backedge
  %.0.i = phi i32 [ %i.f, %.preheader.backedge ], [ 0, %bb.b ]
  %i.d = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), align 4, !tbaa !18
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.preheader
  %i.e = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not2.i = icmp eq i32 %i.e, 0
  br i1 %.not2.i, label %spin_acquire_lock.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %.preheader
  %i.f = add nuw nsw i32 %.0.i, 1                 ; 2 uses
  %i.g = and i32 %i.f, 63
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %.preheader.backedge

bb.d:                                             ; preds = %.critedge.i
  %i.i = tail call i32 @sched_yield() #16         ; 0 uses
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.d, %.critedge.i
  br label %.preheader, !llvm.loop !19

spin_acquire_lock.exit:                           ; preds = %bb.c, %bb.a, %bb.b
  %i.j = getelementptr inbounds i8, ptr %0, i64 -16
  %i.k = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !28
  %i.m = and i64 %i.l, -8
  %i.n = icmp ult i64 %1, 23
  %i.o = add i64 %1, 23
  %i.p = and i64 %i.o, -16
  %i.q = select i1 %i.n, i64 32, i64 %i.p
  %i.r = icmp ult i64 %2, 23
  %i.s = add i64 %2, 23
  %i.t = and i64 %i.s, -16
  %i.u = select i1 %i.r, i64 32, i64 %i.t
  %i.v = tail call fastcc ptr @try_realloc_chunk_with_min(ptr noundef nonnull %i.j, i64 noundef %i.q, i64 noundef %i.u) ; 2 uses
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !11
  %i.x = and i32 %i.w, 2
  %.not22 = icmp eq i32 %i.x, 0
  br i1 %.not22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %spin_acquire_lock.exit
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884) release, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %spin_acquire_lock.exit
  %i.y = icmp ne ptr %i.v, null                   ; 2 uses
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = load i64, ptr %i.k, align 8, !tbaa !28   ; 2 uses
  %i.aa = and i64 %i.z, -8
  %i.ab = and i64 %i.z, 3
  %i.ac = icmp eq i64 %i.ab, 0
  %.neg = select i1 %i.ac, i64 -16, i64 -8
  %i.ad = add i64 %.neg, %i.aa
  store i64 %i.ad, ptr %3, align 8, !tbaa !41
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !28
  %i.ag = and i64 %i.af, -8
  %i.ah = sub i64 %i.ag, %i.m
  %i.ai = load i64, ptr @s_allocated_memory, align 8, !tbaa !41
  %i.aj = add i64 %i.ah, %i.ai
  store i64 %i.aj, ptr @s_allocated_memory, align 8, !tbaa !41
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ak = zext i1 %i.y to i32
  ret i32 %i.ak
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @try_realloc_chunk_with_min(ptr noundef %0, i64 noundef range(i64 0, -15) %1, i64 noundef range(i64 0, -15) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !28   ; 8 uses
  %i.c = and i64 %i.b, -8                         ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c ; 20 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 24), align 8, !tbaa !24 ; 9 uses
  %.not = icmp ult ptr %0, %i.e
  %i.f = and i64 %i.b, 3                          ; 2 uses
  %.not274 = icmp eq i64 %i.f, 1
  %.not275 = icmp eq i64 %i.c, 0
  %i.g = or i1 %.not274, %.not275
end_hunk_0
