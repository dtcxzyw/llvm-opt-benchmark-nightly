Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ASTReaderStmt?download=true
inline.NumInlined: 6253
inline.NumDeleted: 2940
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN5clang13ASTStmtReader21VisitCXXConstructExprEPNS_16CXXConstructExprE:bb.a
  %i.d = load i32, ptr %i.c, align 8, !tbaa !57   ; 3 uses
  %i.e = add i32 %i.d, 1
  %i.f = zext i32 %i.d to i64
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !44   ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load i64, ptr %i.h, align 8, !tbaa !46   ; 5 uses
  %i.j = add i32 %i.d, 2
  store i32 %i.j, ptr %i.c, align 8, !tbaa !57
  %i.k = zext i32 %i.e to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !46
  %i.n = trunc i64 %i.m to i32
  %i.o = load i32, ptr %1, align 8
  %i.p = shl i32 %i.n, 19
  %i.q = and i32 %i.p, 524288
  %i.r = and i32 %i.o, -524289
  %i.s = or disjoint i32 %i.q, %i.r
  store i32 %i.s, ptr %1, align 8
  %i.t = load ptr, ptr %0, align 8, !tbaa !26, !nonnull !27, !align !28 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !57   ; 2 uses
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 8, !tbaa !57
  %i.y = zext i32 %i.w to i64
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !44
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !46
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = load i32, ptr %1, align 8
  %i.ae = shl i32 %i.ac, 20
  %i.af = and i32 %i.ae, 1048576
  %i.ag = and i32 %i.ad, -1048577
  %i.ah = or disjoint i32 %i.af, %i.ag
  store i32 %i.ah, ptr %1, align 8
  %i.ai = load ptr, ptr %0, align 8, !tbaa !26, !nonnull !27, !align !28 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !57 ; 2 uses
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 8, !tbaa !57
  %i.an = zext i32 %i.al to i64
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !44
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.an
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !46
  %i.ar = trunc i64 %i.aq to i32
  %i.as = load i32, ptr %1, align 8
  %i.at = shl i32 %i.ar, 21
  %i.au = and i32 %i.at, 2097152
  %i.av = and i32 %i.as, -2097153
  %i.aw = or disjoint i32 %i.au, %i.av
  store i32 %i.aw, ptr %1, align 8
  %i.ax = load ptr, ptr %0, align 8, !tbaa !26, !nonnull !27, !align !28 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 24 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !57 ; 2 uses
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 8, !tbaa !57
  %i.bc = zext i32 %i.ba to i64
  %i.bd = load ptr, ptr %i.ay, align 8, !tbaa !44
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !46
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = load i32, ptr %1, align 8
  %i.bi = shl i32 %i.bg, 22
  %i.bj = and i32 %i.bi, 4194304
  %i.bk = and i32 %i.bh, -4194305
  %i.bl = or disjoint i32 %i.bj, %i.bk
  store i32 %i.bl, ptr %1, align 8
  %i.bm = load ptr, ptr %0, align 8, !tbaa !26, !nonnull !27, !align !28 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !57 ; 2 uses
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bo, align 8, !tbaa !57
  %i.br = zext i32 %i.bp to i64
  %i.bs = load ptr, ptr %i.bn, align 8, !tbaa !44
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.br
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !46
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = load i32, ptr %1, align 8
  %i.bx = shl i32 %i.bv, 23
  %i.by = and i32 %i.bx, 8388608
  %i.bz = and i32 %i.bw, -8388609
  %i.ca = or disjoint i32 %i.by, %i.bz
  store i32 %i.ca, ptr %1, align 8
  %i.cb = load ptr, ptr %0, align 8, !tbaa !26, !nonnull !27, !align !28 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 24 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !57 ; 2 uses
  %i.cf = add i32 %i.ce, 1
  store i32 %i.cf, ptr %i.cd, align 8, !tbaa !57
  %i.cg = zext i32 %i.ce to i64
  %i.ch = load ptr, ptr %i.cc, align 8, !tbaa !44
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cg
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !46
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = load i32, ptr %1, align 8
  %i.cm = shl i32 %i.ck, 24
  %i.cn = and i32 %i.cm, 117440512
  %i.co = and i32 %i.cl, -117440513
  %i.cp = or disjoint i32 %i.cn, %i.co
  store i32 %i.cp, ptr %1, align 8
  %i.cq = load ptr, ptr %0, align 8, !tbaa !26, !nonnull !27, !align !28 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 24 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !57 ; 2 uses
  %i.cu = add i32 %i.ct, 1
  store i32 %i.cu, ptr %i.cs, align 8, !tbaa !57
  %i.cv = zext i32 %i.ct to i64
  %i.cw = load ptr, ptr %i.cr, align 8, !tbaa !44
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cv
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !46
  %i.cz = trunc i64 %i.cy to i32
  %i.da = load i32, ptr %1, align 8
  %i.db = shl i32 %i.cz, 27
  %i.dc = and i32 %i.db, 134217728
  %i.dd = and i32 %i.da, -134217729
  %i.de = or disjoint i32 %i.dc, %i.dd
  store i32 %i.de, ptr %1, align 8
  %i.df = load ptr, ptr %0, align 8, !tbaa !26, !nonnull !27, !align !28 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !41
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !42 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 24 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !43 ; 2 uses
  %i.dn = add i32 %i.dm, 1
  store i32 %i.dn, ptr %i.dl, align 8, !tbaa !43
  %i.do = zext i32 %i.dm to i64
  %i.dp = load ptr, ptr %i.dk, align 8, !tbaa !44
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.do
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !46 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dj, i64 912
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !49
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK5clang9ASTReader19ReadModuleOffsetMapERNS_13serialization10ModuleFileE(ptr noundef nonnull align 8 dereferenceable(16376) %i.dh, ptr noundef nonnull align 8 dereferenceable(3832) %i.dj) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.extract.shift.i.i.i.i = lshr i64 %i.dr, 32 ; 2 uses
  %i.dv = icmp eq i64 %.sroa.4.0.extract.shift.i.i.i.i, 0
  br i1 %i.dv, label %_ZN5clang13ASTStmtReader18readSourceLocationEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dj, i64 3688
  %i.dx = add nuw nsw i64 %.sroa.4.0.extract.shift.i.i.i.i, 4294967295
  %i.dy = and i64 %i.dx, 4294967295
  %i.dz = load ptr, ptr %i.dw, align 8, !tbaa !44
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.dy
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !50
  br label %_ZN5clang13ASTStmtReader18readSourceLocationEv.exit

