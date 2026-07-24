inline.NumInlined: 141
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@llvh_regcomp:bb.a
  store ptr null, ptr %i.ah, align 8, !tbaa !25
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 104 ; 5 uses
  store i32 0, ptr %i.ai, align 8, !tbaa !26
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 112 ; 2 uses
  store i64 0, ptr %i.aj, align 8, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 84 ; 2 uses
  store <4 x i32> <i32 0, i32 0, i32 0, i32 1>, ptr %i.ag, align 8, !tbaa !3
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 264
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 88 ; 2 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.al, i8 0, i64 256, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 120
  store i32 0, ptr %i.ao, align 8, !tbaa !29
  %.not8.i = icmp ult i64 %i.p, 9223372036854775807
  br i1 %.not8.i, label %doemit.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = add i64 %i.p, 2
  %i.aq = sdiv i64 %i.ap, 2                       ; 2 uses
  %i.ar = mul nsw i64 %i.aq, 3                    ; 2 uses
  %.not.i.i = icmp slt i64 %i.q, %i.ar
  br i1 %.not.i.i, label %bb.k, label %doemit.exit

bb.k:                                             ; preds = %bb.j
  %i.as = icmp ugt i64 %i.ar, 2305843009213693951
  br i1 %i.as, label %seterr.exit.i.i, label %bb.l

seterr.exit.i.i:                                  ; preds = %bb.k
  store i32 12, ptr %i.z, align 8, !tbaa !20
  store ptr @nuls, ptr %3, align 8, !tbaa !18
  store ptr @nuls, ptr %i.y, align 8, !tbaa !19
  br label %doemit.exit

bb.l:                                             ; preds = %bb.k
  %i.at = mul i64 %i.aq, 24
  %i.au = tail call ptr @realloc(ptr noundef nonnull %i.s, i64 noundef %i.at) #20 ; 3 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %seterr.exit12.i.i, label %bb.m

seterr.exit12.i.i:                                ; preds = %bb.l
  store i32 12, ptr %i.z, align 8, !tbaa !20
  store ptr @nuls, ptr %3, align 8, !tbaa !18
  store ptr @nuls, ptr %i.y, align 8, !tbaa !19
  br label %doemit.exit

bb.m:                                             ; preds = %bb.l
  store ptr %i.au, ptr %i.t, align 8, !tbaa !16
  store i64 0, ptr %i.r, align 8, !tbaa !13
  br label %doemit.exit

doemit.exit:                                      ; preds = %bb.i, %bb.j, %seterr.exit.i.i, %seterr.exit12.i.i, %bb.m
  %i.aw = phi i1 [ true, %bb.i ], [ true, %bb.j ], [ false, %seterr.exit.i.i ], [ false, %seterr.exit12.i.i ], [ true, %bb.m ]
  %i.ax = phi ptr [ %i.x, %bb.i ], [ %i.x, %bb.j ], [ @nuls, %seterr.exit.i.i ], [ @nuls, %seterr.exit12.i.i ], [ %i.x, %bb.m ]
  %i.ay = phi ptr [ %1, %bb.i ], [ %1, %bb.j ], [ @nuls, %seterr.exit.i.i ], [ @nuls, %seterr.exit12.i.i ], [ %1, %bb.m ] ; 2 uses
  %i.az = phi ptr [ %i.s, %bb.i ], [ %i.s, %bb.j ], [ %i.s, %seterr.exit.i.i ], [ %i.s, %seterr.exit12.i.i ], [ %i.au, %bb.m ]
  store i64 1, ptr %i.u, align 8, !tbaa !30
  store i64 134217728, ptr %i.az, align 8, !tbaa !31
  %i.ba = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store i64 0, ptr %i.ba, align 8, !tbaa !32
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %doemit.exit
  call fastcc void @p_ere(ptr noundef %3, i32 noundef 128)
  br label %p_str.exit

bb.o:                                             ; preds = %doemit.exit
  br i1 %.not85, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = icmp ult ptr %i.ay, %i.ax
  br i1 %i.bb, label %.lr.ph.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %i.aw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 14, ptr %i.z, align 8, !tbaa !20
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  store ptr @nuls, ptr %3, align 8, !tbaa !18
  store ptr @nuls, ptr %i.y, align 8, !tbaa !19
  br label %p_str.exit

