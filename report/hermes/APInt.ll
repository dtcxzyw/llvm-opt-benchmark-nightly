Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/APInt?download=true
inline.NumInlined: 1478
inline.NumDeleted: 233
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 93
loop-unroll.NumUnrolled: 98
begin_hunk_0_@_ZNK4llvh5APInt4rotlEj:bb.a
  %i.af = trunc nuw nsw i64 %i.ae to i32          ; 4 uses
  %i.ag = lshr i32 %i.c, 6                        ; 2 uses
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %i.af, i32 %i.ag) ; 11 uses
  %i.ah = and i32 %i.c, 63                        ; 3 uses
  %i.ai = icmp eq i32 %i.ah, 0
  %i.aj = ptrtoint ptr %i.ad to i64
  br i1 %i.ai, label %bb.g, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.f
  %i.ak = icmp samesign ult i32 %i.ag, %i.af
  br i1 %i.ak, label %.lr.ph.i.i, label %_ZNK4llvh5APInt3shlEj.exit

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.al = zext nneg i32 %i.ah to i64              ; 4 uses
  %i.am = sub nuw nsw i32 64, %i.ah
  %i.an = zext nneg i32 %i.am to i64              ; 3 uses
  %indvars.iv.next.i1.i = add nsw i64 %i.ae, -1   ; 4 uses
  %indvars.i2.i = trunc nuw nsw i64 %indvars.iv.next.i1.i to i32 ; 2 uses
  %i.ao = sub nuw nsw i32 %indvars.i2.i, %.sroa.speculated.i.i ; 2 uses
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !10
  %i.as = shl i64 %i.ar, %i.al                    ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i1.i ; 3 uses
  store i64 %i.as, ptr %i.at, align 8, !tbaa !10
  %i.au = icmp samesign ult i32 %.sroa.speculated.i.i, %indvars.i2.i
  br i1 %i.au, label %.lr.ph.preheader.i, label %_ZNK4llvh5APInt3shlEj.exit

.lr.ph.preheader.i:                               ; preds = %.lr.ph.i.i
  %i.av = xor i32 %.sroa.speculated.i.i, -1
  %i.aw = sext i32 %i.av to i64
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.ab, i64 %i.aw ; 3 uses
  %i.ax = add nsw i32 %i.af, -2
  %xtraiter = and i32 %i.ao, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %gep.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i1.i
  %i.ay = load i64, ptr %gep.i.prol, align 8, !tbaa !10
  %i.az = lshr i64 %i.ay, %i.an
  %i.ba = or i64 %i.az, %i.as
  store i64 %i.ba, ptr %i.at, align 8, !tbaa !10
  %indvars.iv.next.i.prol = add nsw i64 %i.ae, -2 ; 3 uses
  %indvars.i.prol = trunc nsw i64 %indvars.iv.next.i.prol to i32
  %i.bb = sub nuw nsw i32 %indvars.i.prol, %.sroa.speculated.i.i
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !10
  %i.bf = shl i64 %i.be, %i.al                    ; 2 uses
  %i.bg = and i64 %indvars.iv.next.i.prol, 4294967295
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.bg ; 2 uses
  store i64 %i.bf, ptr %i.bh, align 8, !tbaa !10
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.next.i1.i, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.unr = phi ptr [ %i.at, %.lr.ph.preheader.i ], [ %i.bh, %.lr.ph.i.prol ]
  %.unr30 = phi i64 [ %i.as, %.lr.ph.preheader.i ], [ %i.bf, %.lr.ph.i.prol ]
  %i.bi = icmp eq i32 %i.ax, %.sroa.speculated.i.i
  br i1 %i.bi, label %_ZNK4llvh5APInt3shlEj.exit, label %.lr.ph.i

bb.g:                                             ; preds = %bb.f
  %i.bj = zext nneg i32 %.sroa.speculated.i.i to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.bj
  %i.bl = sub nuw nsw i32 %i.af, %.sroa.speculated.i.i
  %i.bm = shl nuw nsw i32 %i.bl, 3
  %i.bn = zext nneg i32 %i.bm to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bk, ptr nonnull align 8 %i.ab, i64 %i.bn, i1 false)
  br label %_ZNK4llvh5APInt3shlEj.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.bo = phi ptr [ %i.cj, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ]
  %i.bp = phi i64 [ %i.ch, %.lr.ph.i ], [ %.unr30, %.lr.ph.i.prol.loopexit ]
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.bq = load i64, ptr %gep.i, align 8, !tbaa !10
  %i.br = lshr i64 %i.bq, %i.an
  %i.bs = or i64 %i.br, %i.bp
  store i64 %i.bs, ptr %i.bo, align 8, !tbaa !10
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %indvars.i = trunc i64 %indvars.iv.next.i to i32
  %i.bt = sub nuw i32 %indvars.i, %.sroa.speculated.i.i
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !10
  %i.bx = shl i64 %i.bw, %i.al                    ; 2 uses
  %i.by = and i64 %indvars.iv.next.i, 4294967295
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.by ; 2 uses
  store i64 %i.bx, ptr %i.bz, align 8, !tbaa !10
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.ca = load i64, ptr %gep.i.1, align 8, !tbaa !10
  %i.cb = lshr i64 %i.ca, %i.an
  %i.cc = or i64 %i.cb, %i.bx
  store i64 %i.cc, ptr %i.bz, align 8, !tbaa !10
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 3 uses
  %indvars.i.1 = trunc i64 %indvars.iv.next.i.1 to i32 ; 2 uses
  %i.cd = sub nuw i32 %indvars.i.1, %.sroa.speculated.i.i
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !10
  %i.ch = shl i64 %i.cg, %i.al                    ; 2 uses
  %i.ci = and i64 %indvars.iv.next.i.1, 4294967295
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ci ; 2 uses
  store i64 %i.ch, ptr %i.cj, align 8, !tbaa !10
  %i.ck = icmp ult i32 %.sroa.speculated.i.i, %indvars.i.1
  br i1 %i.ck, label %.lr.ph.i, label %_ZNK4llvh5APInt3shlEj.exit

_ZNK4llvh5APInt3shlEj.exit:                       ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.g, %.lr.ph.i.i, %.preheader.i.i
  %i.cl = shl nuw nsw i32 %.sroa.speculated.i.i, 3
  %i.cm = zext nneg i32 %i.cl to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ab, i8 0, i64 %i.cm, i1 false)
  %i.cn = sub i32 0, %i.b
  %i.co = and i32 %i.cn, 63
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = lshr i64 -1, %i.cp
  %i.cr = add nuw nsw i64 %i.ae, 4294967295
  %i.cs = and i64 %i.cr, 4294967295
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.cs ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !10
  %i.cv = and i64 %i.cu, %i.cq
  store i64 %i.cv, ptr %i.ct, align 8, !tbaa !10
  %.pre = load i32, ptr %i.a, align 8, !tbaa !7   ; 8 uses
  %i.cw = sub i32 %.pre, %i.c                     ; 3 uses
  %i.cx = icmp ult i32 %.pre, 65
  br i1 %i.cx, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK4llvh5APInt3shlEj.exit.thread, %_ZNK4llvh5APInt3shlEj.exit
  %i.cy = phi i32 [ %i.w, %_ZNK4llvh5APInt3shlEj.exit.thread ], [ %i.cw, %_ZNK4llvh5APInt3shlEj.exit ]
  %.sroa.011.025 = phi i64 [ %i.v, %_ZNK4llvh5APInt3shlEj.exit.thread ], [ %i.ac, %_ZNK4llvh5APInt3shlEj.exit ] ; 2 uses
  %i.cz = phi i32 [ %i.b, %_ZNK4llvh5APInt3shlEj.exit.thread ], [ %.pre, %_ZNK4llvh5APInt3shlEj.exit ]
  %i.da = phi i64 [ %i.o, %_ZNK4llvh5APInt3shlEj.exit.thread ], [ %i.aj, %_ZNK4llvh5APInt3shlEj.exit ]
  %i.db = zext nneg i32 %i.cy to i64
  %i.dc = lshr i64 %i.da, %i.db
  %i.dd = or i64 %i.dc, %.sroa.011.025
  br label %_ZN4llvh5APIntD2Ev.exit

bb.i:                                             ; preds = %_ZNK4llvh5APInt3shlEj.exit
  %i.de = zext i32 %.pre to i64
  %i.df = add nuw nsw i64 %i.de, 63               ; 2 uses
  %i.dg = lshr i64 %i.df, 3
  %i.dh = and i64 %i.dg, 1073741816               ; 2 uses
  %i.di = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dh) #22, !noalias !95 ; 20 uses
  %i.dj = ptrtoint ptr %i.di to i64               ; 2 uses
  %i.dk = load ptr, ptr %1, align 8, !tbaa !9, !noalias !95
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.di, ptr align 8 %i.dk, i64 %i.dh, i1 false), !noalias !95
  %i.dl = lshr i64 %i.df, 6                       ; 4 uses
  %i.dm = trunc nuw nsw i64 %i.dl to i32          ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %.pre, %i.c
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dn = lshr i32 %i.cw, 6                       ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.dm, i32 %i.dn) ; 9 uses
  %i.do = and i32 %i.cw, 63                       ; 3 uses
  %i.dp = sub nsw i32 %i.dm, %.sroa.speculated.i.i.i.i ; 5 uses
  %i.dq = icmp eq i32 %i.do, 0
  br i1 %i.dq, label %bb.k, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.j
  %.not3137.not.i.i.i.i = icmp samesign ult i32 %i.dn, %i.dm
  br i1 %.not3137.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i
  %i.dr = zext nneg i32 %i.do to i64              ; 4 uses
  %i.ds = sub nuw nsw i32 64, %i.do
  %i.dt = zext nneg i32 %i.ds to i64              ; 3 uses
  %i.du = zext nneg i32 %.sroa.speculated.i.i.i.i to i64
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !10, !noalias !95
  %i.dx = lshr i64 %i.dw, %i.dr                   ; 3 uses
  store i64 %i.dx, ptr %i.di, align 8, !tbaa !10, !noalias !95
  %.not32.i1.i.i.i = icmp eq i32 %i.dp, 1
  br i1 %.not32.i1.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i.i.i.i
  %i.dy = zext i32 %i.dp to i64
  %i.dz = add nsw i64 %i.dy, -1                   ; 3 uses
  %xtraiter31 = and i64 %i.dz, 1
  %i.ea = icmp eq i32 %i.dp, 2
  br i1 %i.ea, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.dz, -2
  br label %.lr.ph.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.eb = zext nneg i32 %.sroa.speculated.i.i.i.i to i64
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.eb
  %i.ed = shl nuw nsw i32 %i.dp, 3
  %i.ee = zext nneg i32 %i.ed to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.di, ptr nonnull align 8 %i.ec, i64 %i.ee, i1 false), !noalias !95
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %indvars.iv.next.i2.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.preheader.new ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph.i.i.i ] ; 4 uses
  %i.ef = phi ptr [ %i.di, %.lr.ph.i.i.i.preheader.new ], [ %i.fh, %.lr.ph.i.i.i ]
  %i.eg = phi i64 [ %i.dx, %.lr.ph.i.i.i.preheader.new ], [ %i.fg, %.lr.ph.i.i.i ]
  %i.eh = phi i32 [ %.sroa.speculated.i.i.i.i, %.lr.ph.i.i.i.preheader.new ], [ %i.fc, %.lr.ph.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i ]
  %i.ei = add nsw i32 %i.eh, 1
  %i.ej = zext i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.ej
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !10, !noalias !95
  %i.em = shl i64 %i.el, %i.dt
  %i.en = or i64 %i.em, %i.eg
  store i64 %i.en, ptr %i.ef, align 8, !tbaa !10, !noalias !95
  %i.eo = trunc nuw i64 %indvars.iv.next.i2.i.i.i to i32
  %i.ep = add nsw i32 %.sroa.speculated.i.i.i.i, %i.eo ; 2 uses
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.eq
  %i.es = load i64, ptr %i.er, align 8, !tbaa !10, !noalias !95
  %i.et = lshr i64 %i.es, %i.dr                   ; 2 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv.next.i2.i.i.i ; 2 uses
  store i64 %i.et, ptr %i.eu, align 8, !tbaa !10, !noalias !95
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.next.i2.i.i.i, 1 ; 2 uses
  %i.ev = add nsw i32 %i.ep, 1
  %i.ew = zext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.ew
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !10, !noalias !95
  %i.ez = shl i64 %i.ey, %i.dt
  %i.fa = or i64 %i.ez, %i.et
  store i64 %i.fa, ptr %i.eu, align 8, !tbaa !10, !noalias !95
  %i.fb = trunc nuw i64 %indvars.iv.next.i.i.i.i to i32
  %i.fc = add nsw i32 %.sroa.speculated.i.i.i.i, %i.fb ; 3 uses
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.fd
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !10, !noalias !95
  %i.fg = lshr i64 %i.ff, %i.dr                   ; 3 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv.next.i.i.i.i ; 3 uses
  store i64 %i.fg, ptr %i.fh, align 8, !tbaa !10, !noalias !95
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.next.i2.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

.loopexit.i.i.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph.i.i.i
  %lcmp.mod37.not = icmp eq i64 %xtraiter31, 0
  br i1 %lcmp.mod37.not, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.loopexit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %indvars.iv.next.i2.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.1, %.loopexit.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi ptr [ %i.di, %.lr.ph.i.i.i.preheader ], [ %i.fh, %.loopexit.i.i.i.i.loopexit.unr-lcssa ]
  %.epil.init34 = phi i64 [ %i.dx, %.lr.ph.i.i.i.preheader ], [ %i.fg, %.loopexit.i.i.i.i.loopexit.unr-lcssa ]
  %.epil.init36 = phi i32 [ %.sroa.speculated.i.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.fc, %.loopexit.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod38 = trunc i64 %i.dz to i1
  tail call void @llvm.assume(i1 %lcmp.mod38)
  %i.fi = add nsw i32 %.epil.init36, 1
  %i.fj = zext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.fj
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !10, !noalias !95
  %i.fm = shl i64 %i.fl, %i.dt
  %i.fn = or i64 %i.fm, %.epil.init34
  store i64 %i.fn, ptr %.epil.init, align 8, !tbaa !10, !noalias !95
  %i.fo = trunc nuw i64 %indvars.iv.next.i2.i.i.i.epil.init to i32
  %i.fp = add i32 %.sroa.speculated.i.i.i.i, %i.fo
  %i.fq = zext i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.fq
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !10, !noalias !95
  %i.ft = lshr i64 %i.fs, %i.dr
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv.next.i2.i.i.i.epil.init
  store i64 %i.ft, ptr %i.fu, align 8, !tbaa !10, !noalias !95
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.epil.preheader, %.loopexit.i.i.i.i.loopexit.unr-lcssa, %bb.k, %.lr.ph.i.i.i.i, %.preheader.i.i.i.i
  %i.fv = zext nneg i32 %i.dp to i64
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.fv
  %i.fx = shl nuw nsw i32 %.sroa.speculated.i.i.i.i, 3
  %i.fy = zext nneg i32 %i.fx to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.fw, i8 0, i64 %i.fy, i1 false), !noalias !95
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.i.i.i.i, %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %min.iters.check = icmp ult i32 %.pre, 193
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i4.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.l
  %n.vec = and i64 %i.dl, 134217724               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %wide.load = load <2 x i64>, ptr %i.fz, align 8, !tbaa !10, !noalias !98
  %wide.load27 = load <2 x i64>, ptr %i.ga, align 8, !tbaa !10, !noalias !98
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %index ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16 ; 2 uses
  %wide.load28 = load <2 x i64>, ptr %i.gb, align 8, !tbaa !10, !noalias !98
  %wide.load29 = load <2 x i64>, ptr %i.gc, align 8, !tbaa !10, !noalias !98
  %i.gd = or <2 x i64> %wide.load28, %wide.load
  %i.ge = or <2 x i64> %wide.load29, %wide.load27
  store <2 x i64> %i.gd, ptr %i.gb, align 8, !tbaa !10, !noalias !98
  store <2 x i64> %i.ge, ptr %i.gc, align 8, !tbaa !10, !noalias !98
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gf = icmp eq i64 %index.next, %n.vec
  br i1 %i.gf, label %middle.block, label %vector.body, !llvm.loop !101

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dl, %n.vec
  br i1 %cmp.n, label %_ZN4llvh5APIntD2Ev.exit, label %.lr.ph.i.i.i.i4.preheader

.lr.ph.i.i.i.i4.preheader:                        ; preds = %bb.l, %middle.block
  %indvars.iv.i.i.i.i.ph = phi i64 [ 0, %bb.l ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i4

.lr.ph.i.i.i.i4:                                  ; preds = %.lr.ph.i.i.i.i4.preheader, %.lr.ph.i.i.i.i4
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i5, %.lr.ph.i.i.i.i4 ], [ %indvars.iv.i.i.i.i.ph, %.lr.ph.i.i.i.i4.preheader ] ; 3 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i.i.i.i
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !10, !noalias !98
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv.i.i.i.i ; 2 uses
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !10, !noalias !98
  %i.gk = or i64 %i.gj, %i.gh
  store i64 %i.gk, ptr %i.gi, align 8, !tbaa !10, !noalias !98
  %indvars.iv.next.i.i.i.i5 = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i5, %i.dl
  br i1 %exitcond.not.i.i.i.i, label %_ZN4llvh5APIntD2Ev.exit, label %.lr.ph.i.i.i.i4, !llvm.loop !102

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %.lr.ph.i.i.i.i4, %middle.block, %bb.h
  %.sroa.011.026 = phi i64 [ %.sroa.011.025, %bb.h ], [ %i.ac, %middle.block ], [ %i.ac, %.lr.ph.i.i.i.i4 ] ; 2 uses
  %i.gl = phi i32 [ %i.cz, %bb.h ], [ %.pre, %middle.block ], [ %.pre, %.lr.ph.i.i.i.i4 ]
  %.sroa.0.1 = phi i64 [ %i.dd, %bb.h ], [ %i.dj, %middle.block ], [ %i.dj, %.lr.ph.i.i.i.i4 ]
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.gl, ptr %i.gm, align 8, !tbaa !7, !alias.scope !98
  store i64 %.sroa.0.1, ptr %0, align 8, !alias.scope !98
  %i.gn = icmp eq i64 %.sroa.011.026, 0
  %or.cond = select i1 %i.n, i1 true, i1 %i.gn
  br i1 %or.cond, label %_ZN4llvh5APIntC2ERKS0_.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit
  %i.go = inttoptr i64 %.sroa.011.026 to ptr
  tail call void @_ZdaPv(ptr noundef nonnull %i.go) #23
  br label %_ZN4llvh5APIntC2ERKS0_.exit

_ZN4llvh5APIntC2ERKS0_.exit:                      ; preds = %bb.m, %_ZN4llvh5APIntD2Ev.exit, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt9getHiBitsEj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvh::APInt") align 8 captures(none) initializes((0, 12)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 5 uses
  %i.c = sub i32 %i.b, %2                         ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.d, align 8, !tbaa !7, !alias.scope !103
  %i.e = icmp ult i32 %i.b, 65
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %2, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %0, align 8, !tbaa !9, !alias.scope !103
  br label %_ZNK4llvh5APInt4lshrEj.exit

bb.d:                                             ; preds = %bb.b
  %i.g = load i64, ptr %1, align 8, !tbaa !9, !noalias !103
  %i.h = zext nneg i32 %i.c to i64
  %i.i = lshr i64 %i.g, %i.h
  store i64 %i.i, ptr %0, align 8, !tbaa !9, !alias.scope !103
  br label %_ZNK4llvh5APInt4lshrEj.exit

bb.e:                                             ; preds = %bb.a
  %i.j = zext i32 %i.b to i64
  %i.k = add nuw nsw i64 %i.j, 63                 ; 2 uses
  %i.l = lshr i64 %i.k, 3
  %i.m = and i64 %i.l, 1073741816                 ; 2 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #22, !noalias !103 ; 18 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !9, !alias.scope !103
  %i.o = load ptr, ptr %1, align 8, !tbaa !9, !noalias !103
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr align 8 %i.o, i64 %i.m, i1 false), !noalias !103
  %i.p = lshr i64 %i.k, 6
  %i.q = trunc nuw nsw i64 %i.p to i32            ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.b, %2
  br i1 %.not.i.i.i.i, label %_ZNK4llvh5APInt4lshrEj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = lshr i32 %i.c, 6                         ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.r) ; 9 uses
  %i.s = and i32 %i.c, 63                         ; 3 uses
  %i.t = sub nsw i32 %i.q, %.sroa.speculated.i.i.i.i ; 5 uses
  %i.u = icmp eq i32 %i.s, 0
  br i1 %i.u, label %bb.g, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.f
  %.not3137.not.i.i.i.i = icmp samesign ult i32 %i.r, %i.q
  br i1 %.not3137.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i
  %i.v = zext nneg i32 %i.s to i64                ; 4 uses
  %i.w = sub nuw nsw i32 64, %i.s
  %i.x = zext nneg i32 %i.w to i64                ; 3 uses
  %i.y = zext nneg i32 %.sroa.speculated.i.i.i.i to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !10, !noalias !103
  %i.ab = lshr i64 %i.aa, %i.v                    ; 3 uses
  store i64 %i.ab, ptr %i.n, align 8, !tbaa !10, !noalias !103
  %.not32.i1.i.i.i = icmp eq i32 %i.t, 1
  br i1 %.not32.i1.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i.i.i.i
  %i.ac = zext i32 %i.t to i64
  %i.ad = add nsw i64 %i.ac, -1                   ; 3 uses
  %xtraiter = and i64 %i.ad, 1
  %i.ae = icmp eq i32 %i.t, 2
  br i1 %i.ae, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.ad, -2
  br label %.lr.ph.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.af = zext nneg i32 %.sroa.speculated.i.i.i.i to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.af
  %i.ah = shl nuw nsw i32 %i.t, 3
  %i.ai = zext nneg i32 %i.ah to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %i.ag, i64 %i.ai, i1 false), !noalias !103
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %indvars.iv.next.i2.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.preheader.new ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph.i.i.i ] ; 4 uses
  %i.aj = phi ptr [ %i.n, %.lr.ph.i.i.i.preheader.new ], [ %i.bl, %.lr.ph.i.i.i ]
  %i.ak = phi i64 [ %i.ab, %.lr.ph.i.i.i.preheader.new ], [ %i.bk, %.lr.ph.i.i.i ]
  %i.al = phi i32 [ %.sroa.speculated.i.i.i.i, %.lr.ph.i.i.i.preheader.new ], [ %i.bg, %.lr.ph.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i ]
  %i.am = add nsw i32 %i.al, 1
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !10, !noalias !103
  %i.aq = shl i64 %i.ap, %i.x
  %i.ar = or i64 %i.aq, %i.ak
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !10, !noalias !103
  %i.as = trunc nuw i64 %indvars.iv.next.i2.i.i.i to i32
  %i.at = add nsw i32 %.sroa.speculated.i.i.i.i, %i.as ; 2 uses
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !10, !noalias !103
  %i.ax = lshr i64 %i.aw, %i.v                    ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.i2.i.i.i ; 2 uses
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !10, !noalias !103
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.next.i2.i.i.i, 1 ; 2 uses
  %i.az = add nsw i32 %i.at, 1
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !10, !noalias !103
  %i.bd = shl i64 %i.bc, %i.x
  %i.be = or i64 %i.bd, %i.ax
  store i64 %i.be, ptr %i.ay, align 8, !tbaa !10, !noalias !103
  %i.bf = trunc nuw i64 %indvars.iv.next.i.i.i.i to i32
  %i.bg = add nsw i32 %.sroa.speculated.i.i.i.i, %i.bf ; 3 uses
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !10, !noalias !103
  %i.bk = lshr i64 %i.bj, %i.v                    ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.i.i.i.i ; 3 uses
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !10, !noalias !103
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.next.i2.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

.loopexit.i.i.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.loopexit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %indvars.iv.next.i2.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.1, %.loopexit.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi ptr [ %i.n, %.lr.ph.i.i.i.preheader ], [ %i.bl, %.loopexit.i.i.i.i.loopexit.unr-lcssa ]
  %.epil.init3 = phi i64 [ %i.ab, %.lr.ph.i.i.i.preheader ], [ %i.bk, %.loopexit.i.i.i.i.loopexit.unr-lcssa ]
  %.epil.init5 = phi i32 [ %.sroa.speculated.i.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.bg, %.loopexit.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod6 = trunc i64 %i.ad to i1
  tail call void @llvm.assume(i1 %lcmp.mod6)
  %i.bm = add nsw i32 %.epil.init5, 1
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !10, !noalias !103
  %i.bq = shl i64 %i.bp, %i.x
  %i.br = or i64 %i.bq, %.epil.init3
  store i64 %i.br, ptr %.epil.init, align 8, !tbaa !10, !noalias !103
  %i.bs = trunc nuw i64 %indvars.iv.next.i2.i.i.i.epil.init to i32
  %i.bt = add i32 %.sroa.speculated.i.i.i.i, %i.bs
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !10, !noalias !103
  %i.bx = lshr i64 %i.bw, %i.v
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.i2.i.i.i.epil.init
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !10, !noalias !103
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.epil.preheader, %.loopexit.i.i.i.i.loopexit.unr-lcssa, %bb.g, %.lr.ph.i.i.i.i, %.preheader.i.i.i.i
  %i.bz = zext nneg i32 %i.t to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bz
  %i.cb = shl nuw nsw i32 %.sroa.speculated.i.i.i.i, 3
  %i.cc = zext nneg i32 %i.cb to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ca, i8 0, i64 %i.cc, i1 false), !noalias !103
  br label %_ZNK4llvh5APInt4lshrEj.exit

