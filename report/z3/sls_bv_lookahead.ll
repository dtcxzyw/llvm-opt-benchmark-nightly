Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/sls_bv_lookahead?download=true
inline.NumInlined: 849
inline.NumDeleted: 396
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN3sls12bv_lookahead11add_updatesEP4expr:bb.a
bb.d:                                             ; preds = %_ZNK3sls7context13atom2bool_varEP4expr.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !161  ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZNK3sls7context7is_unitEj.exit.thread.i.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i.i:          ; preds = %bb.d
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !76
  %i.v = icmp ult i32 %i.n, %i.u
  br i1 %i.v, label %bb.e, label %_ZNK3sls7context7is_unitEj.exit.thread.i.i

bb.e:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i.i
  %i.w = zext i32 %i.n to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !76   ; 2 uses
  %i.z = load i32, ptr %i.p, align 8, !tbaa !167
  %i.aa = icmp ult i32 %i.y, %i.z
  br i1 %i.aa, label %_ZNK3sls7context7is_unitEj.exit.i.i, label %_ZNK3sls7context7is_unitEj.exit.thread.i.i

_ZNK3sls7context7is_unitEj.exit.i.i:              ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !161
  %i.ad = zext i32 %i.y to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !76
  %i.ag = icmp eq i32 %i.af, %i.n
  br i1 %i.ag, label %_ZN3sls12bv_lookahead14lookahead_flipEj.exit.i, label %_ZNK3sls7context7is_unitEj.exit.thread.i.i

_ZNK3sls7context7is_unitEj.exit.thread.i.i:       ; preds = %_ZNK3sls7context7is_unitEj.exit.i.i, %bb.e, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i.i, %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !117 ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZN3sls7context4atomEj.exit.i.i, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i.i:   ; preds = %_ZNK3sls7context7is_unitEj.exit.thread.i.i
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !76
  %.not.i.i.i.i.i = icmp ult i32 %i.n, %i.al
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZN3sls7context4atomEj.exit.i.i

bb.f:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i.i
  %i.am = zext i32 %i.n to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.am
  %.0.i.sroa.speculate.load..i.i.i.i = load ptr, ptr %i.an, align 8, !tbaa !118
  br label %_ZN3sls7context4atomEj.exit.i.i

_ZN3sls7context4atomEj.exit.i.i:                  ; preds = %bb.f, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i.i, %_ZNK3sls7context7is_unitEj.exit.thread.i.i
  %.0.i.sroa.speculated.i.i.i.i = phi ptr [ %.0.i.sroa.speculate.load..i.i.i.i, %bb.f ], [ null, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i.i ], [ null, %_ZNK3sls7context7is_unitEj.exit.thread.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ap = tail call noundef double @_ZN3sls12bv_lookahead16lookahead_updateEP4exprRKNS_5bvectE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %.0.i.sroa.speculated.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(20) %i.ao)
  br label %_ZN3sls12bv_lookahead14lookahead_flipEj.exit.i

_ZN3sls12bv_lookahead14lookahead_flipEj.exit.i:   ; preds = %_ZN3sls7context4atomEj.exit.i.i, %_ZNK3sls7context7is_unitEj.exit.i.i
  %.0.i.i = phi double [ %i.ap, %_ZN3sls7context4atomEj.exit.i.i ], [ -1.000000e+02, %_ZNK3sls7context7is_unitEj.exit.i.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !168
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !168
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !125
  %i.av = fcmp ogt double %.0.i.i, %i.au
  br i1 %i.av, label %bb.g, label %_ZN3sls12bv_lookahead8try_flipEP4expr.exit

bb.g:                                             ; preds = %_ZN3sls12bv_lookahead14lookahead_flipEj.exit.i
  store double %.0.i.i, ptr %i.at, align 8, !tbaa !125
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr %1, ptr %i.aw, align 8, !tbaa !123
  br label %_ZN3sls12bv_lookahead8try_flipEP4expr.exit

bb.h:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !83, !nonnull !74, !align !75
  %i.az = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZNK3sls7bv_eval4wvalEP4expr(ptr noundef nonnull align 8 dereferenceable(857) %i.ay, ptr noundef %1) ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 28 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 13 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZN6vectorIjLb0EjE9push_backEOj.exit53, %bb.h
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !161 ; 5 uses
  %i.be = icmp eq ptr %i.bd, null                 ; 2 uses
  br i1 %i.be, label %_ZNK6vectorIjLb0EjE4sizeEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 -4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !76
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit

_ZNK6vectorIjLb0EjE4sizeEv.exit:                  ; preds = %bb.i, %bb.j
  %.0.i = phi i32 [ %i.bg, %bb.j ], [ 0, %bb.i ]
  %i.bh = load ptr, ptr %i.az, align 8, !tbaa !161 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %.critedge, label %_ZNK6vectorIjLb0EjE4sizeEv.exit45

_ZNK6vectorIjLb0EjE4sizeEv.exit45:                ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 -4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !76
  %i.bl = icmp ult i32 %.0.i, %i.bk
  br i1 %i.bl, label %bb.k, label %.critedge

bb.k:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit45
  br i1 %i.be, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds i8, ptr %i.bd, i64 -4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !76 ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bd, i64 -8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !76
  %i.bq = icmp eq i32 %i.bn, %i.bp
  br i1 %i.bq, label %bb.m, label %_ZN6vectorIjLb0EjE9push_backEOj.exit

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ba)
  %.pre.i = load ptr, ptr %i.ba, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !76
  br label %_ZN6vectorIjLb0EjE9push_backEOj.exit

_ZN6vectorIjLb0EjE9push_backEOj.exit:             ; preds = %bb.l, %bb.m
  %i.br = phi i32 [ %.pre2.i, %bb.m ], [ %i.bn, %bb.l ] ; 2 uses
  %i.bs = phi ptr [ %.pre.i, %bb.m ], [ %i.bd, %bb.l ] ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -4
  %i.bu = zext i32 %i.br to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bu
  store i32 0, ptr %i.bv, align 4, !tbaa !76
  %i.bw = add i32 %i.br, 1
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !76
  %i.bx = load ptr, ptr %i.bb, align 8, !tbaa !161 ; 4 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN6vectorIjLb0EjE9push_backEOj.exit
  %i.bz = getelementptr inbounds i8, ptr %i.bx, i64 -4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !76 ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %i.bx, i64 -8
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !76
  %i.cd = icmp eq i32 %i.ca, %i.cc
  br i1 %i.cd, label %bb.o, label %_ZN6vectorIjLb0EjE9push_backEOj.exit49

bb.o:                                             ; preds = %bb.n, %_ZN6vectorIjLb0EjE9push_backEOj.exit
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bb)
  %.pre.i46 = load ptr, ptr %i.bb, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i47 = getelementptr inbounds i8, ptr %.pre.i46, i64 -4
  %.pre2.i48 = load i32, ptr %.phi.trans.insert.i47, align 4, !tbaa !76
  br label %_ZN6vectorIjLb0EjE9push_backEOj.exit49

_ZN6vectorIjLb0EjE9push_backEOj.exit49:           ; preds = %bb.n, %bb.o
  %i.ce = phi i32 [ %.pre2.i48, %bb.o ], [ %i.ca, %bb.n ] ; 2 uses
  %i.cf = phi ptr [ %.pre.i46, %bb.o ], [ %i.bx, %bb.n ] ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -4
  %i.ch = zext i32 %i.ce to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ch
  store i32 0, ptr %i.ci, align 4, !tbaa !76
  %i.cj = add i32 %i.ce, 1
  store i32 %i.cj, ptr %i.cg, align 4, !tbaa !76
  %i.ck = load ptr, ptr %i.bc, align 8, !tbaa !161 ; 4 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN6vectorIjLb0EjE9push_backEOj.exit49
  %i.cm = getelementptr inbounds i8, ptr %i.ck, i64 -4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !76 ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %i.ck, i64 -8
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !76
  %i.cq = icmp eq i32 %i.cn, %i.cp
  br i1 %i.cq, label %bb.q, label %_ZN6vectorIjLb0EjE9push_backEOj.exit53

bb.q:                                             ; preds = %bb.p, %_ZN6vectorIjLb0EjE9push_backEOj.exit49
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bc)
  %.pre.i50 = load ptr, ptr %i.bc, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i51 = getelementptr inbounds i8, ptr %.pre.i50, i64 -4
  %.pre2.i52 = load i32, ptr %.phi.trans.insert.i51, align 4, !tbaa !76
  br label %_ZN6vectorIjLb0EjE9push_backEOj.exit53

_ZN6vectorIjLb0EjE9push_backEOj.exit53:           ; preds = %bb.p, %bb.q
  %i.cr = phi i32 [ %.pre2.i52, %bb.q ], [ %i.cn, %bb.p ] ; 2 uses
  %i.cs = phi ptr [ %.pre.i50, %bb.q ], [ %i.ck, %bb.p ] ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -4
  %i.cu = zext i32 %i.cr to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.cu
  store i32 0, ptr %i.cv, align 4, !tbaa !76
  %i.cw = add i32 %i.cr, 1
  store i32 %i.cw, ptr %i.ct, align 4, !tbaa !76
  br label %bb.i, !llvm.loop !247

.critedge:                                        ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit, %_ZNK6vectorIjLb0EjE4sizeEv.exit45
  %i.cx = getelementptr inbounds nuw i8, ptr %i.az, i64 152 ; 9 uses
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !159
  tail call void @_ZN3sls5bvect6set_bwEj(ptr noundef nonnull align 8 dereferenceable(20) %i.ba, i32 noundef %i.cy)
  %i.cz = load i32, ptr %i.cx, align 8, !tbaa !159
  tail call void @_ZN3sls5bvect6set_bwEj(ptr noundef nonnull align 8 dereferenceable(20) %i.bb, i32 noundef %i.cz)
  %i.da = getelementptr inbounds nuw i8, ptr %i.az, i64 156 ; 7 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !160 ; 3 uses
  %.not.i = icmp eq i32 %i.db, 0
  br i1 %.not.i, label %_ZNK3sls5bvect7copy_toEjRS0_.exit60, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge
  %i.dc = load ptr, ptr %i.az, align 8, !tbaa !161 ; 7 uses
  %i.dd = load ptr, ptr %i.ba, align 8, !tbaa !161 ; 14 uses
  %wide.trip.count.i = zext i32 %i.db to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %i.db, 8
  %2 = ptrtoaddr ptr %i.dd to i64
  %i.de = ptrtoaddr ptr %i.dc to i64
  %i.df = sub i64 %i.de, %2
  %diff.check = icmp ugt i64 %i.df, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %wide.trip.count.i, 4294967288 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %index ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %wide.load = load <4 x i32>, ptr %i.dg, align 4, !tbaa !76
  %wide.load230 = load <4 x i32>, ptr %i.dh, align 4, !tbaa !76
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %index ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store <4 x i32> %wide.load, ptr %i.di, align 4, !tbaa !76
  store <4 x i32> %wide.load230, ptr %i.dj, align 4, !tbaa !76
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !248

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZNK3sls5bvect7copy_toEjRS0_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.i.prol
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !76
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.i.prol
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !76
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !249

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.do = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.dp = icmp ugt i64 %i.do, -4
  br i1 %i.dp, label %_ZNK3sls5bvect7copy_toEjRS0_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.i
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !76
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.i
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !76
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next.i
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !76
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next.i
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !76
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next.i.1
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !76
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next.i.1
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !76
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next.i.2
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !76
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next.i.2
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !76
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %_ZNK3sls5bvect7copy_toEjRS0_.exit, label %scalar.ph, !llvm.loop !250

_ZNK3sls5bvect7copy_toEjRS0_.exit:                ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.pr = load i32, ptr %i.da, align 4, !tbaa !160 ; 3 uses
  %.not.i54 = icmp eq i32 %.pr, 0
  br i1 %.not.i54, label %_ZNK3sls5bvect7copy_toEjRS0_.exit60, label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %_ZNK3sls5bvect7copy_toEjRS0_.exit
  %i.ec = load ptr, ptr %i.bb, align 8, !tbaa !161 ; 7 uses
  %wide.trip.count.i56 = zext i32 %.pr to i64     ; 5 uses
  %min.iters.check234 = icmp ult i32 %.pr, 8
  %3 = ptrtoaddr ptr %i.ec to i64
  %i.ed = ptrtoaddr ptr %i.dd to i64
  %i.ee = sub i64 %i.ed, %3
  %diff.check232 = icmp ugt i64 %i.ee, -32
  %or.cond361 = select i1 %min.iters.check234, i1 true, i1 %diff.check232
  br i1 %or.cond361, label %scalar.ph233.preheader, label %vector.ph235

vector.ph235:                                     ; preds = %.lr.ph.i55
  %n.vec236 = and i64 %wide.trip.count.i56, 4294967288 ; 3 uses
  br label %vector.body237