.lr.ph.i:                                         ; preds = %bb.p, %.lr.ph.i
  %i.bc = phi ptr [ %i.bg, %.lr.ph.i ], [ %i.ay, %bb.p ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  store ptr %i.bd, ptr %3, align 8, !tbaa !18
  %i.be = load i8, ptr %i.bc, align 1, !tbaa !33
  %i.bf = sext i8 %i.be to i32
  call fastcc void @ordinary(ptr noundef nonnull %3, i32 noundef %i.bf)
  %i.bg = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.bh = load ptr, ptr %i.y, align 8, !tbaa !19
  %i.bi = icmp ult ptr %i.bg, %i.bh
  br i1 %i.bi, label %.lr.ph.i, label %p_str.exit, !llvm.loop !34

bb.t:                                             ; preds = %bb.o
  call fastcc void @p_bre(ptr noundef %3, i32 noundef 128, i32 noundef 128)
  br label %p_str.exit

p_str.exit:                                       ; preds = %.lr.ph.i, %bb.s, %bb.t, %bb.n
  %i.bj = load i32, ptr %i.z, align 8, !tbaa !20
  %.not.i92 = icmp eq i32 %i.bj, 0
  %i.bk = load i64, ptr %i.u, align 8, !tbaa !30  ; 4 uses
  br i1 %.not.i92, label %bb.u, label %doemit.exit98.thread

doemit.exit98.thread:                             ; preds = %p_str.exit
  %i.bl = add nsw i64 %i.bk, -1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !36
  br label %categorize.exit

bb.u:                                             ; preds = %p_str.exit
  %i.bn = load i64, ptr %i.r, align 8, !tbaa !13  ; 3 uses
  %.not8.i93 = icmp slt i64 %i.bk, %i.bn
  br i1 %.not8.i93, label %doemit.exit98thread-pre-split, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bo = add nsw i64 %i.bn, 1
  %i.bp = sdiv i64 %i.bo, 2                       ; 2 uses
  %i.bq = mul nsw i64 %i.bp, 3                    ; 3 uses
  %.not.i.i94 = icmp slt i64 %i.bn, %i.bq
  br i1 %.not.i.i94, label %bb.w, label %doemit.exit98thread-pre-split

bb.w:                                             ; preds = %bb.v
  %i.br = icmp ugt i64 %i.bq, 2305843009213693951
  br i1 %i.br, label %seterr.exit.i.i97, label %bb.x

seterr.exit.i.i97:                                ; preds = %bb.w
  store i32 12, ptr %i.z, align 8, !tbaa !20
  store ptr @nuls, ptr %3, align 8, !tbaa !18
  store ptr @nuls, ptr %i.y, align 8, !tbaa !19
  br label %doemit.exit98

bb.x:                                             ; preds = %bb.w
  %i.bs = load ptr, ptr %i.t, align 8, !tbaa !16
  %i.bt = mul i64 %i.bp, 24
  %i.bu = call ptr @realloc(ptr noundef %i.bs, i64 noundef %i.bt) #20 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.bw = load i32, ptr %i.z, align 8, !tbaa !20
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.z, label %seterr.exit12.i.i96

bb.z:                                             ; preds = %bb.y
  store i32 12, ptr %i.z, align 8, !tbaa !20
  br label %seterr.exit12.i.i96

seterr.exit12.i.i96:                              ; preds = %bb.z, %bb.y
  store ptr @nuls, ptr %3, align 8, !tbaa !18
  store ptr @nuls, ptr %i.y, align 8, !tbaa !19
  br label %doemit.exit98thread-pre-split

bb.aa:                                            ; preds = %bb.x
  store ptr %i.bu, ptr %i.t, align 8, !tbaa !16
  store i64 %i.bq, ptr %i.r, align 8, !tbaa !13
  %.val.pr.pr.pre = load i32, ptr %i.z, align 8, !tbaa !20
  %i.by = icmp eq i32 %.val.pr.pr.pre, 0
  br label %doemit.exit98thread-pre-split

doemit.exit98thread-pre-split:                    ; preds = %bb.aa, %seterr.exit12.i.i96, %bb.v, %bb.u
  %.val.pr.pr = phi i1 [ %i.by, %bb.aa ], [ false, %seterr.exit12.i.i96 ], [ true, %bb.v ], [ true, %bb.u ]
  %.pre = load i64, ptr %i.u, align 8, !tbaa !30
  br label %doemit.exit98

doemit.exit98:                                    ; preds = %doemit.exit98thread-pre-split, %seterr.exit.i.i97
  %i.bz = phi i64 [ %.pre, %doemit.exit98thread-pre-split ], [ %i.bk, %seterr.exit.i.i97 ] ; 2 uses
  %.val.pr = phi i1 [ %.val.pr.pr, %doemit.exit98thread-pre-split ], [ false, %seterr.exit.i.i97 ]
  %i.ca = load ptr, ptr %i.t, align 8, !tbaa !16
  %i.cb = add nsw i64 %i.bz, 1
  store i64 %i.cb, ptr %i.u, align 8, !tbaa !30
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.bz
  store i64 134217728, ptr %i.cc, align 8, !tbaa !31
  %i.cd = load i64, ptr %i.u, align 8, !tbaa !30  ; 2 uses
  %i.ce = add nsw i64 %i.cd, -1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !36
  %i.cg = load ptr, ptr %i.an, align 8, !tbaa !28 ; 2 uses
  br i1 %.val.pr, label %.preheader.i, label %categorize.exit

.preheader.i:                                     ; preds = %doemit.exit98, %isinsets.exit.thread.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %isinsets.exit.thread.i ], [ -128, %doemit.exit98 ] ; 5 uses
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 %indvars.iv.i ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !33
  %i.cj = icmp eq i8 %i.ci, 0
  br i1 %i.cj, label %bb.ab, label %isinsets.exit.thread.i

