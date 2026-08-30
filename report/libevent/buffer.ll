Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libevent/original/buffer?download=true
begin_hunk_0_@evbuffer_expand_singlechain:bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  store ptr %i.by, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 36
  store i32 1, ptr %i.ca, align 4
  %i.cb = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.u, label %.lr.ph.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bu, ptr %i.ce, align 8
  store ptr %i.bu, ptr %0, align 8
  br label %evbuffer_chain_insert.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %.critedge2.i.i.i
  %.0.i.i.i = phi ptr [ %i.ck, %.critedge2.i.i.i ], [ %i.cc, %bb.t ] ; 6 uses
  %.021.i.i.i = phi ptr [ %.0.i.i.i, %.critedge2.i.i.i ], [ %i.cb, %bb.t ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %i.cg = load i64, ptr %i.cf, align 8
  %.not13.i.i.i = icmp eq i64 %i.cg, 0
  br i1 %.not13.i.i.i, label %bb.v, label %.critedge2.i.i.i

bb.v:                                             ; preds = %.lr.ph.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  %i.ci = load i32, ptr %i.ch, align 8
  %i.cj = and i32 %i.ci, 48
  %.not14.i.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i.i, label %.critedge2.i.i.i

.critedge2.i.i.i:                                 ; preds = %bb.v, %.lr.ph.i.i.i
  %i.ck = load ptr, ptr %.0.i.i.i, align 8        ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i, label %evbuffer_free_trailing_empty_chains.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !15

.lr.ph.i.i.i.i:                                   ; preds = %bb.v, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i ], [ %.0.i.i.i, %bb.v ] ; 2 uses
  %i.cl = load ptr, ptr %.05.i.i.i.i, align 8     ; 2 uses
  tail call fastcc void @evbuffer_chain_free(ptr noundef nonnull %.05.i.i.i.i)
  %.not.i.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i, label %evbuffer_free_all_chains.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !16

evbuffer_free_all_chains.exit.i.i.i:              ; preds = %.lr.ph.i.i.i.i
  store ptr null, ptr %.021.i.i.i, align 8
  br label %evbuffer_free_trailing_empty_chains.exit.i.i

evbuffer_free_trailing_empty_chains.exit.i.i:     ; preds = %.critedge2.i.i.i, %evbuffer_free_all_chains.exit.i.i.i
  %.018.i.i.i = phi ptr [ %.021.i.i.i, %evbuffer_free_all_chains.exit.i.i.i ], [ %.0.i.i.i, %.critedge2.i.i.i ] ; 2 uses
  store ptr %i.bu, ptr %.018.i.i.i, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.cn = load i64, ptr %i.cm, align 8
  %.not.i.i = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %evbuffer_free_trailing_empty_chains.exit.i.i
  store ptr %.018.i.i.i, ptr %i.a, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %evbuffer_free_trailing_empty_chains.exit.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bu, ptr %i.co, align 8
  br label %evbuffer_chain_insert.exit.i

evbuffer_chain_insert.exit.i:                     ; preds = %bb.x, %bb.u
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.cq = load i64, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = add i64 %i.cs, %i.cq
  store i64 %i.ct, ptr %i.cr, align 8
  br label %evbuffer_chain_insert_new.exit

evbuffer_chain_insert_new.exit:                   ; preds = %evbuffer_chain_insert.exit.i, %.loopexit.i.i, %.thread, %bb.n, %bb.i, %bb.f, %bb.o, %bb.r
  %.1 = phi ptr [ %i.an, %bb.n ], [ %.pr, %bb.f ], [ %.pr, %bb.i ], [ null, %bb.o ], [ %i.bb, %bb.r ], [ %i.bu, %evbuffer_chain_insert.exit.i ], [ null, %.thread ], [ null, %.loopexit.i.i ]
  ret ptr %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @evbuffer_read_setup_vecs_(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, i32 noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, 8
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.m, %i.k
  %i.o = icmp eq i64 %i.i, %i.n
  br i1 %i.o, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.b, %bb.c
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.c
  %.043 = phi ptr [ %i.d, %.critedge ], [ %i.c, %bb.c ] ; 2 uses
  %i.p = icmp sgt i32 %3, 0
  %i.q = icmp ne i64 %1, 0
  %i.r = and i1 %i.p, %i.q
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %.04452 = load ptr, ptr %.043, align 8          ; 2 uses
  %.not49 = icmp eq i32 %5, 0
  %i.s = zext nneg i32 %3 to i64                  ; 2 uses
  br i1 %.not49, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.f
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %bb.f ], [ 0, %.lr.ph ] ; 2 uses
  %.04455.us = phi ptr [ %.044.us, %bb.f ], [ %.04452, %.lr.ph ] ; 8 uses
  %.04253.us = phi i64 [ %i.an, %bb.f ], [ 0, %.lr.ph ]
  %i.t = getelementptr inbounds nuw i8, ptr %.04455.us, i64 32
  %i.u = load i32, ptr %i.t, align 8
  %i.v = and i32 %i.u, 8
  %.not48.us = icmp eq i32 %i.v, 0
  br i1 %.not48.us, label %bb.e, label %.lr.ph.split.us._crit_edge

.lr.ph.split.us._crit_edge:                       ; preds = %.lr.ph.split.us
  %.phi.trans.insert64 = getelementptr inbounds nuw i8, ptr %.04455.us, i64 16
  %.pre65 = load i64, ptr %.phi.trans.insert64, align 8
  %.phi.trans.insert66 = getelementptr inbounds nuw i8, ptr %.04455.us, i64 24
  %.pre67 = load i64, ptr %.phi.trans.insert66, align 8
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.split.us
  %i.w = getelementptr inbounds nuw i8, ptr %.04455.us, i64 8
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.04455.us, i64 16
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.04455.us, i64 24
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = add i64 %i.z, %i.ab
  %i.ad = sub i64 %i.x, %i.ac
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us._crit_edge, %bb.e
  %i.ae = phi i64 [ %i.ab, %bb.e ], [ %.pre67, %.lr.ph.split.us._crit_edge ]
  %i.af = phi i64 [ %i.z, %bb.e ], [ %.pre65, %.lr.ph.split.us._crit_edge ]
  %i.ag = phi i64 [ %i.ad, %bb.e ], [ 0, %.lr.ph.split.us._crit_edge ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.04455.us, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.af
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ae
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv59 ; 2 uses
  store ptr %i.ak, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %i.ag, ptr %i.am, align 8
  %i.an = add i64 %i.ag, %.04253.us               ; 2 uses
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 3 uses
  %.044.us = load ptr, ptr %.04455.us, align 8
  %i.ao = icmp samesign ult i64 %indvars.iv.next60, %i.s
  %i.ap = icmp ult i64 %i.an, %1
  %i.aq = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %i.aq, label %.lr.ph.split.us, label %._crit_edge.loopexit, !llvm.loop !19

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %.lr.ph ] ; 2 uses
  %.04455 = phi ptr [ %.044, %bb.h ], [ %.04452, %.lr.ph ] ; 8 uses
  %.04253 = phi i64 [ %i.bn, %bb.h ], [ 0, %.lr.ph ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.04455, i64 32
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = and i32 %i.as, 8
  %.not48 = icmp eq i32 %i.at, 0
  br i1 %.not48, label %bb.g, label %.lr.ph.split._crit_edge

.lr.ph.split._crit_edge:                          ; preds = %.lr.ph.split
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.04455, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert62 = getelementptr inbounds nuw i8, ptr %.04455, i64 24
  %.pre63 = load i64, ptr %.phi.trans.insert62, align 8
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.split
  %i.au = getelementptr inbounds nuw i8, ptr %.04455, i64 8
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.04455, i64 16
  %i.ax = load i64, ptr %i.aw, align 8            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.04455, i64 24
  %i.az = load i64, ptr %i.ay, align 8            ; 2 uses
  %i.ba = add i64 %i.ax, %i.az
  %i.bb = sub i64 %i.av, %i.ba
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.split._crit_edge, %bb.g
  %i.bc = phi i64 [ %i.az, %bb.g ], [ %.pre63, %.lr.ph.split._crit_edge ]
  %i.bd = phi i64 [ %i.ax, %bb.g ], [ %.pre, %.lr.ph.split._crit_edge ]
  %i.be = phi i64 [ %i.bb, %bb.g ], [ 0, %.lr.ph.split._crit_edge ]
  %i.bf = sub nsw i64 %1, %.04253
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.be, i64 %i.bf) ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.04455, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 %i.bd
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bc
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  store ptr %i.bk, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 %i.bg, ptr %i.bm, align 8
  %i.bn = add i64 %i.bg, %.04253                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %.044 = load ptr, ptr %.04455, align 8
  %i.bo = icmp samesign ult i64 %indvars.iv.next, %i.s
  %i.bp = icmp ult i64 %i.bn, %1
  %i.bq = select i1 %i.bo, i1 %i.bp, i1 false
  br i1 %i.bq, label %.lr.ph.split, label %._crit_edge.loopexit56, !llvm.loop !19

._crit_edge.loopexit:                             ; preds = %bb.f
  %i.br = trunc nuw nsw i64 %indvars.iv.next60 to i32
  br label %._crit_edge

