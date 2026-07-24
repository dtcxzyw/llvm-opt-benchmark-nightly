inline.NumInlined: 3254
inline.NumDeleted: 427
loop-unroll.NumCompletelyUnrolled: 75
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 107
begin_hunk_0_@sqlite3ValueFromExpr:bb.a
  %or.cond10 = and i1 %i.ba, %or.cond7
  br i1 %or.cond10, label %bb.s, label %bb.v

bb.s:                                             ; preds = %sqlite3ValueSetStr.exit
  tail call fastcc void @applyNumericAffinity(ptr noundef nonnull %i.s)
  %i.bb = load i16, ptr %i.t, align 4, !tbaa !124 ; 2 uses
  %i.bc = and i16 %i.bb, 8
  %.not9.i.i = icmp eq i16 %i.bc, 0
  br i1 %.not9.i.i, label %sqlite3ValueApplyAffinity.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bd = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.be = load double, ptr %i.bd, align 8, !tbaa !167 ; 3 uses
  %i.bf = tail call double @llvm.fabs.f64(double %i.be)
  %or.cond.i.i.i.i = fcmp ogt double %i.bf, f0x43E0000000000000
  %i.bg = fptosi double %i.be to i64
  %.0.i.i.i.i = select i1 %or.cond.i.i.i.i, i64 -9223372036854775808, i64 %i.bg ; 2 uses
  store i64 %.0.i.i.i.i, ptr %i.s, align 8, !tbaa !37
  %i.bh = sitofp i64 %.0.i.i.i.i to double
  %i.bi = fcmp oeq double %i.be, %i.bh
  br i1 %i.bi, label %bb.u, label %sqlite3ValueApplyAffinity.exit

bb.u:                                             ; preds = %bb.t
  %i.bj = or i16 %i.bb, 4
  store i16 %i.bj, ptr %i.t, align 4, !tbaa !124
  br label %sqlite3ValueApplyAffinity.exit

bb.v:                                             ; preds = %sqlite3ValueSetStr.exit
  switch i8 %3, label %bb.z [
    i8 97, label %bb.w
    i8 98, label %sqlite3ValueApplyAffinity.exit
  ]

bb.w:                                             ; preds = %bb.v
  %i.bk = load i16, ptr %i.t, align 4, !tbaa !124 ; 2 uses
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
  %.pre.i.i = load i16, ptr %i.t, align 4, !tbaa !124
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.br = phi i16 [ %.pre.i.i, %bb.x ], [ %i.bk, %bb.w ]
  %i.bs = and i16 %i.br, -13
  store i16 %i.bs, ptr %i.t, align 4, !tbaa !124
  br label %sqlite3ValueApplyAffinity.exit

bb.z:                                             ; preds = %bb.v
  tail call fastcc void @applyNumericAffinity(ptr noundef nonnull %i.s)
  %i.bt = load i16, ptr %i.t, align 4, !tbaa !124 ; 2 uses
  %i.bu = and i16 %i.bt, 8
  %.not9.i.i50 = icmp eq i16 %i.bu, 0
  br i1 %.not9.i.i50, label %sqlite3ValueApplyAffinity.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bv = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !167 ; 3 uses
  %i.bx = tail call double @llvm.fabs.f64(double %i.bw)
  %or.cond.i.i.i.i51 = fcmp ogt double %i.bx, f0x43E0000000000000
  %i.by = fptosi double %i.bw to i64
  %.0.i.i.i.i52 = select i1 %or.cond.i.i.i.i51, i64 -9223372036854775808, i64 %i.by ; 2 uses
  store i64 %.0.i.i.i.i52, ptr %i.s, align 8, !tbaa !37
  %i.bz = sitofp i64 %.0.i.i.i.i52 to double
  %i.ca = fcmp oeq double %i.bw, %i.bz
  br i1 %i.ca, label %bb.ab, label %sqlite3ValueApplyAffinity.exit

