inline.NumInlined: 26
inline.NumDeleted: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.heap_node = type { ptr, ptr, ptr }
%struct.uv__queue = type { ptr, ptr }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @uv_timer_init(ptr noundef %0, ptr noundef initializes((8, 20), (32, 48), (88, 92)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 13, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i32 8, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  store ptr %i.d, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.g, ptr %i.h, align 8
  store ptr %i.e, ptr %i.g, align 8
  store ptr %i.e, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr null, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr null, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store ptr %i.l, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %i.l, ptr %i.m, align 8
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -22, 1) i32 @uv_timer_start(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.heap_node, align 8          ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 3
  %i.d = icmp ne i32 %i.c, 0
  %i.e = icmp eq ptr %1, null
  %or.cond = or i1 %i.e, %i.d
  br i1 %or.cond, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @uv_timer_stop(ptr noundef nonnull %0) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 544
  %i.j = load i64, ptr %i.i, align 8
  %spec.store.select = tail call i64 @llvm.uadd.sat.i64(i64 %2, i64 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store i64 %spec.store.select, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 536 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store i64 %i.o, ptr %i.q, align 8
  %i.r = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 520 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 12 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 528 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %i.x = load i32, ptr %i.w, align 8
  %i.y = add i32 %i.x, 1                          ; 2 uses
  %i.z = icmp ugt i32 %i.y, 1
  br i1 %i.z, label %.lr.ph.i, label %.preheader.._crit_edge_crit_edge.i

.preheader.._crit_edge_crit_edge.i:               ; preds = %bb.b
  %.pre.i = load ptr, ptr %i.s, align 8
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.09.i = phi i32 [ %i.ad, %.lr.ph.i ], [ 0, %bb.b ] ; 2 uses
  %.0288.i = phi i32 [ %i.ae, %.lr.ph.i ], [ %i.y, %bb.b ] ; 3 uses
  %.0297.i = phi i32 [ %i.ac, %.lr.ph.i ], [ 0, %bb.b ]
  %i.aa = shl i32 %.0297.i, 1
  %i.ab = and i32 %.0288.i, 1
  %i.ac = or disjoint i32 %i.aa, %i.ab            ; 3 uses
  %i.ad = add nuw nsw i32 %.09.i, 1               ; 4 uses
  %i.ae = lshr i32 %.0288.i, 1
  %i.af = icmp ugt i32 %.0288.i, 3
  br i1 %i.af, label %.lr.ph.i, label %.lr.ph15.i.preheader, !llvm.loop !8

.lr.ph15.i.preheader:                             ; preds = %.lr.ph.i
  %xtraiter = and i32 %i.ad, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph15.i.prol.loopexit, label %.lr.ph15.i.prol

.lr.ph15.i.prol:                                  ; preds = %.lr.ph15.i.preheader, %.lr.ph15.i.prol
  %.114.i.prol = phi i32 [ %i.ak, %.lr.ph15.i.prol ], [ %i.ad, %.lr.ph15.i.preheader ]
  %.13013.i.prol = phi i32 [ %i.aj, %.lr.ph15.i.prol ], [ %i.ac, %.lr.ph15.i.preheader ] ; 2 uses
  %.03112.i.prol = phi ptr [ %.132.i.prol, %.lr.ph15.i.prol ], [ %i.s, %.lr.ph15.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph15.i.prol ], [ 0, %.lr.ph15.i.preheader ]
  %i.ag = load ptr, ptr %.03112.i.prol, align 8   ; 2 uses
  %i.ah = shl i32 %.13013.i.prol, 3
  %i.ai = and i32 %i.ah, 8
  %.132.idx.i.prol = zext nneg i32 %i.ai to i64
  %.132.i.prol = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.132.idx.i.prol ; 3 uses
  %i.aj = lshr i32 %.13013.i.prol, 1              ; 2 uses
  %i.ak = add nsw i32 %.114.i.prol, -1            ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph15.i.prol.loopexit, label %.lr.ph15.i.prol, !llvm.loop !10

.lr.ph15.i.prol.loopexit:                         ; preds = %.lr.ph15.i.prol, %.lr.ph15.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph15.i.preheader ], [ %i.ag, %.lr.ph15.i.prol ]
  %.132.i.lcssa.unr = phi ptr [ poison, %.lr.ph15.i.preheader ], [ %.132.i.prol, %.lr.ph15.i.prol ]
  %.114.i.unr = phi i32 [ %i.ad, %.lr.ph15.i.preheader ], [ %i.ak, %.lr.ph15.i.prol ]
  %.13013.i.unr = phi i32 [ %i.ac, %.lr.ph15.i.preheader ], [ %i.aj, %.lr.ph15.i.prol ]
  %.03112.i.unr = phi ptr [ %i.s, %.lr.ph15.i.preheader ], [ %.132.i.prol, %.lr.ph15.i.prol ]
  %i.al = icmp samesign ult i32 %.09.i, 3
  br i1 %i.al, label %._crit_edge.i, label %.lr.ph15.i

.lr.ph15.i:                                       ; preds = %.lr.ph15.i.prol.loopexit, %.lr.ph15.i
  %.114.i = phi i32 [ %i.ay, %.lr.ph15.i ], [ %.114.i.unr, %.lr.ph15.i.prol.loopexit ]
  %.13013.i = phi i32 [ %i.ax, %.lr.ph15.i ], [ %.13013.i.unr, %.lr.ph15.i.prol.loopexit ] ; 5 uses
  %.03112.i = phi ptr [ %.132.i.3, %.lr.ph15.i ], [ %.03112.i.unr, %.lr.ph15.i.prol.loopexit ]
  %i.am = load ptr, ptr %.03112.i, align 8
  %i.an = shl i32 %.13013.i, 3
  %i.ao = and i32 %i.an, 8
  %.132.idx.i = zext nneg i32 %i.ao to i64
  %.132.i = getelementptr inbounds nuw i8, ptr %i.am, i64 %.132.idx.i
  %i.ap = load ptr, ptr %.132.i, align 8
  %i.aq = shl i32 %.13013.i, 2
  %i.ar = and i32 %i.aq, 8
  %.132.idx.i.1 = zext nneg i32 %i.ar to i64
  %.132.i.1 = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.132.idx.i.1
  %i.as = load ptr, ptr %.132.i.1, align 8
  %i.at = shl i32 %.13013.i, 1
  %i.au = and i32 %i.at, 8
  %.132.idx.i.2 = zext nneg i32 %i.au to i64
  %.132.i.2 = getelementptr inbounds nuw i8, ptr %i.as, i64 %.132.idx.i.2
  %i.av = load ptr, ptr %.132.i.2, align 8        ; 2 uses
  %i.aw = and i32 %.13013.i, 8
  %.132.idx.i.3 = zext nneg i32 %i.aw to i64
  %.132.i.3 = getelementptr inbounds nuw i8, ptr %i.av, i64 %.132.idx.i.3 ; 2 uses
  %i.ax = lshr i32 %.13013.i, 4
  %i.ay = add nsw i32 %.114.i, -4                 ; 2 uses
  %.not.i.3 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.3, label %._crit_edge.i, label %.lr.ph15.i, !llvm.loop !12

._crit_edge.i:                                    ; preds = %.lr.ph15.i.prol.loopexit, %.lr.ph15.i, %.preheader.._crit_edge_crit_edge.i
  %i.az = phi ptr [ %.pre.i, %.preheader.._crit_edge_crit_edge.i ], [ %.lcssa.unr, %.lr.ph15.i.prol.loopexit ], [ %i.av, %.lr.ph15.i ]
  %.031.lcssa.i = phi ptr [ %i.s, %.preheader.._crit_edge_crit_edge.i ], [ %.132.i.lcssa.unr, %.lr.ph15.i.prol.loopexit ], [ %.132.i.3, %.lr.ph15.i ]
  store ptr %i.az, ptr %i.v, align 8
  store ptr %i.t, ptr %.031.lcssa.i, align 8
  %i.ba = load i32, ptr %i.w, align 8
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.w, align 8
  %i.bc = load ptr, ptr %i.v, align 8             ; 2 uses
  %.not3518.i = icmp eq ptr %i.bc, null
  br i1 %.not3518.i, label %heap_insert.exit, label %.lr.ph20.i

.lr.ph20.i:                                       ; preds = %._crit_edge.i, %heap_node_swap.exit.i
  %i.bd = phi ptr [ %i.ca, %heap_node_swap.exit.i ], [ %i.bc, %._crit_edge.i ] ; 12 uses
  %i.be = load i64, ptr %i.l, align 8             ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bg = load i64, ptr %i.bf, align 8            ; 2 uses
  %i.bh = icmp ult i64 %i.be, %i.bg
  br i1 %i.bh, label %timer_less_than.exit.thread3.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph20.i
  %i.bi = icmp ult i64 %i.bg, %i.be
  br i1 %i.bi, label %heap_insert.exit, label %timer_less_than.exit.i

timer_less_than.exit.i:                           ; preds = %bb.c
  %i.bj = load i64, ptr %i.q, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bl = load i64, ptr %i.bk, align 8
  %.not6.i = icmp ult i64 %i.bj, %i.bl
  br i1 %.not6.i, label %timer_less_than.exit.thread3.i, label %heap_insert.exit

timer_less_than.exit.thread3.i:                   ; preds = %timer_less_than.exit.i, %.lr.ph20.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr %i.t, ptr %i.bm, align 8
  %i.bn = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.t
  br i1 %i.bo, label %bb.d, label %bb.e

bb.d:                                             ; preds = %timer_less_than.exit.thread3.i
  store ptr %i.bd, ptr %i.t, align 8
  %.0.pr.i.i = load ptr, ptr %i.u, align 8
  br label %bb.f

bb.e:                                             ; preds = %timer_less_than.exit.thread3.i
  store ptr %i.bd, ptr %i.u, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i38.i = phi ptr [ %i.bn, %bb.e ], [ %.0.pr.i.i, %bb.d ] ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i38.i, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i38.i, i64 16
  store ptr %i.t, ptr %i.bp, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bq = load ptr, ptr %i.bd, align 8            ; 2 uses
  %.not36.i.i = icmp eq ptr %i.bq, null
  br i1 %.not36.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store ptr %i.bd, ptr %i.br, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8            ; 2 uses
  %.not37.i.i = icmp eq ptr %i.bt, null
  br i1 %.not37.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store ptr %i.bd, ptr %i.bu, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bv = load ptr, ptr %i.v, align 8             ; 4 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %i.t, ptr %i.s, align 8
  br label %heap_node_swap.exit.i

bb.n:                                             ; preds = %bb.l
  %i.bx = load ptr, ptr %i.bv, align 8
  %i.by = icmp eq ptr %i.bx, %i.bd
  br i1 %i.by, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store ptr %i.t, ptr %i.bv, align 8
  br label %heap_node_swap.exit.i

bb.p:                                             ; preds = %bb.n
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.t, ptr %i.bz, align 8
  br label %heap_node_swap.exit.i

heap_node_swap.exit.i:                            ; preds = %bb.p, %bb.o, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ca = load ptr, ptr %i.v, align 8             ; 2 uses
  %.not35.i = icmp eq ptr %i.ca, null
  br i1 %.not35.i, label %heap_insert.exit, label %.lr.ph20.i, !llvm.loop !13

heap_insert.exit:                                 ; preds = %bb.c, %timer_less_than.exit.i, %heap_node_swap.exit.i, %._crit_edge.i
  %i.cb = load i32, ptr %i.a, align 8             ; 3 uses
  %i.cc = and i32 %i.cb, 4
  %.not = icmp eq i32 %i.cc, 0
  br i1 %.not, label %bb.q, label %bb.s

bb.q:                                             ; preds = %heap_insert.exit
  %i.cd = or disjoint i32 %i.cb, 4
  store i32 %i.cd, ptr %i.a, align 8
  %i.ce = and i32 %i.cb, 8
  %.not23 = icmp eq i32 %i.ce, 0
  br i1 %.not23, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cf = load ptr, ptr %i.g, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8
  %i.ci = add i32 %i.ch, 1
  store i32 %i.ci, ptr %i.cg, align 8
  br label %bb.s

bb.s:                                             ; preds = %heap_insert.exit, %bb.q, %bb.r, %bb.a
  %.0 = phi i32 [ -22, %bb.a ], [ 0, %bb.r ], [ 0, %bb.q ], [ 0, %heap_insert.exit ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @uv_timer_stop(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct.heap_node, align 8          ; 4 uses
  %2 = alloca %struct.heap_node, align 8          ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.ax, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 520 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 528 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8              ; 3 uses
  switch i32 %i.i, label %.lr.ph.i [
    i32 0, label %heap_remove.exit
    i32 1, label %._crit_edge.i
  ]

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.023.i = phi i32 [ %i.n, %.lr.ph.i ], [ %i.i, %bb.b ] ; 3 uses
  %.06522.i = phi i32 [ %i.m, %.lr.ph.i ], [ 0, %bb.b ] ; 2 uses
  %.06621.i = phi i32 [ %i.l, %.lr.ph.i ], [ 0, %bb.b ]
  %i.j = shl i32 %.06621.i, 1
  %i.k = and i32 %.023.i, 1
  %i.l = or disjoint i32 %i.j, %i.k               ; 3 uses
  %i.m = add nuw nsw i32 %.06522.i, 1             ; 4 uses
  %i.n = lshr i32 %.023.i, 1
  %i.o = icmp ugt i32 %.023.i, 3
  br i1 %i.o, label %.lr.ph.i, label %.lr.ph29.i.preheader, !llvm.loop !14

.lr.ph29.i.preheader:                             ; preds = %.lr.ph.i
  %xtraiter = and i32 %i.m, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph29.i.prol.loopexit, label %.lr.ph29.i.prol

.lr.ph29.i.prol:                                  ; preds = %.lr.ph29.i.preheader, %.lr.ph29.i.prol
  %.128.i.prol = phi i32 [ %i.t, %.lr.ph29.i.prol ], [ %i.m, %.lr.ph29.i.preheader ]
  %.16727.i.prol = phi i32 [ %i.s, %.lr.ph29.i.prol ], [ %i.l, %.lr.ph29.i.preheader ] ; 2 uses
  %.07026.i.prol = phi ptr [ %.171.i.prol, %.lr.ph29.i.prol ], [ %i.f, %.lr.ph29.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph29.i.prol ], [ 0, %.lr.ph29.i.preheader ]
  %i.p = load ptr, ptr %.07026.i.prol, align 8
  %i.q = shl i32 %.16727.i.prol, 3
  %i.r = and i32 %i.q, 8
  %.171.idx.i.prol = zext nneg i32 %i.r to i64
  %.171.i.prol = getelementptr inbounds nuw i8, ptr %i.p, i64 %.171.idx.i.prol ; 3 uses
  %i.s = lshr i32 %.16727.i.prol, 1               ; 2 uses
  %i.t = add nsw i32 %.128.i.prol, -1             ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph29.i.prol.loopexit, label %.lr.ph29.i.prol, !llvm.loop !15

.lr.ph29.i.prol.loopexit:                         ; preds = %.lr.ph29.i.prol, %.lr.ph29.i.preheader
  %.171.i.lcssa.unr = phi ptr [ poison, %.lr.ph29.i.preheader ], [ %.171.i.prol, %.lr.ph29.i.prol ]
  %.128.i.unr = phi i32 [ %i.m, %.lr.ph29.i.preheader ], [ %i.t, %.lr.ph29.i.prol ]
  %.16727.i.unr = phi i32 [ %i.l, %.lr.ph29.i.preheader ], [ %i.s, %.lr.ph29.i.prol ]
  %.07026.i.unr = phi ptr [ %i.f, %.lr.ph29.i.preheader ], [ %.171.i.prol, %.lr.ph29.i.prol ]
  %i.u = icmp samesign ult i32 %.06522.i, 3
  br i1 %i.u, label %._crit_edge.i, label %.lr.ph29.i

.lr.ph29.i:                                       ; preds = %.lr.ph29.i.prol.loopexit, %.lr.ph29.i
  %.128.i = phi i32 [ %i.ah, %.lr.ph29.i ], [ %.128.i.unr, %.lr.ph29.i.prol.loopexit ]
  %.16727.i = phi i32 [ %i.ag, %.lr.ph29.i ], [ %.16727.i.unr, %.lr.ph29.i.prol.loopexit ] ; 5 uses
  %.07026.i = phi ptr [ %.171.i.3, %.lr.ph29.i ], [ %.07026.i.unr, %.lr.ph29.i.prol.loopexit ]
  %i.v = load ptr, ptr %.07026.i, align 8
  %i.w = shl i32 %.16727.i, 3
  %i.x = and i32 %i.w, 8
  %.171.idx.i = zext nneg i32 %i.x to i64
  %.171.i = getelementptr inbounds nuw i8, ptr %i.v, i64 %.171.idx.i
  %i.y = load ptr, ptr %.171.i, align 8
  %i.z = shl i32 %.16727.i, 2
  %i.aa = and i32 %i.z, 8
  %.171.idx.i.1 = zext nneg i32 %i.aa to i64
  %.171.i.1 = getelementptr inbounds nuw i8, ptr %i.y, i64 %.171.idx.i.1
  %i.ab = load ptr, ptr %.171.i.1, align 8
  %i.ac = shl i32 %.16727.i, 1
  %i.ad = and i32 %i.ac, 8
  %.171.idx.i.2 = zext nneg i32 %i.ad to i64
  %.171.i.2 = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.171.idx.i.2
  %i.ae = load ptr, ptr %.171.i.2, align 8
  %i.af = and i32 %.16727.i, 8
  %.171.idx.i.3 = zext nneg i32 %i.af to i64
  %.171.i.3 = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.171.idx.i.3 ; 2 uses
  %i.ag = lshr i32 %.16727.i, 4
  %i.ah = add nsw i32 %.128.i, -4                 ; 2 uses
  %.not.i.3 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.3, label %._crit_edge.i, label %.lr.ph29.i, !llvm.loop !16

._crit_edge.i:                                    ; preds = %.lr.ph29.i.prol.loopexit, %.lr.ph29.i, %bb.b
  %.070.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %.171.i.lcssa.unr, %.lr.ph29.i.prol.loopexit ], [ %.171.i.3, %.lr.ph29.i ] ; 2 uses
  %i.ai = add i32 %i.i, -1
  store i32 %i.ai, ptr %i.h, align 8
  %i.aj = load ptr, ptr %.070.lcssa.i, align 8    ; 34 uses
  store ptr null, ptr %.070.lcssa.i, align 8
  %i.ak = icmp eq ptr %i.aj, %i.g
  br i1 %i.ak, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge.i
  %i.al = load ptr, ptr %i.f, align 8
  %i.am = icmp eq ptr %i.g, %i.al
  br i1 %i.am, label %bb.d, label %heap_remove.exit

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.f, align 8
  br label %heap_remove.exit

bb.e:                                             ; preds = %._crit_edge.i
  %i.an = load ptr, ptr %i.g, align 8             ; 3 uses
  store ptr %i.an, ptr %i.aj, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 6 uses
  store ptr %i.ap, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 5 uses
  store ptr %i.as, ptr %i.at, align 8
  %.not82.i = icmp eq ptr %i.an, null
  br i1 %.not82.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.aj, ptr %i.au, align 8
  %.pre.i = load ptr, ptr %i.aq, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.av = phi ptr [ %.pre.i, %bb.f ], [ %i.ap, %bb.e ] ; 2 uses
  %.not83.i = icmp eq ptr %i.av, null
  br i1 %.not83.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store ptr %i.aj, ptr %i.aw, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ax = load ptr, ptr %i.ar, align 8            ; 4 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr %i.aj, ptr %i.f, align 8
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.az = load ptr, ptr %i.ax, align 8
  %i.ba = icmp eq ptr %i.az, %i.g
  br i1 %i.ba, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store ptr %i.aj, ptr %i.ax, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.aj, ptr %i.bb, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 40 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %heap_node_swap.exit.i, %bb.n
  %i.be = load ptr, ptr %i.aj, align 8            ; 4 uses
  %.not84.i = icmp eq ptr %i.be, null
  br i1 %.not84.i, label %timer_less_than.exit.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load i64, ptr %i.bf, align 8            ; 2 uses
  %i.bh = load i64, ptr %i.bc, align 8            ; 2 uses
  %i.bi = icmp ult i64 %i.bg, %i.bh
  br i1 %i.bi, label %timer_less_than.exit.thread3.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = icmp ult i64 %i.bh, %i.bg
  br i1 %i.bj, label %timer_less_than.exit.thread.i, label %timer_less_than.exit.i

timer_less_than.exit.i:                           ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = load i64, ptr %i.bd, align 8
  %.not16.i = icmp ult i64 %i.bl, %i.bm
  br i1 %.not16.i, label %timer_less_than.exit.thread3.i, label %timer_less_than.exit.thread.i

timer_less_than.exit.thread3.i:                   ; preds = %timer_less_than.exit.i, %bb.p
  br label %timer_less_than.exit.thread.i

timer_less_than.exit.thread.i:                    ; preds = %timer_less_than.exit.thread3.i, %timer_less_than.exit.i, %bb.q, %bb.o
  %.068.i = phi ptr [ %i.be, %timer_less_than.exit.thread3.i ], [ %i.aj, %timer_less_than.exit.i ], [ %i.aj, %bb.o ], [ %i.aj, %bb.q ] ; 5 uses
  %i.bn = load ptr, ptr %i.aq, align 8            ; 4 uses
  %.not86.i = icmp eq ptr %i.bn, null
  br i1 %.not86.i, label %timer_less_than.exit92.thread.i, label %bb.r

bb.r:                                             ; preds = %timer_less_than.exit.thread.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load i64, ptr %i.bo, align 8            ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.068.i, i64 24
  %i.br = load i64, ptr %i.bq, align 8            ; 2 uses
  %i.bs = icmp ult i64 %i.bp, %i.br
  br i1 %i.bs, label %timer_less_than.exit92.thread8.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bt = icmp ult i64 %i.br, %i.bp
  br i1 %i.bt, label %timer_less_than.exit92.thread.i, label %timer_less_than.exit92.i

timer_less_than.exit92.i:                         ; preds = %bb.s
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.068.i, i64 40
  %i.bx = load i64, ptr %i.bw, align 8
  %.not17.i = icmp ult i64 %i.bv, %i.bx
  br i1 %.not17.i, label %timer_less_than.exit92.thread8.i, label %timer_less_than.exit92.thread.i

timer_less_than.exit92.thread8.i:                 ; preds = %timer_less_than.exit92.i, %bb.r
  br label %timer_less_than.exit92.thread.i

timer_less_than.exit92.thread.i:                  ; preds = %timer_less_than.exit92.thread8.i, %timer_less_than.exit92.i, %bb.s, %timer_less_than.exit.thread.i
  %.169.i = phi ptr [ %i.bn, %timer_less_than.exit92.thread8.i ], [ %.068.i, %timer_less_than.exit92.i ], [ %.068.i, %timer_less_than.exit.thread.i ], [ %.068.i, %bb.s ] ; 14 uses
  %i.by = icmp eq ptr %.169.i, %i.aj
  br i1 %i.by, label %.preheader.i, label %bb.t

.preheader.i:                                     ; preds = %timer_less_than.exit92.thread.i
  %i.bz = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not8831.i = icmp eq ptr %i.bz, null
  br i1 %.not8831.i, label %heap_remove.exit, label %.lr.ph32.i

bb.t:                                             ; preds = %timer_less_than.exit92.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %.169.i, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.169.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  store ptr %.169.i, ptr %i.at, align 8
  %i.ca = load ptr, ptr %.169.i, align 8          ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %.169.i
  br i1 %i.cb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %i.aj, ptr %.169.i, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %.169.i, i64 8
  %.0.pr.i.i = load ptr, ptr %i.cc, align 8
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.cd = getelementptr inbounds nuw i8, ptr %.169.i, i64 8
  store ptr %i.aj, ptr %i.cd, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0.i93.i = phi ptr [ %i.ca, %bb.v ], [ %.0.pr.i.i, %bb.u ] ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i93.i, null
  br i1 %.not.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i93.i, i64 16
  store ptr %.169.i, ptr %i.ce, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cf = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not36.i.i = icmp eq ptr %i.cf, null
  br i1 %.not36.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store ptr %i.aj, ptr %i.cg, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ch = load ptr, ptr %i.aq, align 8            ; 2 uses
  %.not37.i.i = icmp eq ptr %i.ch, null
  br i1 %.not37.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store ptr %i.aj, ptr %i.ci, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cj = getelementptr inbounds nuw i8, ptr %.169.i, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8            ; 4 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store ptr %.169.i, ptr %i.f, align 8
  br label %heap_node_swap.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.cm = load ptr, ptr %i.ck, align 8
  %i.cn = icmp eq ptr %i.cm, %i.aj
  br i1 %i.cn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store ptr %.169.i, ptr %i.ck, align 8
  br label %heap_node_swap.exit.i

bb.ag:                                            ; preds = %bb.ae
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %.169.i, ptr %i.co, align 8
  br label %heap_node_swap.exit.i

heap_node_swap.exit.i:                            ; preds = %bb.ag, %bb.af, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.o

.lr.ph32.i:                                       ; preds = %.preheader.i, %heap_node_swap.exit101.i
  %i.cp = phi ptr [ %i.dm, %heap_node_swap.exit101.i ], [ %i.bz, %.preheader.i ] ; 12 uses
  %i.cq = load i64, ptr %i.bc, align 8            ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cs = load i64, ptr %i.cr, align 8            ; 2 uses
  %i.ct = icmp ult i64 %i.cq, %i.cs
  br i1 %i.ct, label %timer_less_than.exit95.thread13.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph32.i
  %i.cu = icmp ult i64 %i.cs, %i.cq
  br i1 %i.cu, label %heap_remove.exit, label %timer_less_than.exit95.i

timer_less_than.exit95.i:                         ; preds = %bb.ah
  %i.cv = load i64, ptr %i.bd, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.cx = load i64, ptr %i.cw, align 8
  %.not18.i = icmp ult i64 %i.cv, %i.cx
  br i1 %.not18.i, label %timer_less_than.exit95.thread13.i, label %heap_remove.exit

timer_less_than.exit95.thread13.i:                ; preds = %timer_less_than.exit95.i, %.lr.ph32.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.cp, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store ptr %i.aj, ptr %i.cy, align 8
  %i.cz = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.aj
  br i1 %i.da, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %timer_less_than.exit95.thread13.i
  store ptr %i.cp, ptr %i.aj, align 8
  %.0.pr.i100.i = load ptr, ptr %i.aq, align 8
  br label %bb.ak

bb.aj:                                            ; preds = %timer_less_than.exit95.thread13.i
  store ptr %i.cp, ptr %i.aq, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.0.i96.i = phi ptr [ %i.cz, %bb.aj ], [ %.0.pr.i100.i, %bb.ai ] ; 2 uses
  %.not.i97.i = icmp eq ptr %.0.i96.i, null
  br i1 %.not.i97.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i96.i, i64 16
  store ptr %i.aj, ptr %i.db, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.dc = load ptr, ptr %i.cp, align 8            ; 2 uses
  %.not36.i98.i = icmp eq ptr %i.dc, null
  br i1 %.not36.i98.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store ptr %i.cp, ptr %i.dd, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.de = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.df = load ptr, ptr %i.de, align 8            ; 2 uses
  %.not37.i99.i = icmp eq ptr %i.df, null
  br i1 %.not37.i99.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store ptr %i.cp, ptr %i.dg, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.dh = load ptr, ptr %i.at, align 8            ; 4 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store ptr %i.aj, ptr %i.f, align 8
  br label %heap_node_swap.exit101.i

bb.as:                                            ; preds = %bb.aq
  %i.dj = load ptr, ptr %i.dh, align 8
  %i.dk = icmp eq ptr %i.dj, %i.cp
  br i1 %i.dk, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store ptr %i.aj, ptr %i.dh, align 8
  br label %heap_node_swap.exit101.i

bb.au:                                            ; preds = %bb.as
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store ptr %i.aj, ptr %i.dl, align 8
  br label %heap_node_swap.exit101.i

heap_node_swap.exit101.i:                         ; preds = %bb.au, %bb.at, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.dm = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not88.i = icmp eq ptr %i.dm, null
  br i1 %.not88.i, label %heap_remove.exit, label %.lr.ph32.i, !llvm.loop !17

heap_remove.exit:                                 ; preds = %bb.ah, %timer_less_than.exit95.i, %heap_node_swap.exit101.i, %bb.b, %bb.c, %bb.d, %.preheader.i
  %i.dn = load i32, ptr %i.a, align 8             ; 3 uses
  %i.do = and i32 %i.dn, 4
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %heap_remove.exit
  %i.dq = and i32 %i.dn, -5
  store i32 %i.dq, ptr %i.a, align 8
  %i.dr = and i32 %i.dn, 8
  %.not9 = icmp eq i32 %i.dr, 0
  br i1 %.not9, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ds = load ptr, ptr %i.d, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 8
  %i.dv = add i32 %i.du, -1
  store i32 %i.dv, ptr %i.dt, align 8
  br label %bb.ay

bb.ax:                                            ; preds = %bb.a
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dx = load ptr, ptr %i.dw, align 8            ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8
  store ptr %i.dx, ptr %i.dz, align 8
  %i.ea = load ptr, ptr %i.dy, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store ptr %i.ea, ptr %i.eb, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %heap_remove.exit, %bb.aw, %bb.av, %bb.ax
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store ptr %i.ec, ptr %i.ec, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.ec, ptr %i.ed, align 8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -22, 1) i32 @uv_timer_again(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @uv_timer_stop(ptr noundef nonnull %0) ; 0 uses
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = load i64, ptr %i.d, align 8              ; 2 uses
  %i.i = tail call i32 @uv_timer_start(ptr noundef nonnull %0, ptr noundef %i.g, i64 noundef %i.h, i64 noundef %i.h) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ -22, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @uv_timer_set_repeat(ptr nofree noundef writeonly captures(none) initializes((136, 144)) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @uv_timer_get_repeat(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load i64, ptr %i.a, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @uv_timer_get_due_in(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 544
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load i64, ptr %i.e, align 8
  %.0 = tail call i64 @llvm.usub.sat.i64(i64 %i.f, i64 %i.d)
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 -1, -2147483648) i32 @uv__next_timeout(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.b = icmp eq ptr %.val, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %.not = icmp ugt i64 %i.d, %i.f
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = sub nuw i64 %i.d, %i.f
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.g, i64 2147483647)
  %i.h = trunc nuw nsw i64 %spec.store.select to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.h, %bb.c ], [ -1, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @uv__run_timers(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %1 = alloca %struct.uv__queue, align 8          ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  store ptr %1, ptr %1, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  %.val14 = load ptr, ptr %i.b, align 8           ; 2 uses
  %i.c = icmp eq ptr %.val14, null
  br i1 %i.c, label %._crit_edge20, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 544
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.val15 = phi ptr [ %.val14, %.lr.ph ], [ %.val, %bb.c ] ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val15, i64 24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = load i64, ptr %i.d, align 8
  %i.h = icmp ugt i64 %i.f, %i.g
  br i1 %i.h, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds i8, ptr %.val15, i64 -104
  %i.j = call i32 @uv_timer_stop(ptr noundef nonnull %i.i) ; 0 uses
  store ptr %1, ptr %.val15, align 8
  %i.k = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val15, i64 8
  store ptr %i.k, ptr %i.l, align 8
  store ptr %.val15, ptr %i.k, align 8
  store ptr %.val15, ptr %i.a, align 8
  %.val = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.m = icmp eq ptr %.val, null
  br i1 %i.m, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  %.not17 = icmp eq ptr %1, %.pre
  br i1 %.not17, label %._crit_edge20, label %.lr.ph19

.lr.ph19:                                         ; preds = %._crit_edge, %uv_timer_again.exit
  %i.n = phi ptr [ %i.ac, %uv_timer_again.exit ], [ %.pre, %._crit_edge ] ; 8 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8
  store ptr %i.o, ptr %i.q, align 8
  %i.r = load ptr, ptr %i.p, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.r, ptr %i.s, align 8
  store ptr %i.n, ptr %i.n, align 8
  store ptr %i.n, ptr %i.p, align 8
  %i.t = getelementptr inbounds i8, ptr %i.n, i64 -104 ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %i.n, i64 -8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8
  %.not.i = icmp eq i64 %i.w, 0
  br i1 %.not.i, label %uv_timer_again.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph19
  %i.x = call i32 @uv_timer_stop(ptr noundef nonnull %i.t) ; 0 uses
  %i.y = load ptr, ptr %i.u, align 8
  %i.z = load i64, ptr %i.v, align 8              ; 2 uses
  %i.aa = call i32 @uv_timer_start(ptr noundef nonnull %i.t, ptr noundef %i.y, i64 noundef %i.z, i64 noundef %i.z) ; 0 uses
  br label %uv_timer_again.exit

uv_timer_again.exit:                              ; preds = %.lr.ph19, %bb.d
  %i.ab = load ptr, ptr %i.u, align 8
  call void %i.ab(ptr noundef nonnull %i.t) #9
end_hunk_0
