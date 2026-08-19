inline.NumInlined: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@phpdbg_btree_next:bb.a
  %.23563.i = load ptr, ptr %i.z, align 8, !tbaa !21 ; 3 uses
  %.not4664.i = icmp eq i32 %smin.i, 0
  br i1 %.not4664.i, label %phpdbg_btree_find_closest.exit, label %.lr.ph67.i.preheader

.lr.ph67.i.preheader:                             ; preds = %.preheader.i
  %xtraiter55 = and i32 %smin.i, 3                ; 2 uses
  %lcmp.mod56.not = icmp eq i32 %xtraiter55, 0
  br i1 %lcmp.mod56.not, label %.lr.ph67.i.prol.loopexit, label %.lr.ph67.i.prol

.lr.ph67.i.prol:                                  ; preds = %.lr.ph67.i.preheader, %.lr.ph67.i.prol
  %.23566.i.prol = phi ptr [ %.235.i.prol, %.lr.ph67.i.prol ], [ %.23563.i, %.lr.ph67.i.preheader ] ; 2 uses
  %.23265.i.prol = phi i32 [ %i.ad, %.lr.ph67.i.prol ], [ %smin.i, %.lr.ph67.i.preheader ]
  %prol.iter57 = phi i32 [ %prol.iter57.next, %.lr.ph67.i.prol ], [ 0, %.lr.ph67.i.preheader ]
  %i.ad = add nsw i32 %.23265.i.prol, -1          ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.23566.i.prol, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !21
  %i.ag = icmp ne ptr %i.af, null
  %i.ah = zext i1 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.23566.i.prol, i64 %i.ah
  %.235.i.prol = load ptr, ptr %i.ai, align 8, !tbaa !21 ; 3 uses
  %prol.iter57.next = add i32 %prol.iter57, 1     ; 2 uses
  %prol.iter57.cmp.not = icmp eq i32 %prol.iter57.next, %xtraiter55
  br i1 %prol.iter57.cmp.not, label %.lr.ph67.i.prol.loopexit, label %.lr.ph67.i.prol, !llvm.loop !35

.lr.ph67.i.prol.loopexit:                         ; preds = %.lr.ph67.i.prol, %.lr.ph67.i.preheader
  %.235.i.lcssa.unr = phi ptr [ poison, %.lr.ph67.i.preheader ], [ %.235.i.prol, %.lr.ph67.i.prol ]
  %.23566.i.unr = phi ptr [ %.23563.i, %.lr.ph67.i.preheader ], [ %.235.i.prol, %.lr.ph67.i.prol ]
  %.23265.i.unr = phi i32 [ %smin.i, %.lr.ph67.i.preheader ], [ %i.ad, %.lr.ph67.i.prol ]
  %i.aj = icmp ult i32 %smin.i, 4
  br i1 %i.aj, label %phpdbg_btree_find_closest.exit, label %.lr.ph67.i