bb.ab:                                            ; preds = %bb.aa
  %i.cb = or i16 %i.bt, 4
  store i16 %i.cb, ptr %i.t, align 4, !tbaa !124
  br label %sqlite3ValueApplyAffinity.exit

bb.ac:                                            ; preds = %bb.b
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1198
  %i.ce = call fastcc i32 @sqlite3ValueFromExpr(ptr noundef %0, ptr noundef %i.cd, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr noundef %i.a)
  %i.cf = icmp eq i32 %i.ce, 0
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !216 ; 5 uses
  br i1 %i.cf, label %bb.ad, label %sqlite3ValueApplyAffinity.exit

bb.ad:                                            ; preds = %bb.ac
  %i.cg = load i64, ptr %.pre, align 8, !tbaa !37
  %i.ch = sub nsw i64 0, %i.cg
  store i64 %i.ch, ptr %.pre, align 8, !tbaa !37
  %i.ci = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 2 uses
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !167
  %i.ck = fneg double %i.cj
  store double %i.ck, ptr %i.ci, align 8, !tbaa !167
  br label %sqlite3ValueApplyAffinity.exit

bb.ae:                                            ; preds = %bb.b
  %.not.i.i.i54 = icmp eq ptr %0, null            ; 2 uses
  br i1 %.not.i.i.i54, label %sqlite3DbMallocRaw.exit.i.i57, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 2, !tbaa !129
  %i.cn = icmp eq i8 %i.cm, 0
  br i1 %i.cn, label %bb.ag, label %sqlite3ValueNew.exit59

bb.ag:                                            ; preds = %bb.af
  %i.co = tail call ptr @sqlite3_malloc(i32 noundef 48) ; 2 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i8 1, ptr %i.cl, align 2, !tbaa !129
  br label %sqlite3ValueNew.exit59

sqlite3DbMallocRaw.exit.i.i57:                    ; preds = %bb.ae
  %i.cq = tail call ptr @sqlite3_malloc(i32 noundef 48) ; 2 uses
  %.not.i.i58 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i58, label %sqlite3ValueNew.exit59, label %bb.ai

bb.ai:                                            ; preds = %sqlite3DbMallocRaw.exit.i.i57, %bb.ag
  %.0.i11.i.i56 = phi ptr [ %i.cq, %sqlite3DbMallocRaw.exit.i.i57 ], [ %i.co, %bb.ag ] ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %.0.i11.i.i56, i8 0, i64 48, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i11.i.i56, i64 36
  store i16 1, ptr %i.cr, align 4, !tbaa !124
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i11.i.i56, i64 38
  store i8 5, ptr %i.cs, align 2, !tbaa !126
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i11.i.i56, i64 16
  store ptr %0, ptr %i.ct, align 8, !tbaa !130
  br label %sqlite3ValueNew.exit59

sqlite3ValueNew.exit59:                           ; preds = %bb.af, %bb.ah, %sqlite3DbMallocRaw.exit.i.i57, %bb.ai
  %.0.i7.i9.i55 = phi ptr [ %.0.i11.i.i56, %bb.ai ], [ null, %sqlite3DbMallocRaw.exit.i.i57 ], [ null, %bb.ah ], [ null, %bb.af ] ; 14 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cw = load i32, ptr %i.cv, align 8            ; 3 uses
  %i.cx = lshr i32 %i.cw, 1                       ; 2 uses
  %i.cy = add nsw i32 %i.cx, -3
  %i.cz = load ptr, ptr %i.cu, align 8, !tbaa !1197 ; 2 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 2      ; 18 uses
  %i.db = sdiv i32 %i.cy, 2                       ; 2 uses
  %i.dc = add nsw i32 %i.db, 1                    ; 2 uses
  br i1 %.not.i.i.i54, label %sqlite3DbMallocRaw.exit.i, label %bb.aj

