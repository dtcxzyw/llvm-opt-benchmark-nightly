Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/sqlite3?download=true
inline.NumInlined: 3254
inline.NumDeleted: 427
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 105
begin_hunk_0_@sqlite3ValueFromExpr:bb.a
bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !194
  %i.au = sext i32 %.0.i81 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr nonnull align 1 %.0.i, i64 %i.au, i1 false)
  br label %bb.r

bb.q:                                             ; preds = %sqlite3Dequote.exit
  tail call fastcc void @sqlite3VdbeMemRelease(ptr noundef nonnull %i.s)
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %.0.i, ptr %i.av, align 8, !tbaa !194
  %i.aw = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store ptr @sqlite3_free, ptr %i.aw, align 8, !tbaa !195
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i32 %.249.i74, ptr %i.ax, align 8, !tbaa !196
  store i16 98, ptr %i.t, align 4, !tbaa !197
  %i.ay = getelementptr inbounds nuw i8, ptr %i.s, i64 39
  store i8 1, ptr %i.ay, align 1, !tbaa !198
  store i8 3, ptr %i.u, align 2, !tbaa !199
  br label %sqlite3ValueSetStr.exit

sqlite3ValueSetStr.exit:                          ; preds = %bb.r, %bb.o
  %i.az = and i8 %i.b, 124
  %or.cond7 = icmp eq i8 %i.az, 124
  %i.ba = icmp eq i8 %3, 98
  %or.cond10 = and i1 %i.ba, %or.cond7
  br i1 %or.cond10, label %bb.s, label %bb.v

bb.s:                                             ; preds = %sqlite3ValueSetStr.exit
  tail call fastcc void @applyNumericAffinity(ptr noundef nonnull %i.s)
  %i.bb = load i16, ptr %i.t, align 4, !tbaa !197 ; 2 uses
  %i.bc = and i16 %i.bb, 8
  %.not9.i.i = icmp eq i16 %i.bc, 0
  br i1 %.not9.i.i, label %sqlite3ValueApplyAffinity.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bd = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.be = load double, ptr %i.bd, align 8, !tbaa !231 ; 3 uses
  %i.bf = tail call double @llvm.fabs.f64(double %i.be)
  %or.cond.i.i.i.i = fcmp ogt double %i.bf, f0x43E0000000000000
  %i.bg = fptosi double %i.be to i64
  %.0.i.i.i.i = select i1 %or.cond.i.i.i.i, i64 -9223372036854775808, i64 %i.bg ; 2 uses
  store i64 %.0.i.i.i.i, ptr %i.s, align 8, !tbaa !139
  %i.bh = sitofp i64 %.0.i.i.i.i to double
  %i.bi = fcmp oeq double %i.be, %i.bh
  br i1 %i.bi, label %bb.u, label %sqlite3ValueApplyAffinity.exit

bb.u:                                             ; preds = %bb.t
  %i.bj = or i16 %i.bb, 4
  store i16 %i.bj, ptr %i.t, align 4, !tbaa !197
  br label %sqlite3ValueApplyAffinity.exit

bb.v:                                             ; preds = %sqlite3ValueSetStr.exit
  switch i8 %3, label %bb.z [
    i8 97, label %bb.w
    i8 98, label %sqlite3ValueApplyAffinity.exit
  ]

bb.w:                                             ; preds = %bb.v
  %i.bk = load i16, ptr %i.t, align 4, !tbaa !197 ; 2 uses
  %i.bl = zext i16 %i.bk to i32                   ; 2 uses
  %i.bm = and i32 %i.bl, 2
  %i.bn = icmp ne i32 %i.bm, 0
  %i.bo = and i32 %i.bl, 12
  %.not10.i.i = icmp eq i32 %i.bo, 0
  %or.cond.i.i = or i1 %i.bn, %.not10.i.i
  br i1 %or.cond.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bp = zext i8 %2 to i32
  %i.bq = tail call fastcc i32 @sqlite3VdbeMemStringify(ptr noundef nonnull %i.s, i32 noundef %i.bp) ; 0 uses
  %.pre.i.i = load i16, ptr %i.t, align 4, !tbaa !197
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.br = phi i16 [ %.pre.i.i, %bb.x ], [ %i.bk, %bb.w ]
  %i.bs = and i16 %i.br, -13
  store i16 %i.bs, ptr %i.t, align 4, !tbaa !197
  br label %sqlite3ValueApplyAffinity.exit

