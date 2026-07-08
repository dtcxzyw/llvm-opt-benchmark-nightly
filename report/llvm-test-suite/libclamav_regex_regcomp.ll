inline.NumInlined: 135
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@cli_regcomp:bb.a
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !37
  br label %categorize.exit

bb.t:                                             ; preds = %p_str.exit
  %i.bo = load i64, ptr %i.r, align 8, !tbaa !14  ; 3 uses
  %.not8.i93 = icmp slt i64 %i.bl, %i.bo
  br i1 %.not8.i93, label %doemit.exit97, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bp = add nsw i64 %i.bo, 1
  %i.bq = sdiv i64 %i.bp, 2                       ; 2 uses
  %i.br = mul nsw i64 %i.bq, 3                    ; 2 uses
  %.not.i.i94 = icmp slt i64 %i.bo, %i.br
  br i1 %.not.i.i94, label %bb.v, label %doemit.exit97

bb.v:                                             ; preds = %bb.u
  %i.bs = load ptr, ptr %i.t, align 8, !tbaa !17
  %i.bt = mul i64 %i.bq, 24
  %i.bu = call ptr @cli_realloc(ptr noundef %i.bs, i64 noundef %i.bt) #11 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.bw = load i32, ptr %i.z, align 8, !tbaa !21
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.x, label %seterr.exit.i.i96

bb.x:                                             ; preds = %bb.w
  store i32 12, ptr %i.z, align 8, !tbaa !21
  br label %seterr.exit.i.i96

seterr.exit.i.i96:                                ; preds = %bb.x, %bb.w
  store ptr @nuls, ptr %3, align 8, !tbaa !19
  store ptr @nuls, ptr %i.y, align 8, !tbaa !20
  br label %doemit.exit97

bb.y:                                             ; preds = %bb.v
  store ptr %i.bu, ptr %i.t, align 8, !tbaa !17
  store i64 %i.br, ptr %i.r, align 8, !tbaa !14
  %.val.pr.pre = load i32, ptr %i.z, align 8, !tbaa !21
  %i.by = icmp eq i32 %.val.pr.pre, 0
  br label %doemit.exit97

doemit.exit97:                                    ; preds = %bb.t, %bb.u, %seterr.exit.i.i96, %bb.y
  %.val.pr = phi i1 [ true, %bb.t ], [ true, %bb.u ], [ false, %seterr.exit.i.i96 ], [ %i.by, %bb.y ]
  %i.bz = load ptr, ptr %i.t, align 8, !tbaa !17
  %i.ca = load i64, ptr %i.u, align 8, !tbaa !31  ; 2 uses
  %i.cb = add nsw i64 %i.ca, 1
  store i64 %i.cb, ptr %i.u, align 8, !tbaa !31
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.ca
  store i64 134217728, ptr %i.cc, align 8, !tbaa !32
  %i.cd = load i64, ptr %i.u, align 8, !tbaa !31  ; 2 uses
  %i.ce = add nsw i64 %i.cd, -1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !37
  %i.cg = load ptr, ptr %i.an, align 8, !tbaa !29 ; 2 uses
  br i1 %.val.pr, label %.preheader.i, label %categorize.exit

.preheader.i:                                     ; preds = %doemit.exit97, %isinsets.exit.thread.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %isinsets.exit.thread.i ], [ -128, %doemit.exit97 ] ; 5 uses
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 %indvars.iv.i ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !34
  %i.cj = icmp eq i8 %i.ci, 0
  br i1 %i.cj, label %bb.z, label %isinsets.exit.thread.i