._crit_edge.loopexit56:                           ; preds = %bb.h
  %i.bs = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit56, %._crit_edge.loopexit, %bb.d
  %.041.lcssa = phi i32 [ 0, %bb.d ], [ %i.br, %._crit_edge.loopexit ], [ %i.bs, %._crit_edge.loopexit56 ]
  store ptr %.043, ptr %4, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %._crit_edge
  %.045 = phi i32 [ %.041.lcssa, %._crit_edge ], [ -1, %bb.a ]
  ret i32 %.045
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @evbuffer_commit_space(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.d = tail call i32 %i.c(i32 noundef 0, ptr noundef nonnull %i.b) #16 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i8, ptr %i.e, align 8
  %i.g = and i8 %i.f, 4
  %.not79 = icmp eq i8 %i.g, 0
  br i1 %.not79, label %bb.d, label %.loopexit95

bb.d:                                             ; preds = %bb.c
  switch i32 %2, label %bb.l [
    i32 0, label %.loopexit95
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 6 uses
  %.not80 = icmp eq ptr %i.i, null
  br i1 %.not80, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %1, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8              ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  %i.s = icmp eq ptr %i.j, %i.r
  br i1 %i.s, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.w = load i32, ptr %i.v, align 8
  %i.x = and i32 %i.w, 8
  %.not87 = icmp eq i32 %i.x, 0
  br i1 %.not87, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = add i64 %i.q, %i.n
  %i.ab = sub i64 %i.z, %i.aa
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ac = phi i64 [ %i.ab, %bb.h ], [ 0, %bb.g ]
  %i.ad = icmp ugt i64 %i.u, %i.ac
  br i1 %i.ad, label %.loopexit95, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = add i64 %i.u, %i.q
  store i64 %i.ae, ptr %i.p, align 8
  %i.af = load i64, ptr %i.t, align 8             ; 2 uses
  %.not88 = icmp eq i64 %i.af, 0
  br i1 %.not88, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @advance_last_with_data(ptr noundef nonnull %0)
  br label %.loopexit

bb.l:                                             ; preds = %bb.d, %bb.e, %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 6 uses
  %.not81 = icmp eq ptr %i.ai, null
  br i1 %.not81, label %.loopexit95, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = and i32 %i.ak, 8
  %.not82 = icmp eq i32 %i.al, 0
  br i1 %.not82, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = add i64 %i.ar, %i.ap
  %i.at = icmp eq i64 %i.an, %i.as
  br i1 %i.at, label %.critedge, label %bb.o

.critedge:                                        ; preds = %bb.m, %bb.n
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %bb.n
  %.070 = phi ptr [ %i.ai, %.critedge ], [ %i.ah, %bb.n ] ; 2 uses
  %i.au = icmp sgt i32 %2, 0
  br i1 %i.au, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.o
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

bb.p:                                             ; preds = %bb.t
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph102.preheader, label %.lr.ph, !llvm.loop !20

.lr.ph102.preheader:                              ; preds = %bb.p
  %wide.trip.count107 = zext nneg i32 %2 to i64
  br label %.lr.ph102

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.p ] ; 2 uses
  %.07198.in = phi ptr [ %.070, %.lr.ph.preheader ], [ %.07198, %bb.p ]
  %.07198 = load ptr, ptr %.07198.in, align 8     ; 7 uses
  %.not84 = icmp eq ptr %.07198, null
  br i1 %.not84, label %.loopexit95, label %bb.q

bb.q:                                             ; preds = %.lr.ph
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.07198, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.07198, i64 16
  %i.ba = load i64, ptr %i.az, align 8            ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ay, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %.07198, i64 24
  %i.bd = load i64, ptr %i.bc, align 8            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bd
  %.not85 = icmp eq ptr %i.aw, %i.be
  br i1 %.not85, label %bb.r, label %.loopexit95

bb.r:                                             ; preds = %bb.q
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.07198, i64 32
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = and i32 %i.bi, 8
  %.not86 = icmp eq i32 %i.bj, 0
  br i1 %.not86, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds nuw i8, ptr %.07198, i64 8
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = add i64 %i.bd, %i.ba
  %i.bn = sub i64 %i.bl, %i.bm
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.bo = phi i64 [ %i.bn, %bb.s ], [ 0, %bb.r ]
  %i.bp = icmp ugt i64 %i.bg, %i.bo
  br i1 %i.bp, label %.loopexit95, label %bb.p

.lr.ph102:                                        ; preds = %.lr.ph102.preheader, %bb.v
  %indvars.iv104 = phi i64 [ 0, %.lr.ph102.preheader ], [ %indvars.iv.next105, %bb.v ] ; 2 uses
  %.066100 = phi i64 [ 0, %.lr.ph102.preheader ], [ %i.by, %bb.v ]
  %.06999 = phi ptr [ %.070, %.lr.ph102.preheader ], [ %i.bz, %bb.v ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv104
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = load ptr, ptr %.06999, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = add i64 %i.bv, %i.bs
  store i64 %i.bw, ptr %i.bu, align 8
  %i.bx = load i64, ptr %i.br, align 8            ; 2 uses
  %i.by = add i64 %i.bx, %.066100                 ; 2 uses
  %.not83 = icmp eq i64 %i.bx, 0
  br i1 %.not83, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph102
  store ptr %.06999, ptr %i.ag, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph102
  %i.bz = load ptr, ptr %.06999, align 8
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %exitcond108.not = icmp eq i64 %indvars.iv.next105, %wide.trip.count107
  br i1 %exitcond108.not, label %.loopexit, label %.lr.ph102, !llvm.loop !21

.loopexit:                                        ; preds = %bb.v, %bb.o, %bb.j, %bb.k
  %.167 = phi i64 [ %i.af, %bb.k ], [ 0, %bb.j ], [ 0, %bb.o ], [ %i.by, %bb.v ]
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cb = load <2 x i64>, ptr %i.ca, align 8
  %i.cc = insertelement <2 x i64> poison, i64 %.167, i64 0
  %i.cd = shufflevector <2 x i64> %i.cc, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ce = add <2 x i64> %i.cb, %i.cd
  store <2 x i64> %i.ce, ptr %i.ca, align 8
  tail call void @evbuffer_invoke_callbacks_(ptr noundef %0)
  br label %.loopexit95

.loopexit95:                                      ; preds = %bb.q, %bb.t, %.lr.ph, %bb.d, %bb.l, %bb.i, %bb.c, %.loopexit
  %.068 = phi i32 [ -1, %bb.c ], [ -1, %bb.l ], [ -1, %bb.i ], [ 0, %.loopexit ], [ %2, %bb.d ], [ -1, %.lr.ph ], [ -1, %bb.t ], [ -1, %bb.q ]
  %i.cf = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not89 = icmp eq ptr %i.cf, null
  br i1 %.not89, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.loopexit95
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.ch = tail call i32 %i.cg(i32 noundef 0, ptr noundef nonnull %i.cf) #16 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.loopexit95
  ret i32 %.068
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @advance_last_with_data(ptr nofree noundef captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not1416 = icmp eq ptr %i.d, null
  br i1 %.not1416, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %i.e = phi ptr [ %i.j, %bb.c ], [ %i.d, %.preheader ] ; 2 uses
  %i.f = phi ptr [ %i.i, %bb.c ], [ %i.c, %.preheader ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.h = load i64, ptr %i.g, align 8
  %.not15 = icmp eq i64 %i.h, 0
  br i1 %.not15, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  store ptr %i.f, ptr %i.a, align 8
  %.pre = load ptr, ptr %i.f, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.i = phi ptr [ %.pre, %bb.b ], [ %i.e, %.lr.ph ] ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not14 = icmp eq ptr %i.j, null
  br i1 %.not14, label %.loopexit, label %.lr.ph, !llvm.loop !22

.loopexit:                                        ; preds = %bb.c, %.preheader, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @evbuffer_add_buffer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 5 uses
  %i.e = icmp ne ptr %i.b, null
  %i.f = icmp ne ptr %i.d, null
  %i.g = icmp ugt ptr %i.b, %i.d
  %i.h = and i1 %i.f, %i.g
  %or.cond72 = select i1 %i.e, i1 %i.h, i1 false  ; 2 uses
  %.061.a = select i1 %or.cond72, ptr %i.b, ptr %i.d ; 2 uses
  %.060 = select i1 %or.cond72, ptr %i.d, ptr %i.b ; 2 uses
  %.not = icmp eq ptr %.060, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.j = tail call i32 %i.i(i32 noundef 0, ptr noundef nonnull %.060) #16 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = icmp ne ptr %i.b, %i.d
  %i.l = icmp ne ptr %.061.a, null
  %or.cond5 = and i1 %i.k, %i.l
  br i1 %or.cond5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.n = tail call i32 %i.m(i32 noundef 0, ptr noundef nonnull %.061.a) #16 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.p = load i64, ptr %i.o, align 8              ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8
  %i.s = icmp eq i64 %i.p, 0
  %i.t = icmp eq ptr %0, %1
  %or.cond73 = or i1 %i.t, %i.s
  br i1 %or.cond73, label %PRESERVE_PINNED.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load i8, ptr %i.u, align 8
  %i.w = and i8 %i.v, 4
  %.not69 = icmp eq i8 %i.w, 0
  br i1 %.not69, label %bb.g, label %PRESERVE_PINNED.exit

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.y = load i8, ptr %i.x, align 8
  %i.z = and i8 %i.y, 2
  %.not70 = icmp eq i8 %i.z, 0
  br i1 %.not70, label %bb.h, label %PRESERVE_PINNED.exit

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr i8, ptr %1, i64 8         ; 6 uses
  %.val.i = load ptr, ptr %i.aa, align 8          ; 4 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %bb.n, label %HAS_PINNED_R.exit.i

HAS_PINNED_R.exit.i:                              ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = and i32 %i.ac, 16
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %bb.n, label %bb.i

bb.i:                                             ; preds = %HAS_PINNED_R.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = and i32 %i.ai, 16
  %.not35.i = icmp eq i32 %i.aj, 0
  %spec.select.i = select i1 %.not35.i, ptr %i.ag, ptr %i.af ; 2 uses
  %i.ak = load ptr, ptr %spec.select.i, align 8   ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 5 uses
  %i.am = load i64, ptr %i.al, align 8            ; 4 uses
  %.not36.i = icmp eq i64 %i.am, 0
  br i1 %.not36.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = icmp ugt i64 %i.am, 9223372036854775759
  br i1 %i.an, label %PRESERVE_PINNED.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = add nuw nsw i64 %i.am, 48               ; 2 uses
  %i.ap = icmp samesign ult i64 %i.am, 4611686018427387855
  br i1 %i.ap, label %.preheader.i.i, label %.loopexit.i.i

.preheader.i.i:                                   ; preds = %bb.k, %.preheader.i.i
  %.0.i.i = phi i64 [ %i.ar, %.preheader.i.i ], [ 1024, %bb.k ] ; 3 uses
  %i.aq = icmp ult i64 %.0.i.i, %i.ao
  %i.ar = shl nuw nsw i64 %.0.i.i, 1
  br i1 %i.aq, label %.preheader.i.i, label %.loopexit.i.i, !llvm.loop !14

.loopexit.i.i:                                    ; preds = %.preheader.i.i, %bb.k
  %.1.i.i = phi i64 [ %i.ao, %bb.k ], [ %.0.i.i, %.preheader.i.i ] ; 2 uses
  %i.as = tail call ptr @event_mm_malloc_(i64 noundef %.1.i.i) #16 ; 9 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %PRESERVE_PINNED.exit, label %bb.l

bb.l:                                             ; preds = %.loopexit.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.as, i8 0, i64 40, i1 false)
  %i.au = add i64 %.1.i.i, -48
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %i.au, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 48 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  store ptr %i.aw, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 36
  store i32 1, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 3 uses
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds i8, ptr %i.ba, i64 %i.bc
  %i.be = load i64, ptr %i.al, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aw, ptr align 1 %i.bd, i64 %i.be, i1 false)
  %i.bf = load i64, ptr %i.al, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i64 %i.bf, ptr %i.bg, align 8
  %i.bh = load ptr, ptr %i.ae, align 8
  store ptr %i.as, ptr %i.bh, align 8
  store ptr %i.as, ptr %i.aa, align 8
  %i.bi = load i64, ptr %i.al, align 8
  %i.bj = load i64, ptr %i.bb, align 8
  %i.bk = add i64 %i.bj, %i.bi
  store i64 %i.bk, ptr %i.bb, align 8
  store i64 0, ptr %i.al, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  store ptr %i.ag, ptr %i.aa, align 8
  store ptr null, ptr %spec.select.i, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %HAS_PINNED_R.exit.i, %bb.h
  %.082.ph = phi ptr [ null, %bb.h ], [ null, %HAS_PINNED_R.exit.i ], [ %i.ak, %bb.m ], [ %i.ak, %bb.l ] ; 2 uses
  %.081.ph = phi ptr [ null, %bb.h ], [ null, %HAS_PINNED_R.exit.i ], [ %.val.i, %bb.m ], [ %.val.i, %bb.l ]
  %i.bl = icmp eq i64 %i.r, 0
  br i1 %i.bl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bm = load ptr, ptr %0, align 8               ; 2 uses
  %.not4.i = icmp eq ptr %i.bm, null
  br i1 %.not4.i, label %evbuffer_free_all_chains.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o, %.lr.ph.i
  %.05.i = phi ptr [ %i.bn, %.lr.ph.i ], [ %i.bm, %bb.o ] ; 2 uses
  %i.bn = load ptr, ptr %.05.i, align 8           ; 2 uses
  tail call fastcc void @evbuffer_chain_free(ptr noundef nonnull %.05.i)
  %.not.i75 = icmp eq ptr %i.bn, null
  br i1 %.not.i75, label %evbuffer_free_all_chains.exit, label %.lr.ph.i, !llvm.loop !16

evbuffer_free_all_chains.exit:                    ; preds = %.lr.ph.i, %bb.o
  %i.bo = load ptr, ptr %1, align 8
  store ptr %i.bo, ptr %0, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  %i.br = icmp eq ptr %i.bq, %1
  %spec.select.i76 = select i1 %i.br, ptr %0, ptr %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %spec.select.i76, ptr %i.bs, align 8
  %i.bt = load ptr, ptr %i.aa, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bt, ptr %i.bu, align 8
  %i.bv = load i64, ptr %i.o, align 8
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.019.i.i = load ptr, ptr %i.bw, align 8        ; 3 uses
  %i.bx = load ptr, ptr %.019.i.i, align 8        ; 2 uses
  %.not20.i.i = icmp eq ptr %i.bx, null
  br i1 %.not20.i.i, label %APPEND_CHAIN.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.p, %.critedge2.i.i
  %.0.i.i77 = phi ptr [ %i.cd, %.critedge2.i.i ], [ %i.bx, %bb.p ] ; 6 uses
  %.021.i.i = phi ptr [ %.0.i.i77, %.critedge2.i.i ], [ %.019.i.i, %bb.p ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i.i77, i64 24
  %i.bz = load i64, ptr %i.by, align 8
  %.not13.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not13.i.i, label %bb.q, label %.critedge2.i.i

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i.i77, i64 32
  %i.cb = load i32, ptr %i.ca, align 8
  %i.cc = and i32 %i.cb, 48
  %.not14.i.i = icmp eq i32 %i.cc, 0
  br i1 %.not14.i.i, label %.lr.ph.i.i.i, label %.critedge2.i.i

.critedge2.i.i:                                   ; preds = %bb.q, %.lr.ph.i.i
  %i.cd = load ptr, ptr %.0.i.i77, align 8        ; 2 uses
  %.not.i.i78 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i78, label %APPEND_CHAIN.exit, label %.lr.ph.i.i, !llvm.loop !15

.lr.ph.i.i.i:                                     ; preds = %bb.q, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i ], [ %.0.i.i77, %bb.q ] ; 2 uses
  %i.ce = load ptr, ptr %.05.i.i.i, align 8       ; 2 uses
  tail call fastcc void @evbuffer_chain_free(ptr noundef nonnull %.05.i.i.i)
  %.not.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i, label %evbuffer_free_all_chains.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !16

evbuffer_free_all_chains.exit.i.i:                ; preds = %.lr.ph.i.i.i
  store ptr null, ptr %.021.i.i, align 8
  br label %APPEND_CHAIN.exit

APPEND_CHAIN.exit:                                ; preds = %.critedge2.i.i, %bb.p, %evbuffer_free_all_chains.exit.i.i
  %.018.i.i = phi ptr [ %.021.i.i, %evbuffer_free_all_chains.exit.i.i ], [ %.019.i.i, %bb.p ], [ %.0.i.i77, %.critedge2.i.i ] ; 2 uses
  %i.cf = load ptr, ptr %1, align 8
  store ptr %i.cf, ptr %.018.i.i, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8            ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %1
  %.018.i..i = select i1 %i.ci, ptr %.018.i.i, ptr %i.ch
  store ptr %.018.i..i, ptr %i.bw, align 8
  %i.cj = load ptr, ptr %i.aa, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cj, ptr %i.ck, align 8
  %i.cl = load i64, ptr %i.o, align 8
  %i.cm = load i64, ptr %i.q, align 8
  %i.cn = add i64 %i.cm, %i.cl
  br label %bb.r

bb.r:                                             ; preds = %APPEND_CHAIN.exit, %evbuffer_free_all_chains.exit
  %storemerge = phi i64 [ %i.cn, %APPEND_CHAIN.exit ], [ %i.bv, %evbuffer_free_all_chains.exit ]
  store i64 %storemerge, ptr %i.q, align 8
  %.not.i79 = icmp eq ptr %.082.ph, null
  br i1 %.not.i79, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %RESTORE_PINNED.exit

bb.t:                                             ; preds = %bb.r
  store ptr %.082.ph, ptr %1, align 8
  store ptr %.081.ph, ptr %i.aa, align 8
  br label %RESTORE_PINNED.exit

RESTORE_PINNED.exit:                              ; preds = %bb.s, %bb.t
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %1, ptr %i.co, align 8
  store i64 0, ptr %i.o, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8
  %i.cr = add i64 %i.cq, %i.p
  store i64 %i.cr, ptr %i.cp, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8
  %i.cu = add i64 %i.ct, %i.p
  store i64 %i.cu, ptr %i.cs, align 8
  tail call void @evbuffer_invoke_callbacks_(ptr noundef nonnull %1)
  tail call void @evbuffer_invoke_callbacks_(ptr noundef nonnull %0)
  br label %PRESERVE_PINNED.exit

PRESERVE_PINNED.exit:                             ; preds = %.loopexit.i.i, %bb.j, %bb.f, %bb.g, %bb.e, %RESTORE_PINNED.exit
  %.0.a = phi i32 [ 0, %bb.e ], [ 0, %RESTORE_PINNED.exit ], [ -1, %bb.f ], [ -1, %bb.g ], [ -1, %bb.j ], [ -1, %.loopexit.i.i ]
  %i.cv = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.cw = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.cx = icmp ne ptr %i.cw, null
  %i.cy = icmp ugt ptr %i.cv, %i.cw
  %or.cond74 = and i1 %i.cy, %i.cx                ; 2 uses
  %.059 = select i1 %or.cond74, ptr %i.cw, ptr %i.cv ; 2 uses
  %.058 = select i1 %or.cond74, ptr %i.cv, ptr %i.cw ; 2 uses
  %i.cz = icmp ne ptr %i.cv, %i.cw
  %i.da = icmp ne ptr %.058, null
  %or.cond7 = and i1 %i.cz, %i.da
  br i1 %or.cond7, label %bb.u, label %bb.v

bb.u:                                             ; preds = %PRESERVE_PINNED.exit
  %i.db = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.dc = tail call i32 %i.db(i32 noundef 0, ptr noundef nonnull %.058) #16 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %PRESERVE_PINNED.exit, %bb.u
  %.not71 = icmp eq ptr %.059, null
  br i1 %.not71, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.de = tail call i32 %i.dd(i32 noundef 0, ptr noundef nonnull %.059) #16 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  ret i32 %.0.a
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @evbuffer_add_buffer_reference(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 5 uses
  %i.e = icmp ne ptr %i.b, null
  %i.f = icmp ne ptr %i.d, null
  %i.g = icmp ugt ptr %i.b, %i.d
  %i.h = and i1 %i.f, %i.g
  %or.cond72 = select i1 %i.e, i1 %i.h, i1 false  ; 2 uses
  %.062.a = select i1 %or.cond72, ptr %i.d, ptr %i.b ; 2 uses
  %.061.a = select i1 %or.cond72, ptr %i.b, ptr %i.d ; 2 uses
  %.not = icmp eq ptr %.062.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.j = tail call i32 %i.i(i32 noundef 0, ptr noundef nonnull %.062.a) #16 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = icmp ne ptr %i.b, %i.d
  %i.l = icmp ne ptr %.061.a, null
  %or.cond5 = and i1 %i.k, %i.l
  br i1 %or.cond5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.n = tail call i32 %i.m(i32 noundef 0, ptr noundef nonnull %.061.a) #16 ; 0 uses
end_hunk_0
begin_hunk_1_@evbuffer_add_buffer_reference:bb.a
  br i1 %.not31.i, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %.041.i, i64 32 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = and i32 %i.ak, 64
  %.not32.i = icmp eq i32 %i.al, 0
  br i1 %.not32.i, label %.loopexit.i.i, label %bb.u

.loopexit.i.i:                                    ; preds = %bb.l
  %i.am = tail call ptr @event_mm_malloc_(i64 noundef 1024) #16 ; 14 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.loopexit.i.i
  tail call void (ptr, ...) @event_warn(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.APPEND_CHAIN_MULTICAST) #16
  br label %APPEND_CHAIN_MULTICAST.exit

bb.n:                                             ; preds = %.loopexit.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.am, i8 0, i64 40, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  store i64 976, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 48 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 40 ; 2 uses
  store ptr %i.ap, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 36
  store i32 1, ptr %i.ar, align 4
  %i.as = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %.thread.i.i, label %bb.o

.thread.i.i:                                      ; preds = %bb.n
  %i.at = load i32, ptr %i.ae, align 8
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.ae, align 8
  br label %evbuffer_incref_.exit.i

bb.o:                                             ; preds = %bb.n
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.aw = tail call i32 %i.av(i32 noundef 0, ptr noundef nonnull %i.as) #16, !inline_history !24 ; 0 uses
  %.pr.i.i = load ptr, ptr %i.a, align 8          ; 2 uses
  %i.ax = load i32, ptr %i.ae, align 8
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.ae, align 8
  %.not6.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not6.i.i, label %evbuffer_incref_.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.ba = tail call i32 %i.az(i32 noundef 0, ptr noundef nonnull %.pr.i.i) #16, !inline_history !24 ; 0 uses
  br label %evbuffer_incref_.exit.i

evbuffer_incref_.exit.i:                          ; preds = %bb.p, %bb.o, %.thread.i.i
  store ptr %1, ptr %i.ap, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.041.i, i64 36 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.bb, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  store ptr %.041.i, ptr %i.be, align 8
  %i.bf = load i32, ptr %i.aj, align 8
  %i.bg = or i32 %i.bf, 8
  store i32 %i.bg, ptr %i.aj, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.041.i, i64 8
  %i.bi = load i64, ptr %i.bh, align 8
  store i64 %i.bi, ptr %i.ao, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.041.i, i64 16
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %i.bk, ptr %i.bl, align 8
  %i.bm = load i64, ptr %i.ah, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.am, i64 24 ; 3 uses
  store i64 %i.bm, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8
  %i.bq = or i32 %i.bp, 136
  store i32 %i.bq, ptr %i.bo, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %.041.i, i64 40
  %i.bs = load ptr, ptr %i.br, align 8
  store ptr %i.bs, ptr %i.aq, align 8
  %i.bt = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.q, label %.lr.ph.i.i.i

bb.q:                                             ; preds = %evbuffer_incref_.exit.i
  store ptr %i.am, ptr %i.ag, align 8
  store ptr %i.am, ptr %0, align 8
  br label %evbuffer_chain_insert.exit.i

.lr.ph.i.i.i:                                     ; preds = %evbuffer_incref_.exit.i, %.critedge2.i.i.i
  %.0.i.i.i = phi ptr [ %i.cb, %.critedge2.i.i.i ], [ %i.bu, %evbuffer_incref_.exit.i ] ; 6 uses
  %.021.i.i.i = phi ptr [ %.0.i.i.i, %.critedge2.i.i.i ], [ %i.bt, %evbuffer_incref_.exit.i ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %i.bx = load i64, ptr %i.bw, align 8
  %.not13.i.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not13.i.i.i, label %bb.r, label %.critedge2.i.i.i

bb.r:                                             ; preds = %.lr.ph.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  %i.bz = load i32, ptr %i.by, align 8
  %i.ca = and i32 %i.bz, 48
  %.not14.i.i.i = icmp eq i32 %i.ca, 0
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i.i, label %.critedge2.i.i.i

.critedge2.i.i.i:                                 ; preds = %bb.r, %.lr.ph.i.i.i
  %i.cb = load ptr, ptr %.0.i.i.i, align 8        ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i, label %evbuffer_free_trailing_empty_chains.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !15

.lr.ph.i.i.i.i:                                   ; preds = %bb.r, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i ], [ %.0.i.i.i, %bb.r ] ; 2 uses
  %i.cc = load ptr, ptr %.05.i.i.i.i, align 8     ; 2 uses
  tail call fastcc void @evbuffer_chain_free(ptr noundef nonnull %.05.i.i.i.i)
  %.not.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i, label %evbuffer_free_all_chains.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !16

evbuffer_free_all_chains.exit.i.i.i:              ; preds = %.lr.ph.i.i.i.i
  store ptr null, ptr %.021.i.i.i, align 8
  br label %evbuffer_free_trailing_empty_chains.exit.i.i

evbuffer_free_trailing_empty_chains.exit.i.i:     ; preds = %.critedge2.i.i.i, %evbuffer_free_all_chains.exit.i.i.i
  %.018.i.i.i = phi ptr [ %.021.i.i.i, %evbuffer_free_all_chains.exit.i.i.i ], [ %.0.i.i.i, %.critedge2.i.i.i ] ; 2 uses
  store ptr %i.am, ptr %.018.i.i.i, align 8
  %i.cd = load i64, ptr %i.bn, align 8
  %.not.i34.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i34.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %evbuffer_free_trailing_empty_chains.exit.i.i
  store ptr %.018.i.i.i, ptr %i.af, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %evbuffer_free_trailing_empty_chains.exit.i.i
  store ptr %i.am, ptr %i.ag, align 8
  br label %evbuffer_chain_insert.exit.i

evbuffer_chain_insert.exit.i:                     ; preds = %bb.t, %bb.q
  %i.ce = load i64, ptr %i.bn, align 8
  %i.cf = load i64, ptr %i.q, align 8
  %i.cg = add i64 %i.cf, %i.ce
  store i64 %i.cg, ptr %i.q, align 8
  br label %bb.u

bb.u:                                             ; preds = %evbuffer_chain_insert.exit.i, %bb.l, %bb.k
  %.0.i = load ptr, ptr %.041.i, align 8          ; 2 uses
  %.not.i76 = icmp eq ptr %.0.i, null
  br i1 %.not.i76, label %APPEND_CHAIN_MULTICAST.exit, label %bb.k, !llvm.loop !25

APPEND_CHAIN_MULTICAST.exit:                      ; preds = %bb.u, %bb.j, %bb.m
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = add i64 %i.ci, %i.p
  store i64 %i.cj, ptr %i.ch, align 8
  tail call void @evbuffer_invoke_callbacks_(ptr noundef %0)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.f, %bb.e, %APPEND_CHAIN_MULTICAST.exit
  %.060 = phi i32 [ 0, %bb.e ], [ 0, %APPEND_CHAIN_MULTICAST.exit ], [ -1, %bb.f ], [ -1, %bb.g ]
  %i.ck = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.cl = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.cm = icmp ne ptr %i.cl, null
  %i.cn = icmp ugt ptr %i.ck, %i.cl
  %or.cond74 = and i1 %i.cn, %i.cm                ; 2 uses
  %.059 = select i1 %or.cond74, ptr %i.cl, ptr %i.ck ; 2 uses
  %.058 = select i1 %or.cond74, ptr %i.ck, ptr %i.cl ; 2 uses
  %i.co = icmp ne ptr %i.ck, %i.cl
  %i.cp = icmp ne ptr %.058, null
  %or.cond7 = and i1 %i.co, %i.cp
  br i1 %or.cond7, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.loopexit
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.cr = tail call i32 %i.cq(i32 noundef 0, ptr noundef nonnull %.058) #16 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %.loopexit, %bb.v
  %.not71 = icmp eq ptr %.059, null
  br i1 %.not71, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.ct = tail call i32 %i.cs(i32 noundef 0, ptr noundef nonnull %.059) #16 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  ret i32 %.060
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @evbuffer_prepend_buffer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 5 uses
  %i.e = icmp ne ptr %i.b, null
  %i.f = icmp ne ptr %i.d, null
  %i.g = icmp ugt ptr %i.b, %i.d
  %i.h = and i1 %i.f, %i.g
  %or.cond73 = select i1 %i.e, i1 %i.h, i1 false  ; 2 uses
  %.061.a = select i1 %or.cond73, ptr %i.b, ptr %i.d ; 2 uses
  %.060 = select i1 %or.cond73, ptr %i.d, ptr %i.b ; 2 uses
  %.not = icmp eq ptr %.060, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.j = tail call i32 %i.i(i32 noundef 0, ptr noundef nonnull %.060) #16 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = icmp ne ptr %i.b, %i.d
  %i.l = icmp ne ptr %.061.a, null
  %or.cond5 = and i1 %i.k, %i.l
  br i1 %or.cond5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.n = tail call i32 %i.m(i32 noundef 0, ptr noundef nonnull %.061.a) #16 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.p = load i64, ptr %i.o, align 8              ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.r = load i64, ptr %i.q, align 8
  %.not69 = icmp eq i64 %i.p, 0
  %i.s = icmp eq ptr %1, %0
  %or.cond74 = or i1 %i.s, %.not69
  br i1 %or.cond74, label %PRESERVE_PINNED.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = load i8, ptr %i.t, align 8
  %i.v = and i8 %i.u, 2
  %.not70 = icmp eq i8 %i.v, 0
  br i1 %.not70, label %bb.g, label %PRESERVE_PINNED.exit

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.x = load i8, ptr %i.w, align 8
  %i.y = and i8 %i.x, 2
  %.not71 = icmp eq i8 %i.y, 0
  br i1 %.not71, label %bb.h, label %PRESERVE_PINNED.exit

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr i8, ptr %1, i64 8          ; 7 uses
  %.val.i = load ptr, ptr %i.z, align 8           ; 4 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %bb.n, label %HAS_PINNED_R.exit.i

HAS_PINNED_R.exit.i:                              ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = and i32 %i.ab, 16
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %bb.n, label %bb.i

bb.i:                                             ; preds = %HAS_PINNED_R.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = and i32 %i.ah, 16
  %.not35.i = icmp eq i32 %i.ai, 0
  %spec.select.i = select i1 %.not35.i, ptr %i.af, ptr %i.ae ; 2 uses
  %i.aj = load ptr, ptr %spec.select.i, align 8   ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 5 uses
  %i.al = load i64, ptr %i.ak, align 8            ; 4 uses
  %.not36.i = icmp eq i64 %i.al, 0
  br i1 %.not36.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = icmp ugt i64 %i.al, 9223372036854775759
  br i1 %i.am, label %PRESERVE_PINNED.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add nuw nsw i64 %i.al, 48               ; 2 uses
  %i.ao = icmp samesign ult i64 %i.al, 4611686018427387855
  br i1 %i.ao, label %.preheader.i.i, label %.loopexit.i.i

.preheader.i.i:                                   ; preds = %bb.k, %.preheader.i.i
  %.0.i.i = phi i64 [ %i.aq, %.preheader.i.i ], [ 1024, %bb.k ] ; 3 uses
  %i.ap = icmp ult i64 %.0.i.i, %i.an
  %i.aq = shl nuw nsw i64 %.0.i.i, 1
  br i1 %i.ap, label %.preheader.i.i, label %.loopexit.i.i, !llvm.loop !14

.loopexit.i.i:                                    ; preds = %.preheader.i.i, %bb.k
  %.1.i.i = phi i64 [ %i.an, %bb.k ], [ %.0.i.i, %.preheader.i.i ] ; 2 uses
  %i.ar = tail call ptr @event_mm_malloc_(i64 noundef %.1.i.i) #16 ; 9 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %PRESERVE_PINNED.exit, label %bb.l

bb.l:                                             ; preds = %.loopexit.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, i8 0, i64 40, i1 false)
  %i.at = add i64 %.1.i.i, -48
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %i.at, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 48 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store ptr %i.av, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 36
  store i32 1, ptr %i.ax, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds i8, ptr %i.az, i64 %i.bb
  %i.bd = load i64, ptr %i.ak, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.av, ptr align 1 %i.bc, i64 %i.bd, i1 false)
  %i.be = load i64, ptr %i.ak, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store i64 %i.be, ptr %i.bf, align 8
  %i.bg = load ptr, ptr %i.ad, align 8
  store ptr %i.ar, ptr %i.bg, align 8
  store ptr %i.ar, ptr %i.z, align 8
  %i.bh = load i64, ptr %i.ak, align 8
  %i.bi = load i64, ptr %i.ba, align 8
  %i.bj = add i64 %i.bi, %i.bh
  store i64 %i.bj, ptr %i.ba, align 8
  store i64 0, ptr %i.ak, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  store ptr %i.af, ptr %i.z, align 8
  store ptr null, ptr %spec.select.i, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %HAS_PINNED_R.exit.i, %bb.h
  %.081.ph = phi ptr [ null, %bb.h ], [ null, %HAS_PINNED_R.exit.i ], [ %i.aj, %bb.m ], [ %i.aj, %bb.l ] ; 2 uses
  %.080.ph = phi ptr [ null, %bb.h ], [ null, %HAS_PINNED_R.exit.i ], [ %.val.i, %bb.m ], [ %.val.i, %bb.l ]
  %i.bk = icmp eq i64 %i.r, 0
  %i.bl = load ptr, ptr %0, align 8               ; 3 uses
  br i1 %i.bk, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.not4.i = icmp eq ptr %i.bl, null
  br i1 %.not4.i, label %evbuffer_free_all_chains.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o, %.lr.ph.i
  %.05.i = phi ptr [ %i.bm, %.lr.ph.i ], [ %i.bl, %bb.o ] ; 2 uses
  %i.bm = load ptr, ptr %.05.i, align 8           ; 2 uses
  tail call fastcc void @evbuffer_chain_free(ptr noundef nonnull %.05.i)
  %.not.i76 = icmp eq ptr %i.bm, null
  br i1 %.not.i76, label %evbuffer_free_all_chains.exit, label %.lr.ph.i, !llvm.loop !16

evbuffer_free_all_chains.exit:                    ; preds = %.lr.ph.i, %bb.o
  %i.bn = load ptr, ptr %1, align 8
  store ptr %i.bn, ptr %0, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %1
  %spec.select.i77 = select i1 %i.bq, ptr %0, ptr %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %spec.select.i77, ptr %i.br, align 8
  %i.bs = load ptr, ptr %i.z, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bs, ptr %i.bt, align 8
  %i.bu = load i64, ptr %i.o, align 8
  store i64 %i.bu, ptr %i.q, align 8
  br label %PREPEND_CHAIN.exit

bb.p:                                             ; preds = %bb.n
  %i.bv = load ptr, ptr %i.z, align 8
  store ptr %i.bl, ptr %i.bv, align 8
  %i.bw = load ptr, ptr %1, align 8
  store ptr %i.bw, ptr %0, align 8
  %i.bx = load i64, ptr %i.o, align 8
  %i.by = load i64, ptr %i.q, align 8
  %i.bz = add i64 %i.by, %i.bx
  store i64 %i.bz, ptr %i.q, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8            ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8            ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %1
  %..i = select i1 %i.cg, ptr %0, ptr %i.cf
  br label %.sink.split.i

bb.r:                                             ; preds = %bb.p
  %i.ch = icmp eq ptr %i.cb, %0
  br i1 %i.ch, label %bb.s, label %PREPEND_CHAIN.exit

bb.s:                                             ; preds = %bb.r
  %i.ci = load ptr, ptr %i.z, align 8
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.s, %bb.q
  %.sink.i = phi ptr [ %i.ci, %bb.s ], [ %..i, %bb.q ]
  store ptr %.sink.i, ptr %i.ca, align 8
  br label %PREPEND_CHAIN.exit

PREPEND_CHAIN.exit:                               ; preds = %.sink.split.i, %bb.r, %evbuffer_free_all_chains.exit
  %.not.i78 = icmp eq ptr %.081.ph, null
  br i1 %.not.i78, label %bb.t, label %bb.u

bb.t:                                             ; preds = %PREPEND_CHAIN.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %RESTORE_PINNED.exit

bb.u:                                             ; preds = %PREPEND_CHAIN.exit
  store ptr %.081.ph, ptr %1, align 8
  store ptr %.080.ph, ptr %i.z, align 8
  br label %RESTORE_PINNED.exit

RESTORE_PINNED.exit:                              ; preds = %bb.t, %bb.u
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %1, ptr %i.cj, align 8
  store i64 0, ptr %i.o, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = add i64 %i.cl, %i.p
  store i64 %i.cm, ptr %i.ck, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = add i64 %i.co, %i.p
  store i64 %i.cp, ptr %i.cn, align 8
  tail call void @evbuffer_invoke_callbacks_(ptr noundef nonnull %1)
  tail call void @evbuffer_invoke_callbacks_(ptr noundef nonnull %0)
  br label %PRESERVE_PINNED.exit

PRESERVE_PINNED.exit:                             ; preds = %.loopexit.i.i, %bb.j, %bb.f, %bb.g, %bb.e, %RESTORE_PINNED.exit
  %.0.a = phi i32 [ 0, %bb.e ], [ 0, %RESTORE_PINNED.exit ], [ -1, %bb.f ], [ -1, %bb.g ], [ -1, %bb.j ], [ -1, %.loopexit.i.i ]
  %i.cq = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.cr = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.cs = icmp ne ptr %i.cr, null
  %i.ct = icmp ugt ptr %i.cq, %i.cr
  %or.cond75 = and i1 %i.ct, %i.cs                ; 2 uses
  %.059 = select i1 %or.cond75, ptr %i.cr, ptr %i.cq ; 2 uses
  %.058 = select i1 %or.cond75, ptr %i.cq, ptr %i.cr ; 2 uses
  %i.cu = icmp ne ptr %i.cq, %i.cr
  %i.cv = icmp ne ptr %.058, null
  %or.cond7 = and i1 %i.cu, %i.cv
  br i1 %or.cond7, label %bb.v, label %bb.w

bb.v:                                             ; preds = %PRESERVE_PINNED.exit
  %i.cw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.cx = tail call i32 %i.cw(i32 noundef 0, ptr noundef nonnull %.058) #16 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %PRESERVE_PINNED.exit, %bb.v
  %.not72 = icmp eq ptr %.059, null
  br i1 %.not72, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.cz = tail call i32 %i.cy(i32 noundef 0, ptr noundef nonnull %.059) #16 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  ret i32 %.0.a
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @evbuffer_drain(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.d = tail call i32 %i.c(i32 noundef 0, ptr noundef nonnull %i.b) #16 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8              ; 5 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load i8, ptr %i.h, align 8
  %i.j = and i8 %i.i, 2
  %.not62 = icmp eq i8 %i.j, 0
  br i1 %.not62, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  %.not63 = icmp ult i64 %1, %i.f
  br i1 %.not63, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.k, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %HAS_PINNED_R.exit.thread, label %HAS_PINNED_R.exit

HAS_PINNED_R.exit:                                ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.m = load i32, ptr %i.l, align 8
  %i.n = and i32 %i.m, 16
  %.not64 = icmp eq i32 %i.n, 0
  br i1 %.not64, label %HAS_PINNED_R.exit.thread, label %bb.g

HAS_PINNED_R.exit.thread:                         ; preds = %bb.f, %HAS_PINNED_R.exit
  %i.o = load ptr, ptr %0, align 8                ; 2 uses
  %.not6575 = icmp eq ptr %i.o, null
  br i1 %.not6575, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %HAS_PINNED_R.exit.thread, %.lr.ph
  %.05576 = phi ptr [ %i.p, %.lr.ph ], [ %i.o, %HAS_PINNED_R.exit.thread ] ; 2 uses
  %i.p = load ptr, ptr %.05576, align 8           ; 2 uses
  tail call fastcc void @evbuffer_chain_free(ptr noundef nonnull %.05576)
  %.not65 = icmp eq ptr %i.p, null
  br i1 %.not65, label %._crit_edge, label %.lr.ph, !llvm.loop !26

._crit_edge:                                      ; preds = %.lr.ph, %HAS_PINNED_R.exit.thread
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %0, ptr %i.q, align 8
  store i64 0, ptr %i.e, align 8
  br label %bb.n

bb.g:                                             ; preds = %HAS_PINNED_R.exit, %bb.e
  %spec.select = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.f) ; 5 uses
  %i.r = sub i64 %i.f, %spec.select
  store i64 %i.r, ptr %i.e, align 8
  %i.s = load ptr, ptr %0, align 8                ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %.not6679 = icmp ult i64 %spec.select, %i.u
  br i1 %.not6679, label %.loopexit, label %.lr.ph83

.lr.ph83:                                         ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph83, %bb.l
  %i.w = phi i64 [ %i.u, %.lr.ph83 ], [ %i.ao, %bb.l ]
  %.05381 = phi i64 [ %spec.select, %.lr.ph83 ], [ %i.y, %bb.l ]
  %.15680 = phi ptr [ %i.s, %.lr.ph83 ], [ %i.x, %bb.l ] ; 8 uses
  %i.x = load ptr, ptr %.15680, align 8           ; 3 uses
  %i.y = sub nuw i64 %.05381, %i.w                ; 4 uses
  %i.z = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = icmp eq ptr %.15680, %i.aa              ; 2 uses
  %i.ac = select i1 %i.ab, ptr %0, ptr %i.z       ; 2 uses
  %i.ad = icmp eq ptr %.15680, %i.ac              ; 2 uses
  %i.ae = or i1 %i.ab, %i.ad
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %simplifycfg.merge = select i1 %i.ad, ptr %0, ptr %i.ac
  store ptr %simplifycfg.merge, ptr %i.v, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %.15680, i64 32
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = and i32 %i.ag, 16
  %.not67 = icmp eq i32 %i.ah, 0
  br i1 %.not67, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %.15680, i64 24 ; 3 uses
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.15680, i64 16 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = add i64 %i.al, %i.aj
  store i64 %i.am, ptr %i.ak, align 8
  store i64 0, ptr %i.ai, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  tail call fastcc void @evbuffer_chain_free(ptr noundef nonnull %.15680)
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ao = load i64, ptr %i.an, align 8            ; 2 uses
  %.not66 = icmp ult i64 %i.y, %i.ao
  br i1 %.not66, label %.loopexit, label %bb.h, !llvm.loop !27

.loopexit:                                        ; preds = %bb.l, %bb.g
  %.156.lcssa78 = phi ptr [ %i.s, %bb.g ], [ %i.x, %bb.l ] ; 2 uses
  %.053.lcssa = phi i64 [ %spec.select, %bb.g ], [ %i.y, %bb.l ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.156.lcssa78, i64 24
  br label %bb.m

bb.m:                                             ; preds = %.loopexit, %bb.k
  %.15673 = phi ptr [ %.15680, %bb.k ], [ %.156.lcssa78, %.loopexit ] ; 2 uses
  %i.aq = phi ptr [ %i.ai, %bb.k ], [ %i.ap, %.loopexit ] ; 2 uses
  %.154 = phi i64 [ %i.y, %bb.k ], [ %.053.lcssa, %.loopexit ] ; 2 uses
  store ptr %.15673, ptr %0, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.15673, i64 16 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = add i64 %i.as, %.154
  store i64 %i.at, ptr %i.ar, align 8
  %i.au = load i64, ptr %i.aq, align 8
  %i.av = sub i64 %i.au, %.154
  store i64 %i.av, ptr %i.aq, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  %.1 = phi i64 [ %spec.select, %bb.m ], [ %i.f, %._crit_edge ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = add i64 %i.ax, %.1
  store i64 %i.ay, ptr %i.aw, align 8
  tail call void @evbuffer_invoke_callbacks_(ptr noundef nonnull %0)
  br label %bb.o

bb.o:                                             ; preds = %bb.d, %bb.c, %bb.n
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.n ], [ -1, %bb.d ]
  %i.az = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not68 = icmp eq ptr %i.az, null
  br i1 %.not68, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.bb = tail call i32 %i.ba(i32 noundef 0, ptr noundef nonnull %i.az) #16 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @evbuffer_remove(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.d = tail call i32 %i.c(i32 noundef 0, ptr noundef nonnull %i.b) #16 ; 0 uses
  %.pr = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.f = tail call i32 %i.e(i32 noundef 0, ptr noundef nonnull %.pr) #16, !inline_history !28 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8
  %spec.select64.i = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.h) ; 7 uses
  %i.i = icmp eq i64 %spec.select64.i, 0
  br i1 %i.i, label %.critedge65.i, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load i8, ptr %i.j, align 8
  %i.l = and i8 %i.k, 2
  %.not60.i = icmp eq i8 %i.l, 0
  br i1 %.not60.i, label %.preheader.i, label %.critedge65.i

.preheader.i:                                     ; preds = %bb.d
  %.14974.peel.i = load ptr, ptr %0, align 8      ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.14974.peel.i, i64 24
  %i.n = load i64, ptr %i.m, align 8              ; 4 uses
  %.not62.peel.i = icmp ult i64 %spec.select64.i, %i.n
  br i1 %.not62.peel.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i
  %i.o = getelementptr inbounds nuw i8, ptr %.14974.peel.i, i64 40
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.14974.peel.i, i64 16
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds i8, ptr %i.p, i64 %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.s, i64 %i.n, i1 false)
  %i.t = sub nuw i64 %spec.select64.i, %i.n       ; 2 uses
  %.not61.peel.i = icmp eq i64 %i.t, 0
  br i1 %.not61.peel.i, label %.critedge65.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.n
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.peel.next.i
  %.14974.in.i = phi ptr [ %.14974.peel.i, %.peel.next.i ], [ %.14974.i, %bb.g ]
  %.173.i = phi i64 [ %i.t, %.peel.next.i ], [ %i.ad, %bb.g ] ; 3 uses
  %.05071.i = phi ptr [ %i.u, %.peel.next.i ], [ %i.ac, %bb.g ] ; 3 uses
  %.14974.i = load ptr, ptr %.14974.in.i, align 8 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.14974.i, i64 24
  %i.w = load i64, ptr %i.v, align 8              ; 4 uses
  %.not62.i = icmp ult i64 %.173.i, %i.w
  br i1 %.not62.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.14974.i, i64 40
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.14974.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %i.y, i64 %i.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.05071.i, ptr align 1 %i.ab, i64 %i.w, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.05071.i, i64 %i.w
  %i.ad = sub nuw i64 %.173.i, %i.w               ; 2 uses
  %.not61.i = icmp eq i64 %i.ad, 0
  br i1 %.not61.i, label %.critedge65.i, label %bb.f, !llvm.loop !29

