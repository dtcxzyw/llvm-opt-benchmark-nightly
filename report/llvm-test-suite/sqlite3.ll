inline.NumInlined: 3254
inline.NumDeleted: 427
loop-unroll.NumCompletelyUnrolled: 75
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 107
begin_hunk_0_@sqlite3ValueFromExpr:bb.a
  %i.ag = getelementptr inbounds i8, ptr %.0.i, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !37
  %i.ai = sext i8 %i.ah to i32
  %i.aj = icmp eq i32 %.023.i, %i.ai
  br i1 %i.aj, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i, i64 %indvars.iv.i
  store i8 0, ptr %i.ak, align 1, !tbaa !37
  br label %sqlite3Dequote.exit

bb.n:                                             ; preds = %bb.l, %bb.k
  %.sink.i = phi i8 [ %i.aa, %bb.l ], [ %i.ab, %bb.k ]
  %.122.i = phi i32 [ %i.ae, %bb.l ], [ %.02128.i, %bb.k ]
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i, i64 %indvars.iv.i
  store i8 %.sink.i, ptr %i.al, align 1, !tbaa !37
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.am = add nsw i32 %.122.i, 1                  ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %.0.i, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !37  ; 2 uses
  %.not.i48 = icmp eq i8 %i.ap, 0
  br i1 %.not.i48, label %sqlite3Dequote.exit, label %bb.k, !llvm.loop !1308

sqlite3Dequote.exit:                              ; preds = %bb.n, %bb.h, %bb.j, %bb.m
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %.0.i)
  %.249.i74 = trunc i64 %strlen.i to i32          ; 2 uses
  %i.aq = icmp eq ptr @sqlite3_free, inttoptr (i64 -1 to ptr)
  br i1 %i.aq, label %bb.o, label %bb.q

bb.o:                                             ; preds = %sqlite3Dequote.exit
  %.0.i81 = add nsw i32 %.249.i74, 1              ; 2 uses
  %i.ar = tail call fastcc i32 @sqlite3VdbeMemGrow(ptr noundef nonnull %i.s, i32 noundef %.0.i81, i32 noundef 0)
  %.not58.i82 = icmp eq i32 %i.ar, 0
  br i1 %.not58.i82, label %bb.p, label %sqlite3ValueSetStr.exit

bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !119
  %i.au = sext i32 %.0.i81 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr nonnull align 1 %.0.i, i64 %i.au, i1 false)
  br label %bb.r

bb.q:                                             ; preds = %sqlite3Dequote.exit
  tail call fastcc void @sqlite3VdbeMemRelease(ptr noundef nonnull %i.s)
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %.0.i, ptr %i.av, align 8, !tbaa !119
  %i.aw = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store ptr @sqlite3_free, ptr %i.aw, align 8, !tbaa !122
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i32 %.249.i74, ptr %i.ax, align 8, !tbaa !123
  store i16 98, ptr %i.t, align 4, !tbaa !124
  %i.ay = getelementptr inbounds nuw i8, ptr %i.s, i64 39
  store i8 1, ptr %i.ay, align 1, !tbaa !125
  store i8 3, ptr %i.u, align 2, !tbaa !126
  br label %sqlite3ValueSetStr.exit

