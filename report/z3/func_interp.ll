Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/func_interp?download=true
inline.NumInlined: 655
inline.NumDeleted: 282
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN11func_interp18reset_interp_cacheEv:bb.a
  %i.m = add i32 %i.l, -1                         ; 2 uses
  store i32 %i.m, ptr %i.k, align 4, !tbaa !25
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %_ZN11ast_manager7dec_refEP3ast.exit2

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.h, ptr noundef nonnull %i.j)
  br label %_ZN11ast_manager7dec_refEP3ast.exit2

_ZN11ast_manager7dec_refEP3ast.exit2:             ; preds = %_ZN11ast_manager7dec_refEP3ast.exit, %bb.d, %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11func_interp16is_fi_entry_exprEP4exprR10ptr_vectorIS0_E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !63     ; 5 uses
  %.not.i = icmp eq ptr %i.a, null                ; 2 uses
  br i1 %.not.i, label %_ZN6vectorIP4exprLb0EjE5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -4
  store i32 0, ptr %i.b, align 4, !tbaa !46
  br label %_ZN6vectorIP4exprLb0EjE5resetEv.exit

_ZN6vectorIP4exprLb0EjE5resetEv.exit:             ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 65535
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZNK11ast_manager6is_iteEPK4exprRPS0_S4_S4_.exit.thread

bb.c:                                             ; preds = %_ZN6vectorIP4exprLb0EjE5resetEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !167
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !68   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZNK11ast_manager6is_iteEPK4exprRPS0_S4_S4_.exit.thread, label %_ZNK11ast_manager6is_iteEPK4expr.exit.i

_ZNK11ast_manager6is_iteEPK4expr.exit.i:          ; preds = %bb.c
  %i.k = load i32, ptr %i.j, align 8, !tbaa !171
  %i.l = icmp eq i32 %i.k, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp eq i32 %i.n, 4
  %i.p = select i1 %i.l, i1 %i.o, i1 false
  br i1 %i.p, label %bb.d, label %_ZNK11ast_manager6is_iteEPK4exprRPS0_S4_S4_.exit.thread

bb.d:                                             ; preds = %_ZNK11ast_manager6is_iteEPK4expr.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26   ; 11 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !26   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4
  %i.w = and i32 %i.v, 65535
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_Z9is_groundPK4expr.exit, label %_ZNK11ast_manager6is_iteEPK4exprRPS0_S4_S4_.exit.thread

_Z9is_groundPK4expr.exit:                         ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 30
  %i.z = load i8, ptr %i.y, align 2
  %i.aa = trunc i8 %i.z to i1
  br i1 %i.aa, label %bb.e, label %_ZNK11ast_manager6is_iteEPK4exprRPS0_S4_S4_.exit.thread