.critedge.i:                                      ; preds = %bb.f, %.preheader.i
  %.173.lcssa.i = phi i64 [ %spec.select64.i, %.preheader.i ], [ %.173.i, %bb.f ]
  %.05071.lcssa.i = phi ptr [ %1, %.preheader.i ], [ %.05071.i, %bb.f ]
  %.14974.lcssa.i = phi ptr [ %.14974.peel.i, %.preheader.i ], [ %.14974.i, %bb.f ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.14974.lcssa.i, i64 40
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.14974.lcssa.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 %i.ah
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.05071.lcssa.i, ptr align 1 %i.ai, i64 %.173.lcssa.i, i1 false)
  br label %.critedge65.i

.critedge65.i:                                    ; preds = %bb.g, %.critedge.i, %bb.e, %bb.d, %.thread
  %.047.i = phi i64 [ -1, %bb.d ], [ 0, %.thread ], [ %spec.select64.i, %bb.e ], [ %spec.select64.i, %.critedge.i ], [ %spec.select64.i, %bb.g ] ; 4 uses
  %i.aj = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not63.i = icmp eq ptr %i.aj, null
  br i1 %.not63.i, label %evbuffer_copyout_from.exit, label %bb.h

bb.h:                                             ; preds = %.critedge65.i
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.al = tail call i32 %i.ak(i32 noundef 0, ptr noundef nonnull %i.aj) #16, !inline_history !28 ; 0 uses
  br label %evbuffer_copyout_from.exit