vector.body237:                                   ; preds = %vector.body237, %vector.ph235
  %index238 = phi i64 [ 0, %vector.ph235 ], [ %index.next241, %vector.body237 ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %index238 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %wide.load239 = load <4 x i32>, ptr %i.ef, align 4, !tbaa !76
  %wide.load240 = load <4 x i32>, ptr %i.eg, align 4, !tbaa !76
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %index238 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store <4 x i32> %wide.load239, ptr %i.eh, align 4, !tbaa !76
  store <4 x i32> %wide.load240, ptr %i.ei, align 4, !tbaa !76
  %index.next241 = add nuw i64 %index238, 8       ; 2 uses
  %i.ej = icmp eq i64 %index.next241, %n.vec236
  br i1 %i.ej, label %middle.block242, label %vector.body237, !llvm.loop !251

middle.block242:                                  ; preds = %vector.body237
  %cmp.n243 = icmp eq i64 %n.vec236, %wide.trip.count.i56
  br i1 %cmp.n243, label %_ZNK3sls5bvect7copy_toEjRS0_.exit60, label %scalar.ph233.preheader

scalar.ph233.preheader:                           ; preds = %.lr.ph.i55, %middle.block242
  %indvars.iv.i57.ph = phi i64 [ 0, %.lr.ph.i55 ], [ %n.vec236, %middle.block242 ] ; 3 uses
  %xtraiter398 = and i64 %wide.trip.count.i56, 3  ; 2 uses
  %lcmp.mod399.not = icmp eq i64 %xtraiter398, 0
  br i1 %lcmp.mod399.not, label %scalar.ph233.prol.loopexit, label %scalar.ph233.prol

scalar.ph233.prol:                                ; preds = %scalar.ph233.preheader, %scalar.ph233.prol
  %indvars.iv.i57.prol = phi i64 [ %indvars.iv.next.i58.prol, %scalar.ph233.prol ], [ %indvars.iv.i57.ph, %scalar.ph233.preheader ] ; 3 uses
  %prol.iter400 = phi i64 [ %prol.iter400.next, %scalar.ph233.prol ], [ 0, %scalar.ph233.preheader ]
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.i57.prol
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !76
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv.i57.prol
  store i32 %i.el, ptr %i.em, align 4, !tbaa !76
  %indvars.iv.next.i58.prol = add nuw nsw i64 %indvars.iv.i57.prol, 1 ; 2 uses
  %prol.iter400.next = add i64 %prol.iter400, 1   ; 2 uses
  %prol.iter400.cmp.not = icmp eq i64 %prol.iter400.next, %xtraiter398
  br i1 %prol.iter400.cmp.not, label %scalar.ph233.prol.loopexit, label %scalar.ph233.prol, !llvm.loop !252

scalar.ph233.prol.loopexit:                       ; preds = %scalar.ph233.prol, %scalar.ph233.preheader
  %indvars.iv.i57.unr = phi i64 [ %indvars.iv.i57.ph, %scalar.ph233.preheader ], [ %indvars.iv.next.i58.prol, %scalar.ph233.prol ]
  %i.en = sub nsw i64 %indvars.iv.i57.ph, %wide.trip.count.i56
  %i.eo = icmp ugt i64 %i.en, -4
  br i1 %i.eo, label %_ZNK3sls5bvect7copy_toEjRS0_.exit60, label %scalar.ph233

scalar.ph233:                                     ; preds = %scalar.ph233.prol.loopexit, %scalar.ph233
  %indvars.iv.i57 = phi i64 [ %indvars.iv.next.i58.3, %scalar.ph233 ], [ %indvars.iv.i57.unr, %scalar.ph233.prol.loopexit ] ; 6 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.i57
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !76
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv.i57
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !76
  %indvars.iv.next.i58 = add nuw nsw i64 %indvars.iv.i57, 1 ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next.i58
  %i.et = load i32, ptr %i.es, align 4, !tbaa !76
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv.next.i58
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !76
  %indvars.iv.next.i58.1 = add nuw nsw i64 %indvars.iv.i57, 2 ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next.i58.1
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !76
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv.next.i58.1
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !76
  %indvars.iv.next.i58.2 = add nuw nsw i64 %indvars.iv.i57, 3 ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next.i58.2
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !76
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv.next.i58.2
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !76
  %indvars.iv.next.i58.3 = add nuw nsw i64 %indvars.iv.i57, 4 ; 2 uses
  %exitcond.not.i59.3 = icmp eq i64 %indvars.iv.next.i58.3, %wide.trip.count.i56
  br i1 %exitcond.not.i59.3, label %_ZNK3sls5bvect7copy_toEjRS0_.exit60, label %scalar.ph233, !llvm.loop !253

_ZNK3sls5bvect7copy_toEjRS0_.exit60:              ; preds = %scalar.ph233.prol.loopexit, %scalar.ph233, %middle.block242, %.critedge, %_ZNK3sls5bvect7copy_toEjRS0_.exit
  tail call void @_ZN3sls12bv_lookahead21populate_update_stackEP4expr(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %1)
  %i.fb = load i32, ptr %i.cx, align 8, !tbaa !159
  %.not146 = icmp eq i32 %i.fb, 0
  br i1 %.not146, label %_ZN3sls12bv_lookahead8try_flipEP4expr.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK3sls5bvect7copy_toEjRS0_.exit60
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 212
  %.pre = load ptr, ptr %i.bb, align 8, !tbaa !161 ; 2 uses
  %.pre163 = load i32, ptr %.pre, align 4, !tbaa !76
  br label %bb.r

._crit_edge:                                      ; preds = %_ZN3sls12bv_lookahead7try_setEP4exprRKNS_5bvectE.exit
  %i.fh = icmp ugt i32 %i.hh, 32
  br i1 %i.fh, label %bb.u, label %bb.x

bb.r:                                             ; preds = %.lr.ph, %_ZN3sls12bv_lookahead7try_setEP4exprRKNS_5bvectE.exit
  %i.fi = phi i32 [ %.pre163, %.lr.ph ], [ %i.hf, %_ZN3sls12bv_lookahead7try_setEP4exprRKNS_5bvectE.exit ] ; 3 uses
  %i.fj = phi ptr [ %.pre, %.lr.ph ], [ %i.ha, %_ZN3sls12bv_lookahead7try_setEP4exprRKNS_5bvectE.exit ]
  %.042141 = phi i32 [ 0, %.lr.ph ], [ %i.hg, %_ZN3sls12bv_lookahead7try_setEP4exprRKNS_5bvectE.exit ] ; 3 uses
  %i.fk = shl nuw i32 1, %.042141                 ; 4 uses
  %i.fl = and i32 %i.fi, %i.fk
  %.not125 = icmp eq i32 %i.fl, 0
  %.neg.i = sext i1 %.not125 to i32
  %i.fm = xor i32 %i.fi, %.neg.i
  %i.fn = and i32 %i.fm, %i.fk
  %i.fo = xor i32 %i.fn, %i.fi
  store i32 %i.fo, ptr %i.fj, align 4, !tbaa !76
  %i.fp = load ptr, ptr %i.ax, align 8, !tbaa !83, !nonnull !74, !align !75
  %i.fq = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZNK3sls7bv_eval4wvalEP4expr(ptr noundef nonnull align 8 dereferenceable(857) %i.fp, ptr noundef %1)
  %i.fr = tail call noundef zeroext i1 @_ZNK3sls12bv_valuation7can_setERKNS_5bvectE(ptr noundef nonnull align 8 dereferenceable(184) %i.fq, ptr noundef nonnull align 8 dereferenceable(20) %i.bb)
  br i1 %i.fr, label %bb.s, label %_ZN3sls12bv_lookahead7try_setEP4exprRKNS_5bvectE.exit

bb.s:                                             ; preds = %bb.r
  %i.fs = tail call noundef double @_ZN3sls12bv_lookahead16lookahead_updateEP4exprRKNS_5bvectE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(20) %i.bb) ; 2 uses
  %i.ft = load i32, ptr %i.fc, align 8, !tbaa !168
  %i.fu = add i32 %i.ft, 1
  store i32 %i.fu, ptr %i.fc, align 8, !tbaa !168
  %i.fv = load double, ptr %i.fd, align 8, !tbaa !125
  %i.fw = fcmp ogt double %i.fs, %i.fv
  br i1 %i.fw, label %bb.t, label %_ZN3sls12bv_lookahead7try_setEP4exprRKNS_5bvectE.exit

bb.t:                                             ; preds = %bb.s
  store double %i.fs, ptr %i.fd, align 8, !tbaa !125
  store ptr %1, ptr %i.fe, align 8, !tbaa !123
  %i.fx = load i32, ptr %i.ff, align 8, !tbaa !169
  tail call void @_ZN3sls5bvect6set_bwEj(ptr noundef nonnull align 8 dereferenceable(20) %i.bc, i32 noundef %i.fx)
  %i.fy = load i32, ptr %i.fg, align 4, !tbaa !170 ; 3 uses
  %.not.i.i = icmp eq i32 %i.fy, 0
  br i1 %.not.i.i, label %_ZN3sls12bv_lookahead7try_setEP4exprRKNS_5bvectE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.t
  %i.fz = load ptr, ptr %i.bb, align 8, !tbaa !161 ; 7 uses
  %i.ga = load ptr, ptr %i.bc, align 8, !tbaa !161 ; 7 uses
  %wide.trip.count.i.i = zext i32 %i.fy to i64    ; 5 uses
  %min.iters.check248 = icmp ult i32 %i.fy, 8
  %i.gb = ptrtoaddr ptr %i.ga to i64
  %i.gc = ptrtoaddr ptr %i.fz to i64
  %i.gd = sub i64 %i.gc, %i.gb
  %diff.check246 = icmp ugt i64 %i.gd, -32
  %or.cond364 = select i1 %min.iters.check248, i1 true, i1 %diff.check246
  br i1 %or.cond364, label %scalar.ph247.preheader, label %vector.ph249

vector.ph249:                                     ; preds = %.lr.ph.i.i
  %n.vec250 = and i64 %wide.trip.count.i.i, 4294967288 ; 3 uses
  br label %vector.body251

vector.body251:                                   ; preds = %vector.body251, %vector.ph249
  %index252 = phi i64 [ 0, %vector.ph249 ], [ %index.next255, %vector.body251 ] ; 3 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %index252 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %wide.load253 = load <4 x i32>, ptr %i.ge, align 4, !tbaa !76
  %wide.load254 = load <4 x i32>, ptr %i.gf, align 4, !tbaa !76
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %index252 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  store <4 x i32> %wide.load253, ptr %i.gg, align 4, !tbaa !76
  store <4 x i32> %wide.load254, ptr %i.gh, align 4, !tbaa !76
  %index.next255 = add nuw i64 %index252, 8       ; 2 uses
  %i.gi = icmp eq i64 %index.next255, %n.vec250
  br i1 %i.gi, label %middle.block256, label %vector.body251, !llvm.loop !254

middle.block256:                                  ; preds = %vector.body251
  %cmp.n257 = icmp eq i64 %n.vec250, %wide.trip.count.i.i
  br i1 %cmp.n257, label %_ZN3sls12bv_lookahead7try_setEP4exprRKNS_5bvectE.exit, label %scalar.ph247.preheader

scalar.ph247.preheader:                           ; preds = %.lr.ph.i.i, %middle.block256
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec250, %middle.block256 ] ; 3 uses
  %xtraiter401 = and i64 %wide.trip.count.i.i, 3  ; 2 uses
  %lcmp.mod402.not = icmp eq i64 %xtraiter401, 0
  br i1 %lcmp.mod402.not, label %scalar.ph247.prol.loopexit, label %scalar.ph247.prol

scalar.ph247.prol:                                ; preds = %scalar.ph247.preheader, %scalar.ph247.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph247.prol ], [ %indvars.iv.i.i.ph, %scalar.ph247.preheader ] ; 3 uses
  %prol.iter403 = phi i64 [ %prol.iter403.next, %scalar.ph247.prol ], [ 0, %scalar.ph247.preheader ]
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv.i.i.prol
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !76
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %indvars.iv.i.i.prol
  store i32 %i.gk, ptr %i.gl, align 4, !tbaa !76
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter403.next = add i64 %prol.iter403, 1   ; 2 uses
  %prol.iter403.cmp.not = icmp eq i64 %prol.iter403.next, %xtraiter401
  br i1 %prol.iter403.cmp.not, label %scalar.ph247.prol.loopexit, label %scalar.ph247.prol, !llvm.loop !255

scalar.ph247.prol.loopexit:                       ; preds = %scalar.ph247.prol, %scalar.ph247.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph247.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph247.prol ]
  %i.gm = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.gn = icmp ugt i64 %i.gm, -4
  br i1 %i.gn, label %_ZN3sls12bv_lookahead7try_setEP4exprRKNS_5bvectE.exit, label %scalar.ph247

scalar.ph247:                                     ; preds = %scalar.ph247.prol.loopexit, %scalar.ph247
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph247 ], [ %indvars.iv.i.i.unr, %scalar.ph247.prol.loopexit ] ; 6 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv.i.i
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !76
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %indvars.iv.i.i
  store i32 %i.gp, ptr %i.gq, align 4, !tbaa !76
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv.next.i.i
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !76
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %indvars.iv.next.i.i
  store i32 %i.gs, ptr %i.gt, align 4, !tbaa !76
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv.next.i.i.1
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !76
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %indvars.iv.next.i.i.1
  store i32 %i.gv, ptr %i.gw, align 4, !tbaa !76
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv.next.i.i.2
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !76
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %indvars.iv.next.i.i.2
  store i32 %i.gy, ptr %i.gz, align 4, !tbaa !76
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %_ZN3sls12bv_lookahead7try_setEP4exprRKNS_5bvectE.exit, label %scalar.ph247, !llvm.loop !256

_ZN3sls12bv_lookahead7try_setEP4exprRKNS_5bvectE.exit: ; preds = %scalar.ph247.prol.loopexit, %scalar.ph247, %middle.block256, %bb.r, %bb.s, %bb.t
  %i.ha = load ptr, ptr %i.bb, align 8, !tbaa !161 ; 3 uses
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !76 ; 3 uses
  %i.hc = and i32 %i.hb, %i.fk
  %.not126 = icmp eq i32 %i.hc, 0
  %.neg.i61 = sext i1 %.not126 to i32
  %i.hd = xor i32 %i.hb, %.neg.i61
  %i.he = and i32 %i.hd, %i.fk
  %i.hf = xor i32 %i.he, %i.hb                    ; 2 uses
  store i32 %i.hf, ptr %i.ha, align 4, !tbaa !76
  %i.hg = add nuw nsw i32 %.042141, 1             ; 2 uses
  %i.hh = load i32, ptr %i.cx, align 8, !tbaa !159 ; 4 uses
  %i.hi = icmp ult i32 %i.hg, %i.hh
  %i.hj = icmp samesign ult i32 %.042141, 31
  %i.hk = select i1 %i.hi, i1 %i.hj, i1 false
  br i1 %i.hk, label %bb.r, label %._crit_edge, !llvm.loop !257