bb.e:                                             ; preds = %_Z9is_groundPK4expr.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !37 ; 8 uses
  switch i32 %i.ac, label %bb.i [
    i32 0, label %_ZNK11ast_manager6is_iteEPK4exprRPS0_S4_S4_.exit.thread
    i32 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = and i32 %i.ae, 65535
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.g, label %_ZNK11ast_manager6is_iteEPK4exprRPS0_S4_S4_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !167
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !68 ; 3 uses
  %.not.i.i.i.i.i25 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i25, label %_ZNK11ast_manager6is_iteEPK4exprRPS0_S4_S4_.exit.thread, label %_ZNK11ast_manager5is_eqEPK4expr.exit.i

_ZNK11ast_manager5is_eqEPK4expr.exit.i:           ; preds = %bb.g
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !171
  %i.am = icmp eq i32 %i.al, 0
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = icmp eq i32 %i.ao, 2
  %i.aq = select i1 %i.am, i1 %i.ap, i1 false
  br i1 %i.aq, label %bb.h, label %_ZNK11ast_manager6is_iteEPK4exprRPS0_S4_S4_.exit.thread

bb.h:                                             ; preds = %_ZNK11ast_manager5is_eqEPK4expr.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !172
  %i.at = icmp eq i32 %i.as, 2
  br i1 %i.at, label %bb.l, label %_ZNK11ast_manager6is_iteEPK4exprRPS0_S4_S4_.exit.thread

bb.i:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = and i32 %i.av, 65535
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.j, label %_ZNK11ast_manager6is_iteEPK4exprRPS0_S4_S4_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !167
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !68 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i, label %_ZNK11ast_manager6is_iteEPK4exprRPS0_S4_S4_.exit.thread, label %_ZNK11ast_manager6is_andEPK4expr.exit

_ZNK11ast_manager6is_andEPK4expr.exit:            ; preds = %bb.j
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !171
  %i.bd = icmp eq i32 %i.bc, 0
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = icmp eq i32 %i.bf, 5
  %i.bh = select i1 %i.bd, i1 %i.bg, i1 false
  br i1 %i.bh, label %bb.k, label %_ZNK11ast_manager6is_iteEPK4exprRPS0_S4_S4_.exit.thread

bb.k:                                             ; preds = %_ZNK11ast_manager6is_andEPK4expr.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !172
  %.not = icmp eq i32 %i.bj, %i.ac
  br i1 %.not, label %bb.l, label %_ZNK11ast_manager6is_iteEPK4exprRPS0_S4_S4_.exit.thread

bb.l:                                             ; preds = %bb.h, %bb.k
  br i1 %.not.i, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.preheader, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i:    ; preds = %bb.l
  %i.bk = getelementptr inbounds i8, ptr %i.a, i64 -4 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !46 ; 2 uses
  %.not15.i = icmp ugt i32 %i.ac, %i.bl
  br i1 %.not15.i, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.preheader, label %bb.m

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.preheader: ; preds = %bb.l, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i
  %.ph = phi ptr [ %i.a, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i ], [ null, %bb.l ]
  %.0.i16.i.ph = phi i32 [ %i.bl, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i ], [ 0, %bb.l ] ; 2 uses
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

bb.m:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i
  store i32 %i.ac, ptr %i.bk, align 4, !tbaa !46
  br label %_ZN6vectorIP4exprLb0EjE6resizeEj.exit

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.preheader, %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i
  %i.bm = phi ptr [ %.pr.pre.i, %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i ], [ %.ph, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.preheader ] ; 6 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i, label %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i

_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i:       ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.bo = getelementptr inbounds i8, ptr %i.bm, i64 -8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !46
  %i.bq = icmp ugt i32 %i.ac, %i.bp
  br i1 %i.bq, label %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i, label %bb.n

_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i: ; preds = %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.pr.pre.i = load ptr, ptr %2, align 8, !tbaa !63
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, !llvm.loop !161

bb.n:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i
  %i.br = getelementptr inbounds i8, ptr %i.bm, i64 -4
  store i32 %i.ac, ptr %i.br, align 4, !tbaa !46
  %.not1218.i = icmp eq i32 %.0.i16.i.ph, %i.ac
  br i1 %.not1218.i, label %_ZN6vectorIP4exprLb0EjE6resizeEj.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.n
  %i.bs = zext i32 %i.ac to i64
  %i.bt = zext i32 %.0.i16.i.ph to i64            ; 2 uses
  %i.bu = getelementptr [8 x i8], ptr %i.bm, i64 %i.bt
  %i.bv = sub nsw i64 %i.bs, %i.bt
  %i.bw = shl nsw i64 %i.bv, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bu, i8 0, i64 %i.bw, i1 false), !tbaa !26
  br label %_ZN6vectorIP4exprLb0EjE6resizeEj.exit

_ZN6vectorIP4exprLb0EjE6resizeEj.exit:            ; preds = %bb.m, %bb.n, %.lr.ph.preheader.i
  %i.bx = phi ptr [ %i.a, %bb.m ], [ %i.bm, %bb.n ], [ %i.bm, %.lr.ph.preheader.i ] ; 2 uses
  %i.by = load i32, ptr %i.ab, align 8, !tbaa !37 ; 3 uses
  %.not2465 = icmp eq i32 %i.by, 0
  br i1 %.not2465, label %_ZNK11ast_manager6is_iteEPK4exprRPS0_S4_S4_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6vectorIP4exprLb0EjE6resizeEj.exit
  %i.bz = icmp eq i32 %i.by, 1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  br i1 %i.bz, label %bb.o, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext i32 %i.by to i64
  br label %.lr.ph.split

bb.o:                                             ; preds = %.lr.ph
  %i.cb = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.cd = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = and i32 %i.ce, 65535
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.p, label %_ZNK11ast_manager6is_iteEPK4exprRPS0_S4_S4_.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.ch = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !167
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !68 ; 3 uses
  %.not.i.i.i.i.i27.us = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i.i27.us, label %_ZNK11ast_manager6is_iteEPK4exprRPS0_S4_S4_.exit.thread, label %_ZNK11ast_manager5is_eqEPK4expr.exit.i28.us

_ZNK11ast_manager5is_eqEPK4expr.exit.i28.us:      ; preds = %bb.p
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !171
  %i.cm = icmp eq i32 %i.cl, 0
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = icmp eq i32 %i.co, 2
  %i.cq = select i1 %i.cm, i1 %i.cp, i1 false
  br i1 %i.cq, label %bb.q, label %_ZNK11ast_manager6is_iteEPK4exprRPS0_S4_S4_.exit.thread