bb.aj:                                            ; preds = %sqlite3ValueNew.exit59
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 2 uses
  %i.de = load i8, ptr %i.dd, align 2, !tbaa !129
  %i.df = icmp eq i8 %i.de, 0
  br i1 %i.df, label %bb.ak, label %bb.as

bb.ak:                                            ; preds = %bb.aj
  %i.dg = tail call ptr @sqlite3_malloc(i32 noundef %i.dc) ; 2 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %bb.al, label %.preheader.i

bb.al:                                            ; preds = %bb.ak
  store i8 1, ptr %i.dd, align 2, !tbaa !129
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
  %i.dl = zext i32 %i.dk to i64                   ; 3 uses
  %i.dm = tail call i64 @llvm.umax.i64(i64 %i.dl, i64 2)
  %i.dn = add nsw i64 %i.dm, -1
  %i.do = lshr i64 %i.dn, 1
  %i.dp = add nuw nsw i64 %i.do, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.dk, 127
  br i1 %min.iters.check, label %.lr.ph.i61.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.dq = add nsw i64 %i.dl, -1                   ; 2 uses
  %i.dr = lshr i64 %i.dq, 1
  %i.ds = getelementptr i8, ptr %.0.i32.i, i64 %i.dr
  %scevgep = getelementptr i8, ptr %i.ds, i64 1
  %i.dt = and i64 %i.dq, -2
  %i.du = getelementptr i8, ptr %i.cz, i64 %i.dt
  %scevgep117 = getelementptr i8, ptr %i.du, i64 4
  %bound0 = icmp ult ptr %.0.i32.i, %scevgep117
  %bound1 = icmp ult ptr %i.da, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i61.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dp, 9223372036854775792     ; 4 uses
  %i.dv = shl nuw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dw = shl nuw i64 %index, 1                   ; 16 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dw ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dw ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 2
  %i.ea = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dw ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dw ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 6
  %i.ee = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dw ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dw ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 10
  %i.ei = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dw ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  %i.ek = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dw ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 14
  %i.em = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dw ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dw ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 18
  %i.eq = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dw ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 20
  %i.es = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dw ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 22
  %i.eu = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dw ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dw ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 26
  %i.ey = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dw ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 28
  %i.fa = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dw ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 30
  %i.fc = load i8, ptr %i.dx, align 1, !tbaa !37, !alias.scope !1638
  %i.fd = load i8, ptr %i.dz, align 1, !tbaa !37, !alias.scope !1638
  %i.fe = load i8, ptr %i.eb, align 1, !tbaa !37, !alias.scope !1638
  %i.ff = load i8, ptr %i.ed, align 1, !tbaa !37, !alias.scope !1638
  %i.fg = load i8, ptr %i.ef, align 1, !tbaa !37, !alias.scope !1638
  %i.fh = load i8, ptr %i.eh, align 1, !tbaa !37, !alias.scope !1638
  %i.fi = load i8, ptr %i.ej, align 1, !tbaa !37, !alias.scope !1638
  %i.fj = load i8, ptr %i.el, align 1, !tbaa !37, !alias.scope !1638
  %i.fk = load i8, ptr %i.en, align 1, !tbaa !37, !alias.scope !1638
  %i.fl = load i8, ptr %i.ep, align 1, !tbaa !37, !alias.scope !1638
  %i.fm = load i8, ptr %i.er, align 1, !tbaa !37, !alias.scope !1638
  %i.fn = load i8, ptr %i.et, align 1, !tbaa !37, !alias.scope !1638
  %i.fo = load i8, ptr %i.ev, align 1, !tbaa !37, !alias.scope !1638
  %i.fp = load i8, ptr %i.ex, align 1, !tbaa !37, !alias.scope !1638
  %i.fq = load i8, ptr %i.ez, align 1, !tbaa !37, !alias.scope !1638
  %i.fr = load i8, ptr %i.fb, align 1, !tbaa !37, !alias.scope !1638
  %i.fs = insertelement <16 x i8> poison, i8 %i.fc, i64 0
  %i.ft = insertelement <16 x i8> %i.fs, i8 %i.fd, i64 1
  %i.fu = insertelement <16 x i8> %i.ft, i8 %i.fe, i64 2
  %i.fv = insertelement <16 x i8> %i.fu, i8 %i.ff, i64 3
  %i.fw = insertelement <16 x i8> %i.fv, i8 %i.fg, i64 4
  %i.fx = insertelement <16 x i8> %i.fw, i8 %i.fh, i64 5
  %i.fy = insertelement <16 x i8> %i.fx, i8 %i.fi, i64 6
  %i.fz = insertelement <16 x i8> %i.fy, i8 %i.fj, i64 7
  %i.ga = insertelement <16 x i8> %i.fz, i8 %i.fk, i64 8
  %i.gb = insertelement <16 x i8> %i.ga, i8 %i.fl, i64 9
  %i.gc = insertelement <16 x i8> %i.gb, i8 %i.fm, i64 10
  %i.gd = insertelement <16 x i8> %i.gc, i8 %i.fn, i64 11
  %i.ge = insertelement <16 x i8> %i.gd, i8 %i.fo, i64 12
  %i.gf = insertelement <16 x i8> %i.ge, i8 %i.fp, i64 13
  %i.gg = insertelement <16 x i8> %i.gf, i8 %i.fq, i64 14
  %i.gh = insertelement <16 x i8> %i.gg, i8 %i.fr, i64 15
  %i.gi = sext <16 x i8> %i.gh to <16 x i32>      ; 3 uses
  %i.gj = add nsw <16 x i32> %i.gi, splat (i32 -48) ; 2 uses
  %i.gk = icmp ugt <16 x i32> %i.gj, splat (i32 9)
  %i.gl = add nsw <16 x i32> %i.gi, splat (i32 -97)
  %i.gm = icmp ult <16 x i32> %i.gl, splat (i32 6)
  %predphi.v = select <16 x i1> %i.gm, <16 x i32> splat (i32 -87), <16 x i32> splat (i32 -55)
  %predphi = add nsw <16 x i32> %predphi.v, %i.gi
  %predphi118 = select <16 x i1> %i.gk, <16 x i32> %predphi, <16 x i32> %i.gj
  %i.gn = shl nsw <16 x i32> %predphi118, splat (i32 4)
  %i.go = getelementptr inbounds nuw i8, ptr %i.dx, i64 1
  %i.gp = getelementptr inbounds nuw i8, ptr %i.dy, i64 3
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ea, i64 5
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ec, i64 7
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ee, i64 9
  %i.gt = getelementptr inbounds nuw i8, ptr %i.eg, i64 11
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ei, i64 13
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ek, i64 15
  %i.gw = getelementptr inbounds nuw i8, ptr %i.em, i64 17
  %i.gx = getelementptr inbounds nuw i8, ptr %i.eo, i64 19
  %i.gy = getelementptr inbounds nuw i8, ptr %i.eq, i64 21
  %i.gz = getelementptr inbounds nuw i8, ptr %i.es, i64 23
  %i.ha = getelementptr inbounds nuw i8, ptr %i.eu, i64 25
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ew, i64 27
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ey, i64 29
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fa, i64 31
  %i.he = load i8, ptr %i.go, align 1, !tbaa !37, !alias.scope !1638
  %i.hf = load i8, ptr %i.gp, align 1, !tbaa !37, !alias.scope !1638
  %i.hg = load i8, ptr %i.gq, align 1, !tbaa !37, !alias.scope !1638
  %i.hh = load i8, ptr %i.gr, align 1, !tbaa !37, !alias.scope !1638
  %i.hi = load i8, ptr %i.gs, align 1, !tbaa !37, !alias.scope !1638
  %i.hj = load i8, ptr %i.gt, align 1, !tbaa !37, !alias.scope !1638
  %i.hk = load i8, ptr %i.gu, align 1, !tbaa !37, !alias.scope !1638
  %i.hl = load i8, ptr %i.gv, align 1, !tbaa !37, !alias.scope !1638
  %i.hm = load i8, ptr %i.gw, align 1, !tbaa !37, !alias.scope !1638
  %i.hn = load i8, ptr %i.gx, align 1, !tbaa !37, !alias.scope !1638
  %i.ho = load i8, ptr %i.gy, align 1, !tbaa !37, !alias.scope !1638
  %i.hp = load i8, ptr %i.gz, align 1, !tbaa !37, !alias.scope !1638
  %i.hq = load i8, ptr %i.ha, align 1, !tbaa !37, !alias.scope !1638
  %i.hr = load i8, ptr %i.hb, align 1, !tbaa !37, !alias.scope !1638
  %i.hs = load i8, ptr %i.hc, align 1, !tbaa !37, !alias.scope !1638
  %i.ht = load i8, ptr %i.hd, align 1, !tbaa !37, !alias.scope !1638
  %i.hu = insertelement <16 x i8> poison, i8 %i.he, i64 0
  %i.hv = insertelement <16 x i8> %i.hu, i8 %i.hf, i64 1
  %i.hw = insertelement <16 x i8> %i.hv, i8 %i.hg, i64 2
  %i.hx = insertelement <16 x i8> %i.hw, i8 %i.hh, i64 3
  %i.hy = insertelement <16 x i8> %i.hx, i8 %i.hi, i64 4
  %i.hz = insertelement <16 x i8> %i.hy, i8 %i.hj, i64 5
  %i.ia = insertelement <16 x i8> %i.hz, i8 %i.hk, i64 6
  %i.ib = insertelement <16 x i8> %i.ia, i8 %i.hl, i64 7
  %i.ic = insertelement <16 x i8> %i.ib, i8 %i.hm, i64 8
  %i.id = insertelement <16 x i8> %i.ic, i8 %i.hn, i64 9
  %i.ie = insertelement <16 x i8> %i.id, i8 %i.ho, i64 10
  %i.if = insertelement <16 x i8> %i.ie, i8 %i.hp, i64 11
  %i.ig = insertelement <16 x i8> %i.if, i8 %i.hq, i64 12
  %i.ih = insertelement <16 x i8> %i.ig, i8 %i.hr, i64 13
  %i.ii = insertelement <16 x i8> %i.ih, i8 %i.hs, i64 14
  %i.ij = insertelement <16 x i8> %i.ii, i8 %i.ht, i64 15
  %i.ik = sext <16 x i8> %i.ij to <16 x i32>      ; 3 uses
  %i.il = add nsw <16 x i32> %i.ik, splat (i32 -48) ; 2 uses
  %i.im = icmp ugt <16 x i32> %i.il, splat (i32 9)
  %i.in = add nsw <16 x i32> %i.ik, splat (i32 -97)
  %i.io = icmp ult <16 x i32> %i.in, splat (i32 6)
  %predphi119.v = select <16 x i1> %i.io, <16 x i32> splat (i32 169), <16 x i32> splat (i32 201)
  %predphi119 = add nsw <16 x i32> %predphi119.v, %i.ik
  %predphi120 = select <16 x i1> %i.im, <16 x i32> %predphi119, <16 x i32> %i.il
  %i.ip = or <16 x i32> %predphi120, %i.gn
  %i.iq = trunc <16 x i32> %i.ip to <16 x i8>
  %i.ir = getelementptr inbounds nuw i8, ptr %.0.i32.i, i64 %index
  store <16 x i8> %i.iq, ptr %i.ir, align 1, !tbaa !37, !alias.scope !1641, !noalias !1638
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.is = icmp eq i64 %index.next, %n.vec
  br i1 %i.is, label %middle.block, label %vector.body, !llvm.loop !1643

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dp, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %.lr.ph.i61.preheader