evbuffer_copyout_from.exit:                       ; preds = %.critedge65.i, %bb.h
end_hunk_1
begin_hunk_2_@evbuffer_remove_buffer:bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = add i64 %i.cf, %i.cb
  store i64 %i.cg, ptr %i.ce, align 8
  %.not119 = icmp eq i64 %i.cb, 0
  br i1 %.not119, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @evbuffer_invoke_callbacks_(ptr noundef %1)
  tail call void @evbuffer_invoke_callbacks_(ptr noundef nonnull %0)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ch = trunc i64 %i.cb to i32
  br label %bb.t

bb.t:                                             ; preds = %bb.f, %bb.g, %bb.e, %bb.s, %bb.i
  %.0103 = phi i32 [ %i.ch, %bb.s ], [ 0, %bb.e ], [ %i.ae, %bb.i ], [ -1, %bb.g ], [ -1, %bb.f ]
  %i.ci = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.cj = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.ck = icmp ne ptr %i.cj, null
  %i.cl = icmp ugt ptr %i.ci, %i.cj
  %or.cond123 = and i1 %i.cl, %i.ck               ; 2 uses
  %.098 = select i1 %or.cond123, ptr %i.cj, ptr %i.ci ; 2 uses
  %.097 = select i1 %or.cond123, ptr %i.ci, ptr %i.cj ; 2 uses
  %i.cm = icmp ne ptr %i.ci, %i.cj
  %i.cn = icmp ne ptr %.097, null
  %or.cond7 = and i1 %i.cm, %i.cn
  br i1 %or.cond7, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.co = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.cp = tail call i32 %i.co(i32 noundef 0, ptr noundef nonnull %.097) #16 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %.not120 = icmp eq ptr %.098, null
  br i1 %.not120, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.cr = tail call i32 %i.cq(i32 noundef 0, ptr noundef nonnull %.098) #16 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  ret i32 %.0103
}