bb.q:                                             ; preds = %_ZNK11ast_manager5is_eqEPK4expr.exit.i28.us
  %i.cr = load i32, ptr %i.cb, align 8, !tbaa !172
  %i.cs = icmp eq i32 %i.cr, 2
  br i1 %i.cs, label %bb.r, label %_ZNK11ast_manager6is_iteEPK4exprRPS0_S4_S4_.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.ct = load ptr, ptr %i.ca, align 8, !tbaa !26 ; 3 uses
  %i.cu = load ptr, ptr %i.cc, align 8, !tbaa !26 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = and i32 %i.cw, 65535
  %i.cy = icmp eq i32 %i.cx, 1
  br i1 %i.cy, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !174
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.dd = load i32, ptr %i.dc, align 4
  %i.de = and i32 %i.dd, 65535
  %i.df = icmp eq i32 %i.de, 1
  br i1 %i.df, label %bb.u, label %_ZNK11ast_manager6is_iteEPK4exprRPS0_S4_S4_.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !174
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.v, label %_ZNK11ast_manager6is_iteEPK4exprRPS0_S4_S4_.exit.thread

bb.v:                                             ; preds = %bb.s, %bb.u
  %storemerge = phi ptr [ %i.ct, %bb.u ], [ %i.cu, %bb.s ]
  store ptr %storemerge, ptr %i.bx, align 8, !tbaa !26
  br label %_ZNK11ast_manager6is_iteEPK4exprRPS0_S4_S4_.exit.thread

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.ac
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.ac ] ; 5 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !26 ; 5 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.dm = load i32, ptr %i.dl, align 4
  %i.dn = and i32 %i.dm, 65535
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %bb.w, label %_ZNK11ast_manager6is_iteEPK4exprRPS0_S4_S4_.exit.thread

bb.w:                                             ; preds = %.lr.ph.split
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !167
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !68 ; 3 uses
  %.not.i.i.i.i.i27 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i.i.i27, label %_ZNK11ast_manager6is_iteEPK4exprRPS0_S4_S4_.exit.thread, label %_ZNK11ast_manager5is_eqEPK4expr.exit.i28

_ZNK11ast_manager5is_eqEPK4expr.exit.i28:         ; preds = %bb.w
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !171
  %i.du = icmp eq i32 %i.dt, 0
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %i.dw = load i32, ptr %i.dv, align 4
  %i.dx = icmp eq i32 %i.dw, 2
  %i.dy = select i1 %i.du, i1 %i.dx, i1 false
  br i1 %i.dy, label %bb.x, label %_ZNK11ast_manager6is_iteEPK4exprRPS0_S4_S4_.exit.thread

bb.x:                                             ; preds = %_ZNK11ast_manager5is_eqEPK4expr.exit.i28
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !172
  %i.eb = icmp eq i32 %i.ea, 2
  br i1 %i.eb, label %bb.y, label %_ZNK11ast_manager6is_iteEPK4exprRPS0_S4_S4_.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !26 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !26 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  %i.eh = load i32, ptr %i.eg, align 4
  %i.ei = and i32 %i.eh, 65535
  %i.ej = icmp eq i32 %i.ei, 1
  br i1 %i.ej, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !174
  %i.em = zext i32 %i.el to i64
  %i.en = icmp eq i64 %indvars.iv, %i.em
  br i1 %i.en, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %i.ep = load i32, ptr %i.eo, align 4
  %i.eq = and i32 %i.ep, 65535
  %i.er = icmp eq i32 %i.eq, 1
  br i1 %i.er, label %bb.ab, label %_ZNK11ast_manager6is_iteEPK4exprRPS0_S4_S4_.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.es = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.et = load i32, ptr %i.es, align 8, !tbaa !174
  %i.eu = zext i32 %i.et to i64
  %i.ev = icmp eq i64 %indvars.iv, %i.eu
  br i1 %i.ev, label %bb.ac, label %_ZNK11ast_manager6is_iteEPK4exprRPS0_S4_S4_.exit.thread

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %.sink = phi ptr [ %i.ef, %bb.z ], [ %i.ed, %bb.ab ]
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv
  store ptr %.sink, ptr %i.ew, align 8, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZNK11ast_manager6is_iteEPK4exprRPS0_S4_S4_.exit.thread, label %.lr.ph.split, !llvm.loop !162