sqlite3ValueSetStr.exit:                          ; preds = %bb.r, %bb.o
  %i.az = and i8 %i.b, 124
  %or.cond7 = icmp eq i8 %i.az, 124
  %i.ba = icmp eq i8 %3, 98
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
  %5 = zext i32 %i.dk to i64                      ; 3 uses
  %i.dl = tail call i64 @llvm.umax.i64(i64 %5, i64 2)
  %i.dm = add nsw i64 %i.dl, -1
  %i.dn = lshr i64 %i.dm, 1
  %i.do = add nuw nsw i64 %i.dn, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.dk, 127
  br i1 %min.iters.check, label %.lr.ph.i61.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.dp = add nsw i64 %5, -1                      ; 2 uses
  %i.dq = lshr i64 %i.dp, 1
  %i.dr = getelementptr i8, ptr %.0.i32.i, i64 %i.dq
  %scevgep = getelementptr i8, ptr %i.dr, i64 1
  %i.ds = and i64 %i.dp, -2
  %i.dt = getelementptr i8, ptr %i.cz, i64 %i.ds
  %scevgep117 = getelementptr i8, ptr %i.dt, i64 4
  %bound0 = icmp ult ptr %.0.i32.i, %scevgep117
  %bound1 = icmp ult ptr %i.da, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i61.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.do, 9223372036854775792     ; 4 uses
  %i.du = shl nuw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dv = shl i64 %index, 1                       ; 16 uses
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
  %i.fb = load i8, ptr %i.dw, align 1, !tbaa !37, !alias.scope !1638
  %i.fc = load i8, ptr %i.dy, align 1, !tbaa !37, !alias.scope !1638
  %i.fd = load i8, ptr %i.ea, align 1, !tbaa !37, !alias.scope !1638
  %i.fe = load i8, ptr %i.ec, align 1, !tbaa !37, !alias.scope !1638
  %i.ff = load i8, ptr %i.ee, align 1, !tbaa !37, !alias.scope !1638
  %i.fg = load i8, ptr %i.eg, align 1, !tbaa !37, !alias.scope !1638
  %i.fh = load i8, ptr %i.ei, align 1, !tbaa !37, !alias.scope !1638
  %i.fi = load i8, ptr %i.ek, align 1, !tbaa !37, !alias.scope !1638
  %i.fj = load i8, ptr %i.em, align 1, !tbaa !37, !alias.scope !1638
  %i.fk = load i8, ptr %i.eo, align 1, !tbaa !37, !alias.scope !1638
  %i.fl = load i8, ptr %i.eq, align 1, !tbaa !37, !alias.scope !1638
  %i.fm = load i8, ptr %i.es, align 1, !tbaa !37, !alias.scope !1638
  %i.fn = load i8, ptr %i.eu, align 1, !tbaa !37, !alias.scope !1638
  %i.fo = load i8, ptr %i.ew, align 1, !tbaa !37, !alias.scope !1638
  %i.fp = load i8, ptr %i.ey, align 1, !tbaa !37, !alias.scope !1638
  %i.fq = load i8, ptr %i.fa, align 1, !tbaa !37, !alias.scope !1638
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
  %i.hd = load i8, ptr %i.gn, align 1, !tbaa !37, !alias.scope !1638
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
  %i.iq = and i64 %index, 9223372036854775792
  %i.ir = getelementptr inbounds nuw i8, ptr %.0.i32.i, i64 %i.iq
  store <16 x i8> %i.ip, ptr %i.ir, align 1, !tbaa !37, !alias.scope !1641, !noalias !1638
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.is = icmp eq i64 %index.next, %n.vec
  br i1 %i.is, label %middle.block, label %vector.body, !llvm.loop !1643

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.do, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %.lr.ph.i61.preheader

.lr.ph.i61.preheader:                             ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i62.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i ], [ %i.du, %middle.block ]
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
  %6 = icmp samesign ult i64 %indvars.iv.next.i64, %5
  br i1 %6, label %.lr.ph.i61, label %._crit_edge.loopexit.i.loopexit, !llvm.loop !1644

._crit_edge.loopexit.i.loopexit:                  ; preds = %hexToInt.exit20.i
  %i.jm = lshr exact i64 %indvars.iv.next.i64, 1
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.loopexit, %middle.block
  %indvars.iv.next.i64.lcssa = phi i64 [ %n.vec, %middle.block ], [ %i.jm, %._crit_edge.loopexit.i.loopexit ]
  %i.jn = and i64 %indvars.iv.next.i64.lcssa, 2147483647
  br label %bb.at

bb.as:                                            ; preds = %sqlite3DbMallocRaw.exit.i, %bb.al, %bb.aj
  %i.jo = getelementptr inbounds nuw i8, ptr %.0.i7.i9.i55, i64 36 ; 2 uses
  %i.jp = load i16, ptr %i.jo, align 4, !tbaa !124
  %i.jq = and i16 %i.jp, -32
  %i.jr = or disjoint i16 %i.jq, 1
  store i16 %i.jr, ptr %i.jo, align 4, !tbaa !124
  %i.js = getelementptr inbounds nuw i8, ptr %.0.i7.i9.i55, i64 38
  store i8 5, ptr %i.js, align 2, !tbaa !126
  br label %sqlite3ValueApplyAffinity.exit