bb.ab:                                            ; preds = %.preheader.i
  %i.ck = load i32, ptr %i.ae, align 4, !tbaa !37 ; 2 uses
  %i.cl = and i64 %indvars.iv.i, 255              ; 2 uses
  %i.cm = icmp sgt i32 %i.ck, 0
  br i1 %i.cm, label %.lr.ph.i.i, label %isinsets.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.ab
  %i.cn = add nuw nsw i32 %i.ck, 7
  %i.co = lshr i32 %i.cn, 3
  %i.cp = load ptr, ptr %i.ad, align 8, !tbaa !38
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ad, %.lr.ph.i.i
  %.01013.i.i = phi ptr [ %i.cp, %.lr.ph.i.i ], [ %i.cv, %bb.ad ] ; 2 uses
  %.01112.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.cs, %bb.ad ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.01013.i.i, i64 %i.cl
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !33
  %.not.i.i100 = icmp eq i8 %i.cr, 0
  br i1 %.not.i.i100, label %bb.ad, label %isinsets.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.cs = add nuw nsw i32 %.01112.i.i, 1          ; 2 uses
  %i.ct = load i32, ptr %i.ac, align 8, !tbaa !22
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds i8, ptr %.01013.i.i, i64 %i.cu
  %exitcond.not.i.i = icmp eq i32 %i.cs, %i.co
  br i1 %exitcond.not.i.i, label %isinsets.exit.thread.i, label %bb.ac, !llvm.loop !39

isinsets.exit.i:                                  ; preds = %bb.ac
  %i.cw = load i32, ptr %i.ak, align 4, !tbaa !40 ; 2 uses
  %i.cx = add nsw i32 %i.cw, 1
  store i32 %i.cx, ptr %i.ak, align 4, !tbaa !40
  %i.cy = trunc i32 %i.cw to i8                   ; 2 uses
  store i8 %i.cy, ptr %i.ch, align 1, !tbaa !33
  %i.cz = icmp slt i64 %indvars.iv.i, 127
  br i1 %i.cz, label %.lr.ph.i101, label %isinsets.exit.thread.i

.lr.ph.i101:                                      ; preds = %isinsets.exit.i, %samesets.exit.i
  %indvars.iv11.i = phi i64 [ %indvars.iv.next12.i, %samesets.exit.i ], [ %indvars.iv.i, %isinsets.exit.i ]
  %indvars.iv.next12.i = add nsw i64 %indvars.iv11.i, 1 ; 4 uses
  %i.da = getelementptr inbounds i8, ptr %i.cg, i64 %indvars.iv.next12.i ; 2 uses
  %i.db = load i8, ptr %i.da, align 1, !tbaa !33
  %i.dc = icmp eq i8 %i.db, 0
  br i1 %i.dc, label %bb.ae, label %samesets.exit.i

bb.ae:                                            ; preds = %.lr.ph.i101
  %i.dd = load i32, ptr %i.ae, align 4, !tbaa !37 ; 2 uses
  %i.de = icmp sgt i32 %i.dd, 0
  br i1 %i.de, label %.lr.ph.i26.i, label %.loopexit.i

.lr.ph.i26.i:                                     ; preds = %bb.ae
  %i.df = add nuw nsw i32 %i.dd, 7
  %i.dg = lshr i32 %i.df, 3
  %i.dh = load ptr, ptr %i.ad, align 8, !tbaa !38
  %i.di = and i64 %indvars.iv.next12.i, 255
  br label %bb.af