_ZNK4llvh5APInt4lshrEj.exit:                      ; preds = %bb.c, %bb.d, %bb.e, %.loopexit.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt9getLoBitsEj(ptr dead_on_unwind noalias nofree writable sret(%"class.llvh::APInt") align 8 captures(none) initializes((8, 12)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.c, align 8, !tbaa !7, !alias.scope !106
  %i.d = icmp ult i32 %i.b, 65                    ; 2 uses
  br i1 %i.d, label %_ZN4llvh5APIntC2Ejmb.exit.i, label %.loopexit.i._crit_edge.i.i

.loopexit.i._crit_edge.i.i:                       ; preds = %bb.a
  %i.e = zext i32 %i.b to i64
  %i.f = add nuw nsw i64 %i.e, 63                 ; 2 uses
  %i.g = lshr i64 %i.f, 3
  %i.h = and i64 %i.g, 1073741816                 ; 2 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #22, !noalias !106 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 0, i64 %i.h, i1 false), !noalias !106
  store i64 0, ptr %i.i, align 8, !tbaa !10, !noalias !106
  %i.j = sub i32 0, %i.b
  %i.k = and i32 %i.j, 63
  %i.l = zext nneg i32 %i.k to i64
  %i.m = lshr i64 -1, %i.l
  %.pre7.i.i = lshr i64 %i.f, 6
  %i.n = add nuw nsw i64 %.pre7.i.i, 4294967295
  %i.o = and i64 %i.n, 4294967295
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.o ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !10, !noalias !106
  %i.r = and i64 %i.q, %i.m
  store i64 %i.r, ptr %i.p, align 8, !tbaa !10, !noalias !106
  br label %_ZN4llvh5APIntC2Ejmb.exit.i

_ZN4llvh5APIntC2Ejmb.exit.i:                      ; preds = %.loopexit.i._crit_edge.i.i, %bb.a
  %.sink.i.i.i = phi ptr [ %i.i, %.loopexit.i._crit_edge.i.i ], [ %0, %bb.a ] ; 2 uses
  %i.s = phi ptr [ %i.i, %.loopexit.i._crit_edge.i.i ], [ null, %bb.a ] ; 4 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !9, !alias.scope !106
  %i.t = icmp eq i32 %2, 0
  br i1 %i.t, label %_ZN4llvh5APInt13getLowBitsSetEjj.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvh5APIntC2Ejmb.exit.i
  %i.u = icmp ult i32 %2, 65
  br i1 %i.u, label %_ZN4llvh5APInt15setBitsSlowCaseEjj.exit.sink.split.i.i.i, label %bb.c

_ZN4llvh5APInt15setBitsSlowCaseEjj.exit.sink.split.i.i.i: ; preds = %bb.b
  %i.v = sub nuw nsw i32 64, %2
  %i.w = zext nneg i32 %i.v to i64
  %i.x = lshr i64 -1, %i.w
  %i.y = load i64, ptr %.sink.i.i.i, align 8, !tbaa !9
  %i.z = or i64 %i.y, %i.x
  store i64 %i.z, ptr %.sink.i.i.i, align 8, !tbaa !9
  br label %_ZN4llvh5APInt13getLowBitsSetEjj.exit

bb.c:                                             ; preds = %bb.b
  %i.aa = lshr i32 %2, 6                          ; 2 uses
  %i.ab = and i32 %2, 63                          ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = sub nuw nsw i32 64, %i.ab
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = lshr i64 -1, %i.ad
  %i.af = zext nneg i32 %i.aa to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.af ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !10, !noalias !106
  %i.ai = or i64 %i.ah, %i.ae
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !10, !noalias !106
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i64 -1, ptr %i.s, align 8, !tbaa !10, !noalias !106
  %i.aj = icmp ugt i32 %2, 127
  br i1 %i.aj, label %.lr.ph.preheader.i.i.i.i, label %_ZN4llvh5APInt13getLowBitsSetEjj.exit

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.e
  %scevgep.i = getelementptr i8, ptr %i.s, i64 8
  %i.ak = shl nuw nsw i32 %i.aa, 3
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = add nsw i64 %i.al, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 -1, i64 %i.am, i1 false), !tbaa !10, !noalias !106
  br label %_ZN4llvh5APInt13getLowBitsSetEjj.exit

_ZN4llvh5APInt13getLowBitsSetEjj.exit:            ; preds = %_ZN4llvh5APIntC2Ejmb.exit.i, %_ZN4llvh5APInt15setBitsSlowCaseEjj.exit.sink.split.i.i.i, %bb.e, %.lr.ph.preheader.i.i.i.i
  br i1 %i.d, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvh5APInt13getLowBitsSetEjj.exit
  %i.an = load i64, ptr %1, align 8, !tbaa !9
  %i.ao = load i64, ptr %0, align 8, !tbaa !9
  %i.ap = and i64 %i.ao, %i.an
  store i64 %i.ap, ptr %0, align 8, !tbaa !9
  br label %_ZN4llvh5APIntaNERKS0_.exit

bb.g:                                             ; preds = %_ZN4llvh5APInt13getLowBitsSetEjj.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !9     ; 8 uses
  %i.ar = load ptr, ptr %1, align 8, !tbaa !9     ; 8 uses
  %i.as = zext i32 %i.b to i64
  %i.at = add nuw nsw i64 %i.as, 63
  %i.au = lshr i64 %i.at, 6                       ; 6 uses
  %min.iters.check = icmp ult i32 %i.b, 449
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.g
  %i.av = shl nuw nsw i64 %i.au, 3                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aq, i64 %i.av
  %scevgep4 = getelementptr i8, ptr %i.ar, i64 %i.av
  %bound0 = icmp ult ptr %i.aq, %scevgep4
  %bound1 = icmp ult ptr %i.ar, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.au, 134217724               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %wide.load = load <2 x i64>, ptr %i.aw, align 8, !tbaa !10, !alias.scope !109
  %wide.load5 = load <2 x i64>, ptr %i.ax, align 8, !tbaa !10, !alias.scope !109
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %index ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %wide.load6 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !10, !alias.scope !112, !noalias !109
  %wide.load7 = load <2 x i64>, ptr %i.az, align 8, !tbaa !10, !alias.scope !112, !noalias !109
  %i.ba = and <2 x i64> %wide.load6, %wide.load
  %i.bb = and <2 x i64> %wide.load7, %wide.load5
  store <2 x i64> %i.ba, ptr %i.ay, align 8, !tbaa !10, !alias.scope !112, !noalias !109
  store <2 x i64> %i.bb, ptr %i.az, align 8, !tbaa !10, !alias.scope !112, !noalias !109
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !114

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZN4llvh5APIntaNERKS0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck, %bb.g, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.g ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.au, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ], [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.i.i.i.prol
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !10
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.i.i.i.prol ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !10
  %i.bh = and i64 %i.bg, %i.be
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !10
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !115

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %i.bi = sub nsw i64 %indvars.iv.i.i.i.ph, %i.au
  %i.bj = icmp ugt i64 %i.bi, -4
  br i1 %i.bj, label %_ZN4llvh5APIntaNERKS0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.i.i.i
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !10
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.i.i.i ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !10
  %i.bo = and i64 %i.bn, %i.bl
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !10
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.next.i.i.i
end_hunk_0
begin_hunk_1_@_ZNK4llvh5APInt8byteSwapEv:bb.a

bb.f:                                             ; preds = %bb.a
  %i.am = add i32 %i.b, 63                        ; 3 uses
  %i.an = and i32 %i.am, -64                      ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !7
  %i.ap = icmp ult i32 %i.an, 65                  ; 2 uses
  br i1 %i.ap, label %_ZN4llvh5APIntC2Ejmb.exit24, label %.loopexit.i._crit_edge.i19

.loopexit.i._crit_edge.i19:                       ; preds = %bb.f
  %i.aq = lshr i32 %i.am, 3
  %i.ar = and i32 %i.aq, 536870904
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.as) #22 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.at, i8 0, i64 %i.as, i1 false)
  store i64 0, ptr %i.at, align 8, !tbaa !10
  %.pre = load i32, ptr %i.a, align 8, !tbaa !7
  br label %_ZN4llvh5APIntC2Ejmb.exit24

_ZN4llvh5APIntC2Ejmb.exit24:                      ; preds = %bb.f, %.loopexit.i._crit_edge.i19
  %i.au = phi i32 [ %.pre, %.loopexit.i._crit_edge.i19 ], [ %i.b, %bb.f ] ; 6 uses
  %i.av = phi ptr [ %i.at, %.loopexit.i._crit_edge.i19 ], [ null, %bb.f ] ; 24 uses
  store ptr %i.av, ptr %0, align 8, !tbaa !9
  %i.aw = zext i32 %i.au to i64
  %i.ax = add nuw nsw i64 %i.aw, 63               ; 2 uses
  %i.ay = lshr i64 %i.ax, 6                       ; 11 uses
  %.not25 = icmp eq i64 %i.ay, 0
  %i.az = ptrtoint ptr %i.av to i64
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvh5APIntC2Ejmb.exit24
  %.pre28 = load ptr, ptr %1, align 8, !tbaa !9   ; 6 uses
  %min.iters.check = icmp ult i32 %i.au, 833
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ba = shl nuw nsw i64 %i.ay, 3                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.av, i64 %i.ba
  %i.bb = shl nuw nsw i64 %i.ay, 3
  %i.bc = add nuw nsw i64 %i.bb, 34359738360
  %i.bd = and i64 %i.bc, 34359738360              ; 2 uses
  %i.be = add nuw nsw i64 %i.bd, 8
  %i.bf = sub nsw i64 %i.be, %i.ba
  %scevgep33 = getelementptr i8, ptr %.pre28, i64 %i.bf
  %i.bg = getelementptr i8, ptr %.pre28, i64 %i.bd
  %scevgep34 = getelementptr i8, ptr %i.bg, i64 8
  %bound0 = icmp ult ptr %i.av, %scevgep34
  %bound1 = icmp ult ptr %scevgep33, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ay, 134217724               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bh = xor i64 %index, -1
  %i.bi = add nsw i64 %i.ay, %i.bh
  %i.bj = and i64 %i.bi, 4294967295
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.pre28, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -8
  %i.bm = getelementptr inbounds i8, ptr %i.bk, i64 -24
  %wide.load = load <2 x i64>, ptr %i.bl, align 8, !tbaa !10, !alias.scope !148
  %wide.load35 = load <2 x i64>, ptr %i.bm, align 8, !tbaa !10, !alias.scope !148
  %i.bn = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load)
  %i.bo = shufflevector <2 x i64> %i.bn, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bp = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load35)
  %i.bq = shufflevector <2 x i64> %i.bp, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store <2 x i64> %i.bo, ptr %i.br, align 8, !tbaa !10, !alias.scope !151, !noalias !148
  store <2 x i64> %i.bq, ptr %i.bs, align 8, !tbaa !10, !alias.scope !151, !noalias !148
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !153

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %indvars.iv.ph, 1
  %i.bu = and i64 %i.ax, 64
  %lcmp.mod.not = icmp eq i64 %i.bu, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bv = xor i64 %indvars.iv.ph, -1
  %i.bw = add nsw i64 %i.ay, %i.bv
  %i.bx = and i64 %i.bw, 4294967294
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.pre28, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !10
  %i.ca = tail call noundef i64 @llvm.bswap.i64(i64 %i.bz)
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.ph
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !10
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.cc = icmp eq i64 %i.ay, %.neg
  br i1 %i.cc, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN4llvh5APIntC2Ejmb.exit24
  %.not15 = icmp eq i32 %i.an, %i.au
  br i1 %.not15, label %_ZN4llvh5APIntC2Ejmb.exit, label %bb.g

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.cd = xor i64 %indvars.iv, -1
  %i.ce = add nsw i64 %i.ay, %i.cd
  %i.cf = and i64 %i.ce, 4294967295
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.pre28, i64 %i.cf
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !10
  %i.ci = tail call noundef i64 @llvm.bswap.i64(i64 %i.ch)
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !10
  %reass.sub = sub i64 %i.ay, %indvars.iv
  %i.ck = add i64 %reass.sub, 4294967294
  %i.cl = and i64 %i.ck, 4294967295
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.pre28, i64 %i.cl
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !10
  %i.co = tail call noundef i64 @llvm.bswap.i64(i64 %i.cn)
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 %i.co, ptr %i.cq, align 8, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.not.1 = icmp eq i64 %indvars.iv.next.1, %i.ay
  br i1 %.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !154

bb.g:                                             ; preds = %._crit_edge
  %i.cr = sub i32 %i.an, %i.au                    ; 3 uses
  br i1 %i.ap, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.cs = icmp eq i32 %i.au, 0
  br i1 %i.cs, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i64 0, ptr %0, align 8, !tbaa !9
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit

bb.j:                                             ; preds = %bb.h
  %i.ct = zext nneg i32 %i.cr to i64
  %i.cu = lshr i64 %i.az, %i.ct
  store i64 %i.cu, ptr %0, align 8, !tbaa !9
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit

bb.k:                                             ; preds = %bb.g
  %i.cv = lshr i32 %i.am, 6                       ; 3 uses
  %i.cw = lshr i32 %i.cr, 6                       ; 2 uses
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.cv, i32 %i.cw) ; 9 uses
  %i.cx = and i32 %i.cr, 63                       ; 3 uses
  %i.cy = sub nsw i32 %i.cv, %.sroa.speculated.i.i.i ; 5 uses
  %i.cz = icmp eq i32 %i.cx, 0
  br i1 %i.cz, label %bb.l, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.k
  %.not3137.not.i.i.i = icmp samesign ult i32 %i.cw, %i.cv
  br i1 %.not3137.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.da = zext nneg i32 %i.cx to i64              ; 4 uses
  %i.db = sub nuw nsw i32 64, %i.cx
  %i.dc = zext nneg i32 %i.db to i64              ; 3 uses
  %i.dd = zext nneg i32 %.sroa.speculated.i.i.i to i64
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !10
  %i.dg = lshr i64 %i.df, %i.da                   ; 3 uses
  store i64 %i.dg, ptr %i.av, align 8, !tbaa !10
  %.not32.i1.i.i = icmp eq i32 %i.cy, 1
  br i1 %.not32.i1.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.i.i
  %i.dh = zext i32 %i.cy to i64
  %i.di = add nsw i64 %i.dh, -1                   ; 3 uses
  %xtraiter37 = and i64 %i.di, 1
  %i.dj = icmp eq i32 %i.cy, 2
  br i1 %i.dj, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.di, -2
  br label %.lr.ph.i.i

bb.l:                                             ; preds = %bb.k
  %i.dk = zext nneg i32 %.sroa.speculated.i.i.i to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.dk
  %i.dm = shl nuw nsw i32 %i.cy, 3
  %i.dn = zext nneg i32 %i.dm to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.av, ptr align 8 %i.dl, i64 %i.dn, i1 false)
  br label %.loopexit.i.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %indvars.iv.next.i2.i.i = phi i64 [ 1, %.lr.ph.i.i.preheader.new ], [ %indvars.iv.next.i.i.i.1, %.lr.ph.i.i ] ; 4 uses
  %i.do = phi ptr [ %i.av, %.lr.ph.i.i.preheader.new ], [ %i.eq, %.lr.ph.i.i ]
  %i.dp = phi i64 [ %i.dg, %.lr.ph.i.i.preheader.new ], [ %i.ep, %.lr.ph.i.i ]
  %i.dq = phi i32 [ %.sroa.speculated.i.i.i, %.lr.ph.i.i.preheader.new ], [ %i.el, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.dr = add nsw i32 %i.dq, 1
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ds
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !10
  %i.dv = shl i64 %i.du, %i.dc
  %i.dw = or i64 %i.dv, %i.dp
  store i64 %i.dw, ptr %i.do, align 8, !tbaa !10
  %i.dx = trunc nuw i64 %indvars.iv.next.i2.i.i to i32
  %i.dy = add nsw i32 %.sroa.speculated.i.i.i, %i.dx ; 2 uses
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.dz
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !10
  %i.ec = lshr i64 %i.eb, %i.da                   ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next.i2.i.i ; 2 uses
  store i64 %i.ec, ptr %i.ed, align 8, !tbaa !10
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.next.i2.i.i, 1 ; 2 uses
  %i.ee = add nsw i32 %i.dy, 1
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ef
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !10
  %i.ei = shl i64 %i.eh, %i.dc
  %i.ej = or i64 %i.ei, %i.ec
  store i64 %i.ej, ptr %i.ed, align 8, !tbaa !10
  %i.ek = trunc nuw i64 %indvars.iv.next.i.i.i to i32
  %i.el = add nsw i32 %.sroa.speculated.i.i.i, %i.ek ; 3 uses
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.em
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !10
  %i.ep = lshr i64 %i.eo, %i.da                   ; 3 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next.i.i.i ; 3 uses
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !10
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.next.i2.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i

.loopexit.i.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod42.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod42.not, label %.loopexit.i.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %indvars.iv.next.i2.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.i.1, %.loopexit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi ptr [ %i.av, %.lr.ph.i.i.preheader ], [ %i.eq, %.loopexit.i.i.i.loopexit.unr-lcssa ]
  %.epil.init39 = phi i64 [ %i.dg, %.lr.ph.i.i.preheader ], [ %i.ep, %.loopexit.i.i.i.loopexit.unr-lcssa ]
  %.epil.init41 = phi i32 [ %.sroa.speculated.i.i.i, %.lr.ph.i.i.preheader ], [ %i.el, %.loopexit.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod43 = trunc i64 %i.di to i1
  tail call void @llvm.assume(i1 %lcmp.mod43)
  %i.er = add nsw i32 %.epil.init41, 1
  %i.es = zext i32 %i.er to i64
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.es
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !10
  %i.ev = shl i64 %i.eu, %i.dc
  %i.ew = or i64 %i.ev, %.epil.init39
  store i64 %i.ew, ptr %.epil.init, align 8, !tbaa !10
  %i.ex = trunc nuw i64 %indvars.iv.next.i2.i.i.epil.init to i32
  %i.ey = add i32 %.sroa.speculated.i.i.i, %i.ex
  %i.ez = zext i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ez
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !10
  %i.fc = lshr i64 %i.fb, %i.da
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next.i2.i.i.epil.init
  store i64 %i.fc, ptr %i.fd, align 8, !tbaa !10
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.epil.preheader, %.loopexit.i.i.i.loopexit.unr-lcssa, %bb.l, %.lr.ph.i.i.i, %.preheader.i.i.i
  %i.fe = zext nneg i32 %i.cy to i64
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.fe
  %i.fg = shl nuw nsw i32 %.sroa.speculated.i.i.i, 3
  %i.fh = zext nneg i32 %i.fg to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ff, i8 0, i64 %i.fh, i1 false)
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit

_ZN4llvh5APInt11lshrInPlaceEj.exit:               ; preds = %bb.i, %bb.j, %.loopexit.i.i.i
  store i32 %i.au, ptr %i.ao, align 8, !tbaa !7
  br label %_ZN4llvh5APIntC2Ejmb.exit

_ZN4llvh5APIntC2Ejmb.exit:                        ; preds = %.loopexit.i._crit_edge.i, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i, %._crit_edge, %_ZN4llvh5APInt11lshrInPlaceEj.exit, %bb.e, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt11reverseBitsEv(ptr dead_on_unwind noalias nofree writable sret(%"class.llvh::APInt") align 8 captures(none) initializes((0, 12)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 31 uses
  %i.c = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.b)
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %.split, label %bb.f

.split:                                           ; preds = %bb.a
  %i.e = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.b, i1 true)
  switch i32 %i.e, label %bb.f [
    i32 6, label %bb.b
    i32 5, label %bb.c
    i32 4, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %.split
  %i.f = load i64, ptr %1, align 8, !tbaa !9      ; 8 uses
  %.sroa.410.0.extract.shift.i = lshr i64 %i.f, 8
  %.sroa.511.0.extract.shift.i = lshr i64 %i.f, 16
  %.sroa.612.0.extract.shift.i = lshr i64 %i.f, 24
  %.sroa.713.0.extract.shift.i = lshr i64 %i.f, 32
  %.sroa.814.0.extract.shift.i = lshr i64 %i.f, 40
  %.sroa.915.0.extract.shift.i = lshr i64 %i.f, 48
  %.sroa.1016.0.extract.shift.i = lshr i64 %i.f, 56
  %i.g = and i64 %i.f, 255
  %i.h = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !9
  %i.j = and i64 %.sroa.410.0.extract.shift.i, 255
  %i.k = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !9
  %i.m = and i64 %.sroa.511.0.extract.shift.i, 255
  %i.n = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !9
  %i.p = and i64 %.sroa.612.0.extract.shift.i, 255
  %i.q = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !9
  %i.s = and i64 %.sroa.713.0.extract.shift.i, 255
  %i.t = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !9
  %i.v = and i64 %.sroa.814.0.extract.shift.i, 255
  %i.w = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !9
  %i.y = and i64 %.sroa.915.0.extract.shift.i, 255
  %i.z = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %.sroa.1016.0.extract.shift.i
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !9
  %.sroa.10.0.insert.ext.i = zext i8 %i.i to i64
  %.sroa.10.0.insert.shift.i = shl nuw i64 %.sroa.10.0.insert.ext.i, 56
  %.sroa.9.0.insert.ext.i = zext i8 %i.l to i64
  %.sroa.9.0.insert.shift.i = shl nuw nsw i64 %.sroa.9.0.insert.ext.i, 48
  %.sroa.9.0.insert.insert.i = or disjoint i64 %.sroa.9.0.insert.shift.i, %.sroa.10.0.insert.shift.i
  %.sroa.8.0.insert.ext.i = zext i8 %i.o to i64
  %.sroa.8.0.insert.shift.i = shl nuw nsw i64 %.sroa.8.0.insert.ext.i, 40
  %.sroa.8.0.insert.insert.i = or disjoint i64 %.sroa.9.0.insert.insert.i, %.sroa.8.0.insert.shift.i
  %.sroa.7.0.insert.ext.i = zext i8 %i.r to i64
  %.sroa.7.0.insert.shift.i = shl nuw nsw i64 %.sroa.7.0.insert.ext.i, 32
  %.sroa.7.0.insert.insert.i = or disjoint i64 %.sroa.8.0.insert.insert.i, %.sroa.7.0.insert.shift.i
  %.sroa.6.0.insert.ext.i = zext i8 %i.u to i64
  %.sroa.6.0.insert.shift.i = shl nuw nsw i64 %.sroa.6.0.insert.ext.i, 24
  %.sroa.6.0.insert.insert.i = or disjoint i64 %.sroa.7.0.insert.insert.i, %.sroa.6.0.insert.shift.i
  %.sroa.5.0.insert.ext.i = zext i8 %i.x to i64
  %.sroa.5.0.insert.shift.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i, 16
  %.sroa.4.0.insert.ext.i = zext i8 %i.aa to i64
  %.sroa.4.0.insert.shift.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i, 8
  %.sroa.4.0.insert.mask.i = or disjoint i64 %.sroa.6.0.insert.insert.i, %.sroa.5.0.insert.shift.i
  %.sroa.0.0.insert.ext.i = zext i8 %i.ac to i64
  %.sroa.0.0.insert.mask.i = or i64 %.sroa.4.0.insert.mask.i, %.sroa.4.0.insert.shift.i
  %.sroa.0.0.insert.insert.i = or i64 %.sroa.0.0.insert.mask.i, %.sroa.0.0.insert.ext.i ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.ad, align 8, !tbaa !7
  %i.ae = icmp ult i32 %i.b, 65
  br i1 %i.ae, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i, label %.loopexit.i._crit_edge.i

_ZN4llvh5APInt15clearUnusedBitsEv.exit.i:         ; preds = %bb.b
  %i.af = sub nsw i32 0, %i.b
  %i.ag = and i32 %i.af, 63
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = lshr i64 -1, %i.ah
  %i.aj = and i64 %.sroa.0.0.insert.insert.i, %i.ai
  store i64 %i.aj, ptr %0, align 8, !tbaa !9
  br label %_ZN4llvh5APIntC2Ejmb.exit

.loopexit.i._crit_edge.i:                         ; preds = %bb.b
  %i.ak = zext i32 %i.b to i64
  %i.al = add nuw nsw i64 %i.ak, 63               ; 2 uses
  %i.am = lshr i64 %i.al, 3
  %i.an = and i64 %i.am, 1073741816               ; 2 uses
  %i.ao = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.an) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ao, i8 0, i64 %i.an, i1 false)
  store ptr %i.ao, ptr %0, align 8, !tbaa !9
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.ao, align 8, !tbaa !10
  %i.ap = sub i32 0, %i.b
  %i.aq = and i32 %i.ap, 63
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = lshr i64 -1, %i.ar
  %.pre7.i = lshr i64 %i.al, 6
  %i.at = add nuw nsw i64 %.pre7.i, 4294967295
  %i.au = and i64 %i.at, 4294967295
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.au ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !10
  %i.ax = and i64 %i.aw, %i.as
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !10
  br label %_ZN4llvh5APIntC2Ejmb.exit

bb.c:                                             ; preds = %.split
  %i.ay = load i64, ptr %1, align 8, !tbaa !9     ; 4 uses
  %.sroa.410.0.extract.shift.i3 = lshr i64 %i.ay, 8
  %.sroa.511.0.extract.shift.i4 = lshr i64 %i.ay, 16
  %.sroa.612.0.extract.shift.i5 = lshr i64 %i.ay, 24
  %.sroa.612.0.extract.trunc.i = and i64 %.sroa.612.0.extract.shift.i5, 255
  %i.az = and i64 %i.ay, 255
  %i.ba = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !9
  %i.bc = and i64 %.sroa.410.0.extract.shift.i3, 255
  %i.bd = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !9
  %i.bf = and i64 %.sroa.511.0.extract.shift.i4, 255
  %i.bg = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !9
  %i.bi = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %.sroa.612.0.extract.trunc.i
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !9
  %.sroa.6.0.insert.ext.i6 = zext i8 %i.bb to i64
  %.sroa.6.0.insert.shift.i7 = shl nuw nsw i64 %.sroa.6.0.insert.ext.i6, 24
  %.sroa.5.0.insert.ext.i8 = zext i8 %i.be to i64
  %.sroa.5.0.insert.shift.i9 = shl nuw nsw i64 %.sroa.5.0.insert.ext.i8, 16
  %.sroa.5.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.shift.i9, %.sroa.6.0.insert.shift.i7
  %.sroa.4.0.insert.ext.i10 = zext i8 %i.bh to i64
  %.sroa.4.0.insert.shift.i11 = shl nuw nsw i64 %.sroa.4.0.insert.ext.i10, 8
  %.sroa.4.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.insert.i, %.sroa.4.0.insert.shift.i11
  %.sroa.0.0.insert.ext.i12 = zext i8 %i.bj to i64
  %.sroa.0.0.insert.insert.i13 = or disjoint i64 %.sroa.4.0.insert.insert.i, %.sroa.0.0.insert.ext.i12 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.bk, align 8, !tbaa !7
  %i.bl = icmp ult i32 %i.b, 65
  br i1 %i.bl, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i19, label %.loopexit.i._crit_edge.i15

_ZN4llvh5APInt15clearUnusedBitsEv.exit.i19:       ; preds = %bb.c
  %i.bm = sub nsw i32 0, %i.b
  %i.bn = and i32 %i.bm, 63
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = lshr i64 -1, %i.bo
  %i.bq = and i64 %.sroa.0.0.insert.insert.i13, %i.bp
  store i64 %i.bq, ptr %0, align 8, !tbaa !9
  br label %_ZN4llvh5APIntC2Ejmb.exit

.loopexit.i._crit_edge.i15:                       ; preds = %bb.c
  %i.br = zext i32 %i.b to i64
  %i.bs = add nuw nsw i64 %i.br, 63               ; 2 uses
  %i.bt = lshr i64 %i.bs, 3
  %i.bu = and i64 %i.bt, 1073741816               ; 2 uses
  %i.bv = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bu) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bv, i8 0, i64 %i.bu, i1 false)
  store ptr %i.bv, ptr %0, align 8, !tbaa !9
  store i64 %.sroa.0.0.insert.insert.i13, ptr %i.bv, align 8, !tbaa !10
  %i.bw = sub i32 0, %i.b
  %i.bx = and i32 %i.bw, 63
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = lshr i64 -1, %i.by
  %.pre7.i18 = lshr i64 %i.bs, 6
  %i.ca = add nuw nsw i64 %.pre7.i18, 4294967295
  %i.cb = and i64 %i.ca, 4294967295
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.cb ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !10
  %i.ce = and i64 %i.cd, %i.bz
end_hunk_1
begin_hunk_2_@_ZN4llvh8APIntOps21GreatestCommonDivisorENS_5APIntES1_:bb.a
.split109:                                        ; preds = %bb.f
  %i.ar = icmp eq i64 %i.am, 0
  br i1 %i.ar, label %bb.i, label %bb.j

.lr.ph.i.i17:                                     ; preds = %bb.f
  %i.as = zext i32 %i.ap to i64
  %i.at = add nuw nsw i64 %i.as, 63
  %i.au = lshr i64 %i.at, 6                       ; 2 uses
  %i.av = trunc nuw nsw i64 %i.au to i32
  %i.aw = shl i32 %i.av, 6
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i17
  %indvars.iv.i18 = phi i64 [ %indvars.iv.next.i20, %bb.h ], [ %i.au, %.lr.ph.i.i17 ] ; 2 uses
  %.019.i.i19 = phi i32 [ %i.bd, %bb.h ], [ 0, %.lr.ph.i.i17 ] ; 2 uses
  %indvars.iv.next.i20 = add nsw i64 %indvars.iv.i18, -1 ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next.i20
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !10 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.h, label %.thread.i.i21

.thread.i.i21:                                    ; preds = %bb.g
  %i.ba = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ay, i1 true)
  %i.bb = trunc nuw nsw i64 %i.ba to i32
  %i.bc = or disjoint i32 %.019.i.i19, %i.bb
  br label %_ZNK4llvh5APIntntEv.exit28

bb.h:                                             ; preds = %bb.g
  %i.bd = add i32 %.019.i.i19, 64
  %i.be = icmp samesign ugt i64 %indvars.iv.i18, 1
  br i1 %i.be, label %bb.g, label %_ZNK4llvh5APIntntEv.exit28, !llvm.loop !90

_ZNK4llvh5APIntntEv.exit28:                       ; preds = %bb.h, %.thread.i.i21
  %.2.i.i23 = phi i32 [ %i.bc, %.thread.i.i21 ], [ %i.aw, %bb.h ]
  %i.bf = and i32 %i.ap, 63
  %.not.i.i24 = icmp eq i32 %i.bf, 0
  %.neg.i.i25 = or i32 %i.ap, -64
  %.neg15.i.i26 = select i1 %.not.i.i24, i32 0, i32 %.neg.i.i25
  %i.bg = add i32 %.2.i.i23, %.neg15.i.i26
  %i.bh = icmp eq i32 %i.bg, %i.ap
  br i1 %i.bh, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.split109, %_ZNK4llvh5APIntntEv.exit28
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.bi, align 8, !tbaa !7
  store i64 %i.ak, ptr %0, align 8
  store i32 0, ptr %i.a, align 8, !tbaa !7
  br label %bb.bb

bb.j:                                             ; preds = %.split109, %_ZNK4llvh5APIntntEv.exit28
  br i1 %i.c, label %bb.k, label %.lr.ph.i.i29

bb.k:                                             ; preds = %bb.j
  %i.bj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ak, i1 false)
  %i.bk = trunc nuw nsw i64 %i.bj to i32
  br label %_ZNK4llvh5APInt18countTrailingZerosEv.exit

.lr.ph.i.i29:                                     ; preds = %bb.j
  %i.bl = zext i32 %i.b to i64
  %i.bm = add nuw nsw i64 %i.bl, 63
  %i.bn = lshr i64 %i.bm, 6                       ; 2 uses
  %i.bo = trunc nuw nsw i64 %i.bn to i32
  %i.bp = shl i32 %i.bo, 6
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i.i29
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i29 ], [ %indvars.iv.next.i.i, %bb.m ] ; 2 uses
  %.01014.i.i = phi i32 [ 0, %.lr.ph.i.i29 ], [ %i.bt, %bb.m ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.i.i
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !10 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bt = add i32 %.01014.i.i, 64
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.bn
  br i1 %exitcond.not.i.i, label %_ZNK4llvh5APInt18countTrailingZerosEv.exit, label %bb.l, !llvm.loop !142

bb.n:                                             ; preds = %bb.l
  %i.bu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.br, i1 true)
  %i.bv = trunc nuw nsw i64 %i.bu to i32
  %i.bw = or disjoint i32 %.01014.i.i, %i.bv
  br label %_ZNK4llvh5APInt18countTrailingZerosEv.exit

_ZNK4llvh5APInt18countTrailingZerosEv.exit:       ; preds = %bb.m, %bb.k, %bb.n
  %.1.i.sink.i = phi i32 [ %i.bk, %bb.k ], [ %i.bw, %bb.n ], [ %i.bp, %bb.m ]
  %.sroa.speculated.i.i = tail call noundef i32 @llvm.umin.i32(i32 %i.b, i32 %.1.i.sink.i) ; 8 uses
  br i1 %i.aq, label %bb.o, label %.lr.ph.i.i30

