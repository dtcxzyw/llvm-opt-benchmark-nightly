Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/mpn?download=true
inline.NumInlined: 138
inline.NumDeleted: 53
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN4lean7mpn_divEPKjmS1_mPjS2_:bb.a
  %i.cx = lshr i64 %.recomposed, 32
  %i.cy = trunc nuw i64 %i.cx to i32
  store i32 %i.cy, ptr %i.ce, align 4, !tbaa !8
  %i.cz = trunc nuw i64 %i.co to i32              ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ci ; 2 uses
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !8
  br i1 %i.cv, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.db = add i32 %i.cz, -1
  store i32 %i.db, ptr %i.da, align 4, !tbaa !8
  %i.dc = load i32, ptr %i.ck, align 4, !tbaa !8
  %i.dd = add i32 %i.dc, %i.cb
  store i32 %i.dd, ptr %i.ce, align 4, !tbaa !8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0.i = add i64 %.04.i, -1                      ; 2 uses
  %.not.i = icmp eq i64 %.0.i, 0
  br i1 %.not.i, label %_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit, label %bb.l, !llvm.loop !43

.loopexit105:                                     ; preds = %bb.y
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.i, %bb.m, %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp, %.loopexit105
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit105 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.de = load ptr, ptr %9, align 8, !tbaa !29    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.de, %i.bw
  br i1 %.not.i.i.i, label %_ZN4lean6bufferIjLm16EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.df = load i64, ptr %i.by, align 8, !tbaa !34
  %i.dg = shl i64 %i.df, 2
  call void @_ZdaPvm(ptr noundef %i.de, i64 noundef %i.dg) #14
  br label %_ZN4lean6bufferIjLm16EED2Ev.exit