bb.z:                                             ; preds = %bb.v
  tail call fastcc void @applyNumericAffinity(ptr noundef nonnull %i.s)
  %i.bt = load i16, ptr %i.t, align 4, !tbaa !197 ; 2 uses
  %i.bu = and i16 %i.bt, 8
  %.not9.i.i50 = icmp eq i16 %i.bu, 0
  br i1 %.not9.i.i50, label %sqlite3ValueApplyAffinity.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bv = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !231 ; 3 uses
  %i.bx = tail call double @llvm.fabs.f64(double %i.bw)
  %or.cond.i.i.i.i51 = fcmp ogt double %i.bx, f0x43E0000000000000
  %i.by = fptosi double %i.bw to i64
  %.0.i.i.i.i52 = select i1 %or.cond.i.i.i.i51, i64 -9223372036854775808, i64 %i.by ; 2 uses
  store i64 %.0.i.i.i.i52, ptr %i.s, align 8, !tbaa !139
  %i.bz = sitofp i64 %.0.i.i.i.i52 to double
  %i.ca = fcmp oeq double %i.bw, %i.bz
  br i1 %i.ca, label %bb.ab, label %sqlite3ValueApplyAffinity.exit

bb.ab:                                            ; preds = %bb.aa
  %i.cb = or i16 %i.bt, 4
  store i16 %i.cb, ptr %i.t, align 4, !tbaa !197
  br label %sqlite3ValueApplyAffinity.exit

bb.ac:                                            ; preds = %bb.b
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !801
  %i.ce = call fastcc i32 @sqlite3ValueFromExpr(ptr noundef %0, ptr noundef %i.cd, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr noundef %i.a)
  %i.cf = icmp eq i32 %i.ce, 0
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !266 ; 5 uses
  br i1 %i.cf, label %bb.ad, label %sqlite3ValueApplyAffinity.exit

bb.ad:                                            ; preds = %bb.ac
  %i.cg = load i64, ptr %.pre, align 8, !tbaa !139
  %i.ch = sub nsw i64 0, %i.cg
  store i64 %i.ch, ptr %.pre, align 8, !tbaa !139
  %i.ci = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 2 uses
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !231
  %i.ck = fneg double %i.cj
  store double %i.ck, ptr %i.ci, align 8, !tbaa !231
  br label %sqlite3ValueApplyAffinity.exit

bb.ae:                                            ; preds = %bb.b
  %.not.i.i.i54 = icmp eq ptr %0, null            ; 2 uses
  br i1 %.not.i.i.i54, label %sqlite3DbMallocRaw.exit.i.i57, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 2, !tbaa !202
  %i.cn = icmp eq i8 %i.cm, 0
  br i1 %i.cn, label %bb.ag, label %sqlite3ValueNew.exit59

bb.ag:                                            ; preds = %bb.af
  %i.co = tail call ptr @sqlite3_malloc(i32 noundef 48) ; 2 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i8 1, ptr %i.cl, align 2, !tbaa !202
  br label %sqlite3ValueNew.exit59

sqlite3DbMallocRaw.exit.i.i57:                    ; preds = %bb.ae
  %i.cq = tail call ptr @sqlite3_malloc(i32 noundef 48) ; 2 uses
  %.not.i.i58 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i58, label %sqlite3ValueNew.exit59, label %bb.ai

bb.ai:                                            ; preds = %sqlite3DbMallocRaw.exit.i.i57, %bb.ag
  %.0.i11.i.i56 = phi ptr [ %i.cq, %sqlite3DbMallocRaw.exit.i.i57 ], [ %i.co, %bb.ag ] ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %.0.i11.i.i56, i8 0, i64 48, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i11.i.i56, i64 36
  store i16 1, ptr %i.cr, align 4, !tbaa !197
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i11.i.i56, i64 38
  store i8 5, ptr %i.cs, align 2, !tbaa !199
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i11.i.i56, i64 16
  store ptr %0, ptr %i.ct, align 8, !tbaa !203
  br label %sqlite3ValueNew.exit59

