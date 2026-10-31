Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/mpn?download=true
inline.NumInlined: 138
inline.NumDeleted: 53
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN4lean7mpn_divEPKjmS1_mPjS2_:bb.a
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !12
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ba
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !12
  %i.be = add nuw i64 %.064111, 2                 ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !12
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.be
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !12
  %i.bi = add nuw i64 %.064111, 3                 ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !12
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.bi
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !12
  %i.bm = add nuw i64 %.064111, 4                 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bm, %1
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph113, !llvm.loop !44

bb.i:                                             ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store ptr %i.bn, ptr %6, align 8, !tbaa !21
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 0, ptr %i.bo, align 8, !tbaa !22
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store i64 16, ptr %i.bp, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  store ptr %i.bq, ptr %7, align 8, !tbaa !21
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 0, ptr %i.br, align 8, !tbaa !22
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store i64 16, ptr %i.bs, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  store ptr %i.bt, ptr %8, align 8, !tbaa !21
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.bu, align 8, !tbaa !22
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store i64 16, ptr %i.bv, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  store ptr %i.bw, ptr %9, align 8, !tbaa !21
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.bx, align 8, !tbaa !22
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store i64 16, ptr %i.by, align 8, !tbaa !23
  %i.bz = invoke fastcc noundef i64 @_ZN4leanL13div_normalizeEPKjmS1_mRNS_10mpn_bufferES3_(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(88) %6, ptr noundef nonnull align 8 dereferenceable(88) %7)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.j:                                             ; preds = %bb.i
  br i1 %i.w, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.ca = load ptr, ptr %7, align 8, !tbaa !21
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !12 ; 2 uses
  %.val = load ptr, ptr %6, align 8               ; 2 uses
  %.val77 = load i64, ptr %i.bo, align 8, !tbaa !22 ; 2 uses
  %.01.i = add i64 %.val77, -1                    ; 2 uses
  %.not2.i = icmp eq i64 %.01.i, 0
  br i1 %.not2.i, label %_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.cc = zext i32 %i.cb to i64                   ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %.lr.ph.i
  %.04.i = phi i64 [ %.01.i, %.lr.ph.i ], [ %.0.i, %bb.p ] ; 3 uses
  %.0.in3.i = phi i64 [ %.val77, %.lr.ph.i ], [ %.04.i, %bb.p ]
  %i.cd = and i64 %.04.i, 4294967295
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.cd ; 3 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !12
  %i.cg = zext i32 %i.cf to i64
  %i.ch = shl nuw i64 %i.cg, 32
  %i.ci = add i64 %.0.in3.i, -2                   ; 2 uses
  %i.cj = and i64 %i.ci, 4294967295
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.cj ; 3 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !12
  %i.cm = zext i32 %i.cl to i64
  %i.cn = or disjoint i64 %i.ch, %i.cm            ; 3 uses
  %i.co = udiv i64 %i.cn, %i.cc                   ; 3 uses
  %.recomposed = urem i64 %i.cn, %i.cc            ; 2 uses
  %i.cp = icmp ugt i64 %i.co, 4294967295
  br i1 %i.cp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cq = call ptr @__cxa_allocate_exception(i64 40) #14 ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 24 ; 2 uses
  store ptr %i.cs, ptr %i.cr, align 8, !tbaa !26
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store i64 0, ptr %i.ct, align 8, !tbaa !28
  store i8 0, ptr %i.cs, align 8, !tbaa !29
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4lean19unreachable_reachedE, i64 16), ptr %i.cq, align 8, !tbaa !31
  invoke void @__cxa_throw(ptr nonnull %i.cq, ptr nonnull @_ZTIN4lean19unreachable_reachedE, ptr nonnull @_ZN4lean9throwableD2Ev) #15
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.cu = mul nuw i64 %i.co, %i.cc
  %i.cv = icmp ugt i64 %i.cu, %i.cn
  %i.cw = trunc i64 %.recomposed to i32
  store i32 %i.cw, ptr %i.ck, align 4, !tbaa !12
  %i.cx = lshr i64 %.recomposed, 32
  %i.cy = trunc nuw i64 %i.cx to i32
  store i32 %i.cy, ptr %i.ce, align 4, !tbaa !12
  %i.cz = trunc nuw i64 %i.co to i32              ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ci ; 2 uses
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !12
  br i1 %i.cv, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.db = add i32 %i.cz, -1
  store i32 %i.db, ptr %i.da, align 4, !tbaa !12
  %i.dc = load i32, ptr %i.ck, align 4, !tbaa !12
  %i.dd = add i32 %i.dc, %i.cb
  store i32 %i.dd, ptr %i.ce, align 4, !tbaa !12
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0.i = add i64 %.04.i, -1                      ; 2 uses
  %.not.i = icmp eq i64 %.0.i, 0
  br i1 %.not.i, label %_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit, label %bb.l, !llvm.loop !3

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.x, %bb.r, %bb.m, %bb.i
  %lpad.loopexit.split-lp216 = landingpad { ptr, i32 }
          cleanup
  %i.de = load ptr, ptr %9, align 8, !tbaa !21    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.de, %i.bw
  br i1 %.not.i.i.i, label %_ZN4lean6bufferIjLm16EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.df = load i64, ptr %i.by, align 8, !tbaa !23
  %i.dg = shl i64 %i.df, 2
  call void @_ZdaPvm(ptr noundef %i.de, i64 noundef %i.dg) #14
  br label %_ZN4lean6bufferIjLm16EED2Ev.exit