bb.u:                                             ; preds = %._crit_edge
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !80, !nonnull !74, !align !75
  %i.hn = add i32 %i.hh, -32
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 152 ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !121
  %i.hq = mul i32 %i.hp, 214013
  %i.hr = add i32 %i.hq, 2531011                  ; 2 uses
  store i32 %i.hr, ptr %i.ho, align 8, !tbaa !121
  %i.hs = lshr i32 %i.hr, 16
  %i.ht = and i32 %i.hs, 32767
  %i.hu = urem i32 %i.ht, %i.hn                   ; 2 uses
  %i.hv = add nuw nsw i32 %i.hu, 32
  %i.hw = lshr i32 %i.hv, 5
  %i.hx = load ptr, ptr %i.bb, align 8, !tbaa !161
  %i.hy = zext nneg i32 %i.hw to i64              ; 2 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.hy ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !76 ; 3 uses
  %i.ib = and i32 %i.hu, 31
  %i.ic = shl nuw i32 1, %i.ib                    ; 4 uses
  %i.id = and i32 %i.ia, %i.ic
  %.not = icmp eq i32 %i.id, 0
  %.neg.i62 = sext i1 %.not to i32
  %i.ie = xor i32 %i.ia, %.neg.i62
  %i.if = and i32 %i.ie, %i.ic
  %i.ig = xor i32 %i.if, %i.ia
  store i32 %i.ig, ptr %i.hz, align 4, !tbaa !76
  %i.ih = load ptr, ptr %i.ax, align 8, !tbaa !83, !nonnull !74, !align !75
  %i.ii = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZNK3sls7bv_eval4wvalEP4expr(ptr noundef nonnull align 8 dereferenceable(857) %i.ih, ptr noundef %1)
  %i.ij = tail call noundef zeroext i1 @_ZNK3sls12bv_valuation7can_setERKNS_5bvectE(ptr noundef nonnull align 8 dereferenceable(184) %i.ii, ptr noundef nonnull align 8 dereferenceable(20) %i.bb)
  br i1 %i.ij, label %bb.v, label %_ZN3sls12bv_lookahead7try_setEP4exprRKNS_5bvectE.exit69

bb.v:                                             ; preds = %bb.u
  %i.ik = tail call noundef double @_ZN3sls12bv_lookahead16lookahead_updateEP4exprRKNS_5bvectE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(20) %i.bb) ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.im = load i32, ptr %i.il, align 8, !tbaa !168
  %i.in = add i32 %i.im, 1
  store i32 %i.in, ptr %i.il, align 8, !tbaa !168
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.ip = load double, ptr %i.io, align 8, !tbaa !125
  %i.iq = fcmp ogt double %i.ik, %i.ip
  br i1 %i.iq, label %bb.w, label %_ZN3sls12bv_lookahead7try_setEP4exprRKNS_5bvectE.exit69

bb.w:                                             ; preds = %bb.v
  store double %i.ik, ptr %i.io, align 8, !tbaa !125
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr %1, ptr %i.ir, align 8, !tbaa !123
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.it = load i32, ptr %i.is, align 8, !tbaa !169
  tail call void @_ZN3sls5bvect6set_bwEj(ptr noundef nonnull align 8 dereferenceable(20) %i.bc, i32 noundef %i.it)
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !170 ; 3 uses
  %.not.i.i63 = icmp eq i32 %i.iv, 0
  br i1 %.not.i.i63, label %_ZN3sls12bv_lookahead7try_setEP4exprRKNS_5bvectE.exit69, label %.lr.ph.i.i64

.lr.ph.i.i64:                                     ; preds = %bb.w
  %i.iw = load ptr, ptr %i.bb, align 8, !tbaa !161 ; 7 uses
  %i.ix = load ptr, ptr %i.bc, align 8, !tbaa !161 ; 7 uses
  %wide.trip.count.i.i65 = zext i32 %i.iv to i64  ; 5 uses
  %min.iters.check262 = icmp ult i32 %i.iv, 8
  %i.iy = ptrtoaddr ptr %i.ix to i64
  %i.iz = ptrtoaddr ptr %i.iw to i64
  %i.ja = sub i64 %i.iz, %i.iy
  %diff.check260 = icmp ugt i64 %i.ja, -32
  %or.cond367 = select i1 %min.iters.check262, i1 true, i1 %diff.check260
  br i1 %or.cond367, label %scalar.ph261.preheader, label %vector.ph263

vector.ph263:                                     ; preds = %.lr.ph.i.i64
  %n.vec264 = and i64 %wide.trip.count.i.i65, 4294967288 ; 3 uses
  br label %vector.body265

vector.body265:                                   ; preds = %vector.body265, %vector.ph263
  %index266 = phi i64 [ 0, %vector.ph263 ], [ %index.next269, %vector.body265 ] ; 3 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %index266 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %wide.load267 = load <4 x i32>, ptr %i.jb, align 4, !tbaa !76
  %wide.load268 = load <4 x i32>, ptr %i.jc, align 4, !tbaa !76
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %index266 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  store <4 x i32> %wide.load267, ptr %i.jd, align 4, !tbaa !76
  store <4 x i32> %wide.load268, ptr %i.je, align 4, !tbaa !76
  %index.next269 = add nuw i64 %index266, 8       ; 2 uses
  %i.jf = icmp eq i64 %index.next269, %n.vec264
  br i1 %i.jf, label %middle.block270, label %vector.body265, !llvm.loop !258

middle.block270:                                  ; preds = %vector.body265
  %cmp.n271 = icmp eq i64 %n.vec264, %wide.trip.count.i.i65
  br i1 %cmp.n271, label %_ZN3sls12bv_lookahead7try_setEP4exprRKNS_5bvectE.exit69, label %scalar.ph261.preheader

scalar.ph261.preheader:                           ; preds = %.lr.ph.i.i64, %middle.block270
  %indvars.iv.i.i66.ph = phi i64 [ 0, %.lr.ph.i.i64 ], [ %n.vec264, %middle.block270 ] ; 3 uses
  %xtraiter404 = and i64 %wide.trip.count.i.i65, 3 ; 2 uses
  %lcmp.mod405.not = icmp eq i64 %xtraiter404, 0
  br i1 %lcmp.mod405.not, label %scalar.ph261.prol.loopexit, label %scalar.ph261.prol

scalar.ph261.prol:                                ; preds = %scalar.ph261.preheader, %scalar.ph261.prol
  %indvars.iv.i.i66.prol = phi i64 [ %indvars.iv.next.i.i67.prol, %scalar.ph261.prol ], [ %indvars.iv.i.i66.ph, %scalar.ph261.preheader ] ; 3 uses
  %prol.iter406 = phi i64 [ %prol.iter406.next, %scalar.ph261.prol ], [ 0, %scalar.ph261.preheader ]
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %indvars.iv.i.i66.prol
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !76
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv.i.i66.prol
  store i32 %i.jh, ptr %i.ji, align 4, !tbaa !76
  %indvars.iv.next.i.i67.prol = add nuw nsw i64 %indvars.iv.i.i66.prol, 1 ; 2 uses
  %prol.iter406.next = add i64 %prol.iter406, 1   ; 2 uses
  %prol.iter406.cmp.not = icmp eq i64 %prol.iter406.next, %xtraiter404
  br i1 %prol.iter406.cmp.not, label %scalar.ph261.prol.loopexit, label %scalar.ph261.prol, !llvm.loop !259

scalar.ph261.prol.loopexit:                       ; preds = %scalar.ph261.prol, %scalar.ph261.preheader
  %indvars.iv.i.i66.unr = phi i64 [ %indvars.iv.i.i66.ph, %scalar.ph261.preheader ], [ %indvars.iv.next.i.i67.prol, %scalar.ph261.prol ]
  %i.jj = sub nsw i64 %indvars.iv.i.i66.ph, %wide.trip.count.i.i65
  %i.jk = icmp ugt i64 %i.jj, -4
  br i1 %i.jk, label %_ZN3sls12bv_lookahead7try_setEP4exprRKNS_5bvectE.exit69, label %scalar.ph261

scalar.ph261:                                     ; preds = %scalar.ph261.prol.loopexit, %scalar.ph261
  %indvars.iv.i.i66 = phi i64 [ %indvars.iv.next.i.i67.3, %scalar.ph261 ], [ %indvars.iv.i.i66.unr, %scalar.ph261.prol.loopexit ] ; 6 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %indvars.iv.i.i66
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !76
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv.i.i66
  store i32 %i.jm, ptr %i.jn, align 4, !tbaa !76
  %indvars.iv.next.i.i67 = add nuw nsw i64 %indvars.iv.i.i66, 1 ; 2 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %indvars.iv.next.i.i67
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !76
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv.next.i.i67
  store i32 %i.jp, ptr %i.jq, align 4, !tbaa !76
  %indvars.iv.next.i.i67.1 = add nuw nsw i64 %indvars.iv.i.i66, 2 ; 2 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %indvars.iv.next.i.i67.1
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !76
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv.next.i.i67.1
  store i32 %i.js, ptr %i.jt, align 4, !tbaa !76
  %indvars.iv.next.i.i67.2 = add nuw nsw i64 %indvars.iv.i.i66, 3 ; 2 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %indvars.iv.next.i.i67.2
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !76
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv.next.i.i67.2
  store i32 %i.jv, ptr %i.jw, align 4, !tbaa !76
  %indvars.iv.next.i.i67.3 = add nuw nsw i64 %indvars.iv.i.i66, 4 ; 2 uses
  %exitcond.not.i.i68.3 = icmp eq i64 %indvars.iv.next.i.i67.3, %wide.trip.count.i.i65
  br i1 %exitcond.not.i.i68.3, label %_ZN3sls12bv_lookahead7try_setEP4exprRKNS_5bvectE.exit69, label %scalar.ph261, !llvm.loop !260

_ZN3sls12bv_lookahead7try_setEP4exprRKNS_5bvectE.exit69: ; preds = %scalar.ph261.prol.loopexit, %scalar.ph261, %middle.block270, %bb.u, %bb.v, %bb.w
  %i.jx = load ptr, ptr %i.bb, align 8, !tbaa !161
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.hy ; 2 uses
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !76 ; 3 uses
  %i.ka = and i32 %i.jz, %i.ic
  %.not124 = icmp eq i32 %i.ka, 0
  %.neg.i70 = sext i1 %.not124 to i32
  %i.kb = xor i32 %i.jz, %.neg.i70
  %i.kc = and i32 %i.kb, %i.ic
  %i.kd = xor i32 %i.kc, %i.jz
  store i32 %i.kd, ptr %i.jy, align 4, !tbaa !76
  %.pre164 = load i32, ptr %i.cx, align 8, !tbaa !159
  br label %bb.x

bb.x:                                             ; preds = %_ZN3sls12bv_lookahead7try_setEP4exprRKNS_5bvectE.exit69, %._crit_edge
  %i.ke = phi i32 [ %.pre164, %_ZN3sls12bv_lookahead7try_setEP4exprRKNS_5bvectE.exit69 ], [ %i.hh, %._crit_edge ]
  %i.kf = icmp ugt i32 %i.ke, 1
  br i1 %i.kf, label %bb.y, label %_ZN3sls12bv_lookahead8try_flipEP4expr.exit

bb.y:                                             ; preds = %bb.x
  %i.kg = load i32, ptr %i.da, align 4, !tbaa !160 ; 3 uses
  %.not.i71 = icmp eq i32 %i.kg, 0
  %.pre165 = load ptr, ptr %i.bb, align 8, !tbaa !161 ; 8 uses
  br i1 %.not.i71, label %.lr.ph.i78.preheader, label %.lr.ph.i72

.lr.ph.i72:                                       ; preds = %bb.y
  %i.kh = load ptr, ptr %i.ba, align 8, !tbaa !161 ; 7 uses
  %wide.trip.count.i73 = zext i32 %i.kg to i64    ; 5 uses
  %min.iters.check277 = icmp ult i32 %i.kg, 8
  %4 = ptrtoaddr ptr %.pre165 to i64
  %i.ki = ptrtoaddr ptr %i.kh to i64
  %i.kj = sub i64 %i.ki, %4
  %diff.check275 = icmp ugt i64 %i.kj, -32
  %or.cond369 = select i1 %min.iters.check277, i1 true, i1 %diff.check275
  br i1 %or.cond369, label %scalar.ph276.preheader, label %vector.ph278

vector.ph278:                                     ; preds = %.lr.ph.i72
  %n.vec279 = and i64 %wide.trip.count.i73, 4294967288 ; 3 uses
  br label %vector.body280

vector.body280:                                   ; preds = %vector.body280, %vector.ph278
  %index281 = phi i64 [ 0, %vector.ph278 ], [ %index.next284, %vector.body280 ] ; 3 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %index281 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %wide.load282 = load <4 x i32>, ptr %i.kk, align 4, !tbaa !76
  %wide.load283 = load <4 x i32>, ptr %i.kl, align 4, !tbaa !76
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %.pre165, i64 %index281 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  store <4 x i32> %wide.load282, ptr %i.km, align 4, !tbaa !76
  store <4 x i32> %wide.load283, ptr %i.kn, align 4, !tbaa !76
  %index.next284 = add nuw i64 %index281, 8       ; 2 uses
  %i.ko = icmp eq i64 %index.next284, %n.vec279
  br i1 %i.ko, label %middle.block285, label %vector.body280, !llvm.loop !261

middle.block285:                                  ; preds = %vector.body280
  %cmp.n286 = icmp eq i64 %n.vec279, %wide.trip.count.i73
  br i1 %cmp.n286, label %_ZNK3sls5bvect7copy_toEjRS0_.exit77, label %scalar.ph276.preheader