bb.o:                                             ; preds = %_ZNK4llvh5APInt18countTrailingZerosEv.exit
  %i.bx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.am, i1 false)
  %i.by = trunc nuw nsw i64 %i.bx to i32
  br label %_ZNK4llvh5APInt18countTrailingZerosEv.exit37

.lr.ph.i.i30:                                     ; preds = %_ZNK4llvh5APInt18countTrailingZerosEv.exit
  %i.bz = zext i32 %i.ap to i64
  %i.ca = add nuw nsw i64 %i.bz, 63
  %i.cb = lshr i64 %i.ca, 6                       ; 2 uses
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = shl i32 %i.cc, 6
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i.i30
  %indvars.iv.i.i31 = phi i64 [ 0, %.lr.ph.i.i30 ], [ %indvars.iv.next.i.i35, %bb.q ] ; 2 uses
  %.01014.i.i32 = phi i32 [ 0, %.lr.ph.i.i30 ], [ %i.ch, %bb.q ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.i.i31
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !10 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ch = add i32 %.01014.i.i32, 64
  %indvars.iv.next.i.i35 = add nuw nsw i64 %indvars.iv.i.i31, 1 ; 2 uses
  %exitcond.not.i.i36 = icmp eq i64 %indvars.iv.next.i.i35, %i.cb
  br i1 %exitcond.not.i.i36, label %_ZNK4llvh5APInt18countTrailingZerosEv.exit37, label %bb.p, !llvm.loop !142

bb.r:                                             ; preds = %bb.p
  %i.ci = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cf, i1 true)
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = or disjoint i32 %.01014.i.i32, %i.cj
  br label %_ZNK4llvh5APInt18countTrailingZerosEv.exit37

_ZNK4llvh5APInt18countTrailingZerosEv.exit37:     ; preds = %bb.q, %bb.o, %bb.r
  %.1.i.sink.i33 = phi i32 [ %i.by, %bb.o ], [ %i.ck, %bb.r ], [ %i.cd, %bb.q ]
  %.sroa.speculated.i.i34 = tail call noundef i32 @llvm.umin.i32(i32 %i.ap, i32 %.1.i.sink.i33) ; 7 uses
  %i.cl = icmp ugt i32 %.sroa.speculated.i.i, %.sroa.speculated.i.i34
  br i1 %i.cl, label %bb.s, label %bb.y

bb.s:                                             ; preds = %_ZNK4llvh5APInt18countTrailingZerosEv.exit37
  %i.cm = sub nuw i32 %.sroa.speculated.i.i, %.sroa.speculated.i.i34 ; 4 uses
  br i1 %i.c, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.cn = icmp eq i32 %i.cm, %i.b
  br i1 %i.cn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i64 0, ptr %1, align 8, !tbaa !9
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit

bb.v:                                             ; preds = %bb.t
  %i.co = zext nneg i32 %i.cm to i64
  %i.cp = lshr i64 %i.ak, %i.co
  store i64 %i.cp, ptr %1, align 8, !tbaa !9
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit

bb.w:                                             ; preds = %bb.s
  %i.cq = zext i32 %i.b to i64
  %i.cr = add nuw nsw i64 %i.cq, 63
  %i.cs = lshr i64 %i.cr, 6
  %i.ct = trunc nuw nsw i64 %i.cs to i32          ; 3 uses
  %i.cu = lshr i32 %i.cm, 6                       ; 2 uses
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.ct, i32 %i.cu) ; 9 uses
  %i.cv = and i32 %i.cm, 63                       ; 3 uses
  %i.cw = sub nsw i32 %i.ct, %.sroa.speculated.i.i.i ; 5 uses
  %i.cx = icmp eq i32 %i.cv, 0
  br i1 %i.cx, label %bb.x, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.w
  %.not3137.not.i.i.i = icmp samesign ult i32 %i.cu, %i.ct
  br i1 %.not3137.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.cy = zext nneg i32 %i.cv to i64              ; 4 uses
  %i.cz = sub nuw nsw i32 64, %i.cv
  %i.da = zext nneg i32 %i.cz to i64              ; 3 uses
  %i.db = zext nneg i32 %.sroa.speculated.i.i.i to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !10
  %i.de = lshr i64 %i.dd, %i.cy                   ; 3 uses
  store i64 %i.de, ptr %i.al, align 8, !tbaa !10
  %.not32.i1.i.i = icmp eq i32 %i.cw, 1
  br i1 %.not32.i1.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i38.preheader

.lr.ph.i.i38.preheader:                           ; preds = %.lr.ph.i.i.i
  %i.df = zext i32 %i.cw to i64
  %i.dg = add nsw i64 %i.df, -1                   ; 3 uses
  %xtraiter264 = and i64 %i.dg, 1
  %i.dh = icmp eq i32 %i.cw, 2
  br i1 %i.dh, label %.lr.ph.i.i38.epil.preheader, label %.lr.ph.i.i38.preheader.new

.lr.ph.i.i38.preheader.new:                       ; preds = %.lr.ph.i.i38.preheader
  %unroll_iter273 = and i64 %i.dg, -2
  br label %.lr.ph.i.i38

bb.x:                                             ; preds = %bb.w
  %i.di = zext nneg i32 %.sroa.speculated.i.i.i to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.di
  %i.dk = shl nuw nsw i32 %i.cw, 3
  %i.dl = zext nneg i32 %i.dk to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.al, ptr align 8 %i.dj, i64 %i.dl, i1 false)
  br label %.loopexit.i.i.i

.lr.ph.i.i38:                                     ; preds = %.lr.ph.i.i38, %.lr.ph.i.i38.preheader.new
  %indvars.iv.next.i2.i.i = phi i64 [ 1, %.lr.ph.i.i38.preheader.new ], [ %indvars.iv.next.i.i.i.1, %.lr.ph.i.i38 ] ; 4 uses
  %i.dm = phi ptr [ %i.al, %.lr.ph.i.i38.preheader.new ], [ %i.eo, %.lr.ph.i.i38 ]
  %i.dn = phi i64 [ %i.de, %.lr.ph.i.i38.preheader.new ], [ %i.en, %.lr.ph.i.i38 ]
  %i.do = phi i32 [ %.sroa.speculated.i.i.i, %.lr.ph.i.i38.preheader.new ], [ %i.ej, %.lr.ph.i.i38 ]
  %niter274 = phi i64 [ 0, %.lr.ph.i.i38.preheader.new ], [ %niter274.next.1, %.lr.ph.i.i38 ]
  %i.dp = add nsw i32 %i.do, 1
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.dq
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !10
  %i.dt = shl i64 %i.ds, %i.da
  %i.du = or i64 %i.dt, %i.dn
  store i64 %i.du, ptr %i.dm, align 8, !tbaa !10
  %i.dv = trunc nuw i64 %indvars.iv.next.i2.i.i to i32
  %i.dw = add nsw i32 %.sroa.speculated.i.i.i, %i.dv ; 2 uses
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.dx
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !10
  %i.ea = lshr i64 %i.dz, %i.cy                   ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.i2.i.i ; 2 uses
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !10
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.next.i2.i.i, 1 ; 2 uses
  %i.ec = add nsw i32 %i.dw, 1
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ed
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !10
  %i.eg = shl i64 %i.ef, %i.da
  %i.eh = or i64 %i.eg, %i.ea
  store i64 %i.eh, ptr %i.eb, align 8, !tbaa !10
  %i.ei = trunc nuw i64 %indvars.iv.next.i.i.i to i32
  %i.ej = add nsw i32 %.sroa.speculated.i.i.i, %i.ei ; 3 uses
  %i.ek = zext i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ek
  %i.em = load i64, ptr %i.el, align 8, !tbaa !10
  %i.en = lshr i64 %i.em, %i.cy                   ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.i.i.i ; 3 uses
  store i64 %i.en, ptr %i.eo, align 8, !tbaa !10
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.next.i2.i.i, 2 ; 2 uses
  %niter274.next.1 = add nuw i64 %niter274, 2     ; 2 uses
  %niter274.ncmp.1 = icmp eq i64 %niter274.next.1, %unroll_iter273
  br i1 %niter274.ncmp.1, label %.loopexit.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i38

.loopexit.i.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i38
  %lcmp.mod271.not = icmp eq i64 %xtraiter264, 0
  br i1 %lcmp.mod271.not, label %.loopexit.i.i.i, label %.lr.ph.i.i38.epil.preheader

.lr.ph.i.i38.epil.preheader:                      ; preds = %.loopexit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i38.preheader
  %indvars.iv.next.i2.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i38.preheader ], [ %indvars.iv.next.i.i.i.1, %.loopexit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init266 = phi ptr [ %i.al, %.lr.ph.i.i38.preheader ], [ %i.eo, %.loopexit.i.i.i.loopexit.unr-lcssa ]
  %.epil.init268 = phi i64 [ %i.de, %.lr.ph.i.i38.preheader ], [ %i.en, %.loopexit.i.i.i.loopexit.unr-lcssa ]
  %.epil.init270 = phi i32 [ %.sroa.speculated.i.i.i, %.lr.ph.i.i38.preheader ], [ %i.ej, %.loopexit.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod272 = trunc i64 %i.dg to i1
  tail call void @llvm.assume(i1 %lcmp.mod272)
  %i.ep = add nsw i32 %.epil.init270, 1
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.eq
  %i.es = load i64, ptr %i.er, align 8, !tbaa !10
  %i.et = shl i64 %i.es, %i.da
  %i.eu = or i64 %i.et, %.epil.init268
  store i64 %i.eu, ptr %.epil.init266, align 8, !tbaa !10
  %i.ev = trunc nuw i64 %indvars.iv.next.i2.i.i.epil.init to i32
  %i.ew = add i32 %.sroa.speculated.i.i.i, %i.ev
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ex
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !10
  %i.fa = lshr i64 %i.ez, %i.cy
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.i2.i.i.epil.init
  store i64 %i.fa, ptr %i.fb, align 8, !tbaa !10
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i38.epil.preheader, %.loopexit.i.i.i.loopexit.unr-lcssa, %bb.x, %.lr.ph.i.i.i, %.preheader.i.i.i
  %i.fc = zext nneg i32 %i.cw to i64
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.fc
  %i.fe = shl nuw nsw i32 %.sroa.speculated.i.i.i, 3
  %i.ff = zext nneg i32 %i.fe to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.fd, i8 0, i64 %i.ff, i1 false)
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit

bb.y:                                             ; preds = %_ZNK4llvh5APInt18countTrailingZerosEv.exit37
  %i.fg = icmp ugt i32 %.sroa.speculated.i.i34, %.sroa.speculated.i.i
  br i1 %i.fg, label %bb.z, label %_ZN4llvh5APInt11lshrInPlaceEj.exit

bb.z:                                             ; preds = %bb.y
  %i.fh = sub nuw i32 %.sroa.speculated.i.i34, %.sroa.speculated.i.i ; 4 uses
  br i1 %i.aq, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.fi = icmp eq i32 %i.fh, %i.ap
  br i1 %i.fi, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i64 0, ptr %2, align 8, !tbaa !9
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit

bb.ac:                                            ; preds = %bb.aa
  %i.fj = zext nneg i32 %i.fh to i64
  %i.fk = lshr i64 %i.am, %i.fj
  store i64 %i.fk, ptr %2, align 8, !tbaa !9
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit

bb.ad:                                            ; preds = %bb.z
  %i.fl = zext i32 %i.ap to i64
  %i.fm = add nuw nsw i64 %i.fl, 63
  %i.fn = lshr i64 %i.fm, 6
  %i.fo = trunc nuw nsw i64 %i.fn to i32          ; 3 uses
  %i.fp = lshr i32 %i.fh, 6                       ; 2 uses
  %.sroa.speculated.i.i.i40 = tail call i32 @llvm.umin.i32(i32 %i.fo, i32 %i.fp) ; 9 uses
  %i.fq = and i32 %i.fh, 63                       ; 3 uses
  %i.fr = sub nsw i32 %i.fo, %.sroa.speculated.i.i.i40 ; 5 uses
  %i.fs = icmp eq i32 %i.fq, 0
  br i1 %i.fs, label %bb.ae, label %.preheader.i.i.i41

.preheader.i.i.i41:                               ; preds = %bb.ad
  %.not3137.not.i.i.i42 = icmp samesign ult i32 %i.fp, %i.fo
  br i1 %.not3137.not.i.i.i42, label %.lr.ph.i.i.i44, label %.loopexit.i.i.i43

.lr.ph.i.i.i44:                                   ; preds = %.preheader.i.i.i41
  %i.ft = zext nneg i32 %i.fq to i64              ; 4 uses
  %i.fu = sub nuw nsw i32 64, %i.fq
  %i.fv = zext nneg i32 %i.fu to i64              ; 3 uses
  %i.fw = zext nneg i32 %.sroa.speculated.i.i.i40 to i64
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.fw
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !10
  %i.fz = lshr i64 %i.fy, %i.ft                   ; 3 uses
  store i64 %i.fz, ptr %i.an, align 8, !tbaa !10
  %.not32.i1.i.i45 = icmp eq i32 %i.fr, 1
  br i1 %.not32.i1.i.i45, label %.loopexit.i.i.i43, label %.lr.ph.i.i46.preheader

.lr.ph.i.i46.preheader:                           ; preds = %.lr.ph.i.i.i44
  %i.ga = zext i32 %i.fr to i64
  %i.gb = add nsw i64 %i.ga, -1                   ; 3 uses
  %xtraiter = and i64 %i.gb, 1
  %i.gc = icmp eq i32 %i.fr, 2
  br i1 %i.gc, label %.lr.ph.i.i46.epil.preheader, label %.lr.ph.i.i46.preheader.new

.lr.ph.i.i46.preheader.new:                       ; preds = %.lr.ph.i.i46.preheader
  %unroll_iter = and i64 %i.gb, -2
  br label %.lr.ph.i.i46

bb.ae:                                            ; preds = %bb.ad
  %i.gd = zext nneg i32 %.sroa.speculated.i.i.i40 to i64
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.gd
  %i.gf = shl nuw nsw i32 %i.fr, 3
  %i.gg = zext nneg i32 %i.gf to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.an, ptr align 8 %i.ge, i64 %i.gg, i1 false)
  br label %.loopexit.i.i.i43

.lr.ph.i.i46:                                     ; preds = %.lr.ph.i.i46, %.lr.ph.i.i46.preheader.new
  %indvars.iv.next.i2.i.i47 = phi i64 [ 1, %.lr.ph.i.i46.preheader.new ], [ %indvars.iv.next.i.i.i48.1, %.lr.ph.i.i46 ] ; 4 uses
  %i.gh = phi ptr [ %i.an, %.lr.ph.i.i46.preheader.new ], [ %i.hj, %.lr.ph.i.i46 ]
  %i.gi = phi i64 [ %i.fz, %.lr.ph.i.i46.preheader.new ], [ %i.hi, %.lr.ph.i.i46 ]
  %i.gj = phi i32 [ %.sroa.speculated.i.i.i40, %.lr.ph.i.i46.preheader.new ], [ %i.he, %.lr.ph.i.i46 ]
  %niter = phi i64 [ 0, %.lr.ph.i.i46.preheader.new ], [ %niter.next.1, %.lr.ph.i.i46 ]
  %i.gk = add nsw i32 %i.gj, 1
  %i.gl = zext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.gl
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !10
  %i.go = shl i64 %i.gn, %i.fv
  %i.gp = or i64 %i.go, %i.gi
  store i64 %i.gp, ptr %i.gh, align 8, !tbaa !10
  %i.gq = trunc nuw i64 %indvars.iv.next.i2.i.i47 to i32
  %i.gr = add nsw i32 %.sroa.speculated.i.i.i40, %i.gq ; 2 uses
  %i.gs = zext i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.gs
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !10
  %i.gv = lshr i64 %i.gu, %i.ft                   ; 2 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next.i2.i.i47 ; 2 uses
  store i64 %i.gv, ptr %i.gw, align 8, !tbaa !10
  %indvars.iv.next.i.i.i48 = add nuw nsw i64 %indvars.iv.next.i2.i.i47, 1 ; 2 uses
  %i.gx = add nsw i32 %i.gr, 1
  %i.gy = zext i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.gy
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !10
  %i.hb = shl i64 %i.ha, %i.fv
  %i.hc = or i64 %i.hb, %i.gv
  store i64 %i.hc, ptr %i.gw, align 8, !tbaa !10
  %i.hd = trunc nuw i64 %indvars.iv.next.i.i.i48 to i32
  %i.he = add nsw i32 %.sroa.speculated.i.i.i40, %i.hd ; 3 uses
  %i.hf = zext i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.hf
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !10
  %i.hi = lshr i64 %i.hh, %i.ft                   ; 3 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next.i.i.i48 ; 3 uses
  store i64 %i.hi, ptr %i.hj, align 8, !tbaa !10
  %indvars.iv.next.i.i.i48.1 = add nuw nsw i64 %indvars.iv.next.i2.i.i47, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.i.i43.loopexit.unr-lcssa, label %.lr.ph.i.i46

.loopexit.i.i.i43.loopexit.unr-lcssa:             ; preds = %.lr.ph.i.i46
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.i.i43, label %.lr.ph.i.i46.epil.preheader

.lr.ph.i.i46.epil.preheader:                      ; preds = %.loopexit.i.i.i43.loopexit.unr-lcssa, %.lr.ph.i.i46.preheader
  %indvars.iv.next.i2.i.i47.epil.init = phi i64 [ 1, %.lr.ph.i.i46.preheader ], [ %indvars.iv.next.i.i.i48.1, %.loopexit.i.i.i43.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi ptr [ %i.an, %.lr.ph.i.i46.preheader ], [ %i.hj, %.loopexit.i.i.i43.loopexit.unr-lcssa ]
  %.epil.init260 = phi i64 [ %i.fz, %.lr.ph.i.i46.preheader ], [ %i.hi, %.loopexit.i.i.i43.loopexit.unr-lcssa ]
  %.epil.init262 = phi i32 [ %.sroa.speculated.i.i.i40, %.lr.ph.i.i46.preheader ], [ %i.he, %.loopexit.i.i.i43.loopexit.unr-lcssa ]
  %lcmp.mod263 = trunc i64 %i.gb to i1
  tail call void @llvm.assume(i1 %lcmp.mod263)
  %i.hk = add nsw i32 %.epil.init262, 1
  %i.hl = zext i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.hl
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !10
  %i.ho = shl i64 %i.hn, %i.fv
  %i.hp = or i64 %i.ho, %.epil.init260
  store i64 %i.hp, ptr %.epil.init, align 8, !tbaa !10
  %i.hq = trunc nuw i64 %indvars.iv.next.i2.i.i47.epil.init to i32
  %i.hr = add i32 %.sroa.speculated.i.i.i40, %i.hq
  %i.hs = zext i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.hs
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !10
  %i.hv = lshr i64 %i.hu, %i.ft
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next.i2.i.i47.epil.init
  store i64 %i.hv, ptr %i.hw, align 8, !tbaa !10
  br label %.loopexit.i.i.i43

.loopexit.i.i.i43:                                ; preds = %.lr.ph.i.i46.epil.preheader, %.loopexit.i.i.i43.loopexit.unr-lcssa, %bb.ae, %.lr.ph.i.i.i44, %.preheader.i.i.i41
  %i.hx = zext nneg i32 %i.fr to i64
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.hx
  %i.hz = shl nuw nsw i32 %.sroa.speculated.i.i.i40, 3
  %i.ia = zext nneg i32 %i.hz to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.hy, i8 0, i64 %i.ia, i1 false)
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit

_ZN4llvh5APInt11lshrInPlaceEj.exit:               ; preds = %.loopexit.i.i.i43, %bb.ac, %bb.ab, %.loopexit.i.i.i, %bb.v, %bb.u, %bb.y
  %.0 = phi i32 [ %.sroa.speculated.i.i, %bb.y ], [ %.sroa.speculated.i.i34, %.loopexit.i.i.i ], [ %.sroa.speculated.i.i34, %bb.u ], [ %.sroa.speculated.i.i34, %bb.v ], [ %.sroa.speculated.i.i, %.loopexit.i.i.i43 ], [ %.sroa.speculated.i.i, %bb.ab ], [ %.sroa.speculated.i.i, %bb.ac ] ; 6 uses
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit75

_ZN4llvh5APInt11lshrInPlaceEj.exit75:             ; preds = %_ZN4llvh5APInt11lshrInPlaceEj.exit75.backedge, %_ZN4llvh5APInt11lshrInPlaceEj.exit
  %i.ib = load i32, ptr %i.a, align 8, !tbaa !7   ; 8 uses
  %i.ic = icmp ult i32 %i.ib, 65
  br i1 %i.ic, label %_ZNK4llvh5APIntneERKS0_.exit, label %_ZNK4llvh5APIntneERKS0_.exit.thread

_ZNK4llvh5APIntneERKS0_.exit:                     ; preds = %_ZN4llvh5APInt11lshrInPlaceEj.exit75
  %i.id = load i64, ptr %1, align 8               ; 6 uses
  %i.ie = load i64, ptr %2, align 8               ; 5 uses
  %.not120 = icmp eq i64 %i.id, %i.ie
  br i1 %.not120, label %bb.ba, label %_ZNK4llvh5APInt3ugtERKS0_.exit.thread113

_ZNK4llvh5APIntneERKS0_.exit.thread:              ; preds = %_ZN4llvh5APInt11lshrInPlaceEj.exit75
  %i.if = zext i32 %i.ib to i64
  %i.ig = add nuw nsw i64 %i.if, 63               ; 2 uses
  %i.ih = lshr i64 %i.ig, 3
  %.idx.i.i.i = and i64 %i.ih, 1073741816
  %i.ii = load ptr, ptr %1, align 8               ; 7 uses
  %i.ij = load ptr, ptr %2, align 8               ; 7 uses
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ii, ptr %i.ij, i64 %.idx.i.i.i)
  %.not9.i.i.i.i.i.i.i.not = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  %i.ik = ptrtoint ptr %i.ii to i64               ; 4 uses
  %i.il = ptrtoint ptr %i.ij to i64               ; 3 uses
  br i1 %.not9.i.i.i.i.i.i.i.not, label %bb.ba, label %.thread111

.thread111:                                       ; preds = %_ZNK4llvh5APIntneERKS0_.exit.thread
  %i.im = lshr i64 %i.ig, 6                       ; 6 uses
  %.not.i.i.i.i235 = icmp eq i64 %i.im, 0
  br i1 %.not.i.i.i.i235, label %_ZNK4llvh5APInt3ugtERKS0_.exit.thread, label %.lr.ph

bb.af:                                            ; preds = %.lr.ph
  %.not.i.i.i.i = icmp eq i64 %i.in, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvh5APInt3ugtERKS0_.exit.thread, label %.lr.ph, !llvm.loop !81

.lr.ph:                                           ; preds = %.thread111, %bb.af
  %indvars.iv.i.i.i.i236 = phi i64 [ %i.in, %bb.af ], [ %i.im, %.thread111 ]
  %i.in = add nsw i64 %indvars.iv.i.i.i.i236, -1  ; 4 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.in
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !10 ; 2 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.in
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !10 ; 2 uses
  %.not13.i.i.i.i = icmp eq i64 %i.ip, %i.ir
  br i1 %.not13.i.i.i.i, label %bb.af, label %_ZNK4llvh5APInt3ugtERKS0_.exit, !llvm.loop !81

_ZNK4llvh5APInt3ugtERKS0_.exit:                   ; preds = %.lr.ph
  %.not = icmp ugt i64 %i.ip, %i.ir
  br i1 %.not, label %.lr.ph.i.i51, label %_ZNK4llvh5APInt3ugtERKS0_.exit.thread

_ZNK4llvh5APInt3ugtERKS0_.exit.thread113:         ; preds = %_ZNK4llvh5APIntneERKS0_.exit
  %i.is = inttoptr i64 %i.id to ptr
  %i.it = inttoptr i64 %i.ie to ptr
  %.not121 = icmp ugt i64 %i.id, %i.ie
  br i1 %.not121, label %_ZN4llvh5APIntmIERKS0_.exit.thread, label %_ZNK4llvh5APInt3ugtERKS0_.exit.thread

_ZN4llvh5APIntmIERKS0_.exit.thread:               ; preds = %_ZNK4llvh5APInt3ugtERKS0_.exit.thread113
  %i.iu = sub nuw i64 %i.id, %i.ie
  %i.iv = sub nsw i32 0, %i.ib
  %i.iw = and i32 %i.iv, 63
  %i.ix = zext nneg i32 %i.iw to i64
  %i.iy = lshr i64 -1, %i.ix
  %i.iz = and i64 %i.iu, %i.iy                    ; 3 uses
  store i64 %i.iz, ptr %1, align 8, !tbaa !9
  %i.ja = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.iz, i1 false)
  %i.jb = trunc nuw nsw i64 %i.ja to i32
  %.sroa.speculated.i.i60117 = tail call noundef i32 @llvm.umin.i32(i32 %i.ib, i32 %i.jb)
  %i.jc = sub i32 %.sroa.speculated.i.i60117, %.0 ; 2 uses
  %i.jd = icmp eq i32 %i.jc, %i.ib
  br i1 %i.jd, label %bb.am, label %bb.an

.lr.ph.i.i51:                                     ; preds = %_ZNK4llvh5APInt3ugtERKS0_.exit, %bb.ai
  %indvars.iv.i.i52 = phi i64 [ %indvars.iv.next.i.i54, %bb.ai ], [ 0, %_ZNK4llvh5APInt3ugtERKS0_.exit ] ; 3 uses
  %.02021.i.i = phi i1 [ %i.jm, %bb.ai ], [ true, %_ZNK4llvh5APInt3ugtERKS0_.exit ]
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %indvars.iv.i.i52 ; 2 uses
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !10 ; 4 uses
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv.i.i52
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !10 ; 3 uses
  br i1 %.02021.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i51
  %.neg.i.i53 = xor i64 %i.jh, -1
  %i.ji = add i64 %i.jf, %.neg.i.i53              ; 2 uses
  %i.jj = icmp uge i64 %i.ji, %i.jf
  br label %bb.ai

bb.ah:                                            ; preds = %.lr.ph.i.i51
  %i.jk = sub i64 %i.jf, %i.jh
  %i.jl = icmp ugt i64 %i.jh, %i.jf
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.sink.i.i = phi i64 [ %i.jk, %bb.ah ], [ %i.ji, %bb.ag ]
  %.1.in.i.i = phi i1 [ %i.jl, %bb.ah ], [ %i.jj, %bb.ag ]
  store i64 %.sink.i.i, ptr %i.je, align 8, !tbaa !10
  %indvars.iv.next.i.i54 = add nuw nsw i64 %indvars.iv.i.i52, 1 ; 2 uses
  %exitcond.not.i.i55 = icmp eq i64 %indvars.iv.next.i.i54, %i.im
  %i.jm = xor i1 %.1.in.i.i, true
  br i1 %exitcond.not.i.i55, label %_ZN4llvh5APIntmIERKS0_.exit, label %.lr.ph.i.i51, !llvm.loop !26

_ZN4llvh5APIntmIERKS0_.exit:                      ; preds = %bb.ai
  %i.jn = sub i32 0, %i.ib
  %i.jo = and i32 %i.jn, 63
  %i.jp = zext nneg i32 %i.jo to i64
  %i.jq = lshr i64 -1, %i.jp
  %i.jr = load ptr, ptr %1, align 8, !tbaa !9
  %i.js = add nuw nsw i64 %i.im, 4294967295
  %i.jt = and i64 %i.js, 4294967295
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %i.jt ; 2 uses
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !10
  %i.jw = and i64 %i.jv, %i.jq
  store i64 %i.jw, ptr %i.ju, align 8, !tbaa !10
  %i.jx = trunc nuw nsw i64 %i.im to i32          ; 4 uses
  %i.jy = load ptr, ptr %1, align 8, !tbaa !9     ; 17 uses
  %i.jz = shl i32 %i.jx, 6
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ak, %_ZN4llvh5APIntmIERKS0_.exit
  %indvars.iv.i.i57 = phi i64 [ 0, %_ZN4llvh5APIntmIERKS0_.exit ], [ %indvars.iv.next.i.i61, %bb.ak ] ; 2 uses
  %.01014.i.i58 = phi i32 [ 0, %_ZN4llvh5APIntmIERKS0_.exit ], [ %i.kd, %bb.ak ] ; 2 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %indvars.iv.i.i57
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !10 ; 2 uses
  %i.kc = icmp eq i64 %i.kb, 0
  br i1 %i.kc, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.kd = add i32 %.01014.i.i58, 64
  %indvars.iv.next.i.i61 = add nuw nsw i64 %indvars.iv.i.i57, 1 ; 2 uses
  %exitcond.not.i.i62 = icmp eq i64 %indvars.iv.next.i.i61, %i.im
  br i1 %exitcond.not.i.i62, label %_ZNK4llvh5APInt18countTrailingZerosEv.exit63, label %bb.aj, !llvm.loop !142

bb.al:                                            ; preds = %bb.aj
  %i.ke = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.kb, i1 true)
  %i.kf = trunc nuw nsw i64 %i.ke to i32
  %i.kg = or disjoint i32 %.01014.i.i58, %i.kf
  br label %_ZNK4llvh5APInt18countTrailingZerosEv.exit63