bb.at:                                            ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.0.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.jn, %._crit_edge.loopexit.i ]
  %i.jt = getelementptr inbounds nuw i8, ptr %.0.i32.i, i64 %.0.lcssa.i
  store i8 0, ptr %i.jt, align 1, !tbaa !37
  %i.ju = icmp ugt i32 %i.cw, 3                   ; 2 uses
  br i1 %i.ju, label %bb.au, label %.preheader63.i

.preheader63.i:                                   ; preds = %bb.at, %.preheader63.i
  %indvars.iv.i69 = phi i64 [ %indvars.iv.next.i70, %.preheader63.i ], [ 0, %bb.at ] ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.0.i32.i, i64 %indvars.iv.i69 ; 2 uses
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !37
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 1
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !37
  %i.jz = or i8 %i.jy, %i.jw
  %.not55.i = icmp eq i8 %i.jz, 0
  %indvars.iv.next.i70 = add nuw nsw i64 %indvars.iv.i69, 2
  br i1 %.not55.i, label %.loopexit.i, label %.preheader63.i, !llvm.loop !174

.loopexit.i:                                      ; preds = %.preheader63.i
  %.249.i = trunc i64 %indvars.iv.i69 to i32
  br label %bb.au

bb.au:                                            ; preds = %.loopexit.i, %bb.at
  %.3.i = phi i32 [ %.249.i, %.loopexit.i ], [ %i.db, %bb.at ] ; 2 uses
  %.046.i = phi i16 [ 112, %.loopexit.i ], [ 80, %bb.at ]
  %i.ka = icmp eq ptr @sqlite3_free, inttoptr (i64 -1 to ptr)
  br i1 %i.ka, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.kb = select i1 %i.ju, i32 0, i32 2
  %.0.i68 = add nsw i32 %.3.i, %i.kb              ; 2 uses
  %i.kc = tail call fastcc i32 @sqlite3VdbeMemGrow(ptr noundef %.0.i7.i9.i55, i32 noundef %.0.i68, i32 noundef 0)
  %.not58.i = icmp eq i32 %i.kc, 0
  br i1 %.not58.i, label %bb.aw, label %sqlite3ValueApplyAffinity.exit

bb.aw:                                            ; preds = %bb.av
  %i.kd = getelementptr inbounds nuw i8, ptr %.0.i7.i9.i55, i64 24
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !119
  %i.kf = sext i32 %.0.i68 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ke, ptr nonnull align 1 %.0.i32.i, i64 %i.kf, i1 false)
  br label %bb.ay

bb.ax:                                            ; preds = %bb.au
  tail call fastcc void @sqlite3VdbeMemRelease(ptr noundef %.0.i7.i9.i55)
  %i.kg = getelementptr inbounds nuw i8, ptr %.0.i7.i9.i55, i64 24
  store ptr %.0.i32.i, ptr %i.kg, align 8, !tbaa !119
  %i.kh = getelementptr inbounds nuw i8, ptr %.0.i7.i9.i55, i64 40
  store ptr @sqlite3_free, ptr %i.kh, align 8, !tbaa !122
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.ki = getelementptr inbounds nuw i8, ptr %.0.i7.i9.i55, i64 32
  store i32 %.3.i, ptr %i.ki, align 8, !tbaa !123
  %i.kj = getelementptr inbounds nuw i8, ptr %.0.i7.i9.i55, i64 36
  store i16 %.046.i, ptr %i.kj, align 4, !tbaa !124
  %i.kk = getelementptr inbounds nuw i8, ptr %.0.i7.i9.i55, i64 39
  store i8 1, ptr %i.kk, align 1, !tbaa !125
  %i.kl = getelementptr inbounds nuw i8, ptr %.0.i7.i9.i55, i64 38
  store i8 4, ptr %i.kl, align 2, !tbaa !126
  br label %sqlite3ValueApplyAffinity.exit