bb.af:                                            ; preds = %bb.ag, %.lr.ph.i26.i
  %.01316.i.i = phi ptr [ %i.dh, %.lr.ph.i26.i ], [ %i.dq, %bb.ag ] ; 3 uses
  %.01415.i.i = phi i32 [ 0, %.lr.ph.i26.i ], [ %i.dn, %bb.ag ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.01316.i.i, i64 %i.cl
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !33
  %i.dl = getelementptr inbounds nuw i8, ptr %.01316.i.i, i64 %i.di
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !33
  %.not.i27.i = icmp eq i8 %i.dk, %i.dm
  br i1 %.not.i27.i, label %bb.ag, label %samesets.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.dn = add nuw nsw i32 %.01415.i.i, 1          ; 2 uses
  %i.do = load i32, ptr %i.ac, align 8, !tbaa !22
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds i8, ptr %.01316.i.i, i64 %i.dp
  %exitcond.not.i28.i = icmp eq i32 %i.dn, %i.dg
  br i1 %exitcond.not.i28.i, label %.loopexit.i, label %bb.af, !llvm.loop !41

.loopexit.i:                                      ; preds = %bb.ag, %bb.ae
  store i8 %i.cy, ptr %i.da, align 1, !tbaa !33
  br label %samesets.exit.i

samesets.exit.i:                                  ; preds = %bb.af, %.loopexit.i, %.lr.ph.i101
  %exitcond.not.i = icmp eq i64 %indvars.iv.next12.i, 127
  br i1 %exitcond.not.i, label %isinsets.exit.thread.i, label %.lr.ph.i101, !llvm.loop !42

isinsets.exit.thread.i:                           ; preds = %bb.ad, %samesets.exit.i, %isinsets.exit.i, %bb.ab, %.preheader.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond15.not.i = icmp eq i64 %indvars.iv.next.i, 128
  br i1 %exitcond15.not.i, label %categorize.exitthread-pre-split.loopexit, label %.preheader.i, !llvm.loop !43

categorize.exitthread-pre-split.loopexit:         ; preds = %isinsets.exit.thread.i
  %.pr.pre = load i64, ptr %i.u, align 8, !tbaa !30
  br label %categorize.exit

categorize.exit:                                  ; preds = %doemit.exit98, %categorize.exitthread-pre-split.loopexit, %doemit.exit98.thread
  %i.dr = phi i64 [ %i.bk, %doemit.exit98.thread ], [ %.pr.pre, %categorize.exitthread-pre-split.loopexit ], [ %i.cd, %doemit.exit98 ] ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !44
  %i.dt = icmp ugt i64 %i.dr, 2305843009213693951
  %i.du = load ptr, ptr %i.t, align 8, !tbaa !16  ; 2 uses
  br i1 %i.dt, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %categorize.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !45
  %i.dw = load i32, ptr %i.z, align 8, !tbaa !20
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %bb.ai, label %seterr.exit.i

bb.ai:                                            ; preds = %bb.ah
  store i32 12, ptr %i.z, align 8, !tbaa !20
  br label %seterr.exit.i

seterr.exit.i:                                    ; preds = %bb.ai, %bb.ah
  store ptr @nuls, ptr %3, align 8, !tbaa !18
  store ptr @nuls, ptr %i.y, align 8, !tbaa !19
  br label %stripsnug.exit.pluscount.exit_crit_edge

bb.aj:                                            ; preds = %categorize.exit
  %i.dy = shl nuw i64 %i.dr, 3
  %i.dz = call ptr @realloc(ptr noundef %i.du, i64 noundef %i.dy) #20 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !45
  %i.eb = icmp eq ptr %i.dz, null
  %.val90.pre = load i32, ptr %i.z, align 8, !tbaa !20 ; 3 uses
  %i.ec = icmp eq i32 %.val90.pre, 0              ; 2 uses
  br i1 %i.eb, label %bb.ak, label %stripsnug.exit

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.ec, label %bb.al, label %seterr.exit13.i

bb.al:                                            ; preds = %bb.ak
  store i32 12, ptr %i.z, align 8, !tbaa !20
  br label %seterr.exit13.i

seterr.exit13.i:                                  ; preds = %bb.al, %bb.ak
  store ptr @nuls, ptr %3, align 8, !tbaa !18
  store ptr @nuls, ptr %i.y, align 8, !tbaa !19
  %i.ed = load ptr, ptr %i.t, align 8, !tbaa !16
  store ptr %i.ed, ptr %i.ea, align 8, !tbaa !45
  br label %stripsnug.exit.pluscount.exit_crit_edge

stripsnug.exit:                                   ; preds = %bb.aj
  br i1 %i.ec, label %bb.am, label %stripsnug.exit.pluscount.exit_crit_edge

stripsnug.exit.pluscount.exit_crit_edge:          ; preds = %seterr.exit13.i, %seterr.exit.i, %stripsnug.exit
  %.pre133 = load i32, ptr %i.ag, align 8, !tbaa !46
  br label %pluscount.exit

bb.am:                                            ; preds = %stripsnug.exit
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  br label %bb.an

bb.an:                                            ; preds = %bb.as, %bb.am
  %.046.i = phi ptr [ %i.ee, %bb.am ], [ %.3.i, %bb.as ] ; 4 uses
  %.043.i = phi ptr [ null, %bb.am ], [ %.245.i, %bb.as ] ; 5 uses
  %.040.i = phi ptr [ null, %bb.am ], [ %.242.i, %bb.as ] ; 7 uses
  %.038.i = phi i64 [ 0, %bb.am ], [ %.139.i, %bb.as ] ; 7 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.046.i, i64 8 ; 5 uses
  %i.eg = load i64, ptr %.046.i, align 8, !tbaa !31 ; 7 uses
  %i.eh = lshr i64 %i.eg, 27
  %i.ei = and i64 %i.eh, 31
  switch i64 %i.ei, label %.loopexit.i103 [
    i64 2, label %bb.ao
    i64 9, label %bb.as
    i64 13, label %bb.as
    i64 14, label %bb.as
    i64 11, label %.preheader
    i64 15, label %.preheader
  ]

.preheader:                                       ; preds = %bb.an, %bb.an
  br label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ej = icmp eq i64 %.038.i, 0
  %spec.select.i = select i1 %i.ej, ptr %.046.i, ptr %.040.i
  %i.ek = add nsw i64 %.038.i, 1
  br label %bb.as

bb.ap:                                            ; preds = %.preheader, %bb.ap
  %.147.i = phi ptr [ %i.em, %bb.ap ], [ %.046.i, %.preheader ]
  %.037.i = phi i64 [ %i.en, %bb.ap ], [ %i.eg, %.preheader ]
  %i.el = and i64 %.037.i, 134217727
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %.147.i, i64 %i.el ; 4 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !31 ; 4 uses
  %i.eo = trunc i64 %i.en to i32
  %trunc.i = and i32 %i.eo, -134217728
  switch i32 %trunc.i, label %bb.aq [
    i32 -1879048192, label %.loopexit.i103
    i32 1610612736, label %.loopexit.i103
    i32 -2013265920, label %bb.ap
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.ep = load i32, ptr %i.ag, align 8, !tbaa !46
  %i.eq = or i32 %i.ep, 4
  store i32 %i.eq, ptr %i.ag, align 8, !tbaa !46
  br label %findmust.exit.preheader

.loopexit.i103:                                   ; preds = %bb.ap, %bb.ap, %bb.an
  %.248.i = phi ptr [ %i.ef, %bb.an ], [ %i.em, %bb.ap ], [ %i.em, %bb.ap ] ; 2 uses
  %.1.i = phi i64 [ %i.eg, %bb.an ], [ %i.en, %bb.ap ], [ %i.en, %bb.ap ] ; 2 uses
  %i.er = load i32, ptr %i.ai, align 8, !tbaa !26
  %i.es = sext i32 %i.er to i64
  %i.et = icmp sgt i64 %.038.i, %i.es
  br i1 %i.et, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.loopexit.i103
  %i.eu = trunc i64 %.038.i to i32
  store i32 %i.eu, ptr %i.ai, align 8, !tbaa !26
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.loopexit.i103, %bb.ao, %bb.an, %bb.an, %bb.an
  %.3.i = phi ptr [ %i.ef, %bb.an ], [ %i.ef, %bb.ao ], [ %i.ef, %bb.an ], [ %i.ef, %bb.an ], [ %.248.i, %bb.ar ], [ %.248.i, %.loopexit.i103 ]
  %.245.i = phi ptr [ %.043.i, %bb.an ], [ %.043.i, %bb.ao ], [ %.043.i, %bb.an ], [ %.043.i, %bb.an ], [ %.040.i, %bb.ar ], [ %.043.i, %.loopexit.i103 ] ; 3 uses
  %.242.i = phi ptr [ %.040.i, %bb.an ], [ %spec.select.i, %bb.ao ], [ %.040.i, %bb.an ], [ %.040.i, %bb.an ], [ %.040.i, %bb.ar ], [ %.040.i, %.loopexit.i103 ]
  %.139.i = phi i64 [ %.038.i, %bb.an ], [ %i.ek, %bb.ao ], [ %.038.i, %bb.an ], [ %.038.i, %bb.an ], [ 0, %bb.ar ], [ 0, %.loopexit.i103 ]
  %.2.i = phi i64 [ %i.eg, %bb.an ], [ %i.eg, %bb.ao ], [ %i.eg, %bb.an ], [ %i.eg, %bb.an ], [ %.1.i, %bb.ar ], [ %.1.i, %.loopexit.i103 ]
  %i.ev = and i64 %.2.i, 4160749568
  %.not54.i = icmp eq i64 %i.ev, 134217728
  br i1 %.not54.i, label %bb.at, label %bb.an, !llvm.loop !47

bb.at:                                            ; preds = %bb.as
  %i.ew = load i32, ptr %i.ai, align 8, !tbaa !26 ; 5 uses
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %findmust.exit.preheader, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ey = sext i32 %i.ew to i64
  %i.ez = add nsw i64 %i.ey, 1
  %i.fa = call noalias ptr @malloc(i64 noundef %i.ez) #18 ; 6 uses
  store ptr %i.fa, ptr %i.ah, align 8, !tbaa !25
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.ai, align 8, !tbaa !26
  br label %findmust.exit.preheader

bb.aw:                                            ; preds = %bb.au
  %i.fc = icmp sgt i32 %i.ew, 0
  br i1 %i.fc, label %.preheader.preheader.i, label %._crit_edge.i

.preheader.preheader.i:                           ; preds = %bb.aw
  %i.fd = zext nneg i32 %i.ew to i64              ; 3 uses
  %xtraiter = and i64 %i.fd, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i104.prol.loopexit, label %.preheader.i104.prol

.preheader.i104.prol:                             ; preds = %.preheader.preheader.i, %.preheader.i104.prol
  %.5.i.prol = phi ptr [ %i.fe, %.preheader.i104.prol ], [ %.245.i, %.preheader.preheader.i ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.5.i.prol, i64 8 ; 2 uses
  %i.ff = load i64, ptr %.5.i.prol, align 8, !tbaa !31 ; 2 uses
  %i.fg = and i64 %i.ff, 4160749568
  %.not55.i.prol = icmp eq i64 %i.fg, 268435456
  br i1 %.not55.i.prol, label %.preheader.i104.prol.loopexit.unr-lcssa, label %.preheader.i104.prol, !llvm.loop !48

.preheader.i104.prol.loopexit.unr-lcssa:          ; preds = %.preheader.i104.prol
  %i.fh = trunc i64 %i.ff to i8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fa, i64 1 ; 2 uses
  store i8 %i.fh, ptr %i.fa, align 1, !tbaa !33
  %i.fj = add nsw i64 %i.fd, -1
  br label %.preheader.i104.prol.loopexit

.preheader.i104.prol.loopexit:                    ; preds = %.preheader.i104.prol.loopexit.unr-lcssa, %.preheader.preheader.i
  %.08.i.unr = phi i64 [ %i.fd, %.preheader.preheader.i ], [ %i.fj, %.preheader.i104.prol.loopexit.unr-lcssa ]
  %.0367.i.unr = phi ptr [ %i.fa, %.preheader.preheader.i ], [ %i.fi, %.preheader.i104.prol.loopexit.unr-lcssa ]
  %.46.i.unr = phi ptr [ %.245.i, %.preheader.preheader.i ], [ %i.fe, %.preheader.i104.prol.loopexit.unr-lcssa ]
  %.lcssa180.unr = phi ptr [ poison, %.preheader.preheader.i ], [ %i.fi, %.preheader.i104.prol.loopexit.unr-lcssa ]
  %i.fk = icmp eq i32 %i.ew, 1
  br i1 %i.fk, label %._crit_edge.i, label %.preheader.i104

.preheader.i104:                                  ; preds = %.preheader.i104.prol.loopexit, %bb.az
  %.08.i = phi i64 [ %i.fv, %bb.az ], [ %.08.i.unr, %.preheader.i104.prol.loopexit ] ; 2 uses
end_hunk_0
begin_hunk_1_@p_b_symbol:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 7 uses
  %i.d = icmp ult ptr %i.a, %i.c
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !20
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  store i32 7, ptr %i.e, align 8, !tbaa !20
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.b
  store ptr @nuls, ptr %i.b, align 8, !tbaa !19
  br label %bb.s

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.i = icmp ult ptr %i.h, %i.c
  br i1 %i.i, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d
  %i.j = load i8, ptr %i.a, align 1, !tbaa !33
  %i.k = icmp eq i8 %i.j, 91
  br i1 %i.k, label %bb.f, label %bb.s

bb.f:                                             ; preds = %bb.e
  %i.l = load i8, ptr %i.h, align 1, !tbaa !33
  %i.m = icmp eq i8 %i.l, 46
  br i1 %i.m, label %bb.g, label %bb.s

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 6 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !18
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = icmp ult ptr %i.n, %i.c
  br i1 %i.p, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.g, %.critedge34.i
  %i.q = phi ptr [ %i.r, %.critedge34.i ], [ %i.n, %bb.g ] ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 5 uses
  %i.s = icmp ult ptr %i.r, %i.c
  br i1 %i.s, label %bb.h, label %.critedge34.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.t = load i8, ptr %i.q, align 1, !tbaa !33
  %i.u = icmp eq i8 %i.t, 46
  br i1 %i.u, label %bb.i, label %.critedge34.i

bb.i:                                             ; preds = %bb.h
  %i.v = load i8, ptr %i.r, align 1, !tbaa !33
  %.not36.i = icmp eq i8 %i.v, 93
  br i1 %.not36.i, label %bb.k, label %.critedge34.i

.critedge34.i:                                    ; preds = %bb.i, %bb.h, %.lr.ph.i
  store ptr %i.r, ptr %0, align 8, !tbaa !18
  %exitcond.not.i = icmp eq ptr %i.r, %i.c
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !84

.critedge.i:                                      ; preds = %.critedge34.i, %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !20
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.j, label %p_b_coll_elem.exit.thread

bb.j:                                             ; preds = %.critedge.i
  store i32 7, ptr %i.w, align 8, !tbaa !20
  br label %p_b_coll_elem.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.z = ptrtoint ptr %i.q to i64
  %i.aa = sub i64 %i.z, %i.o                      ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.o, %bb.k
  %i.ab = phi ptr [ @.str.27, %bb.k ], [ %i.ai, %bb.o ] ; 2 uses
  %.02741.i = phi ptr [ @cnames, %bb.k ], [ %i.ah, %bb.o ] ; 2 uses
  %i.ac = tail call i32 @strncmp(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.n, i64 noundef %i.aa) #17
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ae = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #17
  %i.af = icmp eq i64 %i.ae, %i.aa
  br i1 %i.af, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %.02741.i, i64 8
  br label %p_b_coll_elem.exit

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %.02741.i, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !87 ; 2 uses
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %bb.p, label %bb.l, !llvm.loop !88

bb.p:                                             ; preds = %bb.o
  %i.aj = icmp eq i64 %i.aa, 1
  br i1 %i.aj, label %p_b_coll_elem.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !20
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.r, label %p_b_coll_elem.exit.thread

bb.r:                                             ; preds = %bb.q
  store i32 3, ptr %i.ak, align 8, !tbaa !20
  br label %p_b_coll_elem.exit.thread

p_b_coll_elem.exit:                               ; preds = %bb.p, %bb.n
  %.0.i.in = phi ptr [ %i.ag, %bb.n ], [ %i.n, %bb.p ]
  %.0.i = load i8, ptr %.0.i.in, align 1, !tbaa !33 ; 5 uses
  %i.an = icmp ult ptr %i.q, %i.c
  br i1 %i.an, label %bb.t, label %p_b_coll_elem.exit.thread

bb.s:                                             ; preds = %.thread, %bb.d, %bb.e, %bb.f
  %i.ao = phi ptr [ @nuls, %.thread ], [ %i.a, %bb.f ], [ %i.a, %bb.d ], [ %i.a, %bb.e ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  store ptr %i.ap, ptr %0, align 8, !tbaa !18
  %i.aq = load i8, ptr %i.ao, align 1, !tbaa !33
  br label %bb.y

bb.t:                                             ; preds = %p_b_coll_elem.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  %i.as = icmp ult ptr %i.ar, %i.c
  br i1 %i.as, label %bb.u, label %p_b_coll_elem.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.at = load i8, ptr %i.q, align 1, !tbaa !33
  %i.au = icmp eq i8 %i.at, 46
  br i1 %i.au, label %bb.v, label %p_b_coll_elem.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.av = load i8, ptr %i.ar, align 1, !tbaa !33
  %i.aw = icmp eq i8 %i.av, 93
  br i1 %i.aw, label %bb.w, label %p_b_coll_elem.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.ax = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  store ptr %i.ax, ptr %0, align 8, !tbaa !18
  br label %bb.y

p_b_coll_elem.exit.thread:                        ; preds = %bb.q, %bb.r, %.critedge.i, %bb.j, %p_b_coll_elem.exit, %bb.t, %bb.u, %bb.v
  %.0.i44 = phi i8 [ %.0.i, %bb.v ], [ %.0.i, %p_b_coll_elem.exit ], [ %.0.i, %bb.t ], [ %.0.i, %bb.u ], [ 0, %.critedge.i ], [ 0, %bb.j ], [ 0, %bb.r ], [ 0, %bb.q ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !20
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.x, label %seterr.exit27

bb.x:                                             ; preds = %p_b_coll_elem.exit.thread
  store i32 3, ptr %i.ay, align 8, !tbaa !20
  br label %seterr.exit27

seterr.exit27:                                    ; preds = %p_b_coll_elem.exit.thread, %bb.x
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.b, align 8, !tbaa !19
  br label %bb.y

bb.y:                                             ; preds = %seterr.exit27, %bb.w, %bb.s
  %.0 = phi i8 [ %i.aq, %bb.s ], [ %.0.i, %bb.w ], [ %.0.i44, %seterr.exit27 ]
  ret i8 %.0
}

declare i64 @llvh_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @bothcases(ptr noundef nonnull %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.c = trunc i32 %1 to i8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  store i8 %i.c, ptr %i.a, align 1, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 93, ptr %i.e, align 1, !tbaa !33
  store i8 0, ptr %i.d, align 1, !tbaa !33
  %i.f = load <2 x ptr>, ptr %0, align 8, !tbaa !56
  store ptr %i.a, ptr %0, align 8, !tbaa !18
  store ptr %i.d, ptr %i.b, align 8, !tbaa !19
  call fastcc void @p_bracket(ptr noundef %0)
  store <2 x ptr> %i.f, ptr %0, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind allocsize(0,1) }
attributes #20 = { nounwind allocsize(1) }
attributes #21 = { nounwind willreturn memory(none) }
attributes #22 = { "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !10, i64 16}
!8 = !{!"llvm_regex", !4, i64 0, !9, i64 8, !10, i64 16, !12, i64 24}
!9 = !{!"long", !5, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 _ZTS7re_guts", !11, i64 0}
!13 = !{!14, !9, i64 32}
!14 = !{!"parse", !10, i64 0, !10, i64 8, !4, i64 16, !15, i64 24, !9, i64 32, !9, i64 40, !4, i64 48, !12, i64 56, !5, i64 64, !5, i64 144}
!15 = !{!"p1 long", !11, i64 0}
!16 = !{!14, !15, i64 24}
!17 = !{!14, !12, i64 56}
!18 = !{!14, !10, i64 0}
!19 = !{!14, !10, i64 8}
!20 = !{!14, !4, i64 16}
!21 = !{!14, !4, i64 48}
!22 = !{!23, !4, i64 16}
!23 = !{!"re_guts", !4, i64 0, !15, i64 8, !4, i64 16, !4, i64 20, !11, i64 24, !10, i64 32, !4, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !4, i64 72, !4, i64 76, !4, i64 80, !4, i64 84, !10, i64 88, !10, i64 96, !4, i64 104, !9, i64 112, !4, i64 120, !9, i64 128, !5, i64 136}
!24 = !{!23, !4, i64 40}
!25 = !{!23, !10, i64 96}
!26 = !{!23, !4, i64 104}
!27 = !{!23, !9, i64 112}
!28 = !{!23, !10, i64 88}
!29 = !{!23, !4, i64 120}
!30 = !{!14, !9, i64 40}
!31 = !{!9, !9, i64 0}
!32 = !{!23, !9, i64 56}
!33 = !{!5, !5, i64 0}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!23, !9, i64 64}
!37 = !{!23, !4, i64 20}
!38 = !{!23, !10, i64 32}
!39 = distinct !{!39, !35}
!40 = !{!23, !4, i64 84}
!41 = distinct !{!41, !35}
!42 = distinct !{!42, !35}
!43 = distinct !{!43, !35}
!44 = !{!23, !9, i64 48}
!45 = !{!23, !15, i64 8}
!46 = !{!23, !4, i64 72}
!47 = distinct !{!47, !35}
!48 = distinct !{!48, !35}
!49 = distinct !{!49, !35}
!50 = distinct !{!50, !35}
!51 = !{!23, !9, i64 128}
!52 = !{!23, !4, i64 0}
!53 = !{!8, !9, i64 8}
!54 = !{!8, !12, i64 24}
!55 = !{!8, !4, i64 0}
!56 = !{!10, !10, i64 0}
!57 = distinct !{null}
!58 = !{!23, !4, i64 76}
!59 = !{!23, !4, i64 80}
!60 = !{!61, !61, i64 0}
!61 = !{!"p1 short", !11, i64 0}
!62 = !{!63, !63, i64 0}
!63 = !{!"short", !5, i64 0}
!64 = distinct !{!64, !35}
!65 = distinct !{!65, !35}
!66 = distinct !{!66, !35}
!67 = distinct !{null}
!68 = distinct !{!68, !35}
!69 = distinct !{!69, !35}
!70 = !{!23, !11, i64 24}
!71 = !{!72, !10, i64 0}
!72 = !{!"", !10, i64 0, !5, i64 8, !5, i64 9, !9, i64 16, !10, i64 24}
!73 = distinct !{!73, !35}
!74 = !{!72, !5, i64 8}
!75 = !{!72, !5, i64 9}
!76 = distinct !{!76, !35}
!77 = !{!78, !10, i64 8}
!78 = !{!"cclass", !10, i64 0, !10, i64 8, !10, i64 16}
!79 = distinct !{!79, !35}
!80 = !{!78, !10, i64 16}
!81 = !{!72, !9, i64 16}
!82 = !{!72, !10, i64 24}
!83 = distinct !{!83, !35}
!84 = distinct !{!84, !35}
!85 = !{!86, !5, i64 8}
!86 = !{!"cname", !10, i64 0, !5, i64 8}
!87 = !{!86, !10, i64 0}
!88 = distinct !{!88, !35}
!89 = distinct !{!89, !35}
!90 = distinct !{!90, !35}
!91 = distinct !{!91, !35}
!92 = !{!93, !93, i64 0}
!93 = !{!"p1 int", !11, i64 0}
!94 = distinct !{!94, !35}
!95 = distinct !{!95, !35}
!96 = distinct !{!96, !35, !97, !98}
!97 = !{!"llvm.loop.isvectorized", i32 1}
!98 = !{!"llvm.loop.unroll.runtime.disable"}
!99 = distinct !{!99, !35, !97}
!100 = distinct !{!100, !35}
!101 = !{ptr @ordinary}
!102 = distinct !{!102, !35}
!103 = distinct !{!103, !35}
!104 = !{ptr @bothcases}
!105 = distinct !{!105, !106}
!106 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_1