_ZN5clang13ASTStmtReader18readSourceLocationEv.exit: ; preds = %bb.c, %bb.d
  %i.ec = phi ptr [ %i.eb, %bb.d ], [ %i.dj, %bb.c ]
  %i.ed = trunc i64 %i.dr to i32                  ; 3 uses
  %i.ee = tail call i32 @llvm.fshl.i32(i32 %i.ed, i32 %i.ed, i32 31)
  %i.ef = icmp eq i32 %i.ed, 0
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 1712
  %i.eh = load i32, ptr %i.eg, align 8
  %i.ei = add i32 %i.ee, -2
  %i.ej = add i32 %i.ei, %i.eh
  %.sroa.0.0.i.i.i.i.i = select i1 %i.ef, i32 0, i32 %i.ej
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %.sroa.0.0.i.i.i.i.i, ptr %i.ek, align 4, !tbaa !43
  %i.el = load ptr, ptr %0, align 8, !tbaa !26, !nonnull !27, !align !28 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !41 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !42
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.es = tail call i64 @_ZN5clang9ASTReader10ReadDeclIDERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj(ptr noundef nonnull align 8 dereferenceable(16376) %i.en, ptr noundef nonnull align 8 dereferenceable(3832) %i.ep, ptr noundef nonnull align 8 dereferenceable(16) %i.eq, ptr noundef nonnull align 4 dereferenceable(4) %i.er) #22
  %i.et = tail call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %i.en, i64 %i.es) #22
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.et, ptr %i.eu, align 8, !tbaa !1097
  %i.ev = load ptr, ptr %0, align 8, !tbaa !26, !nonnull !27, !align !28 ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !41
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !42
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 32
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.fc = tail call i64 @_ZN5clang9ASTReader15ReadSourceRangeERNS_13serialization10ModuleFileERKN4llvm11SmallVectorImLj64EEERj(ptr noundef nonnull align 8 dereferenceable(16376) %i.ex, ptr noundef nonnull align 8 dereferenceable(3832) %i.ez, ptr noundef nonnull align 8 dereferenceable(528) %i.fa, ptr noundef nonnull align 4 dereferenceable(4) %i.fb) #22
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.fc, ptr %i.fd, align 8, !tbaa !43
  %i.fe = and i64 %i.i, 4294967295
  %.not17 = icmp eq i64 %i.fe, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5clang13ASTStmtReader18readSourceLocationEv.exit
  %i.ff = load ptr, ptr %0, align 8, !tbaa !26, !nonnull !27, !align !28
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !41 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 13144
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !44 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 13152 ; 4 uses
  %i.fl = and i64 %i.i, 4294967295
  %.pre = load i32, ptr %i.fk, align 8, !tbaa !51 ; 2 uses
  %xtraiter = and i64 %i.i, 1
  %i.fm = icmp eq i64 %i.fl, 1
  br i1 %i.fm, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.i, 4294967294
  br label %bb.e

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi i32 [ %.pre, %.lr.ph ], [ %i.gk, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod20 = trunc i64 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod20)
  %i.fn = zext i32 %.epil.init to i64
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fn
  %i.fp = getelementptr inbounds i8, ptr %i.fo, i64 -8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !59
  %i.fr = add i32 %.epil.init, -1
  store i32 %i.fr, ptr %i.fk, align 8, !tbaa !51
  %i.fs = load i16, ptr %1, align 8
  %i.ft = and i16 %i.fs, 511
  %.not.i.i.i.epil = icmp eq i16 %i.ft, 118
  %spec.select.v.i.i.i.epil = select i1 %.not.i.i.i.epil, i64 48, i64 40
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i.epil
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv.epil.init
  store ptr %i.fq, ptr %i.fv, align 8, !tbaa !534
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZN5clang13ASTStmtReader18readSourceLocationEv.exit
  ret void

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %i.fw = phi i32 [ %.pre, %.lr.ph.new ], [ %i.gk, %bb.e ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.e ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.e ]
  %i.fx = zext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fx
  %i.fz = getelementptr inbounds i8, ptr %i.fy, i64 -8
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !59
  %i.gb = add i32 %i.fw, -1                       ; 2 uses
  store i32 %i.gb, ptr %i.fk, align 8, !tbaa !51
  %i.gc = load i16, ptr %1, align 8
  %i.gd = and i16 %i.gc, 511
  %.not.i.i.i = icmp eq i16 %i.gd, 118
  %spec.select.v.i.i.i = select i1 %.not.i.i.i, i64 48, i64 40
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv
  store ptr %i.ga, ptr %i.gf, align 8, !tbaa !534
  %i.gg = zext i32 %i.gb to i64
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.gg
  %i.gi = getelementptr inbounds i8, ptr %i.gh, i64 -8
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !59
  %i.gk = add i32 %i.fw, -2                       ; 3 uses
  store i32 %i.gk, ptr %i.fk, align 8, !tbaa !51
  %i.gl = load i16, ptr %1, align 8
  %i.gm = and i16 %i.gl, 511
  %.not.i.i.i.1 = icmp eq i16 %i.gm, 118
  %spec.select.v.i.i.i.1 = select i1 %.not.i.i.i.1, i64 48, i64 40
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i.1
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store ptr %i.gj, ptr %i.gp, align 8, !tbaa !534
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.e, !llvm.loop !1096
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang13ASTStmtReader29VisitCXXInheritedCtorInitExprEPNS_24CXXInheritedCtorInitExprE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(28) initializes((16, 25)) %0, ptr nofree noundef captures(none) initializes((8, 16)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN5clang13ASTStmtReader9VisitExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1)
  %i.a = load ptr, ptr %0, align 8, !tbaa !26, !nonnull !27, !align !28 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.h = tail call i64 @_ZN5clang9ASTReader10ReadDeclIDERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj(ptr noundef nonnull align 8 dereferenceable(16376) %i.c, ptr noundef nonnull align 8 dereferenceable(3832) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.g) #22
  %i.i = tail call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %i.c, i64 %i.h) #22
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !1099
  %i.k = load ptr, ptr %0, align 8, !tbaa !26, !nonnull !27, !align !28 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !42   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !43   ; 2 uses
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 8, !tbaa !43
  %i.t = zext i32 %i.r to i64
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !44
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  %i.w = load i64, ptr %i.v, align 8, !tbaa !46   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 912
  %i.y = load i64, ptr %i.x, align 8, !tbaa !49
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK5clang9ASTReader19ReadModuleOffsetMapERNS_13serialization10ModuleFileE(ptr noundef nonnull align 8 dereferenceable(16376) %i.m, ptr noundef nonnull align 8 dereferenceable(3832) %i.o) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.extract.shift.i.i.i.i = lshr i64 %i.w, 32 ; 2 uses
  %i.aa = icmp eq i64 %.sroa.4.0.extract.shift.i.i.i.i, 0
  br i1 %i.aa, label %_ZN5clang13ASTStmtReader18readSourceLocationEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 3688
  %i.ac = add nuw nsw i64 %.sroa.4.0.extract.shift.i.i.i.i, 4294967295
  %i.ad = and i64 %i.ac, 4294967295
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !44
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ad
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !50
  br label %_ZN5clang13ASTStmtReader18readSourceLocationEv.exit