sqlite3ValueNew.exit59:                           ; preds = %bb.af, %bb.ah, %sqlite3DbMallocRaw.exit.i.i57, %bb.ai
  %.0.i7.i9.i55 = phi ptr [ %.0.i11.i.i56, %bb.ai ], [ null, %sqlite3DbMallocRaw.exit.i.i57 ], [ null, %bb.ah ], [ null, %bb.af ] ; 14 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cw = load i32, ptr %i.cv, align 8            ; 3 uses
  %i.cx = lshr i32 %i.cw, 1                       ; 2 uses
  %i.cy = add nsw i32 %i.cx, -3
  %i.cz = load ptr, ptr %i.cu, align 8, !tbaa !800 ; 2 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 2      ; 18 uses
  %i.db = sdiv i32 %i.cy, 2                       ; 2 uses
  %i.dc = add nsw i32 %i.db, 1                    ; 2 uses
  br i1 %.not.i.i.i54, label %sqlite3DbMallocRaw.exit.i, label %bb.aj

bb.aj:                                            ; preds = %sqlite3ValueNew.exit59
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 2 uses
  %i.de = load i8, ptr %i.dd, align 2, !tbaa !202
  %i.df = icmp eq i8 %i.de, 0
  br i1 %i.df, label %bb.ak, label %bb.as

bb.ak:                                            ; preds = %bb.aj
  %i.dg = tail call ptr @sqlite3_malloc(i32 noundef %i.dc) ; 2 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %bb.al, label %.preheader.i

bb.al:                                            ; preds = %bb.ak
  store i8 1, ptr %i.dd, align 2, !tbaa !202
  br label %bb.as