scalar.ph276.preheader:                           ; preds = %.lr.ph.i72, %middle.block285
  %indvars.iv.i74.ph = phi i64 [ 0, %.lr.ph.i72 ], [ %n.vec279, %middle.block285 ] ; 3 uses
  %xtraiter407 = and i64 %wide.trip.count.i73, 3  ; 2 uses
  %lcmp.mod408.not = icmp eq i64 %xtraiter407, 0
  br i1 %lcmp.mod408.not, label %scalar.ph276.prol.loopexit, label %scalar.ph276.prol

scalar.ph276.prol:                                ; preds = %scalar.ph276.preheader, %scalar.ph276.prol
  %indvars.iv.i74.prol = phi i64 [ %indvars.iv.next.i75.prol, %scalar.ph276.prol ], [ %indvars.iv.i74.ph, %scalar.ph276.preheader ] ; 3 uses
  %prol.iter409 = phi i64 [ %prol.iter409.next, %scalar.ph276.prol ], [ 0, %scalar.ph276.preheader ]
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %indvars.iv.i74.prol
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !76
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %.pre165, i64 %indvars.iv.i74.prol
  store i32 %i.kq, ptr %i.kr, align 4, !tbaa !76
  %indvars.iv.next.i75.prol = add nuw nsw i64 %indvars.iv.i74.prol, 1 ; 2 uses
  %prol.iter409.next = add i64 %prol.iter409, 1   ; 2 uses
  %prol.iter409.cmp.not = icmp eq i64 %prol.iter409.next, %xtraiter407
  br i1 %prol.iter409.cmp.not, label %scalar.ph276.prol.loopexit, label %scalar.ph276.prol, !llvm.loop !262

scalar.ph276.prol.loopexit:                       ; preds = %scalar.ph276.prol, %scalar.ph276.preheader
  %indvars.iv.i74.unr = phi i64 [ %indvars.iv.i74.ph, %scalar.ph276.preheader ], [ %indvars.iv.next.i75.prol, %scalar.ph276.prol ]
  %i.ks = sub nsw i64 %indvars.iv.i74.ph, %wide.trip.count.i73
  %i.kt = icmp ugt i64 %i.ks, -4
  br i1 %i.kt, label %_ZNK3sls5bvect7copy_toEjRS0_.exit77, label %scalar.ph276

scalar.ph276:                                     ; preds = %scalar.ph276.prol.loopexit, %scalar.ph276
  %indvars.iv.i74 = phi i64 [ %indvars.iv.next.i75.3, %scalar.ph276 ], [ %indvars.iv.i74.unr, %scalar.ph276.prol.loopexit ] ; 6 uses
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %indvars.iv.i74
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !76
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %.pre165, i64 %indvars.iv.i74
  store i32 %i.kv, ptr %i.kw, align 4, !tbaa !76
  %indvars.iv.next.i75 = add nuw nsw i64 %indvars.iv.i74, 1 ; 2 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %indvars.iv.next.i75
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !76
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %.pre165, i64 %indvars.iv.next.i75
  store i32 %i.ky, ptr %i.kz, align 4, !tbaa !76
  %indvars.iv.next.i75.1 = add nuw nsw i64 %indvars.iv.i74, 2 ; 2 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %indvars.iv.next.i75.1
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !76
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %.pre165, i64 %indvars.iv.next.i75.1
  store i32 %i.lb, ptr %i.lc, align 4, !tbaa !76
  %indvars.iv.next.i75.2 = add nuw nsw i64 %indvars.iv.i74, 3 ; 2 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %indvars.iv.next.i75.2
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !76
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %.pre165, i64 %indvars.iv.next.i75.2
  store i32 %i.le, ptr %i.lf, align 4, !tbaa !76
  %indvars.iv.next.i75.3 = add nuw nsw i64 %indvars.iv.i74, 4 ; 2 uses
  %exitcond.not.i76.3 = icmp eq i64 %indvars.iv.next.i75.3, %wide.trip.count.i73
  br i1 %exitcond.not.i76.3, label %_ZNK3sls5bvect7copy_toEjRS0_.exit77, label %scalar.ph276, !llvm.loop !263

_ZNK3sls5bvect7copy_toEjRS0_.exit77:              ; preds = %scalar.ph276.prol.loopexit, %scalar.ph276, %middle.block285
  %.pr122 = load i32, ptr %i.cx, align 8, !tbaa !159
  %.not11.i = icmp eq i32 %.pr122, 0
  br i1 %.not11.i, label %_ZNK3sls12bv_valuation4add1ERNS_5bvectE.exit, label %.lr.ph.i78.preheader

.lr.ph.i78.preheader:                             ; preds = %bb.y, %_ZNK3sls5bvect7copy_toEjRS0_.exit77
  br label %.lr.ph.i78

.lr.ph.i78:                                       ; preds = %.lr.ph.i78.preheader, %bb.aa
  %.010.i = phi i32 [ %i.lp, %bb.aa ], [ 0, %.lr.ph.i78.preheader ] ; 3 uses
  %i.lg = lshr i32 %.010.i, 5
  %i.lh = zext nneg i32 %i.lg to i64
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %.pre165, i64 %i.lh ; 3 uses
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !76 ; 3 uses
  %i.lk = and i32 %.010.i, 31
  %i.ll = shl nuw i32 1, %i.lk                    ; 2 uses
  %i.lm = and i32 %i.ll, %i.lj                    ; 2 uses
  %.not.i79 = icmp eq i32 %i.lm, 0
  br i1 %.not.i79, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i78
  %i.ln = or i32 %i.ll, %i.lj
  store i32 %i.ln, ptr %i.li, align 4, !tbaa !76
  br label %_ZNK3sls12bv_valuation4add1ERNS_5bvectE.exit

bb.aa:                                            ; preds = %.lr.ph.i78
  %i.lo = xor i32 %i.lm, %i.lj
  store i32 %i.lo, ptr %i.li, align 4, !tbaa !76
  %i.lp = add nuw i32 %.010.i, 1                  ; 2 uses
  %i.lq = load i32, ptr %i.cx, align 8, !tbaa !159
  %i.lr = icmp ult i32 %i.lp, %i.lq
  br i1 %i.lr, label %.lr.ph.i78, label %_ZNK3sls12bv_valuation4add1ERNS_5bvectE.exit, !llvm.loop !9

_ZNK3sls12bv_valuation4add1ERNS_5bvectE.exit:     ; preds = %bb.aa, %_ZNK3sls5bvect7copy_toEjRS0_.exit77, %bb.z
  %i.ls = load ptr, ptr %i.ax, align 8, !tbaa !83, !nonnull !74, !align !75
  %i.lt = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZNK3sls7bv_eval4wvalEP4expr(ptr noundef nonnull align 8 dereferenceable(857) %i.ls, ptr noundef %1)
  %i.lu = tail call noundef zeroext i1 @_ZNK3sls12bv_valuation7can_setERKNS_5bvectE(ptr noundef nonnull align 8 dereferenceable(184) %i.lt, ptr noundef nonnull align 8 dereferenceable(20) %i.bb)
  br i1 %i.lu, label %bb.ab, label %_ZN3sls12bv_lookahead7try_setEP4exprRKNS_5bvectE.exit86

bb.ab:                                            ; preds = %_ZNK3sls12bv_valuation4add1ERNS_5bvectE.exit
  %i.lv = tail call noundef double @_ZN3sls12bv_lookahead16lookahead_updateEP4exprRKNS_5bvectE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(20) %i.bb) ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.lx = load i32, ptr %i.lw, align 8, !tbaa !168
  %i.ly = add i32 %i.lx, 1
  store i32 %i.ly, ptr %i.lw, align 8, !tbaa !168
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !125
  %i.mb = fcmp ogt double %i.lv, %i.ma
  br i1 %i.mb, label %bb.ac, label %_ZN3sls12bv_lookahead7try_setEP4exprRKNS_5bvectE.exit86

bb.ac:                                            ; preds = %bb.ab
  store double %i.lv, ptr %i.lz, align 8, !tbaa !125
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr %1, ptr %i.mc, align 8, !tbaa !123
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.me = load i32, ptr %i.md, align 8, !tbaa !169
  tail call void @_ZN3sls5bvect6set_bwEj(ptr noundef nonnull align 8 dereferenceable(20) %i.bc, i32 noundef %i.me)
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !170 ; 3 uses
  %.not.i.i80 = icmp eq i32 %i.mg, 0
  br i1 %.not.i.i80, label %_ZN3sls12bv_lookahead7try_setEP4exprRKNS_5bvectE.exit86, label %.lr.ph.i.i81

.lr.ph.i.i81:                                     ; preds = %bb.ac
  %i.mh = load ptr, ptr %i.bb, align 8, !tbaa !161 ; 7 uses
  %i.mi = load ptr, ptr %i.bc, align 8, !tbaa !161 ; 7 uses
  %wide.trip.count.i.i82 = zext i32 %i.mg to i64  ; 5 uses
  %min.iters.check291 = icmp ult i32 %i.mg, 8
  %i.mj = ptrtoaddr ptr %i.mi to i64
  %i.mk = ptrtoaddr ptr %i.mh to i64
  %i.ml = sub i64 %i.mk, %i.mj
  %diff.check289 = icmp ugt i64 %i.ml, -32
  %or.cond372 = select i1 %min.iters.check291, i1 true, i1 %diff.check289
  br i1 %or.cond372, label %scalar.ph290.preheader, label %vector.ph292

vector.ph292:                                     ; preds = %.lr.ph.i.i81
  %n.vec293 = and i64 %wide.trip.count.i.i82, 4294967288 ; 3 uses
  br label %vector.body294

vector.body294:                                   ; preds = %vector.body294, %vector.ph292
  %index295 = phi i64 [ 0, %vector.ph292 ], [ %index.next298, %vector.body294 ] ; 3 uses
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %index295 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 16
  %wide.load296 = load <4 x i32>, ptr %i.mm, align 4, !tbaa !76
  %wide.load297 = load <4 x i32>, ptr %i.mn, align 4, !tbaa !76
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %index295 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  store <4 x i32> %wide.load296, ptr %i.mo, align 4, !tbaa !76
  store <4 x i32> %wide.load297, ptr %i.mp, align 4, !tbaa !76
  %index.next298 = add nuw i64 %index295, 8       ; 2 uses
  %i.mq = icmp eq i64 %index.next298, %n.vec293
  br i1 %i.mq, label %middle.block299, label %vector.body294, !llvm.loop !264

middle.block299:                                  ; preds = %vector.body294
  %cmp.n300 = icmp eq i64 %n.vec293, %wide.trip.count.i.i82
  br i1 %cmp.n300, label %_ZN3sls12bv_lookahead7try_setEP4exprRKNS_5bvectE.exit86, label %scalar.ph290.preheader

scalar.ph290.preheader:                           ; preds = %.lr.ph.i.i81, %middle.block299
  %indvars.iv.i.i83.ph = phi i64 [ 0, %.lr.ph.i.i81 ], [ %n.vec293, %middle.block299 ] ; 3 uses
  %xtraiter410 = and i64 %wide.trip.count.i.i82, 3 ; 2 uses
  %lcmp.mod411.not = icmp eq i64 %xtraiter410, 0
  br i1 %lcmp.mod411.not, label %scalar.ph290.prol.loopexit, label %scalar.ph290.prol

scalar.ph290.prol:                                ; preds = %scalar.ph290.preheader, %scalar.ph290.prol
  %indvars.iv.i.i83.prol = phi i64 [ %indvars.iv.next.i.i84.prol, %scalar.ph290.prol ], [ %indvars.iv.i.i83.ph, %scalar.ph290.preheader ] ; 3 uses
  %prol.iter412 = phi i64 [ %prol.iter412.next, %scalar.ph290.prol ], [ 0, %scalar.ph290.preheader ]
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %indvars.iv.i.i83.prol
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !76
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %indvars.iv.i.i83.prol
  store i32 %i.ms, ptr %i.mt, align 4, !tbaa !76
  %indvars.iv.next.i.i84.prol = add nuw nsw i64 %indvars.iv.i.i83.prol, 1 ; 2 uses
  %prol.iter412.next = add i64 %prol.iter412, 1   ; 2 uses
  %prol.iter412.cmp.not = icmp eq i64 %prol.iter412.next, %xtraiter410
  br i1 %prol.iter412.cmp.not, label %scalar.ph290.prol.loopexit, label %scalar.ph290.prol, !llvm.loop !265

scalar.ph290.prol.loopexit:                       ; preds = %scalar.ph290.prol, %scalar.ph290.preheader
  %indvars.iv.i.i83.unr = phi i64 [ %indvars.iv.i.i83.ph, %scalar.ph290.preheader ], [ %indvars.iv.next.i.i84.prol, %scalar.ph290.prol ]
  %i.mu = sub nsw i64 %indvars.iv.i.i83.ph, %wide.trip.count.i.i82
  %i.mv = icmp ugt i64 %i.mu, -4
  br i1 %i.mv, label %_ZN3sls12bv_lookahead7try_setEP4exprRKNS_5bvectE.exit86, label %scalar.ph290

scalar.ph290:                                     ; preds = %scalar.ph290.prol.loopexit, %scalar.ph290
  %indvars.iv.i.i83 = phi i64 [ %indvars.iv.next.i.i84.3, %scalar.ph290 ], [ %indvars.iv.i.i83.unr, %scalar.ph290.prol.loopexit ] ; 6 uses
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %indvars.iv.i.i83
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !76
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %indvars.iv.i.i83
end_hunk_0
begin_hunk_1_@_ZN3sls12bv_lookahead11add_updatesEP4expr:bb.a
  %xtraiter413 = and i64 %wide.trip.count.i89, 3  ; 2 uses
  %lcmp.mod414.not = icmp eq i64 %xtraiter413, 0
  br i1 %lcmp.mod414.not, label %scalar.ph304.prol.loopexit, label %scalar.ph304.prol