.lr.ph.i61.preheader:                             ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i62.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i ], [ %i.dv, %middle.block ]
  br label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %.lr.ph.i61.preheader, %hexToInt.exit20.i
  %indvars.iv.i62 = phi i64 [ %indvars.iv.next.i64, %hexToInt.exit20.i ], [ %indvars.iv.i62.ph, %.lr.ph.i61.preheader ] ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.da, i64 %indvars.iv.i62 ; 2 uses
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !37
  %i.iv = sext i8 %i.iu to i32                    ; 4 uses
  %i.iw = add nsw i32 %i.iv, -48                  ; 2 uses
  %or.cond.i.i63 = icmp ult i32 %i.iw, 10
  br i1 %or.cond.i.i63, label %hexToInt.exit.i, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i61
  %i.ix = add nsw i32 %i.iv, -97
  %or.cond3.i.i = icmp ult i32 %i.ix, 6
  br i1 %or.cond3.i.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.iy = add nsw i32 %i.iv, -87
  br label %hexToInt.exit.i

bb.ao:                                            ; preds = %bb.am
  %i.iz = add nsw i32 %i.iv, -55
  br label %hexToInt.exit.i

hexToInt.exit.i:                                  ; preds = %bb.ao, %bb.an, %.lr.ph.i61
  %.0.i16.i = phi i32 [ %i.iz, %bb.ao ], [ %i.iy, %bb.an ], [ %i.iw, %.lr.ph.i61 ]
  %i.ja = shl nsw i32 %.0.i16.i, 4
  %i.jb = getelementptr inbounds nuw i8, ptr %i.it, i64 1
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !37
  %i.jd = sext i8 %i.jc to i32                    ; 4 uses
  %i.je = add nsw i32 %i.jd, -48                  ; 2 uses
  %or.cond.i17.i = icmp ult i32 %i.je, 10
  br i1 %or.cond.i17.i, label %hexToInt.exit20.i, label %bb.ap