_ZNK4llvh5APInt18countTrailingZerosEv.exit63:     ; preds = %bb.ak, %bb.al
  %.1.i.sink.i59 = phi i32 [ %i.kg, %bb.al ], [ %i.jz, %bb.ak ]
  %.sroa.speculated.i.i60 = tail call noundef i32 @llvm.umin.i32(i32 %i.ib, i32 %.1.i.sink.i59) ; 2 uses
  %.not.i.i.i64 = icmp eq i32 %.sroa.speculated.i.i60, %.0
  br i1 %.not.i.i.i64, label %_ZN4llvh5APInt11lshrInPlaceEj.exit75.backedge, label %bb.ao

bb.am:                                            ; preds = %_ZN4llvh5APIntmIERKS0_.exit.thread
  store i64 0, ptr %1, align 8, !tbaa !9
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit75.backedge

bb.an:                                            ; preds = %_ZN4llvh5APIntmIERKS0_.exit.thread
  %i.kh = zext nneg i32 %i.jc to i64
  %i.ki = lshr i64 %i.iz, %i.kh
  store i64 %i.ki, ptr %1, align 8, !tbaa !9
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit75.backedge

bb.ao:                                            ; preds = %_ZNK4llvh5APInt18countTrailingZerosEv.exit63
  %i.kj = sub i32 %.sroa.speculated.i.i60, %.0    ; 2 uses
  %i.kk = lshr i32 %i.kj, 6                       ; 2 uses
  %.sroa.speculated.i.i.i65 = tail call i32 @llvm.umin.i32(i32 %i.jx, i32 %i.kk) ; 9 uses
  %i.kl = and i32 %i.kj, 63                       ; 3 uses
  %i.km = sub nsw i32 %i.jx, %.sroa.speculated.i.i.i65 ; 5 uses
  %i.kn = icmp eq i32 %i.kl, 0
  br i1 %i.kn, label %bb.ap, label %.preheader.i.i.i66

.preheader.i.i.i66:                               ; preds = %bb.ao
  %.not3137.not.i.i.i67 = icmp samesign ult i32 %i.kk, %i.jx
  br i1 %.not3137.not.i.i.i67, label %.lr.ph.i.i.i69, label %.loopexit.i.i.i68

.lr.ph.i.i.i69:                                   ; preds = %.preheader.i.i.i66
  %i.ko = zext nneg i32 %i.kl to i64              ; 4 uses
  %i.kp = sub nuw nsw i32 64, %i.kl
  %i.kq = zext nneg i32 %i.kp to i64              ; 3 uses
  %i.kr = zext nneg i32 %.sroa.speculated.i.i.i65 to i64
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %i.kr
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !10
  %i.ku = lshr i64 %i.kt, %i.ko                   ; 3 uses
  store i64 %i.ku, ptr %i.jy, align 8, !tbaa !10
  %.not32.i1.i.i70 = icmp eq i32 %i.km, 1
  br i1 %.not32.i1.i.i70, label %.loopexit.i.i.i68, label %.lr.ph.i.i71.preheader

.lr.ph.i.i71.preheader:                           ; preds = %.lr.ph.i.i.i69
  %i.kv = zext i32 %i.km to i64
  %i.kw = add nsw i64 %i.kv, -1                   ; 3 uses
  %xtraiter275 = and i64 %i.kw, 1
  %i.kx = icmp eq i32 %i.km, 2
  br i1 %i.kx, label %.lr.ph.i.i71.epil.preheader, label %.lr.ph.i.i71.preheader.new

.lr.ph.i.i71.preheader.new:                       ; preds = %.lr.ph.i.i71.preheader
  %unroll_iter284 = and i64 %i.kw, -2
  br label %.lr.ph.i.i71

bb.ap:                                            ; preds = %bb.ao
  %i.ky = zext nneg i32 %.sroa.speculated.i.i.i65 to i64
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %i.ky
  %i.la = shl nuw nsw i32 %i.km, 3
  %i.lb = zext nneg i32 %i.la to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jy, ptr align 8 %i.kz, i64 %i.lb, i1 false)
  br label %.loopexit.i.i.i68

.lr.ph.i.i71:                                     ; preds = %.lr.ph.i.i71, %.lr.ph.i.i71.preheader.new
  %indvars.iv.next.i2.i.i72 = phi i64 [ 1, %.lr.ph.i.i71.preheader.new ], [ %indvars.iv.next.i.i.i73.1, %.lr.ph.i.i71 ] ; 4 uses
  %i.lc = phi ptr [ %i.jy, %.lr.ph.i.i71.preheader.new ], [ %i.me, %.lr.ph.i.i71 ]
  %i.ld = phi i64 [ %i.ku, %.lr.ph.i.i71.preheader.new ], [ %i.md, %.lr.ph.i.i71 ]
  %i.le = phi i32 [ %.sroa.speculated.i.i.i65, %.lr.ph.i.i71.preheader.new ], [ %i.lz, %.lr.ph.i.i71 ]
  %niter285 = phi i64 [ 0, %.lr.ph.i.i71.preheader.new ], [ %niter285.next.1, %.lr.ph.i.i71 ]
  %i.lf = add nsw i32 %i.le, 1
  %i.lg = zext i32 %i.lf to i64
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %i.lg
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !10
  %i.lj = shl i64 %i.li, %i.kq
  %i.lk = or i64 %i.lj, %i.ld
  store i64 %i.lk, ptr %i.lc, align 8, !tbaa !10
  %i.ll = trunc nuw i64 %indvars.iv.next.i2.i.i72 to i32
  %i.lm = add nsw i32 %.sroa.speculated.i.i.i65, %i.ll ; 2 uses
  %i.ln = zext i32 %i.lm to i64
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %i.ln
  %i.lp = load i64, ptr %i.lo, align 8, !tbaa !10
  %i.lq = lshr i64 %i.lp, %i.ko                   ; 2 uses
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %indvars.iv.next.i2.i.i72 ; 2 uses
  store i64 %i.lq, ptr %i.lr, align 8, !tbaa !10
  %indvars.iv.next.i.i.i73 = add nuw nsw i64 %indvars.iv.next.i2.i.i72, 1 ; 2 uses
  %i.ls = add nsw i32 %i.lm, 1
  %i.lt = zext i32 %i.ls to i64
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %i.lt
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !10
  %i.lw = shl i64 %i.lv, %i.kq
  %i.lx = or i64 %i.lw, %i.lq
  store i64 %i.lx, ptr %i.lr, align 8, !tbaa !10
  %i.ly = trunc nuw i64 %indvars.iv.next.i.i.i73 to i32
  %i.lz = add nsw i32 %.sroa.speculated.i.i.i65, %i.ly ; 3 uses
  %i.ma = zext i32 %i.lz to i64
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %i.ma
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !10
  %i.md = lshr i64 %i.mc, %i.ko                   ; 3 uses
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %indvars.iv.next.i.i.i73 ; 3 uses
  store i64 %i.md, ptr %i.me, align 8, !tbaa !10
  %indvars.iv.next.i.i.i73.1 = add nuw nsw i64 %indvars.iv.next.i2.i.i72, 2 ; 2 uses
  %niter285.next.1 = add nuw i64 %niter285, 2     ; 2 uses
  %niter285.ncmp.1 = icmp eq i64 %niter285.next.1, %unroll_iter284
  br i1 %niter285.ncmp.1, label %.loopexit.i.i.i68.loopexit.unr-lcssa, label %.lr.ph.i.i71

.loopexit.i.i.i68.loopexit.unr-lcssa:             ; preds = %.lr.ph.i.i71
  %lcmp.mod282.not = icmp eq i64 %xtraiter275, 0
  br i1 %lcmp.mod282.not, label %.loopexit.i.i.i68, label %.lr.ph.i.i71.epil.preheader

.lr.ph.i.i71.epil.preheader:                      ; preds = %.loopexit.i.i.i68.loopexit.unr-lcssa, %.lr.ph.i.i71.preheader
  %indvars.iv.next.i2.i.i72.epil.init = phi i64 [ 1, %.lr.ph.i.i71.preheader ], [ %indvars.iv.next.i.i.i73.1, %.loopexit.i.i.i68.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init277 = phi ptr [ %i.jy, %.lr.ph.i.i71.preheader ], [ %i.me, %.loopexit.i.i.i68.loopexit.unr-lcssa ]
  %.epil.init279 = phi i64 [ %i.ku, %.lr.ph.i.i71.preheader ], [ %i.md, %.loopexit.i.i.i68.loopexit.unr-lcssa ]
  %.epil.init281 = phi i32 [ %.sroa.speculated.i.i.i65, %.lr.ph.i.i71.preheader ], [ %i.lz, %.loopexit.i.i.i68.loopexit.unr-lcssa ]
  %lcmp.mod283 = trunc i64 %i.kw to i1
  tail call void @llvm.assume(i1 %lcmp.mod283)
  %i.mf = add nsw i32 %.epil.init281, 1
  %i.mg = zext i32 %i.mf to i64
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %i.mg
  %i.mi = load i64, ptr %i.mh, align 8, !tbaa !10
  %i.mj = shl i64 %i.mi, %i.kq
  %i.mk = or i64 %i.mj, %.epil.init279
  store i64 %i.mk, ptr %.epil.init277, align 8, !tbaa !10
  %i.ml = trunc nuw i64 %indvars.iv.next.i2.i.i72.epil.init to i32
  %i.mm = add i32 %.sroa.speculated.i.i.i65, %i.ml
  %i.mn = zext i32 %i.mm to i64
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %i.mn
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !10
  %i.mq = lshr i64 %i.mp, %i.ko
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %indvars.iv.next.i2.i.i72.epil.init
  store i64 %i.mq, ptr %i.mr, align 8, !tbaa !10
  br label %.loopexit.i.i.i68

.loopexit.i.i.i68:                                ; preds = %.lr.ph.i.i71.epil.preheader, %.loopexit.i.i.i68.loopexit.unr-lcssa, %bb.ap, %.lr.ph.i.i.i69, %.preheader.i.i.i66
  %i.ms = zext nneg i32 %i.km to i64
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %i.ms
  %i.mu = shl nuw nsw i32 %.sroa.speculated.i.i.i65, 3
  %i.mv = zext nneg i32 %i.mu to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.mt, i8 0, i64 %i.mv, i1 false)
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit75.backedge

_ZNK4llvh5APInt3ugtERKS0_.exit.thread:            ; preds = %bb.af, %.thread111, %_ZNK4llvh5APInt3ugtERKS0_.exit.thread113, %_ZNK4llvh5APInt3ugtERKS0_.exit
  %i.mw = phi i64 [ %i.il, %_ZNK4llvh5APInt3ugtERKS0_.exit ], [ %i.ie, %_ZNK4llvh5APInt3ugtERKS0_.exit.thread113 ], [ %i.il, %.thread111 ], [ %i.il, %bb.af ]
  %i.mx = phi i64 [ %i.ik, %_ZNK4llvh5APInt3ugtERKS0_.exit ], [ %i.id, %_ZNK4llvh5APInt3ugtERKS0_.exit.thread113 ], [ %i.ik, %.thread111 ], [ %i.ik, %bb.af ]
  %i.my = phi ptr [ %i.ii, %_ZNK4llvh5APInt3ugtERKS0_.exit ], [ %i.is, %_ZNK4llvh5APInt3ugtERKS0_.exit.thread113 ], [ %i.ii, %.thread111 ], [ %i.ii, %bb.af ]
  %i.mz = phi ptr [ %i.ij, %_ZNK4llvh5APInt3ugtERKS0_.exit ], [ %i.it, %_ZNK4llvh5APInt3ugtERKS0_.exit.thread113 ], [ %i.ij, %.thread111 ], [ %i.ij, %bb.af ]
  %i.na = load i32, ptr %i.ao, align 8, !tbaa !7  ; 7 uses
  %i.nb = icmp ult i32 %i.na, 65
  br i1 %i.nb, label %_ZN4llvh5APIntmIERKS0_.exit87.thread, label %.lr.ph.preheader.i.i76

_ZN4llvh5APIntmIERKS0_.exit87.thread:             ; preds = %_ZNK4llvh5APInt3ugtERKS0_.exit.thread
  %i.nc = sub i64 %i.mw, %i.mx
  %i.nd = sub nsw i32 0, %i.na
  %i.ne = and i32 %i.nd, 63
  %i.nf = zext nneg i32 %i.ne to i64
  %i.ng = lshr i64 -1, %i.nf
  %i.nh = and i64 %i.nc, %i.ng                    ; 3 uses
  store i64 %i.nh, ptr %2, align 8, !tbaa !9
  %i.ni = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.nh, i1 false)
  %i.nj = trunc nuw nsw i64 %i.ni to i32
  %.sroa.speculated.i.i92119 = tail call noundef i32 @llvm.umin.i32(i32 %i.na, i32 %i.nj)
  %i.nk = sub i32 %.sroa.speculated.i.i92119, %.0 ; 2 uses
  %i.nl = icmp eq i32 %i.nk, %i.na
  br i1 %i.nl, label %bb.aw, label %bb.ax

.lr.ph.preheader.i.i76:                           ; preds = %_ZNK4llvh5APInt3ugtERKS0_.exit.thread
  %i.nm = zext i32 %i.na to i64
  %i.nn = add nuw nsw i64 %i.nm, 63
  %i.no = lshr i64 %i.nn, 6                       ; 4 uses
  br label %.lr.ph.i.i77

.lr.ph.i.i77:                                     ; preds = %bb.as, %.lr.ph.preheader.i.i76
  %indvars.iv.i.i78 = phi i64 [ 0, %.lr.ph.preheader.i.i76 ], [ %indvars.iv.next.i.i83, %bb.as ] ; 3 uses
  %.02021.i.i79 = phi i1 [ true, %.lr.ph.preheader.i.i76 ], [ %i.nx, %bb.as ]
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.mz, i64 %indvars.iv.i.i78 ; 2 uses
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !10 ; 4 uses
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.my, i64 %indvars.iv.i.i78
  %i.ns = load i64, ptr %i.nr, align 8, !tbaa !10 ; 3 uses
  br i1 %.02021.i.i79, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i77
  %.neg.i.i80 = xor i64 %i.ns, -1
  %i.nt = add i64 %i.nq, %.neg.i.i80              ; 2 uses
  %i.nu = icmp uge i64 %i.nt, %i.nq
  br label %bb.as

bb.ar:                                            ; preds = %.lr.ph.i.i77
  %i.nv = sub i64 %i.nq, %i.ns
  %i.nw = icmp ugt i64 %i.ns, %i.nq
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.sink.i.i81 = phi i64 [ %i.nv, %bb.ar ], [ %i.nt, %bb.aq ]
  %.1.in.i.i82 = phi i1 [ %i.nw, %bb.ar ], [ %i.nu, %bb.aq ]
  store i64 %.sink.i.i81, ptr %i.np, align 8, !tbaa !10
  %indvars.iv.next.i.i83 = add nuw nsw i64 %indvars.iv.i.i78, 1 ; 2 uses
  %exitcond.not.i.i84 = icmp eq i64 %indvars.iv.next.i.i83, %i.no
  %i.nx = xor i1 %.1.in.i.i82, true
  br i1 %exitcond.not.i.i84, label %_ZN4llvh5APIntmIERKS0_.exit87, label %.lr.ph.i.i77, !llvm.loop !26

_ZN4llvh5APIntmIERKS0_.exit87:                    ; preds = %bb.as
  %i.ny = sub i32 0, %i.na
  %i.nz = and i32 %i.ny, 63
  %i.oa = zext nneg i32 %i.nz to i64
  %i.ob = lshr i64 -1, %i.oa
  %i.oc = load ptr, ptr %2, align 8, !tbaa !9
  %i.od = add nuw nsw i64 %i.no, 4294967295
  %i.oe = and i64 %i.od, 4294967295
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %i.oe ; 2 uses
  %i.og = load i64, ptr %i.of, align 8, !tbaa !10
  %i.oh = and i64 %i.og, %i.ob
  store i64 %i.oh, ptr %i.of, align 8, !tbaa !10
  %i.oi = trunc nuw nsw i64 %i.no to i32          ; 4 uses
  %i.oj = load ptr, ptr %2, align 8, !tbaa !9     ; 17 uses
  %i.ok = shl i32 %i.oi, 6
  br label %bb.at

bb.at:                                            ; preds = %bb.au, %_ZN4llvh5APIntmIERKS0_.exit87
  %indvars.iv.i.i89 = phi i64 [ 0, %_ZN4llvh5APIntmIERKS0_.exit87 ], [ %indvars.iv.next.i.i93, %bb.au ] ; 2 uses
  %.01014.i.i90 = phi i32 [ 0, %_ZN4llvh5APIntmIERKS0_.exit87 ], [ %i.oo, %bb.au ] ; 2 uses
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %indvars.iv.i.i89
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !10 ; 2 uses
  %i.on = icmp eq i64 %i.om, 0
  br i1 %i.on, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.oo = add i32 %.01014.i.i90, 64
  %indvars.iv.next.i.i93 = add nuw nsw i64 %indvars.iv.i.i89, 1 ; 2 uses
  %exitcond.not.i.i94 = icmp eq i64 %indvars.iv.next.i.i93, %i.no
  br i1 %exitcond.not.i.i94, label %_ZNK4llvh5APInt18countTrailingZerosEv.exit95, label %bb.at, !llvm.loop !142

bb.av:                                            ; preds = %bb.at
  %i.op = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.om, i1 true)
  %i.oq = trunc nuw nsw i64 %i.op to i32
  %i.or = or disjoint i32 %.01014.i.i90, %i.oq
  br label %_ZNK4llvh5APInt18countTrailingZerosEv.exit95

_ZNK4llvh5APInt18countTrailingZerosEv.exit95:     ; preds = %bb.au, %bb.av
  %.1.i.sink.i91 = phi i32 [ %i.or, %bb.av ], [ %i.ok, %bb.au ]
  %.sroa.speculated.i.i92 = tail call noundef i32 @llvm.umin.i32(i32 %i.na, i32 %.1.i.sink.i91) ; 2 uses
  %.not.i.i.i96 = icmp eq i32 %.sroa.speculated.i.i92, %.0
  br i1 %.not.i.i.i96, label %_ZN4llvh5APInt11lshrInPlaceEj.exit75.backedge, label %bb.ay

bb.aw:                                            ; preds = %_ZN4llvh5APIntmIERKS0_.exit87.thread
  store i64 0, ptr %2, align 8, !tbaa !9
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit75.backedge

bb.ax:                                            ; preds = %_ZN4llvh5APIntmIERKS0_.exit87.thread
  %i.os = zext nneg i32 %i.nk to i64
  %i.ot = lshr i64 %i.nh, %i.os
  store i64 %i.ot, ptr %2, align 8, !tbaa !9
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit75.backedge

bb.ay:                                            ; preds = %_ZNK4llvh5APInt18countTrailingZerosEv.exit95
  %i.ou = sub i32 %.sroa.speculated.i.i92, %.0    ; 2 uses
  %i.ov = lshr i32 %i.ou, 6                       ; 2 uses
  %.sroa.speculated.i.i.i97 = tail call i32 @llvm.umin.i32(i32 %i.oi, i32 %i.ov) ; 9 uses
  %i.ow = and i32 %i.ou, 63                       ; 3 uses
  %i.ox = sub nsw i32 %i.oi, %.sroa.speculated.i.i.i97 ; 5 uses
  %i.oy = icmp eq i32 %i.ow, 0
  br i1 %i.oy, label %bb.az, label %.preheader.i.i.i98

.preheader.i.i.i98:                               ; preds = %bb.ay
  %.not3137.not.i.i.i99 = icmp samesign ult i32 %i.ov, %i.oi
  br i1 %.not3137.not.i.i.i99, label %.lr.ph.i.i.i101, label %.loopexit.i.i.i100

.lr.ph.i.i.i101:                                  ; preds = %.preheader.i.i.i98
  %i.oz = zext nneg i32 %i.ow to i64              ; 4 uses
  %i.pa = sub nuw nsw i32 64, %i.ow
  %i.pb = zext nneg i32 %i.pa to i64              ; 3 uses
  %i.pc = zext nneg i32 %.sroa.speculated.i.i.i97 to i64
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %i.pc
  %i.pe = load i64, ptr %i.pd, align 8, !tbaa !10
  %i.pf = lshr i64 %i.pe, %i.oz                   ; 3 uses
  store i64 %i.pf, ptr %i.oj, align 8, !tbaa !10
  %.not32.i1.i.i102 = icmp eq i32 %i.ox, 1
  br i1 %.not32.i1.i.i102, label %.loopexit.i.i.i100, label %.lr.ph.i.i103.preheader

.lr.ph.i.i103.preheader:                          ; preds = %.lr.ph.i.i.i101
  %i.pg = zext i32 %i.ox to i64
  %i.ph = add nsw i64 %i.pg, -1                   ; 3 uses
  %xtraiter286 = and i64 %i.ph, 1
  %i.pi = icmp eq i32 %i.ox, 2
  br i1 %i.pi, label %.lr.ph.i.i103.epil.preheader, label %.lr.ph.i.i103.preheader.new

.lr.ph.i.i103.preheader.new:                      ; preds = %.lr.ph.i.i103.preheader
  %unroll_iter295 = and i64 %i.ph, -2
  br label %.lr.ph.i.i103

bb.az:                                            ; preds = %bb.ay
  %i.pj = zext nneg i32 %.sroa.speculated.i.i.i97 to i64
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %i.pj
  %i.pl = shl nuw nsw i32 %i.ox, 3
  %i.pm = zext nneg i32 %i.pl to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.oj, ptr align 8 %i.pk, i64 %i.pm, i1 false)
  br label %.loopexit.i.i.i100

.lr.ph.i.i103:                                    ; preds = %.lr.ph.i.i103, %.lr.ph.i.i103.preheader.new
  %indvars.iv.next.i2.i.i104 = phi i64 [ 1, %.lr.ph.i.i103.preheader.new ], [ %indvars.iv.next.i.i.i105.1, %.lr.ph.i.i103 ] ; 4 uses
  %i.pn = phi ptr [ %i.oj, %.lr.ph.i.i103.preheader.new ], [ %i.qp, %.lr.ph.i.i103 ]
  %i.po = phi i64 [ %i.pf, %.lr.ph.i.i103.preheader.new ], [ %i.qo, %.lr.ph.i.i103 ]
  %i.pp = phi i32 [ %.sroa.speculated.i.i.i97, %.lr.ph.i.i103.preheader.new ], [ %i.qk, %.lr.ph.i.i103 ]
  %niter296 = phi i64 [ 0, %.lr.ph.i.i103.preheader.new ], [ %niter296.next.1, %.lr.ph.i.i103 ]
  %i.pq = add nsw i32 %i.pp, 1
  %i.pr = zext i32 %i.pq to i64
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %i.pr
  %i.pt = load i64, ptr %i.ps, align 8, !tbaa !10
  %i.pu = shl i64 %i.pt, %i.pb
  %i.pv = or i64 %i.pu, %i.po
  store i64 %i.pv, ptr %i.pn, align 8, !tbaa !10
  %i.pw = trunc nuw i64 %indvars.iv.next.i2.i.i104 to i32
  %i.px = add nsw i32 %.sroa.speculated.i.i.i97, %i.pw ; 2 uses
  %i.py = zext i32 %i.px to i64
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %i.py
  %i.qa = load i64, ptr %i.pz, align 8, !tbaa !10
  %i.qb = lshr i64 %i.qa, %i.oz                   ; 2 uses
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %indvars.iv.next.i2.i.i104 ; 2 uses
  store i64 %i.qb, ptr %i.qc, align 8, !tbaa !10
  %indvars.iv.next.i.i.i105 = add nuw nsw i64 %indvars.iv.next.i2.i.i104, 1 ; 2 uses
  %i.qd = add nsw i32 %i.px, 1
  %i.qe = zext i32 %i.qd to i64
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %i.qe
  %i.qg = load i64, ptr %i.qf, align 8, !tbaa !10
  %i.qh = shl i64 %i.qg, %i.pb
  %i.qi = or i64 %i.qh, %i.qb
  store i64 %i.qi, ptr %i.qc, align 8, !tbaa !10
  %i.qj = trunc nuw i64 %indvars.iv.next.i.i.i105 to i32
  %i.qk = add nsw i32 %.sroa.speculated.i.i.i97, %i.qj ; 3 uses
  %i.ql = zext i32 %i.qk to i64
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %i.ql
  %i.qn = load i64, ptr %i.qm, align 8, !tbaa !10
  %i.qo = lshr i64 %i.qn, %i.oz                   ; 3 uses
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %indvars.iv.next.i.i.i105 ; 3 uses
  store i64 %i.qo, ptr %i.qp, align 8, !tbaa !10
  %indvars.iv.next.i.i.i105.1 = add nuw nsw i64 %indvars.iv.next.i2.i.i104, 2 ; 2 uses
  %niter296.next.1 = add nuw i64 %niter296, 2     ; 2 uses
  %niter296.ncmp.1 = icmp eq i64 %niter296.next.1, %unroll_iter295
  br i1 %niter296.ncmp.1, label %.loopexit.i.i.i100.loopexit.unr-lcssa, label %.lr.ph.i.i103

.loopexit.i.i.i100.loopexit.unr-lcssa:            ; preds = %.lr.ph.i.i103
  %lcmp.mod293.not = icmp eq i64 %xtraiter286, 0
  br i1 %lcmp.mod293.not, label %.loopexit.i.i.i100, label %.lr.ph.i.i103.epil.preheader

.lr.ph.i.i103.epil.preheader:                     ; preds = %.loopexit.i.i.i100.loopexit.unr-lcssa, %.lr.ph.i.i103.preheader
  %indvars.iv.next.i2.i.i104.epil.init = phi i64 [ 1, %.lr.ph.i.i103.preheader ], [ %indvars.iv.next.i.i.i105.1, %.loopexit.i.i.i100.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init288 = phi ptr [ %i.oj, %.lr.ph.i.i103.preheader ], [ %i.qp, %.loopexit.i.i.i100.loopexit.unr-lcssa ]
  %.epil.init290 = phi i64 [ %i.pf, %.lr.ph.i.i103.preheader ], [ %i.qo, %.loopexit.i.i.i100.loopexit.unr-lcssa ]
  %.epil.init292 = phi i32 [ %.sroa.speculated.i.i.i97, %.lr.ph.i.i103.preheader ], [ %i.qk, %.loopexit.i.i.i100.loopexit.unr-lcssa ]
  %lcmp.mod294 = trunc i64 %i.ph to i1
  tail call void @llvm.assume(i1 %lcmp.mod294)
  %i.qq = add nsw i32 %.epil.init292, 1
  %i.qr = zext i32 %i.qq to i64
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %i.qr
  %i.qt = load i64, ptr %i.qs, align 8, !tbaa !10
  %i.qu = shl i64 %i.qt, %i.pb
  %i.qv = or i64 %i.qu, %.epil.init290
  store i64 %i.qv, ptr %.epil.init288, align 8, !tbaa !10
  %i.qw = trunc nuw i64 %indvars.iv.next.i2.i.i104.epil.init to i32
  %i.qx = add i32 %.sroa.speculated.i.i.i97, %i.qw
  %i.qy = zext i32 %i.qx to i64
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %i.qy
  %i.ra = load i64, ptr %i.qz, align 8, !tbaa !10
  %i.rb = lshr i64 %i.ra, %i.oz
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %indvars.iv.next.i2.i.i104.epil.init
  store i64 %i.rb, ptr %i.rc, align 8, !tbaa !10
  br label %.loopexit.i.i.i100

.loopexit.i.i.i100:                               ; preds = %.lr.ph.i.i103.epil.preheader, %.loopexit.i.i.i100.loopexit.unr-lcssa, %bb.az, %.lr.ph.i.i.i101, %.preheader.i.i.i98
  %i.rd = zext nneg i32 %i.ox to i64
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %i.rd
  %i.rf = shl nuw nsw i32 %.sroa.speculated.i.i.i97, 3
  %i.rg = zext nneg i32 %i.rf to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.re, i8 0, i64 %i.rg, i1 false)
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit75.backedge

_ZN4llvh5APInt11lshrInPlaceEj.exit75.backedge:    ; preds = %.loopexit.i.i.i100, %_ZNK4llvh5APInt18countTrailingZerosEv.exit95, %bb.ax, %bb.aw, %.loopexit.i.i.i68, %_ZNK4llvh5APInt18countTrailingZerosEv.exit63, %bb.an, %bb.am
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit75, !llvm.loop !156

bb.ba:                                            ; preds = %_ZNK4llvh5APIntneERKS0_.exit.thread, %_ZNK4llvh5APIntneERKS0_.exit
  %i.rh = phi i64 [ %i.ik, %_ZNK4llvh5APIntneERKS0_.exit.thread ], [ %i.id, %_ZNK4llvh5APIntneERKS0_.exit ]
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ib, ptr %i.ri, align 8, !tbaa !7
  store i64 %i.rh, ptr %0, align 8
  store i32 0, ptr %i.a, align 8, !tbaa !7
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.i, %bb.e, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh8APIntOps18RoundDoubleToAPIntEdj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvh::APInt") align 8 captures(none) %0, double noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = bitcast double %1 to i64                 ; 3 uses
  %.not = icmp slt i64 %i.a, 0                    ; 3 uses
  %i.b = lshr i64 %i.a, 52
  %i.c = and i64 %i.b, 2047                       ; 6 uses
  %i.d = icmp samesign ult i64 %i.c, 1023
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.e, align 8, !tbaa !7
  %i.f = icmp ult i32 %2, 65
  br i1 %i.f, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i, label %.loopexit.i._crit_edge.i