scalar.ph304.prol:                                ; preds = %scalar.ph304.preheader, %scalar.ph304.prol
  %indvars.iv.i90.prol = phi i64 [ %indvars.iv.next.i91.prol, %scalar.ph304.prol ], [ %indvars.iv.i90.ph, %scalar.ph304.preheader ] ; 3 uses
  %prol.iter415 = phi i64 [ %prol.iter415.next, %scalar.ph304.prol ], [ 0, %scalar.ph304.preheader ]
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %indvars.iv.i90.prol
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !76
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.i90.prol
  store i32 %i.nu, ptr %i.nv, align 4, !tbaa !76
  %indvars.iv.next.i91.prol = add nuw nsw i64 %indvars.iv.i90.prol, 1 ; 2 uses
  %prol.iter415.next = add i64 %prol.iter415, 1   ; 2 uses
  %prol.iter415.cmp.not = icmp eq i64 %prol.iter415.next, %xtraiter413
  br i1 %prol.iter415.cmp.not, label %scalar.ph304.prol.loopexit, label %scalar.ph304.prol, !llvm.loop !268

scalar.ph304.prol.loopexit:                       ; preds = %scalar.ph304.prol, %scalar.ph304.preheader
  %indvars.iv.i90.unr = phi i64 [ %indvars.iv.i90.ph, %scalar.ph304.preheader ], [ %indvars.iv.next.i91.prol, %scalar.ph304.prol ]
  %i.nw = sub nsw i64 %indvars.iv.i90.ph, %wide.trip.count.i89
  %i.nx = icmp ugt i64 %i.nw, -4
  br i1 %i.nx, label %_ZNK3sls5bvect7copy_toEjRS0_.exit93, label %scalar.ph304

scalar.ph304:                                     ; preds = %scalar.ph304.prol.loopexit, %scalar.ph304
  %indvars.iv.i90 = phi i64 [ %indvars.iv.next.i91.3, %scalar.ph304 ], [ %indvars.iv.i90.unr, %scalar.ph304.prol.loopexit ] ; 6 uses
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %indvars.iv.i90
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !76
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.i90
  store i32 %i.nz, ptr %i.oa, align 4, !tbaa !76
  %indvars.iv.next.i91 = add nuw nsw i64 %indvars.iv.i90, 1 ; 2 uses
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %indvars.iv.next.i91
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !76
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.next.i91
  store i32 %i.oc, ptr %i.od, align 4, !tbaa !76
  %indvars.iv.next.i91.1 = add nuw nsw i64 %indvars.iv.i90, 2 ; 2 uses
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %indvars.iv.next.i91.1
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !76
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.next.i91.1
  store i32 %i.of, ptr %i.og, align 4, !tbaa !76
  %indvars.iv.next.i91.2 = add nuw nsw i64 %indvars.iv.i90, 3 ; 2 uses
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %indvars.iv.next.i91.2
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !76
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.next.i91.2
  store i32 %i.oi, ptr %i.oj, align 4, !tbaa !76
  %indvars.iv.next.i91.3 = add nuw nsw i64 %indvars.iv.i90, 4 ; 2 uses
  %exitcond.not.i92.3 = icmp eq i64 %indvars.iv.next.i91.3, %wide.trip.count.i89
  br i1 %exitcond.not.i92.3, label %_ZNK3sls5bvect7copy_toEjRS0_.exit93, label %scalar.ph304, !llvm.loop !269

_ZNK3sls5bvect7copy_toEjRS0_.exit93:              ; preds = %scalar.ph304.prol.loopexit, %scalar.ph304, %middle.block313, %_ZN3sls12bv_lookahead7try_setEP4exprRKNS_5bvectE.exit86
  %i.ok = load i32, ptr %i.cx, align 8, !tbaa !159
  %.not11.i94 = icmp eq i32 %i.ok, 0
  br i1 %.not11.i94, label %_ZNK3sls12bv_valuation4sub1ERNS_5bvectE.exit, label %.lr.ph.i95

.lr.ph.i95:                                       ; preds = %_ZNK3sls5bvect7copy_toEjRS0_.exit93
  %i.ol = load ptr, ptr %i.bb, align 8, !tbaa !161
  br label %bb.ad

bb.ad:                                            ; preds = %bb.af, %.lr.ph.i95
  %.010.i96 = phi i32 [ 0, %.lr.ph.i95 ], [ %i.ov, %bb.af ] ; 3 uses
  %i.om = lshr i32 %.010.i96, 5
  %i.on = zext nneg i32 %i.om to i64
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %i.on ; 3 uses
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !76 ; 3 uses
  %i.oq = and i32 %.010.i96, 31
  %i.or = shl nuw i32 1, %i.oq                    ; 2 uses
  %i.os = and i32 %i.or, %i.op                    ; 2 uses
  %.not.i97 = icmp eq i32 %i.os, 0
  br i1 %.not.i97, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ot = xor i32 %i.os, %i.op
  store i32 %i.ot, ptr %i.oo, align 4, !tbaa !76
  br label %_ZNK3sls12bv_valuation4sub1ERNS_5bvectE.exit

bb.af:                                            ; preds = %bb.ad
  %i.ou = or i32 %i.or, %i.op
  store i32 %i.ou, ptr %i.oo, align 4, !tbaa !76
  %i.ov = add nuw i32 %.010.i96, 1                ; 2 uses
  %i.ow = load i32, ptr %i.cx, align 8, !tbaa !159
  %i.ox = icmp ult i32 %i.ov, %i.ow
  br i1 %i.ox, label %bb.ad, label %_ZNK3sls12bv_valuation4sub1ERNS_5bvectE.exit, !llvm.loop !10

_ZNK3sls12bv_valuation4sub1ERNS_5bvectE.exit:     ; preds = %bb.af, %_ZNK3sls5bvect7copy_toEjRS0_.exit93, %bb.ae
  %i.oy = load ptr, ptr %i.ax, align 8, !tbaa !83, !nonnull !74, !align !75
  %i.oz = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZNK3sls7bv_eval4wvalEP4expr(ptr noundef nonnull align 8 dereferenceable(857) %i.oy, ptr noundef %1)
  %i.pa = tail call noundef zeroext i1 @_ZNK3sls12bv_valuation7can_setERKNS_5bvectE(ptr noundef nonnull align 8 dereferenceable(184) %i.oz, ptr noundef nonnull align 8 dereferenceable(20) %i.bb)
  br i1 %i.pa, label %bb.ag, label %_ZN3sls12bv_lookahead7try_setEP4exprRKNS_5bvectE.exit104

bb.ag:                                            ; preds = %_ZNK3sls12bv_valuation4sub1ERNS_5bvectE.exit
  %i.pb = tail call noundef double @_ZN3sls12bv_lookahead16lookahead_updateEP4exprRKNS_5bvectE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(20) %i.bb) ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.pd = load i32, ptr %i.pc, align 8, !tbaa !168
  %i.pe = add i32 %i.pd, 1
  store i32 %i.pe, ptr %i.pc, align 8, !tbaa !168
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.pg = load double, ptr %i.pf, align 8, !tbaa !125
  %i.ph = fcmp ogt double %i.pb, %i.pg
  br i1 %i.ph, label %bb.ah, label %_ZN3sls12bv_lookahead7try_setEP4exprRKNS_5bvectE.exit104

bb.ah:                                            ; preds = %bb.ag
  store double %i.pb, ptr %i.pf, align 8, !tbaa !125
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr %1, ptr %i.pi, align 8, !tbaa !123
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.pk = load i32, ptr %i.pj, align 8, !tbaa !169
  tail call void @_ZN3sls5bvect6set_bwEj(ptr noundef nonnull align 8 dereferenceable(20) %i.bc, i32 noundef %i.pk)
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !170 ; 3 uses
  %.not.i.i98 = icmp eq i32 %i.pm, 0
  br i1 %.not.i.i98, label %_ZN3sls12bv_lookahead7try_setEP4exprRKNS_5bvectE.exit104, label %.lr.ph.i.i99

.lr.ph.i.i99:                                     ; preds = %bb.ah
  %i.pn = load ptr, ptr %i.bb, align 8, !tbaa !161 ; 7 uses
  %i.po = load ptr, ptr %i.bc, align 8, !tbaa !161 ; 7 uses
  %wide.trip.count.i.i100 = zext i32 %i.pm to i64 ; 5 uses
  %min.iters.check319 = icmp ult i32 %i.pm, 8
  %i.pp = ptrtoaddr ptr %i.po to i64
  %i.pq = ptrtoaddr ptr %i.pn to i64
  %i.pr = sub i64 %i.pq, %i.pp
  %diff.check317 = icmp ugt i64 %i.pr, -32
  %or.cond378 = select i1 %min.iters.check319, i1 true, i1 %diff.check317
  br i1 %or.cond378, label %scalar.ph318.preheader, label %vector.ph320

vector.ph320:                                     ; preds = %.lr.ph.i.i99
  %n.vec321 = and i64 %wide.trip.count.i.i100, 4294967288 ; 3 uses
  br label %vector.body322

vector.body322:                                   ; preds = %vector.body322, %vector.ph320
  %index323 = phi i64 [ 0, %vector.ph320 ], [ %index.next326, %vector.body322 ] ; 3 uses
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %index323 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 16
  %wide.load324 = load <4 x i32>, ptr %i.ps, align 4, !tbaa !76
  %wide.load325 = load <4 x i32>, ptr %i.pt, align 4, !tbaa !76
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.po, i64 %index323 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 16
  store <4 x i32> %wide.load324, ptr %i.pu, align 4, !tbaa !76
  store <4 x i32> %wide.load325, ptr %i.pv, align 4, !tbaa !76
  %index.next326 = add nuw i64 %index323, 8       ; 2 uses
  %i.pw = icmp eq i64 %index.next326, %n.vec321
  br i1 %i.pw, label %middle.block327, label %vector.body322, !llvm.loop !270

middle.block327:                                  ; preds = %vector.body322
  %cmp.n328 = icmp eq i64 %n.vec321, %wide.trip.count.i.i100
  br i1 %cmp.n328, label %_ZN3sls12bv_lookahead7try_setEP4exprRKNS_5bvectE.exit104, label %scalar.ph318.preheader

scalar.ph318.preheader:                           ; preds = %.lr.ph.i.i99, %middle.block327
  %indvars.iv.i.i101.ph = phi i64 [ 0, %.lr.ph.i.i99 ], [ %n.vec321, %middle.block327 ] ; 3 uses
  %xtraiter416 = and i64 %wide.trip.count.i.i100, 3 ; 2 uses
  %lcmp.mod417.not = icmp eq i64 %xtraiter416, 0
  br i1 %lcmp.mod417.not, label %scalar.ph318.prol.loopexit, label %scalar.ph318.prol

scalar.ph318.prol:                                ; preds = %scalar.ph318.preheader, %scalar.ph318.prol
  %indvars.iv.i.i101.prol = phi i64 [ %indvars.iv.next.i.i102.prol, %scalar.ph318.prol ], [ %indvars.iv.i.i101.ph, %scalar.ph318.preheader ] ; 3 uses
  %prol.iter418 = phi i64 [ %prol.iter418.next, %scalar.ph318.prol ], [ 0, %scalar.ph318.preheader ]
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %indvars.iv.i.i101.prol
  %i.py = load i32, ptr %i.px, align 4, !tbaa !76
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.po, i64 %indvars.iv.i.i101.prol
  store i32 %i.py, ptr %i.pz, align 4, !tbaa !76
  %indvars.iv.next.i.i102.prol = add nuw nsw i64 %indvars.iv.i.i101.prol, 1 ; 2 uses
  %prol.iter418.next = add i64 %prol.iter418, 1   ; 2 uses
  %prol.iter418.cmp.not = icmp eq i64 %prol.iter418.next, %xtraiter416
  br i1 %prol.iter418.cmp.not, label %scalar.ph318.prol.loopexit, label %scalar.ph318.prol, !llvm.loop !271

scalar.ph318.prol.loopexit:                       ; preds = %scalar.ph318.prol, %scalar.ph318.preheader
  %indvars.iv.i.i101.unr = phi i64 [ %indvars.iv.i.i101.ph, %scalar.ph318.preheader ], [ %indvars.iv.next.i.i102.prol, %scalar.ph318.prol ]
  %i.qa = sub nsw i64 %indvars.iv.i.i101.ph, %wide.trip.count.i.i100
  %i.qb = icmp ugt i64 %i.qa, -4
  br i1 %i.qb, label %_ZN3sls12bv_lookahead7try_setEP4exprRKNS_5bvectE.exit104, label %scalar.ph318

scalar.ph318:                                     ; preds = %scalar.ph318.prol.loopexit, %scalar.ph318
  %indvars.iv.i.i101 = phi i64 [ %indvars.iv.next.i.i102.3, %scalar.ph318 ], [ %indvars.iv.i.i101.unr, %scalar.ph318.prol.loopexit ] ; 6 uses
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %indvars.iv.i.i101
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !76
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.po, i64 %indvars.iv.i.i101
  store i32 %i.qd, ptr %i.qe, align 4, !tbaa !76
  %indvars.iv.next.i.i102 = add nuw nsw i64 %indvars.iv.i.i101, 1 ; 2 uses
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %indvars.iv.next.i.i102
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !76
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.po, i64 %indvars.iv.next.i.i102
  store i32 %i.qg, ptr %i.qh, align 4, !tbaa !76
  %indvars.iv.next.i.i102.1 = add nuw nsw i64 %indvars.iv.i.i101, 2 ; 2 uses
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %indvars.iv.next.i.i102.1
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !76
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.po, i64 %indvars.iv.next.i.i102.1
  store i32 %i.qj, ptr %i.qk, align 4, !tbaa !76
  %indvars.iv.next.i.i102.2 = add nuw nsw i64 %indvars.iv.i.i101, 3 ; 2 uses
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %indvars.iv.next.i.i102.2
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !76
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.po, i64 %indvars.iv.next.i.i102.2
  store i32 %i.qm, ptr %i.qn, align 4, !tbaa !76
  %indvars.iv.next.i.i102.3 = add nuw nsw i64 %indvars.iv.i.i101, 4 ; 2 uses
  %exitcond.not.i.i103.3 = icmp eq i64 %indvars.iv.next.i.i102.3, %wide.trip.count.i.i100
  br i1 %exitcond.not.i.i103.3, label %_ZN3sls12bv_lookahead7try_setEP4exprRKNS_5bvectE.exit104, label %scalar.ph318, !llvm.loop !272