bb.az:                                            ; preds = %bb.g, %bb.f, %sqlite3DbMallocRaw.exit.i.i
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 1, ptr %i.km, align 2, !tbaa !129
  %i.kn = icmp eq ptr %.0.i, null
  br i1 %i.kn, label %sqlite3ValueApplyAffinity.exit, label %sqlite3ValueFree.exit.sink.split

sqlite3_free.exit.i:                              ; preds = %sqlite3ValueNew.exit
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 1, ptr %i.ko, align 2, !tbaa !129
  tail call fastcc void @sqlite3VdbeMemRelease(ptr noundef nonnull %i.s)
  br label %sqlite3ValueFree.exit.sink.split

sqlite3ValueFree.exit.sink.split:                 ; preds = %bb.az, %sqlite3_free.exit.i
  %.0.i.sink = phi ptr [ %i.s, %sqlite3_free.exit.i ], [ %.0.i, %bb.az ]
  %i.kp = getelementptr inbounds i8, ptr %.0.i.sink, i64 -8 ; 2 uses
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !28
  %sext.i = shl i64 %i.kq, 32
  %i.kr = ashr exact i64 %sext.i, 32
  %i.ks = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.kt = sub nsw i64 %i.ks, %i.kr
  store i64 %i.kt, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.kp) #43
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

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.c, align 2, !tbaa !129
  br label %sqlite3DbMallocRaw.exit.thread

sqlite3DbMallocRaw.exit:                          ; preds = %bb.a
  %i.h = tail call ptr @sqlite3_malloc(i32 noundef %i.b) ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %sqlite3DbMallocRaw.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.c, %sqlite3DbMallocRaw.exit
  %.0.i32 = phi ptr [ %i.h, %sqlite3DbMallocRaw.exit ], [ %i.f, %bb.c ] ; 3 uses
  %i.i = icmp sgt i32 %2, 1
  br i1 %i.i, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.j = add nsw i32 %2, -1
  %i.k = sext i32 %i.j to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %hexToInt.exit20
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %hexToInt.exit20 ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !37
  %i.n = sext i8 %i.m to i32                      ; 4 uses
  %i.o = add nsw i32 %i.n, -48                    ; 2 uses
  %or.cond.i = icmp ult i32 %i.o, 10
  br i1 %or.cond.i, label %hexToInt.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.p = add nsw i32 %i.n, -97
  %or.cond3.i = icmp ult i32 %i.p, 6
  br i1 %or.cond3.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.n, -87
  br label %hexToInt.exit

bb.g:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.n, -55
  br label %hexToInt.exit

hexToInt.exit:                                    ; preds = %.lr.ph, %bb.f, %bb.g
  %.0.i16 = phi i32 [ %i.r, %bb.g ], [ %i.q, %bb.f ], [ %i.o, %.lr.ph ]
  %i.s = shl nsw i32 %.0.i16, 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !37
  %i.v = sext i8 %i.u to i32                      ; 4 uses
  %i.w = add nsw i32 %i.v, -48                    ; 2 uses
  %or.cond.i17 = icmp ult i32 %i.w, 10
  br i1 %or.cond.i17, label %hexToInt.exit20, label %bb.h

bb.h:                                             ; preds = %hexToInt.exit
  %i.x = add nsw i32 %i.v, -97
  %or.cond3.i18 = icmp ult i32 %i.x, 6
  br i1 %or.cond3.i18, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = add nsw i32 %i.v, -87
  br label %hexToInt.exit20

bb.j:                                             ; preds = %bb.h
  %i.z = add nsw i32 %i.v, -55
  br label %hexToInt.exit20

hexToInt.exit20:                                  ; preds = %hexToInt.exit, %bb.i, %bb.j
  %.0.i19 = phi i32 [ %i.z, %bb.j ], [ %i.y, %bb.i ], [ %i.w, %hexToInt.exit ]
  %i.aa = or i32 %.0.i19, %i.s