_ZN5clang13ASTStmtReader18readSourceLocationEv.exit: ; preds = %bb.c, %bb.d
  %i.ah = phi ptr [ %i.ag, %bb.d ], [ %i.o, %bb.c ]
  %i.ai = trunc i64 %i.w to i32                   ; 3 uses
  %i.aj = tail call i32 @llvm.fshl.i32(i32 %i.ai, i32 %i.ai, i32 31)
  %i.ak = icmp eq i32 %i.ai, 0
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 1712
  %i.am = load i32, ptr %i.al, align 8
  %i.an = add i32 %i.aj, -2
  %i.ao = add i32 %i.an, %i.am
  %.sroa.0.0.i.i.i.i.i = select i1 %i.ak, i32 0, i32 %i.ao
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %.sroa.0.0.i.i.i.i.i, ptr %i.ap, align 8, !tbaa !43
  %i.aq = load ptr, ptr %0, align 8, !tbaa !26, !nonnull !27, !align !28 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !57 ; 2 uses
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %i.as, align 8, !tbaa !57
  %i.av = zext i32 %i.at to i64
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !44
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.av
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !46
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 4 uses
  %i.ba = trunc i64 %i.ay to i8
  %i.bb = load i8, ptr %i.az, align 4
  %i.bc = and i8 %i.ba, 1
  %i.bd = and i8 %i.bb, -2
  %i.be = or disjoint i8 %i.bd, %i.bc
  store i8 %i.be, ptr %i.az, align 4
  %i.bf = load ptr, ptr %0, align 8, !tbaa !26, !nonnull !27, !align !28 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 24 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !57 ; 2 uses
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 8, !tbaa !57
  %i.bk = zext i32 %i.bi to i64
  %i.bl = load ptr, ptr %i.bg, align 8, !tbaa !44
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bk
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !46
  %i.bo = trunc i64 %i.bn to i8
  %i.bp = load i8, ptr %i.az, align 4
  %i.bq = shl i8 %i.bo, 1
  %i.br = and i8 %i.bq, 2
  %i.bs = and i8 %i.bp, -3
  %i.bt = or disjoint i8 %i.br, %i.bs
  store i8 %i.bt, ptr %i.az, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang13ASTStmtReader27VisitCXXTemporaryObjectExprEPNS_22CXXTemporaryObjectExprE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(28) initializes((16, 25)) %0, ptr nofree noundef captures(none) initializes((8, 16)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN5clang13ASTStmtReader21VisitCXXConstructExprEPNS_16CXXConstructExprE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1)
  %i.a = load ptr, ptr %0, align 8, !tbaa !26, !nonnull !27, !align !28
  %i.b = tail call noundef ptr @_ZN5clang15ASTRecordReader18readTypeSourceInfoEv(ptr noundef nonnull align 8 dereferenceable(560) %i.a) #22
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.b, ptr %i.c, align 8, !tbaa !1101
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang13ASTStmtReader15VisitLambdaExprEPNS_10LambdaExprE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(28) initializes((16, 25)) %0, ptr nofree noundef captures(address) initializes((8, 16)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN5clang13ASTStmtReader9VisitExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1)
  %i.a = load ptr, ptr %0, align 8, !tbaa !26, !nonnull !27, !align !28 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !57
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !57
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.j = tail call i64 @_ZN5clang9ASTReader15ReadSourceRangeERNS_13serialization10ModuleFileERKN4llvm11SmallVectorImLj64EEERj(ptr noundef nonnull align 8 dereferenceable(16376) %i.g, ptr noundef nonnull align 8 dereferenceable(3832) %i.i, ptr noundef nonnull align 8 dereferenceable(528) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c) #22
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.j, ptr %i.k, align 8, !tbaa !43
  %i.l = load ptr, ptr %0, align 8, !tbaa !26, !nonnull !27, !align !28 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !57   ; 2 uses
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 8, !tbaa !57
  %i.q = zext i32 %i.o to i64
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !44
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  %i.t = load i64, ptr %i.s, align 8, !tbaa !46
  %i.u = trunc i64 %i.t to i32
  %i.v = load i32, ptr %1, align 8
  %i.w = shl i32 %i.u, 19
  %i.x = and i32 %i.w, 1572864
  %i.y = and i32 %i.v, -1572865
  %i.z = or disjoint i32 %i.x, %i.y
  store i32 %i.z, ptr %1, align 8
  %i.aa = load ptr, ptr %0, align 8, !tbaa !26, !nonnull !27, !align !28 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !41
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !42 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !43 ; 2 uses
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !43
  %i.aj = zext i32 %i.ah to i64
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !44
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aj
  %i.am = load i64, ptr %i.al, align 8, !tbaa !46 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 912
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !49
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK5clang9ASTReader19ReadModuleOffsetMapERNS_13serialization10ModuleFileE(ptr noundef nonnull align 8 dereferenceable(16376) %i.ac, ptr noundef nonnull align 8 dereferenceable(3832) %i.ae) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.extract.shift.i.i.i.i = lshr i64 %i.am, 32 ; 2 uses
  %i.aq = icmp eq i64 %.sroa.4.0.extract.shift.i.i.i.i, 0
  br i1 %i.aq, label %_ZN5clang13ASTStmtReader18readSourceLocationEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 3688
  %i.as = add nuw nsw i64 %.sroa.4.0.extract.shift.i.i.i.i, 4294967295
  %i.at = and i64 %i.as, 4294967295
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !44
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.at
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !50
  br label %_ZN5clang13ASTStmtReader18readSourceLocationEv.exit

_ZN5clang13ASTStmtReader18readSourceLocationEv.exit: ; preds = %bb.c, %bb.d
  %i.ax = phi ptr [ %i.aw, %bb.d ], [ %i.ae, %bb.c ]
  %i.ay = trunc i64 %i.am to i32                  ; 3 uses
  %i.az = tail call i32 @llvm.fshl.i32(i32 %i.ay, i32 %i.ay, i32 31)
  %i.ba = icmp eq i32 %i.ay, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 1712
  %i.bc = load i32, ptr %i.bb, align 8
  %i.bd = add i32 %i.az, -2
  %i.be = add i32 %i.bd, %i.bc
end_hunk_0