; Function Attrs: nounwind uwtable
define ptr @evbuffer_pullup(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.d = tail call i32 %i.c(i32 noundef 0, ptr noundef nonnull %i.b) #16 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr %0, align 8                ; 15 uses
  %i.f = icmp slt i64 %1, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0108 = phi i64 [ %i.h, %bb.d ], [ %1, %bb.c ] ; 9 uses
  %i.i = icmp eq i64 %.0108, 0
  br i1 %i.i, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp ugt i64 %.0108, %i.k
  br i1 %i.l, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8              ; 4 uses
  %.not134 = icmp ult i64 %i.n, %.0108
  br i1 %.not134, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds i8, ptr %i.p, i64 %i.r
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.t = sub nuw i64 %.0108, %i.n                 ; 3 uses
  %.0122165 = load ptr, ptr %i.e, align 8         ; 4 uses
  %.not135166 = icmp eq ptr %.0122165, null
  br i1 %.not135166, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %bb.k
  %i.u = sub nuw i64 %.0113167, %i.z
  %.0122 = load ptr, ptr %.0122168, align 8       ; 2 uses
  %.not135 = icmp eq ptr %.0122, null
  br i1 %.not135, label %._crit_edge, label %.lr.ph, !llvm.loop !32

.lr.ph:                                           ; preds = %bb.i, %bb.j
  %.0122168 = phi ptr [ %.0122, %bb.j ], [ %.0122165, %bb.i ] ; 3 uses
  %.0113167 = phi i64 [ %i.u, %bb.j ], [ %i.t, %bb.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0122168, i64 32
  %i.w = load i32, ptr %i.v, align 8
  %i.x = and i32 %i.w, 48
  %.not136 = icmp eq i32 %i.x, 0
  br i1 %.not136, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.0122168, i64 24
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %.not137 = icmp ult i64 %i.z, %.0113167
  br i1 %.not137, label %bb.j, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j, %bb.k, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ab = load i32, ptr %i.aa, align 8            ; 2 uses
  %i.ac = and i32 %i.ab, 48
  %.not138 = icmp eq i32 %i.ac, 0
  br i1 %.not138, label %bb.o, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.ad = and i32 %i.ab, 8
  %.not140 = icmp eq i32 %i.ad, 0
  br i1 %.not140, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = add i64 %i.n, %i.ah
  %i.aj = sub i64 %i.af, %i.ai
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ak = phi i64 [ %i.aj, %bb.m ], [ 0, %bb.l ]
  %i.al = icmp ult i64 %i.ak, %i.t
  br i1 %i.al, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %i.an, i64 %i.ap
  br label %bb.s

bb.o:                                             ; preds = %._crit_edge
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %i.av = sub i64 %i.as, %i.au
  %.not139 = icmp ult i64 %i.av, %.0108
  br i1 %.not139, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.au
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.az = tail call fastcc ptr @evbuffer_chain_new(i64 noundef %.0108) ; 5 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.r, label %.thread197

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @event_warn(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.evbuffer_pullup) #16
  br label %.loopexit

.thread197:                                       ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store i64 %.0108, ptr %i.bd, align 8
  store ptr %i.az, ptr %0, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.lr.ph177.preheader

bb.s:                                             ; preds = %.thread, %bb.p
  %.sink = phi ptr [ %i.aq, %.thread ], [ %i.ay, %bb.p ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.sink, i64 %i.n
  store i64 %.0108, ptr %i.m, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not141170 = icmp eq ptr %.0122165, null
  br i1 %.not141170, label %.critedge149, label %.lr.ph177.preheader

.lr.ph177.preheader:                              ; preds = %.thread197, %bb.s
  %i.bh = phi ptr [ %i.be, %.thread197 ], [ %i.bg, %bb.s ] ; 4 uses
  %.2208 = phi i64 [ %.0108, %.thread197 ], [ %i.t, %bb.s ]
  %.1116207 = phi ptr [ %i.bc, %.thread197 ], [ %i.bf, %bb.s ]
  %.1120206 = phi ptr [ %i.e, %.thread197 ], [ %.0122165, %bb.s ]
  %.2124203 = phi ptr [ %i.az, %.thread197 ], [ %i.e, %bb.s ] ; 2 uses
  %.in = load ptr, ptr %i.bh, align 8
  %i.bi = load ptr, ptr %.in, align 8
  br label %.lr.ph177

.lr.ph177:                                        ; preds = %.lr.ph177.preheader, %bb.v
  %.3175 = phi i64 [ %.4, %bb.v ], [ %.2208, %.lr.ph177.preheader ] ; 6 uses
  %.0109174 = phi i32 [ %.1110, %bb.v ], [ 0, %.lr.ph177.preheader ] ; 2 uses
  %.0111173 = phi i32 [ %spec.select, %bb.v ], [ 0, %.lr.ph177.preheader ] ; 2 uses
  %.2117172 = phi ptr [ %.3118, %bb.v ], [ %.1116207, %.lr.ph177.preheader ] ; 4 uses
  %.2121171 = phi ptr [ %i.bl, %bb.v ], [ %.1120206, %.lr.ph177.preheader ] ; 10 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.2121171, i64 24 ; 4 uses
  %i.bk = load i64, ptr %i.bj, align 8            ; 2 uses
  %.not142 = icmp ult i64 %.3175, %i.bk
  br i1 %.not142, label %.critedge, label %bb.t

bb.t:                                             ; preds = %.lr.ph177
  %i.bl = load ptr, ptr %.2121171, align 8        ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.2121171, i64 40
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %.not147 = icmp eq ptr %i.bn, null
  br i1 %.not147, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bo = getelementptr inbounds nuw i8, ptr %.2121171, i64 16
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds i8, ptr %i.bn, i64 %i.bp
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.2117172, ptr nonnull align 1 %i.bq, i64 %i.bk, i1 false)
  %i.br = load i64, ptr %i.bj, align 8            ; 2 uses
  %i.bs = sub i64 %.3175, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %.2117172, i64 %i.br
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.3118 = phi ptr [ %i.bt, %bb.u ], [ %.2117172, %bb.t ]
  %.4 = phi i64 [ %i.bs, %bb.u ], [ %.3175, %bb.t ]
  %i.bu = icmp eq ptr %.2121171, %i.bi
  %spec.select = select i1 %i.bu, i32 1, i32 %.0111173 ; 2 uses
  %i.bv = load ptr, ptr %i.bh, align 8
  %i.bw = icmp eq ptr %.2121171, %i.bv
  %.1110 = select i1 %i.bw, i32 1, i32 %.0109174  ; 2 uses
  tail call fastcc void @evbuffer_chain_free(ptr noundef nonnull %.2121171)
  %.not141 = icmp eq ptr %i.bl, null
  br i1 %.not141, label %.critedge149, label %.lr.ph177, !llvm.loop !33

.critedge:                                        ; preds = %.lr.ph177
  %i.bx = getelementptr inbounds nuw i8, ptr %.2121171, i64 40
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %.2121171, i64 16 ; 3 uses
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds i8, ptr %i.by, i64 %i.ca
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.2117172, ptr align 1 %i.cb, i64 %.3175, i1 false)
  %i.cc = load i64, ptr %i.bz, align 8
  %i.cd = add nsw i64 %i.cc, %.3175
  store i64 %i.cd, ptr %i.bz, align 8
  %i.ce = load i64, ptr %i.bj, align 8
  %i.cf = sub i64 %i.ce, %.3175
  store i64 %i.cf, ptr %i.bj, align 8
  br label %bb.w

.critedge149:                                     ; preds = %bb.v, %bb.s
  %i.cg = phi ptr [ %i.bg, %bb.s ], [ %i.bh, %bb.v ]
  %.2124204 = phi ptr [ %i.e, %bb.s ], [ %.2124203, %bb.v ] ; 2 uses
  %.0111.lcssa = phi i32 [ 0, %bb.s ], [ %spec.select, %bb.v ]
  %.0109.lcssa = phi i32 [ 0, %bb.s ], [ %.1110, %bb.v ]
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.2124204, ptr %i.ch, align 8
  br label %bb.w

bb.w:                                             ; preds = %.critedge149, %.critedge
  %i.ci = phi ptr [ %i.cg, %.critedge149 ], [ %i.bh, %.critedge ]
  %.2124205 = phi ptr [ %.2124204, %.critedge149 ], [ %.2124203, %.critedge ] ; 3 uses
  %.2121164 = phi ptr [ null, %.critedge149 ], [ %.2121171, %.critedge ]
  %.0111161 = phi i32 [ %.0111.lcssa, %.critedge149 ], [ %.0111173, %.critedge ]
  %.0109159 = phi i32 [ %.0109.lcssa, %.critedge149 ], [ %.0109174, %.critedge ]
  store ptr %.2121164, ptr %.2124205, align 8
  %.not143 = icmp eq i32 %.0111161, 0
  br i1 %.not143, label %bb.x, label %.sink.split

bb.x:                                             ; preds = %bb.w
  %.not144 = icmp eq i32 %.0109159, 0
  br i1 %.not144, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cj = load ptr, ptr %0, align 8               ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8            ; 2 uses
  %.not145 = icmp eq ptr %i.ck, null
  br i1 %.not145, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load i64, ptr %i.cl, align 8
  %.not146 = icmp eq i64 %i.cm, 0
  br i1 %.not146, label %bb.aa, label %.sink.split

bb.aa:                                            ; preds = %bb.z, %bb.y
  br label %.sink.split

.sink.split:                                      ; preds = %bb.z, %bb.w, %bb.aa
  %.sink215 = phi ptr [ %0, %bb.aa ], [ %0, %bb.w ], [ %i.cj, %bb.z ]
  store ptr %.sink215, ptr %i.ci, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %bb.x
  %i.cn = getelementptr inbounds nuw i8, ptr %.2124205, i64 40
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %.2124205, i64 16
  %i.cq = load i64, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds i8, ptr %i.co, i64 %i.cq
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.n, %bb.e, %bb.f, %bb.ab, %bb.r, %bb.h
  %.0114 = phi ptr [ null, %bb.e ], [ null, %bb.f ], [ %i.s, %bb.h ], [ null, %bb.n ], [ %i.cr, %bb.ab ], [ null, %bb.r ], [ null, %.lr.ph ]
  %i.cs = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not148 = icmp eq ptr %i.cs, null
  br i1 %.not148, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.loopexit
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.cu = tail call i32 %i.ct(i32 noundef 0, ptr noundef nonnull %i.cs) #16 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit, %bb.ac
  ret ptr %.0114
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @evbuffer_chain_new(i64 noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = icmp ugt i64 %0, 9223372036854775759
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %0, 48                   ; 2 uses
  %i.c = icmp samesign ult i64 %0, 4611686018427387855
  br i1 %i.c, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.b, %.preheader
  %.0 = phi i64 [ %i.e, %.preheader ], [ 1024, %bb.b ] ; 3 uses
  %i.d = icmp ult i64 %.0, %i.b
  %i.e = shl nuw nsw i64 %.0, 1
  br i1 %i.d, label %.preheader, label %.loopexit, !llvm.loop !14

.loopexit:                                        ; preds = %.preheader, %bb.b
  %.1 = phi i64 [ %i.b, %bb.b ], [ %.0, %.preheader ] ; 2 uses
  %i.f = tail call ptr @event_mm_malloc_(i64 noundef %.1) #16 ; 7 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, i8 0, i64 40, i1 false)
  %i.h = add i64 %.1, -48
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr %i.j, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  store i32 1, ptr %i.l, align 4
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %bb.a, %bb.c
  %.015 = phi ptr [ %i.f, %bb.c ], [ null, %bb.a ], [ null, %.loopexit ]
  ret ptr %.015
}

declare void @event_warn(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define ptr @evbuffer_readline(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @evbuffer_readln(ptr noundef %0, ptr noundef null, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @evbuffer_readln(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %struct.evbuffer_ptr, align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.e = tail call i32 %i.d(i32 noundef 0, ptr noundef nonnull %i.c) #16 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load i8, ptr %i.f, align 8
  %i.h = and i8 %i.g, 2
  %.not25 = icmp eq i8 %i.h, 0
  br i1 %.not25, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @evbuffer_search_eol(ptr dead_on_unwind nonnull writable sret(%struct.evbuffer_ptr) align 8 %3, ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef %2)
  %.sroa.0.0.copyload = load i64, ptr %3, align 8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.i = icmp slt i64 %.sroa.0.0.copyload, 0
  br i1 %i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = add nuw i64 %.sroa.0.0.copyload, 1
  %i.k = call ptr @event_mm_malloc_(i64 noundef %i.j) #16 ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @event_warn(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.evbuffer_readln) #16
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.m = call i32 @evbuffer_remove(ptr noundef nonnull %0, ptr noundef nonnull %i.k, i64 noundef %.sroa.0.0.copyload) ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.0.0.copyload
  store i8 0, ptr %i.n, align 1
  %i.o = load i64, ptr %i.a, align 8
  %i.p = call i32 @evbuffer_drain(ptr noundef nonnull %0, i64 noundef %i.o) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.c, %bb.g, %bb.f
  %.020 = phi i64 [ 0, %bb.c ], [ 0, %bb.d ], [ %.sroa.0.0.copyload, %bb.f ], [ %.sroa.0.0.copyload, %bb.g ]
  %.0 = phi ptr [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.f ], [ %i.k, %bb.g ] ; 2 uses
  %i.q = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not26 = icmp eq ptr %i.q, null
  br i1 %.not26, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.s = call i32 %i.r(i32 noundef 0, ptr noundef nonnull %i.q) #16 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not27 = icmp eq ptr %1, null
  br i1 %.not27, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not28 = icmp eq ptr %.0, null
  %i.t = select i1 %.not28, i64 0, i64 %.020
  store i64 %i.t, ptr %1, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define void @evbuffer_search_eol(ptr dead_on_unwind noalias nofree writable sret(%struct.evbuffer_ptr) align 8 captures(address_is_null) initializes((0, 24)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %5 = alloca %struct.evbuffer_ptr, align 8       ; 4 uses
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 -1, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not32 = icmp eq ptr %3, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  br i1 %.not32, label %bb.ai, label %.sink.split

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
end_hunk_2
begin_hunk_3_@evbuffer_search_eol:bb.a
  %.sroa.11.1104114 = phi ptr [ %.sroa.11.0.copyload83, %.thread ], [ %.sroa.11.0, %evbuffer_ptr_subtract.exit ] ; 3 uses
  %.sroa.18.1105112 = phi i64 [ %i.cx, %.thread ], [ %.sroa.18.0, %evbuffer_ptr_subtract.exit ] ; 2 uses
  %.sroa.0.1106110 = phi i64 [ %i.cy, %.thread ], [ %.sroa.0.0, %evbuffer_ptr_subtract.exit ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.11.1104114, i64 40
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.11.1104114, i64 16
  %i.du = load i64, ptr %i.dt, align 8
  %i.dv = getelementptr i8, ptr %i.ds, i64 %i.du
  %i.dw = getelementptr i8, ptr %i.dv, i64 %.sroa.18.1105112
  %i.dx = load i8, ptr %i.dw, align 1
  %i.dy = icmp eq i8 %i.dx, 13
  br i1 %i.dy, label %bb.z, label %evbuffer_strspn.exit

bb.z:                                             ; preds = %evbuffer_getchr.exit
  store i64 %.sroa.0.1106110, ptr %0, align 8
  store ptr %.sroa.11.1104114, ptr %i.bi, align 8
  store i64 %.sroa.18.1105112, ptr %i.bj, align 8
  br label %evbuffer_strspn.exit

bb.aa:                                            ; preds = %bb.i
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.02739.i41 = load ptr, ptr %i.dz, align 8      ; 6 uses
  %.not40.i42 = icmp eq ptr %.02739.i41, null
  br i1 %.not40.i42, label %evbuffer_find_eol_char.exit.thread, label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %bb.aa
  %i.eb = load i64, ptr %i.ea, align 8            ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.02739.i41, i64 40
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %.02739.i41, i64 16
  %i.ef = load i64, ptr %i.ee, align 8
  %i.eg = getelementptr inbounds i8, ptr %i.ed, i64 %i.ef ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.eb
  %i.ei = getelementptr inbounds nuw i8, ptr %.02739.i41, i64 24
  %i.ej = load i64, ptr %i.ei, align 8
  %i.ek = sub i64 %i.ej, %i.eb                    ; 2 uses
  %i.el = tail call ptr @memchr(ptr noundef %i.eh, i32 noundef 10, i64 noundef %i.ek) #17 ; 2 uses
  %.not32.peel.i44 = icmp eq ptr %i.el, null
  %.pre.i45 = load i64, ptr %0, align 8           ; 2 uses
  br i1 %.not32.peel.i44, label %bb.ab, label %evbuffer_strchr.exit59

bb.ab:                                            ; preds = %.lr.ph.i43
  %i.em = add i64 %.pre.i45, %i.ek                ; 3 uses
  store i64 %i.em, ptr %0, align 8
  %.027.peel.i52 = load ptr, ptr %.02739.i41, align 8 ; 6 uses
  %.not.peel.i53 = icmp eq ptr %.027.peel.i52, null
  br i1 %.not.peel.i53, label %evbuffer_find_eol_char.exit.thread, label %.peel.next.i54.preheader

.peel.next.i54.preheader:                         ; preds = %bb.ab
  %i.en = getelementptr inbounds nuw i8, ptr %.027.peel.i52, i64 40
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %.027.peel.i52, i64 16
  %i.eq = load i64, ptr %i.ep, align 8
  %i.er = getelementptr inbounds i8, ptr %i.eo, i64 %i.eq ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.027.peel.i52, i64 24
  %i.et = load i64, ptr %i.es, align 8            ; 2 uses
  %i.eu = tail call ptr @memchr(ptr noundef %i.er, i32 noundef 10, i64 noundef %i.et) #17 ; 2 uses
  %.not32.i56179 = icmp eq ptr %i.eu, null
  br i1 %.not32.i56179, label %.lr.ph181, label %evbuffer_strchr.exit59

.peel.next.i54:                                   ; preds = %.lr.ph181
  %i.ev = getelementptr inbounds nuw i8, ptr %.027.i57, i64 40
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %.027.i57, i64 16
  %i.ey = load i64, ptr %i.ex, align 8
  %i.ez = getelementptr inbounds i8, ptr %i.ew, i64 %i.ey ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.027.i57, i64 24
  %i.fb = load i64, ptr %i.fa, align 8            ; 2 uses
  %i.fc = tail call ptr @memchr(ptr noundef %i.ez, i32 noundef 10, i64 noundef %i.fb) #17 ; 2 uses
  %.not32.i56 = icmp eq ptr %i.fc, null
  br i1 %.not32.i56, label %.lr.ph181, label %evbuffer_strchr.exit59, !llvm.loop !37

.lr.ph181:                                        ; preds = %.peel.next.i54.preheader, %.peel.next.i54
  %i.fd = phi i64 [ %i.fb, %.peel.next.i54 ], [ %i.et, %.peel.next.i54.preheader ]
  %.02742.i55180 = phi ptr [ %.027.i57, %.peel.next.i54 ], [ %.027.peel.i52, %.peel.next.i54.preheader ]
  %i.fe = phi i64 [ %i.ff, %.peel.next.i54 ], [ %i.em, %.peel.next.i54.preheader ]
  %i.ff = add i64 %i.fd, %i.fe                    ; 3 uses
  %.027.i57 = load ptr, ptr %.02742.i55180, align 8 ; 6 uses
  %.not.i58 = icmp eq ptr %.027.i57, null
  br i1 %.not.i58, label %evbuffer_find_eol_char.exit.thread.loopexit129, label %.peel.next.i54, !llvm.loop !37

evbuffer_strchr.exit59:                           ; preds = %.peel.next.i54, %.peel.next.i54.preheader, %.lr.ph.i43
  %i.fg = phi i64 [ %.pre.i45, %.lr.ph.i43 ], [ %i.em, %.peel.next.i54.preheader ], [ %i.ff, %.peel.next.i54 ]
  %.02742.lcssa.i47 = phi ptr [ %.02739.i41, %.lr.ph.i43 ], [ %.027.peel.i52, %.peel.next.i54.preheader ], [ %.027.i57, %.peel.next.i54 ]
  %.02941.lcssa.i48 = phi i64 [ %i.eb, %.lr.ph.i43 ], [ 0, %.peel.next.i54.preheader ], [ 0, %.peel.next.i54 ]
  %.lcssa44.i49 = phi ptr [ %i.eg, %.lr.ph.i43 ], [ %i.er, %.peel.next.i54.preheader ], [ %i.ez, %.peel.next.i54 ]
  %.lcssa.i50 = phi ptr [ %i.el, %.lr.ph.i43 ], [ %i.eu, %.peel.next.i54.preheader ], [ %i.fc, %.peel.next.i54 ]
  store ptr %.02742.lcssa.i47, ptr %i.dz, align 8
  %i.fh = ptrtoint ptr %.lcssa.i50 to i64
  %i.fi = ptrtoint ptr %.lcssa44.i49 to i64
  %i.fj = sub i64 %i.fh, %i.fi                    ; 2 uses
  store i64 %i.fj, ptr %i.ea, align 8
  %i.fk = sub i64 %i.fj, %.02941.lcssa.i48
  %i.fl = add i64 %i.fk, %i.fg                    ; 2 uses
  store i64 %i.fl, ptr %0, align 8
  %i.fm = icmp slt i64 %i.fl, 0
  br i1 %i.fm, label %evbuffer_find_eol_char.exit.thread, label %evbuffer_strspn.exit

bb.ac:                                            ; preds = %bb.i
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.02739.i60 = load ptr, ptr %i.fn, align 8      ; 6 uses
  %.not40.i61 = icmp eq ptr %.02739.i60, null
  br i1 %.not40.i61, label %evbuffer_find_eol_char.exit.thread, label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %bb.ac
  %i.fp = load i64, ptr %i.fo, align 8            ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.02739.i60, i64 40
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %.02739.i60, i64 16
  %i.ft = load i64, ptr %i.fs, align 8
  %i.fu = getelementptr inbounds i8, ptr %i.fr, i64 %i.ft ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fp
  %i.fw = getelementptr inbounds nuw i8, ptr %.02739.i60, i64 24
  %i.fx = load i64, ptr %i.fw, align 8
  %i.fy = sub i64 %i.fx, %i.fp                    ; 2 uses
  %i.fz = tail call ptr @memchr(ptr noundef %i.fv, i32 noundef 0, i64 noundef %i.fy) #17 ; 2 uses
  %.not32.peel.i63 = icmp eq ptr %i.fz, null
  %.pre.i64 = load i64, ptr %0, align 8           ; 2 uses
  br i1 %.not32.peel.i63, label %bb.ad, label %evbuffer_strchr.exit78

bb.ad:                                            ; preds = %.lr.ph.i62
  %i.ga = add i64 %.pre.i64, %i.fy                ; 3 uses
  store i64 %i.ga, ptr %0, align 8
  %.027.peel.i71 = load ptr, ptr %.02739.i60, align 8 ; 6 uses
  %.not.peel.i72 = icmp eq ptr %.027.peel.i71, null
  br i1 %.not.peel.i72, label %evbuffer_find_eol_char.exit.thread, label %.peel.next.i73.preheader

.peel.next.i73.preheader:                         ; preds = %bb.ad
  %i.gb = getelementptr inbounds nuw i8, ptr %.027.peel.i71, i64 40
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %.027.peel.i71, i64 16
  %i.ge = load i64, ptr %i.gd, align 8
  %i.gf = getelementptr inbounds i8, ptr %i.gc, i64 %i.ge ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.027.peel.i71, i64 24
  %i.gh = load i64, ptr %i.gg, align 8            ; 2 uses
  %i.gi = tail call ptr @memchr(ptr noundef %i.gf, i32 noundef 0, i64 noundef %i.gh) #17 ; 2 uses
  %.not32.i75170 = icmp eq ptr %i.gi, null
  br i1 %.not32.i75170, label %.lr.ph, label %evbuffer_strchr.exit78

.peel.next.i73:                                   ; preds = %.lr.ph
  %i.gj = getelementptr inbounds nuw i8, ptr %.027.i76, i64 40
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %.027.i76, i64 16
  %i.gm = load i64, ptr %i.gl, align 8
  %i.gn = getelementptr inbounds i8, ptr %i.gk, i64 %i.gm ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.027.i76, i64 24
  %i.gp = load i64, ptr %i.go, align 8            ; 2 uses
  %i.gq = tail call ptr @memchr(ptr noundef %i.gn, i32 noundef 0, i64 noundef %i.gp) #17 ; 2 uses
  %.not32.i75 = icmp eq ptr %i.gq, null
  br i1 %.not32.i75, label %.lr.ph, label %evbuffer_strchr.exit78, !llvm.loop !37

.lr.ph:                                           ; preds = %.peel.next.i73.preheader, %.peel.next.i73
  %i.gr = phi i64 [ %i.gp, %.peel.next.i73 ], [ %i.gh, %.peel.next.i73.preheader ]
  %.02742.i74171 = phi ptr [ %.027.i76, %.peel.next.i73 ], [ %.027.peel.i71, %.peel.next.i73.preheader ]
  %i.gs = phi i64 [ %i.gt, %.peel.next.i73 ], [ %i.ga, %.peel.next.i73.preheader ]
  %i.gt = add i64 %i.gr, %i.gs                    ; 3 uses
  %.027.i76 = load ptr, ptr %.02742.i74171, align 8 ; 6 uses
  %.not.i77 = icmp eq ptr %.027.i76, null
  br i1 %.not.i77, label %evbuffer_find_eol_char.exit.thread.loopexit130, label %.peel.next.i73, !llvm.loop !37

evbuffer_strchr.exit78:                           ; preds = %.peel.next.i73, %.peel.next.i73.preheader, %.lr.ph.i62
  %i.gu = phi i64 [ %.pre.i64, %.lr.ph.i62 ], [ %i.ga, %.peel.next.i73.preheader ], [ %i.gt, %.peel.next.i73 ]
  %.02742.lcssa.i66 = phi ptr [ %.02739.i60, %.lr.ph.i62 ], [ %.027.peel.i71, %.peel.next.i73.preheader ], [ %.027.i76, %.peel.next.i73 ]
  %.02941.lcssa.i67 = phi i64 [ %i.fp, %.lr.ph.i62 ], [ 0, %.peel.next.i73.preheader ], [ 0, %.peel.next.i73 ]
  %.lcssa44.i68 = phi ptr [ %i.fu, %.lr.ph.i62 ], [ %i.gf, %.peel.next.i73.preheader ], [ %i.gn, %.peel.next.i73 ]
  %.lcssa.i69 = phi ptr [ %i.fz, %.lr.ph.i62 ], [ %i.gi, %.peel.next.i73.preheader ], [ %i.gq, %.peel.next.i73 ]
  store ptr %.02742.lcssa.i66, ptr %i.fn, align 8
  %i.gv = ptrtoint ptr %.lcssa.i69 to i64
  %i.gw = ptrtoint ptr %.lcssa44.i68 to i64
  %i.gx = sub i64 %i.gv, %i.gw                    ; 2 uses
  store i64 %i.gx, ptr %i.fo, align 8
  %i.gy = sub i64 %i.gx, %.02941.lcssa.i67
  %i.gz = add i64 %i.gy, %i.gu                    ; 2 uses
  store i64 %i.gz, ptr %0, align 8
  %i.ha = icmp slt i64 %i.gz, 0
  br i1 %i.ha, label %evbuffer_find_eol_char.exit.thread, label %evbuffer_strspn.exit

evbuffer_strspn.exit:                             ; preds = %._crit_edge.i, %.preheader.i, %evbuffer_getchr.exit, %bb.z, %bb.s, %evbuffer_ptr_subtract.exit, %evbuffer_strchr.exit78, %evbuffer_strchr.exit59, %bb.p
  %.2 = phi i64 [ 1, %evbuffer_strchr.exit78 ], [ 1, %evbuffer_strchr.exit59 ], [ 2, %bb.z ], [ 2, %bb.p ], [ 1, %evbuffer_getchr.exit ], [ 1, %bb.s ], [ %.14212.i, %.preheader.i ], [ 1, %evbuffer_ptr_subtract.exit ], [ %.142.lcssa.i, %._crit_edge.i ]
  br label %evbuffer_find_eol_char.exit.thread

evbuffer_find_eol_char.exit.thread.loopexit:      ; preds = %bb.n
  store i64 %i.aj, ptr %0, align 8
  br label %evbuffer_find_eol_char.exit.thread

evbuffer_find_eol_char.exit.thread.loopexit128:   ; preds = %.lr.ph192
  store i64 %i.co, ptr %0, align 8
  br label %evbuffer_find_eol_char.exit.thread

evbuffer_find_eol_char.exit.thread.loopexit129:   ; preds = %.lr.ph181
  store i64 %i.ff, ptr %0, align 8
  br label %evbuffer_find_eol_char.exit.thread

evbuffer_find_eol_char.exit.thread.loopexit130:   ; preds = %.lr.ph
  store i64 %i.gt, ptr %0, align 8
  br label %evbuffer_find_eol_char.exit.thread

evbuffer_find_eol_char.exit.thread:               ; preds = %evbuffer_find_eol_char.exit.thread.loopexit130, %evbuffer_find_eol_char.exit.thread.loopexit129, %evbuffer_find_eol_char.exit.thread.loopexit128, %evbuffer_find_eol_char.exit.thread.loopexit, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.r, %bb.q, %bb.j, %evbuffer_strchr.exit, %bb.i, %evbuffer_strchr.exit78, %evbuffer_strchr.exit59, %bb.p, %evbuffer_find_eol_char.exit, %evbuffer_strspn.exit
  %.not30 = phi i1 [ true, %bb.i ], [ true, %evbuffer_find_eol_char.exit ], [ false, %evbuffer_strspn.exit ], [ true, %bb.p ], [ true, %evbuffer_find_eol_char.exit.thread.loopexit128 ], [ true, %evbuffer_strchr.exit59 ], [ true, %evbuffer_strchr.exit78 ], [ true, %evbuffer_find_eol_char.exit.thread.loopexit129 ], [ true, %evbuffer_strchr.exit ], [ true, %evbuffer_find_eol_char.exit.thread.loopexit ], [ true, %bb.j ], [ true, %bb.q ], [ true, %bb.r ], [ true, %bb.aa ], [ true, %bb.ab ], [ true, %bb.ac ], [ true, %bb.ad ], [ true, %evbuffer_find_eol_char.exit.thread.loopexit130 ]
  %.3 = phi i64 [ 0, %bb.i ], [ 0, %evbuffer_find_eol_char.exit ], [ %.2, %evbuffer_strspn.exit ], [ 0, %bb.p ], [ 0, %evbuffer_find_eol_char.exit.thread.loopexit128 ], [ 0, %evbuffer_strchr.exit59 ], [ 0, %evbuffer_strchr.exit78 ], [ 0, %evbuffer_find_eol_char.exit.thread.loopexit129 ], [ 0, %evbuffer_strchr.exit ], [ 0, %evbuffer_find_eol_char.exit.thread.loopexit ], [ 0, %bb.j ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.aa ], [ 0, %bb.ab ], [ 0, %bb.ac ], [ 0, %bb.ad ], [ 0, %evbuffer_find_eol_char.exit.thread.loopexit130 ]
  %i.hb = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not29 = icmp eq ptr %i.hb, null
  br i1 %.not29, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %evbuffer_find_eol_char.exit.thread
  %i.hc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.hd = tail call i32 %i.hc(i32 noundef 0, ptr noundef nonnull %i.hb) #16 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %evbuffer_find_eol_char.exit.thread
  br i1 %.not30, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i64 -1, ptr %0, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.he, i8 0, i64 16, i1 false)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.not31 = icmp eq ptr %3, null
  br i1 %.not31, label %bb.ai, label %.sink.split

.sink.split:                                      ; preds = %bb.ah, %bb.c
  %.3.sink = phi i64 [ 0, %bb.c ], [ %.3, %bb.ah ]
  store i64 %.3.sink, ptr %3, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %.sink.split, %bb.ah, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define void @evbuffer_search(ptr dead_on_unwind noalias nofree writable sret(%struct.evbuffer_ptr) align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #1 {
bb.a:
  tail call void @evbuffer_search_range(ptr dead_on_unwind writable sret(%struct.evbuffer_ptr) align 8 %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef null)
  ret void
}

declare ptr @event_mm_malloc_(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @evbuffer_prepend(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.d = tail call i32 %i.c(i32 noundef 0, ptr noundef nonnull %i.b) #16 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %evbuffer_chain_new.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load i8, ptr %i.f, align 8
  %i.h = and i8 %i.g, 2
  %.not81 = icmp eq i8 %i.h, 0
  br i1 %.not81, label %bb.e, label %evbuffer_chain_new.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = xor i64 %i.j, -1
  %i.l = icmp ugt i64 %2, %i.k
  br i1 %i.l, label %evbuffer_chain_new.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %0, align 8                ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.o = icmp ugt i64 %2, 9223372036854775759
  br i1 %i.o, label %evbuffer_chain_new.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = add nuw nsw i64 %2, 48                   ; 2 uses
  %i.q = icmp samesign ult i64 %2, 4611686018427387855
  br i1 %i.q, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %bb.h, %.preheader.i
  %.0.i = phi i64 [ %i.s, %.preheader.i ], [ 1024, %bb.h ] ; 3 uses
  %i.r = icmp ult i64 %.0.i, %i.p
  %i.s = shl nuw nsw i64 %.0.i, 1
  br i1 %i.r, label %.preheader.i, label %.loopexit.i, !llvm.loop !14

.loopexit.i:                                      ; preds = %.preheader.i, %bb.h
  %.1.i = phi i64 [ %i.p, %bb.h ], [ %.0.i, %.preheader.i ] ; 2 uses
  %i.t = tail call ptr @event_mm_malloc_(i64 noundef %.1.i) #16 ; 13 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %evbuffer_chain_new.exit.thread, label %bb.i

bb.i:                                             ; preds = %.loopexit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.t, i8 0, i64 40, i1 false)
  %i.v = add i64 %.1.i, -48
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.v, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store ptr %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 36
  store i32 1, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.j, label %.lr.ph.i.i

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.ae, align 8
  store ptr %i.t, ptr %0, align 8
  br label %evbuffer_chain_insert.exit

.lr.ph.i.i:                                       ; preds = %bb.i, %.critedge2.i.i
  %.0.i.i = phi ptr [ %i.ak, %.critedge2.i.i ], [ %i.ac, %bb.i ] ; 6 uses
  %.021.i.i = phi ptr [ %.0.i.i, %.critedge2.i.i ], [ %i.ab, %bb.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.ag = load i64, ptr %i.af, align 8
  %.not13.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not13.i.i, label %bb.k, label %.critedge2.i.i

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = and i32 %i.ai, 48
  %.not14.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not14.i.i, label %.lr.ph.i.i.i, label %.critedge2.i.i

.critedge2.i.i:                                   ; preds = %bb.k, %.lr.ph.i.i
  %i.ak = load ptr, ptr %.0.i.i, align 8          ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %evbuffer_free_trailing_empty_chains.exit.i, label %.lr.ph.i.i, !llvm.loop !15

.lr.ph.i.i.i:                                     ; preds = %bb.k, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.0.i.i, %bb.k ] ; 2 uses
  %i.al = load ptr, ptr %.05.i.i.i, align 8       ; 2 uses
  tail call fastcc void @evbuffer_chain_free(ptr noundef nonnull %.05.i.i.i)
  %.not.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i, label %evbuffer_free_all_chains.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !16

evbuffer_free_all_chains.exit.i.i:                ; preds = %.lr.ph.i.i.i
  store ptr null, ptr %.021.i.i, align 8
  br label %evbuffer_free_trailing_empty_chains.exit.i

evbuffer_free_trailing_empty_chains.exit.i:       ; preds = %.critedge2.i.i, %evbuffer_free_all_chains.exit.i.i
  %.018.i.i = phi ptr [ %.021.i.i, %evbuffer_free_all_chains.exit.i.i ], [ %.0.i.i, %.critedge2.i.i ] ; 2 uses
  store ptr %i.t, ptr %.018.i.i, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.an = load i64, ptr %i.am, align 8
  %.not.i = icmp eq i64 %i.an, 0
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %evbuffer_free_trailing_empty_chains.exit.i
  store ptr %.018.i.i, ptr %i.aa, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %evbuffer_free_trailing_empty_chains.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.ao, align 8
  br label %evbuffer_chain_insert.exit

evbuffer_chain_insert.exit:                       ; preds = %bb.j, %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = load i64, ptr %i.i, align 8
  %i.as = add i64 %i.ar, %i.aq
  store i64 %i.as, ptr %i.i, align 8
  br label %bb.n

bb.n:                                             ; preds = %evbuffer_chain_insert.exit, %bb.f
  %.073.a = phi ptr [ %i.t, %evbuffer_chain_insert.exit ], [ %i.m, %bb.f ] ; 10 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.073.a, i64 32
  %i.au = load i32, ptr %i.at, align 8
  %i.av = and i32 %i.au, 8
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %.073.a, i64 24 ; 5 uses
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.p, label %._crit_edge

._crit_edge:                                      ; preds = %bb.o
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.073.a, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %.073.a, i64 8
  %i.bb = load i64, ptr %i.ba, align 8            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.073.a, i64 16
  store i64 %i.bb, ptr %i.bc, align 8
  br label %bb.q
end_hunk_3
begin_hunk_4_@evbuffer_prepend:bb.a
  %.072.sink114 = phi i64 [ %.072, %bb.z ], [ %2, %bb.r ]
  %i.db = load <2 x i64>, ptr %i.i, align 8
  %i.dc = insertelement <2 x i64> poison, i64 %.072.sink114, i64 0
  %i.dd = shufflevector <2 x i64> %i.dc, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.de = add <2 x i64> %i.db, %i.dd
  store <2 x i64> %i.de, ptr %i.i, align 8
  tail call void @evbuffer_invoke_callbacks_(ptr noundef nonnull %0)
  br label %evbuffer_chain_new.exit.thread

evbuffer_chain_new.exit.thread:                   ; preds = %.loopexit.i87, %bb.u, %.loopexit.i, %bb.g, %bb.c, %bb.e, %bb.d, %bb.aa
  %.0 = phi i32 [ 0, %bb.c ], [ -1, %bb.d ], [ -1, %bb.e ], [ 0, %bb.aa ], [ -1, %.loopexit.i ], [ -1, %bb.g ], [ -1, %bb.u ], [ -1, %.loopexit.i87 ]
  %i.df = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not86 = icmp eq ptr %i.df, null
  br i1 %.not86, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %evbuffer_chain_new.exit.thread
  %i.dg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.dh = tail call i32 %i.dg(i32 noundef 0, ptr noundef nonnull %i.df) #16 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %evbuffer_chain_new.exit.thread
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @evbuffer_expand(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.d = tail call i32 %i.c(i32 noundef 0, ptr noundef nonnull %i.b) #16 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = tail call fastcc ptr @evbuffer_expand_singlechain(ptr noundef nonnull %0, i64 noundef %1)
  %i.f = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not7 = icmp eq ptr %i.f, null
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.h = tail call i32 %i.g(i32 noundef 0, ptr noundef nonnull %i.f) #16 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not8 = icmp eq ptr %i.e, null
  %i.i = sext i1 %.not8 to i32
  ret i32 %i.i
}

; Function Attrs: nounwind uwtable
define noundef i32 @evbuffer_read(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %3 = alloca [4 x %struct.iovec], align 16       ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.e = tail call i32 %i.d(i32 noundef 0, ptr noundef nonnull %i.c) #16 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load i8, ptr %i.f, align 8
  %i.h = and i8 %i.g, 4
  %.not50 = icmp eq i8 %i.h, 0
  br i1 %.not50, label %bb.d, label %bb.ak

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 4096, ptr %i.a, align 4
  %i.i = call i32 (i32, i64, ...) @ioctl(i32 noundef %1, i64 noundef 21531, ptr noundef nonnull %i.a) #16
  %i.j = load i32, ptr %i.a, align 4
  %.inv.i = icmp sgt i32 %i.i, -1
  %.0.i = select i1 %.inv.i, i32 %i.j, i32 -1     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.k = add i32 %.0.i, -4097
  %or.cond = icmp ult i32 %i.k, -4096
  %spec.store.select2 = select i1 %or.cond, i32 4096, i32 %.0.i ; 2 uses
  %i.l = icmp slt i32 %2, 0
  %i.m = call i32 @llvm.smin.i32(i32 %2, i32 %spec.store.select2)
  %.043.a = select i1 %i.l, i32 %spec.store.select2, i32 %i.m ; 3 uses
  %i.n = sext i32 %.043.a to i64                  ; 8 uses
  %i.o = call i32 @evbuffer_expand_fast_(ptr noundef nonnull %0, i64 noundef %i.n, i32 noundef 4)
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %bb.ak, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.q = icmp slt i32 %.043.a, 0
  br i1 %i.q, label %evbuffer_read_setup_vecs_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load i32, ptr %i.u, align 8
  %i.w = and i32 %i.v, 8
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = add i64 %i.ac, %i.aa
  %i.ae = icmp eq i64 %i.y, %i.ad
  br i1 %i.ae, label %.critedge.i, label %bb.h

.critedge.i:                                      ; preds = %bb.g, %bb.f
  br label %bb.h

bb.h:                                             ; preds = %.critedge.i, %bb.g
  %.043.i = phi ptr [ %i.t, %.critedge.i ], [ %i.s, %bb.g ] ; 6 uses
  %.not64 = icmp eq i32 %.043.a, 0
  br i1 %.not64, label %evbuffer_read_setup_vecs_.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.h
  %.04455.i = load ptr, ptr %.043.i, align 8      ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.04455.i, i64 32
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = and i32 %i.ag, 8
  %.not48.i = icmp eq i32 %i.ah, 0
  br i1 %.not48.i, label %bb.i, label %.lr.ph.split._crit_edge.i

.lr.ph.split._crit_edge.i:                        ; preds = %.lr.ph.split.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.04455.i, i64 16
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  %.phi.trans.insert62.i = getelementptr inbounds nuw i8, ptr %.04455.i, i64 24
  %.pre63.i = load i64, ptr %.phi.trans.insert62.i, align 8
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph.split.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.04455.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.04455.i, i64 16
  %i.al = load i64, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.04455.i, i64 24
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = add i64 %i.al, %i.an
  %i.ap = sub i64 %i.aj, %i.ao
  %i.aq = call i64 @llvm.umin.i64(i64 %i.ap, i64 %i.n)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.split._crit_edge.i
  %i.ar = phi i64 [ %i.an, %bb.i ], [ %.pre63.i, %.lr.ph.split._crit_edge.i ]
  %i.as = phi i64 [ %i.al, %bb.i ], [ %.pre.i, %.lr.ph.split._crit_edge.i ]
  %i.at = phi i64 [ %i.aq, %bb.i ], [ 0, %.lr.ph.split._crit_edge.i ] ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.04455.i, i64 40
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 %i.as
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ar
  store ptr %i.ax, ptr %3, align 16
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.at, ptr %i.ay, align 8
  %i.az = icmp ult i64 %i.at, %i.n
  br i1 %i.az, label %.lr.ph.split.i.1, label %evbuffer_read_setup_vecs_.exit

.lr.ph.split.i.1:                                 ; preds = %bb.j
  %.04455.i.1 = load ptr, ptr %.04455.i, align 8  ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.04455.i.1, i64 32
  %i.bb = load i32, ptr %i.ba, align 8
  %i.bc = and i32 %i.bb, 8
  %.not48.i.1 = icmp eq i32 %i.bc, 0
  br i1 %.not48.i.1, label %bb.k, label %.lr.ph.split._crit_edge.i.1

.lr.ph.split._crit_edge.i.1:                      ; preds = %.lr.ph.split.i.1
  %.phi.trans.insert.i.1 = getelementptr inbounds nuw i8, ptr %.04455.i.1, i64 16
  %.pre.i.1 = load i64, ptr %.phi.trans.insert.i.1, align 8
  %.phi.trans.insert62.i.1 = getelementptr inbounds nuw i8, ptr %.04455.i.1, i64 24
  %.pre63.i.1 = load i64, ptr %.phi.trans.insert62.i.1, align 8
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.split.i.1
  %i.bd = getelementptr inbounds nuw i8, ptr %.04455.i.1, i64 8
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.04455.i.1, i64 16
  %i.bg = load i64, ptr %i.bf, align 8            ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.04455.i.1, i64 24
  %i.bi = load i64, ptr %i.bh, align 8            ; 2 uses
  %i.bj = add i64 %i.bg, %i.bi
  %i.bk = sub i64 %i.be, %i.bj
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.split._crit_edge.i.1
  %i.bl = phi i64 [ %i.bi, %bb.k ], [ %.pre63.i.1, %.lr.ph.split._crit_edge.i.1 ]
  %i.bm = phi i64 [ %i.bg, %bb.k ], [ %.pre.i.1, %.lr.ph.split._crit_edge.i.1 ]
  %i.bn = phi i64 [ %i.bk, %bb.k ], [ 0, %.lr.ph.split._crit_edge.i.1 ]
  %i.bo = sub nsw i64 %i.n, %i.at
  %i.bp = call i64 @llvm.umin.i64(i64 %i.bn, i64 %i.bo) ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.04455.i.1, i64 40
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 %i.bm
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bl
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.bt, ptr %i.bu, align 16
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.bp, ptr %i.bv, align 8
  %i.bw = add i64 %i.bp, %i.at                    ; 3 uses
  %i.bx = icmp ult i64 %i.bw, %i.n
  br i1 %i.bx, label %.lr.ph.split.i.2, label %evbuffer_read_setup_vecs_.exit

.lr.ph.split.i.2:                                 ; preds = %bb.l
  %.04455.i.2 = load ptr, ptr %.04455.i.1, align 8 ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.04455.i.2, i64 32
  %i.bz = load i32, ptr %i.by, align 8
  %i.ca = and i32 %i.bz, 8
  %.not48.i.2 = icmp eq i32 %i.ca, 0
  br i1 %.not48.i.2, label %bb.m, label %.lr.ph.split._crit_edge.i.2

.lr.ph.split._crit_edge.i.2:                      ; preds = %.lr.ph.split.i.2
  %.phi.trans.insert.i.2 = getelementptr inbounds nuw i8, ptr %.04455.i.2, i64 16
  %.pre.i.2 = load i64, ptr %.phi.trans.insert.i.2, align 8
  %.phi.trans.insert62.i.2 = getelementptr inbounds nuw i8, ptr %.04455.i.2, i64 24
  %.pre63.i.2 = load i64, ptr %.phi.trans.insert62.i.2, align 8
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.split.i.2
  %i.cb = getelementptr inbounds nuw i8, ptr %.04455.i.2, i64 8
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.04455.i.2, i64 16
  %i.ce = load i64, ptr %i.cd, align 8            ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.04455.i.2, i64 24
  %i.cg = load i64, ptr %i.cf, align 8            ; 2 uses
  %i.ch = add i64 %i.ce, %i.cg
  %i.ci = sub i64 %i.cc, %i.ch
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.split._crit_edge.i.2
  %i.cj = phi i64 [ %i.cg, %bb.m ], [ %.pre63.i.2, %.lr.ph.split._crit_edge.i.2 ]
  %i.ck = phi i64 [ %i.ce, %bb.m ], [ %.pre.i.2, %.lr.ph.split._crit_edge.i.2 ]
  %i.cl = phi i64 [ %i.ci, %bb.m ], [ 0, %.lr.ph.split._crit_edge.i.2 ]
  %i.cm = sub nsw i64 %i.n, %i.bw
  %i.cn = call i64 @llvm.umin.i64(i64 %i.cl, i64 %i.cm) ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.04455.i.2, i64 40
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 %i.ck
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cj
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.cr, ptr %i.cs, align 16
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %i.cn, ptr %i.ct, align 8
  %i.cu = add i64 %i.cn, %i.bw                    ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.n
  br i1 %i.cv, label %.lr.ph.split.i.3, label %evbuffer_read_setup_vecs_.exit

.lr.ph.split.i.3:                                 ; preds = %bb.n
  %.04455.i.3 = load ptr, ptr %.04455.i.2, align 8 ; 7 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.04455.i.3, i64 32
  %i.cx = load i32, ptr %i.cw, align 8
  %i.cy = and i32 %i.cx, 8
  %.not48.i.3 = icmp eq i32 %i.cy, 0
  br i1 %.not48.i.3, label %bb.o, label %.lr.ph.split._crit_edge.i.3

.lr.ph.split._crit_edge.i.3:                      ; preds = %.lr.ph.split.i.3
  %.phi.trans.insert.i.3 = getelementptr inbounds nuw i8, ptr %.04455.i.3, i64 16
  %.pre.i.3 = load i64, ptr %.phi.trans.insert.i.3, align 8
  %.phi.trans.insert62.i.3 = getelementptr inbounds nuw i8, ptr %.04455.i.3, i64 24
  %.pre63.i.3 = load i64, ptr %.phi.trans.insert62.i.3, align 8
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph.split.i.3
  %i.cz = getelementptr inbounds nuw i8, ptr %.04455.i.3, i64 8
  %i.da = load i64, ptr %i.cz, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %.04455.i.3, i64 16
  %i.dc = load i64, ptr %i.db, align 8            ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.04455.i.3, i64 24
  %i.de = load i64, ptr %i.dd, align 8            ; 2 uses
  %i.df = add i64 %i.dc, %i.de
  %i.dg = sub i64 %i.da, %i.df
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.split._crit_edge.i.3
  %i.dh = phi i64 [ %i.de, %bb.o ], [ %.pre63.i.3, %.lr.ph.split._crit_edge.i.3 ]
  %i.di = phi i64 [ %i.dc, %bb.o ], [ %.pre.i.3, %.lr.ph.split._crit_edge.i.3 ]
  %i.dj = phi i64 [ %i.dg, %bb.o ], [ 0, %.lr.ph.split._crit_edge.i.3 ]
  %i.dk = sub nsw i64 %i.n, %i.cu
  %i.dl = call i64 @llvm.umin.i64(i64 %i.dj, i64 %i.dk)
  %i.dm = getelementptr inbounds nuw i8, ptr %.04455.i.3, i64 40
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 %i.di
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dh
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %i.dp, ptr %i.dq, align 16
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %i.dl, ptr %i.dr, align 8
  br label %evbuffer_read_setup_vecs_.exit

evbuffer_read_setup_vecs_.exit:                   ; preds = %bb.j, %bb.l, %bb.n, %bb.p, %bb.h, %bb.e
  %.2 = phi ptr [ undef, %bb.e ], [ %.043.i, %bb.h ], [ %.043.i, %bb.p ], [ %.043.i, %bb.n ], [ %.043.i, %bb.l ], [ %.043.i, %bb.j ] ; 3 uses
  %.045.i = phi i32 [ -1, %bb.e ], [ 0, %bb.h ], [ 1, %bb.j ], [ 2, %bb.l ], [ 3, %bb.n ], [ 4, %bb.p ] ; 6 uses
  %i.ds = call i64 @readv(i32 noundef %1, ptr noundef nonnull %3, i32 noundef %.045.i) #16 ; 3 uses
  %i.dt = trunc i64 %i.ds to i32                  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %.off = add i32 %i.dt, -1
  %switch = icmp ult i32 %.off, -2
  br i1 %switch, label %.preheader, label %bb.ak

.preheader:                                       ; preds = %evbuffer_read_setup_vecs_.exit
  %i.du = icmp sgt i32 %.045.i, 0
  br i1 %i.du, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.dv = load ptr, ptr %.2, align 8              ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.dx = load i32, ptr %i.dw, align 8
  %i.dy = and i32 %i.dx, 8
  %.not51 = icmp eq i32 %i.dy, 0
  br i1 %.not51, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.ea = load i64, ptr %i.dz, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = add i64 %i.ec, %i.ee
  %i.eg = sub i64 %i.ea, %i.ef
  %i.eh = call i64 @llvm.umin.i64(i64 %i.eg, i64 9223372036854775807)
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.q
  %spec.store.select = phi i64 [ %i.eh, %bb.q ], [ 0, %.lr.ph ] ; 3 uses
  %sext97 = shl i64 %i.ds, 32
  %i.ei = ashr exact i64 %sext97, 32              ; 2 uses
  %i.ej = icmp slt i64 %spec.store.select, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dv, i64 24 ; 3 uses
  %i.el = load i64, ptr %i.ek, align 8            ; 2 uses
  br i1 %i.ej, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.ai, %bb.ag, %bb.ae, %bb.ab, %bb.y, %bb.v, %bb.r
  %.lcssa95 = phi i64 [ %i.ei, %bb.r ], [ %i.ff, %bb.v ], [ %i.ga, %bb.y ], [ %i.gv, %bb.ab ], [ %i.hq, %bb.ae ], [ %i.il, %bb.ag ], [ %i.jg, %bb.ai ]
  %.lcssa93 = phi ptr [ %i.ek, %bb.r ], [ %i.fh, %bb.v ], [ %i.gc, %bb.y ], [ %i.gx, %bb.ab ], [ %i.hs, %bb.ae ], [ %i.in, %bb.ag ], [ %i.ji, %bb.ai ]
  %.lcssa = phi i64 [ %i.el, %bb.r ], [ %i.fi, %bb.v ], [ %i.gd, %bb.y ], [ %i.gy, %bb.ab ], [ %i.ht, %bb.ae ], [ %i.io, %bb.ag ], [ %i.jj, %bb.ai ]
  %.05772.lcssa = phi ptr [ %.2, %bb.r ], [ %i.er, %bb.v ], [ %i.fm, %bb.y ], [ %i.gh, %bb.ab ], [ %i.hc, %bb.ae ], [ %i.hx, %bb.ag ], [ %i.is, %bb.ai ]
  %i.em = add i64 %.lcssa, %.lcssa95
  store i64 %i.em, ptr %.lcssa93, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.05772.lcssa, ptr %i.en, align 8
  br label %.loopexit

bb.t:                                             ; preds = %bb.r
  %i.eo = add i64 %i.el, %spec.store.select
  store i64 %i.eo, ptr %i.ek, align 8
  %i.ep = trunc nuw nsw i64 %spec.store.select to i32
  %i.eq = sub nsw i32 %i.dt, %i.ep                ; 2 uses
  %i.er = load ptr, ptr %.2, align 8              ; 3 uses
  %exitcond.not = icmp eq i32 %.045.i, 1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.t
  %i.es = load ptr, ptr %i.er, align 8            ; 5 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  %i.eu = load i32, ptr %i.et, align 8
  %i.ev = and i32 %i.eu, 8
  %.not51.1 = icmp eq i32 %i.ev, 0
  br i1 %.not51.1, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.1
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.ex = load i64, ptr %i.ew, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.ez = load i64, ptr %i.ey, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.fb = load i64, ptr %i.fa, align 8
  %i.fc = add i64 %i.ez, %i.fb
  %i.fd = sub i64 %i.ex, %i.fc
  %i.fe = call i64 @llvm.umin.i64(i64 %i.fd, i64 9223372036854775807)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.1
  %spec.store.select.1 = phi i64 [ %i.fe, %bb.u ], [ 0, %.lr.ph.1 ] ; 3 uses
  %i.ff = sext i32 %i.eq to i64                   ; 2 uses
  %i.fg = icmp slt i64 %spec.store.select.1, %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %i.es, i64 24 ; 3 uses
  %i.fi = load i64, ptr %i.fh, align 8            ; 2 uses
  br i1 %i.fg, label %bb.w, label %bb.s

bb.w:                                             ; preds = %bb.v
  %i.fj = add i64 %i.fi, %spec.store.select.1
  store i64 %i.fj, ptr %i.fh, align 8
  %i.fk = trunc nuw nsw i64 %spec.store.select.1 to i32
  %i.fl = sub nsw i32 %i.eq, %i.fk                ; 2 uses
  %i.fm = load ptr, ptr %i.er, align 8            ; 3 uses
  %exitcond.not.1 = icmp eq i32 %.045.i, 2
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.w
  %i.fn = load ptr, ptr %i.fm, align 8            ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.fp = load i32, ptr %i.fo, align 8
  %i.fq = and i32 %i.fp, 8
  %.not51.2 = icmp eq i32 %i.fq, 0
  br i1 %.not51.2, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph.2
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fs = load i64, ptr %i.fr, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fu = load i64, ptr %i.ft, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fw = load i64, ptr %i.fv, align 8
  %i.fx = add i64 %i.fu, %i.fw
  %i.fy = sub i64 %i.fs, %i.fx
  %i.fz = call i64 @llvm.umin.i64(i64 %i.fy, i64 9223372036854775807)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.2
  %spec.store.select.2 = phi i64 [ %i.fz, %bb.x ], [ 0, %.lr.ph.2 ] ; 3 uses
  %i.ga = sext i32 %i.fl to i64                   ; 2 uses
  %i.gb = icmp slt i64 %spec.store.select.2, %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fn, i64 24 ; 3 uses
  %i.gd = load i64, ptr %i.gc, align 8            ; 2 uses
  br i1 %i.gb, label %bb.z, label %bb.s

bb.z:                                             ; preds = %bb.y
  %i.ge = add i64 %i.gd, %spec.store.select.2
  store i64 %i.ge, ptr %i.gc, align 8
  %i.gf = trunc nuw nsw i64 %spec.store.select.2 to i32
  %i.gg = sub nsw i32 %i.fl, %i.gf                ; 2 uses
  %i.gh = load ptr, ptr %i.fm, align 8            ; 3 uses
  %exitcond.not.2 = icmp eq i32 %.045.i, 3
  br i1 %exitcond.not.2, label %.loopexit, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %bb.z
  %i.gi = load ptr, ptr %i.gh, align 8            ; 5 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  %i.gk = load i32, ptr %i.gj, align 8
  %i.gl = and i32 %i.gk, 8
  %.not51.3 = icmp eq i32 %i.gl, 0
  br i1 %.not51.3, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.3
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gn = load i64, ptr %i.gm, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gp = load i64, ptr %i.go, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gr = load i64, ptr %i.gq, align 8
  %i.gs = add i64 %i.gp, %i.gr
  %i.gt = sub i64 %i.gn, %i.gs
  %i.gu = call i64 @llvm.umin.i64(i64 %i.gt, i64 9223372036854775807)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.3
  %spec.store.select.3 = phi i64 [ %i.gu, %bb.aa ], [ 0, %.lr.ph.3 ] ; 3 uses
  %i.gv = sext i32 %i.gg to i64                   ; 2 uses
  %i.gw = icmp slt i64 %spec.store.select.3, %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gi, i64 24 ; 3 uses
  %i.gy = load i64, ptr %i.gx, align 8            ; 2 uses
  br i1 %i.gw, label %bb.ac, label %bb.s

bb.ac:                                            ; preds = %bb.ab
  %i.gz = add i64 %i.gy, %spec.store.select.3
  store i64 %i.gz, ptr %i.gx, align 8
  %i.ha = trunc nuw nsw i64 %spec.store.select.3 to i32
  %i.hb = sub nsw i32 %i.gg, %i.ha                ; 2 uses
  %i.hc = load ptr, ptr %i.gh, align 8            ; 3 uses
  %exitcond.not.3 = icmp eq i32 %.045.i, 4
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %bb.ac
  %i.hd = load ptr, ptr %i.hc, align 8            ; 5 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 32
  %i.hf = load i32, ptr %i.he, align 8
  %i.hg = and i32 %i.hf, 8
  %.not51.4 = icmp eq i32 %i.hg, 0
  br i1 %.not51.4, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.4
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hi = load i64, ptr %i.hh, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hk = load i64, ptr %i.hj, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  %i.hm = load i64, ptr %i.hl, align 8
end_hunk_4
begin_hunk_5_@evbuffer_add_reference:.preheader.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.w = load i64, ptr %i.v, align 8
  %.not13.i.i = icmp eq i64 %i.w, 0
  br i1 %.not13.i.i, label %bb.g, label %.critedge2.i.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  %i.y = load i32, ptr %i.x, align 8
  %i.z = and i32 %i.y, 48
  %.not14.i.i = icmp eq i32 %i.z, 0
  br i1 %.not14.i.i, label %.lr.ph.i.i.i, label %.critedge2.i.i

.critedge2.i.i:                                   ; preds = %bb.g, %.lr.ph.i.i
  %i.aa = load ptr, ptr %.0.i.i, align 8          ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %evbuffer_free_trailing_empty_chains.exit.i, label %.lr.ph.i.i, !llvm.loop !15

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %.0.i.i, %bb.g ] ; 2 uses
  %i.ab = load ptr, ptr %.05.i.i.i, align 8       ; 2 uses
  tail call fastcc void @evbuffer_chain_free(ptr noundef nonnull %.05.i.i.i)
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %evbuffer_free_all_chains.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !16

evbuffer_free_all_chains.exit.i.i:                ; preds = %.lr.ph.i.i.i
  store ptr null, ptr %.021.i.i, align 8
  br label %evbuffer_free_trailing_empty_chains.exit.i

evbuffer_free_trailing_empty_chains.exit.i:       ; preds = %.critedge2.i.i, %evbuffer_free_all_chains.exit.i.i
  %.018.i.i = phi ptr [ %.021.i.i, %evbuffer_free_all_chains.exit.i.i ], [ %.0.i.i, %.critedge2.i.i ] ; 2 uses
  store ptr %i.a, ptr %.018.i.i, align 8
  %i.ac = load i64, ptr %i.h, align 8
  %.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %evbuffer_free_trailing_empty_chains.exit.i
  store ptr %.018.i.i, ptr %i.q, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %evbuffer_free_trailing_empty_chains.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.ad, align 8
  br label %evbuffer_chain_insert.exit

evbuffer_chain_insert.exit:                       ; preds = %bb.f, %bb.i
  %i.ae = load i64, ptr %i.h, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = add i64 %i.ag, %i.ae
  store i64 %i.ah, ptr %i.af, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = add i64 %i.aj, %2
  store i64 %i.ak, ptr %i.ai, align 8
  tail call void @evbuffer_invoke_callbacks_(ptr noundef nonnull %0)
  br label %bb.j

bb.j:                                             ; preds = %evbuffer_chain_insert.exit, %bb.d
  %.0 = phi i32 [ -1, %bb.d ], [ 0, %evbuffer_chain_insert.exit ] ; 2 uses
  %i.al = load ptr, ptr %i.j, align 8             ; 2 uses
  %.not31 = icmp eq ptr %i.al, null
  br i1 %.not31, label %evbuffer_chain_new.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.an = tail call i32 %i.am(i32 noundef 0, ptr noundef nonnull %i.al) #16 ; 0 uses
  br label %evbuffer_chain_new.exit.thread

evbuffer_chain_new.exit.thread:                   ; preds = %.preheader.i, %bb.j, %bb.k
  %.025 = phi i32 [ %.0, %bb.j ], [ %.0, %bb.k ], [ -1, %.preheader.i ]
  ret i32 %.025
}

; Function Attrs: nounwind uwtable
define ptr @evbuffer_file_segment_new(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.stat, align 8               ; 4 uses
  %i.a = tail call ptr @event_mm_calloc_(i64 noundef 80, i64 noundef 1) #16 ; 13 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %3, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.g = icmp eq i64 %2, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.h = call i32 @fstat(i32 noundef %0, ptr noundef nonnull %4) #16
  %i.i = icmp slt i32 %i.h, 0
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.k = load i64, ptr %i.j, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br i1 %i.i, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i64 [ %i.k, %bb.c ], [ %2, %bb.b ]    ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.1, ptr %i.l, align 8
  %i.m = icmp slt i64 %1, 0
  %i.n = icmp slt i64 %.1, 0
  %or.cond3 = select i1 %i.m, i1 true, i1 %i.n
  %i.o = sub nuw nsw i64 9223372036854775807, %.1
  %i.p = icmp ugt i64 %1, %i.o
  %or.cond = select i1 %or.cond3, i1 true, i1 %i.p
  br i1 %or.cond, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = and i32 %3, 4
  %.not37 = icmp eq i32 %i.q, 0
  br i1 %.not37, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8
  %i.t = or i8 %i.s, 1
  store i8 %i.t, ptr %i.r, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.u = tail call fastcc i32 @evbuffer_file_segment_materialize(ptr noundef nonnull %i.a)
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.w = and i32 %3, 8
  %.not38 = icmp eq i32 %i.w, 0
  br i1 %.not38, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 8), align 8 ; 2 uses
  %.not39 = icmp eq ptr %i.x, null
  br i1 %.not39, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = tail call ptr %i.x(i32 noundef 0) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.z = phi ptr [ %i.y, %bb.j ], [ null, %bb.i ]
  store ptr %i.z, ptr %i.a, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.c, %bb.g, %bb.d
  tail call void @event_mm_free_(ptr noundef nonnull %i.a) #16
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %bb.k, %bb.a, %bb.l
  %.030 = phi ptr [ %i.a, %bb.h ], [ null, %bb.l ], [ null, %bb.a ], [ %i.a, %bb.k ]
  ret ptr %.030
}

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @evbuffer_file_segment_materialize(ptr nofree noundef captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4              ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i64, ptr %i.c, align 8              ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8              ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.b, label %.thread89

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = and i32 %i.j, 2
  %.not75 = icmp eq i32 %i.k, 0
  br i1 %.not75, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %.not76 = icmp eq i64 %i.f, 0
  br i1 %.not76, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call i64 @sysconf(i32 noundef 30) #16 ; 2 uses
  %.not77 = icmp eq i64 %i.l, -1
  br i1 %.not77, label %.thread89, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = srem i64 %i.f, %i.l                      ; 2 uses
  %i.n = sub nsw i64 %i.f, %i.m
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.166 = phi i64 [ %i.m, %bb.e ], [ 0, %bb.c ]   ; 2 uses
  %.164 = phi i64 [ %i.n, %bb.e ], [ 0, %bb.c ]
  %i.o = add nsw i64 %.166, %i.d
  %i.p = tail call ptr @mmap(ptr noundef null, i64 noundef %i.o, i32 noundef 1, i32 noundef 2, i32 noundef %i.b, i64 noundef %.164) #16 ; 3 uses
  %i.q = icmp eq ptr %i.p, inttoptr (i64 -1 to ptr)
  br i1 %i.q, label %.thread85, label %.thread87

.thread85:                                        ; preds = %bb.f
  %i.r = add nsw i64 %i.f, %i.d
  tail call void (ptr, ...) @event_warn(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.evbuffer_file_segment_materialize, i32 noundef %i.b, i32 noundef 0, i64 noundef %i.r) #16
  br label %bb.g

.thread87:                                        ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.p, ptr %i.s, align 8
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 %.166
  store ptr %i.t, ptr %i.g, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8
  %i.x = or i8 %i.w, 2
  store i8 %i.x, ptr %i.v, align 8
  br label %.thread89

bb.g:                                             ; preds = %.thread85, %bb.b
  %i.y = tail call i64 @lseek(i32 noundef %i.b, i64 noundef 0, i32 noundef 1) #16 ; 2 uses
  %i.z = tail call ptr @event_mm_malloc_(i64 noundef %i.d) #16 ; 7 uses
  %.not78 = icmp eq ptr %i.z, null
  br i1 %.not78, label %.thread89, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp slt i64 %i.y, 0
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @event_mm_free_(ptr noundef nonnull %i.z) #16
  br label %.thread89

bb.j:                                             ; preds = %bb.h
  %i.ab = tail call i64 @lseek(i32 noundef %i.b, i64 noundef %i.f, i32 noundef 0) #16
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.j
  %i.ad = icmp slt i64 %i.d, 1
  br i1 %i.ad, label %._crit_edge, label %.lr.ph

bb.k:                                             ; preds = %bb.j
  tail call void @event_mm_free_(ptr noundef nonnull %i.z) #16
  br label %.thread89

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.06291 = phi i64 [ %i.ai, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %.06291
  %i.af = sub nsw i64 %i.d, %.06291
  %i.ag = tail call i64 @read(i32 noundef %i.b, ptr noundef nonnull %i.ae, i64 noundef %i.af) #16 ; 3 uses
  %i.ah = icmp sgt i64 %i.ag, 0                   ; 2 uses
  %i.ai = add nuw nsw i64 %i.ag, %.06291          ; 2 uses
  %.not96 = icmp slt i64 %i.ai, %i.d
  %or.cond107 = select i1 %i.ah, i1 %.not96, i1 false
  br i1 %or.cond107, label %.lr.ph, label %._crit_edge, !llvm.loop !43

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.lcssa = phi i1 [ true, %.preheader ], [ %i.ah, %.lr.ph ]
  %.1 = phi i64 [ 0, %.preheader ], [ %i.ag, %.lr.ph ] ; 2 uses
  %i.aj = tail call ptr @__errno_location() #18   ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = tail call i64 @lseek(i32 noundef %i.b, i64 noundef %i.y, i32 noundef 0) #16
  %i.am = icmp sgt i64 %.1, -1
  %i.an = icmp ne i64 %.1, 0
  %brmerge = or i1 %.lcssa, %i.an
  %or.cond = and i1 %i.am, %brmerge
  br i1 %or.cond, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  tail call void @event_mm_free_(ptr noundef nonnull %i.z) #16
  store i32 %i.ak, ptr %i.aj, align 4
  br label %.thread89

bb.m:                                             ; preds = %._crit_edge
  %i.ao = icmp slt i64 %i.al, 0
  br i1 %i.ao, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @event_mm_free_(ptr noundef nonnull %i.z) #16
  br label %.thread89

bb.o:                                             ; preds = %bb.m
  store ptr %i.z, ptr %i.g, align 8
  br label %.thread89

.thread89:                                        ; preds = %bb.g, %bb.n, %bb.l, %bb.k, %bb.i, %bb.d, %bb.o, %.thread87, %bb.a
  %.059 = phi i32 [ 0, %bb.a ], [ 0, %.thread87 ], [ 0, %bb.o ], [ -1, %bb.d ], [ -1, %bb.i ], [ -1, %bb.k ], [ -1, %bb.l ], [ -1, %bb.n ], [ -1, %bb.g ]
  ret i32 %.059
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @evbuffer_file_segment_add_cleanup_cb(ptr nofree noundef writeonly captures(none) initializes((64, 80)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %2, ptr %i.b, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @evbuffer_file_segment_free(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = add nsw i32 %i.c, -1
  store i32 %i.d, ptr %i.b, align 8
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.f = tail call i32 %i.e(i32 noundef 0, ptr noundef nonnull %i.a) #16 ; 0 uses
  %.pr = load ptr, ptr %0, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8              ; 3 uses
  %i.i = add nsw i32 %i.h, -1
  store i32 %i.i, ptr %i.g, align 8
  %.not33 = icmp eq ptr %.pr, null
  br i1 %.not33, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.k = tail call i32 %i.j(i32 noundef 0, ptr noundef nonnull %.pr) #16 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c, %bb.b
  %i.l = phi i32 [ %i.c, %.thread ], [ %i.h, %bb.c ], [ %i.h, %bb.b ]
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i8, ptr %i.n, align 8
  %i.p = and i8 %i.o, 2
  %.not34 = icmp eq i8 %i.p, 0
  br i1 %.not34, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load i64, ptr %i.q, align 8
  %i.s = tail call i64 @sysconf(i32 noundef 30) #16
  %i.t = srem i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.x = load i64, ptr %i.w, align 8
  %i.y = add nsw i64 %i.x, %i.t
  %i.z = tail call i32 @munmap(ptr noundef %i.v, i64 noundef %i.y) #16
  %i.aa = icmp eq i32 %i.z, -1
  br i1 %i.aa, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @event_warn(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.evbuffer_file_segment_free) #16
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not35 = icmp eq ptr %i.ac, null
  br i1 %.not35, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @event_mm_free_(ptr noundef nonnull %i.ac) #16
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = and i32 %i.ae, 1
  %.not36 = icmp eq i32 %i.af, 0
  br i1 %.not36, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ah = load i32, ptr %i.ag, align 4            ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, -1
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aj = tail call i32 @close(i32 noundef %i.ah) #16 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not37 = icmp eq ptr %i.al, null
  br i1 %.not37, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = load i32, ptr %i.ad, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.al(ptr noundef nonnull %0, i32 noundef %i.am, ptr noundef %i.ao) #16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.ap = load ptr, ptr %0, align 8               ; 2 uses
  %i.aq = icmp ne ptr %i.ap, null
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 16), align 8 ; 2 uses
  %i.as = icmp ne ptr %i.ar, null
  %or.cond = select i1 %i.aq, i1 %i.as, i1 false
  br i1 %or.cond, label %bb.p, label %bb.q

end_hunk_5