_ZN3sls12bv_lookahead7try_setEP4exprRKNS_5bvectE.exit104: ; preds = %scalar.ph318.prol.loopexit, %scalar.ph318, %middle.block327, %_ZNK3sls12bv_valuation4sub1ERNS_5bvectE.exit, %bb.ag, %bb.ah
  %i.qo = load i32, ptr %i.da, align 4, !tbaa !160 ; 3 uses
  %.not.i105 = icmp eq i32 %i.qo, 0
  %.pre167.pre = load ptr, ptr %i.bb, align 8, !tbaa !161 ; 9 uses
  br i1 %.not.i105, label %._crit_edge144, label %.lr.ph.i106

.lr.ph.i106:                                      ; preds = %_ZN3sls12bv_lookahead7try_setEP4exprRKNS_5bvectE.exit104
  %i.qp = load ptr, ptr %i.ba, align 8, !tbaa !161 ; 7 uses
  %wide.trip.count.i107 = zext i32 %i.qo to i64   ; 5 uses
  %min.iters.check334 = icmp ult i32 %i.qo, 8
  %5 = ptrtoaddr ptr %.pre167.pre to i64
  %i.qq = ptrtoaddr ptr %i.qp to i64
  %i.qr = sub i64 %i.qq, %5
  %diff.check332 = icmp ugt i64 %i.qr, -32
  %or.cond380 = select i1 %min.iters.check334, i1 true, i1 %diff.check332
  br i1 %or.cond380, label %scalar.ph333.preheader, label %vector.ph335

vector.ph335:                                     ; preds = %.lr.ph.i106
  %n.vec336 = and i64 %wide.trip.count.i107, 4294967288 ; 3 uses
  br label %vector.body337

vector.body337:                                   ; preds = %vector.body337, %vector.ph335
  %index338 = phi i64 [ 0, %vector.ph335 ], [ %index.next341, %vector.body337 ] ; 3 uses
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.qp, i64 %index338 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 16
  %wide.load339 = load <4 x i32>, ptr %i.qs, align 4, !tbaa !76
  %wide.load340 = load <4 x i32>, ptr %i.qt, align 4, !tbaa !76
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %.pre167.pre, i64 %index338 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 16
  store <4 x i32> %wide.load339, ptr %i.qu, align 4, !tbaa !76
  store <4 x i32> %wide.load340, ptr %i.qv, align 4, !tbaa !76
  %index.next341 = add nuw i64 %index338, 8       ; 2 uses
  %i.qw = icmp eq i64 %index.next341, %n.vec336
  br i1 %i.qw, label %middle.block342, label %vector.body337, !llvm.loop !273

middle.block342:                                  ; preds = %vector.body337
  %cmp.n343 = icmp eq i64 %n.vec336, %wide.trip.count.i107
  br i1 %cmp.n343, label %_ZNK3sls5bvect7copy_toEjRS0_.exit111, label %scalar.ph333.preheader

scalar.ph333.preheader:                           ; preds = %.lr.ph.i106, %middle.block342
  %indvars.iv.i108.ph = phi i64 [ 0, %.lr.ph.i106 ], [ %n.vec336, %middle.block342 ] ; 3 uses
  %xtraiter419 = and i64 %wide.trip.count.i107, 3 ; 2 uses
  %lcmp.mod420.not = icmp eq i64 %xtraiter419, 0
  br i1 %lcmp.mod420.not, label %scalar.ph333.prol.loopexit, label %scalar.ph333.prol

scalar.ph333.prol:                                ; preds = %scalar.ph333.preheader, %scalar.ph333.prol
  %indvars.iv.i108.prol = phi i64 [ %indvars.iv.next.i109.prol, %scalar.ph333.prol ], [ %indvars.iv.i108.ph, %scalar.ph333.preheader ] ; 3 uses
  %prol.iter421 = phi i64 [ %prol.iter421.next, %scalar.ph333.prol ], [ 0, %scalar.ph333.preheader ]
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.qp, i64 %indvars.iv.i108.prol
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !76
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %.pre167.pre, i64 %indvars.iv.i108.prol
  store i32 %i.qy, ptr %i.qz, align 4, !tbaa !76
  %indvars.iv.next.i109.prol = add nuw nsw i64 %indvars.iv.i108.prol, 1 ; 2 uses
  %prol.iter421.next = add i64 %prol.iter421, 1   ; 2 uses
  %prol.iter421.cmp.not = icmp eq i64 %prol.iter421.next, %xtraiter419
  br i1 %prol.iter421.cmp.not, label %scalar.ph333.prol.loopexit, label %scalar.ph333.prol, !llvm.loop !274

scalar.ph333.prol.loopexit:                       ; preds = %scalar.ph333.prol, %scalar.ph333.preheader
  %indvars.iv.i108.unr = phi i64 [ %indvars.iv.i108.ph, %scalar.ph333.preheader ], [ %indvars.iv.next.i109.prol, %scalar.ph333.prol ]
  %i.ra = sub nsw i64 %indvars.iv.i108.ph, %wide.trip.count.i107
  %i.rb = icmp ugt i64 %i.ra, -4
  br i1 %i.rb, label %_ZNK3sls5bvect7copy_toEjRS0_.exit111, label %scalar.ph333

scalar.ph333:                                     ; preds = %scalar.ph333.prol.loopexit, %scalar.ph333
  %indvars.iv.i108 = phi i64 [ %indvars.iv.next.i109.3, %scalar.ph333 ], [ %indvars.iv.i108.unr, %scalar.ph333.prol.loopexit ] ; 6 uses
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.qp, i64 %indvars.iv.i108
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !76
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %.pre167.pre, i64 %indvars.iv.i108
  store i32 %i.rd, ptr %i.re, align 4, !tbaa !76
  %indvars.iv.next.i109 = add nuw nsw i64 %indvars.iv.i108, 1 ; 2 uses
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.qp, i64 %indvars.iv.next.i109
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !76
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %.pre167.pre, i64 %indvars.iv.next.i109
  store i32 %i.rg, ptr %i.rh, align 4, !tbaa !76
  %indvars.iv.next.i109.1 = add nuw nsw i64 %indvars.iv.i108, 2 ; 2 uses
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.qp, i64 %indvars.iv.next.i109.1
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !76
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %.pre167.pre, i64 %indvars.iv.next.i109.1
  store i32 %i.rj, ptr %i.rk, align 4, !tbaa !76
  %indvars.iv.next.i109.2 = add nuw nsw i64 %indvars.iv.i108, 3 ; 2 uses
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.qp, i64 %indvars.iv.next.i109.2
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !76
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %.pre167.pre, i64 %indvars.iv.next.i109.2
  store i32 %i.rm, ptr %i.rn, align 4, !tbaa !76
  %indvars.iv.next.i109.3 = add nuw nsw i64 %indvars.iv.i108, 4 ; 2 uses
  %exitcond.not.i110.3 = icmp eq i64 %indvars.iv.next.i109.3, %wide.trip.count.i107
  br i1 %exitcond.not.i110.3, label %_ZNK3sls5bvect7copy_toEjRS0_.exit111, label %scalar.ph333, !llvm.loop !275

_ZNK3sls5bvect7copy_toEjRS0_.exit111:             ; preds = %scalar.ph333.prol.loopexit, %scalar.ph333, %middle.block342
  %.pre166 = load i32, ptr %i.da, align 4, !tbaa !160
  %i.ro = icmp eq i32 %.pre166, 0
  br i1 %i.ro, label %._crit_edge144, label %.lr.ph143

._crit_edge144.loopexit:                          ; preds = %.lr.ph143
  %i.rp = add i32 %i.tp, -1
  %i.rq = zext i32 %i.rp to i64
  br label %._crit_edge144

._crit_edge144:                                   ; preds = %_ZN3sls12bv_lookahead7try_setEP4exprRKNS_5bvectE.exit104, %._crit_edge144.loopexit, %_ZNK3sls5bvect7copy_toEjRS0_.exit111
  %.lcssa = phi i64 [ 4294967295, %_ZNK3sls5bvect7copy_toEjRS0_.exit111 ], [ %i.rq, %._crit_edge144.loopexit ], [ 4294967295, %_ZN3sls12bv_lookahead7try_setEP4exprRKNS_5bvectE.exit104 ]
  %i.rr = getelementptr inbounds nuw i8, ptr %i.az, i64 148
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !280
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %.pre167.pre, i64 %.lcssa ; 2 uses
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !76
  %i.rv = and i32 %i.ru, %i.rs
  store i32 %i.rv, ptr %i.rt, align 4, !tbaa !76
  %i.rw = load ptr, ptr %i.ax, align 8, !tbaa !83, !nonnull !74, !align !75
  %i.rx = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZNK3sls7bv_eval4wvalEP4expr(ptr noundef nonnull align 8 dereferenceable(857) %i.rw, ptr noundef %1)
  %i.ry = tail call noundef zeroext i1 @_ZNK3sls12bv_valuation7can_setERKNS_5bvectE(ptr noundef nonnull align 8 dereferenceable(184) %i.rx, ptr noundef nonnull align 8 dereferenceable(20) %i.bb)
  br i1 %i.ry, label %bb.ai, label %_ZN3sls12bv_lookahead8try_flipEP4expr.exit

bb.ai:                                            ; preds = %._crit_edge144
  %i.rz = tail call noundef double @_ZN3sls12bv_lookahead16lookahead_updateEP4exprRKNS_5bvectE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(20) %i.bb) ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.sb = load i32, ptr %i.sa, align 8, !tbaa !168
  %i.sc = add i32 %i.sb, 1
  store i32 %i.sc, ptr %i.sa, align 8, !tbaa !168
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.se = load double, ptr %i.sd, align 8, !tbaa !125
  %i.sf = fcmp ogt double %i.rz, %i.se
  br i1 %i.sf, label %bb.aj, label %_ZN3sls12bv_lookahead8try_flipEP4expr.exit

bb.aj:                                            ; preds = %bb.ai
  store double %i.rz, ptr %i.sd, align 8, !tbaa !125
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr %1, ptr %i.sg, align 8, !tbaa !123
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.si = load i32, ptr %i.sh, align 8, !tbaa !169
  tail call void @_ZN3sls5bvect6set_bwEj(ptr noundef nonnull align 8 dereferenceable(20) %i.bc, i32 noundef %i.si)
  %i.sj = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !170 ; 3 uses
  %.not.i.i112 = icmp eq i32 %i.sk, 0
  br i1 %.not.i.i112, label %_ZN3sls12bv_lookahead8try_flipEP4expr.exit, label %.lr.ph.i.i113

.lr.ph.i.i113:                                    ; preds = %bb.aj
  %i.sl = load ptr, ptr %i.bb, align 8, !tbaa !161 ; 7 uses
  %i.sm = load ptr, ptr %i.bc, align 8, !tbaa !161 ; 7 uses
  %wide.trip.count.i.i114 = zext i32 %i.sk to i64 ; 5 uses
  %min.iters.check348 = icmp ult i32 %i.sk, 8
  %i.sn = ptrtoaddr ptr %i.sm to i64
  %i.so = ptrtoaddr ptr %i.sl to i64
  %i.sp = sub i64 %i.so, %i.sn
  %diff.check346 = icmp ugt i64 %i.sp, -32
  %or.cond383 = select i1 %min.iters.check348, i1 true, i1 %diff.check346
  br i1 %or.cond383, label %scalar.ph347.preheader, label %vector.ph349

vector.ph349:                                     ; preds = %.lr.ph.i.i113
  %n.vec350 = and i64 %wide.trip.count.i.i114, 4294967288 ; 3 uses
  br label %vector.body351

vector.body351:                                   ; preds = %vector.body351, %vector.ph349
  %index352 = phi i64 [ 0, %vector.ph349 ], [ %index.next355, %vector.body351 ] ; 3 uses
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %index352 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 16
  %wide.load353 = load <4 x i32>, ptr %i.sq, align 4, !tbaa !76
  %wide.load354 = load <4 x i32>, ptr %i.sr, align 4, !tbaa !76
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %index352 ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 16
  store <4 x i32> %wide.load353, ptr %i.ss, align 4, !tbaa !76
  store <4 x i32> %wide.load354, ptr %i.st, align 4, !tbaa !76
  %index.next355 = add nuw i64 %index352, 8       ; 2 uses
  %i.su = icmp eq i64 %index.next355, %n.vec350
  br i1 %i.su, label %middle.block356, label %vector.body351, !llvm.loop !276

middle.block356:                                  ; preds = %vector.body351
  %cmp.n357 = icmp eq i64 %n.vec350, %wide.trip.count.i.i114
  br i1 %cmp.n357, label %_ZN3sls12bv_lookahead8try_flipEP4expr.exit, label %scalar.ph347.preheader

scalar.ph347.preheader:                           ; preds = %.lr.ph.i.i113, %middle.block356
  %indvars.iv.i.i115.ph = phi i64 [ 0, %.lr.ph.i.i113 ], [ %n.vec350, %middle.block356 ] ; 3 uses
  %xtraiter422 = and i64 %wide.trip.count.i.i114, 3 ; 2 uses
  %lcmp.mod423.not = icmp eq i64 %xtraiter422, 0
  br i1 %lcmp.mod423.not, label %scalar.ph347.prol.loopexit, label %scalar.ph347.prol