bb.s:                                             ; preds = %bb.j
  %i.dh = load i64, ptr %i.bo, align 8, !tbaa !33 ; 3 uses
  %i.di = load i64, ptr %i.br, align 8, !tbaa !33 ; 23 uses
  %i.dj = add i64 %i.di, 1                        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i32 0, ptr %i.c, align 4, !tbaa !8
  %i.dk = and i64 %i.dj, 4294967295
  invoke void @_ZN4lean6bufferIjLm16EE6resizeEmRKj(ptr noundef nonnull align 8 dereferenceable(88) %8, i64 noundef %i.dk, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %.noexc82 unwind label %.loopexit.split-lp

.noexc82:                                         ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %i.dl = xor i64 %i.di, -1
  %i.dm = add i64 %i.dh, %i.dl                    ; 2 uses
  %.not8.i = icmp eq i64 %i.dm, -1
  br i1 %.not8.i, label %_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit, label %.lr.ph.i80

.lr.ph.i80:                                       ; preds = %.noexc82
  %i.dn = add i64 %i.di, 4294967295
  %i.do = and i64 %i.dn, 4294967295
  %i.dp = add i64 %i.di, 4294967294
  %i.dq = and i64 %i.dp, 4294967295
  %.not5060.i.i = icmp eq i64 %i.di, 0
  %.not.i.i = icmp eq i64 %i.dj, 0
  %i.dr = add i64 %i.di, 2
  %i.ds = and i64 %i.dr, 4294967295
  %i.dt = call i64 @llvm.umax.i64(i64 %i.di, i64 %i.dj) ; 2 uses
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !29
  %.pre12.i = load ptr, ptr %7, align 8, !tbaa !29
  %i.du = trunc i64 %i.dh to i32
  %i.dv = trunc i64 %i.di to i32
  %i.dw = trunc i64 %i.dh to i32
  %i.dx = trunc i64 %i.di to i32
  %i.dy = xor i32 %i.dx, -1
  %i.dz = add i32 %i.dy, %i.dw
  %i.ea = add i64 %i.di, 1                        ; 2 uses
  %xtraiter = and i64 %i.di, 1
  %i.eb = icmp eq i64 %i.di, 1
  %unroll_iter = and i64 %i.di, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod211 = trunc i64 %i.di to i1
  %i.ec = icmp eq i64 %i.di, 0
  %unroll_iter216 = and i64 %i.ea, -2
  %i.ed = and i64 %i.di, 1
  %lcmp.mod213.not.not = icmp eq i64 %i.ed, 0
  %lcmp.mod215 = trunc i64 %i.ea to i1
  %min.iters.check = icmp ult i64 %i.dj, 12
  %i.ee = trunc i64 %i.di to i32
  %i.ef = sub i32 %i.dv, %i.du
  %i.eg = icmp ugt i64 %i.di, 4294967295
  %n.vec = and i64 %i.dj, 8589934584              ; 3 uses
  %cmp.n = icmp eq i64 %i.dj, %n.vec
  %i.eh = and i64 %i.di, 1
  %lcmp.mod219.not.not = icmp eq i64 %i.eh, 0
  br label %bb.t

bb.t:                                             ; preds = %.loopexit.i, %.lr.ph.i80
  %indvar = phi i32 [ %indvar.next, %.loopexit.i ], [ 0, %.lr.ph.i80 ] ; 3 uses
  %i.ei = phi ptr [ %i.kx, %.loopexit.i ], [ %.pre12.i, %.lr.ph.i80 ] ; 7 uses
  %i.ej = phi ptr [ %i.ky, %.loopexit.i ], [ %.pre.i, %.lr.ph.i80 ] ; 6 uses
  %.0649.i = phi i64 [ %i.kz, %.loopexit.i ], [ %i.dm, %.lr.ph.i80 ] ; 10 uses
  %i.ek = sub i32 %i.dz, %indvar
  %i.el = zext i32 %i.ek to i64
  %i.em = shl nuw nsw i64 %i.el, 2
  %i.en = add i64 %.0649.i, %i.di                 ; 3 uses
  %i.eo = and i64 %i.en, 4294967295
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !8
  %i.er = zext i32 %i.eq to i64
  %i.es = shl nuw i64 %i.er, 32
  %i.et = add i64 %i.en, 4294967295
  %i.eu = and i64 %i.et, 4294967295
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !8
  %i.ex = zext i32 %i.ew to i64
  %i.ey = or disjoint i64 %i.es, %i.ex            ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.do
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !8
  %i.fb = zext i32 %i.fa to i64                   ; 3 uses
  %i.fc = udiv i64 %i.ey, %i.fb
  %i.fd = urem i64 %i.ey, %i.fb
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.dq
  %i.ff = add i64 %i.en, 4294967294
  %i.fg = and i64 %i.ff, 4294967295
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.fg
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %bb.t
  %.066.i = phi i64 [ %i.fc, %bb.t ], [ %i.fr, %bb.w ] ; 4 uses
  %.065.i = phi i64 [ %i.fd, %bb.t ], [ %i.fs, %bb.w ] ; 2 uses
  %i.fi = icmp ugt i64 %.066.i, 4294967295
  br i1 %i.fi, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fj = load i32, ptr %i.fe, align 4, !tbaa !8
  %i.fk = zext i32 %i.fj to i64
  %i.fl = mul nuw i64 %.066.i, %i.fk
  %i.fm = shl nuw i64 %.065.i, 32
  %i.fn = load i32, ptr %i.fh, align 4, !tbaa !8
  %i.fo = zext i32 %i.fn to i64
  %i.fp = or disjoint i64 %i.fm, %i.fo
  %i.fq = icmp ugt i64 %i.fl, %i.fp
  br i1 %i.fq, label %bb.w, label %.lr.ph.i.i

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.fr = add i64 %.066.i, -1                     ; 2 uses
  %i.fs = add nuw nsw i64 %.065.i, %i.fb          ; 2 uses
  %i.ft = icmp samesign ult i64 %i.fs, 4294967296
  br i1 %i.ft, label %bb.u, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.w, %bb.v
  %.1.i = phi i64 [ %i.fr, %bb.w ], [ %.066.i, %bb.v ] ; 2 uses
  %i.fu = trunc i64 %.1.i to i32                  ; 3 uses
  %i.fv = load ptr, ptr %8, align 8, !tbaa !29    ; 8 uses
  store i32 0, ptr %i.fv, align 4, !tbaa !8
  %invariant.gep4359.i.i = getelementptr i8, ptr %i.fv, i64 4 ; 3 uses
  br i1 %.not5060.i.i, label %.lr.ph.i69.preheader.i, label %.lr.ph48.split.us.i.preheader.i

.lr.ph48.split.us.i.preheader.i:                  ; preds = %.lr.ph.i.i
  %i.fw = and i64 %.1.i, 4294967295               ; 3 uses
  br i1 %i.eb, label %.lr.ph48.split.us.i.i.epil.preheader, label %.lr.ph48.split.us.i.i

.lr.ph48.split.us.i.i:                            ; preds = %.lr.ph48.split.us.i.preheader.i, %bb.x
  %.03447.us.i.i = phi i64 [ %i.gm, %bb.x ], [ 0, %.lr.ph48.split.us.i.preheader.i ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %bb.x ], [ 0, %.lr.ph48.split.us.i.preheader.i ]
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %.03447.us.i.i
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !8  ; 2 uses
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %.lr.ph48.split.us.i.i.1, label %.preheader.us.i.i

.lr.ph48.split.us.i.i.1:                          ; preds = %.preheader.us.i.i, %.lr.ph48.split.us.i.i
  %.sink.i.i = phi i32 [ %i.gu, %.preheader.us.i.i ], [ 0, %.lr.ph48.split.us.i.i ]
  %gep46.us.i.i = getelementptr [4 x i8], ptr %invariant.gep4359.i.i, i64 %.03447.us.i.i
  store i32 %.sink.i.i, ptr %gep46.us.i.i, align 4, !tbaa !8
  %i.ga = or disjoint i64 %.03447.us.i.i, 1       ; 3 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !8  ; 2 uses
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %bb.x, label %.preheader.us.i.i.1

.preheader.us.i.i.1:                              ; preds = %.lr.ph48.split.us.i.i.1
  %invariant.gep.us.i.i.1 = getelementptr [4 x i8], ptr %i.fv, i64 %i.ga ; 2 uses
  %i.ge = zext i32 %i.gc to i64
  %i.gf = mul nuw i64 %i.fw, %i.ge
  %i.gg = load i32, ptr %invariant.gep.us.i.i.1, align 4, !tbaa !8
  %i.gh = zext i32 %i.gg to i64
  %i.gi = add nuw i64 %i.gf, %i.gh                ; 2 uses
  %i.gj = trunc i64 %i.gi to i32
  store i32 %i.gj, ptr %invariant.gep.us.i.i.1, align 4, !tbaa !8
  %i.gk = lshr i64 %i.gi, 32
  %i.gl = trunc nuw i64 %i.gk to i32
  br label %bb.x

bb.x:                                             ; preds = %.preheader.us.i.i.1, %.lr.ph48.split.us.i.i.1
  %.sink.i.i.1 = phi i32 [ %i.gl, %.preheader.us.i.i.1 ], [ 0, %.lr.ph48.split.us.i.i.1 ]
  %gep46.us.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep4359.i.i, i64 %i.ga
  store i32 %.sink.i.i.1, ptr %gep46.us.i.i.1, align 4, !tbaa !8
  %i.gm = add nuw nsw i64 %.03447.us.i.i, 2       ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4lean7mpn_mulEPKjmS1_mPj.exit.i.unr-lcssa, label %.lr.ph48.split.us.i.i, !llvm.loop !21

.preheader.us.i.i:                                ; preds = %.lr.ph48.split.us.i.i
  %invariant.gep.us.i.i = getelementptr [4 x i8], ptr %i.fv, i64 %.03447.us.i.i ; 2 uses
  %i.gn = zext i32 %i.fy to i64
  %i.go = mul nuw i64 %i.fw, %i.gn
  %i.gp = load i32, ptr %invariant.gep.us.i.i, align 4, !tbaa !8
  %i.gq = zext i32 %i.gp to i64
  %i.gr = add nuw i64 %i.go, %i.gq                ; 2 uses
  %i.gs = trunc i64 %i.gr to i32
  store i32 %i.gs, ptr %invariant.gep.us.i.i, align 4, !tbaa !8
  %i.gt = lshr i64 %i.gr, 32
  %i.gu = trunc nuw i64 %i.gt to i32
  br label %.lr.ph48.split.us.i.i.1

_ZN4lean7mpn_mulEPKjmS1_mPj.exit.i.unr-lcssa:     ; preds = %bb.x
  br i1 %lcmp.mod.not, label %_ZN4lean7mpn_mulEPKjmS1_mPj.exit.i, label %.lr.ph48.split.us.i.i.epil.preheader

.lr.ph48.split.us.i.i.epil.preheader:             ; preds = %_ZN4lean7mpn_mulEPKjmS1_mPj.exit.i.unr-lcssa, %.lr.ph48.split.us.i.preheader.i
  %.03447.us.i.i.epil.init = phi i64 [ 0, %.lr.ph48.split.us.i.preheader.i ], [ %i.gm, %_ZN4lean7mpn_mulEPKjmS1_mPj.exit.i.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod211)
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %.03447.us.i.i.epil.init
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !8  ; 2 uses
  %i.gx = icmp eq i32 %i.gw, 0
  br i1 %i.gx, label %_ZN4lean7mpn_mulEPKjmS1_mPj.exit.i.epilog-lcssa, label %.preheader.us.i.i.epil

.preheader.us.i.i.epil:                           ; preds = %.lr.ph48.split.us.i.i.epil.preheader
  %invariant.gep.us.i.i.epil = getelementptr [4 x i8], ptr %i.fv, i64 %.03447.us.i.i.epil.init ; 2 uses
  %i.gy = zext i32 %i.gw to i64
  %i.gz = mul nuw i64 %i.fw, %i.gy
  %i.ha = load i32, ptr %invariant.gep.us.i.i.epil, align 4, !tbaa !8
  %i.hb = zext i32 %i.ha to i64
  %i.hc = add nuw i64 %i.gz, %i.hb                ; 2 uses
  %i.hd = trunc i64 %i.hc to i32
  store i32 %i.hd, ptr %invariant.gep.us.i.i.epil, align 4, !tbaa !8
  %i.he = lshr i64 %i.hc, 32
  %i.hf = trunc nuw i64 %i.he to i32
  br label %_ZN4lean7mpn_mulEPKjmS1_mPj.exit.i.epilog-lcssa

_ZN4lean7mpn_mulEPKjmS1_mPj.exit.i.epilog-lcssa:  ; preds = %.preheader.us.i.i.epil, %.lr.ph48.split.us.i.i.epil.preheader
  %.sink.i.i.epil = phi i32 [ %i.hf, %.preheader.us.i.i.epil ], [ 0, %.lr.ph48.split.us.i.i.epil.preheader ]
  %gep46.us.i.i.epil = getelementptr [4 x i8], ptr %invariant.gep4359.i.i, i64 %.03447.us.i.i.epil.init
  store i32 %.sink.i.i.epil, ptr %gep46.us.i.i.epil, align 4, !tbaa !8
  br label %_ZN4lean7mpn_mulEPKjmS1_mPj.exit.i

_ZN4lean7mpn_mulEPKjmS1_mPj.exit.i:               ; preds = %_ZN4lean7mpn_mulEPKjmS1_mPj.exit.i.unr-lcssa, %_ZN4lean7mpn_mulEPKjmS1_mPj.exit.i.epilog-lcssa
  br i1 %.not.i.i, label %_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.thread.i, label %.lr.ph.i69.preheader.i

.lr.ph.i69.preheader.i:                           ; preds = %.lr.ph.i.i, %_ZN4lean7mpn_mulEPKjmS1_mPj.exit.i
  %i.hg = and i64 %.0649.i, 4294967295            ; 2 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.hg ; 3 uses
  br i1 %i.ec, label %.lr.ph.i69.i.epil.preheader, label %.lr.ph.i69.i

_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.thread.i:     ; preds = %_ZN4lean7mpn_mulEPKjmS1_mPj.exit.i
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.0649.i
  store i32 %i.fu, ptr %i.hi, align 4, !tbaa !8
  br label %.loopexit.i

.lr.ph.i69.i:                                     ; preds = %.lr.ph.i69.preheader.i, %.lr.ph.i69.i
  %i.hj = phi i32 [ %i.ie, %.lr.ph.i69.i ], [ 0, %.lr.ph.i69.preheader.i ] ; 2 uses
  %.030.i.i = phi i64 [ %i.if, %.lr.ph.i69.i ], [ 0, %.lr.ph.i69.preheader.i ] ; 4 uses
  %niter217 = phi i64 [ %niter217.next.1, %.lr.ph.i69.i ], [ 0, %.lr.ph.i69.preheader.i ]
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %.030.i.i ; 2 uses
  %i.hl = getelementptr [4 x i8], ptr %i.fv, i64 %.030.i.i
  %i.hm = load i32, ptr %i.hk, align 4, !tbaa !8  ; 2 uses
  %i.hn = load i32, ptr %i.hl, align 4, !tbaa !8  ; 2 uses
  %i.ho = sub i32 %i.hm, %i.hn                    ; 2 uses
  %i.hp = icmp ugt i32 %i.hn, %i.hm
  %i.hq = sub i32 %i.ho, %i.hj
  store i32 %i.hq, ptr %i.hk, align 4, !tbaa !8
  %i.hr = icmp ugt i32 %i.hj, %i.ho
  %i.hs = or i1 %i.hp, %i.hr
  %i.ht = zext i1 %i.hs to i32                    ; 2 uses
  %i.hu = or disjoint i64 %.030.i.i, 1            ; 2 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.hu ; 2 uses
  %i.hw = getelementptr [4 x i8], ptr %i.fv, i64 %i.hu
  %i.hx = load i32, ptr %i.hv, align 4, !tbaa !8  ; 2 uses
  %i.hy = load i32, ptr %i.hw, align 4, !tbaa !8  ; 2 uses
  %i.hz = sub i32 %i.hx, %i.hy                    ; 2 uses
  %i.ia = icmp ugt i32 %i.hy, %i.hx
  %i.ib = sub i32 %i.hz, %i.ht
  store i32 %i.ib, ptr %i.hv, align 4, !tbaa !8
  %i.ic = icmp ult i32 %i.hz, %i.ht
  %i.id = or i1 %i.ia, %i.ic                      ; 2 uses
  %i.ie = zext i1 %i.id to i32                    ; 2 uses
  %i.if = add nuw i64 %.030.i.i, 2                ; 2 uses
  %niter217.next.1 = add i64 %niter217, 2         ; 2 uses
  %niter217.ncmp.1 = icmp eq i64 %niter217.next.1, %unroll_iter216
  br i1 %niter217.ncmp.1, label %_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.i.unr-lcssa, label %.lr.ph.i69.i, !llvm.loop !15

_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.i.unr-lcssa:  ; preds = %.lr.ph.i69.i
  br i1 %lcmp.mod213.not.not, label %.lr.ph.i69.i.epil.preheader, label %_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.i

.lr.ph.i69.i.epil.preheader:                      ; preds = %_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.i.unr-lcssa, %.lr.ph.i69.preheader.i
  %.epil.init = phi i32 [ 0, %.lr.ph.i69.preheader.i ], [ %i.ie, %_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.i.unr-lcssa ] ; 2 uses
  %.030.i.i.epil.init = phi i64 [ 0, %.lr.ph.i69.preheader.i ], [ %i.if, %_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod215)
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %.030.i.i.epil.init ; 2 uses
  %i.ih = getelementptr [4 x i8], ptr %i.fv, i64 %.030.i.i.epil.init
  %i.ii = load i32, ptr %i.ig, align 4, !tbaa !8  ; 2 uses
  %i.ij = load i32, ptr %i.ih, align 4, !tbaa !8  ; 2 uses
  %i.ik = sub i32 %i.ii, %i.ij                    ; 2 uses
  %i.il = icmp ugt i32 %i.ij, %i.ii
  %i.im = sub i32 %i.ik, %.epil.init
  store i32 %i.im, ptr %i.ig, align 4, !tbaa !8
  %i.in = icmp ugt i32 %.epil.init, %i.ik
  %i.io = or i1 %i.il, %i.in
  br label %_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.i

_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.i:            ; preds = %_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.i.unr-lcssa, %.lr.ph.i69.i.epil.preheader
  %.lcssa = phi i1 [ %i.id, %_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.i.unr-lcssa ], [ %i.io, %.lr.ph.i69.i.epil.preheader ]
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.0649.i ; 2 uses
  store i32 %i.fu, ptr %i.ip, align 4, !tbaa !8
  br i1 %.lcssa, label %bb.y, label %.loopexit.i

bb.y:                                             ; preds = %_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.i
  %i.iq = add i32 %i.fu, -1
  store i32 %i.iq, ptr %i.ip, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i32 0, ptr %i.d, align 4, !tbaa !8
  invoke void @_ZN4lean6bufferIjLm16EE6resizeEmRKj(ptr noundef nonnull align 8 dereferenceable(88) %9, i64 noundef %i.ds, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %.noexc83 unwind label %.loopexit105

.noexc83:                                         ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  %i.ir = load ptr, ptr %7, align 8, !tbaa !29    ; 4 uses
  %i.is = load ptr, ptr %6, align 8, !tbaa !29    ; 9 uses
  %i.it = ptrtoaddr ptr %i.is to i64
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.hg
  %i.iv = load ptr, ptr %9, align 8, !tbaa !29    ; 7 uses
  %i.iw = ptrtoaddr ptr %i.iv to i64
  br label %.lr.ph.i72.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i72.i
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.dt
  store i32 %i.kh, ptr %i.ix, align 4, !tbaa !8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %._crit_edge.i.i
  %i.iy = add i32 %i.ef, %indvar
  %i.iz = icmp ult i32 %i.iy, %i.ee
  %i.ja = or i1 %i.iz, %i.eg
  br i1 %i.ja, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.jb = add i64 %i.em, %i.it
  %i.jc = sub i64 %i.iw, %i.jb
  %diff.check = icmp ugt i64 %i.jc, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.jd = and i64 %index, 4294967288
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.jd ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %wide.load = load <4 x i32>, ptr %i.je, align 4, !tbaa !8
  %wide.load152 = load <4 x i32>, ptr %i.jf, align 4, !tbaa !8
  %i.jg = add i64 %index, %.0649.i
  %i.jh = and i64 %i.jg, 4294967295
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.jh ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  store <4 x i32> %wide.load, ptr %i.ji, align 4, !tbaa !8
  store <4 x i32> %wide.load152, ptr %i.jj, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jk = icmp eq i64 %index.next, %n.vec
  br i1 %i.jk, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %._crit_edge.i.i, %middle.block
  %.07.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %._crit_edge.i.i ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod219.not.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.jl = and i64 %.07.i.ph, 4294967288
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.jl
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !8
  %i.jo = add i64 %.07.i.ph, %.0649.i
  %i.jp = and i64 %i.jo, 4294967295
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.jp
  store i32 %i.jn, ptr %i.jq, align 4, !tbaa !8
  %i.jr = or disjoint i64 %.07.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.07.i.unr = phi i64 [ %.07.i.ph, %scalar.ph.preheader ], [ %i.jr, %scalar.ph.prol ]
  %i.js = icmp eq i64 %i.di, %.07.i.ph
  br i1 %i.js, label %.loopexit.i, label %scalar.ph

.lr.ph.i72.i:                                     ; preds = %.lr.ph.i72.i, %.noexc83
  %.041.i.i = phi i32 [ %i.kh, %.lr.ph.i72.i ], [ 0, %.noexc83 ]
  %.03740.i.i = phi i64 [ %i.ki, %.lr.ph.i72.i ], [ 0, %.noexc83 ] ; 6 uses
  %i.jt = icmp ult i64 %.03740.i.i, %i.di
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %.03740.i.i
  %i.jv = select i1 %i.jt, ptr %i.ju, ptr @_ZN4leanL4zeroE
  %i.jw = icmp ult i64 %.03740.i.i, %i.dj
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %.03740.i.i
  %i.jy = select i1 %i.jw, ptr %i.jx, ptr @_ZN4leanL4zeroE
end_hunk_0
begin_hunk_1_@_ZN4lean13mpn_to_stringEPKjmPcm:bb.a
  %i.dp = lshr i64 %.recomposed, 32
  %i.dq = trunc nuw i64 %i.dp to i32
  store i32 %i.dq, ptr %i.cw, align 4, !tbaa !8
  %i.dr = trunc nuw i64 %i.dg to i32              ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.da ; 2 uses
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !8
  br i1 %i.dn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dt = add i32 %i.dr, -1
  store i32 %i.dt, ptr %i.ds, align 4, !tbaa !8
  %i.du = load i32, ptr %i.dc, align 4, !tbaa !8
  %i.dv = add i32 %i.du, %i.cs
  store i32 %i.dv, ptr %i.cw, align 4, !tbaa !8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.0.i = add i64 %.04.i, -1                      ; 2 uses
  %.not.i90 = icmp eq i64 %.0.i, 0
  br i1 %.not.i90, label %_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit.loopexit, label %bb.u, !llvm.loop !43

_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit.loopexit: ; preds = %bb.y
  %.val50.pre = load ptr, ptr %5, align 8
  br label %_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit

_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit:        ; preds = %_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit.loopexit, %bb.t
  %.val50 = phi ptr [ %.val50.pre, %_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit.loopexit ], [ %.val, %bb.t ] ; 3 uses
  %.val51 = load i64, ptr %i.by, align 8          ; 4 uses
  %i.dw = icmp eq i64 %i.cq, 0
  br i1 %i.dw, label %.preheader.i, label %.preheader1.i

.preheader1.i:                                    ; preds = %_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit
  %i.dx = add i64 %.val51, 4294967295
  %.pre.i = trunc i64 %i.cq to i32
  %i.dy = and i64 %i.dx, 4294967295
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %.val50, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !8
  %i.eb = lshr i32 %i.ea, %.pre.i
  %i.ec = getelementptr [4 x i8], ptr %i.b, i64 %.val51
  %i.ed = getelementptr i8, ptr %i.ec, i64 -4
  store i32 %i.eb, ptr %i.ed, align 4, !tbaa !8
  %.pre153 = load i32, ptr %i.b, align 4, !tbaa !8
  br label %_ZN4leanL15div_unnormalizeERNS_10mpn_bufferES1_mPj.exit

.preheader.i:                                     ; preds = %_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit
  %.not5.i = icmp eq i64 %.val51, 0
  br i1 %.not5.i, label %_ZN4leanL15div_unnormalizeERNS_10mpn_bufferES1_mPj.exit, label %.lr.ph4.i.preheader

.lr.ph4.i.preheader:                              ; preds = %.preheader.i
  %i.ee = add i64 %.val51, 4294967295
  %i.ef = and i64 %i.ee, 4294967295
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %.val50, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !8  ; 2 uses
  store i32 %i.eh, ptr %i.b, align 4, !tbaa !8
  br label %_ZN4leanL15div_unnormalizeERNS_10mpn_bufferES1_mPj.exit

_ZN4leanL15div_unnormalizeERNS_10mpn_bufferES1_mPj.exit: ; preds = %.lr.ph4.i.preheader, %.preheader1.i, %.preheader.i
  %i.ei = phi i32 [ %i.eh, %.lr.ph4.i.preheader ], [ %.pre153, %.preheader1.i ], [ %i.cj, %.preheader.i ] ; 2 uses
  %i.ej = trunc i32 %i.ei to i8
  %i.ek = add i8 %i.ej, 48
  %i.el = add i64 %.034, 1
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 %.034
  store i8 %i.ek, ptr %i.em, align 1, !tbaa !40
  %.pr = load i64, ptr %i.h, align 8, !tbaa !33   ; 2 uses
  %i.en = icmp eq i64 %.pr, 0
  br i1 %i.en, label %.critedge4, label %.lr.ph131

.lr.ph131:                                        ; preds = %_ZN4leanL15div_unnormalizeERNS_10mpn_bufferES1_mPj.exit, %bb.z
  %i.eo = phi i64 [ %i.et, %bb.z ], [ %.pr, %_ZN4leanL15div_unnormalizeERNS_10mpn_bufferES1_mPj.exit ] ; 3 uses
  %i.ep = getelementptr [4 x i8], ptr %i.ct, i64 %i.eo
  %i.eq = getelementptr i8, ptr %i.ep, i64 -4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !8
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.z, label %.critedge4

bb.z:                                             ; preds = %.lr.ph131
  %i.et = add i64 %i.eo, -1                       ; 3 uses
  store i64 %i.et, ptr %i.h, align 8, !tbaa !33
  %i.eu = icmp eq i64 %i.et, 0
  br i1 %i.eu, label %.critedge4, label %.lr.ph131, !llvm.loop !81

.loopexit:                                        ; preds = %bb.s
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp:                               ; preds = %bb.v
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.ev = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %.not.i.i.i98 = icmp eq ptr %i.ev, %i.bz
  br i1 %.not.i.i.i98, label %.body86, label %bb.ae

.critedge4:                                       ; preds = %.lr.ph131, %bb.z, %_ZN4leanL15div_unnormalizeERNS_10mpn_bufferES1_mPj.exit
  %i.ew = phi i64 [ 0, %_ZN4leanL15div_unnormalizeERNS_10mpn_bufferES1_mPj.exit ], [ %i.eo, %.lr.ph131 ], [ 0, %bb.z ]
  br label %bb.q, !llvm.loop !82

.critedge:                                        ; preds = %bb.q, %bb.r
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 %.034
  store i8 0, ptr %i.ex, align 1, !tbaa !40
  %i.ey = add i64 %.034, -1                       ; 5 uses
  %i.ez = lshr i64 %i.ey, 1                       ; 2 uses
  %i.fa = and i64 %i.ey, 1                        ; 2 uses
  %i.fb = add nuw i64 %i.ez, %i.fa                ; 4 uses
  %.not136 = icmp eq i64 %i.fb, 0
  br i1 %.not136, label %._crit_edge, label %.lr.ph134.preheader

.lr.ph134.preheader:                              ; preds = %.critedge
  %i.fc = add nsw i64 %i.ez, -1
  %xtraiter = and i64 %i.fb, 1
  %i.fd = sub nsw i64 0, %i.fa
  %i.fe = icmp eq i64 %i.fc, %i.fd
  br i1 %i.fe, label %.lr.ph134.epil.preheader, label %.lr.ph134.preheader.new

.lr.ph134.preheader.new:                          ; preds = %.lr.ph134.preheader
  %unroll_iter = and i64 %i.fb, -2
  br label %.lr.ph134

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph134
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph134.epil.preheader

.lr.ph134.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph134.preheader
  %.0133.epil.init = phi i64 [ 0, %.lr.ph134.preheader ], [ %i.gd, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod218 = trunc i64 %i.fb to i1
  call void @llvm.assume(i1 %lcmp.mod218)
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 %.0133.epil.init ; 2 uses
  %i.fg = sub i64 %i.ey, %.0133.epil.init
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 %i.fg ; 2 uses
  %i.fi = load i8, ptr %i.ff, align 1, !tbaa !40
  %i.fj = load i8, ptr %i.fh, align 1, !tbaa !40
  store i8 %i.fj, ptr %i.ff, align 1, !tbaa !40
  store i8 %i.fi, ptr %i.fh, align 1, !tbaa !40
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph134.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %.not.i.i.i = icmp eq ptr %i.cl, %i.bz
  br i1 %.not.i.i.i, label %_ZN4lean6bufferIjLm16EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge
  %i.fk = load i64, ptr %i.bx, align 8, !tbaa !34
  %i.fl = shl i64 %i.fk, 2
  call void @_ZdaPvm(ptr noundef nonnull %i.cl, i64 noundef %i.fl) #14
  %.pre149 = load ptr, ptr %5, align 8, !tbaa !29
  br label %_ZN4lean6bufferIjLm16EED2Ev.exit

_ZN4lean6bufferIjLm16EED2Ev.exit:                 ; preds = %._crit_edge, %bb.ab
  %i.fm = phi ptr [ %i.ck, %._crit_edge ], [ %.pre149, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %.not.i.i.i94 = icmp eq ptr %i.fm, %i.cb
  br i1 %.not.i.i.i94, label %_ZN4lean6bufferIjLm16EED2Ev.exit95, label %bb.ac

bb.ac:                                            ; preds = %_ZN4lean6bufferIjLm16EED2Ev.exit
  %i.fn = load i64, ptr %i.cd, align 8, !tbaa !34
  %i.fo = shl i64 %i.fn, 2
  call void @_ZdaPvm(ptr noundef %i.fm, i64 noundef %i.fo) #14
  br label %_ZN4lean6bufferIjLm16EED2Ev.exit95

_ZN4lean6bufferIjLm16EED2Ev.exit95:               ; preds = %_ZN4lean6bufferIjLm16EED2Ev.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.fp = load ptr, ptr %4, align 8, !tbaa !29    ; 2 uses
  %.not.i.i.i96 = icmp eq ptr %i.fp, %i.g
  br i1 %.not.i.i.i96, label %_ZN4lean6bufferIjLm16EED2Ev.exit97, label %bb.ad

bb.ad:                                            ; preds = %_ZN4lean6bufferIjLm16EED2Ev.exit95
  %i.fq = load i64, ptr %i.i, align 8, !tbaa !34
  %i.fr = shl i64 %i.fq, 2
  call void @_ZdaPvm(ptr noundef %i.fp, i64 noundef %i.fr) #14
  br label %_ZN4lean6bufferIjLm16EED2Ev.exit97

_ZN4lean6bufferIjLm16EED2Ev.exit97:               ; preds = %_ZN4lean6bufferIjLm16EED2Ev.exit95, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.ah

.lr.ph134:                                        ; preds = %.lr.ph134, %.lr.ph134.preheader.new
  %.0133 = phi i64 [ 0, %.lr.ph134.preheader.new ], [ %i.gd, %.lr.ph134 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph134.preheader.new ], [ %niter.next.1, %.lr.ph134 ]
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 %.0133 ; 2 uses
  %i.ft = sub i64 %i.ey, %.0133
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 %i.ft ; 2 uses
  %i.fv = load i8, ptr %i.fs, align 1, !tbaa !40
  %i.fw = load i8, ptr %i.fu, align 1, !tbaa !40
  store i8 %i.fw, ptr %i.fs, align 1, !tbaa !40
  store i8 %i.fv, ptr %i.fu, align 1, !tbaa !40
  %i.fx = or disjoint i64 %.0133, 1               ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 %i.fx ; 2 uses
  %i.fz = sub i64 %i.ey, %i.fx
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 %i.fz ; 2 uses
  %i.gb = load i8, ptr %i.fy, align 1, !tbaa !40
  %i.gc = load i8, ptr %i.ga, align 1, !tbaa !40
  store i8 %i.gc, ptr %i.fy, align 1, !tbaa !40
  store i8 %i.gb, ptr %i.ga, align 1, !tbaa !40
  %i.gd = add nuw nsw i64 %.0133, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph134, !llvm.loop !83

bb.ae:                                            ; preds = %bb.aa
  %i.ge = load i64, ptr %i.bx, align 8, !tbaa !34
  %i.gf = shl i64 %i.ge, 2
  call void @_ZdaPvm(ptr noundef %i.ev, i64 noundef %i.gf) #14
  br label %.body86

.body86:                                          ; preds = %bb.ae, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.gg = load ptr, ptr %5, align 8, !tbaa !29    ; 2 uses
  %.not.i.i.i100 = icmp eq ptr %i.gg, %i.cb
  br i1 %.not.i.i.i100, label %.body, label %bb.af

bb.af:                                            ; preds = %.body86
  %i.gh = load i64, ptr %i.cd, align 8, !tbaa !34
  br label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.p, %bb.af
  %.sink190 = phi i64 [ %i.gh, %bb.af ], [ %i.al, %bb.p ]
  %.sink = phi ptr [ %i.gg, %bb.af ], [ %.pre.i.i54, %bb.p ]
  %.pn45.pn.pn.ph = phi { ptr, i32 } [ %lpad.phi, %bb.af ], [ %i.az, %bb.p ]
  %i.gi = shl i64 %.sink190, 2
  call void @_ZdaPvm(ptr noundef %.sink, i64 noundef %i.gi) #14
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.body86, %bb.p
  %.pn45.pn.pn = phi { ptr, i32 } [ %i.az, %bb.p ], [ %lpad.phi, %.body86 ], [ %.pn45.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.gj = load ptr, ptr %4, align 8, !tbaa !29    ; 2 uses
  %.not.i.i.i102 = icmp eq ptr %i.gj, %i.g
  br i1 %.not.i.i.i102, label %_ZN4lean6bufferIjLm16EED2Ev.exit103, label %bb.ag

bb.ag:                                            ; preds = %.body
  %i.gk = load i64, ptr %i.i, align 8, !tbaa !34
  %i.gl = shl i64 %i.gk, 2
  call void @_ZdaPvm(ptr noundef %i.gj, i64 noundef %i.gl) #14
  br label %_ZN4lean6bufferIjLm16EED2Ev.exit103

_ZN4lean6bufferIjLm16EED2Ev.exit103:              ; preds = %.body, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %common.resume

bb.ah:                                            ; preds = %_ZN4lean6bufferIjLm16EED2Ev.exit97, %bb.b
  ret ptr %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4lean6bufferIjLm16EE6resizeEmRKj(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !33   ; 6 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !34   ; 3 uses
  %i.f = icmp ugt i64 %1, %i.e
  br i1 %i.f, label %bb.c, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.g = shl i64 %1, 2
  %i.h = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #16 ; 3 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !29     ; 4 uses
  %i.j = icmp ugt i64 %i.b, 1
  br i1 %i.j, label %bb.d, label %bb.e, !prof !77

bb.d:                                             ; preds = %bb.c
  %.idx.i.i = shl nuw nsw i64 %i.b, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.h, ptr align 4 %i.i, i64 %.idx.i.i, i1 false)
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.k = icmp eq i64 %i.b, 1
  br i1 %i.k, label %bb.f, label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr %i.i, align 4, !tbaa !8
  store i32 %i.l, ptr %i.h, align 4, !tbaa !8
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i

_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.m
  br i1 %.not.i.i.i.i, label %_ZN4lean6bufferIjLm16EE12set_capacityEm.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i
  %i.n = shl i64 %i.e, 2
  tail call void @_ZdaPvm(ptr noundef %i.i, i64 noundef %i.n) #14
  br label %_ZN4lean6bufferIjLm16EE12set_capacityEm.exit.i

_ZN4lean6bufferIjLm16EE12set_capacityEm.exit.i:   ; preds = %bb.g, %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i
  store ptr %i.h, ptr %0, align 8, !tbaa !29
  store i64 %1, ptr %i.d, align 8, !tbaa !34
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4lean6bufferIjLm16EE12set_capacityEm.exit.i, %bb.b
  %i.o = phi i64 [ %i.e, %bb.b ], [ %1, %_ZN4lean6bufferIjLm16EE12set_capacityEm.exit.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load i64, ptr %i.a, align 8, !tbaa !33
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZN4lean6bufferIjLm16EE9push_backERKj.exit
  %i.q = phi i64 [ %i.o, %.lr.ph ], [ %i.aa, %_ZN4lean6bufferIjLm16EE9push_backERKj.exit ] ; 5 uses
  %i.r = phi i64 [ %.pre, %.lr.ph ], [ %i.af, %_ZN4lean6bufferIjLm16EE9push_backERKj.exit ] ; 6 uses
  %.01420 = phi i64 [ %i.b, %.lr.ph ], [ %i.ag, %_ZN4lean6bufferIjLm16EE9push_backERKj.exit ]
  %.not.i = icmp ult i64 %i.r, %i.q
  br i1 %.not.i, label %._crit_edge.i, label %bb.i

._crit_edge.i:                                    ; preds = %bb.h
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !29
  br label %_ZN4lean6bufferIjLm16EE9push_backERKj.exit

bb.i:                                             ; preds = %bb.h
  %i.s = shl i64 %i.q, 3
  %i.t = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.s) #16 ; 4 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !29     ; 4 uses
  %i.v = icmp ugt i64 %i.r, 1
  br i1 %i.v, label %bb.j, label %bb.k, !prof !77

bb.j:                                             ; preds = %bb.i
  %.idx.i.i.i = shl nuw nsw i64 %i.r, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.t, ptr align 4 %i.u, i64 %.idx.i.i.i, i1 false)
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.w = icmp eq i64 %i.r, 1
  br i1 %i.w, label %bb.l, label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.x = load i32, ptr %i.u, align 4, !tbaa !8
  store i32 %i.x, ptr %i.t, align 4, !tbaa !8
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i.i

_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i.i: ; preds = %bb.l, %bb.k, %bb.j
  %.not.i.i.i.i.i = icmp eq ptr %i.u, %i.p
  br i1 %.not.i.i.i.i.i, label %_ZN4lean6bufferIjLm16EE6expandEv.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i.i
  %i.y = shl i64 %i.q, 2
  tail call void @_ZdaPvm(ptr noundef %i.u, i64 noundef %i.y) #14
  %.pre2.pre.i = load i64, ptr %i.a, align 8, !tbaa !33
  br label %_ZN4lean6bufferIjLm16EE6expandEv.exit.i

_ZN4lean6bufferIjLm16EE6expandEv.exit.i:          ; preds = %bb.m, %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i.i
  %.pre2.i = phi i64 [ %i.r, %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i.i ], [ %.pre2.pre.i, %bb.m ]
  %i.z = shl i64 %i.q, 1                          ; 2 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !29
  store i64 %i.z, ptr %i.d, align 8, !tbaa !34
  br label %_ZN4lean6bufferIjLm16EE9push_backERKj.exit

_ZN4lean6bufferIjLm16EE9push_backERKj.exit:       ; preds = %._crit_edge.i, %_ZN4lean6bufferIjLm16EE6expandEv.exit.i
  %i.aa = phi i64 [ %i.q, %._crit_edge.i ], [ %i.z, %_ZN4lean6bufferIjLm16EE6expandEv.exit.i ]
  %i.ab = phi i64 [ %i.r, %._crit_edge.i ], [ %.pre2.i, %_ZN4lean6bufferIjLm16EE6expandEv.exit.i ] ; 2 uses
  %i.ac = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.t, %_ZN4lean6bufferIjLm16EE6expandEv.exit.i ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ab
  %i.ae = load i32, ptr %2, align 4, !tbaa !8
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !8
  %i.af = add i64 %i.ab, 1                        ; 2 uses
  store i64 %i.af, ptr %i.a, align 8, !tbaa !33
  %i.ag = add i64 %.01420, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %1
  br i1 %exitcond.not, label %.loopexit, label %bb.h, !llvm.loop !84

bb.n:                                             ; preds = %bb.a
  %i.ah = icmp ult i64 %1, %i.b
  br i1 %i.ah, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.n
  store i64 %1, ptr %i.a, align 8, !tbaa !33
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4lean6bufferIjLm16EE9push_backERKj.exit, %.preheader, %bb.n
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN4lean9throwableD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #8

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
end_hunk_1
