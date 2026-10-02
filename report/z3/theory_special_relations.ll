Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/theory_special_relations?download=true
inline.NumInlined: 2900
inline.NumDeleted: 1172
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN3smt24theory_special_relations15assign_intervalERKNS0_5graphERK7svectorIjjERS5_S8_:bb.a
  %i.u = zext i32 %.0.i17.i.ph to i64             ; 2 uses
  %i.v = getelementptr [4 x i8], ptr %i.n, i64 %i.u
  %i.w = sub nsw i64 %i.t, %i.u
  %i.x = shl nsw i64 %i.w, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.v, i8 0, i64 %i.x, i1 false), !tbaa !95
  br label %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit

_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit:         ; preds = %.lr.ph.preheader.i, %bb.c, %bb.b
  %.0.i.i112 = phi i32 [ %i.e, %.lr.ph.preheader.i ], [ %.0.i.i115121, %bb.b ], [ %i.e, %bb.c ] ; 9 uses
  %i.y = load ptr, ptr %4, align 8, !tbaa !106    ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i89, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i74

_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit.thread185: ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i
  %i.aa = load ptr, ptr %4, align 8, !tbaa !106   ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.critedge.preheader, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i74.thread193

_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i74.thread193: ; preds = %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit.thread185
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -4
  br label %bb.d

_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit.thread:  ; preds = %_ZNK8dl_graphIN3smt24theory_special_relations7int_extEE13get_num_nodesEv.exit.thread
  %i.ad = load ptr, ptr %4, align 8, !tbaa !106   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %.critedge.preheader, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i74.thread

_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i74.thread: ; preds = %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit.thread
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 -4
  br label %bb.d

_ZNK6vectorIjLb0EjE4sizeEv.exit.i89:              ; preds = %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit
  %.not.not.i90 = icmp eq i32 %.0.i.i112, 0
  br i1 %.not.not.i90, label %.critedge.preheader, label %thread-pre-split.i76.preheader

_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i74:       ; preds = %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit
  %i.ag = getelementptr inbounds i8, ptr %i.y, i64 -4 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !95 ; 2 uses
  %.not16.i75 = icmp ugt i32 %.0.i.i112, %i.ah
  br i1 %.not16.i75, label %thread-pre-split.i76.preheader, label %bb.d

thread-pre-split.i76.preheader:                   ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i89, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i74
  %.ph = phi ptr [ %i.y, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i74 ], [ null, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i89 ]
  %.0.i17.i79.ph = phi i32 [ %i.ah, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i74 ], [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i89 ] ; 2 uses
  br label %thread-pre-split.i76

bb.d:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i74.thread193, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i74.thread, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i74
  %i.ai = phi ptr [ %i.af, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i74.thread ], [ %i.ag, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i74 ], [ %i.ac, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i74.thread193 ]
  %.0.i.i112126132 = phi i32 [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i74.thread ], [ %.0.i.i112, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i74 ], [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i74.thread193 ] ; 2 uses
  store i32 %.0.i.i112126132, ptr %i.ai, align 4, !tbaa !95
  br label %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit92

thread-pre-split.i76:                             ; preds = %thread-pre-split.i76.preheader, %.noexc91
  %i.aj = phi ptr [ %.pr.pre.i88, %.noexc91 ], [ %.ph, %thread-pre-split.i76.preheader ] ; 4 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i87, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i80

_ZNK6vectorIjLb0EjE8capacityEv.exit.i80:          ; preds = %thread-pre-split.i76
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -8
  %i.am = load i32, ptr %i.al, align 4, !tbaa !95
  %i.an = icmp ugt i32 %.0.i.i112, %i.am
  br i1 %i.an, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i87, label %bb.e

_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i87:   ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i80, %thread-pre-split.i76
  invoke void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc91 unwind label %bb.g

.noexc91:                                         ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i87
  %.pr.pre.i88 = load ptr, ptr %4, align 8, !tbaa !106
  br label %thread-pre-split.i76, !llvm.loop !13

bb.e:                                             ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i80
  %i.ao = getelementptr inbounds i8, ptr %i.aj, i64 -4
  store i32 %.0.i.i112, ptr %i.ao, align 4, !tbaa !95
  %.not1319.i81 = icmp eq i32 %.0.i17.i79.ph, %.0.i.i112
  br i1 %.not1319.i81, label %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit92, label %.lr.ph.preheader.i82