bb.z:                                             ; preds = %.preheader.i
  %i.ck = load i32, ptr %i.ae, align 4, !tbaa !38 ; 2 uses
  %i.cl = and i64 %indvars.iv.i, 255              ; 2 uses
  %i.cm = icmp sgt i32 %i.ck, 0
  br i1 %i.cm, label %.lr.ph.i.i, label %isinsets.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.z
  %i.cn = add nuw nsw i32 %i.ck, 7
  %i.co = lshr i32 %i.cn, 3
  %i.cp = load ptr, ptr %i.ad, align 8, !tbaa !39
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %.lr.ph.i.i
  %.01013.i.i = phi ptr [ %i.cp, %.lr.ph.i.i ], [ %i.cv, %bb.ab ] ; 2 uses
  %.01112.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.cs, %bb.ab ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.01013.i.i, i64 %i.cl
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !34
  %.not.i.i99 = icmp eq i8 %i.cr, 0
  br i1 %.not.i.i99, label %bb.ab, label %isinsets.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.cs = add nuw nsw i32 %.01112.i.i, 1          ; 2 uses
  %i.ct = load i32, ptr %i.ac, align 8, !tbaa !23
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds i8, ptr %.01013.i.i, i64 %i.cu
  %exitcond.not.i.i = icmp eq i32 %i.cs, %i.co
  br i1 %exitcond.not.i.i, label %isinsets.exit.thread.i, label %bb.aa, !llvm.loop !40

isinsets.exit.i:                                  ; preds = %bb.aa
  %i.cw = load i32, ptr %i.ak, align 4, !tbaa !41 ; 2 uses
  %i.cx = add nsw i32 %i.cw, 1
  store i32 %i.cx, ptr %i.ak, align 4, !tbaa !41
  %i.cy = trunc i32 %i.cw to i8                   ; 2 uses
  store i8 %i.cy, ptr %i.ch, align 1, !tbaa !34
  %i.cz = icmp slt i64 %indvars.iv.i, 127
  br i1 %i.cz, label %.lr.ph.i100, label %isinsets.exit.thread.i

.lr.ph.i100:                                      ; preds = %isinsets.exit.i, %samesets.exit.i
  %indvars.iv11.i = phi i64 [ %indvars.iv.next12.i, %samesets.exit.i ], [ %indvars.iv.i, %isinsets.exit.i ]
  %indvars.iv.next12.i = add nsw i64 %indvars.iv11.i, 1 ; 4 uses
  %i.da = getelementptr inbounds i8, ptr %i.cg, i64 %indvars.iv.next12.i ; 2 uses
  %i.db = load i8, ptr %i.da, align 1, !tbaa !34
  %i.dc = icmp eq i8 %i.db, 0
  br i1 %i.dc, label %bb.ac, label %samesets.exit.i

bb.ac:                                            ; preds = %.lr.ph.i100
  %i.dd = load i32, ptr %i.ae, align 4, !tbaa !38 ; 2 uses
  %i.de = icmp sgt i32 %i.dd, 0
  br i1 %i.de, label %.lr.ph.i26.i, label %.loopexit.i