scalar.ph347.prol:                                ; preds = %scalar.ph347.preheader, %scalar.ph347.prol
  %indvars.iv.i.i115.prol = phi i64 [ %indvars.iv.next.i.i116.prol, %scalar.ph347.prol ], [ %indvars.iv.i.i115.ph, %scalar.ph347.preheader ] ; 3 uses
  %prol.iter424 = phi i64 [ %prol.iter424.next, %scalar.ph347.prol ], [ 0, %scalar.ph347.preheader ]
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %indvars.iv.i.i115.prol
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !76
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %indvars.iv.i.i115.prol
  store i32 %i.sw, ptr %i.sx, align 4, !tbaa !76
  %indvars.iv.next.i.i116.prol = add nuw nsw i64 %indvars.iv.i.i115.prol, 1 ; 2 uses
  %prol.iter424.next = add i64 %prol.iter424, 1   ; 2 uses
  %prol.iter424.cmp.not = icmp eq i64 %prol.iter424.next, %xtraiter422
  br i1 %prol.iter424.cmp.not, label %scalar.ph347.prol.loopexit, label %scalar.ph347.prol, !llvm.loop !277

scalar.ph347.prol.loopexit:                       ; preds = %scalar.ph347.prol, %scalar.ph347.preheader
  %indvars.iv.i.i115.unr = phi i64 [ %indvars.iv.i.i115.ph, %scalar.ph347.preheader ], [ %indvars.iv.next.i.i116.prol, %scalar.ph347.prol ]
  %i.sy = sub nsw i64 %indvars.iv.i.i115.ph, %wide.trip.count.i.i114
  %i.sz = icmp ugt i64 %i.sy, -4
  br i1 %i.sz, label %_ZN3sls12bv_lookahead8try_flipEP4expr.exit, label %scalar.ph347

scalar.ph347:                                     ; preds = %scalar.ph347.prol.loopexit, %scalar.ph347
  %indvars.iv.i.i115 = phi i64 [ %indvars.iv.next.i.i116.3, %scalar.ph347 ], [ %indvars.iv.i.i115.unr, %scalar.ph347.prol.loopexit ] ; 6 uses
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %indvars.iv.i.i115
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !76
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %indvars.iv.i.i115
  store i32 %i.tb, ptr %i.tc, align 4, !tbaa !76
  %indvars.iv.next.i.i116 = add nuw nsw i64 %indvars.iv.i.i115, 1 ; 2 uses
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %indvars.iv.next.i.i116
  %i.te = load i32, ptr %i.td, align 4, !tbaa !76
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %indvars.iv.next.i.i116
  store i32 %i.te, ptr %i.tf, align 4, !tbaa !76
  %indvars.iv.next.i.i116.1 = add nuw nsw i64 %indvars.iv.i.i115, 2 ; 2 uses
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %indvars.iv.next.i.i116.1
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !76
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %indvars.iv.next.i.i116.1
  store i32 %i.th, ptr %i.ti, align 4, !tbaa !76
  %indvars.iv.next.i.i116.2 = add nuw nsw i64 %indvars.iv.i.i115, 3 ; 2 uses
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %indvars.iv.next.i.i116.2
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !76
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %indvars.iv.next.i.i116.2
  store i32 %i.tk, ptr %i.tl, align 4, !tbaa !76
end_hunk_1
begin_hunk_2_@_ZN3sls12bv_lookahead9new_scoreEP4exprb:bb.a
  br i1 %i.ga, label %bb.ad, label %_ZNK11ast_manager11is_distinctEPK4expr.exit.thread

bb.ad:                                            ; preds = %bb.ac
  %i.gd = load ptr, ptr %i.c, align 8, !tbaa !83, !nonnull !74, !align !75
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 544
  call void @_ZNK3sls12bv_valuation7set_subERNS_5bvectERKS1_S4_(ptr noundef nonnull align 8 dereferenceable(184) %i.fp, ptr noundef nonnull align 8 dereferenceable(20) %i.ge, ptr noundef nonnull align 8 dereferenceable(20) %i.fs, ptr noundef nonnull align 8 dereferenceable(20) %i.fp)
  %i.gf = load ptr, ptr %i.c, align 8, !tbaa !83, !nonnull !74, !align !75
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 544
  call void @_ZNK3sls12bv_valuation4add1ERNS_5bvectE(ptr noundef nonnull align 8 dereferenceable(184) %i.fp, ptr noundef nonnull align 8 dereferenceable(20) %i.gg)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ab
  %i.gh = load i32, ptr %i.fv, align 8, !tbaa !159 ; 6 uses
  %.not254 = icmp eq i32 %i.gh, 0
  br i1 %.not254, label %._crit_edge241, label %.lr.ph240

.lr.ph240:                                        ; preds = %bb.ae
  %i.gi = load ptr, ptr %i.c, align 8, !tbaa !83, !nonnull !74, !align !75
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 544
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !161 ; 2 uses
  %xtraiter319 = and i32 %i.gh, 1
  %i.gl = icmp eq i32 %i.gh, 1
  br i1 %i.gl, label %.epil.preheader318, label %.lr.ph240.new

.lr.ph240.new:                                    ; preds = %.lr.ph240
  %unroll_iter323 = and i32 %i.gh, -2
  br label %bb.af

._crit_edge241.loopexit.unr-lcssa:                ; preds = %bb.af
  %lcmp.mod320.not = icmp eq i32 %xtraiter319, 0
  br i1 %lcmp.mod320.not, label %._crit_edge241, label %.epil.preheader318