bb.ap:                                            ; preds = %hexToInt.exit.i
  %i.jf = add nsw i32 %i.jd, -97
  %or.cond3.i18.i = icmp ult i32 %i.jf, 6
  br i1 %or.cond3.i18.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.jg = add nsw i32 %i.jd, -87
  br label %hexToInt.exit20.i

bb.ar:                                            ; preds = %bb.ap
  %i.jh = add nsw i32 %i.jd, -55
  br label %hexToInt.exit20.i

hexToInt.exit20.i:                                ; preds = %bb.ar, %bb.aq, %hexToInt.exit.i
  %.0.i19.i = phi i32 [ %i.jh, %bb.ar ], [ %i.jg, %bb.aq ], [ %i.je, %hexToInt.exit.i ]
  %i.ji = or i32 %.0.i19.i, %i.ja
  %i.jj = trunc i32 %i.ji to i8
  %i.jk = lshr exact i64 %indvars.iv.i62, 1
  %i.jl = getelementptr inbounds nuw i8, ptr %.0.i32.i, i64 %i.jk
  store i8 %i.jj, ptr %i.jl, align 1, !tbaa !37
  %indvars.iv.next.i64 = add nuw nsw i64 %indvars.iv.i62, 2 ; 3 uses
  %i.jm = icmp samesign ult i64 %indvars.iv.next.i64, %i.dl
  br i1 %i.jm, label %.lr.ph.i61, label %._crit_edge.loopexit.i.loopexit, !llvm.loop !1644