sqlite3DbMallocRaw.exit.i:                        ; preds = %sqlite3ValueNew.exit59
  %i.di = tail call ptr @sqlite3_malloc(i32 noundef %i.dc) ; 2 uses
  %.not.i65 = icmp eq ptr %i.di, null
  br i1 %.not.i65, label %bb.as, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ak, %sqlite3DbMallocRaw.exit.i
  %.0.i32.i = phi ptr [ %i.di, %sqlite3DbMallocRaw.exit.i ], [ %i.dg, %bb.ak ] ; 8 uses
  %i.dj = icmp ugt i32 %i.cw, 9
  br i1 %i.dj, label %.lr.ph.preheader.i, label %bb.at

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.dk = add nsw i32 %i.cx, -4                   ; 2 uses
  %i.dl = zext i32 %i.dk to i64                   ; 2 uses
  %i.dm = tail call i64 @llvm.umax.i64(i64 %i.dl, i64 2)
  %i.dn = add nsw i64 %i.dm, -1                   ; 3 uses
  %i.do = lshr i64 %i.dn, 1
  %i.dp = add nuw nsw i64 %i.do, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.dk, 127
  br i1 %min.iters.check, label %.lr.ph.i61.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.dq = lshr i64 %i.dn, 1
  %i.dr = getelementptr i8, ptr %.0.i32.i, i64 %i.dq
  %scevgep = getelementptr i8, ptr %i.dr, i64 1
  %i.ds = and i64 %i.dn, -2
  %i.dt = getelementptr i8, ptr %i.cz, i64 %i.ds
  %scevgep117 = getelementptr i8, ptr %i.dt, i64 4
  %bound0 = icmp ult ptr %.0.i32.i, %scevgep117
  %bound1 = icmp ult ptr %i.da, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i61.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dp, 9223372036854775792     ; 4 uses
  %i.du = shl nuw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dv = shl nuw i64 %index, 1                   ; 16 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dv ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dv ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 2
  %i.dz = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dv ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.eb = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dv ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 6
  %i.ed = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dv ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dv ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 10
  %i.eh = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dv ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  %i.ej = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dv ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 14
  %i.el = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dv ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dv ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 18
  %i.ep = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dv ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 20
  %i.er = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dv ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 22
  %i.et = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dv ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.ev = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dv ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 26
  %i.ex = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dv ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 28
  %i.ez = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dv ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 30
  %i.fb = load i8, ptr %i.dw, align 1, !tbaa !139, !alias.scope !1747
  %i.fc = load i8, ptr %i.dy, align 1, !tbaa !139, !alias.scope !1747
  %i.fd = load i8, ptr %i.ea, align 1, !tbaa !139, !alias.scope !1747
  %i.fe = load i8, ptr %i.ec, align 1, !tbaa !139, !alias.scope !1747
  %i.ff = load i8, ptr %i.ee, align 1, !tbaa !139, !alias.scope !1747
  %i.fg = load i8, ptr %i.eg, align 1, !tbaa !139, !alias.scope !1747
  %i.fh = load i8, ptr %i.ei, align 1, !tbaa !139, !alias.scope !1747
  %i.fi = load i8, ptr %i.ek, align 1, !tbaa !139, !alias.scope !1747
  %i.fj = load i8, ptr %i.em, align 1, !tbaa !139, !alias.scope !1747
  %i.fk = load i8, ptr %i.eo, align 1, !tbaa !139, !alias.scope !1747
  %i.fl = load i8, ptr %i.eq, align 1, !tbaa !139, !alias.scope !1747
  %i.fm = load i8, ptr %i.es, align 1, !tbaa !139, !alias.scope !1747
  %i.fn = load i8, ptr %i.eu, align 1, !tbaa !139, !alias.scope !1747
  %i.fo = load i8, ptr %i.ew, align 1, !tbaa !139, !alias.scope !1747
  %i.fp = load i8, ptr %i.ey, align 1, !tbaa !139, !alias.scope !1747
  %i.fq = load i8, ptr %i.fa, align 1, !tbaa !139, !alias.scope !1747
  %i.fr = insertelement <16 x i8> poison, i8 %i.fb, i64 0
  %i.fs = insertelement <16 x i8> %i.fr, i8 %i.fc, i64 1
  %i.ft = insertelement <16 x i8> %i.fs, i8 %i.fd, i64 2
  %i.fu = insertelement <16 x i8> %i.ft, i8 %i.fe, i64 3
  %i.fv = insertelement <16 x i8> %i.fu, i8 %i.ff, i64 4
  %i.fw = insertelement <16 x i8> %i.fv, i8 %i.fg, i64 5
  %i.fx = insertelement <16 x i8> %i.fw, i8 %i.fh, i64 6
  %i.fy = insertelement <16 x i8> %i.fx, i8 %i.fi, i64 7
  %i.fz = insertelement <16 x i8> %i.fy, i8 %i.fj, i64 8
  %i.ga = insertelement <16 x i8> %i.fz, i8 %i.fk, i64 9
  %i.gb = insertelement <16 x i8> %i.ga, i8 %i.fl, i64 10
  %i.gc = insertelement <16 x i8> %i.gb, i8 %i.fm, i64 11
  %i.gd = insertelement <16 x i8> %i.gc, i8 %i.fn, i64 12
  %i.ge = insertelement <16 x i8> %i.gd, i8 %i.fo, i64 13
  %i.gf = insertelement <16 x i8> %i.ge, i8 %i.fp, i64 14
  %i.gg = insertelement <16 x i8> %i.gf, i8 %i.fq, i64 15
  %i.gh = sext <16 x i8> %i.gg to <16 x i32>      ; 3 uses
  %i.gi = add nsw <16 x i32> %i.gh, splat (i32 -48) ; 2 uses
  %i.gj = icmp ugt <16 x i32> %i.gi, splat (i32 9)
  %i.gk = add nsw <16 x i32> %i.gh, splat (i32 -97)
  %i.gl = icmp ult <16 x i32> %i.gk, splat (i32 6)
  %predphi.v = select <16 x i1> %i.gl, <16 x i32> splat (i32 -87), <16 x i32> splat (i32 -55)
  %predphi = add nsw <16 x i32> %predphi.v, %i.gh
  %predphi118 = select <16 x i1> %i.gj, <16 x i32> %predphi, <16 x i32> %i.gi
  %i.gm = shl nsw <16 x i32> %predphi118, splat (i32 4)
  %i.gn = getelementptr inbounds nuw i8, ptr %i.dw, i64 1
  %i.go = getelementptr inbounds nuw i8, ptr %i.dx, i64 3
  %i.gp = getelementptr inbounds nuw i8, ptr %i.dz, i64 5
  %i.gq = getelementptr inbounds nuw i8, ptr %i.eb, i64 7
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ed, i64 9
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ef, i64 11
  %i.gt = getelementptr inbounds nuw i8, ptr %i.eh, i64 13
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ej, i64 15
  %i.gv = getelementptr inbounds nuw i8, ptr %i.el, i64 17
  %i.gw = getelementptr inbounds nuw i8, ptr %i.en, i64 19
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ep, i64 21
  %i.gy = getelementptr inbounds nuw i8, ptr %i.er, i64 23
  %i.gz = getelementptr inbounds nuw i8, ptr %i.et, i64 25
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ev, i64 27
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ex, i64 29
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ez, i64 31
  %i.hd = load i8, ptr %i.gn, align 1, !tbaa !139, !alias.scope !1747
  %i.he = load i8, ptr %i.go, align 1, !tbaa !139, !alias.scope !1747
  %i.hf = load i8, ptr %i.gp, align 1, !tbaa !139, !alias.scope !1747
  %i.hg = load i8, ptr %i.gq, align 1, !tbaa !139, !alias.scope !1747
  %i.hh = load i8, ptr %i.gr, align 1, !tbaa !139, !alias.scope !1747
  %i.hi = load i8, ptr %i.gs, align 1, !tbaa !139, !alias.scope !1747
  %i.hj = load i8, ptr %i.gt, align 1, !tbaa !139, !alias.scope !1747
  %i.hk = load i8, ptr %i.gu, align 1, !tbaa !139, !alias.scope !1747
  %i.hl = load i8, ptr %i.gv, align 1, !tbaa !139, !alias.scope !1747
  %i.hm = load i8, ptr %i.gw, align 1, !tbaa !139, !alias.scope !1747
  %i.hn = load i8, ptr %i.gx, align 1, !tbaa !139, !alias.scope !1747
  %i.ho = load i8, ptr %i.gy, align 1, !tbaa !139, !alias.scope !1747
  %i.hp = load i8, ptr %i.gz, align 1, !tbaa !139, !alias.scope !1747
  %i.hq = load i8, ptr %i.ha, align 1, !tbaa !139, !alias.scope !1747
  %i.hr = load i8, ptr %i.hb, align 1, !tbaa !139, !alias.scope !1747
  %i.hs = load i8, ptr %i.hc, align 1, !tbaa !139, !alias.scope !1747
  %i.ht = insertelement <16 x i8> poison, i8 %i.hd, i64 0
  %i.hu = insertelement <16 x i8> %i.ht, i8 %i.he, i64 1
  %i.hv = insertelement <16 x i8> %i.hu, i8 %i.hf, i64 2
  %i.hw = insertelement <16 x i8> %i.hv, i8 %i.hg, i64 3
  %i.hx = insertelement <16 x i8> %i.hw, i8 %i.hh, i64 4
  %i.hy = insertelement <16 x i8> %i.hx, i8 %i.hi, i64 5
  %i.hz = insertelement <16 x i8> %i.hy, i8 %i.hj, i64 6
  %i.ia = insertelement <16 x i8> %i.hz, i8 %i.hk, i64 7
  %i.ib = insertelement <16 x i8> %i.ia, i8 %i.hl, i64 8
  %i.ic = insertelement <16 x i8> %i.ib, i8 %i.hm, i64 9
  %i.id = insertelement <16 x i8> %i.ic, i8 %i.hn, i64 10
  %i.ie = insertelement <16 x i8> %i.id, i8 %i.ho, i64 11
  %i.if = insertelement <16 x i8> %i.ie, i8 %i.hp, i64 12
  %i.ig = insertelement <16 x i8> %i.if, i8 %i.hq, i64 13
  %i.ih = insertelement <16 x i8> %i.ig, i8 %i.hr, i64 14
  %i.ii = insertelement <16 x i8> %i.ih, i8 %i.hs, i64 15
  %i.ij = sext <16 x i8> %i.ii to <16 x i32>      ; 3 uses
  %i.ik = add nsw <16 x i32> %i.ij, splat (i32 -48) ; 2 uses
  %i.il = icmp ugt <16 x i32> %i.ik, splat (i32 9)
  %i.im = add nsw <16 x i32> %i.ij, splat (i32 -97)
  %i.in = icmp ult <16 x i32> %i.im, splat (i32 6)
  %predphi119.v = select <16 x i1> %i.in, <16 x i32> splat (i32 169), <16 x i32> splat (i32 201)
  %predphi119 = add nsw <16 x i32> %predphi119.v, %i.ij
  %predphi120 = select <16 x i1> %i.il, <16 x i32> %predphi119, <16 x i32> %i.ik
  %i.io = or <16 x i32> %predphi120, %i.gm
  %i.ip = trunc <16 x i32> %i.io to <16 x i8>
  %i.iq = getelementptr inbounds nuw i8, ptr %.0.i32.i, i64 %index
  store <16 x i8> %i.ip, ptr %i.iq, align 1, !tbaa !139, !alias.scope !1748, !noalias !1747
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ir = icmp eq i64 %index.next, %n.vec
  br i1 %i.ir, label %middle.block, label %vector.body, !llvm.loop !1745

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dp, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %.lr.ph.i61.preheader