.lr.ph.preheader.i82:                             ; preds = %bb.e
  %i.ap = zext i32 %.0.i.i112 to i64
  %i.aq = zext i32 %.0.i17.i79.ph to i64          ; 2 uses
  %i.ar = getelementptr [4 x i8], ptr %i.aj, i64 %i.aq
  %i.as = sub nsw i64 %i.ap, %i.aq
  %i.at = shl nsw i64 %i.as, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ar, i8 0, i64 %i.at, i1 false), !tbaa !95
  br label %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit92

_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit92:       ; preds = %.lr.ph.preheader.i82, %bb.e, %bb.d
  %.0.i.i112123 = phi i32 [ %.0.i.i112, %.lr.ph.preheader.i82 ], [ %.0.i.i112126132, %bb.d ], [ %.0.i.i112, %bb.e ] ; 2 uses
  %.not146 = icmp eq i32 %.0.i.i112123, 0
  br i1 %.not146, label %.critedge.preheader, label %.lr.ph143

.lr.ph143:                                        ; preds = %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit92
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 40
  %wide.trip.count = zext i32 %.0.i.i112123 to i64
  br label %bb.h

.critedge.preheader:                              ; preds = %bb.o, %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit.thread185, %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit.thread, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i89, %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit92
  %i.aw = load ptr, ptr %7, align 8, !tbaa !102   ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_ZN6vectorIiLb0EjED2Ev.exit, label %_ZNK6vectorIiLb0EjE5emptyEv.exit.lr.ph

_ZNK6vectorIiLb0EjE5emptyEv.exit.lr.ph:           ; preds = %.critedge.preheader
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %_ZNK6vectorIiLb0EjE5emptyEv.exit

bb.f:                                             ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i87
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %.lr.ph143, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph143 ], [ %indvars.iv.next, %bb.o ] ; 6 uses
  %.059141 = phi i32 [ 0, %.lr.ph143 ], [ %.160, %bb.o ] ; 3 uses
  %i.bc = load ptr, ptr %i.au, align 8, !tbaa !119
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !102 ; 4 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %.critedge, label %_ZNK6vectorIiLb0EjE3endEv.exit

_ZNK6vectorIiLb0EjE3endEv.exit:                   ; preds = %bb.h
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 -4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !95 ; 2 uses
  %.not138 = icmp eq i32 %i.bh, 0
  br i1 %.not138, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIiLb0EjE3endEv.exit
  %i.bi = zext i32 %i.bh to i64
  %i.bj = load ptr, ptr %i.av, align 8, !tbaa !101 ; 5 uses
  %i.bk = add nuw nsw i64 %i.bi, 4611686018427387903
  %i.bl = and i64 %i.bk, 4611686018427387903      ; 2 uses
  %i.bm = add nuw nsw i64 %i.bl, 1                ; 2 uses
  %xtraiter = and i64 %i.bm, 3                    ; 3 uses
  %i.bn = icmp samesign ult i64 %i.bl, 3
  br i1 %i.bn, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.bm, 9223372036854775804
  br label %bb.j