._crit_edge.loopexit.i.loopexit:                  ; preds = %hexToInt.exit20.i
  %i.jn = lshr exact i64 %indvars.iv.next.i64, 1
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.loopexit, %middle.block
  %indvars.iv.next.i64.lcssa = phi i64 [ %n.vec, %middle.block ], [ %i.jn, %._crit_edge.loopexit.i.loopexit ]
  %i.jo = and i64 %indvars.iv.next.i64.lcssa, 2147483647
  br label %bb.at

bb.as:                                            ; preds = %sqlite3DbMallocRaw.exit.i, %bb.al, %bb.aj
  %i.jp = getelementptr inbounds nuw i8, ptr %.0.i7.i9.i55, i64 36 ; 2 uses
  %i.jq = load i16, ptr %i.jp, align 4, !tbaa !124
  %i.jr = and i16 %i.jq, -32
  %i.js = or disjoint i16 %i.jr, 1
  store i16 %i.js, ptr %i.jp, align 4, !tbaa !124
  %i.jt = getelementptr inbounds nuw i8, ptr %.0.i7.i9.i55, i64 38
  store i8 5, ptr %i.jt, align 2, !tbaa !126
  br label %sqlite3ValueApplyAffinity.exit

bb.at:                                            ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.0.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.jo, %._crit_edge.loopexit.i ]
  %i.ju = getelementptr inbounds nuw i8, ptr %.0.i32.i, i64 %.0.lcssa.i
  store i8 0, ptr %i.ju, align 1, !tbaa !37
  %i.jv = icmp ugt i32 %i.cw, 3                   ; 2 uses
  br i1 %i.jv, label %bb.au, label %.preheader63.i