end_hunk_0
begin_hunk_1_@computeYMD_HMS:bb.a
  %i.m = add i32 %i.l, %i.k
  %i.n = add i32 %i.m, %.neg.i                    ; 2 uses
  %i.o = sitofp i32 %i.n to double
  %i.p = fadd double %i.o, -1.221000e+02
  %i.q = fdiv double %i.p, 3.652500e+02
  %i.r = fptosi double %i.q to i32                ; 2 uses
  %i.s = sitofp i32 %i.r to double
  %i.t = fmul nnan double %i.s, 3.652500e+02
  %i.u = fptosi double %i.t to i32
  %i.v = sub nsw i32 %i.n, %i.u                   ; 2 uses
  %i.w = sitofp i32 %i.v to double
  %i.x = fdiv double %i.w, 3.060010e+01
  %i.y = fptosi double %i.x to i32                ; 3 uses
  %i.z = sitofp i32 %i.y to double
  %i.aa = fmul nnan double %i.z, 3.060010e+01
  %i.ab = fptosi double %i.aa to i32
  %i.ac = sub nsw i32 %i.v, %i.ab
  %i.ad = icmp slt i32 %i.y, 14
  %.v.i = select i1 %i.ad, i32 -1, i32 -13
  %i.ae = add nsw i32 %.v.i, %i.y                 ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 2
  %.v29.i = select i1 %i.af, i32 -4716, i32 -4715
  %i.ag = add nsw i32 %.v29.i, %i.r
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink31.i = phi i32 [ %i.ag, %bb.c ], [ 2000, %bb.b ]
  %.sink30.i = phi i32 [ %i.ae, %bb.c ], [ 1, %bb.b ]
  %.sink.i = phi i32 [ %i.ac, %bb.c ], [ 1, %bb.b ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink31.i, ptr %i.ah, align 8, !tbaa !1967
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sink30.i, ptr %i.ai, align 4, !tbaa !1968
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sink.i, ptr %i.aj, align 8, !tbaa !1969
  store i8 1, ptr %i.a, align 8, !tbaa !1959
  br label %computeYMD.exit

computeYMD.exit:                                  ; preds = %bb.a, %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 41 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !1961
  %.not.i2 = icmp eq i8 %i.al, 0
  br i1 %.not.i2, label %bb.e, label %computeHMS.exit

bb.e:                                             ; preds = %computeYMD.exit
  tail call fastcc void @computeJD(ptr noundef nonnull %0)
  %i.am = load double, ptr %0, align 8, !tbaa !1960
  %i.an = fadd double %i.am, 5.000000e-01         ; 2 uses
  %i.ao = fptosi double %i.an to i32
  %i.ap = sitofp i32 %i.ao to double
  %i.aq = fsub double %i.an, %i.ap
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.aq, double 8.640000e+07, double 5.000000e-01)
  %i.as = fptosi double %i.ar to i32
  %i.at = sitofp i32 %i.as to double
  %i.au = fmul nnan double %i.at, 1.000000e-03    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = fptosi double %i.au to i32              ; 3 uses
  %i.ax = sitofp i32 %i.aw to double
  %i.ay = fsub double %i.au, %i.ax
  %i.az = sdiv i32 %i.aw, 3600                    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !1962
  %.neg.i3 = mul nsw i32 %i.az, -3600
  %i.bb = add i32 %.neg.i3, %i.aw                 ; 2 uses
  %i.bc = sdiv i32 %i.bb, 60                      ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !1963
  %.neg19.i = mul nsw i32 %i.bc, -60
  %i.be = add i32 %.neg19.i, %i.bb
  %i.bf = sitofp i32 %i.be to double
  %i.bg = fadd double %i.ay, %i.bf
  store double %i.bg, ptr %i.av, align 8, !tbaa !1964
  store i8 1, ptr %i.ak, align 1, !tbaa !1961
  br label %computeHMS.exit