_ZN4llvh5APInt15clearUnusedBitsEv.exit.i:         ; preds = %bb.b
  store i64 0, ptr %0, align 8, !tbaa !9
  br label %_ZN4llvh5APIntC2Ejmb.exit

.loopexit.i._crit_edge.i:                         ; preds = %bb.b
  %i.g = zext i32 %2 to i64
  %i.h = add nuw nsw i64 %i.g, 63                 ; 2 uses
  %i.i = lshr i64 %i.h, 3
  %i.j = and i64 %i.i, 1073741816                 ; 2 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.j, i1 false)
  store ptr %i.k, ptr %0, align 8, !tbaa !9
  store i64 0, ptr %i.k, align 8, !tbaa !10
  %i.l = sub i32 0, %2
  %i.m = and i32 %i.l, 63
  %i.n = zext nneg i32 %i.m to i64
  %i.o = lshr i64 -1, %i.n
  %.pre7.i = lshr i64 %i.h, 6
  %i.p = add nuw nsw i64 %.pre7.i, 4294967295
  %i.q = and i64 %i.p, 4294967295
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.q ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !10
  %i.t = and i64 %i.s, %i.o
  store i64 %i.t, ptr %i.r, align 8, !tbaa !10
  br label %_ZN4llvh5APIntC2Ejmb.exit

bb.c:                                             ; preds = %bb.a
  %i.u = and i64 %i.a, 4503599627370495
  %i.v = or disjoint i64 %i.u, 4503599627370496   ; 3 uses
  %i.w = icmp samesign ult i64 %i.c, 1075
  br i1 %i.w, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.x = sub nuw nsw i64 1075, %i.c
  %i.y = lshr i64 %i.v, %i.x                      ; 4 uses
  br i1 %.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.z = icmp ult i32 %2, 65
  br i1 %i.z, label %_ZN4llvh5APInt11tcIncrementEPmj.exit.thread1.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = zext i32 %2 to i64
  %i.ab = add nuw nsw i64 %i.aa, 63               ; 2 uses
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = and i64 %i.ac, 1073741816               ; 2 uses
  %i.ae = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ad) #22 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ae, i8 0, i64 %i.ad, i1 false)
  store i64 %i.y, ptr %i.ae, align 8, !tbaa !10
  %i.af = sub i32 0, %2
  %i.ag = and i32 %i.af, 63
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = lshr i64 -1, %i.ah                      ; 3 uses
  %.pre7.i28 = lshr i64 %i.ab, 6                  ; 5 uses
  %i.aj = add nuw nsw i64 %.pre7.i28, 4294967295
  %i.ak = and i64 %i.aj, 4294967295
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ak ; 6 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !10
  %i.an = and i64 %i.am, %i.ai
  store i64 %i.an, ptr %i.al, align 8, !tbaa !10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %min.iters.check144 = icmp ult i32 %2, 193
  br i1 %min.iters.check144, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph145

vector.ph145:                                     ; preds = %bb.f
  %n.vec146 = and i64 %.pre7.i28, 134217724       ; 3 uses
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph145
  %index148 = phi i64 [ 0, %vector.ph145 ], [ %index.next151, %vector.body147 ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index148 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %wide.load149 = load <2 x i64>, ptr %i.ao, align 8, !tbaa !10, !noalias !157
  %wide.load150 = load <2 x i64>, ptr %i.ap, align 8, !tbaa !10, !noalias !157
  %i.aq = xor <2 x i64> %wide.load149, splat (i64 -1)
  %i.ar = xor <2 x i64> %wide.load150, splat (i64 -1)
  store <2 x i64> %i.aq, ptr %i.ao, align 8, !tbaa !10, !noalias !157
  store <2 x i64> %i.ar, ptr %i.ap, align 8, !tbaa !10, !noalias !157
  %index.next151 = add nuw i64 %index148, 4       ; 2 uses
  %i.as = icmp eq i64 %index.next151, %n.vec146
  br i1 %i.as, label %middle.block152, label %vector.body147, !llvm.loop !160

middle.block152:                                  ; preds = %vector.body147
  %cmp.n153 = icmp eq i64 %.pre7.i28, %n.vec146
  br i1 %cmp.n153, label %.lr.ph.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.f, %middle.block152
  %indvars.iv.i.i.i.i.i.ph = phi i64 [ 0, %bb.f ], [ %n.vec146, %middle.block152 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.i.i.i.i.i ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !10, !noalias !157
  %i.av = xor i64 %i.au, -1
  store i64 %i.av, ptr %i.at, align 8, !tbaa !10, !noalias !157
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %.pre7.i28
  br i1 %exitcond.not.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !161

_ZN4llvh5APInt11tcIncrementEPmj.exit.thread1.i.i.i: ; preds = %bb.e
  %i.aw = sub nsw i32 0, %2
  %i.ax = and i32 %i.aw, 63
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = lshr i64 -1, %i.ay                      ; 2 uses
  %i.ba = xor i64 %i.y, -1
  %i.bb = and i64 %i.az, %i.ba
  %i.bc = add nuw i64 %i.bb, 1
  %i.bd = and i64 %i.bc, %i.az
  br label %_ZN4llvh5APIntD2Ev.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i, %middle.block152
  %i.be = ptrtoint ptr %i.ae to i64
  %i.bf = load i64, ptr %i.al, align 8, !tbaa !10, !noalias !157
  %i.bg = and i64 %i.bf, %i.ai
  store i64 %i.bg, ptr %i.al, align 8, !tbaa !10, !noalias !157
  %i.bh = load i64, ptr %i.ae, align 8, !tbaa !10, !noalias !157
  %i.bi = add i64 %i.bh, 1                        ; 2 uses
  store i64 %i.bi, ptr %i.ae, align 8, !tbaa !10, !noalias !157
  %.not.peel.i.i.i.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not.peel.i.i.i.i.i, label %.lr.ph.i.i.i2.i.i, label %_ZN4llvh5APInt11tcIncrementEPmj.exit.thread.i.i.i

.lr.ph.i.i.i2.i.i:                                ; preds = %.lr.ph.preheader.i.i.i.i.i, %.lr.ph.i.i.i2.i.i
  %indvars.iv.i.i.i3.i.i = phi i64 [ %indvars.iv.next.i.i.i4.i.i, %.lr.ph.i.i.i2.i.i ], [ 1, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.i.i.i3.i.i ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !10, !noalias !157
  %i.bl = add i64 %i.bk, 1                        ; 2 uses
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !10, !noalias !157
  %.not.i.i.i.i.i = icmp ne i64 %i.bl, 0
  %indvars.iv.next.i.i.i4.i.i = add nuw nsw i64 %indvars.iv.i.i.i3.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i = icmp eq i64 %indvars.iv.next.i.i.i4.i.i, %.pre7.i28
  %or.cond.i.i.i = select i1 %.not.i.i.i.i.i, i1 true, i1 %exitcond.not.i.i.i5.i.i
  br i1 %or.cond.i.i.i, label %_ZN4llvh5APInt11tcIncrementEPmj.exit.thread.i.i.i, label %.lr.ph.i.i.i2.i.i, !llvm.loop !16

_ZN4llvh5APInt11tcIncrementEPmj.exit.thread.i.i.i: ; preds = %.lr.ph.i.i.i2.i.i, %.lr.ph.preheader.i.i.i.i.i
  %i.bm = load i64, ptr %i.al, align 8, !tbaa !10, !noalias !157
  %i.bn = and i64 %i.bm, %i.ai
  store i64 %i.bn, ptr %i.al, align 8, !tbaa !10, !noalias !157
  br label %_ZN4llvh5APIntD2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.bo, align 8, !tbaa !7
  %i.bp = icmp ult i32 %2, 65
  br i1 %i.bp, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i37, label %.loopexit.i._crit_edge.i32
end_hunk_2
begin_hunk_3_@_ZN4llvh5APInt11ashrInPlaceERKS0_:bb.a
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = shl i32 %i.k, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.c ], [ %i.j, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.019.i.i.i.i.i = phi i32 [ %i.s, %bb.c ], [ 0, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, -1 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.i.i
  %i.n = load i64, ptr %i.m, align 8, !tbaa !10   ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.c, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.b
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = or disjoint i32 %.019.i.i.i.i.i, %i.q
  br label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.s = add i32 %.019.i.i.i.i.i, 64
  %i.t = icmp samesign ugt i64 %indvars.iv.i.i.i.i, 1
  br i1 %i.t, label %bb.b, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i, !llvm.loop !90

_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i:        ; preds = %bb.c, %.thread.i.i.i.i.i
  %.2.i.i.i.i.i = phi i32 [ %i.r, %.thread.i.i.i.i.i ], [ %i.l, %bb.c ]
  %i.u = and i32 %i.e, 63
  %.not.i.i.i.i.i = icmp eq i32 %i.u, 0
  %.neg.i.i.i.i.i = or i32 %i.e, -64
  %.neg15.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 0, i32 %.neg.i.i.i.i.i
  %i.v = add i32 %.neg15.i.i.i.i.i, %.2.i.i.i.i.i
  %i.w = sub i32 %i.e, %i.v
  %i.x = icmp ugt i32 %i.w, 64
  br i1 %i.x, label %_ZNK4llvh5APInt15getLimitedValueEm.exit, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i

_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i: ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i
  %.0.i.i.pre.i = load i64, ptr %.pre.i.i, align 8, !tbaa !9
  br label %_ZNK4llvh5APInt3ugtEm.exit.i

_ZNK4llvh5APInt3ugtEm.exit.i:                     ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i, %bb.a
  %.0.i.i.i = phi i64 [ %.0.i.i.pre.i, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i ], [ %i.g, %bb.a ]
  %i.y = icmp ugt i64 %.0.i.i.i, %i.c
  br i1 %i.y, label %_ZNK4llvh5APInt15getLimitedValueEm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvh5APInt3ugtEm.exit.i
  %spec.select.i.i = select i1 %i.f, ptr %1, ptr %.pre.i.i
  %.0.i.i = load i64, ptr %spec.select.i.i, align 8, !tbaa !9
  %i.z = trunc i64 %.0.i.i to i32
  br label %_ZNK4llvh5APInt15getLimitedValueEm.exit

_ZNK4llvh5APInt15getLimitedValueEm.exit:          ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i, %_ZNK4llvh5APInt3ugtEm.exit.i, %bb.d
  %i.aa = phi i32 [ %i.z, %bb.d ], [ %i.b, %_ZNK4llvh5APInt3ugtEm.exit.i ], [ %i.b, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i ] ; 3 uses
  %i.ab = icmp ult i32 %i.b, 65
  br i1 %i.ab, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i, label %bb.e

_ZN4llvh5APInt15clearUnusedBitsEv.exit.i:         ; preds = %_ZNK4llvh5APInt15getLimitedValueEm.exit
  %i.ac = load i64, ptr %0, align 8, !tbaa !9
  %i.ad = sub nuw nsw i32 64, %i.b
  %i.ae = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.af = shl i64 %i.ac, %i.ae
  %i.ag = ashr exact i64 %i.af, %i.ae
  %i.ah = icmp eq i32 %i.aa, %i.b
  %narrow.i = select i1 %i.ah, i32 63, i32 %i.aa
  %.pn.i = zext nneg i32 %narrow.i to i64
  %storemerge.i = ashr i64 %i.ag, %.pn.i
  %i.ai = sub nsw i32 0, %i.b
  %i.aj = and i32 %i.ai, 63
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = lshr i64 -1, %i.ak
  %i.am = and i64 %storemerge.i, %i.al
  store i64 %i.am, ptr %0, align 8, !tbaa !9
  br label %_ZN4llvh5APInt11ashrInPlaceEj.exit

bb.e:                                             ; preds = %_ZNK4llvh5APInt15getLimitedValueEm.exit
  tail call void @_ZN4llvh5APInt12ashrSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %i.aa)
  br label %_ZN4llvh5APInt11ashrInPlaceEj.exit

_ZN4llvh5APInt11ashrInPlaceEj.exit:               ; preds = %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4llvh5APInt12ashrSlowCaseEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 4 uses
  %i.c = add i32 %i.b, -1                         ; 2 uses
  %i.d = and i32 %i.c, 63
  %i.e = zext nneg i32 %i.d to i64
  %i.f = shl nuw i64 1, %i.e
  %i.g = icmp ult i32 %i.b, 65
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %i.i = lshr i32 %i.c, 6
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  %.in.i.i.i = select i1 %i.g, ptr %0, ptr %i.k
  %i.l = load i64, ptr %.in.i.i.i, align 8, !tbaa !9
  %i.m = and i64 %i.f, %i.l
  %i.n = icmp ne i64 %i.m, 0
  %i.o = lshr i32 %1, 6                           ; 7 uses
  %i.p = and i32 %1, 63                           ; 3 uses
  %i.q = zext i32 %i.b to i64
  %i.r = add nuw nsw i64 %i.q, 63
  %i.s = lshr i64 %i.r, 6                         ; 2 uses
  %i.t = trunc nuw nsw i64 %i.s to i32            ; 2 uses
  %i.u = sub nsw i32 %i.t, %i.o                   ; 3 uses
  %.not32 = icmp eq i32 %i.o, %i.t
  br i1 %.not32, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = add nuw nsw i64 %i.s, 4294967295
  %i.w = and i64 %i.v, 4294967295                 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.w ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !10
  %i.z = sub i32 0, %i.b
  %i.aa = and i32 %i.z, 63
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = shl i64 %i.y, %i.ab
  %i.ad = ashr exact i64 %i.ac, %i.ab
  store i64 %i.ad, ptr %i.x, align 8, !tbaa !10
  %i.ae = icmp eq i32 %i.p, 0
  br i1 %i.ae, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.af = add nsw i32 %i.u, -1                    ; 4 uses
  %.not3334 = icmp eq i32 %i.af, 0
  %.pre = zext nneg i32 %i.p to i64               ; 6 uses
  br i1 %.not3334, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ag = sub nuw nsw i32 64, %i.p
  %i.ah = zext nneg i32 %i.ag to i64              ; 3 uses
  %i.ai = zext i32 %i.af to i64                   ; 4 uses
  %xtraiter = and i64 %i.ai, 1
  %i.aj = icmp eq i32 %i.af, 1
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ai, 4294967294
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ak = load ptr, ptr %0, align 8, !tbaa !9     ; 2 uses
  %i.al = zext nneg i32 %i.o to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.al
  %i.an = shl nsw i32 %i.u, 3
  %i.ao = zext i32 %i.an to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ak, ptr nonnull align 8 %i.am, i64 %i.ao, i1 false)
  br label %bb.f

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod44 = trunc i32 %i.af to i1
  tail call void @llvm.assume(i1 %lcmp.mod44)
  %i.ap = load ptr, ptr %0, align 8, !tbaa !9     ; 3 uses
  %i.aq = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.ar = add i32 %i.o, %i.aq                     ; 2 uses
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !10
  %i.av = lshr i64 %i.au, %.pre
  %i.aw = add i32 %i.ar, 1
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !10
  %i.ba = shl i64 %i.az, %i.ah
  %i.bb = or i64 %i.ba, %i.av
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.epil.init
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !10
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader
  %.pre-phi38 = phi i64 [ 0, %.preheader ], [ %i.ai, %._crit_edge.loopexit.unr-lcssa ], [ %i.ai, %.epil.preheader ] ; 2 uses
  %i.bd = load ptr, ptr %0, align 8, !tbaa !9     ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.w
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !10
  %i.bg = lshr i64 %i.bf, %.pre
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.pre-phi38
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !10
  %i.bi = load ptr, ptr %0, align 8, !tbaa !9
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.pre-phi38 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !10
  %i.bl = shl i64 %i.bk, %.pre
  %i.bm = ashr exact i64 %i.bl, %.pre
  store i64 %i.bm, ptr %i.bj, align 8, !tbaa !10
  br label %bb.f

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.e ]
  %i.bn = load ptr, ptr %0, align 8, !tbaa !9     ; 3 uses
  %i.bo = trunc nuw i64 %indvars.iv to i32
  %i.bp = add nsw i32 %i.o, %i.bo                 ; 2 uses
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bq
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !10
  %i.bt = lshr i64 %i.bs, %.pre
  %i.bu = add nsw i32 %i.bp, 1
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !10
  %i.by = shl i64 %i.bx, %i.ah
  %i.bz = or i64 %i.by, %i.bt
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !10
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cb = load ptr, ptr %0, align 8, !tbaa !9     ; 3 uses
  %i.cc = trunc nuw i64 %indvars.iv.next to i32
  %i.cd = add nsw i32 %i.o, %i.cc                 ; 2 uses
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !10
  %i.ch = lshr i64 %i.cg, %.pre
  %i.ci = add nsw i32 %i.cd, 1
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !10
  %i.cm = shl i64 %i.cl, %i.ah
  %i.cn = or i64 %i.cm, %i.ch
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.next
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.e, !llvm.loop !190

bb.f:                                             ; preds = %bb.d, %._crit_edge, %bb.b
  %i.cp = load ptr, ptr %0, align 8, !tbaa !9
  %i.cq = zext i32 %i.u to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cq
  %i.cs = sext i1 %i.n to i8
  %i.ct = shl nuw nsw i32 %i.o, 3
  %i.cu = zext nneg i32 %i.ct to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cr, i8 %i.cs, i64 %i.cu, i1 false)
  %i.cv = load i32, ptr %i.a, align 8, !tbaa !7   ; 3 uses
  %i.cw = sub i32 0, %i.cv
  %i.cx = and i32 %i.cw, 63
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = lshr i64 -1, %i.cy                      ; 2 uses
  %i.da = icmp ult i32 %i.cv, 65
  br i1 %i.da, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.db = load i64, ptr %0, align 8, !tbaa !9
  %i.dc = and i64 %i.db, %i.cz
  store i64 %i.dc, ptr %0, align 8, !tbaa !9
  br label %_ZN4llvh5APInt15clearUnusedBitsEv.exit

bb.h:                                             ; preds = %bb.f
  %i.dd = load ptr, ptr %0, align 8, !tbaa !9
  %i.de = zext i32 %i.cv to i64
  %i.df = add nuw nsw i64 %i.de, 63
  %i.dg = lshr i64 %i.df, 6
  %i.dh = add nuw nsw i64 %i.dg, 4294967295
  %i.di = and i64 %i.dh, 4294967295
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.di ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !10
  %i.dl = and i64 %i.dk, %i.cz
  store i64 %i.dl, ptr %i.dj, align 8, !tbaa !10
  br label %_ZN4llvh5APInt15clearUnusedBitsEv.exit

_ZN4llvh5APInt15clearUnusedBitsEv.exit:           ; preds = %bb.h, %bb.g, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4llvh5APInt11lshrInPlaceERKS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 5 uses
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !7    ; 5 uses
  %i.f = icmp ult i32 %i.e, 65                    ; 2 uses
  %.pre.i.i = load ptr, ptr %1, align 8           ; 4 uses
  %i.g = ptrtoint ptr %.pre.i.i to i64
  br i1 %i.f, label %_ZNK4llvh5APInt3ugtEm.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a
  %i.h = zext i32 %i.e to i64
  %i.i = add nuw nsw i64 %i.h, 63
  %i.j = lshr i64 %i.i, 6                         ; 2 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = shl i32 %i.k, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.c ], [ %i.j, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.019.i.i.i.i.i = phi i32 [ %i.s, %bb.c ], [ 0, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, -1 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.i.i
  %i.n = load i64, ptr %i.m, align 8, !tbaa !10   ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.c, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.b
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = or disjoint i32 %.019.i.i.i.i.i, %i.q
  br label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.s = add i32 %.019.i.i.i.i.i, 64
  %i.t = icmp samesign ugt i64 %indvars.iv.i.i.i.i, 1
  br i1 %i.t, label %bb.b, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i, !llvm.loop !90

_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i:        ; preds = %bb.c, %.thread.i.i.i.i.i
  %.2.i.i.i.i.i = phi i32 [ %i.r, %.thread.i.i.i.i.i ], [ %i.l, %bb.c ]
  %i.u = and i32 %i.e, 63
  %.not.i.i.i.i.i = icmp eq i32 %i.u, 0
  %.neg.i.i.i.i.i = or i32 %i.e, -64
  %.neg15.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 0, i32 %.neg.i.i.i.i.i
  %i.v = add i32 %.neg15.i.i.i.i.i, %.2.i.i.i.i.i
  %i.w = sub i32 %i.e, %i.v
  %i.x = icmp ugt i32 %i.w, 64
  br i1 %i.x, label %_ZNK4llvh5APInt15getLimitedValueEm.exit, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i

_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i: ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i
  %.0.i.i.pre.i = load i64, ptr %.pre.i.i, align 8, !tbaa !9
  br label %_ZNK4llvh5APInt3ugtEm.exit.i

_ZNK4llvh5APInt3ugtEm.exit.i:                     ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i, %bb.a
  %.0.i.i.i = phi i64 [ %.0.i.i.pre.i, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i ], [ %i.g, %bb.a ]
  %i.y = icmp ugt i64 %.0.i.i.i, %i.c
  br i1 %i.y, label %_ZNK4llvh5APInt15getLimitedValueEm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvh5APInt3ugtEm.exit.i
  %spec.select.i.i = select i1 %i.f, ptr %1, ptr %.pre.i.i
  %.0.i.i = load i64, ptr %spec.select.i.i, align 8, !tbaa !9
  %i.z = trunc i64 %.0.i.i to i32
  br label %_ZNK4llvh5APInt15getLimitedValueEm.exit

_ZNK4llvh5APInt15getLimitedValueEm.exit:          ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i, %_ZNK4llvh5APInt3ugtEm.exit.i, %bb.d
  %i.aa = phi i32 [ %i.z, %bb.d ], [ %i.b, %_ZNK4llvh5APInt3ugtEm.exit.i ], [ %i.b, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i ] ; 5 uses
  %i.ab = icmp ult i32 %i.b, 65
  br i1 %i.ab, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZNK4llvh5APInt15getLimitedValueEm.exit
  %i.ac = icmp eq i32 %i.aa, %i.b
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %0, align 8, !tbaa !9
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit

bb.g:                                             ; preds = %bb.e
  %i.ad = load i64, ptr %0, align 8, !tbaa !9
  %i.ae = zext nneg i32 %i.aa to i64
  %i.af = lshr i64 %i.ad, %i.ae
  store i64 %i.af, ptr %0, align 8, !tbaa !9
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit

bb.h:                                             ; preds = %_ZNK4llvh5APInt15getLimitedValueEm.exit
  %i.ag = load ptr, ptr %0, align 8, !tbaa !9     ; 16 uses
  %i.ah = add nuw nsw i64 %i.c, 63
  %i.ai = lshr i64 %i.ah, 6
  %i.aj = trunc nuw nsw i64 %i.ai to i32          ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i, label %_ZN4llvh5APInt11lshrInPlaceEj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = lshr i32 %i.aa, 6                       ; 2 uses
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.aj, i32 %i.ak) ; 9 uses
  %i.al = and i32 %i.aa, 63                       ; 3 uses
  %i.am = sub nsw i32 %i.aj, %.sroa.speculated.i.i.i ; 5 uses
  %i.an = icmp eq i32 %i.al, 0
  br i1 %i.an, label %bb.j, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.i
  %.not3137.not.i.i.i = icmp samesign ult i32 %i.ak, %i.aj
  br i1 %.not3137.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.ao = zext nneg i32 %i.al to i64              ; 4 uses
  %i.ap = sub nuw nsw i32 64, %i.al
  %i.aq = zext nneg i32 %i.ap to i64              ; 3 uses
  %i.ar = zext nneg i32 %.sroa.speculated.i.i.i to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !10
  %i.au = lshr i64 %i.at, %i.ao                   ; 3 uses
  store i64 %i.au, ptr %i.ag, align 8, !tbaa !10
  %.not32.i1.i.i = icmp eq i32 %i.am, 1
  br i1 %.not32.i1.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.i.i
  %i.av = zext i32 %i.am to i64
  %i.aw = add nsw i64 %i.av, -1                   ; 3 uses
  %xtraiter = and i64 %i.aw, 1
  %i.ax = icmp eq i32 %i.am, 2
  br i1 %i.ax, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.aw, -2
  br label %.lr.ph.i.i

bb.j:                                             ; preds = %bb.i
  %i.ay = zext nneg i32 %.sroa.speculated.i.i.i to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ay
  %i.ba = shl nuw nsw i32 %i.am, 3
  %i.bb = zext nneg i32 %i.ba to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ag, ptr align 8 %i.az, i64 %i.bb, i1 false)
  br label %.loopexit.i.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %indvars.iv.next.i2.i.i = phi i64 [ 1, %.lr.ph.i.i.preheader.new ], [ %indvars.iv.next.i.i.i.1, %.lr.ph.i.i ] ; 4 uses
  %i.bc = phi ptr [ %i.ag, %.lr.ph.i.i.preheader.new ], [ %i.ce, %.lr.ph.i.i ]
  %i.bd = phi i64 [ %i.au, %.lr.ph.i.i.preheader.new ], [ %i.cd, %.lr.ph.i.i ]
  %i.be = phi i32 [ %.sroa.speculated.i.i.i, %.lr.ph.i.i.preheader.new ], [ %i.bz, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.bf = add nsw i32 %i.be, 1
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !10
  %i.bj = shl i64 %i.bi, %i.aq
  %i.bk = or i64 %i.bj, %i.bd
  store i64 %i.bk, ptr %i.bc, align 8, !tbaa !10
  %i.bl = trunc nuw i64 %indvars.iv.next.i2.i.i to i32
  %i.bm = add nsw i32 %.sroa.speculated.i.i.i, %i.bl ; 2 uses
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !10
  %i.bq = lshr i64 %i.bp, %i.ao                   ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next.i2.i.i ; 2 uses
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !10
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.next.i2.i.i, 1 ; 2 uses
  %i.bs = add nsw i32 %i.bm, 1
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !10
  %i.bw = shl i64 %i.bv, %i.aq
  %i.bx = or i64 %i.bw, %i.bq
  store i64 %i.bx, ptr %i.br, align 8, !tbaa !10
  %i.by = trunc nuw i64 %indvars.iv.next.i.i.i to i32
  %i.bz = add nsw i32 %.sroa.speculated.i.i.i, %i.by ; 3 uses
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !10
  %i.cd = lshr i64 %i.cc, %i.ao                   ; 3 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next.i.i.i ; 3 uses
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !10
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.next.i2.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i

.loopexit.i.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %indvars.iv.next.i2.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.i.1, %.loopexit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi ptr [ %i.ag, %.lr.ph.i.i.preheader ], [ %i.ce, %.loopexit.i.i.i.loopexit.unr-lcssa ]
  %.epil.init17 = phi i64 [ %i.au, %.lr.ph.i.i.preheader ], [ %i.cd, %.loopexit.i.i.i.loopexit.unr-lcssa ]
  %.epil.init19 = phi i32 [ %.sroa.speculated.i.i.i, %.lr.ph.i.i.preheader ], [ %i.bz, %.loopexit.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod20 = trunc i64 %i.aw to i1
  tail call void @llvm.assume(i1 %lcmp.mod20)
  %i.cf = add nsw i32 %.epil.init19, 1
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !10
  %i.cj = shl i64 %i.ci, %i.aq
  %i.ck = or i64 %i.cj, %.epil.init17
  store i64 %i.ck, ptr %.epil.init, align 8, !tbaa !10
  %i.cl = trunc nuw i64 %indvars.iv.next.i2.i.i.epil.init to i32
  %i.cm = add i32 %.sroa.speculated.i.i.i, %i.cl
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.cn
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !10
  %i.cq = lshr i64 %i.cp, %i.ao
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next.i2.i.i.epil.init
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !10
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.epil.preheader, %.loopexit.i.i.i.loopexit.unr-lcssa, %bb.j, %.lr.ph.i.i.i, %.preheader.i.i.i
  %i.cs = zext nneg i32 %i.am to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.cs
  %i.cu = shl nuw nsw i32 %.sroa.speculated.i.i.i, 3
  %i.cv = zext nneg i32 %i.cu to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ct, i8 0, i64 %i.cv, i1 false)
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit

_ZN4llvh5APInt11lshrInPlaceEj.exit:               ; preds = %bb.f, %bb.g, %bb.h, %.loopexit.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4llvh5APInt12lshrSlowCaseEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9      ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !7
  %i.d = zext i32 %i.c to i64
  %i.e = add nuw nsw i64 %i.d, 63
  %i.f = lshr i64 %i.e, 6
  %i.g = trunc nuw nsw i64 %i.f to i32            ; 3 uses
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %_ZN4llvh5APInt12tcShiftRightEPmjj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = lshr i32 %1, 6                           ; 2 uses
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %i.g, i32 %i.h) ; 9 uses
  %i.i = and i32 %1, 63                           ; 3 uses
  %i.j = sub nsw i32 %i.g, %.sroa.speculated.i    ; 5 uses
  %i.k = icmp eq i32 %i.i, 0
  br i1 %i.k, label %bb.c, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %.not3137.not.i = icmp samesign ult i32 %i.h, %i.g
  br i1 %.not3137.not.i, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.l = zext nneg i32 %i.i to i64                ; 4 uses
  %i.m = sub nuw nsw i32 64, %i.i
  %i.n = zext nneg i32 %i.m to i64                ; 3 uses
  %i.o = zext nneg i32 %.sroa.speculated.i to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !10
  %i.r = lshr i64 %i.q, %i.l                      ; 3 uses
  store i64 %i.r, ptr %i.a, align 8, !tbaa !10
  %.not32.i1 = icmp eq i32 %i.j, 1
  br i1 %.not32.i1, label %.loopexit.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.i
  %i.s = zext i32 %i.j to i64
  %i.t = add nsw i64 %i.s, -1                     ; 3 uses
  %xtraiter = and i64 %i.t, 1
  %i.u = icmp eq i32 %i.j, 2
  br i1 %i.u, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.t, -2
  br label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.v = zext nneg i32 %.sroa.speculated.i to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.v
  %i.x = shl nuw nsw i32 %i.j, 3
  %i.y = zext nneg i32 %i.x to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.a, ptr align 8 %i.w, i64 %i.y, i1 false)
  br label %.loopexit.i

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv.next.i2 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.i.1, %.lr.ph ] ; 4 uses
  %i.z = phi ptr [ %i.a, %.lr.ph.preheader.new ], [ %i.bb, %.lr.ph ]
  %i.aa = phi i64 [ %i.r, %.lr.ph.preheader.new ], [ %i.ba, %.lr.ph ]
  %i.ab = phi i32 [ %.sroa.speculated.i, %.lr.ph.preheader.new ], [ %i.aw, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ac = add nsw i32 %i.ab, 1
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.ag = shl i64 %i.af, %i.n
  %i.ah = or i64 %i.ag, %i.aa
  store i64 %i.ah, ptr %i.z, align 8, !tbaa !10
  %i.ai = trunc nuw i64 %indvars.iv.next.i2 to i32
  %i.aj = add nsw i32 %.sroa.speculated.i, %i.ai  ; 2 uses
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !10
  %i.an = lshr i64 %i.am, %i.l                    ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i2 ; 2 uses
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.next.i2, 1 ; 2 uses
  %i.ap = add nsw i32 %i.aj, 1
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !10
  %i.at = shl i64 %i.as, %i.n
  %i.au = or i64 %i.at, %i.an
  store i64 %i.au, ptr %i.ao, align 8, !tbaa !10
  %i.av = trunc nuw i64 %indvars.iv.next.i to i32
  %i.aw = add nsw i32 %.sroa.speculated.i, %i.av  ; 3 uses
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !10
  %i.ba = lshr i64 %i.az, %i.l                    ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i ; 3 uses
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !10
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.next.i2, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.next.i2.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.i.1, %.loopexit.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi ptr [ %i.a, %.lr.ph.preheader ], [ %i.bb, %.loopexit.i.loopexit.unr-lcssa ]
  %.epil.init5 = phi i64 [ %i.r, %.lr.ph.preheader ], [ %i.ba, %.loopexit.i.loopexit.unr-lcssa ]
  %.epil.init7 = phi i32 [ %.sroa.speculated.i, %.lr.ph.preheader ], [ %i.aw, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod8 = trunc i64 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod8)
  %i.bc = add nsw i32 %.epil.init7, 1
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !10
  %i.bg = shl i64 %i.bf, %i.n
  %i.bh = or i64 %i.bg, %.epil.init5
  store i64 %i.bh, ptr %.epil.init, align 8, !tbaa !10
  %i.bi = trunc nuw i64 %indvars.iv.next.i2.epil.init to i32
  %i.bj = add i32 %.sroa.speculated.i, %i.bi
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !10
  %i.bn = lshr i64 %i.bm, %i.l
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i2.epil.init
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !10
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i, %bb.c, %.preheader.i
  %i.bp = zext nneg i32 %i.j to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bp
  %i.br = shl nuw nsw i32 %.sroa.speculated.i, 3
  %i.bs = zext nneg i32 %i.br to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bq, i8 0, i64 %i.bs, i1 false)
  br label %_ZN4llvh5APInt12tcShiftRightEPmjj.exit