.preheader63.i:                                   ; preds = %bb.at, %.preheader63.i
  %indvars.iv.i69 = phi i64 [ %indvars.iv.next.i70, %.preheader63.i ], [ 0, %bb.at ] ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.0.i32.i, i64 %indvars.iv.i69 ; 2 uses
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !37
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 1
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !37
  %i.ka = or i8 %i.jz, %i.jx
  %.not55.i = icmp eq i8 %i.ka, 0
  %indvars.iv.next.i70 = add nuw nsw i64 %indvars.iv.i69, 2
  br i1 %.not55.i, label %.loopexit.i, label %.preheader63.i, !llvm.loop !174

.loopexit.i:                                      ; preds = %.preheader63.i
  %.249.i = trunc i64 %indvars.iv.i69 to i32
  br label %bb.au

bb.au:                                            ; preds = %.loopexit.i, %bb.at
  %.3.i = phi i32 [ %.249.i, %.loopexit.i ], [ %i.db, %bb.at ] ; 2 uses
  %.046.i = phi i16 [ 112, %.loopexit.i ], [ 80, %bb.at ]
  %i.kb = icmp eq ptr @sqlite3_free, inttoptr (i64 -1 to ptr)
  br i1 %i.kb, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.kc = select i1 %i.jv, i32 0, i32 2
  %.0.i68 = add nsw i32 %.3.i, %i.kc              ; 2 uses
  %i.kd = tail call fastcc i32 @sqlite3VdbeMemGrow(ptr noundef %.0.i7.i9.i55, i32 noundef %.0.i68, i32 noundef 0)
  %.not58.i = icmp eq i32 %i.kd, 0
  br i1 %.not58.i, label %bb.aw, label %sqlite3ValueApplyAffinity.exit

bb.aw:                                            ; preds = %bb.av
  %i.ke = getelementptr inbounds nuw i8, ptr %.0.i7.i9.i55, i64 24
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !119
  %i.kg = sext i32 %.0.i68 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kf, ptr nonnull align 1 %.0.i32.i, i64 %i.kg, i1 false)
  br label %bb.ay

bb.ax:                                            ; preds = %bb.au
  tail call fastcc void @sqlite3VdbeMemRelease(ptr noundef %.0.i7.i9.i55)
  %i.kh = getelementptr inbounds nuw i8, ptr %.0.i7.i9.i55, i64 24
  store ptr %.0.i32.i, ptr %i.kh, align 8, !tbaa !119
  %i.ki = getelementptr inbounds nuw i8, ptr %.0.i7.i9.i55, i64 40
  store ptr @sqlite3_free, ptr %i.ki, align 8, !tbaa !122
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.kj = getelementptr inbounds nuw i8, ptr %.0.i7.i9.i55, i64 32
  store i32 %.3.i, ptr %i.kj, align 8, !tbaa !123
  %i.kk = getelementptr inbounds nuw i8, ptr %.0.i7.i9.i55, i64 36
  store i16 %.046.i, ptr %i.kk, align 4, !tbaa !124
  %i.kl = getelementptr inbounds nuw i8, ptr %.0.i7.i9.i55, i64 39
  store i8 1, ptr %i.kl, align 1, !tbaa !125
  %i.km = getelementptr inbounds nuw i8, ptr %.0.i7.i9.i55, i64 38
  store i8 4, ptr %i.km, align 2, !tbaa !126
  br label %sqlite3ValueApplyAffinity.exit