._crit_edge.unr-lcssa:                            ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.056140.epil.init = phi ptr [ %i.be, %.lr.ph ], [ %i.cy, %._crit_edge.unr-lcssa ]
  %.057139.epil.init = phi i1 [ true, %.lr.ph ], [ %i.cx, %._crit_edge.unr-lcssa ]
  %lcmp.mod233 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod233)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.056140.epil = phi ptr [ %.056140.epil.init, %.epil.preheader ], [ %i.bw, %bb.i ] ; 2 uses
  %.057139.epil = phi i1 [ %.057139.epil.init, %.epil.preheader ], [ %i.bv, %bb.i ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.bo = load i32, ptr %.056140.epil, align 4, !tbaa !95
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %i.bj, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !115, !range !126, !noundef !89
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = xor i1 %i.bt, true
  %i.bv = and i1 %.057139.epil, %i.bu             ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.056140.epil, i64 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.i, !llvm.loop !938

._crit_edge:                                      ; preds = %bb.i, %._crit_edge.unr-lcssa
  %.lcssa226 = phi i1 [ %i.cx, %._crit_edge.unr-lcssa ], [ %i.bv, %bb.i ]
  br i1 %.lcssa226, label %.critedge, label %bb.o

bb.j:                                             ; preds = %bb.j, %.lr.ph.new
  %.056140 = phi ptr [ %i.be, %.lr.ph.new ], [ %i.cy, %bb.j ] ; 5 uses
  %.057139 = phi i1 [ true, %.lr.ph.new ], [ %i.cx, %bb.j ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.j ]
  %i.bx = load i32, ptr %.056140, align 4, !tbaa !95
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [32 x i8], ptr %i.bj, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !115, !range !126, !noundef !89
  %i.cc = getelementptr inbounds nuw i8, ptr %.056140, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !95
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %i.bj, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !115, !range !126, !noundef !89
  %i.ci = or i8 %i.cb, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %.056140, i64 8
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !95
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [32 x i8], ptr %i.bj, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !115, !range !126, !noundef !89
  %8 = or i8 %i.co, %i.ci
  %i.cp = getelementptr inbounds nuw i8, ptr %.056140, i64 12
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !95
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [32 x i8], ptr %i.bj, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load i8, ptr %i.ct, align 8, !tbaa !115, !range !126, !noundef !89
  %i.cv = or i8 %i.cu, %8
  %i.cw = icmp eq i8 %i.cv, 0
  %i.cx = and i1 %.057139, %i.cw                  ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.056140, i64 16 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %bb.j

.critedge:                                        ; preds = %bb.h, %_ZNK6vectorIiLb0EjE3endEv.exit, %._crit_edge
  %i.cz = load ptr, ptr %3, align 8, !tbaa !106
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv
  store i32 %.059141, ptr %i.da, align 4, !tbaa !95
  %i.db = load ptr, ptr %2, align 8, !tbaa !106
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !95
  %i.de = add i32 %i.dd, %.059141                 ; 2 uses
  %i.df = add i32 %i.de, -1
  %i.dg = load ptr, ptr %4, align 8, !tbaa !106
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv
  store i32 %i.df, ptr %i.dh, align 4, !tbaa !95
  %i.di = load ptr, ptr %7, align 8, !tbaa !102   ; 4 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.critedge
  %i.dk = getelementptr inbounds i8, ptr %i.di, i64 -4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !95 ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.di, i64 -8
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !95
  %i.do = icmp eq i32 %i.dl, %i.dn
  br i1 %i.do, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %.critedge
  invoke void @_ZN6vectorIiLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc95 unwind label %bb.n

.noexc95:                                         ; preds = %bb.l
  %.pre.i94 = load ptr, ptr %7, align 8, !tbaa !102 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i94, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !95
  br label %bb.m

bb.m:                                             ; preds = %.noexc95, %bb.k
  %i.dp = phi i32 [ %.pre2.i, %.noexc95 ], [ %i.dl, %bb.k ] ; 2 uses
  %i.dq = phi ptr [ %.pre.i94, %.noexc95 ], [ %i.di, %bb.k ] ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -4
  %i.ds = zext i32 %i.dp to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.ds
  %i.du = trunc nuw i64 %indvars.iv to i32
  store i32 %i.du, ptr %i.dt, align 4, !tbaa !95
  %i.dv = add i32 %i.dp, 1
  store i32 %i.dv, ptr %i.dr, align 4, !tbaa !95
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %bb.m, %._crit_edge
  %.160 = phi i32 [ %i.de, %bb.m ], [ %.059141, %._crit_edge ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.preheader, label %bb.h, !llvm.loop !939

_ZNK6vectorIiLb0EjE4sizeEv.exit..critedge.loopexit_crit_edge: ; preds = %_ZNK6vectorIiLb0EjE4sizeEv.exit
  br label %.critedge.loopexit, !llvm.loop !940

.critedge.loopexit:                               ; preds = %_ZNK3smt24theory_special_relations24is_strict_neighbour_edgeERKNS0_5graphEi.exit.thread, %_ZNK6vectorIiLb0EjE4sizeEv.exit..critedge.loopexit_crit_edge, %_ZN6vectorIiLb0EjE4backEv.exit
  %i.dx = phi ptr [ %i.dz, %_ZN6vectorIiLb0EjE4backEv.exit ], [ %i.ep, %_ZNK6vectorIiLb0EjE4sizeEv.exit..critedge.loopexit_crit_edge ], [ %i.hu, %_ZNK3smt24theory_special_relations24is_strict_neighbour_edgeERKNS0_5graphEi.exit.thread ] ; 2 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %_ZN6vectorIiLb0EjED2Ev.exit, label %_ZNK6vectorIiLb0EjE5emptyEv.exit

_ZNK6vectorIiLb0EjE5emptyEv.exit:                 ; preds = %_ZNK6vectorIiLb0EjE5emptyEv.exit.lr.ph, %.critedge.loopexit
  %i.dz = phi ptr [ %i.aw, %_ZNK6vectorIiLb0EjE5emptyEv.exit.lr.ph ], [ %i.dx, %.critedge.loopexit ] ; 6 uses
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 -4 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !95 ; 2 uses
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.ae, label %_ZN6vectorIiLb0EjE4backEv.exit

_ZN6vectorIiLb0EjE4backEv.exit:                   ; preds = %_ZNK6vectorIiLb0EjE5emptyEv.exit
  %i.ed = add i32 %i.eb, -1                       ; 2 uses
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !95
  %i.eh = load ptr, ptr %i.a, align 8, !tbaa !119
  %i.ei = zext i32 %i.eg to i64                   ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.ei ; 2 uses
  %i.ek = load ptr, ptr %3, align 8, !tbaa !106
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.ei
  %i.em = load i32, ptr %i.el, align 4, !tbaa !95
  store i32 %i.ed, ptr %i.ea, align 4, !tbaa !95
  %i.en = load ptr, ptr %i.ej, align 8, !tbaa !102 ; 3 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %.critedge.loopexit, label %_ZNK6vectorIiLb0EjE4sizeEv.exit

_ZNK6vectorIiLb0EjE4sizeEv.exit:                  ; preds = %_ZN6vectorIiLb0EjE4backEv.exit, %_ZNK3smt24theory_special_relations24is_strict_neighbour_edgeERKNS0_5graphEi.exit.thread
  %.pre156 = phi ptr [ %.pre157, %_ZNK3smt24theory_special_relations24is_strict_neighbour_edgeERKNS0_5graphEi.exit.thread ], [ %i.en, %_ZN6vectorIiLb0EjE4backEv.exit ] ; 4 uses
  %i.ep = phi ptr [ %i.hu, %_ZNK3smt24theory_special_relations24is_strict_neighbour_edgeERKNS0_5graphEi.exit.thread ], [ %i.dz, %_ZN6vectorIiLb0EjE4backEv.exit ] ; 5 uses
  %i.eq = phi ptr [ %i.hv, %_ZNK3smt24theory_special_relations24is_strict_neighbour_edgeERKNS0_5graphEi.exit.thread ], [ %i.en, %_ZN6vectorIiLb0EjE4backEv.exit ] ; 5 uses
  %i.er = phi ptr [ %i.hw, %_ZNK3smt24theory_special_relations24is_strict_neighbour_edgeERKNS0_5graphEi.exit.thread ], [ %i.dz, %_ZN6vectorIiLb0EjE4backEv.exit ] ; 7 uses
  %indvars.iv152 = phi i64 [ %indvars.iv.next153, %_ZNK3smt24theory_special_relations24is_strict_neighbour_edgeERKNS0_5graphEi.exit.thread ], [ 0, %_ZN6vectorIiLb0EjE4backEv.exit ] ; 3 uses
  %.055144 = phi i32 [ %.1, %_ZNK3smt24theory_special_relations24is_strict_neighbour_edgeERKNS0_5graphEi.exit.thread ], [ %i.em, %_ZN6vectorIiLb0EjE4backEv.exit ] ; 5 uses
  %i.es = getelementptr inbounds i8, ptr %i.eq, i64 -4
  %i.et = load i32, ptr %i.es, align 4, !tbaa !95
  %i.eu = zext i32 %i.et to i64
  %i.ev = icmp samesign ult i64 %indvars.iv152, %i.eu
  br i1 %i.ev, label %bb.p, label %_ZNK6vectorIiLb0EjE4sizeEv.exit..critedge.loopexit_crit_edge, !llvm.loop !940

bb.p:                                             ; preds = %_ZNK6vectorIiLb0EjE4sizeEv.exit
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv152
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !95
  %i.ey = load ptr, ptr %i.ay, align 8, !tbaa !101
  %i.ez = zext i32 %i.ex to i64
  %i.fa = getelementptr inbounds nuw [32 x i8], ptr %i.ey, i64 %i.ez ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fc = load i8, ptr %i.fb, align 8, !tbaa !115, !range !126, !noundef !89
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %_ZNK3smt24theory_special_relations17is_neighbour_edgeERKNS0_5graphEi.exit.i, label %_ZNK3smt24theory_special_relations24is_strict_neighbour_edgeERKNS0_5graphEi.exit.thread

_ZNK3smt24theory_special_relations17is_neighbour_edgeERKNS0_5graphEi.exit.i: ; preds = %bb.p
  %i.fe = load i32, ptr %i.fa, align 8, !tbaa !117
  %i.ff = load ptr, ptr %i.az, align 8, !tbaa !122 ; 2 uses
  %i.fg = zext i32 %i.fe to i64
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.fg
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.fh, align 4, !tbaa !95
  %i.fi = add nsw i32 %.sroa.0.0.copyload.i.i.i, -1
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !118 ; 2 uses
  %i.fl = zext i32 %i.fk to i64                   ; 4 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.fl
  %.sroa.0.0.copyload.i7.i.i = load i32, ptr %i.fm, align 4, !tbaa !95
  %i.fn = icmp eq i32 %i.fi, %.sroa.0.0.copyload.i7.i.i
  br i1 %i.fn, label %_ZNK3smt24theory_special_relations24is_strict_neighbour_edgeERKNS0_5graphEi.exit, label %_ZNK3smt24theory_special_relations24is_strict_neighbour_edgeERKNS0_5graphEi.exit.thread

_ZNK3smt24theory_special_relations24is_strict_neighbour_edgeERKNS0_5graphEi.exit: ; preds = %_ZNK3smt24theory_special_relations17is_neighbour_edgeERKNS0_5graphEi.exit.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !125
  %.not134 = icmp eq i32 %i.fp, 0
  br i1 %.not134, label %_ZNK3smt24theory_special_relations24is_strict_neighbour_edgeERKNS0_5graphEi.exit.thread, label %bb.q

bb.q:                                             ; preds = %_ZNK3smt24theory_special_relations24is_strict_neighbour_edgeERKNS0_5graphEi.exit
  %i.fq = load ptr, ptr %3, align 8, !tbaa !106
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.fl
  store i32 %.055144, ptr %i.fr, align 4, !tbaa !95
  %i.fs = load ptr, ptr %2, align 8, !tbaa !106
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.fl
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !95
  %i.fv = add i32 %i.fu, %.055144                 ; 2 uses
  %i.fw = add i32 %i.fv, -1
  %i.fx = load ptr, ptr %4, align 8, !tbaa !106
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %i.fl
  store i32 %i.fw, ptr %i.fy, align 4, !tbaa !95
  %i.fz = icmp eq ptr %i.er, null
  br i1 %i.fz, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ga = getelementptr inbounds i8, ptr %i.er, i64 -4
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !95 ; 5 uses
  %i.gc = getelementptr inbounds i8, ptr %i.er, i64 -8 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !95
  %i.ge = icmp eq i32 %i.gb, %i.gd
  br i1 %i.ge, label %bb.t, label %bb.ac

bb.s:                                             ; preds = %bb.q
  %i.gf = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16)
          to label %.noexc103 unwind label %bb.ad ; 3 uses

.noexc103:                                        ; preds = %bb.s
  store i32 2, ptr %i.gf, align 4, !tbaa !95
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  store i32 0, ptr %i.gg, align 4, !tbaa !95
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 8 ; 2 uses
  store ptr %i.gh, ptr %7, align 8, !tbaa !102
  br label %.noexc100

bb.t:                                             ; preds = %bb.r
  %i.gi = mul i32 %i.gb, 3
  %i.gj = add i32 %i.gi, 1
  %i.gk = lshr i32 %i.gj, 1                       ; 3 uses
  %i.gl = shl i32 %i.gk, 2
  %i.gm = add i32 %i.gl, 8                        ; 2 uses
  %.not.i = icmp ugt i32 %i.gk, %i.gb
  br i1 %.not.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.gn = shl i32 %i.gb, 2
  %i.go = add i32 %i.gn, 8
  %.not27.i = icmp ugt i32 %i.gm, %i.go
  br i1 %.not27.i, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.gp = call ptr @__cxa_allocate_exception(i64 40) #23 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %bb.v
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.gp, align 8, !tbaa !110
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8 ; 2 uses
end_hunk_0