.lr.ph67.i:                                       ; preds = %.lr.ph67.i.prol.loopexit, %.lr.ph67.i
  %.23566.i = phi ptr [ %.235.i.3, %.lr.ph67.i ], [ %.23566.i.unr, %.lr.ph67.i.prol.loopexit ] ; 2 uses
  %.23265.i = phi i32 [ %i.az, %.lr.ph67.i ], [ %.23265.i.unr, %.lr.ph67.i.prol.loopexit ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.23566.i, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !21
  %i.am = icmp ne ptr %i.al, null
  %i.an = zext i1 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.23566.i, i64 %i.an
  %.235.i = load ptr, ptr %i.ao, align 8, !tbaa !21 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.235.i, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !21
  %i.ar = icmp ne ptr %i.aq, null
  %i.as = zext i1 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.235.i, i64 %i.as
  %.235.i.1 = load ptr, ptr %i.at, align 8, !tbaa !21 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.235.i.1, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !21
  %i.aw = icmp ne ptr %i.av, null
  %i.ax = zext i1 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.235.i.1, i64 %i.ax
  %.235.i.2 = load ptr, ptr %i.ay, align 8, !tbaa !21 ; 2 uses
  %i.az = add nsw i32 %.23265.i, -4               ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.235.i.2, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !21
  %i.bc = icmp ne ptr %i.bb, null
  %i.bd = zext i1 %i.bc to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.235.i.2, i64 %i.bd
  %.235.i.3 = load ptr, ptr %i.be, align 8, !tbaa !21 ; 2 uses
  %.not46.i.3 = icmp eq i32 %i.az, 0
  br i1 %.not46.i.3, label %phpdbg_btree_find_closest.exit, label %.lr.ph67.i, !llvm.loop !27

bb.h:                                             ; preds = %.preheader50.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.033.i, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !21 ; 2 uses
  %.not.i = icmp eq ptr %i.bg, null
  %.33659.i = load ptr, ptr %.033.i, align 8, !tbaa !21 ; 4 uses
  br i1 %.not.i, label %.preheader48.i, label %bb.i

.preheader48.i:                                   ; preds = %bb.h
  %.not4260.i = icmp eq i32 %.030.i, 0
  br i1 %.not4260.i, label %phpdbg_btree_find_closest.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader48.i
  %i.bh = add i32 %i.h, -2
  %i.bi = sub i32 %i.bh, %indvar
  %xtraiter = and i32 %.030.i, 3                  ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.33662.i.prol = phi ptr [ %.336.i.prol, %.lr.ph.i.prol ], [ %.33659.i, %.lr.ph.i.preheader ] ; 2 uses
  %.361.i.prol = phi i32 [ %i.bj, %.lr.ph.i.prol ], [ %.030.i, %.lr.ph.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.bj = add nsw i32 %.361.i.prol, -1            ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.33662.i.prol, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !21
  %i.bm = icmp ne ptr %i.bl, null
  %i.bn = zext i1 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.33662.i.prol, i64 %i.bn
  %.336.i.prol = load ptr, ptr %i.bo, align 8, !tbaa !21 ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !36

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.336.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.336.i.prol, %.lr.ph.i.prol ]
  %.33662.i.unr = phi ptr [ %.33659.i, %.lr.ph.i.preheader ], [ %.336.i.prol, %.lr.ph.i.prol ]
  %.361.i.unr = phi i32 [ %.030.i, %.lr.ph.i.preheader ], [ %i.bj, %.lr.ph.i.prol ]
  %i.bp = icmp ult i32 %i.bi, 3
  br i1 %i.bp, label %phpdbg_btree_find_closest.exit, label %.lr.ph.i

bb.i:                                             ; preds = %bb.h
  %.not43.i = icmp eq ptr %.33659.i, null
  %spec.select.i = select i1 %.not43.i, i32 %.0.i, i32 %.030.i
  br label %bb.j

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.33662.i = phi ptr [ %.336.i.3, %.lr.ph.i ], [ %.33662.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.361.i = phi i32 [ %i.cf, %.lr.ph.i ], [ %.361.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.33662.i, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !21
  %i.bs = icmp ne ptr %i.br, null
  %i.bt = zext i1 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.33662.i, i64 %i.bt
  %.336.i = load ptr, ptr %i.bu, align 8, !tbaa !21 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.336.i, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !21
  %i.bx = icmp ne ptr %i.bw, null
  %i.by = zext i1 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.336.i, i64 %i.by
  %.336.i.1 = load ptr, ptr %i.bz, align 8, !tbaa !21 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.336.i.1, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !21
  %i.cc = icmp ne ptr %i.cb, null
  %i.cd = zext i1 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.336.i.1, i64 %i.cd
  %.336.i.2 = load ptr, ptr %i.ce, align 8, !tbaa !21 ; 2 uses
  %i.cf = add nsw i32 %.361.i, -4                 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.336.i.2, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !21
  %i.ci = icmp ne ptr %i.ch, null
  %i.cj = zext i1 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.336.i.2, i64 %i.cj
  %.336.i.3 = load ptr, ptr %i.ck, align 8, !tbaa !21 ; 2 uses
  %.not42.i.3 = icmp eq i32 %i.cf, 0
  br i1 %.not42.i.3, label %phpdbg_btree_find_closest.exit, label %.lr.ph.i, !llvm.loop !29

bb.j:                                             ; preds = %bb.i, %bb.b
  %.4.i = phi ptr [ %i.bg, %bb.i ], [ %i.n, %bb.b ] ; 2 uses
  %.2.i = phi i32 [ %spec.select.i, %bb.i ], [ %.0.i, %bb.b ]
  %.not47.i = icmp eq i32 %.030.i, 0
  %indvar.next = add i32 %indvar, 1
  br i1 %.not47.i, label %phpdbg_btree_find_closest.exit.thread12, label %.preheader50.i, !llvm.loop !30

phpdbg_btree_find_closest.exit:                   ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph67.i.prol.loopexit, %.lr.ph67.i, %.preheader.i, %.preheader48.i
  %.037.i = phi ptr [ %.33659.i, %.preheader48.i ], [ %.23563.i, %.preheader.i ], [ %.235.i.3, %.lr.ph67.i ], [ %.235.i.lcssa.unr, %.lr.ph67.i.prol.loopexit ], [ %.336.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.336.i.3, %.lr.ph.i ] ; 2 uses
  %i.cl = icmp eq ptr %.037.i, null
  br i1 %i.cl, label %phpdbg_btree_find_closest.exit.thread, label %phpdbg_btree_find_closest.exit.thread12

phpdbg_btree_find_closest.exit.thread12:          ; preds = %bb.j, %phpdbg_btree_find_closest.exit
  %.037.i14 = phi ptr [ %.037.i, %phpdbg_btree_find_closest.exit ], [ %.4.i, %bb.j ] ; 2 uses
  %i.cm = load i64, ptr %.037.i14, align 8, !tbaa !37 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !33
  %i.cp = icmp ult i64 %i.cm, %i.co
  br i1 %i.cp, label %phpdbg_btree_find_closest.exit.thread, label %bb.k

bb.k:                                             ; preds = %phpdbg_btree_find_closest.exit.thread12
  %i.cq = add i64 %i.cm, -1
  store i64 %i.cq, ptr %i.b, align 8, !tbaa !34
  br label %phpdbg_btree_find_closest.exit.thread

phpdbg_btree_find_closest.exit.thread:            ; preds = %bb.c, %bb.a, %phpdbg_btree_find_closest.exit, %phpdbg_btree_find_closest.exit.thread12, %bb.k
  %.0 = phi ptr [ %.037.i14, %bb.k ], [ null, %phpdbg_btree_find_closest.exit.thread12 ], [ null, %phpdbg_btree_find_closest.exit ], [ null, %bb.a ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @phpdbg_btree_insert_or_update(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !12
  %i.c = trunc i64 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.063.in = phi i32 [ %i.c, %bb.a ], [ %.063, %bb.c ]
  %.062 = phi ptr [ %i.d, %bb.a ], [ %i.j, %bb.c ] ; 2 uses
  %.063 = add i32 %.063.in, -1                    ; 4 uses
  %i.e = load ptr, ptr %.062, align 8, !tbaa !39  ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = zext nneg i32 %.063 to i64
  %i.h = lshr i64 %1, %i.g
  %i.i = and i64 %i.h, 1
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.i ; 4 uses
  %.not = icmp eq i32 %.063, 0
  br i1 %.not, label %bb.d, label %bb.b, !llvm.loop !40

bb.d:                                             ; preds = %bb.c
  %.pr = load ptr, ptr %i.j, align 8, !tbaa !39   ; 2 uses
  %i.k = icmp eq ptr %.pr, null
  br i1 %i.k, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.b, %bb.d
  %.176 = phi ptr [ %i.j, %bb.d ], [ %.062, %bb.b ] ; 3 uses
  %.16475 = phi i32 [ -1, %bb.d ], [ %.063, %bb.b ] ; 6 uses
  %i.l = and i32 %3, 1
  %.not70 = icmp eq i32 %i.l, 0
  br i1 %.not70, label %bb.k, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i8, ptr %i.m, align 8, !tbaa !19, !range !41, !noundef !42
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = add nsw i32 %.16475, 2
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 4                      ; 2 uses
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = tail call noalias ptr @__zend_malloc(i64 noundef %i.r) #11
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.t = tail call noalias ptr @_emalloc(i64 noundef %i.r) #11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = phi ptr [ %i.s, %bb.f ], [ %i.t, %bb.g ] ; 4 uses
  store ptr %i.u, ptr %.176, align 8, !tbaa !39
  %4 = and i32 %.16475, 1
  %lcmp.mod.not.not = icmp eq i32 %4, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %bb.h
  %5 = zext nneg i32 %.16475 to i64
  %i.v = lshr i64 %1, %5
  %i.w = and i64 %i.v, 1                          ; 2 uses
  %i.x = xor i64 %i.w, 1
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.x
  store ptr null, ptr %i.y, align 8, !tbaa !21
  %i.z = load ptr, ptr %.176, align 8, !tbaa !39
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.w ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !39
  %6 = add nsw i32 %.16475, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.h
  %.lcssa93.unr = phi ptr [ poison, %bb.h ], [ %i.aa, %.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi ptr [ poison, %bb.h ], [ %i.ab, %.prol.loopexit.unr-lcssa ]
  %.265.unr = phi i32 [ %.16475, %bb.h ], [ %6, %.prol.loopexit.unr-lcssa ]
  %.2.unr = phi ptr [ %.176, %bb.h ], [ %i.aa, %.prol.loopexit.unr-lcssa ]
  %.unr = phi ptr [ %i.u, %bb.h ], [ %i.ab, %.prol.loopexit.unr-lcssa ]
  %i.ac = icmp eq i32 %.16475, 0
  br i1 %i.ac, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.265 = phi i32 [ %10, %.new ], [ %.265.unr, %.prol.loopexit ] ; 3 uses
  %.2 = phi ptr [ %i.aq, %.new ], [ %.2.unr, %.prol.loopexit ]
  %i.ad = phi ptr [ %i.ar, %.new ], [ %.unr, %.prol.loopexit ] ; 3 uses
  %7 = zext nneg i32 %.265 to i64
  %i.ae = lshr i64 %1, %7
  %i.af = and i64 %i.ae, 1                        ; 2 uses
  %i.ag = xor i64 %i.af, 1
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ag
  store ptr null, ptr %i.ah, align 8, !tbaa !21
  %i.ai = load ptr, ptr %.2, align 8, !tbaa !39
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.af ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !39
  %8 = add nsw i32 %.265, -1                      ; 2 uses
  %9 = zext nneg i32 %8 to i64
  %i.al = lshr i64 %1, %9
  %i.am = and i64 %i.al, 1                        ; 2 uses
  %i.an = xor i64 %i.am, 1
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.an
  store ptr null, ptr %i.ao, align 8, !tbaa !21
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !39
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.am ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 3 uses
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !39
  %10 = add nsw i32 %.265, -2
  %.not72.1 = icmp eq i32 %8, 0
  br i1 %.not72.1, label %.unr-lcssa, label %.new, !llvm.loop !43

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %.lcssa93 = phi ptr [ %.lcssa93.unr, %.prol.loopexit ], [ %i.aq, %.new ]
  %.lcssa = phi ptr [ %.lcssa.unr, %.prol.loopexit ], [ %i.ar, %.new ]
  %i.as = load i64, ptr %0, align 8, !tbaa !20
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %0, align 8, !tbaa !20
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.au = and i32 %3, 2
  %.not69 = icmp eq i32 %i.au, 0
  br i1 %.not69, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %.unr-lcssa
  %i.av = phi ptr [ %.lcssa, %.unr-lcssa ], [ %.pr, %bb.i ]
  %.3 = phi ptr [ %.lcssa93, %.unr-lcssa ], [ %i.j, %bb.i ]
  store i64 %1, ptr %i.av, align 8, !tbaa !21
  %i.aw = load ptr, ptr %.3, align 8, !tbaa !39
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %2, ptr %i.ax, align 8, !tbaa !21
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %.thread, %bb.j
  %.066 = phi i32 [ 0, %bb.j ], [ -1, %.thread ], [ -1, %bb.i ]
  ret i32 %.066
}

; Function Attrs: allocsize(0)
declare noalias ptr @__zend_malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: allocsize(0)
declare noalias ptr @_emalloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @phpdbg_btree_delete(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.05873 = load ptr, ptr %i.a, align 8, !tbaa !21 ; 4 uses
  %i.b = icmp eq ptr %.05873, null
  br i1 %i.b, label %.loopexit69, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !12
  %i.e = and i64 %i.d, 4294967295                 ; 2 uses
  %.not101 = icmp eq i64 %i.e, 0
  br i1 %.not101, label %bb.f, label %.lr.ph108, !llvm.loop !44

.lr.ph108:                                        ; preds = %.lr.ph.preheader
  br label %bb.b, !llvm.loop !44

bb.b:                                             ; preds = %.lr.ph108, %.lr.ph
  %indvars.iv.next106.in = phi i64 [ %i.e, %.lr.ph108 ], [ %indvars.iv.next106, %.lr.ph ]
  %.15775105 = phi i32 [ -1, %.lr.ph108 ], [ %.056, %.lr.ph ] ; 2 uses
  %.15576104 = phi i32 [ undef, %.lr.ph108 ], [ %.054, %.lr.ph ] ; 2 uses
  %.177103 = phi ptr [ null, %.lr.ph108 ], [ %.053, %.lr.ph ] ; 2 uses
  %.05878102 = phi ptr [ %.05873, %.lr.ph108 ], [ %.058, %.lr.ph ] ; 4 uses
  %indvars.iv.next106 = add nsw i64 %indvars.iv.next106.in, -1 ; 5 uses
  %indvars107 = trunc i64 %indvars.iv.next106 to i32
  %i.f = load ptr, ptr %.05878102, align 8, !tbaa !21
  %.not67 = icmp eq ptr %i.f, null
  br i1 %.not67, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.05878102, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21
  %.not68 = icmp eq ptr %i.h, null
  br i1 %.not68, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = and i64 %indvars.iv.next106, 4294967295
  %i.j = lshr i64 %1, %i.i
  %i.k = trunc i64 %i.j to i32
  %i.l = and i32 %i.k, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.056 = phi i32 [ %indvars107, %bb.d ], [ %.15775105, %bb.c ], [ %.15775105, %bb.b ] ; 2 uses
  %.054 = phi i32 [ %i.l, %bb.d ], [ %.15576104, %bb.c ], [ %.15576104, %bb.b ] ; 2 uses
  %.053 = phi ptr [ %.05878102, %bb.d ], [ %.177103, %bb.c ], [ %.177103, %bb.b ] ; 2 uses
  %i.m = and i64 %indvars.iv.next106, 4294967295
  %i.n = lshr i64 %1, %i.m
  %i.o = and i64 %i.n, 1
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.05878102, i64 %i.o
  %.058 = load ptr, ptr %i.p, align 8, !tbaa !21  ; 2 uses
  %i.q = icmp eq ptr %.058, null
  br i1 %i.q, label %.loopexit69, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %.not = icmp eq i64 %indvars.iv.next106, 0
  br i1 %.not, label %.lr.ph._crit_edge, label %bb.b, !llvm.loop !44

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  br label %bb.f, !llvm.loop !44

bb.f:                                             ; preds = %.lr.ph._crit_edge, %.lr.ph.preheader
  %.177.lcssa = phi ptr [ %.053, %.lr.ph._crit_edge ], [ null, %.lr.ph.preheader ] ; 6 uses
  %.15576.lcssa = phi i32 [ %.054, %.lr.ph._crit_edge ], [ undef, %.lr.ph.preheader ] ; 2 uses
  %.15775.lcssa = phi i32 [ %.056, %.lr.ph._crit_edge ], [ -1, %.lr.ph.preheader ] ; 6 uses
  %i.r = load i64, ptr %0, align 8, !tbaa !20
  %i.s = add i64 %i.r, -1
  store i64 %i.s, ptr %0, align 8, !tbaa !20
  %i.t = icmp eq i32 %.15775.lcssa, -1
  br i1 %i.t, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load i8, ptr %i.u, align 8, !tbaa !19, !range !41, !noundef !42
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef %.05873) #12
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @_efree(ptr noundef nonnull %.05873) #12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store ptr null, ptr %i.a, align 8, !tbaa !18
  br label %.loopexit69

bb.k:                                             ; preds = %bb.f
  %i.x = sext i32 %.15576.lcssa to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %.177.lcssa, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !21   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.177.lcssa, i64 16 ; 5 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %.not65 = icmp eq i32 %.15576.lcssa, 0
  %i.ac = zext i1 %.not65 to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.177.lcssa, i64 %i.ac ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !21 ; 3 uses
  %i.af = add nuw nsw i32 %.15775.lcssa, 1
  %i.ag = sext i32 %i.af to i64
  %i.ah = shl nsw i64 %i.ag, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aa, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.ah, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !19, !range !41, !noundef !42
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !21 ; 2 uses
  br i1 %i.ak, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @free(ptr noundef %i.al) #12
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  tail call void @_efree(ptr noundef %i.al) #12
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !21
  %.not6679 = icmp eq i32 %.15775.lcssa, 0
  br i1 %.not6679, label %.loopexit, label %.lr.ph83

.lr.ph83:                                         ; preds = %bb.o
  %i.am = sext i32 %.15775.lcssa to i64           ; 3 uses
  %i.an = getelementptr inbounds [16 x i8], ptr %.177.lcssa, i64 %i.am ; 2 uses
  %i.ao = and i32 %.15775.lcssa, 1
  %lcmp.mod.not = icmp eq i32 %i.ao, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph83
  %indvars.iv.next89.prol = add nsw i64 %i.am, -1
  %i.ap = getelementptr inbounds nuw i8, ptr %.177.lcssa, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.177.lcssa, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !21
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  %i.au = zext i1 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.au
  store ptr %i.ap, ptr %i.av, align 8, !tbaa !21
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph83
  %indvars.iv88.unr = phi i64 [ %i.am, %.lr.ph83 ], [ %indvars.iv.next89.prol, %.prol.loopexit.unr-lcssa ]
  %.082.unr = phi ptr [ %i.ae, %.lr.ph83 ], [ %i.as, %.prol.loopexit.unr-lcssa ]
  %.15981.unr = phi ptr [ %i.aa, %.lr.ph83 ], [ %i.ap, %.prol.loopexit.unr-lcssa ]
  %i.aw = icmp eq i32 %.15775.lcssa, 1
  br i1 %i.aw, label %.loopexit, label %.lr.ph83.new

.lr.ph83.new:                                     ; preds = %.prol.loopexit, %.lr.ph83.new
  %indvars.iv88 = phi i64 [ %indvars.iv.next89.1, %.lr.ph83.new ], [ %indvars.iv88.unr, %.prol.loopexit ] ; 3 uses
  %.082 = phi ptr [ %i.bl, %.lr.ph83.new ], [ %.082.unr, %.prol.loopexit ] ; 2 uses
  %.15981 = phi ptr [ %i.bi, %.lr.ph83.new ], [ %.15981.unr, %.prol.loopexit ] ; 2 uses
  %i.ax = sub nsw i64 1, %indvars.iv88
  %i.ay = getelementptr inbounds [16 x i8], ptr %i.an, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.15981, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !21
  %i.bc = getelementptr inbounds nuw i8, ptr %.082, i64 16
  %i.bd = icmp eq ptr %i.bb, %i.bc
  %i.be = zext i1 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.15981, i64 %i.be
end_hunk_0