bb.az:                                            ; preds = %bb.g, %bb.f, %sqlite3DbMallocRaw.exit.i.i
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 1, ptr %i.kn, align 2, !tbaa !129
  %i.ko = icmp eq ptr %.0.i, null
  br i1 %i.ko, label %sqlite3ValueApplyAffinity.exit, label %sqlite3ValueFree.exit.sink.split

sqlite3_free.exit.i:                              ; preds = %sqlite3ValueNew.exit
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 1, ptr %i.kp, align 2, !tbaa !129
  tail call fastcc void @sqlite3VdbeMemRelease(ptr noundef nonnull %i.s)
  br label %sqlite3ValueFree.exit.sink.split

sqlite3ValueFree.exit.sink.split:                 ; preds = %bb.az, %sqlite3_free.exit.i
  %.0.i.sink = phi ptr [ %i.s, %sqlite3_free.exit.i ], [ %.0.i, %bb.az ]
  %i.kq = getelementptr inbounds i8, ptr %.0.i.sink, i64 -8 ; 2 uses
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !28
  %sext.i = shl i64 %i.kr, 32
  %i.ks = ashr exact i64 %sext.i, 32
  %i.kt = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.ku = sub nsw i64 %i.kt, %i.ks
  store i64 %i.ku, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.kq) #43
  br label %sqlite3ValueApplyAffinity.exit

sqlite3ValueApplyAffinity.exit:                   ; preds = %bb.az, %sqlite3ValueFree.exit.sink.split, %bb.ac, %bb.ad, %bb.b, %bb.s, %bb.t, %bb.u, %bb.v, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.as, %bb.av, %bb.ay, %bb.a
  %.sink = phi ptr [ %.pre, %bb.ac ], [ null, %bb.a ], [ %.0.i7.i9.i55, %bb.ay ], [ %.0.i7.i9.i55, %bb.av ], [ %.0.i7.i9.i55, %bb.as ], [ %i.s, %bb.ab ], [ %i.s, %bb.aa ], [ %i.s, %bb.z ], [ %i.s, %bb.y ], [ %i.s, %bb.v ], [ %i.s, %bb.u ], [ %i.s, %bb.t ], [ %i.s, %bb.s ], [ null, %bb.b ], [ %.pre, %bb.ad ], [ null, %sqlite3ValueFree.exit.sink.split ], [ null, %bb.az ]
  %.0 = phi i32 [ 0, %bb.ac ], [ 0, %bb.a ], [ 0, %bb.ay ], [ 0, %bb.av ], [ 0, %bb.as ], [ 0, %bb.ab ], [ 0, %bb.aa ], [ 0, %bb.z ], [ 0, %bb.y ], [ 0, %bb.v ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %bb.b ], [ 0, %bb.ad ], [ 7, %sqlite3ValueFree.exit.sink.split ], [ 7, %bb.az ]
  store ptr %.sink, ptr %4, align 8, !tbaa !216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sqlite3HexToBlob(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 -3, 2147483645) %2) unnamed_addr #5 {
bb.a:
  %i.a = sdiv i32 %2, 2
  %i.b = add nsw i32 %i.a, 1                      ; 2 uses
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %sqlite3DbMallocRaw.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 2 uses
  %i.d = load i8, ptr %i.c, align 2, !tbaa !129
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %sqlite3DbMallocRaw.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @sqlite3_malloc(i32 noundef %i.b) ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %.preheader

end_hunk_0