computeHMS.exit:                                  ; preds = %computeYMD.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @computeYMD(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1959
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.d = load i8, ptr %i.c, align 2, !tbaa !1957
  %.not28 = icmp eq i8 %i.d, 0
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load double, ptr %0, align 8, !tbaa !1960
  %i.f = fadd double %i.e, 5.000000e-01
  %i.g = fptosi double %i.f to i32                ; 2 uses
  %i.h = sitofp i32 %i.g to double
  %i.i = fadd double %i.h, f0xC13C7DD040000000
  %i.j = fdiv double %i.i, f0x40E1D58800000000
  %i.k = fptosi double %i.j to i32                ; 2 uses
  %.neg = sdiv i32 %i.k, -4
  %i.l = add i32 %i.g, 1525
  %i.m = add i32 %i.l, %i.k
  %i.n = add i32 %i.m, %.neg                      ; 2 uses
  %i.o = sitofp i32 %i.n to double
  %i.p = fadd double %i.o, -1.221000e+02
  %i.q = fdiv double %i.p, 3.652500e+02
  %i.r = fptosi double %i.q to i32                ; 2 uses
  %i.s = sitofp i32 %i.r to double
  %i.t = fmul nnan double %i.s, 3.652500e+02
  %i.u = fptosi double %i.t to i32
  %i.v = sub nsw i32 %i.n, %i.u                   ; 2 uses
  %i.w = sitofp i32 %i.v to double
  %i.x = fdiv double %i.w, 3.060010e+01
  %i.y = fptosi double %i.x to i32                ; 3 uses
  %i.z = sitofp i32 %i.y to double
  %i.aa = fmul nnan double %i.z, 3.060010e+01
  %i.ab = fptosi double %i.aa to i32
  %i.ac = sub nsw i32 %i.v, %i.ab
  %i.ad = icmp slt i32 %i.y, 14
  %.v = select i1 %i.ad, i32 -1, i32 -13
  %i.ae = add nsw i32 %.v, %i.y                   ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 2
  %.v29 = select i1 %i.af, i32 -4716, i32 -4715
  %i.ag = add nsw i32 %.v29, %i.r
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink31 = phi i32 [ %i.ag, %bb.c ], [ 2000, %bb.b ]
  %.sink30 = phi i32 [ %i.ae, %bb.c ], [ 1, %bb.b ]
  %.sink = phi i32 [ %i.ac, %bb.c ], [ 1, %bb.b ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink31, ptr %i.ah, align 8, !tbaa !1967
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sink30, ptr %i.ai, align 4, !tbaa !1968
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sink, ptr %i.aj, align 8, !tbaa !1969
  store i8 1, ptr %i.a, align 8, !tbaa !1959
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #32

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #39

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #40

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctpop.i16(i16) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #32

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #32

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.and.v2i64(<2 x i64>) #32

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #33 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nofree nosync nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #40 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #41 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #42 = { nounwind willreturn memory(read) }
attributes #43 = { nounwind }
attributes #44 = { nounwind allocsize(0) }
attributes #45 = { nounwind allocsize(1) }
attributes #46 = { nounwind willreturn memory(none) }
attributes #47 = { "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS11sqlite3_vfs", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !13, i64 24}
!12 = !{!"sqlite3_vfs", !5, i64 0, !5, i64 4, !5, i64 8, !9, i64 16, !13, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128}
!13 = !{!"p1 omnipotent char", !10, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!12, !9, i64 16}
!17 = distinct !{!17, !15}
!18 = !{!19, !21, i64 32}
!19 = !{!"", !20, i64 0, !10, i64 8, !10, i64 16, !5, i64 24, !21, i64 32, !20, i64 40, !20, i64 48}
!20 = !{!"long long", !6, i64 0}
!21 = !{!"p1 _ZTS13sqlite3_mutex", !10, i64 0}
!22 = !{!19, !20, i64 40}
!23 = !{!19, !20, i64 48}
!24 = !{!19, !10, i64 8}
!25 = !{!19, !10, i64 16}
!26 = !{!19, !20, i64 0}
!27 = distinct !{null}
!28 = !{!20, !20, i64 0}
!29 = !{!30, !13, i64 0}
!30 = !{!"StrAccum", !13, i64 0, !13, i64 8, !5, i64 16, !5, i64 20, !6, i64 24, !6, i64 25, !6, i64 26}
!31 = !{!30, !13, i64 8}
!32 = !{!30, !5, i64 16}
!33 = !{!30, !5, i64 20}
!34 = !{!30, !6, i64 25}
!35 = !{!30, !6, i64 26}
!36 = !{!30, !6, i64 24}
!37 = !{!6, !6, i64 0}
!38 = distinct !{!38, !15}
!39 = distinct !{!39, !15}
!40 = distinct !{!40, !15}
!41 = distinct !{!41, !15}
!42 = !{!43, !6, i64 3}
!43 = !{!"et_info", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3, !6, i64 4, !6, i64 5}
!44 = !{!45, !45, i64 0}
!45 = !{!"long", !6, i64 0}
!46 = !{!43, !6, i64 4}
!47 = !{!43, !6, i64 1}
!48 = distinct !{!48, !15}
!49 = !{!43, !6, i64 5}
!50 = distinct !{!50, !15}
!51 = !{!52, !52, i64 0}
!52 = !{!"double", !6, i64 0}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = distinct !{!55, !15}
!56 = distinct !{!56, !15}
!57 = distinct !{!57, !15}
!58 = distinct !{!58, !15}
!59 = distinct !{!59, !15}
!60 = distinct !{!60, !15}
!61 = distinct !{!61, !15}
!62 = distinct !{!62, !15}
!63 = distinct !{!63, !15}
!64 = distinct !{!64, !15, !65, !66}
!65 = !{!"llvm.loop.isvectorized", i32 1}
!66 = !{!"llvm.loop.unroll.runtime.disable"}
!67 = !{!"branch_weights", i32 8, i32 24}
!68 = distinct !{!68, !15, !65, !66}
!69 = distinct !{!69, !15, !65}
!70 = !{!71, !71, i64 0}
!71 = !{!"p1 int", !10, i64 0}
!72 = !{!13, !13, i64 0}
!73 = distinct !{!73, !15}
!74 = distinct !{!74, !15}
!75 = !{!76, !76, i64 0}
!76 = !{!"p1 _ZTS5Token", !10, i64 0}
!77 = !{!78, !13, i64 0}
!78 = !{!"Token", !13, i64 0, !5, i64 8, !5, i64 8}
!79 = !{!80, !80, i64 0}
!80 = !{!"p1 _ZTS7SrcList", !10, i64 0}
!81 = !{!82, !13, i64 0}
!82 = !{!"SrcList_item", !13, i64 0, !13, i64 8, !13, i64 16, !83, i64 24, !84, i64 32, !6, i64 40, !6, i64 41, !5, i64 44, !85, i64 48, !86, i64 56, !20, i64 64}
!83 = !{!"p1 _ZTS5Table", !10, i64 0}
!84 = !{!"p1 _ZTS6Select", !10, i64 0}
!85 = !{!"p1 _ZTS4Expr", !10, i64 0}
!86 = !{!"p1 _ZTS6IdList", !10, i64 0}
!87 = !{!82, !13, i64 8}
!88 = distinct !{!88, !15}
!89 = distinct !{!89, !15}
!90 = !{!91, !13, i64 472}
!91 = !{!"Vdbe", !92, i64 0, !93, i64 8, !93, i64 16, !5, i64 24, !5, i64 28, !94, i64 32, !5, i64 40, !5, i64 44, !71, i64 48, !95, i64 56, !97, i64 64, !5, i64 72, !98, i64 80, !5, i64 88, !97, i64 96, !99, i64 104, !5, i64 112, !5, i64 116, !5, i64 120, !97, i64 128, !5, i64 136, !5, i64 140, !100, i64 144, !5, i64 168, !5, i64 172, !102, i64 176, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !6, i64 204, !5, i64 304, !5, i64 308, !99, i64 312, !13, i64 320, !97, i64 328, !6, i64 336, !6, i64 337, !6, i64 338, !6, i64 339, !6, i64 340, !6, i64 341, !5, i64 344, !20, i64 352, !5, i64 360, !103, i64 368, !5, i64 464, !13, i64 472, !5, i64 480}
!92 = !{!"p1 _ZTS7sqlite3", !10, i64 0}
!93 = !{!"p1 _ZTS4Vdbe", !10, i64 0}
!94 = !{!"p1 _ZTS6VdbeOp", !10, i64 0}
!95 = !{!"p2 _ZTS3Mem", !96, i64 0}
!96 = !{!"any p2 pointer", !10, i64 0}
!97 = !{!"p1 _ZTS3Mem", !10, i64 0}
!98 = !{!"p2 _ZTS6Cursor", !96, i64 0}
!99 = !{!"p2 omnipotent char", !96, i64 0}
!100 = !{!"Fifo", !5, i64 0, !101, i64 8, !101, i64 16}
!101 = !{!"p1 _ZTS8FifoPage", !10, i64 0}
!102 = !{!"p1 _ZTS7Context", !10, i64 0}
!103 = !{!"BtreeMutexArray", !5, i64 0, !6, i64 8}
!104 = !{!91, !6, i64 339}
!105 = !{!91, !5, i64 116}
!106 = !{!91, !92, i64 0}
!107 = !{!91, !5, i64 184}
!108 = !{!91, !13, i64 320}
!109 = !{!110, !97, i64 240}
!110 = !{!"sqlite3", !9, i64 0, !5, i64 8, !111, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !6, i64 40, !6, i64 41, !6, i64 42, !6, i64 43, !5, i64 44, !112, i64 48, !20, i64 56, !20, i64 64, !5, i64 72, !5, i64 76, !5, i64 80, !21, i64 88, !113, i64 96, !5, i64 108, !96, i64 112, !93, i64 120, !5, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !97, i64 240, !13, i64 248, !13, i64 256, !6, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !10, i64 296, !5, i64 304, !114, i64 312, !83, i64 344, !117, i64 352, !5, i64 360, !114, i64 368, !114, i64 400, !118, i64 432, !5, i64 456, !6, i64 464, !6, i64 560}
!111 = !{!"p1 _ZTS2Db", !10, i64 0}
!112 = !{!"p1 _ZTS7CollSeq", !10, i64 0}
!113 = !{!"sqlite3InitInfo", !5, i64 0, !5, i64 4, !6, i64 8}
!114 = !{!"Hash", !6, i64 0, !6, i64 1, !5, i64 4, !5, i64 8, !115, i64 16, !116, i64 24}
!115 = !{!"p1 _ZTS8HashElem", !10, i64 0}
!116 = !{!"p1 _ZTS3_ht", !10, i64 0}
!117 = !{!"p2 _ZTS12sqlite3_vtab", !96, i64 0}
!118 = !{!"BusyHandler", !10, i64 0, !10, i64 8, !5, i64 16}
!119 = !{!120, !13, i64 24}
!120 = !{!"Mem", !6, i64 0, !52, i64 8, !92, i64 16, !13, i64 24, !5, i64 32, !121, i64 36, !6, i64 38, !6, i64 39, !10, i64 40}
!121 = !{!"short", !6, i64 0}
!122 = !{!120, !10, i64 40}
!123 = !{!120, !5, i64 32}
!124 = !{!120, !121, i64 36}
!125 = !{!120, !6, i64 39}
!126 = !{!120, !6, i64 38}
!127 = !{!91, !5, i64 188}
!128 = !{!110, !5, i64 32}
!129 = !{!110, !6, i64 42}
!130 = !{!120, !92, i64 16}
!131 = !{!91, !6, i64 338}
!132 = !{!110, !5, i64 36}
!133 = !{!91, !97, i64 128}
!134 = !{!91, !71, i64 48}
!135 = !{!91, !5, i64 24}
!136 = !{!91, !94, i64 32}
!137 = !{!138, !6, i64 0}
!138 = !{!"VdbeOp", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3, !5, i64 4, !5, i64 8, !5, i64 12, !6, i64 16}
!139 = !{!138, !6, i64 3}
!140 = !{!138, !5, i64 8}
!141 = !{!138, !5, i64 4}
!142 = distinct !{!142, !15}
!143 = distinct !{!143, !15, !65, !66}
!144 = !{!"branch_weights", i32 8, i32 8}
end_hunk_1