_ZN4llvh5APInt12tcShiftRightEPmjj.exit:           ; preds = %bb.a, %.loopexit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN4llvh5APInt12tcShiftRightEPmjj(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = lshr i32 %2, 6                           ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %1, i32 %i.a) ; 9 uses
  %i.b = and i32 %2, 63                           ; 3 uses
  %i.c = sub i32 %1, %.sroa.speculated            ; 5 uses
  %i.d = icmp eq i32 %i.b, 0
  br i1 %i.d, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not3137.not = icmp ugt i32 %1, %i.a
  br i1 %.not3137.not, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.e = zext nneg i32 %i.b to i64                ; 4 uses
  %i.f = sub nuw nsw i32 64, %i.b
  %i.g = zext nneg i32 %i.f to i64                ; 3 uses
  %i.h = zext nneg i32 %.sroa.speculated to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !10
  %i.k = lshr i64 %i.j, %i.e                      ; 3 uses
  store i64 %i.k, ptr %0, align 8, !tbaa !10
  %.not3241 = icmp eq i32 %i.c, 1
  br i1 %.not3241, label %.loopexit, label %.lr.ph43.preheader

.lr.ph43.preheader:                               ; preds = %.lr.ph
  %i.l = zext i32 %i.c to i64
  %i.m = add nsw i64 %i.l, -1                     ; 3 uses
  %xtraiter = and i64 %i.m, 1
  %i.n = icmp eq i32 %i.c, 2
  br i1 %i.n, label %.lr.ph43.epil.preheader, label %.lr.ph43.preheader.new

.lr.ph43.preheader.new:                           ; preds = %.lr.ph43.preheader
  %unroll_iter = and i64 %i.m, -2
  br label %.lr.ph43

bb.c:                                             ; preds = %bb.b
  %i.o = zext nneg i32 %.sroa.speculated to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.o
  %i.q = shl i32 %i.c, 3
  %i.r = zext i32 %i.q to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %0, ptr align 8 %i.p, i64 %i.r, i1 false)
  br label %.loopexit

.lr.ph43:                                         ; preds = %.lr.ph43, %.lr.ph43.preheader.new
  %indvars.iv.next42 = phi i64 [ 1, %.lr.ph43.preheader.new ], [ %indvars.iv.next.1, %.lr.ph43 ] ; 4 uses
  %i.s = phi ptr [ %0, %.lr.ph43.preheader.new ], [ %i.au, %.lr.ph43 ]
  %i.t = phi i64 [ %i.k, %.lr.ph43.preheader.new ], [ %i.at, %.lr.ph43 ]
  %i.u = phi i32 [ %.sroa.speculated, %.lr.ph43.preheader.new ], [ %i.ap, %.lr.ph43 ]
  %niter = phi i64 [ 0, %.lr.ph43.preheader.new ], [ %niter.next.1, %.lr.ph43 ]
  %i.v = add nsw i32 %i.u, 1
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !10
  %i.z = shl i64 %i.y, %i.g
  %i.aa = or i64 %i.z, %i.t
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !10
  %i.ab = trunc nuw i64 %indvars.iv.next42 to i32
  %i.ac = add nsw i32 %.sroa.speculated, %i.ab    ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.ag = lshr i64 %i.af, %i.e                    ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next42 ; 2 uses
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next42, 1 ; 2 uses
  %i.ai = add nsw i32 %i.ac, 1
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !10
  %i.am = shl i64 %i.al, %i.g
  %i.an = or i64 %i.am, %i.ag
  store i64 %i.an, ptr %i.ah, align 8, !tbaa !10
  %i.ao = trunc nuw i64 %indvars.iv.next to i32
  %i.ap = add nsw i32 %.sroa.speculated, %i.ao    ; 3 uses
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !10
  %i.at = lshr i64 %i.as, %i.e                    ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next ; 3 uses
  store i64 %i.at, ptr %i.au, align 8, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next42, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph43

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph43
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph43.epil.preheader

.lr.ph43.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph43.preheader
  %indvars.iv.next42.epil.init = phi i64 [ 1, %.lr.ph43.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi ptr [ %0, %.lr.ph43.preheader ], [ %i.au, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init45 = phi i64 [ %i.k, %.lr.ph43.preheader ], [ %i.at, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init47 = phi i32 [ %.sroa.speculated, %.lr.ph43.preheader ], [ %i.ap, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod48 = trunc i64 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod48)
  %i.av = add i32 %.epil.init47, 1
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !10
  %i.az = shl i64 %i.ay, %i.g
  %i.ba = or i64 %i.az, %.epil.init45
  store i64 %i.ba, ptr %.epil.init, align 8, !tbaa !10
  %i.bb = trunc nuw i64 %indvars.iv.next42.epil.init to i32
  %i.bc = add i32 %.sroa.speculated, %i.bb
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !10
  %i.bg = lshr i64 %i.bf, %i.e
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next42.epil.init
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !10
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph43.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.lr.ph, %.preheader, %bb.c
  %i.bi = zext i32 %i.c to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bi
  %i.bk = shl nuw nsw i32 %.sroa.speculated, 3
  %i.bl = zext nneg i32 %i.bk to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bj, i8 0, i64 %i.bl, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %.loopexit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvh5APIntlSERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 6 uses
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !7    ; 5 uses
  %i.f = icmp ult i32 %i.e, 65                    ; 2 uses
  %.pre.i.i = load ptr, ptr %1, align 8           ; 4 uses
  %i.g = ptrtoint ptr %.pre.i.i to i64
  br i1 %i.f, label %_ZNK4llvh5APInt3ugtEm.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a
  %i.h = zext i32 %i.e to i64
  %i.i = add nuw nsw i64 %i.h, 63
  %i.j = lshr i64 %i.i, 6                         ; 2 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = shl i32 %i.k, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.c ], [ %i.j, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.019.i.i.i.i.i = phi i32 [ %i.s, %bb.c ], [ 0, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, -1 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.i.i
  %i.n = load i64, ptr %i.m, align 8, !tbaa !10   ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.c, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.b
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = or disjoint i32 %.019.i.i.i.i.i, %i.q
  br label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.s = add i32 %.019.i.i.i.i.i, 64
  %i.t = icmp samesign ugt i64 %indvars.iv.i.i.i.i, 1
  br i1 %i.t, label %bb.b, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i, !llvm.loop !90

_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i:        ; preds = %bb.c, %.thread.i.i.i.i.i
  %.2.i.i.i.i.i = phi i32 [ %i.r, %.thread.i.i.i.i.i ], [ %i.l, %bb.c ]
  %i.u = and i32 %i.e, 63
  %.not.i.i.i.i.i = icmp eq i32 %i.u, 0
  %.neg.i.i.i.i.i = or i32 %i.e, -64
  %.neg15.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 0, i32 %.neg.i.i.i.i.i
  %i.v = add i32 %.neg15.i.i.i.i.i, %.2.i.i.i.i.i
  %i.w = sub i32 %i.e, %i.v
  %i.x = icmp ugt i32 %i.w, 64
  br i1 %i.x, label %_ZNK4llvh5APInt15getLimitedValueEm.exit, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i

_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i: ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i
  %.0.i.i.pre.i = load i64, ptr %.pre.i.i, align 8, !tbaa !9
  br label %_ZNK4llvh5APInt3ugtEm.exit.i

_ZNK4llvh5APInt3ugtEm.exit.i:                     ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i, %bb.a
  %.0.i.i.i = phi i64 [ %.0.i.i.pre.i, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i ], [ %i.g, %bb.a ]
  %i.y = icmp ugt i64 %.0.i.i.i, %i.c
  br i1 %i.y, label %_ZNK4llvh5APInt15getLimitedValueEm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvh5APInt3ugtEm.exit.i
  %spec.select.i.i = select i1 %i.f, ptr %1, ptr %.pre.i.i
  %.0.i.i = load i64, ptr %spec.select.i.i, align 8, !tbaa !9
  %i.z = trunc i64 %.0.i.i to i32
  br label %_ZNK4llvh5APInt15getLimitedValueEm.exit

_ZNK4llvh5APInt15getLimitedValueEm.exit:          ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i, %_ZNK4llvh5APInt3ugtEm.exit.i, %bb.d
  %i.aa = phi i32 [ %i.z, %bb.d ], [ %i.b, %_ZNK4llvh5APInt3ugtEm.exit.i ], [ %i.b, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i ] ; 3 uses
  %i.ab = icmp ult i32 %i.b, 65
  br i1 %i.ab, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i, label %bb.e

_ZN4llvh5APInt15clearUnusedBitsEv.exit.i:         ; preds = %_ZNK4llvh5APInt15getLimitedValueEm.exit
  %i.ac = icmp eq i32 %i.aa, %i.b
  %i.ad = load i64, ptr %0, align 8
  %i.ae = zext nneg i32 %i.aa to i64
  %i.af = shl i64 %i.ad, %i.ae
  %storemerge.i = select i1 %i.ac, i64 0, i64 %i.af
  %i.ag = sub nsw i32 0, %i.b
  %i.ah = and i32 %i.ag, 63
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = lshr i64 -1, %i.ai
  %i.ak = and i64 %storemerge.i, %i.aj
  store i64 %i.ak, ptr %0, align 8, !tbaa !9
  br label %_ZN4llvh5APIntlSEj.exit

bb.e:                                             ; preds = %_ZNK4llvh5APInt15getLimitedValueEm.exit
  tail call void @_ZN4llvh5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %i.aa)
  br label %_ZN4llvh5APIntlSEj.exit

_ZN4llvh5APIntlSEj.exit:                          ; preds = %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i, %bb.e
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4llvh5APInt11shlSlowCaseEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9      ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !7    ; 2 uses
  %i.d = zext i32 %i.c to i64
  %i.e = add nuw nsw i64 %i.d, 63
  %i.f = lshr i64 %i.e, 6                         ; 3 uses
  %i.g = trunc nuw nsw i64 %i.f to i32            ; 4 uses
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %_ZN4llvh5APInt11tcShiftLeftEPmjj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = lshr i32 %1, 6                           ; 2 uses
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %i.g, i32 %i.h) ; 11 uses
  %i.i = and i32 %1, 63                           ; 3 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.k = icmp samesign ult i32 %i.h, %i.g
  br i1 %i.k, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.l = zext nneg i32 %i.i to i64                ; 4 uses
  %i.m = sub nuw nsw i32 64, %i.i
  %i.n = zext nneg i32 %i.m to i64                ; 3 uses
  %indvars.iv.next.i1 = add nsw i64 %i.f, -1      ; 3 uses
  %indvars.i2 = trunc nsw i64 %indvars.iv.next.i1 to i32 ; 2 uses
  %i.o = sub nuw nsw i32 %indvars.i2, %.sroa.speculated.i ; 2 uses
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !10
  %i.s = shl i64 %i.r, %i.l                       ; 3 uses
  %i.t = and i64 %indvars.iv.next.i1, 4294967295  ; 4 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t ; 3 uses
  store i64 %i.s, ptr %i.u, align 8, !tbaa !10
  %i.v = icmp ult i32 %.sroa.speculated.i, %indvars.i2
  br i1 %i.v, label %.lr.ph.preheader, label %.loopexit.i

.lr.ph.preheader:                                 ; preds = %.lr.ph.i
  %i.w = xor i32 %.sroa.speculated.i, -1
  %i.x = sext i32 %i.w to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.a, i64 %i.x ; 3 uses
  %i.y = add nsw i32 %i.g, -2
  %xtraiter = and i32 %i.o, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.t
  %i.z = load i64, ptr %gep.prol, align 8, !tbaa !10
  %i.aa = lshr i64 %i.z, %i.n
  %i.ab = or i64 %i.aa, %i.s
end_hunk_3
begin_hunk_4_@_ZL12rotateModulojRKN4llvh5APIntE:bb.a
  %i.bx = icmp eq ptr %.pre, null
  br i1 %i.bx, label %_ZN4llvh5APIntD2Ev.exit9, label %bb.j

bb.j:                                             ; preds = %.thread, %bb.i
  %i.by = phi i32 [ %i.bl, %.thread ], [ %i.bw, %bb.i ]
  %i.bz = phi i64 [ %i.bj, %.thread ], [ %i.bu, %bb.i ]
  %i.ca = phi ptr [ %i.ay, %.thread ], [ %.pre, %bb.i ]
  call void @_ZdaPv(ptr noundef nonnull %i.ca) #23
  br label %_ZN4llvh5APIntD2Ev.exit9

_ZN4llvh5APIntD2Ev.exit9:                         ; preds = %bb.i, %bb.j, %_ZN4llvh5APIntD2Ev.exit8
  %.pre.i.i10.in = phi i64 [ %i.br, %_ZN4llvh5APIntD2Ev.exit8 ], [ %i.bz, %bb.j ], [ %i.bu, %bb.i ] ; 3 uses
  %i.cb = phi i32 [ %i.bt, %_ZN4llvh5APIntD2Ev.exit8 ], [ %i.by, %bb.j ], [ %i.bw, %bb.i ] ; 5 uses
  %.pre.i.i10 = inttoptr i64 %.pre.i.i10.in to ptr ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.cc = icmp ult i32 %i.cb, 65                  ; 3 uses
  br i1 %i.cc, label %_ZNK4llvh5APInt3ugtEm.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4llvh5APIntD2Ev.exit9
  %i.cd = zext i32 %i.cb to i64
  %i.ce = add nuw nsw i64 %i.cd, 63
  %i.cf = lshr i64 %i.ce, 6                       ; 2 uses
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = shl i32 %i.cg, 6
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.l ], [ %i.cf, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.019.i.i.i.i.i = phi i32 [ %i.co, %bb.l ], [ 0, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, -1 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i10, i64 %indvars.iv.next.i.i.i.i
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !10 ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.l, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.k
  %i.cl = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cj, i1 true)
  %i.cm = trunc nuw nsw i64 %i.cl to i32
  %i.cn = or disjoint i32 %.019.i.i.i.i.i, %i.cm
  br label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.co = add i32 %.019.i.i.i.i.i, 64
  %i.cp = icmp samesign ugt i64 %indvars.iv.i.i.i.i, 1
  br i1 %i.cp, label %bb.k, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i, !llvm.loop !90

_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i:        ; preds = %bb.l, %.thread.i.i.i.i.i
  %.2.i.i.i.i.i = phi i32 [ %i.cn, %.thread.i.i.i.i.i ], [ %i.ch, %bb.l ]
  %i.cq = and i32 %i.cb, 63
  %.not.i.i.i.i.i = icmp eq i32 %i.cq, 0
  %.neg.i.i.i.i.i = or i32 %i.cb, -64
  %.neg15.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 0, i32 %.neg.i.i.i.i.i
  %i.cr = add i32 %.neg15.i.i.i.i.i, %.2.i.i.i.i.i
  %i.cs = sub i32 %i.cb, %i.cr
  %i.ct = icmp ugt i32 %i.cs, 64
  br i1 %i.ct, label %_ZNK4llvh5APInt15getLimitedValueEm.exit, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i

_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i: ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i
  %.0.i.i.pre.i = load i64, ptr %.pre.i.i10, align 8, !tbaa !9
  br label %_ZNK4llvh5APInt3ugtEm.exit.i

_ZNK4llvh5APInt3ugtEm.exit.i:                     ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i, %_ZN4llvh5APIntD2Ev.exit9
  %.0.i.i.i = phi i64 [ %.0.i.i.pre.i, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i ], [ %.pre.i.i10.in, %_ZN4llvh5APIntD2Ev.exit9 ]
  %i.cu = icmp ugt i64 %.0.i.i.i, %i.ar
  br i1 %i.cu, label %_ZNK4llvh5APInt15getLimitedValueEm.exit, label %bb.m

bb.m:                                             ; preds = %_ZNK4llvh5APInt3ugtEm.exit.i
  %spec.select.i.i11 = select i1 %i.cc, ptr %2, ptr %.pre.i.i10
  %.0.i.i = load i64, ptr %spec.select.i.i11, align 8, !tbaa !9
  %i.cv = trunc i64 %.0.i.i to i32
  br label %_ZNK4llvh5APInt15getLimitedValueEm.exit

_ZNK4llvh5APInt15getLimitedValueEm.exit:          ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i, %_ZNK4llvh5APInt3ugtEm.exit.i, %bb.m
  %i.cw = phi i32 [ %i.cv, %bb.m ], [ %0, %_ZNK4llvh5APInt3ugtEm.exit.i ], [ %0, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i ]
  %i.cx = icmp eq i64 %.pre.i.i10.in, 0
  %or.cond = select i1 %i.cc, i1 true, i1 %i.cx
  br i1 %or.cond, label %_ZN4llvh5APIntD2Ev.exit12, label %bb.n

bb.n:                                             ; preds = %_ZNK4llvh5APInt15getLimitedValueEm.exit
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i10) #23
  br label %_ZN4llvh5APIntD2Ev.exit12

_ZN4llvh5APIntD2Ev.exit12:                        ; preds = %_ZNK4llvh5APInt15getLimitedValueEm.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i32 %i.cw
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt4rotrERKS0_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvh::APInt") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7
  %i.c = tail call fastcc noundef i32 @_ZL12rotateModulojRKN4llvh5APIntE(i32 noundef %i.b, ptr noundef nonnull align 8 dereferenceable(12) %2)
  tail call void @_ZNK4llvh5APInt4rotrEj(ptr dead_on_unwind writable sret(%"class.llvh::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i32 noundef %i.c)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt4rotrEj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvh::APInt") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 8 uses
  %i.c = urem i32 %2, %i.b                        ; 7 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.e, align 8, !tbaa !7
  %i.f = icmp ult i32 %i.b, 65
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %1, align 8, !tbaa !9
  store i64 %i.g, ptr %0, align 8, !tbaa !9
  br label %_ZN4llvh5APIntC2ERKS0_.exit

bb.d:                                             ; preds = %bb.b
  %i.h = zext i32 %i.b to i64
  %i.i = add nuw nsw i64 %i.h, 63
  %i.j = lshr i64 %i.i, 3
  %i.k = and i64 %i.j, 1073741816                 ; 2 uses
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #22 ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !9
  %i.m = load ptr, ptr %1, align 8, !tbaa !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr align 8 %i.m, i64 %i.k, i1 false)
  br label %_ZN4llvh5APIntC2ERKS0_.exit

bb.e:                                             ; preds = %bb.a
  %i.n = icmp ult i32 %i.b, 65                    ; 2 uses
  br i1 %i.n, label %_ZNK4llvh5APInt4lshrEj.exit.thread, label %bb.f

_ZNK4llvh5APInt4lshrEj.exit.thread:               ; preds = %bb.e
  %i.o = load i64, ptr %1, align 8, !tbaa !9, !noalias !194 ; 2 uses
  %i.p = zext nneg i32 %i.c to i64
  %i.q = lshr i64 %i.o, %i.p
  %i.r = sub nsw i32 %i.b, %i.c
  br label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.s = zext i32 %i.b to i64
  %i.t = add nuw nsw i64 %i.s, 63                 ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741816                 ; 2 uses
  %i.w = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.v) #22, !noalias !194 ; 20 uses
  %i.x = ptrtoint ptr %i.w to i64                 ; 3 uses
  %i.y = load ptr, ptr %1, align 8, !noalias !194 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %i.y, i64 %i.v, i1 false), !noalias !194
  %i.z = lshr i64 %i.t, 6
  %i.aa = trunc nuw nsw i64 %i.z to i32           ; 3 uses
  %i.ab = lshr i32 %i.c, 6                        ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.aa, i32 %i.ab) ; 9 uses
  %i.ac = and i32 %i.c, 63                        ; 3 uses
  %i.ad = sub nsw i32 %i.aa, %.sroa.speculated.i.i.i.i ; 5 uses
  %i.ae = icmp eq i32 %i.ac, 0
  %i.af = ptrtoint ptr %i.y to i64
  br i1 %i.ae, label %bb.g, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.f
  %.not3137.not.i.i.i.i = icmp samesign ult i32 %i.ab, %i.aa
  br i1 %.not3137.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZNK4llvh5APInt4lshrEj.exit

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i
  %i.ag = zext nneg i32 %i.ac to i64              ; 4 uses
  %i.ah = sub nuw nsw i32 64, %i.ac
  %i.ai = zext nneg i32 %i.ah to i64              ; 3 uses
  %i.aj = zext nneg i32 %.sroa.speculated.i.i.i.i to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !10, !noalias !194
  %i.am = lshr i64 %i.al, %i.ag                   ; 3 uses
  store i64 %i.am, ptr %i.w, align 8, !tbaa !10, !noalias !194
  %.not32.i1.i.i.i = icmp eq i32 %i.ad, 1
  br i1 %.not32.i1.i.i.i, label %_ZNK4llvh5APInt4lshrEj.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i.i.i.i
  %i.an = zext i32 %i.ad to i64
  %i.ao = add nsw i64 %i.an, -1                   ; 3 uses
  %xtraiter = and i64 %i.ao, 1
  %i.ap = icmp eq i32 %i.ad, 2
  br i1 %i.ap, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.ao, -2
  br label %.lr.ph.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.aq = zext nneg i32 %.sroa.speculated.i.i.i.i to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.aq
  %i.as = shl nuw nsw i32 %i.ad, 3
  %i.at = zext nneg i32 %i.as to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %i.ar, i64 %i.at, i1 false), !noalias !194
  br label %_ZNK4llvh5APInt4lshrEj.exit

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %indvars.iv.next.i2.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.preheader.new ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph.i.i.i ] ; 4 uses
  %i.au = phi ptr [ %i.w, %.lr.ph.i.i.i.preheader.new ], [ %i.bw, %.lr.ph.i.i.i ]
  %i.av = phi i64 [ %i.am, %.lr.ph.i.i.i.preheader.new ], [ %i.bv, %.lr.ph.i.i.i ]
  %i.aw = phi i32 [ %.sroa.speculated.i.i.i.i, %.lr.ph.i.i.i.preheader.new ], [ %i.br, %.lr.ph.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i ]
  %i.ax = add nsw i32 %i.aw, 1
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !10, !noalias !194
  %i.bb = shl i64 %i.ba, %i.ai
  %i.bc = or i64 %i.bb, %i.av
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !10, !noalias !194
  %i.bd = trunc nuw i64 %indvars.iv.next.i2.i.i.i to i32
  %i.be = add nsw i32 %.sroa.speculated.i.i.i.i, %i.bd ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !10, !noalias !194
  %i.bi = lshr i64 %i.bh, %i.ag                   ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.i2.i.i.i ; 2 uses
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !10, !noalias !194
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.next.i2.i.i.i, 1 ; 2 uses
  %i.bk = add nsw i32 %i.be, 1
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !10, !noalias !194
  %i.bo = shl i64 %i.bn, %i.ai
  %i.bp = or i64 %i.bo, %i.bi
  store i64 %i.bp, ptr %i.bj, align 8, !tbaa !10, !noalias !194
  %i.bq = trunc nuw i64 %indvars.iv.next.i.i.i.i to i32
  %i.br = add nsw i32 %.sroa.speculated.i.i.i.i, %i.bq ; 3 uses
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !10, !noalias !194
  %i.bv = lshr i64 %i.bu, %i.ag                   ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.i.i.i.i ; 3 uses
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !10, !noalias !194
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.next.i2.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK4llvh5APInt4lshrEj.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_ZNK4llvh5APInt4lshrEj.exit.loopexit.unr-lcssa:   ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK4llvh5APInt4lshrEj.exit, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_ZNK4llvh5APInt4lshrEj.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %indvars.iv.next.i2.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.1, %_ZNK4llvh5APInt4lshrEj.exit.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi ptr [ %i.w, %.lr.ph.i.i.i.preheader ], [ %i.bw, %_ZNK4llvh5APInt4lshrEj.exit.loopexit.unr-lcssa ]
  %.epil.init32 = phi i64 [ %i.am, %.lr.ph.i.i.i.preheader ], [ %i.bv, %_ZNK4llvh5APInt4lshrEj.exit.loopexit.unr-lcssa ]
  %.epil.init34 = phi i32 [ %.sroa.speculated.i.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.br, %_ZNK4llvh5APInt4lshrEj.exit.loopexit.unr-lcssa ]
  %lcmp.mod35 = trunc i64 %i.ao to i1
  tail call void @llvm.assume(i1 %lcmp.mod35)
  %i.bx = add nsw i32 %.epil.init34, 1
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !10, !noalias !194
  %i.cb = shl i64 %i.ca, %i.ai
  %i.cc = or i64 %i.cb, %.epil.init32
  store i64 %i.cc, ptr %.epil.init, align 8, !tbaa !10, !noalias !194
  %i.cd = trunc nuw i64 %indvars.iv.next.i2.i.i.i.epil.init to i32
  %i.ce = add i32 %.sroa.speculated.i.i.i.i, %i.cd
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.cf
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !10, !noalias !194
  %i.ci = lshr i64 %i.ch, %i.ag
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.i2.i.i.i.epil.init
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !10, !noalias !194
  br label %_ZNK4llvh5APInt4lshrEj.exit