.epil.preheader318:                               ; preds = %._crit_edge241.loopexit.unr-lcssa, %.lr.ph240
  %.0138238.epil.init = phi i32 [ 0, %.lr.ph240 ], [ %i.hj, %._crit_edge241.loopexit.unr-lcssa ] ; 2 uses
  %.0139237.epil.init = phi double [ 0.000000e+00, %.lr.ph240 ], [ %.1140.1, %._crit_edge241.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod322 = trunc i32 %i.gh to i1
  call void @llvm.assume(i1 %lcmp.mod322)
  %i.gm = lshr i32 %.0138238.epil.init, 5
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.gn
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !76
  %i.gq = and i32 %.0138238.epil.init, 31
  %i.gr = shl nuw i32 1, %i.gq
  %i.gs = and i32 %i.gp, %i.gr
  %.not205.epil = icmp eq i32 %i.gs, 0
  %i.gt = fadd double %.0139237.epil.init, 1.000000e+00
  %.1140.epil = select i1 %.not205.epil, double %.0139237.epil.init, double %i.gt
  br label %._crit_edge241

._crit_edge241:                                   ; preds = %.epil.preheader318, %._crit_edge241.loopexit.unr-lcssa, %bb.ae
  %.0139.lcssa = phi double [ 0.000000e+00, %bb.ae ], [ %.1140.1, %._crit_edge241.loopexit.unr-lcssa ], [ %.1140.epil, %.epil.preheader318 ]
  %i.gu = uitofp i32 %i.gh to double
  %i.gv = fdiv double %.0139.lcssa, %i.gu
  %i.gw = fsub double 1.000000e+00, %i.gv
  br label %_ZNK11ast_manager11is_distinctEPK4expr.exit.thread

bb.af:                                            ; preds = %bb.af, %.lr.ph240.new
  %.0138238 = phi i32 [ 0, %.lr.ph240.new ], [ %i.hj, %bb.af ] ; 4 uses
  %.0139237 = phi double [ 0.000000e+00, %.lr.ph240.new ], [ %.1140.1, %bb.af ] ; 2 uses
  %niter324 = phi i32 [ 0, %.lr.ph240.new ], [ %niter324.next.1, %bb.af ]
  %i.gx = lshr i32 %.0138238, 5
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.gy
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !76 ; 2 uses
  %i.hb = and i32 %.0138238, 30
  %i.hc = shl nuw nsw i32 1, %i.hb
  %i.hd = and i32 %i.ha, %i.hc
  %.not205 = icmp eq i32 %i.hd, 0
  %i.he = fadd double %.0139237, 1.000000e+00
  %.1140 = select i1 %.not205, double %.0139237, double %i.he ; 2 uses
  %i.hf = and i32 %.0138238, 30
  %i.hg = shl nuw i32 2, %i.hf
  %i.hh = and i32 %i.ha, %i.hg
  %.not205.1 = icmp eq i32 %i.hh, 0
  %i.hi = fadd double %.1140, 1.000000e+00
  %.1140.1 = select i1 %.not205.1, double %.1140, double %i.hi ; 3 uses
  %i.hj = add nuw i32 %.0138238, 2                ; 2 uses
  %niter324.next.1 = add nuw i32 %niter324, 2     ; 2 uses
  %niter324.ncmp.1 = icmp eq i32 %niter324.next.1, %unroll_iter323
  br i1 %niter324.ncmp.1, label %._crit_edge241.loopexit.unr-lcssa, label %bb.af, !llvm.loop !292

bb.ag:                                            ; preds = %bb.y
  %i.hk = call noundef zeroext i1 @_ZNK14bv_recognizers6is_sleEPK4exprRPS0_S4_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br i1 %i.hk, label %bb.ah, label %bb.ao

bb.ah:                                            ; preds = %bb.ag
  %i.hl = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.hm = load ptr, ptr %i.c, align 8, !tbaa !83, !nonnull !74, !align !75
  %i.hn = call noundef nonnull align 8 dereferenceable(184) ptr @_ZNK3sls7bv_eval4wvalEP4expr(ptr noundef nonnull align 8 dereferenceable(857) %i.hm, ptr noundef %i.hl) ; 6 uses
  %i.ho = load ptr, ptr %i.b, align 8, !tbaa !118
  %i.hp = load ptr, ptr %i.c, align 8, !tbaa !83, !nonnull !74, !align !75
  %i.hq = call noundef nonnull align 8 dereferenceable(184) ptr @_ZNK3sls7bv_eval4wvalEP4expr(ptr noundef nonnull align 8 dereferenceable(857) %i.hp, ptr noundef %i.ho) ; 3 uses
  %i.hr = load ptr, ptr %i.c, align 8, !tbaa !83, !nonnull !74, !align !75
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 544
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hn, i64 152 ; 4 uses
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !159
  call void @_ZN3sls5bvect6set_bwEj(ptr noundef nonnull align 8 dereferenceable(20) %i.hs, i32 noundef %i.hu)
  %i.hv = load ptr, ptr %i.c, align 8, !tbaa !83, !nonnull !74, !align !75
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 568
  %i.hx = load i32, ptr %i.ht, align 8, !tbaa !159
  call void @_ZN3sls5bvect6set_bwEj(ptr noundef nonnull align 8 dereferenceable(20) %i.hw, i32 noundef %i.hx)
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hq, i64 156
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !160 ; 3 uses
  %i.ia = load ptr, ptr %i.c, align 8, !tbaa !83, !nonnull !74, !align !75 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 544 ; 3 uses
  %.not.i = icmp eq i32 %i.hz, 0
  br i1 %.not.i, label %_ZNK3sls5bvect7copy_toEjRS0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ah
  %i.ic = load ptr, ptr %i.hq, align 8, !tbaa !161 ; 7 uses
  %i.id = load ptr, ptr %i.ib, align 8, !tbaa !161 ; 7 uses
  %wide.trip.count.i = zext i32 %i.hz to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %i.hz, 8
  %i.ie = ptrtoaddr ptr %i.id to i64
  %i.if = ptrtoaddr ptr %i.ic to i64
  %i.ig = sub i64 %i.if, %i.ie
  %diff.check = icmp ugt i64 %i.ig, -32
  %or.cond306 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond306, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %wide.trip.count.i, 4294967288 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %index ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %wide.load = load <4 x i32>, ptr %i.ih, align 4, !tbaa !76
  %wide.load288 = load <4 x i32>, ptr %i.ii, align 4, !tbaa !76
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %index ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  store <4 x i32> %wide.load, ptr %i.ij, align 4, !tbaa !76
  store <4 x i32> %wide.load288, ptr %i.ik, align 4, !tbaa !76
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.il = icmp eq i64 %index.next, %n.vec
  br i1 %i.il, label %middle.block, label %vector.body, !llvm.loop !293

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZNK3sls5bvect7copy_toEjRS0_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv.i.prol
  %i.in = load i32, ptr %i.im, align 4, !tbaa !76
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv.i.prol
  store i32 %i.in, ptr %i.io, align 4, !tbaa !76
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !294

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.ip = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.iq = icmp ugt i64 %i.ip, -4
  br i1 %i.iq, label %_ZNK3sls5bvect7copy_toEjRS0_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv.i
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !76
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv.i
  store i32 %i.is, ptr %i.it, align 4, !tbaa !76
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv.next.i
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !76
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv.next.i
  store i32 %i.iv, ptr %i.iw, align 4, !tbaa !76
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv.next.i.1
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !76
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv.next.i.1
  store i32 %i.iy, ptr %i.iz, align 4, !tbaa !76
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv.next.i.2
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !76
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv.next.i.2
  store i32 %i.jb, ptr %i.jc, align 4, !tbaa !76
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %_ZNK3sls5bvect7copy_toEjRS0_.exit, label %scalar.ph, !llvm.loop !295

_ZNK3sls5bvect7copy_toEjRS0_.exit:                ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ah
  %i.jd = getelementptr inbounds nuw i8, ptr %i.hn, i64 156
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !160 ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ia, i64 568 ; 2 uses
  %.not.i163 = icmp eq i32 %i.je, 0
  %.pre = load ptr, ptr %i.jf, align 8, !tbaa !161 ; 8 uses
  br i1 %.not.i163, label %_ZNK3sls5bvect7copy_toEjRS0_.exit169, label %.lr.ph.i164

.lr.ph.i164:                                      ; preds = %_ZNK3sls5bvect7copy_toEjRS0_.exit
  %i.jg = load ptr, ptr %i.hn, align 8, !tbaa !161 ; 7 uses
  %wide.trip.count.i165 = zext i32 %i.je to i64   ; 5 uses
  %min.iters.check293 = icmp ult i32 %i.je, 8
  %3 = ptrtoaddr ptr %.pre to i64
  %i.jh = ptrtoaddr ptr %i.jg to i64
  %i.ji = sub i64 %i.jh, %3
  %diff.check291 = icmp ugt i64 %i.ji, -32
  %or.cond308 = select i1 %min.iters.check293, i1 true, i1 %diff.check291
  br i1 %or.cond308, label %scalar.ph292.preheader, label %vector.ph294

vector.ph294:                                     ; preds = %.lr.ph.i164
  %n.vec295 = and i64 %wide.trip.count.i165, 4294967288 ; 3 uses
  br label %vector.body296

vector.body296:                                   ; preds = %vector.body296, %vector.ph294
  %index297 = phi i64 [ 0, %vector.ph294 ], [ %index.next300, %vector.body296 ] ; 3 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %index297 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %wide.load298 = load <4 x i32>, ptr %i.jj, align 4, !tbaa !76
  %wide.load299 = load <4 x i32>, ptr %i.jk, align 4, !tbaa !76
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %index297 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  store <4 x i32> %wide.load298, ptr %i.jl, align 4, !tbaa !76
  store <4 x i32> %wide.load299, ptr %i.jm, align 4, !tbaa !76
  %index.next300 = add nuw i64 %index297, 8       ; 2 uses
  %i.jn = icmp eq i64 %index.next300, %n.vec295
  br i1 %i.jn, label %middle.block301, label %vector.body296, !llvm.loop !296

middle.block301:                                  ; preds = %vector.body296
  %cmp.n302 = icmp eq i64 %n.vec295, %wide.trip.count.i165
  br i1 %cmp.n302, label %_ZNK3sls5bvect7copy_toEjRS0_.exit169, label %scalar.ph292.preheader

scalar.ph292.preheader:                           ; preds = %.lr.ph.i164, %middle.block301
  %indvars.iv.i166.ph = phi i64 [ 0, %.lr.ph.i164 ], [ %n.vec295, %middle.block301 ] ; 3 uses
  %xtraiter311 = and i64 %wide.trip.count.i165, 3 ; 2 uses
  %lcmp.mod312.not = icmp eq i64 %xtraiter311, 0
  br i1 %lcmp.mod312.not, label %scalar.ph292.prol.loopexit, label %scalar.ph292.prol

scalar.ph292.prol:                                ; preds = %scalar.ph292.preheader, %scalar.ph292.prol
  %indvars.iv.i166.prol = phi i64 [ %indvars.iv.next.i167.prol, %scalar.ph292.prol ], [ %indvars.iv.i166.ph, %scalar.ph292.preheader ] ; 3 uses
  %prol.iter313 = phi i64 [ %prol.iter313.next, %scalar.ph292.prol ], [ 0, %scalar.ph292.preheader ]
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %indvars.iv.i166.prol
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !76
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv.i166.prol
  store i32 %i.jp, ptr %i.jq, align 4, !tbaa !76
  %indvars.iv.next.i167.prol = add nuw nsw i64 %indvars.iv.i166.prol, 1 ; 2 uses
  %prol.iter313.next = add i64 %prol.iter313, 1   ; 2 uses
  %prol.iter313.cmp.not = icmp eq i64 %prol.iter313.next, %xtraiter311
  br i1 %prol.iter313.cmp.not, label %scalar.ph292.prol.loopexit, label %scalar.ph292.prol, !llvm.loop !297

scalar.ph292.prol.loopexit:                       ; preds = %scalar.ph292.prol, %scalar.ph292.preheader
  %indvars.iv.i166.unr = phi i64 [ %indvars.iv.i166.ph, %scalar.ph292.preheader ], [ %indvars.iv.next.i167.prol, %scalar.ph292.prol ]
  %i.jr = sub nsw i64 %indvars.iv.i166.ph, %wide.trip.count.i165
  %i.js = icmp ugt i64 %i.jr, -4
  br i1 %i.js, label %_ZNK3sls5bvect7copy_toEjRS0_.exit169, label %scalar.ph292

scalar.ph292:                                     ; preds = %scalar.ph292.prol.loopexit, %scalar.ph292
  %indvars.iv.i166 = phi i64 [ %indvars.iv.next.i167.3, %scalar.ph292 ], [ %indvars.iv.i166.unr, %scalar.ph292.prol.loopexit ] ; 6 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %indvars.iv.i166
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !76
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv.i166
  store i32 %i.ju, ptr %i.jv, align 4, !tbaa !76
  %indvars.iv.next.i167 = add nuw nsw i64 %indvars.iv.i166, 1 ; 2 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %indvars.iv.next.i167
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !76
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv.next.i167
  store i32 %i.jx, ptr %i.jy, align 4, !tbaa !76
  %indvars.iv.next.i167.1 = add nuw nsw i64 %indvars.iv.i166, 2 ; 2 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %indvars.iv.next.i167.1
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !76
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv.next.i167.1
  store i32 %i.ka, ptr %i.kb, align 4, !tbaa !76
  %indvars.iv.next.i167.2 = add nuw nsw i64 %indvars.iv.i166, 3 ; 2 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %indvars.iv.next.i167.2
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !76
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv.next.i167.2
  store i32 %i.kd, ptr %i.ke, align 4, !tbaa !76
  %indvars.iv.next.i167.3 = add nuw nsw i64 %indvars.iv.i166, 4 ; 2 uses
  %exitcond.not.i168.3 = icmp eq i64 %indvars.iv.next.i167.3, %wide.trip.count.i165
  br i1 %exitcond.not.i168.3, label %_ZNK3sls5bvect7copy_toEjRS0_.exit169, label %scalar.ph292, !llvm.loop !298

_ZNK3sls5bvect7copy_toEjRS0_.exit169:             ; preds = %scalar.ph292.prol.loopexit, %scalar.ph292, %middle.block301, %_ZNK3sls5bvect7copy_toEjRS0_.exit
  %i.kf = getelementptr inbounds nuw i8, ptr %i.hq, i64 152
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !159
  %i.kh = add i32 %i.kg, -1                       ; 2 uses
  %i.ki = lshr i32 %i.kh, 5
  %i.kj = load ptr, ptr %i.ib, align 8, !tbaa !161
  %i.kk = zext nneg i32 %i.ki to i64
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %i.kk ; 2 uses
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !76 ; 3 uses
  %i.kn = and i32 %i.kh, 31
  %i.ko = shl nuw i32 1, %i.kn                    ; 2 uses
  %i.kp = and i32 %i.ko, %i.km
  %.not = icmp eq i32 %i.kp, 0
  %.neg.i = sext i1 %.not to i32
  %i.kq = xor i32 %i.km, %.neg.i
  %i.kr = and i32 %i.kq, %i.ko
  %i.ks = xor i32 %i.kr, %i.km
  store i32 %i.ks, ptr %i.kl, align 4, !tbaa !76
  %i.kt = load i32, ptr %i.ht, align 8, !tbaa !159
  %i.ku = add i32 %i.kt, -1                       ; 2 uses
  %i.kv = lshr i32 %i.ku, 5
  %i.kw = zext nneg i32 %i.kv to i64
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.kw ; 2 uses
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !76 ; 3 uses
  %i.kz = and i32 %i.ku, 31
  %i.la = shl nuw i32 1, %i.kz                    ; 2 uses
  %i.lb = and i32 %i.la, %i.ky
  %.not203 = icmp eq i32 %i.lb, 0
  %.neg.i170 = sext i1 %.not203 to i32
  %i.lc = xor i32 %i.ky, %.neg.i170
  %i.ld = and i32 %i.lc, %i.la
  %i.le = xor i32 %i.ld, %i.ky
  store i32 %i.le, ptr %i.kx, align 4, !tbaa !76
  %i.lf = call noundef zeroext i1 @_ZN3slsleERKNS_5bvectES2_(ptr noundef nonnull align 8 dereferenceable(20) %i.jf, ptr noundef nonnull align 8 dereferenceable(20) %i.ib) ; 2 uses
  br i1 %2, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %_ZNK3sls5bvect7copy_toEjRS0_.exit169
  br i1 %i.lf, label %_ZNK11ast_manager11is_distinctEPK4expr.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.lg = load ptr, ptr %i.c, align 8, !tbaa !83, !nonnull !74, !align !75 ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 592
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 568
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 544
  call void @_ZNK3sls12bv_valuation7set_subERNS_5bvectERKS1_S4_(ptr noundef nonnull align 8 dereferenceable(184) %i.hn, ptr noundef nonnull align 8 dereferenceable(20) %i.lh, ptr noundef nonnull align 8 dereferenceable(20) %i.li, ptr noundef nonnull align 8 dereferenceable(20) %i.lj)
  br label %bb.am

bb.ak:                                            ; preds = %_ZNK3sls5bvect7copy_toEjRS0_.exit169
  br i1 %i.lf, label %bb.al, label %_ZNK11ast_manager11is_distinctEPK4expr.exit.thread

bb.al:                                            ; preds = %bb.ak
  %i.lk = load ptr, ptr %i.c, align 8, !tbaa !83, !nonnull !74, !align !75 ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 592
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lk, i64 544
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lk, i64 568
  call void @_ZNK3sls12bv_valuation7set_subERNS_5bvectERKS1_S4_(ptr noundef nonnull align 8 dereferenceable(184) %i.hn, ptr noundef nonnull align 8 dereferenceable(20) %i.ll, ptr noundef nonnull align 8 dereferenceable(20) %i.lm, ptr noundef nonnull align 8 dereferenceable(20) %i.ln)
  %i.lo = load ptr, ptr %i.c, align 8, !tbaa !83, !nonnull !74, !align !75
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 592
  call void @_ZNK3sls12bv_valuation4add1ERNS_5bvectE(ptr noundef nonnull align 8 dereferenceable(184) %i.hn, ptr noundef nonnull align 8 dereferenceable(20) %i.lp)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.aj
  %i.lq = load i32, ptr %i.ht, align 8, !tbaa !159 ; 6 uses
  %.not253 = icmp eq i32 %i.lq, 0
  br i1 %.not253, label %._crit_edge234, label %.lr.ph233

.lr.ph233:                                        ; preds = %bb.am
  %i.lr = load ptr, ptr %i.c, align 8, !tbaa !83, !nonnull !74, !align !75
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 592
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !161 ; 2 uses
  %xtraiter314 = and i32 %i.lq, 1
  %i.lu = icmp eq i32 %i.lq, 1
  br i1 %i.lu, label %.epil.preheader, label %.lr.ph233.new

.lr.ph233.new:                                    ; preds = %.lr.ph233
  %unroll_iter = and i32 %i.lq, -2
  br label %bb.an

._crit_edge234.loopexit.unr-lcssa:                ; preds = %bb.an
  %lcmp.mod315.not = icmp eq i32 %xtraiter314, 0
  br i1 %lcmp.mod315.not, label %._crit_edge234, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge234.loopexit.unr-lcssa, %.lr.ph233
  %.0135231.epil.init = phi i32 [ 0, %.lr.ph233 ], [ %i.ms, %._crit_edge234.loopexit.unr-lcssa ] ; 2 uses
  %.0136230.epil.init = phi double [ 0.000000e+00, %.lr.ph233 ], [ %.1137.1, %._crit_edge234.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod317 = trunc i32 %i.lq to i1
  call void @llvm.assume(i1 %lcmp.mod317)
  %i.lv = lshr i32 %.0135231.epil.init, 5
  %i.lw = zext nneg i32 %i.lv to i64
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %i.lw
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !76
  %i.lz = and i32 %.0135231.epil.init, 31
  %i.ma = shl nuw i32 1, %i.lz
  %i.mb = and i32 %i.ly, %i.ma
  %.not204.epil = icmp eq i32 %i.mb, 0
  %i.mc = fadd double %.0136230.epil.init, 1.000000e+00
  %.1137.epil = select i1 %.not204.epil, double %.0136230.epil.init, double %i.mc
  br label %._crit_edge234

._crit_edge234:                                   ; preds = %.epil.preheader, %._crit_edge234.loopexit.unr-lcssa, %bb.am
  %.0136.lcssa = phi double [ 0.000000e+00, %bb.am ], [ %.1137.1, %._crit_edge234.loopexit.unr-lcssa ], [ %.1137.epil, %.epil.preheader ]
  %i.md = uitofp i32 %i.lq to double
  %i.me = fdiv double %.0136.lcssa, %i.md
  %i.mf = fsub double 1.000000e+00, %i.me
  br label %_ZNK11ast_manager11is_distinctEPK4expr.exit.thread

bb.an:                                            ; preds = %bb.an, %.lr.ph233.new
  %.0135231 = phi i32 [ 0, %.lr.ph233.new ], [ %i.ms, %bb.an ] ; 4 uses
  %.0136230 = phi double [ 0.000000e+00, %.lr.ph233.new ], [ %.1137.1, %bb.an ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph233.new ], [ %niter.next.1, %bb.an ]
  %i.mg = lshr i32 %.0135231, 5
  %i.mh = zext nneg i32 %i.mg to i64
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %i.mh
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !76 ; 2 uses
  %i.mk = and i32 %.0135231, 30
  %i.ml = shl nuw nsw i32 1, %i.mk
  %i.mm = and i32 %i.mj, %i.ml
  %.not204 = icmp eq i32 %i.mm, 0
  %i.mn = fadd double %.0136230, 1.000000e+00
  %.1137 = select i1 %.not204, double %.0136230, double %i.mn ; 2 uses
  %i.mo = and i32 %.0135231, 30
  %i.mp = shl nuw i32 2, %i.mo
  %i.mq = and i32 %i.mj, %i.mp
  %.not204.1 = icmp eq i32 %i.mq, 0
  %i.mr = fadd double %.1137, 1.000000e+00
end_hunk_2
