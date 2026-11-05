Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/ir_cfg?download=true
inline.NumInlined: 22
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@ir_schedule_blocks:bb.a
  %i.ad = getelementptr inbounds [16 x i8], ptr %i.i, i64 %i.ac ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !37
  switch i8 %i.ae, label %.loopexit [
    i8 102, label %bb.g
    i8 103, label %bb.g
    i8 106, label %bb.g
    i8 104, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !37
  %.not60 = icmp eq i32 %i.ag, 0
  br i1 %.not60, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %i.af, align 8, !tbaa !37
  br label %.loopexit

bb.i:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 12 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !37
  %.not59 = icmp eq i32 %i.ai, 0
  br i1 %.not59, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %i.ah, align 4, !tbaa !37
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.e
  %i.aj = load ptr, ptr %i.h, align 8, !tbaa !34
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !53
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.am
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.q
  %.0116 = phi ptr [ %i.an, %.lr.ph ], [ %i.bf, %bb.q ] ; 2 uses
  %.047115 = phi i32 [ %i.z, %.lr.ph ], [ %i.bg, %bb.q ]
  %i.ao = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.ap = load i32, ptr %.0116, align 4, !tbaa !39
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [52 x i8], ptr %i.ao, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load i32, ptr %i.as, align 4, !tbaa !55
  %i.au = icmp eq i32 %i.at, 1
  br i1 %i.au, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.av = load ptr, ptr %0, align 8, !tbaa !36
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !49
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [16 x i8], ptr %i.av, i64 %i.ay ; 3 uses
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !37
  switch i8 %i.ba, label %bb.q [
    i8 102, label %bb.m
    i8 103, label %bb.m
    i8 106, label %bb.m
    i8 104, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l, %bb.l, %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !37
  %.not58 = icmp eq i32 %i.bc, 0
  br i1 %.not58, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  store i32 1, ptr %i.bb, align 8, !tbaa !37
  br label %bb.q

bb.o:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 12 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !37
  %.not57 = icmp eq i32 %i.be, 0
  br i1 %.not57, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 1, ptr %i.bd, align 4, !tbaa !37
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.m, %bb.o, %bb.p, %bb.l, %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %.0116, i64 4
  %i.bg = add i32 %.047115, -1                    ; 2 uses
  %.not56 = icmp eq i32 %i.bg, 0
  br i1 %.not56, label %.loopexit, label %bb.k, !llvm.loop !163

.loopexit:                                        ; preds = %bb.q, %bb.f, %bb.j, %bb.i, %bb.g, %bb.h, %bb.e, %bb.d, %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %.048 = load i32, ptr %i.bh, align 4, !tbaa !37 ; 2 uses
  %.not = icmp eq i32 %.048, 0
  br i1 %.not, label %._crit_edge.loopexit, label %bb.c, !llvm.loop !164

._crit_edge.loopexit:                             ; preds = %.loopexit
  %.pre.pre = load i32, ptr %i.a, align 4, !tbaa !31
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.pre = phi i32 [ %.pre.pre, %._crit_edge.loopexit ], [ %i.b, %bb.b ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !47
  %i.bk = and i32 %i.bj, 2
  %.not53 = icmp ne i32 %i.bk, 0
  %i.bl = icmp ugt i32 %.pre, 256
  %or.cond = select i1 %.not53, i1 true, i1 %i.bl, !prof !181
  br i1 %or.cond, label %bb.r, label %bb.az, !prof !181

bb.r:                                             ; preds = %._crit_edge
  %i.bm = add i32 %.pre, 64
  %i.bn = lshr i32 %i.bm, 6                       ; 2 uses
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = tail call noalias ptr @_ecalloc(i64 noundef %i.bo, i64 noundef 8) #18 ; 12 uses
  %i.bq = load i32, ptr %i.a, align 4, !tbaa !31
  %i.br = add i32 %i.bq, 2
  %i.bs = zext i32 %i.br to i64
  %i.bt = shl nuw nsw i64 %i.bs, 2
  %i.bu = tail call noalias ptr @_emalloc(i64 noundef %i.bt) #19 ; 5 uses
  %i.bv = load i32, ptr %i.a, align 4, !tbaa !31  ; 3 uses
  %i.bw = add i32 %i.bv, 1                        ; 3 uses
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bx
  store i32 0, ptr %i.by, align 4, !tbaa !39
  %i.bz = zext i32 %i.bv to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bz
  %.not200.i = icmp eq i32 %i.bv, 0
  br i1 %.not200.i, label %.preheader.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.r
  %umax.i = tail call i32 @llvm.umax.i32(i32 %i.bw, i32 2)
  %i.cb = add i32 %umax.i, -1                     ; 3 uses
  %xtraiter334 = and i32 %i.cb, 1
  %i.cc = icmp ult i32 %i.bw, 3
  br i1 %i.cc, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter338 = and i32 %i.cb, -2
  br label %.lr.ph.i

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i
  %lcmp.mod336.not = icmp eq i32 %xtraiter334, 0
  br i1 %lcmp.mod336.not, label %.preheader.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.0133201.i.epil.init = phi i32 [ 1, %.lr.ph.preheader.i ], [ %i.df, %.preheader.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod337 = trunc i32 %i.cb to i1
  tail call void @llvm.assume(i1 %lcmp.mod337)
  %i.cd = and i32 %.0133201.i.epil.init, 63
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = shl nuw i64 1, %i.ce
  %i.cg = lshr i32 %.0133201.i.epil.init, 6
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.ch ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !38
  %i.ck = or i64 %i.cf, %i.cj
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !38
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i.epil.preheader, %.preheader.i.loopexit.unr-lcssa, %bb.r
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.s

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %.0133201.i = phi i32 [ 1, %.lr.ph.preheader.i.new ], [ %i.df, %.lr.ph.i ] ; 4 uses
  %niter339 = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %niter339.next.1, %.lr.ph.i ]
  %i.co = and i32 %.0133201.i, 63
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = shl nuw i64 1, %i.cp
  %i.cr = lshr i32 %.0133201.i, 6
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.cs ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !38
  %i.cv = or i64 %i.cq, %i.cu
  store i64 %i.cv, ptr %i.ct, align 8, !tbaa !38
  %i.cw = add nuw i32 %.0133201.i, 1              ; 2 uses
  %i.cx = and i32 %i.cw, 63
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = shl nuw i64 1, %i.cy
  %i.da = lshr i32 %i.cw, 6
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.db ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !38
  %i.de = or i64 %i.cz, %i.dd
  store i64 %i.de, ptr %i.dc, align 8, !tbaa !38
  %i.df = add nuw i32 %.0133201.i, 2              ; 2 uses
  %niter339.next.1 = add nuw i32 %niter339, 2     ; 2 uses
  %niter339.ncmp.1 = icmp eq i32 %niter339.next.1, %unroll_iter338
  br i1 %niter339.ncmp.1, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !165

.loopexit294:                                     ; preds = %bb.ax, %bb.av, %bb.au, %.thread.i
  br label %bb.s

bb.s:                                             ; preds = %.loopexit294, %.preheader.i
  %.sroa.4.0.i = phi i32 [ 0, %.preheader.i ], [ %.020.i.i, %.loopexit294 ] ; 2 uses
  %.0149.i = phi i32 [ undef, %.preheader.i ], [ %.4153190.i, %.loopexit294 ]
  %.0139.i = phi ptr [ %i.ca, %.preheader.i ], [ %.2141.i, %.loopexit294 ]
  %.0135.i = phi i32 [ 0, %.preheader.i ], [ %.3138.i, %.loopexit294 ]
  %i.dg = zext nneg i32 %.sroa.4.0.i to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.dg
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %.020.i.i = phi i32 [ %.sroa.4.0.i, %bb.s ], [ %i.dk, %bb.u ] ; 3 uses
  %.019.i.i = phi ptr [ %i.dh, %bb.s ], [ %i.dj, %bb.u ] ; 3 uses
  %i.di = load i64, ptr %.019.i.i, align 8, !tbaa !38 ; 4 uses
  %.not.i.i = icmp eq i64 %i.di, 0
  br i1 %.not.i.i, label %bb.u, label %ir_bitqueue_pop.exit.i

bb.u:                                             ; preds = %bb.t
  %i.dj = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 8
  %i.dk = add nuw nsw i32 %.020.i.i, 1            ; 2 uses
  %i.dl = icmp samesign ult i32 %i.dk, %i.bn
  br i1 %i.dl, label %bb.t, label %ir_schedule_blocks_top_down.exit, !llvm.loop !166

ir_bitqueue_pop.exit.i:                           ; preds = %bb.t
  %i.dm = shl nuw i32 %.020.i.i, 6
  %i.dn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.di, i1 true)
  %i.do = trunc nuw nsw i64 %i.dn to i32
  %i.dp = or disjoint i32 %i.dm, %i.do            ; 3 uses
  %i.dq = add i64 %i.di, -1
  %i.dr = and i64 %i.dq, %i.di
  store i64 %i.dr, ptr %.019.i.i, align 8, !tbaa !38
  %.not161.i = icmp eq i32 %i.dp, -1
  br i1 %.not161.i, label %ir_schedule_blocks_top_down.exit, label %bb.v

bb.v:                                             ; preds = %ir_bitqueue_pop.exit.i
  %i.ds = load ptr, ptr %i.cl, align 8, !tbaa !33 ; 5 uses
  %i.dt = zext i32 %i.dp to i64
  %i.du = getelementptr inbounds nuw [52 x i8], ptr %i.ds, i64 %i.dt
  br label %bb.w

bb.w:                                             ; preds = %.backedge, %bb.v
  %.1150.i = phi i32 [ %.0149.i, %bb.v ], [ %.1150.i.be, %.backedge ] ; 2 uses
  %.0147.i = phi i32 [ 0, %bb.v ], [ %.1148.i, %.backedge ]
  %.0145.i = phi ptr [ %i.du, %bb.v ], [ %.0145.i.be, %.backedge ] ; 6 uses
  %.1140.i = phi ptr [ %.0139.i, %bb.v ], [ %.2141.i, %.backedge ] ; 3 uses
  %.1136.i = phi i32 [ %.0135.i, %bb.v ], [ %.3138.i, %.backedge ] ; 3 uses
  %.1134.i = phi i32 [ %i.dp, %bb.v ], [ %.1134.i.be, %.backedge ] ; 4 uses
  %i.dv = load i32, ptr %.0145.i, align 4, !tbaa !54 ; 3 uses
  %i.dw = and i32 %i.dv, 128
  %.not162.i = icmp eq i32 %i.dw, 0
  br i1 %.not162.i, label %bb.z, label %bb.x, !prof !62

bb.x:                                             ; preds = %bb.w
  %i.dx = add i32 %.1134.i, -1                    ; 3 uses
  %i.dy = lshr i32 %i.dx, 6
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.dz ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !38 ; 2 uses
  %i.ec = and i32 %i.dx, 63
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = shl nuw i64 1, %i.ed                    ; 2 uses
  %i.ef = and i64 %i.eb, %i.ee
  %.not191.i = icmp eq i64 %i.ef, 0
  br i1 %.not191.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eg = xor i64 %i.ee, -1
  %i.eh = and i64 %i.eb, %i.eg
  store i64 %i.eh, ptr %i.ea, align 8, !tbaa !38
  %i.ei = add i32 %.1136.i, 1                     ; 2 uses
  %i.ej = zext i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.ej
  store i32 %i.dx, ptr %i.ek, align 4, !tbaa !39
  %.pre.i = load i32, ptr %.0145.i, align 4, !tbaa !54
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %i.el = phi i32 [ %.pre.i, %bb.y ], [ %i.dv, %bb.x ], [ %i.dv, %bb.w ]
  %.2137.i = phi i32 [ %i.ei, %bb.y ], [ %.1136.i, %bb.x ], [ %.1136.i, %bb.w ] ; 2 uses
  %i.em = and i32 %i.el, 70
  %i.en = icmp eq i32 %i.em, 64
  br i1 %i.en, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 %.1134.i, ptr %.1140.i, align 4, !tbaa !39
  %i.eo = getelementptr inbounds i8, ptr %.1140.i, i64 -4
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.ep = add i32 %.2137.i, 1                     ; 2 uses
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.eq
  store i32 %.1134.i, ptr %i.er, align 4, !tbaa !39
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.1148.i = phi i32 [ %.0147.i, %bb.aa ], [ %.1134.i, %bb.ab ] ; 3 uses
  %.2141.i = phi ptr [ %i.eo, %bb.aa ], [ %.1140.i, %bb.ab ] ; 2 uses
  %.3138.i = phi i32 [ %.2137.i, %bb.aa ], [ %i.ep, %bb.ab ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.0145.i, i64 16
  %i.et = load i32, ptr %i.es, align 4, !tbaa !52 ; 6 uses
  switch i32 %i.et, label %.lr.ph207.preheader.i [
    i32 1, label %bb.ad
    i32 0, label %.thread.i
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.eu = load ptr, ptr %i.cm, align 8, !tbaa !34
  %i.ev = getelementptr inbounds nuw i8, ptr %.0145.i, i64 12
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !51
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !39 ; 5 uses
  %i.fa = lshr i32 %i.ez, 6
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !38
  %i.fe = and i32 %i.ez, 63
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = shl nuw i64 1, %i.ff
  %i.fh = and i64 %i.fg, %i.fd
  %.not192.i = icmp eq i64 %i.fh, 0
  br i1 %.not192.i, label %.thread.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fi = zext i32 %i.ez to i64
  %i.fj = getelementptr inbounds nuw [52 x i8], ptr %i.ds, i64 %i.fi
  br label %.loopexit.i

.lr.ph207.preheader.i:                            ; preds = %bb.ac
  %i.fk = load ptr, ptr %i.cm, align 8, !tbaa !34
  %i.fl = getelementptr inbounds nuw i8, ptr %.0145.i, i64 12
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !51
  %i.fn = zext i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.fn
  br label %.lr.ph207.i

.lr.ph207.i:                                      ; preds = %bb.at, %.lr.ph207.preheader.i
  %.0206.i = phi ptr [ %i.hf, %bb.at ], [ %i.fo, %.lr.ph207.preheader.i ] ; 2 uses
  %.0131205.i = phi i32 [ %.1.i, %bb.at ], [ undef, %.lr.ph207.preheader.i ] ; 3 uses
  %.2204.i = phi i32 [ %i.he, %bb.at ], [ 0, %.lr.ph207.preheader.i ]
  %.0142203.i = phi ptr [ %.1143.i, %bb.at ], [ null, %.lr.ph207.preheader.i ] ; 4 uses
  %.2151202.i = phi i32 [ %.3152.i, %bb.at ], [ %.1150.i, %.lr.ph207.preheader.i ] ; 2 uses
  %i.fp = load i32, ptr %.0206.i, align 4, !tbaa !39 ; 4 uses
  %i.fq = lshr i32 %i.fp, 6
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.fr
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !38
  %i.fu = and i32 %i.fp, 63
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = shl nuw i64 1, %i.fv
  %i.fx = and i64 %i.fw, %i.ft
  %.not195.i = icmp eq i64 %i.fx, 0
  br i1 %.not195.i, label %bb.at, label %bb.af

bb.af:                                            ; preds = %.lr.ph207.i
  %i.fy = zext i32 %i.fp to i64
  %i.fz = getelementptr inbounds nuw [52 x i8], ptr %i.ds, i64 %i.fy ; 5 uses
  %i.ga = load ptr, ptr %0, align 8, !tbaa !36
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !49
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [16 x i8], ptr %i.ga, i64 %i.gd ; 4 uses
  %i.gf = load i8, ptr %i.ge, align 8, !tbaa !37
  switch i8 %i.gf, label %bb.ap [
    i8 102, label %bb.ag
    i8 103, label %bb.ag
    i8 106, label %bb.ai
    i8 104, label %bb.ak
    i8 100, label %bb.am
  ]

bb.ag:                                            ; preds = %bb.af, %bb.af
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !37 ; 2 uses
  %.not168.i = icmp eq i32 %i.gh, 0
  br i1 %.not168.i, label %bb.ah, label %bb.aq

bb.ah:                                            ; preds = %bb.ag
  %i.gi = udiv i32 100, %i.et
  %i.gj = load i32, ptr %i.fz, align 4, !tbaa !54
  %i.gk = lshr i32 %i.gj, 6
  %i.gl = and i32 %i.gk, 1
  %i.gm = xor i32 %i.gl, 1
  %spec.select.i = add nuw nsw i32 %i.gm, %i.gi
  br label %bb.aq

bb.ai:                                            ; preds = %bb.af
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !37 ; 2 uses
  %.not167.i = icmp eq i32 %i.go, 0
  br i1 %.not167.i, label %bb.aj, label %bb.aq

bb.aj:                                            ; preds = %bb.ai
  %i.gp = udiv i32 100, %i.et
  br label %bb.aq

bb.ak:                                            ; preds = %bb.af
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !37 ; 2 uses
  %.not166.i = icmp eq i32 %i.gr, 0
  br i1 %.not166.i, label %bb.al, label %bb.aq

bb.al:                                            ; preds = %bb.ak
  %i.gs = udiv i32 100, %i.et
  br label %bb.aq

bb.am:                                            ; preds = %bb.af
  %i.gt = load i32, ptr %i.cn, align 8, !tbaa !182
  %i.gu = and i32 %i.gt, 262144
  %.not164.i = icmp eq i32 %i.gu, 0
  br i1 %.not164.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gv = load i32, ptr %i.fz, align 4, !tbaa !54
  %i.gw = and i32 %i.gv, 64
  %.not165.i = icmp eq i32 %i.gw, 0
  br i1 %.not165.i, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an, %bb.am
  br label %bb.aq

bb.ap:                                            ; preds = %bb.af
  %i.gx = udiv i32 100, %i.et
  br label %bb.aq
end_hunk_0