_ZNK4llvh5APInt4lshrEj.exit:                      ; preds = %.lr.ph.i.i.i.epil.preheader, %_ZNK4llvh5APInt4lshrEj.exit.loopexit.unr-lcssa, %.preheader.i.i.i.i, %.lr.ph.i.i.i.i, %bb.g
  %i.ck = zext nneg i32 %i.ad to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ck
  %i.cm = shl nuw nsw i32 %.sroa.speculated.i.i.i.i, 3
  %i.cn = zext nneg i32 %i.cm to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cl, i8 0, i64 %i.cn, i1 false), !noalias !194
  %.pre = load i32, ptr %i.a, align 8, !tbaa !7   ; 9 uses
  %i.co = sub i32 %.pre, %i.c                     ; 3 uses
  %i.cp = icmp ult i32 %.pre, 65
  br i1 %i.cp, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvh5APInt4lshrEj.exit
  %i.cq = zext i32 %.pre to i64
  %i.cr = add nuw nsw i64 %i.cq, 63               ; 2 uses
  %i.cs = lshr i64 %i.cr, 3
  %i.ct = and i64 %i.cs, 1073741816               ; 2 uses
  %i.cu = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ct) #22, !noalias !197 ; 17 uses
  %i.cv = ptrtoint ptr %i.cu to i64               ; 2 uses
  %i.cw = load ptr, ptr %1, align 8, !tbaa !9, !noalias !197
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cu, ptr align 8 %i.cw, i64 %i.ct, i1 false), !noalias !197
  %i.cx = lshr i64 %i.cr, 6                       ; 7 uses
  %i.cy = trunc nuw nsw i64 %i.cx to i32          ; 4 uses
  %.not.i.i = icmp eq i32 %.pre, %i.c
  br i1 %.not.i.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cz = lshr i32 %i.co, 6                       ; 2 uses
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %i.cy, i32 %i.cz) ; 11 uses
  %i.da = and i32 %i.co, 63                       ; 3 uses
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.j, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.i
  %i.dc = icmp samesign ult i32 %i.cz, %i.cy
  br i1 %i.dc, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.dd = zext nneg i32 %i.da to i64              ; 4 uses
  %i.de = sub nuw nsw i32 64, %i.da
  %i.df = zext nneg i32 %i.de to i64              ; 3 uses
  %indvars.iv.next.i1.i = add nsw i64 %i.cx, -1   ; 4 uses
  %indvars.i2.i = trunc nuw nsw i64 %indvars.iv.next.i1.i to i32 ; 2 uses
  %i.dg = sub nuw nsw i32 %indvars.i2.i, %.sroa.speculated.i.i ; 2 uses
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.dh
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !10
  %i.dk = shl i64 %i.dj, %i.dd                    ; 3 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.next.i1.i ; 3 uses
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !10
  %i.dm = icmp samesign ult i32 %.sroa.speculated.i.i, %indvars.i2.i
  br i1 %i.dm, label %.lr.ph.preheader.i, label %.loopexit.i.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.i.i
  %i.dn = xor i32 %.sroa.speculated.i.i, -1
  %i.do = sext i32 %i.dn to i64
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.cu, i64 %i.do ; 3 uses
  %i.dp = add nsw i32 %i.cy, -2
  %xtraiter36 = and i32 %i.dg, 1
  %lcmp.mod37.not = icmp eq i32 %xtraiter36, 0
  br i1 %lcmp.mod37.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %gep.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i1.i
  %i.dq = load i64, ptr %gep.i.prol, align 8, !tbaa !10
  %i.dr = lshr i64 %i.dq, %i.df
  %i.ds = or i64 %i.dr, %i.dk
  store i64 %i.ds, ptr %i.dl, align 8, !tbaa !10
  %indvars.iv.next.i.prol = add nsw i64 %i.cx, -2 ; 3 uses
  %indvars.i.prol = trunc nsw i64 %indvars.iv.next.i.prol to i32
  %i.dt = sub nuw nsw i32 %indvars.i.prol, %.sroa.speculated.i.i
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !10
  %i.dx = shl i64 %i.dw, %i.dd                    ; 2 uses
  %i.dy = and i64 %indvars.iv.next.i.prol, 4294967295
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.dy ; 2 uses
  store i64 %i.dx, ptr %i.dz, align 8, !tbaa !10
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.next.i1.i, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.unr38 = phi ptr [ %i.dl, %.lr.ph.preheader.i ], [ %i.dz, %.lr.ph.i.prol ]
  %.unr39 = phi i64 [ %i.dk, %.lr.ph.preheader.i ], [ %i.dx, %.lr.ph.i.prol ]
  %i.ea = icmp eq i32 %i.dp, %.sroa.speculated.i.i
  br i1 %i.ea, label %.loopexit.i.i, label %.lr.ph.i

bb.j:                                             ; preds = %bb.i
  %i.eb = zext nneg i32 %.sroa.speculated.i.i to i64
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.eb
  %i.ed = sub nuw nsw i32 %i.cy, %.sroa.speculated.i.i
  %i.ee = shl nuw nsw i32 %i.ed, 3
  %i.ef = zext nneg i32 %i.ee to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ec, ptr nonnull align 8 %i.cu, i64 %i.ef, i1 false)
  br label %.loopexit.i.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.eg = phi ptr [ %i.fb, %.lr.ph.i ], [ %.unr38, %.lr.ph.i.prol.loopexit ]
  %i.eh = phi i64 [ %i.ez, %.lr.ph.i ], [ %.unr39, %.lr.ph.i.prol.loopexit ]
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.ei = load i64, ptr %gep.i, align 8, !tbaa !10
  %i.ej = lshr i64 %i.ei, %i.df
  %i.ek = or i64 %i.ej, %i.eh
  store i64 %i.ek, ptr %i.eg, align 8, !tbaa !10
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %indvars.i = trunc i64 %indvars.iv.next.i to i32
  %i.el = sub nuw i32 %indvars.i, %.sroa.speculated.i.i
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.em
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !10
  %i.ep = shl i64 %i.eo, %i.dd                    ; 2 uses
  %i.eq = and i64 %indvars.iv.next.i, 4294967295
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.eq ; 2 uses
  store i64 %i.ep, ptr %i.er, align 8, !tbaa !10
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.es = load i64, ptr %gep.i.1, align 8, !tbaa !10
  %i.et = lshr i64 %i.es, %i.df
  %i.eu = or i64 %i.et, %i.ep
  store i64 %i.eu, ptr %i.er, align 8, !tbaa !10
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 3 uses
  %indvars.i.1 = trunc i64 %indvars.iv.next.i.1 to i32 ; 2 uses
  %i.ev = sub nuw i32 %indvars.i.1, %.sroa.speculated.i.i
  %i.ew = zext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.ew
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !10
  %i.ez = shl i64 %i.ey, %i.dd                    ; 2 uses
  %i.fa = and i64 %indvars.iv.next.i.1, 4294967295
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.fa ; 2 uses
  store i64 %i.ez, ptr %i.fb, align 8, !tbaa !10
  %i.fc = icmp ult i32 %.sroa.speculated.i.i, %indvars.i.1
  br i1 %i.fc, label %.lr.ph.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.j, %.lr.ph.i.i, %.preheader.i.i
  %i.fd = shl nuw nsw i32 %.sroa.speculated.i.i, 3
  %i.fe = zext nneg i32 %i.fd to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cu, i8 0, i64 %i.fe, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %_ZNK4llvh5APInt4lshrEj.exit.thread, %_ZNK4llvh5APInt4lshrEj.exit
  %i.ff = phi i32 [ %i.r, %_ZNK4llvh5APInt4lshrEj.exit.thread ], [ %i.co, %_ZNK4llvh5APInt4lshrEj.exit ]
  %.sroa.016.026 = phi i64 [ %i.q, %_ZNK4llvh5APInt4lshrEj.exit.thread ], [ %i.x, %_ZNK4llvh5APInt4lshrEj.exit ] ; 2 uses
  %i.fg = phi i32 [ %i.b, %_ZNK4llvh5APInt4lshrEj.exit.thread ], [ %.pre, %_ZNK4llvh5APInt4lshrEj.exit ] ; 2 uses
  %i.fh = phi i64 [ %i.o, %_ZNK4llvh5APInt4lshrEj.exit.thread ], [ %i.af, %_ZNK4llvh5APInt4lshrEj.exit ]
  %i.fi = zext nneg i32 %i.ff to i64
  %i.fj = shl i64 %i.fh, %i.fi
  %i.fk = sub nsw i32 0, %i.fg
  %i.fl = and i32 %i.fk, 63
  %i.fm = zext nneg i32 %i.fl to i64
  %i.fn = lshr i64 -1, %i.fm
  %i.fo = and i64 %i.fj, %i.fn
  %i.fp = or i64 %i.fo, %.sroa.016.026
  br label %_ZN4llvh5APIntD2Ev.exit

bb.l:                                             ; preds = %.loopexit.i.i, %bb.h
  %i.fq = sub i32 0, %.pre
  %i.fr = and i32 %i.fq, 63
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = lshr i64 -1, %i.fs
  %i.fu = add nuw nsw i64 %i.cx, 4294967295
  %i.fv = and i64 %i.fu, 4294967295
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.fv ; 2 uses
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !10
  %i.fy = and i64 %i.fx, %i.ft
  store i64 %i.fy, ptr %i.fw, align 8, !tbaa !10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %min.iters.check = icmp ult i32 %.pre, 193
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i4.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.l
  %n.vec = and i64 %i.cx, 134217724               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %wide.load = load <2 x i64>, ptr %i.fz, align 8, !tbaa !10, !noalias !200
  %wide.load28 = load <2 x i64>, ptr %i.ga, align 8, !tbaa !10, !noalias !200
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %index ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16 ; 2 uses
  %wide.load29 = load <2 x i64>, ptr %i.gb, align 8, !tbaa !10, !noalias !200
  %wide.load30 = load <2 x i64>, ptr %i.gc, align 8, !tbaa !10, !noalias !200
  %i.gd = or <2 x i64> %wide.load29, %wide.load
  %i.ge = or <2 x i64> %wide.load30, %wide.load28
end_hunk_4
begin_hunk_5_@_ZN4llvh5APInt7udivremERKS0_S2_RS0_S3_:bb.a
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = lshr i64 -1, %i.hz
  %i.ib = and i64 %i.ia, %i.hg
  store i64 %i.ib, ptr %3, align 8, !tbaa !9
  br label %_ZN4llvh5APIntaSEm.exit148

bb.ao:                                            ; preds = %_ZN4llvh5APIntaSEm.exit
  %i.ic = load ptr, ptr %3, align 8, !tbaa !9
  store i64 %i.hg, ptr %i.ic, align 8, !tbaa !10
  %i.id = load ptr, ptr %3, align 8, !tbaa !9
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.if = zext i32 %i.hv to i64
  %i.ig = add nuw nsw i64 %i.if, 63
  %sh.diff.i146 = lshr i64 %i.ig, 3
  %i.ih = add nuw nsw i64 %sh.diff.i146, 4294967288
  %i.ii = and i64 %i.ih, 4294967288
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ie, i8 0, i64 %i.ii, i1 false)
  br label %_ZN4llvh5APIntaSEm.exit148

bb.ap:                                            ; preds = %_ZN4llvh5APInt10reallocateEj.exit144
  %i.ij = load ptr, ptr %1, align 8, !tbaa !9
  %i.ik = load ptr, ptr %2, align 8, !tbaa !9
  %i.il = load ptr, ptr %3, align 8, !tbaa !9
  tail call void @_ZN4llvh5APInt6divideEPKmjS2_jPmS3_(ptr noundef %i.hb, i32 noundef %i.ar, ptr noundef %i.ij, i32 noundef %i.bt, ptr noundef %i.ik, ptr noundef %i.il)
  %i.im = load ptr, ptr %2, align 8, !tbaa !9
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %i.aq
  %i.io = sub nsw i64 %i.z, %i.aq
  %i.ip = shl nsw i64 %i.io, 3
  %i.iq = and i64 %i.ip, 4294967288
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.in, i8 0, i64 %i.iq, i1 false)
  %i.ir = load ptr, ptr %3, align 8, !tbaa !9
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.bs
  %i.it = sub nsw i64 %i.z, %i.bs
  %i.iu = shl nsw i64 %i.it, 3
  %i.iv = and i64 %i.iu, 4294967288
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.is, i8 0, i64 %i.iv, i1 false)
  br label %_ZN4llvh5APIntaSEm.exit148

_ZN4llvh5APIntaSEm.exit148:                       ; preds = %bb.ao, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i147, %_ZN4llvh5APIntD2Ev.exit105, %_ZN4llvh5APIntD2Ev.exit125, %_ZN4llvh5APIntD2Ev.exit143, %bb.ap, %_ZN4llvh5APIntD2Ev.exit74
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt5magicEv(ptr dead_on_unwind noalias nofree writable sret(%"struct.llvh::APInt::ms") align 8 captures(none) initializes((0, 12)) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::APInt", align 8       ; 10 uses
  %3 = alloca %"class.llvh::APInt", align 8       ; 9 uses
  %4 = alloca %"class.llvh::APInt", align 8       ; 8 uses
  %5 = alloca %"class.llvh::APInt", align 8       ; 10 uses
  %6 = alloca %"class.llvh::APInt", align 8       ; 7 uses
  %7 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  %8 = alloca %"class.llvh::APInt", align 8       ; 5 uses
  %9 = alloca %"class.llvh::APInt", align 8       ; 12 uses
  %10 = alloca %"class.llvh::APInt", align 8      ; 5 uses
  %11 = alloca %"class.llvh::APInt", align 8      ; 6 uses
  %12 = alloca %"class.llvh::APInt", align 8      ; 5 uses
  %13 = alloca %"class.llvh::APInt", align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 1, ptr %i.b, align 8, !tbaa !7
  store i64 0, ptr %3, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 1, ptr %i.c, align 8, !tbaa !7
  store i64 0, ptr %4, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i32 1, ptr %i.d, align 8, !tbaa !7
  store i64 0, ptr %5, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !7    ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.g, ptr %i.h, align 8, !tbaa !7, !alias.scope !232
  %i.i = icmp ult i32 %i.g, 65
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = add nuw nsw i32 %i.g, 63
  %i.k = and i32 %i.j, 63
  %i.l = zext nneg i32 %i.k to i64
  %i.m = shl nuw i64 1, %i.l
  %i.n = inttoptr i64 %i.m to ptr
  br label %_ZN4llvh5APIntD2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.o = zext i32 %i.g to i64
  %i.p = add nuw nsw i64 %i.o, 63                 ; 2 uses
  %i.q = lshr i64 %i.p, 3
  %i.r = and i64 %i.q, 1073741816                 ; 2 uses
  %i.s = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #22, !noalias !232 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.s, i8 0, i64 %i.r, i1 false), !noalias !232
  store i64 0, ptr %i.s, align 8, !tbaa !10, !noalias !232
  %i.t = sub i32 0, %i.g
  %i.u = and i32 %i.t, 63
  %i.v = zext nneg i32 %i.u to i64
  %i.w = lshr i64 -1, %i.v
  %.pre7.i.i = lshr i64 %i.p, 6
  %i.x = add nuw nsw i64 %.pre7.i.i, 4294967295
  %i.y = and i64 %i.x, 4294967295
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.y ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !10, !noalias !232
  %i.ab = and i64 %i.aa, %i.w
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !10, !noalias !232
  %i.ac = add i32 %i.g, -1                        ; 2 uses
  %i.ad = and i32 %i.ac, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = shl nuw i64 1, %i.ae
  %i.ag = lshr i32 %i.ac, 6
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ah ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !10, !noalias !232
  %i.ak = or i64 %i.aj, %i.af
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !10, !noalias !232
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %bb.b, %bb.c
  %i.al = phi ptr [ %i.n, %bb.b ], [ %i.s, %bb.c ] ; 12 uses
  store ptr %i.al, ptr %7, align 8, !tbaa !9, !alias.scope !232
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 1, ptr %i.am, align 8, !tbaa !7
  store i64 0, ptr %0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZNK4llvh5APInt3absEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %8, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.an = load i64, ptr %8, align 8
  store i64 %i.an, ptr %2, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !7  ; 5 uses
  store i32 %i.ap, ptr %i.a, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.aq = load i32, ptr %i.f, align 8, !tbaa !7   ; 7 uses
  %i.ar = add i32 %i.aq, -1                       ; 3 uses
  %i.as = icmp ult i32 %i.aq, 65                  ; 3 uses
  %i.at = ptrtoint ptr %i.al to i64               ; 3 uses
  br i1 %i.as, label %_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread2.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit
  %i.au = zext i32 %i.aq to i64
  %i.av = add nuw nsw i64 %i.au, 63               ; 3 uses
  %i.aw = lshr i64 %i.av, 3
  %i.ax = and i64 %i.aw, 1073741816               ; 4 uses
  %i.ay = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ax) #22, !noalias !235 ; 23 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = load ptr, ptr %1, align 8, !tbaa !9, !noalias !235
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr align 8 %i.ba, i64 %i.ax, i1 false), !noalias !235
  %i.bb = lshr i64 %i.av, 6                       ; 6 uses
  %i.bc = trunc nuw nsw i64 %i.bb to i32          ; 3 uses
  %i.bd = lshr i32 %i.ar, 6                       ; 2 uses
  %.sroa.speculated.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.bc, i32 %i.bd) ; 9 uses
  %i.be = and i32 %i.ar, 63                       ; 3 uses
  %i.bf = sub nsw i32 %i.bc, %.sroa.speculated.i.i.i.i ; 5 uses
  %i.bg = icmp eq i32 %i.be, 0
  br i1 %i.bg, label %bb.e, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.d
  %.not3137.not.i.i.i.i = icmp samesign ult i32 %i.bd, %i.bc
  br i1 %.not3137.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i
  %i.bh = zext nneg i32 %i.be to i64              ; 4 uses
  %i.bi = sub nuw nsw i32 64, %i.be
  %i.bj = zext nneg i32 %i.bi to i64              ; 3 uses
  %i.bk = zext nneg i32 %.sroa.speculated.i.i.i.i to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !10, !noalias !235
  %i.bn = lshr i64 %i.bm, %i.bh                   ; 3 uses
  store i64 %i.bn, ptr %i.ay, align 8, !tbaa !10, !noalias !235
  %.not32.i1.i.i.i = icmp eq i32 %i.bf, 1
  br i1 %.not32.i1.i.i.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i.i.i.i
  %i.bo = zext i32 %i.bf to i64
  %i.bp = add nsw i64 %i.bo, -1                   ; 3 uses
  %xtraiter = and i64 %i.bp, 1
  %i.bq = icmp eq i32 %i.bf, 2
  br i1 %i.bq, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.bp, -2
  br label %.lr.ph.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.br = zext nneg i32 %.sroa.speculated.i.i.i.i to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.br
  %i.bt = shl nuw nsw i32 %i.bf, 3
  %i.bu = zext nneg i32 %i.bt to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr nonnull align 8 %i.bs, i64 %i.bu, i1 false), !noalias !235
  br label %.lr.ph.preheader.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %indvars.iv.next.i2.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.preheader.new ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph.i.i.i ] ; 4 uses
  %i.bv = phi ptr [ %i.ay, %.lr.ph.i.i.i.preheader.new ], [ %i.cx, %.lr.ph.i.i.i ]
  %i.bw = phi i64 [ %i.bn, %.lr.ph.i.i.i.preheader.new ], [ %i.cw, %.lr.ph.i.i.i ]
  %i.bx = phi i32 [ %.sroa.speculated.i.i.i.i, %.lr.ph.i.i.i.preheader.new ], [ %i.cs, %.lr.ph.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i ]
  %i.by = add nsw i32 %i.bx, 1
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !10, !noalias !235
  %i.cc = shl i64 %i.cb, %i.bj
  %i.cd = or i64 %i.cc, %i.bw
  store i64 %i.cd, ptr %i.bv, align 8, !tbaa !10, !noalias !235
  %i.ce = trunc nuw i64 %indvars.iv.next.i2.i.i.i to i32
  %i.cf = add nsw i32 %.sroa.speculated.i.i.i.i, %i.ce ; 2 uses
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !10, !noalias !235
  %i.cj = lshr i64 %i.ci, %i.bh                   ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next.i2.i.i.i ; 2 uses
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !10, !noalias !235
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.next.i2.i.i.i, 1 ; 2 uses
  %i.cl = add nsw i32 %i.cf, 1
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !10, !noalias !235
  %i.cp = shl i64 %i.co, %i.bj
  %i.cq = or i64 %i.cp, %i.cj
  store i64 %i.cq, ptr %i.ck, align 8, !tbaa !10, !noalias !235
  %i.cr = trunc nuw i64 %indvars.iv.next.i.i.i.i to i32
  %i.cs = add nsw i32 %.sroa.speculated.i.i.i.i, %i.cr ; 3 uses
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ct
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !10, !noalias !235
  %i.cw = lshr i64 %i.cv, %i.bh                   ; 3 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next.i.i.i.i ; 3 uses
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !10, !noalias !235
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.next.i2.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.preheader.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

.lr.ph.preheader.i.i.i.loopexit.unr-lcssa:        ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.lr.ph.preheader.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %indvars.iv.next.i2.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph.preheader.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi ptr [ %i.ay, %.lr.ph.i.i.i.preheader ], [ %i.cx, %.lr.ph.preheader.i.i.i.loopexit.unr-lcssa ]
  %.epil.init730 = phi i64 [ %i.bn, %.lr.ph.i.i.i.preheader ], [ %i.cw, %.lr.ph.preheader.i.i.i.loopexit.unr-lcssa ]
  %.epil.init732 = phi i32 [ %.sroa.speculated.i.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.cs, %.lr.ph.preheader.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod733 = trunc i64 %i.bp to i1
  call void @llvm.assume(i1 %lcmp.mod733)
  %i.cy = add nsw i32 %.epil.init732, 1
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.cz
  %i.db = load i64, ptr %i.da, align 8, !tbaa !10, !noalias !235
  %i.dc = shl i64 %i.db, %i.bj
  %i.dd = or i64 %i.dc, %.epil.init730
  store i64 %i.dd, ptr %.epil.init, align 8, !tbaa !10, !noalias !235
  %i.de = trunc nuw i64 %indvars.iv.next.i2.i.i.i.epil.init to i32
  %i.df = add i32 %.sroa.speculated.i.i.i.i, %i.de
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.dg
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !10, !noalias !235
  %i.dj = lshr i64 %i.di, %i.bh
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next.i2.i.i.i.epil.init
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !10, !noalias !235
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph.i.i.i.epil.preheader, %.lr.ph.preheader.i.i.i.loopexit.unr-lcssa, %bb.e, %.lr.ph.i.i.i.i, %.preheader.i.i.i.i
  %i.dl = zext nneg i32 %i.bf to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.dl
  %i.dn = shl nuw nsw i32 %.sroa.speculated.i.i.i.i, 3
  %i.do = zext nneg i32 %i.dn to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dm, i8 0, i64 %i.do, i1 false), !noalias !235
  %i.dp = icmp eq i64 %i.bb, 1
  br i1 %i.dp, label %.lr.ph.i.i.i12.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter737 = and i64 %i.bb, 134217726
  br label %.lr.ph.i.i.i12

.lr.ph.i.i.i12:                                   ; preds = %.lr.ph.i.i.i12, %.lr.ph.preheader.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %.lr.ph.i.i.i12 ] ; 4 uses
  %.02021.i.i.i = phi i1 [ true, %.lr.ph.preheader.i.i.i.new ], [ %.1.in.i.i.i.1, %.lr.ph.i.i.i12 ] ; 2 uses
  %niter738 = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter738.next.1, %.lr.ph.i.i.i12 ]
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.i.i.i ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !10, !noalias !238 ; 3 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.i.i.i
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !10, !noalias !238
  %i.du = add i64 %i.dt, %i.dr                    ; 3 uses
  %i.dv = icmp uge i64 %i.du, %i.dr
  %i.dw = add i64 %i.du, 1                        ; 2 uses
  %i.dx = icmp ugt i64 %i.dw, %i.dr
  %.sink.i.i.i = select i1 %.02021.i.i.i, i64 %i.du, i64 %i.dw
  %.1.in.i.i.i = select i1 %.02021.i.i.i, i1 %i.dv, i1 %i.dx ; 2 uses
  store i64 %.sink.i.i.i, ptr %i.dq, align 8, !tbaa !10, !noalias !238
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next.i.i.i ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !10, !noalias !238 ; 3 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.i.i.i
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !10, !noalias !238
  %i.ec = add i64 %i.eb, %i.dz                    ; 3 uses
  %i.ed = icmp uge i64 %i.ec, %i.dz
  %i.ee = add i64 %i.ec, 1                        ; 2 uses
  %i.ef = icmp ugt i64 %i.ee, %i.dz
  %.sink.i.i.i.1 = select i1 %.1.in.i.i.i, i64 %i.ec, i64 %i.ee
  %.1.in.i.i.i.1 = select i1 %.1.in.i.i.i, i1 %i.ed, i1 %i.ef ; 2 uses
  store i64 %.sink.i.i.i.1, ptr %i.dy, align 8, !tbaa !10, !noalias !238
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter738.next.1 = add i64 %niter738, 2         ; 2 uses
  %niter738.ncmp.1 = icmp eq i64 %niter738.next.1, %unroll_iter737
  br i1 %niter738.ncmp.1, label %.lr.ph.preheader.i.i.i16.unr-lcssa, label %.lr.ph.i.i.i12, !llvm.loop !25

_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread2.i.i: ; preds = %_ZN4llvh5APIntD2Ev.exit
  %i.eg = load i64, ptr %1, align 8, !tbaa !9, !noalias !235
  %i.eh = zext nneg i32 %i.ar to i64
  %i.ei = lshr i64 %i.eg, %i.eh
  %i.ej = add i64 %i.ei, %i.at
  %i.ek = sub nsw i32 0, %i.aq
  %i.el = and i32 %i.ek, 63
  %i.em = zext nneg i32 %i.el to i64
  %i.en = lshr i64 -1, %i.em                      ; 2 uses
  %i.eo = and i64 %i.ej, %i.en                    ; 2 uses
  store i64 %i.eo, ptr %6, align 8
  store i32 %i.aq, ptr %i.e, align 8, !tbaa !7
  %i.ep = add i64 %i.eo, -1
  %i.eq = and i64 %i.ep, %i.en
  br label %_ZN4llvhmiENS_5APIntEm.exit

.lr.ph.preheader.i.i.i16.unr-lcssa:               ; preds = %.lr.ph.i.i.i12
  %i.er = and i64 %i.av, 64
  %lcmp.mod735.not = icmp eq i64 %i.er, 0
  br i1 %lcmp.mod735.not, label %.lr.ph.preheader.i.i.i16, label %.lr.ph.i.i.i12.epil.preheader

.lr.ph.i.i.i12.epil.preheader:                    ; preds = %.lr.ph.preheader.i.i.i16.unr-lcssa, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.1, %.lr.ph.preheader.i.i.i16.unr-lcssa ] ; 2 uses
  %.02021.i.i.i.epil.init = phi i1 [ true, %.lr.ph.preheader.i.i.i ], [ %.1.in.i.i.i.1, %.lr.ph.preheader.i.i.i16.unr-lcssa ]
  %lcmp.mod736 = trunc i64 %i.bb to i1
  call void @llvm.assume(i1 %lcmp.mod736)
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.i.i.i.epil.init ; 2 uses
  %i.et = load i64, ptr %i.es, align 8, !tbaa !10, !noalias !238
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.i.i.i.epil.init
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !10, !noalias !238
  %i.ew = add i64 %i.ev, %i.et
  %not..02021.i.i.i.epil.init = xor i1 %.02021.i.i.i.epil.init, true
  %i.ex = zext i1 %not..02021.i.i.i.epil.init to i64
  %.sink.i.i.i.epil = add i64 %i.ew, %i.ex
  store i64 %.sink.i.i.i.epil, ptr %i.es, align 8, !tbaa !10, !noalias !238
  br label %.lr.ph.preheader.i.i.i16

.lr.ph.preheader.i.i.i16:                         ; preds = %.lr.ph.preheader.i.i.i16.unr-lcssa, %.lr.ph.i.i.i12.epil.preheader
  %i.ey = sub i32 0, %i.aq
  %i.ez = and i32 %i.ey, 63
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = lshr i64 -1, %i.fa                      ; 2 uses
  %i.fc = add nuw nsw i64 %i.bb, 4294967295
  %i.fd = and i64 %i.fc, 4294967295               ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.fd ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !10, !noalias !238
  %i.fg = and i64 %i.ff, %i.fb
  store i64 %i.fg, ptr %i.fe, align 8, !tbaa !10, !noalias !238
  store i64 %i.az, ptr %6, align 8
  store i32 %i.aq, ptr %i.e, align 8, !tbaa !7
  %i.fh = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ax) #22 ; 6 uses
  %i.fi = ptrtoint ptr %i.fh to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fh, ptr nonnull align 8 %i.ay, i64 %i.ax, i1 false)
  %i.fj = load i64, ptr %i.fh, align 8, !tbaa !10, !noalias !241 ; 2 uses
  %i.fk = add i64 %i.fj, -1
  store i64 %i.fk, ptr %i.fh, align 8, !tbaa !10, !noalias !241
  %.not.peel.i.i.i = icmp eq i64 %i.fj, 0
  br i1 %.not.peel.i.i.i, label %.lr.ph.i.i.i18, label %_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread.i.i