.lr.ph.i26.i:                                     ; preds = %bb.ac
  %i.df = add nuw nsw i32 %i.dd, 7
  %i.dg = lshr i32 %i.df, 3
  %i.dh = load ptr, ptr %i.ad, align 8, !tbaa !39
  %i.di = and i64 %indvars.iv.next12.i, 255
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ae, %.lr.ph.i26.i
  %.01316.i.i = phi ptr [ %i.dh, %.lr.ph.i26.i ], [ %i.dq, %bb.ae ] ; 3 uses
  %.01415.i.i = phi i32 [ 0, %.lr.ph.i26.i ], [ %i.dn, %bb.ae ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.01316.i.i, i64 %i.cl
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !34
  %i.dl = getelementptr inbounds nuw i8, ptr %.01316.i.i, i64 %i.di
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !34
  %.not.i27.i = icmp eq i8 %i.dk, %i.dm
  br i1 %.not.i27.i, label %bb.ae, label %samesets.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.dn = add nuw nsw i32 %.01415.i.i, 1          ; 2 uses
  %i.do = load i32, ptr %i.ac, align 8, !tbaa !23
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds i8, ptr %.01316.i.i, i64 %i.dp
  %exitcond.not.i28.i = icmp eq i32 %i.dn, %i.dg
  br i1 %exitcond.not.i28.i, label %.loopexit.i, label %bb.ad, !llvm.loop !42

.loopexit.i:                                      ; preds = %bb.ae, %bb.ac
  store i8 %i.cy, ptr %i.da, align 1, !tbaa !34
  br label %samesets.exit.i

samesets.exit.i:                                  ; preds = %bb.ad, %.loopexit.i, %.lr.ph.i100
  %exitcond.not.i = icmp eq i64 %indvars.iv.next12.i, 127
  br i1 %exitcond.not.i, label %isinsets.exit.thread.i, label %.lr.ph.i100, !llvm.loop !43

isinsets.exit.thread.i:                           ; preds = %bb.ab, %samesets.exit.i, %isinsets.exit.i, %bb.z, %.preheader.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond15.not.i = icmp eq i64 %indvars.iv.next.i, 128
  br i1 %exitcond15.not.i, label %categorize.exit.loopexit, label %.preheader.i, !llvm.loop !44

categorize.exit.loopexit:                         ; preds = %isinsets.exit.thread.i
  %.pre = load i64, ptr %i.u, align 8, !tbaa !31
  br label %categorize.exit

categorize.exit:                                  ; preds = %categorize.exit.loopexit, %doemit.exit97.thread, %doemit.exit97
  %i.dr = phi i64 [ %.pre, %categorize.exit.loopexit ], [ %i.bl, %doemit.exit97.thread ], [ %i.cd, %doemit.exit97 ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !45
  %i.dt = load ptr, ptr %i.t, align 8, !tbaa !17
  %i.du = shl i64 %i.dr, 3
  %i.dv = call ptr @cli_realloc(ptr noundef %i.dt, i64 noundef %i.du) #11 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !46
  %i.dx = icmp eq ptr %i.dv, null
  %.val90.pre = load i32, ptr %i.z, align 8, !tbaa !21 ; 3 uses
  %i.dy = icmp eq i32 %.val90.pre, 0              ; 2 uses
  br i1 %i.dx, label %bb.af, label %stripsnug.exit

bb.af:                                            ; preds = %categorize.exit
  br i1 %i.dy, label %bb.ag, label %stripsnug.exit.thread

bb.ag:                                            ; preds = %bb.af
  store i32 12, ptr %i.z, align 8, !tbaa !21
  br label %stripsnug.exit.thread

stripsnug.exit.thread:                            ; preds = %bb.af, %bb.ag
  %.val90132 = phi i32 [ 12, %bb.ag ], [ %.val90.pre, %bb.af ]
  store ptr @nuls, ptr %3, align 8, !tbaa !19
  store ptr @nuls, ptr %i.y, align 8, !tbaa !20
  %i.dz = load ptr, ptr %i.t, align 8, !tbaa !17
  store ptr %i.dz, ptr %i.dw, align 8, !tbaa !46
  br label %pluscount.exit

stripsnug.exit:                                   ; preds = %categorize.exit
  br i1 %i.dy, label %bb.ah, label %pluscount.exit

bb.ah:                                            ; preds = %stripsnug.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.an, %bb.ah
  %.046.i = phi ptr [ %i.ea, %bb.ah ], [ %.3.i, %bb.an ] ; 4 uses
  %.043.i = phi ptr [ undef, %bb.ah ], [ %.245.i, %bb.an ] ; 5 uses
  %.040.i = phi ptr [ undef, %bb.ah ], [ %.242.i, %bb.an ] ; 7 uses
  %.038.i = phi i64 [ 0, %bb.ah ], [ %.139.i, %bb.an ] ; 7 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.046.i, i64 8 ; 5 uses
  %i.ec = load i64, ptr %.046.i, align 8, !tbaa !32 ; 7 uses
  %4 = and i64 %i.ec, 4160749568
  %5 = add nsw i64 %4, -268435456
  %6 = lshr exact i64 %5, 27
  switch i64 %6, label %.loopexit.i102 [
    i64 0, label %bb.aj
    i64 7, label %bb.an
    i64 11, label %bb.an
    i64 12, label %bb.an
    i64 9, label %.preheader
    i64 13, label %.preheader
  ]

.preheader:                                       ; preds = %bb.ai, %bb.ai
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ed = icmp eq i64 %.038.i, 0
  %spec.select.i = select i1 %i.ed, ptr %.046.i, ptr %.040.i
  %i.ee = add nsw i64 %.038.i, 1
  br label %bb.an

bb.ak:                                            ; preds = %.preheader, %bb.ak
  %.147.i = phi ptr [ %i.eg, %bb.ak ], [ %.046.i, %.preheader ]
  %.037.i = phi i64 [ %i.eh, %bb.ak ], [ %i.ec, %.preheader ]
  %i.ef = and i64 %.037.i, 134217727
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %.147.i, i64 %i.ef ; 4 uses
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !32 ; 4 uses
  %i.ei = trunc i64 %i.eh to i32
  %trunc.i = and i32 %i.ei, -134217728
  switch i32 %trunc.i, label %bb.al [
    i32 -1879048192, label %.loopexit.i102
    i32 1610612736, label %.loopexit.i102
    i32 -2013265920, label %bb.ak
  ]

bb.al:                                            ; preds = %bb.ak
  %i.ej = load i32, ptr %i.ag, align 8, !tbaa !47
  %i.ek = or i32 %i.ej, 4
  store i32 %i.ek, ptr %i.ag, align 8, !tbaa !47
  br label %findmust.exit

.loopexit.i102:                                   ; preds = %bb.ak, %bb.ak, %bb.ai
  %.248.i = phi ptr [ %i.eb, %bb.ai ], [ %i.eg, %bb.ak ], [ %i.eg, %bb.ak ] ; 2 uses
  %.1.i = phi i64 [ %i.ec, %bb.ai ], [ %i.eh, %bb.ak ], [ %i.eh, %bb.ak ] ; 2 uses
  %i.el = load i32, ptr %i.ai, align 8, !tbaa !27
  %i.em = sext i32 %i.el to i64
  %i.en = icmp sgt i64 %.038.i, %i.em
  br i1 %i.en, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.loopexit.i102
  %i.eo = trunc i64 %.038.i to i32
  store i32 %i.eo, ptr %i.ai, align 8, !tbaa !27
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.loopexit.i102, %bb.aj, %bb.ai, %bb.ai, %bb.ai
  %.3.i = phi ptr [ %i.eb, %bb.ai ], [ %i.eb, %bb.aj ], [ %i.eb, %bb.ai ], [ %i.eb, %bb.ai ], [ %.248.i, %bb.am ], [ %.248.i, %.loopexit.i102 ]
  %.245.i = phi ptr [ %.043.i, %bb.ai ], [ %.043.i, %bb.aj ], [ %.043.i, %bb.ai ], [ %.043.i, %bb.ai ], [ %.040.i, %bb.am ], [ %.043.i, %.loopexit.i102 ] ; 3 uses
  %.242.i = phi ptr [ %.040.i, %bb.ai ], [ %spec.select.i, %bb.aj ], [ %.040.i, %bb.ai ], [ %.040.i, %bb.ai ], [ %.040.i, %bb.am ], [ %.040.i, %.loopexit.i102 ]
  %.139.i = phi i64 [ %.038.i, %bb.ai ], [ %i.ee, %bb.aj ], [ %.038.i, %bb.ai ], [ %.038.i, %bb.ai ], [ 0, %bb.am ], [ 0, %.loopexit.i102 ]
  %.2.i = phi i64 [ %i.ec, %bb.ai ], [ %i.ec, %bb.aj ], [ %i.ec, %bb.ai ], [ %i.ec, %bb.ai ], [ %.1.i, %bb.am ], [ %.1.i, %.loopexit.i102 ]
  %i.ep = and i64 %.2.i, 4160749568
  %.not54.i = icmp eq i64 %i.ep, 134217728
  br i1 %.not54.i, label %bb.ao, label %bb.ai, !llvm.loop !48

bb.ao:                                            ; preds = %bb.an
  %i.eq = load i32, ptr %i.ai, align 8, !tbaa !27 ; 2 uses
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %findmust.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.es = sext i32 %i.eq to i64
  %i.et = add nsw i64 %i.es, 1
  %i.eu = call ptr @cli_malloc(i64 noundef %i.et) #11 ; 6 uses
  store ptr %i.eu, ptr %i.ah, align 8, !tbaa !26
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.ai, align 8, !tbaa !27
  br label %findmust.exit

bb.ar:                                            ; preds = %bb.ap
  %i.ew = load i32, ptr %i.ai, align 8, !tbaa !27 ; 3 uses
  %i.ex = icmp sgt i32 %i.ew, 0
  br i1 %i.ex, label %.preheader.preheader.i, label %._crit_edge.i

.preheader.preheader.i:                           ; preds = %bb.ar
  %i.ey = zext nneg i32 %i.ew to i64              ; 3 uses
  %xtraiter = and i64 %i.ey, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i103.prol.loopexit, label %.preheader.i103.prol

.preheader.i103.prol:                             ; preds = %.preheader.preheader.i, %.preheader.i103.prol
  %.5.i.prol = phi ptr [ %i.ez, %.preheader.i103.prol ], [ %.245.i, %.preheader.preheader.i ] ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.5.i.prol, i64 8 ; 2 uses
  %i.fa = load i64, ptr %.5.i.prol, align 8, !tbaa !32 ; 2 uses
  %i.fb = and i64 %i.fa, 4160749568
  %.not55.i.prol = icmp eq i64 %i.fb, 268435456
  br i1 %.not55.i.prol, label %.preheader.i103.prol.loopexit.unr-lcssa, label %.preheader.i103.prol, !llvm.loop !49

.preheader.i103.prol.loopexit.unr-lcssa:          ; preds = %.preheader.i103.prol
  %i.fc = trunc i64 %i.fa to i8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eu, i64 1 ; 2 uses
  store i8 %i.fc, ptr %i.eu, align 1, !tbaa !34
  %i.fe = add nsw i64 %i.ey, -1
  br label %.preheader.i103.prol.loopexit

.preheader.i103.prol.loopexit:                    ; preds = %.preheader.i103.prol.loopexit.unr-lcssa, %.preheader.preheader.i
  %.08.i.unr = phi i64 [ %i.ey, %.preheader.preheader.i ], [ %i.fe, %.preheader.i103.prol.loopexit.unr-lcssa ]
  %.0367.i.unr = phi ptr [ %i.eu, %.preheader.preheader.i ], [ %i.fd, %.preheader.i103.prol.loopexit.unr-lcssa ]
  %.46.i.unr = phi ptr [ %.245.i, %.preheader.preheader.i ], [ %i.ez, %.preheader.i103.prol.loopexit.unr-lcssa ]
  %.lcssa171.unr = phi ptr [ poison, %.preheader.preheader.i ], [ %i.fd, %.preheader.i103.prol.loopexit.unr-lcssa ]
  %i.ff = icmp eq i32 %i.ew, 1
  br i1 %i.ff, label %._crit_edge.i, label %.preheader.i103

.preheader.i103:                                  ; preds = %.preheader.i103.prol.loopexit, %bb.au
  %.08.i = phi i64 [ %i.fq, %bb.au ], [ %.08.i.unr, %.preheader.i103.prol.loopexit ] ; 2 uses
  %.0367.i = phi ptr [ %i.fp, %bb.au ], [ %.0367.i.unr, %.preheader.i103.prol.loopexit ] ; 3 uses
  %.46.i = phi ptr [ %i.fl, %bb.au ], [ %.46.i.unr, %.preheader.i103.prol.loopexit ]
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %.preheader.i103
  %.5.i = phi ptr [ %i.fg, %bb.as ], [ %.46.i, %.preheader.i103 ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.5.i, i64 8 ; 2 uses
  %i.fh = load i64, ptr %.5.i, align 8, !tbaa !32 ; 2 uses
  %i.fi = and i64 %i.fh, 4160749568
  %.not55.i = icmp eq i64 %i.fi, 268435456
  br i1 %.not55.i, label %.preheader.i103.1, label %bb.as, !llvm.loop !49

.preheader.i103.1:                                ; preds = %bb.as
  %i.fj = trunc i64 %i.fh to i8
  %i.fk = getelementptr inbounds nuw i8, ptr %.0367.i, i64 1
  store i8 %i.fj, ptr %.0367.i, align 1, !tbaa !34
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %.preheader.i103.1
  %.5.i.1 = phi ptr [ %i.fl, %bb.at ], [ %i.fg, %.preheader.i103.1 ] ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.5.i.1, i64 8 ; 2 uses
  %i.fm = load i64, ptr %.5.i.1, align 8, !tbaa !32 ; 2 uses
  %i.fn = and i64 %i.fm, 4160749568
  %.not55.i.1 = icmp eq i64 %i.fn, 268435456
  br i1 %.not55.i.1, label %bb.au, label %bb.at, !llvm.loop !49

bb.au:                                            ; preds = %bb.at
  %i.fo = trunc i64 %i.fm to i8
  %i.fp = getelementptr inbounds nuw i8, ptr %.0367.i, i64 2 ; 2 uses
  store i8 %i.fo, ptr %i.fk, align 1, !tbaa !34
  %i.fq = add nsw i64 %.08.i, -2
  %i.fr = icmp sgt i64 %.08.i, 2
  br i1 %i.fr, label %.preheader.i103, label %._crit_edge.i, !llvm.loop !50

._crit_edge.i:                                    ; preds = %.preheader.i103.prol.loopexit, %bb.au, %bb.ar
  %.036.lcssa.i = phi ptr [ %i.eu, %bb.ar ], [ %.lcssa171.unr, %.preheader.i103.prol.loopexit ], [ %i.fp, %bb.au ]
  store i8 0, ptr %.036.lcssa.i, align 1, !tbaa !34
  br label %findmust.exit

findmust.exit:                                    ; preds = %bb.al, %bb.ao, %bb.aq, %._crit_edge.i
  %.val91.pr = load i32, ptr %i.z, align 8, !tbaa !21 ; 2 uses
  %.not.i104 = icmp eq i32 %.val91.pr, 0
  br i1 %.not.i104, label %bb.av, label %pluscount.exit

bb.av:                                            ; preds = %findmust.exit
  %i.fs = load ptr, ptr %i.dw, align 8, !tbaa !46
  br label %bb.aw

bb.aw:                                            ; preds = %bb.az, %bb.av
  %.pn.i = phi ptr [ %i.fs, %bb.av ], [ %.016.i, %bb.az ]
  %.013.i = phi i64 [ 0, %bb.av ], [ %.114.i, %bb.az ] ; 4 uses
  %.0.i = phi i64 [ 0, %bb.av ], [ %.2.i107, %bb.az ] ; 3 uses
  %.016.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 2 uses
  %i.ft = load i64, ptr %.016.i, align 8, !tbaa !32
  %i.fu = and i64 %i.ft, 4160749568               ; 2 uses
  %trunc.i105 = trunc nuw i64 %i.fu to i32
  switch i32 %trunc.i105, label %bb.az [
    i32 1207959552, label %bb.ax
    i32 1342177280, label %bb.ay
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.fv = add nsw i64 %.013.i, 1
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %spec.select.i106 = call i64 @llvm.smax.i64(i64 %.013.i, i64 %.0.i)
  %i.fw = add nsw i64 %.013.i, -1
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw
  %.114.i = phi i64 [ %.013.i, %bb.aw ], [ %i.fv, %bb.ax ], [ %i.fw, %bb.ay ] ; 2 uses
  %.2.i107 = phi i64 [ %.0.i, %bb.aw ], [ %.0.i, %bb.ax ], [ %spec.select.i106, %bb.ay ] ; 3 uses
  %.not17.i = icmp eq i64 %i.fu, 134217728
  br i1 %.not17.i, label %bb.ba, label %bb.aw, !llvm.loop !51

bb.ba:                                            ; preds = %bb.az
  %.not18.i = icmp eq i64 %.114.i, 0
  br i1 %.not18.i, label %pluscount.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fx = load i32, ptr %i.ag, align 8, !tbaa !47
  %i.fy = or i32 %i.fx, 4
  store i32 %i.fy, ptr %i.ag, align 8, !tbaa !47
  br label %pluscount.exit

pluscount.exit:                                   ; preds = %stripsnug.exit.thread, %stripsnug.exit, %findmust.exit, %bb.ba, %bb.bb
  %i.fz = phi i32 [ %.val91.pr, %findmust.exit ], [ 0, %bb.bb ], [ 0, %bb.ba ], [ %.val90.pre, %stripsnug.exit ], [ %.val90132, %stripsnug.exit.thread ] ; 2 uses
  %.not.i104112 = phi i1 [ false, %findmust.exit ], [ true, %bb.bb ], [ true, %bb.ba ], [ false, %stripsnug.exit ], [ false, %stripsnug.exit.thread ]
  %.015.i = phi i64 [ 0, %findmust.exit ], [ %.2.i107, %bb.bb ], [ %.2.i107, %bb.ba ], [ 0, %stripsnug.exit ], [ 0, %stripsnug.exit.thread ]
  %i.ga = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  store i64 %.015.i, ptr %i.ga, align 8, !tbaa !52
  store i32 53829, ptr %i.m, align 8, !tbaa !53
end_hunk_0