bb.r:                                             ; preds = %bb.j
  %i.dh = load i64, ptr %i.bo, align 8, !tbaa !22 ; 3 uses
  %i.di = load i64, ptr %i.br, align 8, !tbaa !22 ; 23 uses
  %i.dj = add i64 %i.di, 1                        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i32 0, ptr %i.c, align 4, !tbaa !12
  %i.dk = and i64 %i.dj, 4294967295
  invoke void @_ZN4lean6bufferIjLm16EE6resizeEmRKj(ptr noundef nonnull align 8 dereferenceable(88) %8, i64 noundef %i.dk, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %.noexc82 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc82:                                         ; preds = %bb.r
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
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !21
  %.pre11.i = load ptr, ptr %7, align 8, !tbaa !21
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
  %lcmp.mod219 = trunc i64 %i.di to i1
  %i.ec = icmp eq i64 %i.di, 0
  %unroll_iter224 = and i64 %i.ea, -2
  %i.ed = and i64 %i.di, 1
  %lcmp.mod221.not.not = icmp eq i64 %i.ed, 0
  %lcmp.mod223 = trunc i64 %i.ea to i1
  %min.iters.check = icmp ult i64 %i.dj, 12
  %i.ee = trunc i64 %i.di to i32
  %i.ef = sub i32 %i.dv, %i.du
  %i.eg = icmp ugt i64 %i.di, 4294967295
  %n.vec = and i64 %i.dj, 8589934584              ; 3 uses
  %cmp.n = icmp eq i64 %i.dj, %n.vec
  %i.eh = and i64 %i.di, 1
  %lcmp.mod227.not.not = icmp eq i64 %i.eh, 0
  br label %bb.s

bb.s:                                             ; preds = %.loopexit.i, %.lr.ph.i80
  %indvar = phi i32 [ %indvar.next, %.loopexit.i ], [ 0, %.lr.ph.i80 ] ; 3 uses
  %i.ei = phi ptr [ %i.ku, %.loopexit.i ], [ %.pre11.i, %.lr.ph.i80 ] ; 7 uses
  %i.ej = phi ptr [ %i.kv, %.loopexit.i ], [ %.pre.i, %.lr.ph.i80 ] ; 6 uses
  %.0649.i = phi i64 [ %i.kw, %.loopexit.i ], [ %i.dm, %.lr.ph.i80 ] ; 10 uses
  %i.ek = add i64 %.0649.i, %i.di                 ; 3 uses
  %i.el = and i64 %i.ek, 4294967295
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !12
  %i.eo = zext i32 %i.en to i64
  %i.ep = shl nuw i64 %i.eo, 32
  %i.eq = add i64 %i.ek, 4294967295
  %i.er = and i64 %i.eq, 4294967295
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !12
  %i.eu = zext i32 %i.et to i64
  %i.ev = or disjoint i64 %i.ep, %i.eu            ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.do
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !12
  %i.ey = zext i32 %i.ex to i64                   ; 3 uses
  %i.ez = udiv i64 %i.ev, %i.ey
  %i.fa = urem i64 %i.ev, %i.ey
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.dq
  %i.fc = add i64 %i.ek, 4294967294
  %i.fd = and i64 %i.fc, 4294967295
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.fd
  br label %bb.t

bb.t:                                             ; preds = %bb.v, %bb.s
  %.066.i = phi i64 [ %i.ez, %bb.s ], [ %i.fo, %bb.v ] ; 4 uses
  %.065.i = phi i64 [ %i.fa, %bb.s ], [ %i.fp, %bb.v ] ; 2 uses
  %i.ff = icmp ugt i64 %.066.i, 4294967295
  br i1 %i.ff, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fg = load i32, ptr %i.fb, align 4, !tbaa !12
  %i.fh = zext i32 %i.fg to i64
  %i.fi = mul nuw i64 %.066.i, %i.fh
  %i.fj = shl nuw i64 %.065.i, 32
  %i.fk = load i32, ptr %i.fe, align 4, !tbaa !12
  %i.fl = zext i32 %i.fk to i64
  %i.fm = or disjoint i64 %i.fj, %i.fl
  %i.fn = icmp ugt i64 %i.fi, %i.fm
  br i1 %i.fn, label %bb.v, label %.lr.ph.i.i

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.fo = add i64 %.066.i, -1                     ; 2 uses
  %i.fp = add nuw nsw i64 %.065.i, %i.ey          ; 2 uses
  %i.fq = icmp samesign ult i64 %i.fp, 4294967296
  br i1 %i.fq, label %bb.t, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.v, %bb.u
  %.1.i = phi i64 [ %i.fo, %bb.v ], [ %.066.i, %bb.u ] ; 2 uses
  %i.fr = trunc i64 %.1.i to i32                  ; 3 uses
  %i.fs = load ptr, ptr %8, align 8, !tbaa !21    ; 8 uses
  store i32 0, ptr %i.fs, align 4, !tbaa !12
  %invariant.gep4359.i.i = getelementptr i8, ptr %i.fs, i64 4 ; 3 uses
  br i1 %.not5060.i.i, label %.lr.ph.i69.preheader.i, label %.lr.ph48.split.us.i.preheader.i

.lr.ph48.split.us.i.preheader.i:                  ; preds = %.lr.ph.i.i
  %i.ft = and i64 %.1.i, 4294967295               ; 3 uses
  br i1 %i.eb, label %.lr.ph48.split.us.i.i.epil.preheader, label %.lr.ph48.split.us.i.i

.lr.ph48.split.us.i.i:                            ; preds = %.lr.ph48.split.us.i.preheader.i, %bb.w
  %.03447.us.i.i = phi i64 [ %i.gj, %bb.w ], [ 0, %.lr.ph48.split.us.i.preheader.i ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %bb.w ], [ 0, %.lr.ph48.split.us.i.preheader.i ]
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %.03447.us.i.i
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !12 ; 2 uses
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %.lr.ph48.split.us.i.i.1, label %.preheader.us.i.i

.lr.ph48.split.us.i.i.1:                          ; preds = %.preheader.us.i.i, %.lr.ph48.split.us.i.i
  %.sink.i.i = phi i32 [ %i.gr, %.preheader.us.i.i ], [ 0, %.lr.ph48.split.us.i.i ]
  %gep46.us.i.i = getelementptr [4 x i8], ptr %invariant.gep4359.i.i, i64 %.03447.us.i.i
  store i32 %.sink.i.i, ptr %gep46.us.i.i, align 4, !tbaa !12
  %i.fx = or disjoint i64 %.03447.us.i.i, 1       ; 3 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !12 ; 2 uses
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %bb.w, label %.preheader.us.i.i.1

.preheader.us.i.i.1:                              ; preds = %.lr.ph48.split.us.i.i.1
  %invariant.gep.us.i.i.1 = getelementptr [4 x i8], ptr %i.fs, i64 %i.fx ; 2 uses
  %i.gb = zext i32 %i.fz to i64
  %i.gc = mul nuw i64 %i.ft, %i.gb
  %i.gd = load i32, ptr %invariant.gep.us.i.i.1, align 4, !tbaa !12
  %i.ge = zext i32 %i.gd to i64
  %i.gf = add nuw i64 %i.gc, %i.ge                ; 2 uses
  %i.gg = trunc i64 %i.gf to i32
  store i32 %i.gg, ptr %invariant.gep.us.i.i.1, align 4, !tbaa !12
  %i.gh = lshr i64 %i.gf, 32
  %i.gi = trunc nuw i64 %i.gh to i32
  br label %bb.w

bb.w:                                             ; preds = %.preheader.us.i.i.1, %.lr.ph48.split.us.i.i.1
  %.sink.i.i.1 = phi i32 [ %i.gi, %.preheader.us.i.i.1 ], [ 0, %.lr.ph48.split.us.i.i.1 ]
  %gep46.us.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep4359.i.i, i64 %i.fx
  store i32 %.sink.i.i.1, ptr %gep46.us.i.i.1, align 4, !tbaa !12
  %i.gj = add nuw i64 %.03447.us.i.i, 2           ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4lean7mpn_mulEPKjmS1_mPj.exit.i.unr-lcssa, label %.lr.ph48.split.us.i.i, !llvm.loop !2

.preheader.us.i.i:                                ; preds = %.lr.ph48.split.us.i.i
  %invariant.gep.us.i.i = getelementptr [4 x i8], ptr %i.fs, i64 %.03447.us.i.i ; 2 uses
  %i.gk = zext i32 %i.fv to i64
  %i.gl = mul nuw i64 %i.ft, %i.gk
  %i.gm = load i32, ptr %invariant.gep.us.i.i, align 4, !tbaa !12
  %i.gn = zext i32 %i.gm to i64
  %i.go = add nuw i64 %i.gl, %i.gn                ; 2 uses
  %i.gp = trunc i64 %i.go to i32
  store i32 %i.gp, ptr %invariant.gep.us.i.i, align 4, !tbaa !12
  %i.gq = lshr i64 %i.go, 32
  %i.gr = trunc nuw i64 %i.gq to i32
  br label %.lr.ph48.split.us.i.i.1

_ZN4lean7mpn_mulEPKjmS1_mPj.exit.i.unr-lcssa:     ; preds = %bb.w
  br i1 %lcmp.mod.not, label %_ZN4lean7mpn_mulEPKjmS1_mPj.exit.i, label %.lr.ph48.split.us.i.i.epil.preheader

.lr.ph48.split.us.i.i.epil.preheader:             ; preds = %_ZN4lean7mpn_mulEPKjmS1_mPj.exit.i.unr-lcssa, %.lr.ph48.split.us.i.preheader.i
  %.03447.us.i.i.epil.init = phi i64 [ 0, %.lr.ph48.split.us.i.preheader.i ], [ %i.gj, %_ZN4lean7mpn_mulEPKjmS1_mPj.exit.i.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod219)
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %.03447.us.i.i.epil.init
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !12 ; 2 uses
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %_ZN4lean7mpn_mulEPKjmS1_mPj.exit.i.epilog-lcssa, label %.preheader.us.i.i.epil

.preheader.us.i.i.epil:                           ; preds = %.lr.ph48.split.us.i.i.epil.preheader
  %invariant.gep.us.i.i.epil = getelementptr [4 x i8], ptr %i.fs, i64 %.03447.us.i.i.epil.init ; 2 uses
  %i.gv = zext i32 %i.gt to i64
  %i.gw = mul nuw i64 %i.ft, %i.gv
  %i.gx = load i32, ptr %invariant.gep.us.i.i.epil, align 4, !tbaa !12
  %i.gy = zext i32 %i.gx to i64
  %i.gz = add nuw i64 %i.gw, %i.gy                ; 2 uses
  %i.ha = trunc i64 %i.gz to i32
  store i32 %i.ha, ptr %invariant.gep.us.i.i.epil, align 4, !tbaa !12
  %i.hb = lshr i64 %i.gz, 32
  %i.hc = trunc nuw i64 %i.hb to i32
  br label %_ZN4lean7mpn_mulEPKjmS1_mPj.exit.i.epilog-lcssa

_ZN4lean7mpn_mulEPKjmS1_mPj.exit.i.epilog-lcssa:  ; preds = %.preheader.us.i.i.epil, %.lr.ph48.split.us.i.i.epil.preheader
  %.sink.i.i.epil = phi i32 [ %i.hc, %.preheader.us.i.i.epil ], [ 0, %.lr.ph48.split.us.i.i.epil.preheader ]
  %gep46.us.i.i.epil = getelementptr [4 x i8], ptr %invariant.gep4359.i.i, i64 %.03447.us.i.i.epil.init
  store i32 %.sink.i.i.epil, ptr %gep46.us.i.i.epil, align 4, !tbaa !12
  br label %_ZN4lean7mpn_mulEPKjmS1_mPj.exit.i

_ZN4lean7mpn_mulEPKjmS1_mPj.exit.i:               ; preds = %_ZN4lean7mpn_mulEPKjmS1_mPj.exit.i.unr-lcssa, %_ZN4lean7mpn_mulEPKjmS1_mPj.exit.i.epilog-lcssa
  br i1 %.not.i.i, label %_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.thread.i, label %.lr.ph.i69.preheader.i

.lr.ph.i69.preheader.i:                           ; preds = %.lr.ph.i.i, %_ZN4lean7mpn_mulEPKjmS1_mPj.exit.i
  %i.hd = and i64 %.0649.i, 4294967295            ; 2 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.hd ; 3 uses
  br i1 %i.ec, label %.lr.ph.i69.i.epil.preheader, label %.lr.ph.i69.i

_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.thread.i:     ; preds = %_ZN4lean7mpn_mulEPKjmS1_mPj.exit.i
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.0649.i
  store i32 %i.fr, ptr %i.hf, align 4, !tbaa !12
  br label %.loopexit.i

.lr.ph.i69.i:                                     ; preds = %.lr.ph.i69.preheader.i, %.lr.ph.i69.i
  %i.hg = phi i32 [ %i.ib, %.lr.ph.i69.i ], [ 0, %.lr.ph.i69.preheader.i ] ; 2 uses
  %.030.i.i = phi i64 [ %i.ic, %.lr.ph.i69.i ], [ 0, %.lr.ph.i69.preheader.i ] ; 4 uses
  %niter225 = phi i64 [ %niter225.next.1, %.lr.ph.i69.i ], [ 0, %.lr.ph.i69.preheader.i ]
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %.030.i.i ; 2 uses
  %i.hi = getelementptr [4 x i8], ptr %i.fs, i64 %.030.i.i
  %i.hj = load i32, ptr %i.hh, align 4, !tbaa !12 ; 2 uses
  %i.hk = load i32, ptr %i.hi, align 4, !tbaa !12 ; 2 uses
  %i.hl = sub i32 %i.hj, %i.hk                    ; 2 uses
  %i.hm = icmp ugt i32 %i.hk, %i.hj
  %i.hn = sub i32 %i.hl, %i.hg
  store i32 %i.hn, ptr %i.hh, align 4, !tbaa !12
  %i.ho = icmp ugt i32 %i.hg, %i.hl
  %i.hp = or i1 %i.hm, %i.ho
  %i.hq = zext i1 %i.hp to i32                    ; 2 uses
  %i.hr = or disjoint i64 %.030.i.i, 1            ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %i.hr ; 2 uses
  %i.ht = getelementptr [4 x i8], ptr %i.fs, i64 %i.hr
  %i.hu = load i32, ptr %i.hs, align 4, !tbaa !12 ; 2 uses
  %i.hv = load i32, ptr %i.ht, align 4, !tbaa !12 ; 2 uses
  %i.hw = sub i32 %i.hu, %i.hv                    ; 2 uses
  %i.hx = icmp ugt i32 %i.hv, %i.hu
  %i.hy = sub i32 %i.hw, %i.hq
  store i32 %i.hy, ptr %i.hs, align 4, !tbaa !12
  %i.hz = icmp ult i32 %i.hw, %i.hq
  %i.ia = or i1 %i.hx, %i.hz                      ; 2 uses
  %i.ib = zext i1 %i.ia to i32                    ; 2 uses
  %i.ic = add nuw i64 %.030.i.i, 2                ; 2 uses
  %niter225.next.1 = add i64 %niter225, 2         ; 2 uses
  %niter225.ncmp.1 = icmp eq i64 %niter225.next.1, %unroll_iter224
  br i1 %niter225.ncmp.1, label %_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.i.unr-lcssa, label %.lr.ph.i69.i, !llvm.loop !1

_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.i.unr-lcssa:  ; preds = %.lr.ph.i69.i
  br i1 %lcmp.mod221.not.not, label %.lr.ph.i69.i.epil.preheader, label %_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.i

.lr.ph.i69.i.epil.preheader:                      ; preds = %_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.i.unr-lcssa, %.lr.ph.i69.preheader.i
  %.epil.init = phi i32 [ 0, %.lr.ph.i69.preheader.i ], [ %i.ib, %_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.i.unr-lcssa ] ; 2 uses
  %.030.i.i.epil.init = phi i64 [ 0, %.lr.ph.i69.preheader.i ], [ %i.ic, %_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod223)
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %.030.i.i.epil.init ; 2 uses
  %i.ie = getelementptr [4 x i8], ptr %i.fs, i64 %.030.i.i.epil.init
  %i.if = load i32, ptr %i.id, align 4, !tbaa !12 ; 2 uses
  %i.ig = load i32, ptr %i.ie, align 4, !tbaa !12 ; 2 uses
  %i.ih = sub i32 %i.if, %i.ig                    ; 2 uses
  %i.ii = icmp ugt i32 %i.ig, %i.if
  %i.ij = sub i32 %i.ih, %.epil.init
  store i32 %i.ij, ptr %i.id, align 4, !tbaa !12
  %i.ik = icmp ugt i32 %.epil.init, %i.ih
  %i.il = or i1 %i.ii, %i.ik
  br label %_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.i

_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.i:            ; preds = %_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.i.unr-lcssa, %.lr.ph.i69.i.epil.preheader
  %.lcssa = phi i1 [ %i.ia, %_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.i.unr-lcssa ], [ %i.il, %.lr.ph.i69.i.epil.preheader ]
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.0649.i ; 2 uses
  store i32 %i.fr, ptr %i.im, align 4, !tbaa !12
  br i1 %.lcssa, label %bb.x, label %.loopexit.i

bb.x:                                             ; preds = %_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.i
  %i.in = add i32 %i.fr, -1
  store i32 %i.in, ptr %i.im, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i32 0, ptr %i.d, align 4, !tbaa !12
  invoke void @_ZN4lean6bufferIjLm16EE6resizeEmRKj(ptr noundef nonnull align 8 dereferenceable(88) %9, i64 noundef %i.ds, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %.noexc83 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc83:                                         ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  %i.io = load ptr, ptr %7, align 8, !tbaa !21    ; 4 uses
  %i.ip = load ptr, ptr %6, align 8, !tbaa !21    ; 9 uses
  %i.iq = ptrtoaddr ptr %i.ip to i64
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.hd
  %i.is = load ptr, ptr %9, align 8, !tbaa !21    ; 7 uses
  %i.it = ptrtoaddr ptr %i.is to i64
  br label %.lr.ph.i72.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i72.i
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.dt
  store i32 %i.ke, ptr %i.iu, align 4, !tbaa !12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %._crit_edge.i.i
  %i.iv = add i32 %i.ef, %indvar
  %i.iw = icmp ult i32 %i.iv, %i.ee
  %i.ix = or i1 %i.iw, %i.eg
  br i1 %i.ix, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %10 = sub i32 %i.dz, %indvar
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 2
  %i.iy = add i64 %12, %i.iq
  %i.iz = sub i64 %i.it, %i.iy
  %diff.check = icmp ugt i64 %i.iz, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ja = and i64 %index, 4294967288
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.ja ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %wide.load = load <4 x i32>, ptr %i.jb, align 4, !tbaa !12
  %wide.load153 = load <4 x i32>, ptr %i.jc, align 4, !tbaa !12
  %i.jd = add i64 %index, %.0649.i
  %i.je = and i64 %i.jd, 4294967295
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.je ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  store <4 x i32> %wide.load, ptr %i.jf, align 4, !tbaa !12
  store <4 x i32> %wide.load153, ptr %i.jg, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jh = icmp eq i64 %index.next, %n.vec
  br i1 %i.jh, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %._crit_edge.i.i, %middle.block
  %.07.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %._crit_edge.i.i ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod227.not.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ji = and i64 %.07.i.ph, 4294967288
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.ji
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !12
  %i.jl = add i64 %.07.i.ph, %.0649.i
  %i.jm = and i64 %i.jl, 4294967295
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.jm
  store i32 %i.jk, ptr %i.jn, align 4, !tbaa !12
  %i.jo = or disjoint i64 %.07.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.07.i.unr = phi i64 [ %.07.i.ph, %scalar.ph.preheader ], [ %i.jo, %scalar.ph.prol ]
  %i.jp = icmp eq i64 %i.di, %.07.i.ph
  br i1 %i.jp, label %.loopexit.i, label %scalar.ph

.lr.ph.i72.i:                                     ; preds = %.lr.ph.i72.i, %.noexc83
  %.041.i.i = phi i32 [ %i.ke, %.lr.ph.i72.i ], [ 0, %.noexc83 ]
  %.03740.i.i = phi i64 [ %i.kf, %.lr.ph.i72.i ], [ 0, %.noexc83 ] ; 6 uses
  %i.jq = icmp ult i64 %.03740.i.i, %i.di
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %.03740.i.i
  %i.js = select i1 %i.jq, ptr %i.jr, ptr @_ZN4leanL4zeroE
  %i.jt = icmp ult i64 %.03740.i.i, %i.dj
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %.03740.i.i
  %i.jv = select i1 %i.jt, ptr %i.ju, ptr @_ZN4leanL4zeroE
  %i.jw = load i32, ptr %i.js, align 4, !tbaa !12 ; 2 uses
  %i.jx = load i32, ptr %i.jv, align 4, !tbaa !12
  %i.jy = add i32 %i.jx, %i.jw                    ; 3 uses
  %i.jz = icmp ult i32 %i.jy, %i.jw
  %i.ka = add i32 %i.jy, %.041.i.i                ; 2 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %.03740.i.i
  store i32 %i.ka, ptr %i.kb, align 4, !tbaa !12
  %i.kc = icmp ult i32 %i.ka, %i.jy
  %i.kd = or i1 %i.jz, %i.kc
  %i.ke = zext i1 %i.kd to i32                    ; 2 uses
  %i.kf = add nuw i64 %.03740.i.i, 1              ; 2 uses
  %exitcond.not.i73.i = icmp eq i64 %i.kf, %i.dt
  br i1 %exitcond.not.i73.i, label %._crit_edge.i.i, label %.lr.ph.i72.i, !llvm.loop !0

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.07.i = phi i64 [ %i.kt, %scalar.ph ], [ %.07.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.kg = and i64 %.07.i, 4294967295
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.kg
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !12
  %i.kj = add i64 %.07.i, %.0649.i
  %i.kk = and i64 %i.kj, 4294967295
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.kk
  store i32 %i.ki, ptr %i.kl, align 4, !tbaa !12
  %i.km = add nuw i64 %.07.i, 1                   ; 3 uses
  %i.kn = and i64 %i.km, 4294967295
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.kn
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !12
  %i.kq = add i64 %i.km, %.0649.i
  %i.kr = and i64 %i.kq, 4294967295
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.kr
  store i32 %i.kp, ptr %i.ks, align 4, !tbaa !12
  %i.kt = add nuw i64 %.07.i, 2
  %exitcond.not.i.1 = icmp eq i64 %i.km, %i.di
  br i1 %exitcond.not.i.1, label %.loopexit.i, label %scalar.ph, !llvm.loop !46

.loopexit.i:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.i, %_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.thread.i
  %i.ku = phi ptr [ %i.ei, %_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.i ], [ %i.ei, %_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.thread.i ], [ %i.io, %middle.block ], [ %i.io, %scalar.ph ], [ %i.io, %scalar.ph.prol.loopexit ]
  %i.kv = phi ptr [ %i.ej, %_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.i ], [ %i.ej, %_ZN4lean7mpn_subEPKjmS1_mPjS2_.exit.thread.i ], [ %i.ip, %middle.block ], [ %i.ip, %scalar.ph ], [ %i.ip, %scalar.ph.prol.loopexit ]
  %i.kw = add i64 %.0649.i, -1
  %.not.i81 = icmp eq i64 %.0649.i, 0
  %indvar.next = add i32 %indvar, 1
  br i1 %.not.i81, label %_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit, label %bb.s, !llvm.loop !47

_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit:        ; preds = %.loopexit.i, %bb.p, %.noexc82, %bb.k
  %.val78 = load ptr, ptr %6, align 8             ; 18 uses
  %.val78178 = ptrtoaddr ptr %.val78 to i64
  %.val79 = load i64, ptr %i.br, align 8          ; 13 uses
  %i.kx = icmp eq i64 %i.bz, 0
  br i1 %i.kx, label %.preheader.i, label %.preheader1.i

.preheader1.i:                                    ; preds = %_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit
  %i.ky = add i64 %.val79, -1                     ; 6 uses
  %.not.i84 = icmp eq i64 %i.ky, 0
  %.pre.i85 = trunc i64 %i.bz to i32              ; 6 uses
  br i1 %.not.i84, label %._crit_edge.i, label %.lr.ph.i86

.lr.ph.i86:                                       ; preds = %.preheader1.i
  %i.kz = sub i32 32, %.pre.i85                   ; 4 uses
  %min.iters.check158 = icmp ult i64 %i.ky, 12
  br i1 %min.iters.check158, label %scalar.ph157.preheader, label %vector.scevcheck154

vector.scevcheck154:                              ; preds = %.lr.ph.i86
  %i.la = add i64 %.val79, -2                     ; 2 uses
  %i.lb = and i64 %i.la, 4294967295
  %i.lc = icmp eq i64 %i.lb, 4294967295
  %i.ld = icmp ugt i64 %i.la, 4294967295
  %i.le = or i1 %i.lc, %i.ld
  br i1 %i.le, label %scalar.ph157.preheader, label %vector.memcheck159

vector.memcheck159:                               ; preds = %vector.scevcheck154
  %i.lf = shl nuw nsw i64 %.val79, 2              ; 2 uses
  %i.lg = getelementptr i8, ptr %5, i64 %i.lf
  %i.lh = getelementptr i8, ptr %i.lg, i64 -4
  %i.li = getelementptr i8, ptr %.val78, i64 %i.lf
  %bound0 = icmp ult ptr %5, %i.li
  %bound1 = icmp ult ptr %.val78, %i.lh
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph157.preheader, label %vector.ph160

vector.ph160:                                     ; preds = %vector.memcheck159
  %n.vec161 = and i64 %i.ky, -8                   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.kz, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert162 = insertelement <4 x i32> poison, i32 %.pre.i85, i64 0
  %broadcast.splat163 = shufflevector <4 x i32> %broadcast.splatinsert162, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body164

vector.body164:                                   ; preds = %vector.body164, %vector.ph160
  %index165 = phi i64 [ 0, %vector.ph160 ], [ %index.next170, %vector.body164 ] ; 4 uses
  %i.lj = and i64 %index165, 4294967288
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %.val78, i64 %i.lj ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %wide.load166 = load <4 x i32>, ptr %i.lk, align 4, !tbaa !12, !alias.scope !56
  %wide.load167 = load <4 x i32>, ptr %i.ll, align 4, !tbaa !12, !alias.scope !56
  %i.lm = lshr <4 x i32> %wide.load166, %broadcast.splat163
  %i.ln = lshr <4 x i32> %wide.load167, %broadcast.splat163
  %i.lo = and i64 %index165, 4294967288
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %.val78, i64 %i.lo ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 4
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 20
  %wide.load168 = load <4 x i32>, ptr %i.lq, align 4, !tbaa !12, !alias.scope !56
  %wide.load169 = load <4 x i32>, ptr %i.lr, align 4, !tbaa !12, !alias.scope !56
  %i.ls = shl <4 x i32> %wide.load168, %broadcast.splat
  %i.lt = shl <4 x i32> %wide.load169, %broadcast.splat
  %i.lu = or disjoint <4 x i32> %i.ls, %i.lm
  %i.lv = or disjoint <4 x i32> %i.lt, %i.ln
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index165 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  store <4 x i32> %i.lu, ptr %i.lw, align 4, !tbaa !12, !alias.scope !57, !noalias !56
  store <4 x i32> %i.lv, ptr %i.lx, align 4, !tbaa !12, !alias.scope !57, !noalias !56
  %index.next170 = add nuw i64 %index165, 8       ; 2 uses
  %i.ly = icmp eq i64 %index.next170, %n.vec161
  br i1 %i.ly, label %middle.block171, label %vector.body164, !llvm.loop !51

middle.block171:                                  ; preds = %vector.body164
  %cmp.n172 = icmp eq i64 %i.ky, %n.vec161
  br i1 %cmp.n172, label %._crit_edge.i, label %scalar.ph157.preheader

scalar.ph157.preheader:                           ; preds = %vector.memcheck159, %vector.scevcheck154, %.lr.ph.i86, %middle.block171
  %.02.i.ph = phi i64 [ 0, %vector.memcheck159 ], [ 0, %vector.scevcheck154 ], [ 0, %.lr.ph.i86 ], [ %n.vec161, %middle.block171 ] ; 5 uses
  %i.lz = add i64 %.val79, -2
  %i.ma = and i64 %.val79, 1
  %lcmp.mod229.not.not = icmp eq i64 %i.ma, 0
  br i1 %lcmp.mod229.not.not, label %scalar.ph157.prol, label %scalar.ph157.prol.loopexit

scalar.ph157.prol:                                ; preds = %scalar.ph157.preheader
  %i.mb = and i64 %.02.i.ph, 4294967288
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %.val78, i64 %i.mb
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !12
  %i.me = lshr i32 %i.md, %.pre.i85
  %i.mf = or disjoint i64 %.02.i.ph, 1            ; 2 uses
  %i.mg = and i64 %i.mf, 4294967289
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %.val78, i64 %i.mg
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !12
  %i.mj = shl i32 %i.mi, %i.kz
  %i.mk = or disjoint i32 %i.mj, %i.me
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.02.i.ph
  store i32 %i.mk, ptr %i.ml, align 4, !tbaa !12
  br label %scalar.ph157.prol.loopexit

scalar.ph157.prol.loopexit:                       ; preds = %scalar.ph157.prol, %scalar.ph157.preheader
  %.02.i.unr = phi i64 [ %.02.i.ph, %scalar.ph157.preheader ], [ %i.mf, %scalar.ph157.prol ]
  %i.mm = icmp eq i64 %i.lz, %.02.i.ph
  br i1 %i.mm, label %._crit_edge.i, label %scalar.ph157

.preheader.i:                                     ; preds = %_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit
end_hunk_0