.lr.ph.i.i.i18:                                   ; preds = %.lr.ph.preheader.i.i.i16, %.lr.ph.i.i.i18
  %indvars.iv.i.i.i19 = phi i64 [ %indvars.iv.next.i.i.i20, %.lr.ph.i.i.i18 ], [ 1, %.lr.ph.preheader.i.i.i16 ] ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %indvars.iv.i.i.i19 ; 2 uses
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !10, !noalias !241 ; 2 uses
  %i.fn = add i64 %i.fm, -1
  store i64 %i.fn, ptr %i.fl, align 8, !tbaa !10, !noalias !241
  %.not.i.i.i = icmp ne i64 %i.fm, 0
  %indvars.iv.next.i.i.i20 = add nuw nsw i64 %indvars.iv.i.i.i19, 1 ; 2 uses
  %exitcond.not.i.i.i21 = icmp eq i64 %indvars.iv.next.i.i.i20, %i.bb
  %or.cond.i.i = select i1 %.not.i.i.i, i1 true, i1 %exitcond.not.i.i.i21
  br i1 %or.cond.i.i, label %_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread.i.i, label %.lr.ph.i.i.i18, !llvm.loop !24

_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread.i.i: ; preds = %.lr.ph.i.i.i18, %.lr.ph.preheader.i.i.i16
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.fd ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !10, !noalias !241
  %i.fq = and i64 %i.fp, %i.fb
  store i64 %i.fq, ptr %i.fo, align 8, !tbaa !10, !noalias !241
  br label %_ZN4llvhmiENS_5APIntEm.exit

_ZN4llvhmiENS_5APIntEm.exit:                      ; preds = %_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread2.i.i, %_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread.i.i
  %.sroa.0424.1 = phi i64 [ %i.eq, %_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread2.i.i ], [ %i.fi, %_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @_ZNK4llvh5APInt4uremERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %9, ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %2)
  %i.fr = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !7, !noalias !244 ; 7 uses
  %i.ft = icmp ult i32 %i.fs, 65
  br i1 %i.ft, label %_ZN4llvh5APInt5tcAddEPmPKmmj.exit.thread.i.i32, label %bb.f

bb.f:                                             ; preds = %_ZN4llvhmiENS_5APIntEm.exit
  %i.fu = load ptr, ptr %9, align 8, !tbaa !9, !noalias !244 ; 2 uses
  %i.fv = zext i32 %i.fs to i64
  %i.fw = add nuw nsw i64 %i.fv, 63               ; 2 uses
  %i.fx = lshr i64 %i.fw, 6                       ; 8 uses
  %min.iters.check = icmp ult i32 %i.fs, 193
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.f
  %n.vec = and i64 %i.fx, 134217724               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %index ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.fy, align 8, !tbaa !10, !noalias !244
  %wide.load670 = load <2 x i64>, ptr %i.fz, align 8, !tbaa !10, !noalias !244
  %i.ga = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.gb = xor <2 x i64> %wide.load670, splat (i64 -1)
  store <2 x i64> %i.ga, ptr %i.fy, align 8, !tbaa !10, !noalias !244
  store <2 x i64> %i.gb, ptr %i.fz, align 8, !tbaa !10, !noalias !244
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gc = icmp eq i64 %index.next, %n.vec
  br i1 %i.gc, label %middle.block, label %vector.body, !llvm.loop !247

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fx, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.f, %middle.block
  %indvars.iv.i.i.i.i.i.ph = phi i64 [ 0, %bb.f ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv.i.i.i.i.i ; 2 uses
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !10, !noalias !244
  %i.gf = xor i64 %i.ge, -1
  store i64 %i.gf, ptr %i.gd, align 8, !tbaa !10, !noalias !244
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %i.fx
  br i1 %exitcond.not.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !248

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i, %middle.block
  %i.gg = sub i32 0, %i.fs
  %i.gh = and i32 %i.gg, 63
  %i.gi = zext nneg i32 %i.gh to i64
  %i.gj = lshr i64 -1, %i.gi                      ; 3 uses
  %i.gk = load ptr, ptr %9, align 8, !tbaa !9, !noalias !244
  %i.gl = add nuw nsw i64 %i.fx, 4294967295
  %i.gm = and i64 %i.gl, 4294967295               ; 3 uses
end_hunk_5
begin_hunk_6_@_ZNK4llvh5APInt4uremERKS0_:bb.a
bb.h:                                             ; preds = %bb.g
  %i.cn = icmp samesign ult i64 %i.af, %i.bj
  br i1 %i.cn, label %_ZN4llvh5APIntC2ERKS0_.exit, label %.preheader

.preheader:                                       ; preds = %bb.h
  %.not.i.i.i4381 = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i4381, label %_ZNK4llvh5APInteqERKS0_.exit, label %.lr.ph

bb.i:                                             ; preds = %.lr.ph
  %.not.i.i.i43 = icmp eq i64 %i.co, 0
  br i1 %.not.i.i.i43, label %_ZNK4llvh5APInteqERKS0_.exit, label %.lr.ph, !llvm.loop !81

.lr.ph:                                           ; preds = %.preheader, %bb.i
  %indvars.iv.i.i.i82 = phi i64 [ %i.co, %bb.i ], [ %i.o, %.preheader ]
  %i.co = add nsw i64 %indvars.iv.i.i.i82, -1     ; 4 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.co
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !10 ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.co
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !10 ; 2 uses
  %.not13.i.i.i = icmp eq i64 %i.cq, %i.cs
  br i1 %.not13.i.i.i, label %bb.i, label %_ZNK4llvh5APInt3ultERKS0_.exit, !llvm.loop !81

_ZNK4llvh5APInt3ultERKS0_.exit:                   ; preds = %.lr.ph
  %.not = icmp ugt i64 %i.cq, %i.cs
  br i1 %.not, label %_ZNK4llvh5APInteqERKS0_.exit, label %_ZN4llvh5APIntC2ERKS0_.exit

_ZN4llvh5APIntC2ERKS0_.exit:                      ; preds = %_ZNK4llvh5APInt3ultERKS0_.exit, %bb.h
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.ct, align 8, !tbaa !7
  %i.cu = lshr i64 %i.n, 3
  %i.cv = and i64 %i.cu, 1073741816               ; 2 uses
  %i.cw = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cv) #22 ; 2 uses
  store ptr %i.cw, ptr %0, align 8, !tbaa !9
  %i.cx = load ptr, ptr %1, align 8, !tbaa !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cw, ptr align 8 %i.cx, i64 %i.cv, i1 false)
  br label %_ZN4llvh5APIntC2Ejmb.exit35

_ZNK4llvh5APInteqERKS0_.exit:                     ; preds = %bb.i, %.preheader, %_ZNK4llvh5APInt3ultERKS0_.exit
  %i.cy = lshr i64 %i.n, 3
  %.idx.i.i = and i64 %i.cy, 1073741816
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.q, ptr %i.bf, i64 %.idx.i.i)
  %.not9.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK4llvh5APInteqERKS0_.exit
  tail call void @_ZN4llvh5APIntC2Ejmb(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %i.b, i64 noundef 0, i1 noundef zeroext false)
  br label %_ZN4llvh5APIntC2Ejmb.exit35

bb.k:                                             ; preds = %_ZNK4llvh5APInteqERKS0_.exit
  %i.cz = icmp eq i64 %i.af, 1
  br i1 %i.cz, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.da = load i64, ptr %i.q, align 8, !tbaa !10
  %i.db = load i64, ptr %i.bf, align 8, !tbaa !10
  %i.dc = urem i64 %i.da, %i.db
  tail call void @_ZN4llvh5APIntC2Ejmb(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %i.b, i64 noundef %i.dc, i1 noundef zeroext false)
  br label %_ZN4llvh5APIntC2Ejmb.exit35

bb.m:                                             ; preds = %bb.k
  tail call void @_ZN4llvh5APIntC2Ejmb(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %i.b, i64 noundef 0, i1 noundef zeroext false)
  %i.dd = load ptr, ptr %1, align 8, !tbaa !9
  %i.de = load ptr, ptr %2, align 8, !tbaa !9
  %i.df = load ptr, ptr %0, align 8, !tbaa !9
  tail call void @_ZN4llvh5APInt6divideEPKmjS2_jPmS3_(ptr noundef %i.dd, i32 noundef %i.ag, ptr noundef %i.de, i32 noundef %i.bk, ptr noundef null, ptr noundef %i.df)
  br label %_ZN4llvh5APIntC2Ejmb.exit35

_ZN4llvh5APIntC2Ejmb.exit35:                      ; preds = %.loopexit.i._crit_edge.i37, %.loopexit.i._crit_edge.i30, %_ZN4llvh5APIntC2ERKS0_.exit, %bb.j, %bb.l, %bb.m, %_ZN4llvh5APIntC2Ejmb.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt6magicuEj(ptr dead_on_unwind noalias nofree writable sret(%"struct.llvh::APInt::mu") align 8 captures(none) initializes((0, 12), (16, 17)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvh::APInt", align 8       ; 10 uses
  %4 = alloca %"class.llvh::APInt", align 8       ; 11 uses
  %5 = alloca %"class.llvh::APInt", align 8       ; 12 uses
  %6 = alloca %"class.llvh::APInt", align 8       ; 11 uses
  %7 = alloca %"class.llvh::APInt", align 8       ; 11 uses
  %8 = alloca %"class.llvh::APInt", align 8       ; 14 uses
  %9 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  %10 = alloca %"class.llvh::APInt", align 8      ; 5 uses
  %11 = alloca %"class.llvh::APInt", align 8      ; 6 uses
  %12 = alloca %"class.llvh::APInt", align 8      ; 5 uses
  %13 = alloca %"class.llvh::APInt", align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 1, ptr %i.a, align 8, !tbaa !7
  store i64 0, ptr %3, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i32 1, ptr %i.b, align 8, !tbaa !7
  store i64 0, ptr %4, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i32 1, ptr %i.c, align 8, !tbaa !7
  store i64 0, ptr %5, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 1, ptr %i.d, align 8, !tbaa !7
  store i64 0, ptr %0, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i8 0, ptr %i.e, align 8, !tbaa !310
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !7    ; 11 uses
  %i.h = icmp ult i32 %i.g, 65                    ; 4 uses
  br i1 %i.h, label %_ZN4llvh5APIntD2Ev.exit.thread, label %bb.b

_ZN4llvh5APIntD2Ev.exit.thread:                   ; preds = %bb.a
  %i.i = icmp eq i32 %2, %i.g
  %i.j = sub nsw i32 0, %i.g
  %i.k = and i32 %i.j, 63
  %i.l = zext nneg i32 %i.k to i64
  %i.m = lshr i64 -1, %i.l
  %i.n = zext nneg i32 %2 to i64
  %i.o = lshr i64 %i.m, %i.n
  %.sroa.0652.0718.ph = select i1 %i.i, i64 0, i64 %i.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.g, ptr %i.p, align 8, !tbaa !7, !alias.scope !313
  br label %_ZN4llvh5APInt17getSignedMinValueEj.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.q = zext i32 %i.g to i64
  %i.r = add nuw nsw i64 %i.q, 63                 ; 2 uses
  %i.s = lshr i64 %i.r, 3
  %i.t = and i64 %i.s, 1073741816                 ; 4 uses
  %i.u = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.t) #22, !noalias !316 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.u, i8 0, i64 %i.t, i1 false), !noalias !316
  store i64 -1, ptr %i.u, align 8, !tbaa !10, !noalias !316
  %i.v = lshr i64 %i.r, 6                         ; 3 uses
  %scevgep.i = getelementptr i8, ptr %i.u, i64 8
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = add nsw i64 %i.w, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 -1, i64 %i.x, i1 false), !tbaa !10, !noalias !316
  %i.y = sub i32 0, %i.g
  %i.z = and i32 %i.y, 63
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = lshr i64 -1, %i.aa
  %i.ac = add nuw nsw i64 %i.v, 4294967295
  %i.ad = and i64 %i.ac, 4294967295
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ad ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !10, !noalias !316
  %i.ag = and i64 %i.af, %i.ab
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !10, !noalias !316
  %i.ah = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.t) #22, !noalias !319 ; 18 uses
  %i.ai = ptrtoint ptr %i.ah to i64               ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr nonnull align 8 %i.u, i64 %i.t, i1 false), !noalias !319
  %i.aj = trunc nuw nsw i64 %i.v to i32           ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %2, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvh5APIntD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = lshr i32 %2, 6                          ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.aj, i32 %i.ak) ; 9 uses
  %i.al = and i32 %2, 63                          ; 3 uses
  %i.am = sub nsw i32 %i.aj, %.sroa.speculated.i.i.i.i ; 5 uses
  %i.an = icmp eq i32 %i.al, 0
  br i1 %i.an, label %bb.d, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.c
  %.not3137.not.i.i.i.i = icmp samesign ult i32 %i.ak, %i.aj
  br i1 %.not3137.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i
  %i.ao = zext nneg i32 %i.al to i64              ; 4 uses
  %i.ap = sub nuw nsw i32 64, %i.al
  %i.aq = zext nneg i32 %i.ap to i64              ; 3 uses
  %i.ar = zext nneg i32 %.sroa.speculated.i.i.i.i to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !10, !noalias !319
  %i.au = lshr i64 %i.at, %i.ao                   ; 3 uses
  store i64 %i.au, ptr %i.ah, align 8, !tbaa !10, !noalias !319
  %.not32.i1.i.i.i = icmp eq i32 %i.am, 1
  br i1 %.not32.i1.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i.i.i.i
  %i.av = zext i32 %i.am to i64
  %i.aw = add nsw i64 %i.av, -1                   ; 3 uses
  %xtraiter = and i64 %i.aw, 1
  %i.ax = icmp eq i32 %i.am, 2
  br i1 %i.ax, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.aw, -2
  br label %.lr.ph.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ay = zext nneg i32 %.sroa.speculated.i.i.i.i to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ay
  %i.ba = shl nuw nsw i32 %i.am, 3
  %i.bb = zext nneg i32 %i.ba to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr nonnull align 8 %i.az, i64 %i.bb, i1 false), !noalias !319
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %indvars.iv.next.i2.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.preheader.new ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph.i.i.i ] ; 4 uses
  %i.bc = phi ptr [ %i.ah, %.lr.ph.i.i.i.preheader.new ], [ %i.ce, %.lr.ph.i.i.i ]
  %i.bd = phi i64 [ %i.au, %.lr.ph.i.i.i.preheader.new ], [ %i.cd, %.lr.ph.i.i.i ]
  %i.be = phi i32 [ %.sroa.speculated.i.i.i.i, %.lr.ph.i.i.i.preheader.new ], [ %i.bz, %.lr.ph.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i ]
  %i.bf = add nsw i32 %i.be, 1
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !10, !noalias !319
  %i.bj = shl i64 %i.bi, %i.aq
  %i.bk = or i64 %i.bj, %i.bd
  store i64 %i.bk, ptr %i.bc, align 8, !tbaa !10, !noalias !319
  %i.bl = trunc nuw i64 %indvars.iv.next.i2.i.i.i to i32
  %i.bm = add nsw i32 %.sroa.speculated.i.i.i.i, %i.bl ; 2 uses
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !10, !noalias !319
  %i.bq = lshr i64 %i.bp, %i.ao                   ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next.i2.i.i.i ; 2 uses
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !10, !noalias !319
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.next.i2.i.i.i, 1 ; 2 uses
  %i.bs = add nsw i32 %i.bm, 1
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !10, !noalias !319
  %i.bw = shl i64 %i.bv, %i.aq
  %i.bx = or i64 %i.bw, %i.bq
  store i64 %i.bx, ptr %i.br, align 8, !tbaa !10, !noalias !319
  %i.by = trunc nuw i64 %indvars.iv.next.i.i.i.i to i32
  %i.bz = add nsw i32 %.sroa.speculated.i.i.i.i, %i.by ; 3 uses
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !10, !noalias !319
  %i.cd = lshr i64 %i.cc, %i.ao                   ; 3 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next.i.i.i.i ; 3 uses
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !10, !noalias !319
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.next.i2.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

.loopexit.i.i.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.loopexit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %indvars.iv.next.i2.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.1, %.loopexit.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi ptr [ %i.ah, %.lr.ph.i.i.i.preheader ], [ %i.ce, %.loopexit.i.i.i.i.loopexit.unr-lcssa ]
  %.epil.init1045 = phi i64 [ %i.au, %.lr.ph.i.i.i.preheader ], [ %i.cd, %.loopexit.i.i.i.i.loopexit.unr-lcssa ]
  %.epil.init1047 = phi i32 [ %.sroa.speculated.i.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.bz, %.loopexit.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod1048 = trunc i64 %i.aw to i1
  tail call void @llvm.assume(i1 %lcmp.mod1048)
  %i.cf = add nsw i32 %.epil.init1047, 1
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !10, !noalias !319
  %i.cj = shl i64 %i.ci, %i.aq
  %i.ck = or i64 %i.cj, %.epil.init1045
  store i64 %i.ck, ptr %.epil.init, align 8, !tbaa !10, !noalias !319
  %i.cl = trunc nuw i64 %indvars.iv.next.i2.i.i.i.epil.init to i32
  %i.cm = add i32 %.sroa.speculated.i.i.i.i, %i.cl
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.cn
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !10, !noalias !319
  %i.cq = lshr i64 %i.cp, %i.ao
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next.i2.i.i.i.epil.init
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !10, !noalias !319
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.epil.preheader, %.loopexit.i.i.i.i.loopexit.unr-lcssa, %bb.d, %.lr.ph.i.i.i.i, %.preheader.i.i.i.i
  %i.cs = zext nneg i32 %i.am to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.cs
  %i.cu = shl nuw nsw i32 %.sroa.speculated.i.i.i.i, 3
  %i.cv = zext nneg i32 %i.cu to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ct, i8 0, i64 %i.cv, i1 false), !noalias !319
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %bb.b, %.loopexit.i.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.u) #23
  %.pre = load i32, ptr %i.f, align 8, !tbaa !7   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.pre, ptr %i.cw, align 8, !tbaa !7, !alias.scope !322
  %i.cx = icmp ult i32 %.pre, 65
  br i1 %i.cx, label %_ZN4llvh5APInt17getSignedMinValueEj.exit.thread, label %_ZN4llvh5APInt17getSignedMinValueEj.exit

_ZN4llvh5APInt17getSignedMinValueEj.exit.thread:  ; preds = %_ZN4llvh5APIntD2Ev.exit, %_ZN4llvh5APIntD2Ev.exit.thread
  %.sroa.0652.0718927 = phi i64 [ %.sroa.0652.0718.ph, %_ZN4llvh5APIntD2Ev.exit.thread ], [ %i.ai, %_ZN4llvh5APIntD2Ev.exit ]
  %i.cy = phi i32 [ %i.g, %_ZN4llvh5APIntD2Ev.exit.thread ], [ %.pre, %_ZN4llvh5APIntD2Ev.exit ] ; 4 uses
  %i.cz = add nuw nsw i32 %i.cy, 63
  %i.da = and i32 %i.cz, 63
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = shl nuw i64 1, %i.db                    ; 2 uses
  %i.dd = inttoptr i64 %i.dc to ptr               ; 2 uses
  store ptr %i.dd, ptr %6, align 8, !tbaa !9, !alias.scope !322
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.cy, ptr %i.de, align 8, !tbaa !7, !alias.scope !324
  br label %_ZN4llvh5APInt17getSignedMaxValueEj.exit

_ZN4llvh5APInt17getSignedMinValueEj.exit:         ; preds = %_ZN4llvh5APIntD2Ev.exit
  %i.df = zext i32 %.pre to i64
  %i.dg = add nuw nsw i64 %i.df, 63               ; 2 uses
  %i.dh = lshr i64 %i.dg, 3
  %i.di = and i64 %i.dh, 1073741816               ; 2 uses
  %i.dj = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.di) #22, !noalias !322 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dj, i8 0, i64 %i.di, i1 false), !noalias !322
  store i64 0, ptr %i.dj, align 8, !tbaa !10, !noalias !322
  %i.dk = sub i32 0, %.pre
  %i.dl = and i32 %i.dk, 63
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = lshr i64 -1, %i.dm
  %.pre7.i.i = lshr i64 %i.dg, 6
  %i.do = add nuw nsw i64 %.pre7.i.i, 4294967295
  %i.dp = and i64 %i.do, 4294967295
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.dp ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !10, !noalias !322
  %i.ds = and i64 %i.dr, %i.dn
  store i64 %i.ds, ptr %i.dq, align 8, !tbaa !10, !noalias !322
  %i.dt = add i32 %.pre, -1                       ; 2 uses
  %i.du = and i32 %i.dt, 63
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = shl nuw i64 1, %i.dv
  %i.dx = lshr i32 %i.dt, 6
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.dy ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !10, !noalias !322
  %i.eb = or i64 %i.ea, %i.dw
  store i64 %i.eb, ptr %i.dz, align 8, !tbaa !10, !noalias !322
  %.pre861 = load i32, ptr %i.f, align 8, !tbaa !7 ; 7 uses
  store ptr %i.dj, ptr %6, align 8, !tbaa !9, !alias.scope !322
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.pre861, ptr %i.ec, align 8, !tbaa !7, !alias.scope !333
  %i.ed = icmp ult i32 %.pre861, 65
  %i.ee = ptrtoint ptr %i.dj to i64               ; 2 uses
  br i1 %i.ed, label %_ZN4llvh5APInt17getSignedMaxValueEj.exit, label %_ZN4llvh5APInt17getSignedMaxValueEj.exit.thread

_ZN4llvh5APInt17getSignedMaxValueEj.exit.thread:  ; preds = %_ZN4llvh5APInt17getSignedMinValueEj.exit
  %i.ef = zext i32 %.pre861 to i64
  %i.eg = add nuw nsw i64 %i.ef, 63               ; 2 uses
  %i.eh = lshr i64 %i.eg, 3
  %i.ei = and i64 %i.eh, 1073741816               ; 2 uses
  %i.ej = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ei) #22, !noalias !333 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ej, i8 0, i64 %i.ei, i1 false), !noalias !333
  store i64 -1, ptr %i.ej, align 8, !tbaa !10, !noalias !333
  %i.ek = lshr i64 %i.eg, 6                       ; 2 uses
  %scevgep.i.i = getelementptr i8, ptr %i.ej, i64 8
  %i.el = shl nuw nsw i64 %i.ek, 3
  %i.em = add nsw i64 %i.el, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.i, i8 -1, i64 %i.em, i1 false), !tbaa !10, !noalias !333
  %i.en = sub i32 0, %.pre861
  %i.eo = and i32 %i.en, 63
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = lshr i64 -1, %i.ep
  %i.er = add nuw nsw i64 %i.ek, 4294967295
  %i.es = and i64 %i.er, 4294967295
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.es ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !10, !noalias !333
  %i.ev = and i64 %i.eu, %i.eq
  store i64 %i.ev, ptr %i.et, align 8, !tbaa !10, !noalias !333
  %i.ew = add i32 %.pre861, -1                    ; 2 uses
  %i.ex = and i32 %i.ew, 63
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = shl nuw i64 1, %i.ey
  %i.fa = xor i64 %i.ez, -1
  %i.fb = lshr i32 %i.ew, 6
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.fc ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !10, !noalias !329
  %i.ff = and i64 %i.fe, %i.fa
  store i64 %i.ff, ptr %i.fd, align 8, !tbaa !10, !noalias !329
  store ptr %i.ej, ptr %7, align 8, !tbaa !9, !alias.scope !329
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.fg = ptrtoint ptr %i.ej to i64
  br label %.lr.ph.preheader.i.i.i21

_ZN4llvh5APInt17getSignedMaxValueEj.exit:         ; preds = %_ZN4llvh5APInt17getSignedMinValueEj.exit, %_ZN4llvh5APInt17getSignedMinValueEj.exit.thread
  %i.fh = phi i64 [ %i.dc, %_ZN4llvh5APInt17getSignedMinValueEj.exit.thread ], [ %i.ee, %_ZN4llvh5APInt17getSignedMinValueEj.exit ] ; 2 uses
  %i.fi = phi ptr [ %i.dd, %_ZN4llvh5APInt17getSignedMinValueEj.exit.thread ], [ %i.dj, %_ZN4llvh5APInt17getSignedMinValueEj.exit ] ; 2 uses
  %i.fj = phi i32 [ %i.cy, %_ZN4llvh5APInt17getSignedMinValueEj.exit.thread ], [ %.pre861, %_ZN4llvh5APInt17getSignedMinValueEj.exit ] ; 4 uses
  %i.fk = phi i32 [ %i.cy, %_ZN4llvh5APInt17getSignedMinValueEj.exit.thread ], [ %.pre, %_ZN4llvh5APInt17getSignedMinValueEj.exit ] ; 2 uses
  %.sroa.0652.0718926930 = phi i64 [ %.sroa.0652.0718927, %_ZN4llvh5APInt17getSignedMinValueEj.exit.thread ], [ %i.ai, %_ZN4llvh5APInt17getSignedMinValueEj.exit ] ; 3 uses
  %i.fl = sub nsw i32 0, %i.fj
  %i.fm = and i32 %i.fl, 63
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = lshr i64 -1, %i.fn
  %i.fp = add nuw nsw i32 %i.fj, 63
  %i.fq = and i32 %i.fp, 63
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = shl nuw i64 1, %i.fr
  %i.ft = xor i64 %i.fs, -1
  %i.fu = and i64 %i.fo, %i.ft                    ; 3 uses
  %i.fv = inttoptr i64 %i.fu to ptr               ; 3 uses
  store ptr %i.fv, ptr %7, align 8, !tbaa !9, !alias.scope !329
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  br i1 %i.h, label %_ZN4llvh5APInt10tcSubtractEPmPKmmj.exit.thread.i.i, label %.lr.ph.preheader.i.i.i21

_ZN4llvh5APInt10tcSubtractEPmPKmmj.exit.thread.i.i: ; preds = %_ZN4llvh5APInt17getSignedMaxValueEj.exit
  %i.fw = load i64, ptr %1, align 8, !tbaa !9, !noalias !334
  %i.fx = sub i64 %.sroa.0652.0718926930, %i.fw
  %i.fy = sub nsw i32 0, %i.g
  %i.fz = and i32 %i.fy, 63
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = lshr i64 -1, %i.ga
  %i.gc = and i64 %i.fx, %i.gb
  br label %_ZN4llvhmiENS_5APIntERKS0_.exit

.lr.ph.preheader.i.i.i21:                         ; preds = %_ZN4llvh5APInt17getSignedMaxValueEj.exit.thread, %_ZN4llvh5APInt17getSignedMaxValueEj.exit
  %i.gd = phi i64 [ %i.fg, %_ZN4llvh5APInt17getSignedMaxValueEj.exit.thread ], [ %i.fu, %_ZN4llvh5APInt17getSignedMaxValueEj.exit ]
  %i.ge = phi ptr [ %i.ej, %_ZN4llvh5APInt17getSignedMaxValueEj.exit.thread ], [ %i.fv, %_ZN4llvh5APInt17getSignedMaxValueEj.exit ]
  %.sroa.0652.0718926929933 = phi i64 [ %i.ai, %_ZN4llvh5APInt17getSignedMaxValueEj.exit.thread ], [ %.sroa.0652.0718926930, %_ZN4llvh5APInt17getSignedMaxValueEj.exit ] ; 2 uses
  %i.gf = phi i32 [ %.pre, %_ZN4llvh5APInt17getSignedMaxValueEj.exit.thread ], [ %i.fk, %_ZN4llvh5APInt17getSignedMaxValueEj.exit ]
  %i.gg = phi i32 [ %.pre861, %_ZN4llvh5APInt17getSignedMaxValueEj.exit.thread ], [ %i.fj, %_ZN4llvh5APInt17getSignedMaxValueEj.exit ]
  %i.gh = phi ptr [ %i.dj, %_ZN4llvh5APInt17getSignedMaxValueEj.exit.thread ], [ %i.fi, %_ZN4llvh5APInt17getSignedMaxValueEj.exit ]
  %i.gi = phi i64 [ %i.ee, %_ZN4llvh5APInt17getSignedMaxValueEj.exit.thread ], [ %i.fh, %_ZN4llvh5APInt17getSignedMaxValueEj.exit ]
  %i.gj = zext i32 %i.g to i64
  %i.gk = add nuw nsw i64 %i.gj, 63               ; 2 uses
  %i.gl = lshr i64 %i.gk, 3
  %i.gm = and i64 %i.gl, 1073741816               ; 2 uses
  %i.gn = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.gm) #22 ; 4 uses
  %i.go = inttoptr i64 %.sroa.0652.0718926929933 to ptr
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gn, ptr align 8 %i.go, i64 %i.gm, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  %i.gp = load ptr, ptr %1, align 8, !tbaa !9, !noalias !334
  %i.gq = lshr i64 %i.gk, 6                       ; 2 uses
  br label %.lr.ph.i.i.i22

.lr.ph.i.i.i22:                                   ; preds = %bb.g, %.lr.ph.preheader.i.i.i21
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i21 ], [ %indvars.iv.next.i.i.i, %bb.g ] ; 3 uses
  %.02021.i.i.i = phi i1 [ true, %.lr.ph.preheader.i.i.i21 ], [ %i.gz, %bb.g ]
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv.i.i.i ; 2 uses
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !10, !noalias !334 ; 4 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.i.i.i
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !10, !noalias !334 ; 3 uses
  br i1 %.02021.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i22
  %.neg.i.i.i = xor i64 %i.gu, -1
  %i.gv = add i64 %i.gs, %.neg.i.i.i              ; 2 uses
  %i.gw = icmp uge i64 %i.gv, %i.gs
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i.i22
  %i.gx = sub i64 %i.gs, %i.gu
  %i.gy = icmp ugt i64 %i.gu, %i.gs
  br label %bb.g

end_hunk_6