.lr.ph.i61.preheader:                             ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i62.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i ], [ %i.du, %middle.block ]
  br label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %.lr.ph.i61.preheader, %hexToInt.exit20.i
  %indvars.iv.i62 = phi i64 [ %indvars.iv.next.i64, %hexToInt.exit20.i ], [ %indvars.iv.i62.ph, %.lr.ph.i61.preheader ] ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.da, i64 %indvars.iv.i62 ; 2 uses
  %i.it = load i8, ptr %i.is, align 1, !tbaa !139
  %i.iu = sext i8 %i.it to i32                    ; 4 uses
  %i.iv = add nsw i32 %i.iu, -48                  ; 2 uses
  %or.cond.i.i63 = icmp ult i32 %i.iv, 10
  br i1 %or.cond.i.i63, label %hexToInt.exit.i, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i61
  %i.iw = add nsw i32 %i.iu, -97
  %or.cond3.i.i = icmp ult i32 %i.iw, 6
  br i1 %or.cond3.i.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ix = add nsw i32 %i.iu, -87
  br label %hexToInt.exit.i

bb.ao:                                            ; preds = %bb.am
  %i.iy = add nsw i32 %i.iu, -55
  br label %hexToInt.exit.i

hexToInt.exit.i:                                  ; preds = %bb.ao, %bb.an, %.lr.ph.i61
  %.0.i16.i = phi i32 [ %i.iy, %bb.ao ], [ %i.ix, %bb.an ], [ %i.iv, %.lr.ph.i61 ]
  %i.iz = shl nsw i32 %.0.i16.i, 4
  %i.ja = getelementptr inbounds nuw i8, ptr %i.is, i64 1
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !139
  %i.jc = sext i8 %i.jb to i32                    ; 4 uses
  %i.jd = add nsw i32 %i.jc, -48                  ; 2 uses
  %or.cond.i17.i = icmp ult i32 %i.jd, 10
  br i1 %or.cond.i17.i, label %hexToInt.exit20.i, label %bb.ap

bb.ap:                                            ; preds = %hexToInt.exit.i
  %i.je = add nsw i32 %i.jc, -97
  %or.cond3.i18.i = icmp ult i32 %i.je, 6
  br i1 %or.cond3.i18.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.jf = add nsw i32 %i.jc, -87
  br label %hexToInt.exit20.i

end_hunk_0