_ZNK11ast_manager6is_iteEPK4exprRPS0_S4_S4_.exit.thread: ; preds = %bb.w, %.lr.ph.split, %_ZNK11ast_manager5is_eqEPK4expr.exit.i28, %bb.x, %bb.aa, %bb.ab, %bb.ac, %bb.p, %bb.o, %_ZNK11ast_manager5is_eqEPK4expr.exit.i28.us, %bb.q, %bb.t, %bb.u, %bb.v, %_ZN6vectorIP4exprLb0EjE6resizeEj.exit, %bb.j, %bb.i, %bb.g, %bb.f, %_ZNK11ast_manager5is_eqEPK4expr.exit.i, %bb.h, %bb.d, %bb.c, %_ZN6vectorIP4exprLb0EjE5resetEv.exit, %_ZNK11ast_manager6is_iteEPK4expr.exit.i, %_Z9is_groundPK4expr.exit, %_ZNK11ast_manager6is_andEPK4expr.exit, %bb.k, %bb.e
  %.3 = phi i1 [ false, %bb.g ], [ false, %_Z9is_groundPK4expr.exit ], [ false, %bb.j ], [ false, %bb.e ], [ false, %bb.k ], [ false, %_ZNK11ast_manager6is_andEPK4expr.exit ], [ false, %bb.d ], [ false, %bb.c ], [ false, %_ZNK11ast_manager6is_iteEPK4expr.exit.i ], [ false, %_ZN6vectorIP4exprLb0EjE5resetEv.exit ], [ false, %bb.h ], [ false, %_ZNK11ast_manager5is_eqEPK4expr.exit.i ], [ false, %bb.f ], [ false, %bb.i ], [ true, %_ZN6vectorIP4exprLb0EjE6resizeEj.exit ], [ false, %bb.p ], [ true, %bb.v ], [ false, %bb.u ], [ false, %bb.t ], [ false, %bb.q ], [ false, %_ZNK11ast_manager5is_eqEPK4expr.exit.i28.us ], [ false, %bb.o ], [ false, %bb.ab ], [ false, %bb.aa ], [ false, %bb.x ], [ false, %_ZNK11ast_manager5is_eqEPK4expr.exit.i28 ], [ false, %.lr.ph.split ], [ false, %bb.w ], [ true, %bb.ac ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZNK11func_interp9get_entryEPKP4expr(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !37   ; 3 uses
  %.not47 = icmp eq i32 %i.e, 0
  br i1 %.not47, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 6 uses
  %wide.trip.count = zext i32 %i.e to i64         ; 5 uses
  %min.iters.check = icmp ult i32 %i.e, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.i = ptrtoaddr ptr %i.g to i64
  %i.j = sub i64 %i.i, %i.a
  %i.k = add i64 %i.j, 15
  %diff.check = icmp ult i64 %i.k, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load = load <2 x ptr>, ptr %i.l, align 8, !tbaa !26
  %wide.load68 = load <2 x ptr>, ptr %i.m, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <2 x ptr> %wide.load, ptr %i.n, align 8, !tbaa !26
  store <2 x ptr> %wide.load68, ptr %i.o, align 8, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !175

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.prol
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.prol
  store ptr %i.r, ptr %i.s, align 8, !tbaa !26
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !176

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.t = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.u = icmp ugt i64 %i.t, -4
  br i1 %i.u, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.w = tail call noundef ptr @_ZNK14core_hashtableI14ptr_hash_entryI10func_entryE15func_entry_hash13func_entry_eqE9find_coreERKPS1_(ptr noundef nonnull align 8 dereferenceable(28) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.v) ; 2 uses
  %.not.i.not = icmp eq ptr %i.w, null
  br i1 %.not.i.not, label %_ZNK14core_hashtableI14ptr_hash_entryI10func_entryE15func_entry_hash13func_entry_eqE4findERKPS1_RS6_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !51
  br label %_ZNK14core_hashtableI14ptr_hash_entryI10func_entryE15func_entry_hash13func_entry_eqE4findERKPS1_RS6_.exit

_ZNK14core_hashtableI14ptr_hash_entryI10func_entryE15func_entry_hash13func_entry_eqE4findERKPS1_RS6_.exit: ; preds = %._crit_edge, %bb.b
  %.024 = phi ptr [ %i.y, %bb.b ], [ null, %._crit_edge ] ; 2 uses
  %i.z = load i32, ptr %i.d, align 8, !tbaa !37   ; 2 uses
  %.not48 = icmp eq i32 %i.z, 0
  br i1 %.not48, label %.loopexit, label %.lr.ph41
end_hunk_0
