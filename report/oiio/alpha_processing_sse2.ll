loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@MultRow_SSE2:bb.a
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %i.t, %.loopexit.loopexit ] ; 2 uses
  %i.u = sub nsw i32 %2, %.1                      ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.loopexit
  %i.w = zext nneg i32 %.1 to i64                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.w
  tail call void @WebPMultRow_C(ptr noundef %i.x, ptr noundef %i.y, i32 noundef %i.u, i32 noundef %3) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.loopexit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ApplyAlphaMultiply_SSE2(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
bb.a:
  %i.a = add nsw i32 %3, -1                       ; 4 uses
  %i.b = icmp sgt i32 %3, 0
  br i1 %i.b, label %.lr.ph114, label %._crit_edge115

.lr.ph114:                                        ; preds = %bb.a
  %.not = icmp ne i32 %1, 0                       ; 3 uses
  %i.c = select i1 %.not, i64 0, i64 3            ; 4 uses
  %i.d = zext i1 %.not to i64                     ; 4 uses
  %i.e = sext i32 %4 to i64                       ; 4 uses
  %.not100106 = icmp slt i32 %2, 4                ; 2 uses
  br i1 %.not, label %.lr.ph114.split.us, label %.lr.ph114.split

.lr.ph114.split.us:                               ; preds = %.lr.ph114
  br i1 %.not100106, label %.lr.ph114.split.us.split.us, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.lr.ph114.split.us
  %i.f = zext nneg i32 %2 to i64
  %i.g = add nsw i32 %2, -4                       ; 2 uses
  %i.h = and i32 %i.g, -4
  %i.i = and i32 %i.g, -4
  %i.j = add nuw nsw i32 %i.i, 4
  %i.k = add nuw nsw i32 %i.h, 4
  %i.l = zext nneg i32 %i.k to i64
  %i.m = icmp slt i32 %i.j, %2
  br label %.preheader.us

.lr.ph114.split.us.split.us:                      ; preds = %.lr.ph114.split.us
  %i.n = icmp sgt i32 %2, 0
  br i1 %i.n, label %.preheader.us.us.preheader, label %._crit_edge115

.preheader.us.us.preheader:                       ; preds = %.lr.ph114.split.us.split.us
  %exitcond150.not = icmp eq i32 %2, 1
  %exitcond150.not.1 = icmp eq i32 %2, 2
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader, %._crit_edge.us.us
  %i.o = phi i32 [ %i.ce, %._crit_edge.us.us ], [ %i.a, %.preheader.us.us.preheader ] ; 2 uses
  %.0112.us.us = phi ptr [ %i.cd, %._crit_edge.us.us ], [ %0, %.preheader.us.us.preheader ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0112.us.us, i64 %i.c ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0112.us.us, i64 %i.d ; 10 uses
  %i.r = load i8, ptr %i.p, align 1, !tbaa !9     ; 2 uses
  %.not101.us.us = icmp eq i8 %i.r, -1
  br i1 %.not101.us.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.us.us
  %i.s = zext i8 %i.r to i32
  %i.t = mul nuw nsw i32 %i.s, 32897              ; 3 uses
  %i.u = load i8, ptr %i.q, align 1, !tbaa !9
  %i.v = zext i8 %i.u to i32
  %i.w = mul nuw nsw i32 %i.t, %i.v
  %i.x = lshr i32 %i.w, 23
  %i.y = trunc nuw i32 %i.x to i8
  store i8 %i.y, ptr %i.q, align 1, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !9
  %i.ab = zext i8 %i.aa to i32
  %i.ac = mul nuw nsw i32 %i.t, %i.ab
  %i.ad = lshr i32 %i.ac, 23
  %i.ae = trunc nuw i32 %i.ad to i8
  store i8 %i.ae, ptr %i.z, align 1, !tbaa !9
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 2 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !9
  %i.ah = zext i8 %i.ag to i32
  %i.ai = mul nuw nsw i32 %i.t, %i.ah
  %i.aj = lshr i32 %i.ai, 23
  %i.ak = trunc nuw i32 %i.aj to i8
  store i8 %i.ak, ptr %i.af, align 1, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader.us.us
  br i1 %exitcond150.not, label %._crit_edge.us.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9   ; 2 uses
  %.not101.us.us.1 = icmp eq i8 %i.am, -1
  br i1 %.not101.us.us.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = zext i8 %i.am to i32
  %i.ao = mul nuw nsw i32 %i.an, 32897            ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !9
  %i.ar = zext i8 %i.aq to i32
  %i.as = mul nuw nsw i32 %i.ao, %i.ar
  %i.at = lshr i32 %i.as, 23
  %i.au = trunc nuw i32 %i.at to i8
  store i8 %i.au, ptr %i.ap, align 1, !tbaa !9
  %i.av = getelementptr inbounds nuw i8, ptr %i.q, i64 5 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !9
  %i.ax = zext i8 %i.aw to i32
  %i.ay = mul nuw nsw i32 %i.ao, %i.ax
  %i.az = lshr i32 %i.ay, 23
  %i.ba = trunc nuw i32 %i.az to i8
  store i8 %i.ba, ptr %i.av, align 1, !tbaa !9
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 6 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !9
  %i.bd = zext i8 %i.bc to i32
  %i.be = mul nuw nsw i32 %i.ao, %i.bd
  %i.bf = lshr i32 %i.be, 23
  %i.bg = trunc nuw i32 %i.bf to i8
  store i8 %i.bg, ptr %i.bb, align 1, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %exitcond150.not.1, label %._crit_edge.us.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !9   ; 2 uses
  %.not101.us.us.2 = icmp eq i8 %i.bi, -1
  br i1 %.not101.us.us.2, label %._crit_edge.us.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = zext i8 %i.bi to i32
  %i.bk = mul nuw nsw i32 %i.bj, 32897            ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !9
  %i.bn = zext i8 %i.bm to i32
  %i.bo = mul nuw nsw i32 %i.bk, %i.bn
  %i.bp = lshr i32 %i.bo, 23
  %i.bq = trunc nuw i32 %i.bp to i8
  store i8 %i.bq, ptr %i.bl, align 1, !tbaa !9
  %i.br = getelementptr inbounds nuw i8, ptr %i.q, i64 9 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !9
  %i.bt = zext i8 %i.bs to i32
  %i.bu = mul nuw nsw i32 %i.bk, %i.bt
  %i.bv = lshr i32 %i.bu, 23
  %i.bw = trunc nuw i32 %i.bv to i8
  store i8 %i.bw, ptr %i.br, align 1, !tbaa !9
  %i.bx = getelementptr inbounds nuw i8, ptr %i.q, i64 10 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !9
  %i.bz = zext i8 %i.by to i32
  %i.ca = mul nuw nsw i32 %i.bk, %i.bz
  %i.cb = lshr i32 %i.ca, 23
  %i.cc = trunc nuw i32 %i.cb to i8
  store i8 %i.cc, ptr %i.bx, align 1, !tbaa !9
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %bb.g, %bb.h, %bb.f, %bb.c
  %i.cd = getelementptr inbounds i8, ptr %.0112.us.us, i64 %i.e
  %i.ce = add nsw i32 %i.o, -1
  %i.cf = icmp sgt i32 %i.o, 0
  br i1 %i.cf, label %.preheader.us.us, label %._crit_edge115, !llvm.loop !13

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %i.cg = phi i32 [ %6, %._crit_edge.us ], [ %i.a, %.preheader.us.preheader ] ; 2 uses
  %.0112.us = phi ptr [ %5, %._crit_edge.us ], [ %0, %.preheader.us.preheader ] ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %.preheader.us, %bb.i
  %indvars.iv138 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next139, %bb.i ] ; 2 uses
  %indvars.iv136 = phi i64 [ 4, %.preheader.us ], [ %indvars.iv.next137, %bb.i ]
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.0112.us, i64 %indvars.iv138 ; 2 uses
  %i.ci = load <16 x i8>, ptr %i.ch, align 1, !tbaa !9 ; 2 uses
  %i.cj = shufflevector <16 x i8> %i.ci, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ck = shufflevector <16 x i8> %i.ci, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cl = bitcast <16 x i8> %i.cj to <8 x i16>
  %i.cm = bitcast <16 x i8> %i.cj to <8 x i16>
  %i.cn = or <8 x i16> %i.cm, <i16 0, i16 255, i16 poison, i16 poison, i16 0, i16 255, i16 poison, i16 poison>
  %i.co = bitcast <16 x i8> %i.ck to <8 x i16>
  %i.cp = bitcast <16 x i8> %i.ck to <8 x i16>
  %i.cq = or <8 x i16> %i.cp, <i16 0, i16 255, i16 poison, i16 poison, i16 0, i16 255, i16 poison, i16 poison>
  %i.cr = shufflevector <8 x i16> %i.cn, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 0, i32 0, i32 5, i32 4, i32 4, i32 4>
  %i.cs = shufflevector <8 x i16> %i.cq, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 0, i32 0, i32 5, i32 4, i32 4, i32 4>
  %i.ct = mul nuw <8 x i16> %i.cr, %i.cl
  %i.cu = mul nuw <8 x i16> %i.cs, %i.co
  %i.cv = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.ct, <8 x i16> splat (i16 -32639))
  %i.cw = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.cu, <8 x i16> splat (i16 -32639))
  %i.cx = lshr <8 x i16> %i.cv, splat (i16 7)
  %i.cy = lshr <8 x i16> %i.cw, splat (i16 7)
  %i.cz = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cx, <8 x i16> %i.cy)
  store <16 x i8> %i.cz, ptr %i.ch, align 1, !tbaa !9
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 4 ; 2 uses
  %.not100.us = icmp samesign ugt i64 %indvars.iv.next137, %i.f
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 4
  br i1 %.not100.us, label %..loopexit_crit_edge.us, label %bb.i, !llvm.loop !14

._crit_edge.us:                                   ; preds = %bb.l, %..loopexit_crit_edge.us
  %5 = getelementptr inbounds i8, ptr %.0112.us, i64 %i.e
  %6 = add nsw i32 %i.cg, -1
  %7 = icmp sgt i32 %i.cg, 0
  br i1 %7, label %.preheader.us, label %._crit_edge115, !llvm.loop !13

bb.j:                                             ; preds = %.lr.ph111.us, %bb.l
  %indvars.iv143 = phi i64 [ %i.l, %.lr.ph111.us ], [ %indvars.iv.next144, %bb.l ] ; 2 uses
  %i.da = shl i64 %indvars.iv143, 2
  %i.db = and i64 %i.da, 4294967292               ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !9   ; 2 uses
  %.not101.us = icmp eq i8 %i.dd, -1
  br i1 %.not101.us, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.de = zext i8 %i.dd to i32
  %i.df = mul nuw nsw i32 %i.de, 32897            ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.db ; 4 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !9
  %i.di = zext i8 %i.dh to i32
  %i.dj = mul nuw nsw i32 %i.df, %i.di
  %i.dk = lshr i32 %i.dj, 23
  %i.dl = trunc nuw i32 %i.dk to i8
  store i8 %i.dl, ptr %i.dg, align 1, !tbaa !9
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 1 ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !9
  %i.do = zext i8 %i.dn to i32
  %i.dp = mul nuw nsw i32 %i.df, %i.do
  %i.dq = lshr i32 %i.dp, 23
  %i.dr = trunc nuw i32 %i.dq to i8
  store i8 %i.dr, ptr %i.dm, align 1, !tbaa !9
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dg, i64 2 ; 2 uses
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !9
  %i.du = zext i8 %i.dt to i32
  %i.dv = mul nuw nsw i32 %i.df, %i.du
  %i.dw = lshr i32 %i.dv, 23
  %i.dx = trunc nuw i32 %i.dw to i8
  store i8 %i.dx, ptr %i.ds, align 1, !tbaa !9
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %i.dy = trunc nuw i64 %indvars.iv.next144 to i32
  %i.dz = icmp sgt i32 %2, %i.dy
  br i1 %i.dz, label %bb.j, label %._crit_edge.us, !llvm.loop !15

..loopexit_crit_edge.us:                          ; preds = %bb.i
  br i1 %i.m, label %.lr.ph111.us, label %._crit_edge.us

.lr.ph111.us:                                     ; preds = %..loopexit_crit_edge.us
  %i.ea = getelementptr inbounds nuw i8, ptr %.0112.us, i64 %i.c
  %i.eb = getelementptr inbounds nuw i8, ptr %.0112.us, i64 %i.d
  br label %bb.j

.lr.ph114.split:                                  ; preds = %.lr.ph114
  br i1 %.not100106, label %.lr.ph114.split.split.us, label %.preheader102.preheader

.preheader102.preheader:                          ; preds = %.lr.ph114.split
  %i.ec = zext nneg i32 %2 to i64
  %i.ed = add nsw i32 %2, -4                      ; 2 uses
  %i.ee = and i32 %i.ed, -4
  %i.ef = and i32 %i.ed, -4
  %i.eg = add nuw nsw i32 %i.ef, 4
  %i.eh = add nuw nsw i32 %i.ee, 4
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = icmp slt i32 %i.eg, %2
  br label %.preheader102

.lr.ph114.split.split.us:                         ; preds = %.lr.ph114.split
  %i.ek = icmp sgt i32 %2, 0
  br i1 %i.ek, label %.preheader102.us.preheader, label %._crit_edge115

.preheader102.us.preheader:                       ; preds = %.lr.ph114.split.split.us
  %exitcond.not = icmp eq i32 %2, 1
  %exitcond.not.1 = icmp eq i32 %2, 2
  br label %.preheader102.us

.preheader102.us:                                 ; preds = %.preheader102.us.preheader, %._crit_edge.us120
  %i.el = phi i32 [ %i.hb, %._crit_edge.us120 ], [ %i.a, %.preheader102.us.preheader ] ; 2 uses
  %.0112.us116 = phi ptr [ %i.ha, %._crit_edge.us120 ], [ %0, %.preheader102.us.preheader ] ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.0112.us116, i64 %i.c ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.0112.us116, i64 %i.d ; 10 uses
  %i.eo = load i8, ptr %i.em, align 1, !tbaa !9   ; 2 uses
  %.not101.us118 = icmp eq i8 %i.eo, -1
  br i1 %.not101.us118, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.preheader102.us
  %i.ep = zext i8 %i.eo to i32
  %i.eq = mul nuw nsw i32 %i.ep, 32897            ; 3 uses
  %i.er = load i8, ptr %i.en, align 1, !tbaa !9
  %i.es = zext i8 %i.er to i32
  %i.et = mul nuw nsw i32 %i.eq, %i.es
  %i.eu = lshr i32 %i.et, 23
  %i.ev = trunc nuw i32 %i.eu to i8
  store i8 %i.ev, ptr %i.en, align 1, !tbaa !9
  %i.ew = getelementptr inbounds nuw i8, ptr %i.en, i64 1 ; 2 uses
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !9
  %i.ey = zext i8 %i.ex to i32
  %i.ez = mul nuw nsw i32 %i.eq, %i.ey
  %i.fa = lshr i32 %i.ez, 23
  %i.fb = trunc nuw i32 %i.fa to i8
  store i8 %i.fb, ptr %i.ew, align 1, !tbaa !9
  %i.fc = getelementptr inbounds nuw i8, ptr %i.en, i64 2 ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !9
  %i.fe = zext i8 %i.fd to i32
  %i.ff = mul nuw nsw i32 %i.eq, %i.fe
  %i.fg = lshr i32 %i.ff, 23
  %i.fh = trunc nuw i32 %i.fg to i8
  store i8 %i.fh, ptr %i.fc, align 1, !tbaa !9
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.preheader102.us
  br i1 %exitcond.not, label %._crit_edge.us120, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fi = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !9   ; 2 uses
  %.not101.us118.1 = icmp eq i8 %i.fj, -1
  br i1 %.not101.us118.1, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fk = zext i8 %i.fj to i32
  %i.fl = mul nuw nsw i32 %i.fk, 32897            ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.en, i64 4 ; 2 uses
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !9
  %i.fo = zext i8 %i.fn to i32
  %i.fp = mul nuw nsw i32 %i.fl, %i.fo
  %i.fq = lshr i32 %i.fp, 23
  %i.fr = trunc nuw i32 %i.fq to i8
  store i8 %i.fr, ptr %i.fm, align 1, !tbaa !9
  %i.fs = getelementptr inbounds nuw i8, ptr %i.en, i64 5 ; 2 uses
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !9
  %i.fu = zext i8 %i.ft to i32
  %i.fv = mul nuw nsw i32 %i.fl, %i.fu
  %i.fw = lshr i32 %i.fv, 23
  %i.fx = trunc nuw i32 %i.fw to i8
  store i8 %i.fx, ptr %i.fs, align 1, !tbaa !9
  %i.fy = getelementptr inbounds nuw i8, ptr %i.en, i64 6 ; 2 uses
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !9
  %i.ga = zext i8 %i.fz to i32
  %i.gb = mul nuw nsw i32 %i.fl, %i.ga
  %i.gc = lshr i32 %i.gb, 23
  %i.gd = trunc nuw i32 %i.gc to i8
  store i8 %i.gd, ptr %i.fy, align 1, !tbaa !9
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %exitcond.not.1, label %._crit_edge.us120, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ge = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !9   ; 2 uses
  %.not101.us118.2 = icmp eq i8 %i.gf, -1
  br i1 %.not101.us118.2, label %._crit_edge.us120, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gg = zext i8 %i.gf to i32
  %i.gh = mul nuw nsw i32 %i.gg, 32897            ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 2 uses
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !9
  %i.gk = zext i8 %i.gj to i32
  %i.gl = mul nuw nsw i32 %i.gh, %i.gk
  %i.gm = lshr i32 %i.gl, 23
  %i.gn = trunc nuw i32 %i.gm to i8
  store i8 %i.gn, ptr %i.gi, align 1, !tbaa !9
  %i.go = getelementptr inbounds nuw i8, ptr %i.en, i64 9 ; 2 uses
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !9
  %i.gq = zext i8 %i.gp to i32
  %i.gr = mul nuw nsw i32 %i.gh, %i.gq
  %i.gs = lshr i32 %i.gr, 23
  %i.gt = trunc nuw i32 %i.gs to i8
  store i8 %i.gt, ptr %i.go, align 1, !tbaa !9
  %i.gu = getelementptr inbounds nuw i8, ptr %i.en, i64 10 ; 2 uses
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !9
  %i.gw = zext i8 %i.gv to i32
  %i.gx = mul nuw nsw i32 %i.gh, %i.gw
  %i.gy = lshr i32 %i.gx, 23
  %i.gz = trunc nuw i32 %i.gy to i8
  store i8 %i.gz, ptr %i.gu, align 1, !tbaa !9
  br label %._crit_edge.us120

._crit_edge.us120:                                ; preds = %bb.r, %bb.s, %bb.q, %bb.n
  %i.ha = getelementptr inbounds i8, ptr %.0112.us116, i64 %i.e
  %i.hb = add nsw i32 %i.el, -1
  %i.hc = icmp sgt i32 %i.el, 0
  br i1 %i.hc, label %.preheader102.us, label %._crit_edge115, !llvm.loop !13

.preheader102:                                    ; preds = %.preheader102.preheader, %._crit_edge
  %i.hd = phi i32 [ %i.ja, %._crit_edge ], [ %i.a, %.preheader102.preheader ] ; 2 uses
  %.0112 = phi ptr [ %i.iz, %._crit_edge ], [ %0, %.preheader102.preheader ] ; 4 uses
  br label %bb.t

bb.t:                                             ; preds = %.preheader102, %bb.t
  %indvars.iv125 = phi i64 [ 0, %.preheader102 ], [ %indvars.iv.next126, %bb.t ] ; 2 uses
  %indvars.iv = phi i64 [ 4, %.preheader102 ], [ %indvars.iv.next, %bb.t ]
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %.0112, i64 %indvars.iv125 ; 2 uses
  %i.hf = load <16 x i8>, ptr %i.he, align 1, !tbaa !9 ; 2 uses
  %i.hg = shufflevector <16 x i8> %i.hf, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.hh = shufflevector <16 x i8> %i.hf, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.hi = bitcast <16 x i8> %i.hg to <8 x i16>
  %i.hj = bitcast <16 x i8> %i.hg to <8 x i16>
  %i.hk = or <8 x i16> %i.hj, <i16 poison, i16 poison, i16 255, i16 0, i16 poison, i16 poison, i16 255, i16 0>
  %i.hl = bitcast <16 x i8> %i.hh to <8 x i16>
  %i.hm = bitcast <16 x i8> %i.hh to <8 x i16>
  %i.hn = or <8 x i16> %i.hm, <i16 poison, i16 poison, i16 255, i16 0, i16 poison, i16 poison, i16 255, i16 0>
  %i.ho = shufflevector <8 x i16> %i.hk, <8 x i16> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 2, i32 7, i32 7, i32 7, i32 6>
  %i.hp = shufflevector <8 x i16> %i.hn, <8 x i16> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 2, i32 7, i32 7, i32 7, i32 6>
  %i.hq = mul nuw <8 x i16> %i.ho, %i.hi
  %i.hr = mul nuw <8 x i16> %i.hp, %i.hl
  %i.hs = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.hq, <8 x i16> splat (i16 -32639))
  %i.ht = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.hr, <8 x i16> splat (i16 -32639))
  %i.hu = lshr <8 x i16> %i.hs, splat (i16 7)
  %i.hv = lshr <8 x i16> %i.ht, splat (i16 7)
  %i.hw = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.hu, <8 x i16> %i.hv)
  store <16 x i8> %i.hw, ptr %i.he, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not99 = icmp samesign ugt i64 %indvars.iv.next, %i.ec
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 4
  br i1 %.not99, label %..loopexit103_crit_edge, label %bb.t, !llvm.loop !16

..loopexit103_crit_edge:                          ; preds = %bb.t
  br i1 %i.ej, label %.lr.ph111, label %._crit_edge

.lr.ph111:                                        ; preds = %..loopexit103_crit_edge
  %i.hx = getelementptr inbounds nuw i8, ptr %.0112, i64 %i.c
  %i.hy = getelementptr inbounds nuw i8, ptr %.0112, i64 %i.d
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph111, %bb.w
  %indvars.iv130 = phi i64 [ %i.ei, %.lr.ph111 ], [ %indvars.iv.next131, %bb.w ] ; 2 uses
  %i.hz = shl i64 %indvars.iv130, 2
  %i.ia = and i64 %i.hz, 4294967292               ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.ia
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !9   ; 2 uses
  %.not101 = icmp eq i8 %i.ic, -1
  br i1 %.not101, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.id = zext i8 %i.ic to i32
  %i.ie = mul nuw nsw i32 %i.id, 32897            ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.ia ; 4 uses
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !9
  %i.ih = zext i8 %i.ig to i32
  %i.ii = mul nuw nsw i32 %i.ie, %i.ih
  %i.ij = lshr i32 %i.ii, 23
  %i.ik = trunc nuw i32 %i.ij to i8
end_hunk_0
begin_hunk_1_@DispatchAlpha_SSE2:bb.a
  %.083103 = phi <2 x i64> [ splat (i64 -1), %.preheader.lr.ph ], [ %.184, %._crit_edge101 ] ; 2 uses
  br i1 %.not89.not91, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 16, %.preheader ] ; 2 uses
  %.18293 = phi <2 x i64> [ %i.v, %.lr.ph ], [ %.081104, %.preheader ]
  %.08592 = phi ptr [ %i.w, %.lr.ph ], [ %.076107, %.preheader ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0108, i64 %indvars.iv116
  %i.e = load <2 x i64>, ptr %i.d, align 1, !tbaa !9 ; 2 uses
  %i.f = bitcast <2 x i64> %i.e to <16 x i8>      ; 2 uses
  %i.g = shufflevector <16 x i8> %i.f, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.h = shufflevector <16 x i8> %i.f, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.i = bitcast <16 x i8> %i.g to <8 x i16>      ; 2 uses
  %i.j = shufflevector <8 x i16> %i.i, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.k = shufflevector <8 x i16> %i.i, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.l = bitcast <16 x i8> %i.h to <8 x i16>      ; 2 uses
  %i.m = shufflevector <8 x i16> %i.l, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.n = shufflevector <8 x i16> %i.l, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.o = bitcast <8 x i16> %i.j to <16 x i8>
  tail call void @llvm.x86.sse2.maskmov.dqu(<16 x i8> %i.o, <16 x i8> <i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0>, ptr %.08592)
  %i.p = getelementptr inbounds nuw i8, ptr %.08592, i64 16
  %i.q = bitcast <8 x i16> %i.k to <16 x i8>
  tail call void @llvm.x86.sse2.maskmov.dqu(<16 x i8> %i.q, <16 x i8> <i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0>, ptr nonnull %i.p)
  %i.r = getelementptr inbounds nuw i8, ptr %.08592, i64 32
  %i.s = bitcast <8 x i16> %i.m to <16 x i8>
  tail call void @llvm.x86.sse2.maskmov.dqu(<16 x i8> %i.s, <16 x i8> <i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0>, ptr nonnull %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %.08592, i64 48
  %i.u = bitcast <8 x i16> %i.n to <16 x i8>
  tail call void @llvm.x86.sse2.maskmov.dqu(<16 x i8> %i.u, <16 x i8> <i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0>, ptr nonnull %i.t)
  %i.v = and <2 x i64> %i.e, %.18293              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.08592, i64 64 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 2 uses
  %i.x = trunc nuw i64 %indvars.iv.next to i32
  %.not89.not = icmp sgt i32 %2, %i.x
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 16
  br i1 %.not89.not, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !17

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.y = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.085.lcssa = phi ptr [ %.076107, %.preheader ], [ %i.w, %._crit_edge.loopexit ] ; 2 uses
  %.182.lcssa = phi <2 x i64> [ %.081104, %.preheader ], [ %i.v, %._crit_edge.loopexit ] ; 2 uses
  %.078.lcssa = phi i32 [ 0, %.preheader ], [ %i.y, %._crit_edge.loopexit ] ; 3 uses
  %i.z = or disjoint i32 %.078.lcssa, 8           ; 2 uses
  %.not90.not = icmp slt i32 %i.z, %2
  br i1 %.not90.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.aa = zext nneg i32 %.078.lcssa to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %.0108, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 1, !tbaa !9
  %i.ad = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.ac, i64 0 ; 2 uses
  %i.ae = bitcast <2 x i64> %i.ad to <16 x i8>
  %i.af = shufflevector <16 x i8> %i.ae, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ag = bitcast <16 x i8> %i.af to <8 x i16>    ; 2 uses
  %i.ah = shufflevector <8 x i16> %i.ag, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ai = shufflevector <8 x i16> %i.ag, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.aj = bitcast <8 x i16> %i.ah to <16 x i8>
  tail call void @llvm.x86.sse2.maskmov.dqu(<16 x i8> %i.aj, <16 x i8> <i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0>, ptr %.085.lcssa)
  %i.ak = getelementptr inbounds nuw i8, ptr %.085.lcssa, i64 16
  %i.al = bitcast <8 x i16> %i.ai to <16 x i8>
  tail call void @llvm.x86.sse2.maskmov.dqu(<16 x i8> %i.al, <16 x i8> <i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0>, ptr nonnull %i.ak)
  %i.am = and <2 x i64> %i.ad, %.083103
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.184 = phi <2 x i64> [ %i.am, %bb.b ], [ %.083103, %._crit_edge ] ; 2 uses
  %.179 = phi i32 [ %i.z, %bb.b ], [ %.078.lcssa, %._crit_edge ] ; 2 uses
  %i.an = icmp slt i32 %.179, %2
  br i1 %i.an, label %.lr.ph100.preheader, label %._crit_edge101

.lr.ph100.preheader:                              ; preds = %bb.c
  %i.ao = zext i32 %.179 to i64                   ; 4 uses
  %i.ap = sub nsw i64 %wide.trip.count, %i.ao
  %xtraiter = and i64 %i.ap, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph100.prol.loopexit, label %.lr.ph100.prol

.lr.ph100.prol:                                   ; preds = %.lr.ph100.preheader, %.lr.ph100.prol
  %indvars.iv121.prol = phi i64 [ %indvars.iv.next122.prol, %.lr.ph100.prol ], [ %i.ao, %.lr.ph100.preheader ] ; 3 uses
  %.198.prol = phi i32 [ %i.av, %.lr.ph100.prol ], [ %.077106, %.lr.ph100.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph100.prol ], [ 0, %.lr.ph100.preheader ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0108, i64 %indvars.iv121.prol
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !9   ; 2 uses
  %i.as = zext i8 %i.ar to i32
  %i.at = shl nuw nsw i64 %indvars.iv121.prol, 2
  %i.au = getelementptr inbounds nuw i8, ptr %.076107, i64 %i.at
  store i8 %i.ar, ptr %i.au, align 1, !tbaa !9
  %i.av = and i32 %.198.prol, %i.as               ; 3 uses
  %indvars.iv.next122.prol = add nuw nsw i64 %indvars.iv121.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph100.prol.loopexit, label %.lr.ph100.prol, !llvm.loop !18

.lr.ph100.prol.loopexit:                          ; preds = %.lr.ph100.prol, %.lr.ph100.preheader
  %.lcssa133.unr = phi i32 [ poison, %.lr.ph100.preheader ], [ %i.av, %.lr.ph100.prol ]
  %indvars.iv121.unr = phi i64 [ %i.ao, %.lr.ph100.preheader ], [ %indvars.iv.next122.prol, %.lr.ph100.prol ]
  %.198.unr = phi i32 [ %.077106, %.lr.ph100.preheader ], [ %i.av, %.lr.ph100.prol ]
  %i.aw = sub nsw i64 %i.ao, %wide.trip.count
  %i.ax = icmp ugt i64 %i.aw, -4
  br i1 %i.ax, label %._crit_edge101, label %.lr.ph100

.lr.ph100:                                        ; preds = %.lr.ph100.prol.loopexit, %.lr.ph100
  %indvars.iv121 = phi i64 [ %indvars.iv.next122.3, %.lr.ph100 ], [ %indvars.iv121.unr, %.lr.ph100.prol.loopexit ] ; 6 uses
  %.198 = phi i32 [ %i.bv, %.lr.ph100 ], [ %.198.unr, %.lr.ph100.prol.loopexit ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.0108, i64 %indvars.iv121
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !9   ; 2 uses
  %i.ba = zext i8 %i.az to i32
  %i.bb = shl nuw nsw i64 %indvars.iv121, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %.076107, i64 %i.bb
  store i8 %i.az, ptr %i.bc, align 1, !tbaa !9
  %i.bd = and i32 %.198, %i.ba
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0108, i64 %indvars.iv.next122
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !9   ; 2 uses
  %i.bg = zext i8 %i.bf to i32
  %i.bh = shl nuw nsw i64 %indvars.iv.next122, 2
  %i.bi = getelementptr inbounds nuw i8, ptr %.076107, i64 %i.bh
  store i8 %i.bf, ptr %i.bi, align 1, !tbaa !9
  %i.bj = and i32 %i.bd, %i.bg
  %indvars.iv.next122.1 = add nuw nsw i64 %indvars.iv121, 2 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0108, i64 %indvars.iv.next122.1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !9   ; 2 uses
  %i.bm = zext i8 %i.bl to i32
  %i.bn = shl nuw nsw i64 %indvars.iv.next122.1, 2
  %i.bo = getelementptr inbounds nuw i8, ptr %.076107, i64 %i.bn
  store i8 %i.bl, ptr %i.bo, align 1, !tbaa !9
  %i.bp = and i32 %i.bj, %i.bm
  %indvars.iv.next122.2 = add nuw nsw i64 %indvars.iv121, 3 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0108, i64 %indvars.iv.next122.2
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !9   ; 2 uses
  %i.bs = zext i8 %i.br to i32
  %i.bt = shl nuw nsw i64 %indvars.iv.next122.2, 2
  %i.bu = getelementptr inbounds nuw i8, ptr %.076107, i64 %i.bt
  store i8 %i.br, ptr %i.bu, align 1, !tbaa !9
  %i.bv = and i32 %i.bp, %i.bs                    ; 2 uses
  %indvars.iv.next122.3 = add nuw nsw i64 %indvars.iv121, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next122.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge101, label %.lr.ph100, !llvm.loop !20

._crit_edge101:                                   ; preds = %.lr.ph100.prol.loopexit, %.lr.ph100, %bb.c
  %.1.lcssa = phi i32 [ %.077106, %bb.c ], [ %.lcssa133.unr, %.lr.ph100.prol.loopexit ], [ %i.bv, %.lr.ph100 ] ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %.0108, i64 %i.b
  %i.bx = getelementptr inbounds i8, ptr %.076107, i64 %i.c
  %i.by = add nuw nsw i32 %.080105, 1             ; 2 uses
  %exitcond124.not = icmp eq i32 %i.by, %3
  br i1 %exitcond124.not, label %._crit_edge109.loopexit, label %.preheader, !llvm.loop !21

._crit_edge109.loopexit:                          ; preds = %._crit_edge101
  %i.bz = bitcast <2 x i64> %.184 to <16 x i8>
  %i.ca = icmp eq <16 x i8> %i.bz, splat (i8 -1)
  %i.cb = bitcast <16 x i1> %i.ca to i16
  %i.cc = and i16 %i.cb, 255
  %i.cd = zext nneg i16 %i.cc to i32
  %i.ce = and i32 %.1.lcssa, %i.cd
  %i.cf = icmp ne i32 %i.ce, 255
  %i.cg = bitcast <2 x i64> %.182.lcssa to <16 x i8>
  %i.ch = icmp ne <16 x i8> %i.cg, splat (i8 -1)
  %i.ci = bitcast <16 x i1> %i.ch to i16
  %i.cj = icmp ne i16 %i.ci, 0
  %i.ck = select i1 %i.cf, i1 true, i1 %i.cj
  %i.cl = zext i1 %i.ck to i32
  br label %._crit_edge109

._crit_edge109:                                   ; preds = %._crit_edge109.loopexit, %bb.a
  %.not = phi i32 [ 0, %bb.a ], [ %i.cl, %._crit_edge109.loopexit ]
  ret i32 %.not
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @DispatchAlphaToGreen_SSE2(ptr noalias nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noalias nofree noundef writeonly captures(none) %4, i32 noundef %5) #2 {
bb.a:
  %i.a = and i32 %2, -16
  %i.b = icmp sgt i32 %3, 0
  br i1 %i.b, label %.preheader46.lr.ph, label %._crit_edge53

.preheader46.lr.ph:                               ; preds = %bb.a
  %i.c = icmp sgt i32 %2, 15
  %i.d = sext i32 %1 to i64                       ; 2 uses
  %i.e = sext i32 %5 to i64                       ; 2 uses
  br i1 %i.c, label %.preheader46.us.preheader, label %.preheader46.lr.ph.split

.preheader46.us.preheader:                        ; preds = %.preheader46.lr.ph
  %i.f = zext nneg i32 %i.a to i64                ; 3 uses
  %i.g = zext nneg i32 %2 to i64                  ; 2 uses
  %i.h = add nsw i64 %i.f, -16
  %i.i = or disjoint i64 %i.f, 1
  %i.j = tail call i64 @llvm.umax.i64(i64 %i.i, i64 %i.g) ; 2 uses
  %i.k = sub nsw i64 %i.j, %i.h
  %i.l = add nsw i64 %i.k, -16                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.l, 8
  %n.mod.vf = and i64 %i.j, 7                     ; 2 uses
  %n.vec = sub nuw nsw i64 %i.l, %n.mod.vf        ; 2 uses
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br label %.preheader46.us

.preheader46.us:                                  ; preds = %.preheader46.us.preheader, %._crit_edge.us
  %.052.us = phi ptr [ %6, %._crit_edge.us ], [ %0, %.preheader46.us.preheader ] ; 4 uses
  %.04351.us = phi ptr [ %7, %._crit_edge.us ], [ %4, %.preheader46.us.preheader ] ; 4 uses
  %.04550.us = phi i32 [ %8, %._crit_edge.us ], [ 0, %.preheader46.us.preheader ]
  br label %bb.b

._crit_edge.us:                                   ; preds = %.lr.ph49.us, %middle.block, %..preheader_crit_edge.us
  %6 = getelementptr inbounds i8, ptr %.052.us, i64 %i.d
  %7 = getelementptr inbounds [4 x i8], ptr %.04351.us, i64 %i.e
  %8 = add nuw nsw i32 %.04550.us, 1              ; 2 uses
  %exitcond65.not = icmp eq i32 %8, %3
  br i1 %exitcond65.not, label %._crit_edge53, label %.preheader46.us, !llvm.loop !22

.lr.ph49.us:                                      ; preds = %.lr.ph49.us.preheader72, %.lr.ph49.us
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %.lr.ph49.us ], [ %indvars.iv62.ph, %.lr.ph49.us.preheader72 ] ; 3 uses
  %9 = getelementptr inbounds nuw i8, ptr %.052.us, i64 %indvars.iv62
  %10 = load i8, ptr %9, align 1, !tbaa !9
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 8
  %13 = getelementptr inbounds nuw [4 x i8], ptr %.04351.us, i64 %indvars.iv62
  store i32 %12, ptr %13, align 4, !tbaa !3
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %14 = icmp samesign ult i64 %indvars.iv.next63, %i.g
  br i1 %14, label %.lr.ph49.us, label %._crit_edge.us, !llvm.loop !23

bb.b:                                             ; preds = %.preheader46.us, %bb.b
  %indvars.iv60 = phi i64 [ 16, %.preheader46.us ], [ %indvars.iv.next61, %bb.b ] ; 4 uses
  %indvars.iv57 = phi i64 [ 0, %.preheader46.us ], [ %indvars.iv.next58, %bb.b ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.052.us, i64 %indvars.iv57
  %i.n = load <16 x i8>, ptr %i.m, align 1, !tbaa !9 ; 2 uses
  %i.o = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.n, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.p = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.n, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.q = bitcast <16 x i8> %i.o to <8 x i16>      ; 2 uses
  %i.r = shufflevector <8 x i16> %i.q, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.s = bitcast <16 x i8> %i.p to <8 x i16>      ; 2 uses
  %i.t = shufflevector <8 x i16> %i.s, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.u = shufflevector <8 x i16> %i.q, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.v = shufflevector <8 x i16> %i.s, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.04351.us, i64 %indvars.iv57 ; 4 uses
  store <8 x i16> %i.r, ptr %i.w, align 1, !tbaa !9
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <8 x i16> %i.u, ptr %i.x, align 1, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store <8 x i16> %i.t, ptr %i.y, align 1, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  store <8 x i16> %i.v, ptr %i.z, align 1, !tbaa !9
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 16 ; 3 uses
  %i.aa = icmp samesign ult i64 %indvars.iv.next58, %i.f
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 16
  br i1 %i.aa, label %bb.b, label %..preheader_crit_edge.us, !llvm.loop !26

..preheader_crit_edge.us:                         ; preds = %bb.b
  %i.ab = trunc nuw nsw i64 %indvars.iv.next58 to i32
  %i.ac = icmp sgt i32 %2, %i.ab
  br i1 %i.ac, label %.lr.ph49.us.preheader, label %._crit_edge.us

.lr.ph49.us.preheader:                            ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check, label %.lr.ph49.us.preheader72, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph49.us.preheader
  %i.ad = add i64 %indvars.iv60, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = add nuw i64 %indvars.iv60, %index       ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.052.us, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %wide.load = load <4 x i8>, ptr %i.af, align 1, !tbaa !9
  %wide.load71 = load <4 x i8>, ptr %i.ag, align 1, !tbaa !9
  %i.ah = zext <4 x i8> %wide.load to <4 x i32>
  %i.ai = zext <4 x i8> %wide.load71 to <4 x i32>
  %i.aj = shl nuw nsw <4 x i32> %i.ah, splat (i32 8)
  %i.ak = shl nuw nsw <4 x i32> %i.ai, splat (i32 8)
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.04351.us, i64 %i.ae ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <4 x i32> %i.aj, ptr %i.al, align 4, !tbaa !3
  store <4 x i32> %i.ak, ptr %i.am, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %.lr.ph49.us.preheader72

.lr.ph49.us.preheader72:                          ; preds = %.lr.ph49.us.preheader, %middle.block
  %indvars.iv62.ph = phi i64 [ %indvars.iv60, %.lr.ph49.us.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph49.us

.preheader46.lr.ph.split:                         ; preds = %.preheader46.lr.ph
  %i.ao = icmp sgt i32 %2, 0
  br i1 %i.ao, label %.preheader46.preheader, label %._crit_edge53

.preheader46.preheader:                           ; preds = %.preheader46.lr.ph.split
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ap = icmp ult i32 %2, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod74 = icmp ne i64 %xtraiter, 0
  br label %.preheader46

.preheader46:                                     ; preds = %.preheader46.preheader, %._crit_edge
  %.052 = phi ptr [ %i.bp, %._crit_edge ], [ %0, %.preheader46.preheader ] ; 6 uses
  %.04351 = phi ptr [ %i.bq, %._crit_edge ], [ %4, %.preheader46.preheader ] ; 6 uses
  %.04550 = phi i32 [ %i.br, %._crit_edge ], [ 0, %.preheader46.preheader ]
  br i1 %i.ap, label %.epil.preheader, label %.preheader46.new

.preheader46.new:                                 ; preds = %.preheader46, %.preheader46.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader46.new ], [ 0, %.preheader46 ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader46.new ], [ 0, %.preheader46 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.052, i64 %indvars.iv
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !9
  %i.as = zext i8 %i.ar to i32
  %i.at = shl nuw nsw i32 %i.as, 8
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.04351, i64 %indvars.iv
  store i32 %i.at, ptr %i.au, align 4, !tbaa !3
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.052, i64 %indvars.iv.next
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !9
  %i.ax = zext i8 %i.aw to i32
  %i.ay = shl nuw nsw i32 %i.ax, 8
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.04351, i64 %indvars.iv.next
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !3
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.052, i64 %indvars.iv.next.1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !9
  %i.bc = zext i8 %i.bb to i32
  %i.bd = shl nuw nsw i32 %i.bc, 8
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.04351, i64 %indvars.iv.next.1
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !3
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.052, i64 %indvars.iv.next.2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !9
  %i.bh = zext i8 %i.bg to i32
  %i.bi = shl nuw nsw i32 %i.bh, 8
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.04351, i64 %indvars.iv.next.2
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !3
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.preheader46.new, !llvm.loop !28

._crit_edge.unr-lcssa:                            ; preds = %.preheader46.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader46
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader46 ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod74)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.052, i64 %indvars.iv.epil
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !9
  %i.bm = zext i8 %i.bl to i32
  %i.bn = shl nuw nsw i32 %i.bm, 8
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.04351, i64 %indvars.iv.epil
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !3
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !29

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.unr-lcssa
  %i.bp = getelementptr inbounds i8, ptr %.052, i64 %i.d
  %i.bq = getelementptr inbounds [4 x i8], ptr %.04351, i64 %i.e
  %i.br = add nuw nsw i32 %.04550, 1              ; 2 uses
  %exitcond56.not = icmp eq i32 %i.br, %3
  br i1 %exitcond56.not, label %._crit_edge53, label %.preheader46, !llvm.loop !22

._crit_edge53:                                    ; preds = %._crit_edge, %._crit_edge.us, %.preheader46.lr.ph.split, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal range(i32 0, 2) i32 @ExtractAlpha_SSE2(ptr noalias nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noalias nofree noundef writeonly captures(none) %4, i32 noundef %5) #2 {
bb.a:
  %i.a = add nsw i32 %2, -1
  %i.b = and i32 %i.a, -8
  %i.c = icmp sgt i32 %3, 0
  br i1 %i.c, label %.preheader50.lr.ph, label %._crit_edge64

.preheader50.lr.ph:                               ; preds = %bb.a
  %i.d = icmp sgt i32 %2, 8
  %i.e = sext i32 %1 to i64                       ; 2 uses
  %i.f = sext i32 %5 to i64                       ; 2 uses
  br i1 %i.d, label %.preheader50.us.preheader, label %.preheader50.lr.ph.split

.preheader50.us.preheader:                        ; preds = %.preheader50.lr.ph
  %i.g = sext i32 %i.b to i64                     ; 3 uses
  %i.h = zext nneg i32 %2 to i64                  ; 2 uses
  %i.i = add nsw i64 %i.g, -8                     ; 3 uses
  %i.j = lshr exact i64 %i.i, 3
  %i.k = add nuw nsw i64 %i.j, 1                  ; 2 uses
  %i.l = icmp eq i64 %i.i, 0
  %unroll_iter = and i64 %i.k, 4611686018427387902
  %i.m = and i64 %i.i, 8
  %lcmp.mod.not.not = icmp eq i64 %i.m, 0
  %lcmp.mod118 = trunc i64 %i.k to i1
  %i.n = add nsw i64 %i.g, -8
  %i.o = or disjoint i64 %i.g, 1
  %i.p = tail call i64 @llvm.umax.i64(i64 %i.o, i64 %i.h) ; 2 uses
  %i.q = sub i64 %i.p, %i.n
  %i.r = add i64 %i.q, -8                         ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 9
  %n.mod.vf = and i64 %i.p, 7                     ; 2 uses
  %i.s = icmp eq i64 %n.mod.vf, 0
  %i.t = select i1 %i.s, i64 8, i64 %n.mod.vf
  %n.vec = sub i64 %i.r, %i.t                     ; 2 uses
  br label %.preheader50.us

.preheader50.us:                                  ; preds = %.preheader50.us.preheader, %._crit_edge.us
  %.063.us = phi ptr [ %6, %._crit_edge.us ], [ %0, %.preheader50.us.preheader ] ; 12 uses
  %.04262.us = phi ptr [ %7, %._crit_edge.us ], [ %4, %.preheader50.us.preheader ] ; 6 uses
  %.04361.us = phi i32 [ %.1.lcssa.us, %._crit_edge.us ], [ 255, %.preheader50.us.preheader ] ; 3 uses
  %.04660.us = phi i32 [ %8, %._crit_edge.us ], [ 0, %.preheader50.us.preheader ]
  %.04759.us = phi <2 x i64> [ %.lcssa, %._crit_edge.us ], [ <i64 -1, i64 0>, %.preheader50.us.preheader ] ; 2 uses
  br i1 %i.l, label %.epil.preheader, label %.preheader50.us.new

._crit_edge.us:                                   ; preds = %.lr.ph57.us, %..preheader_crit_edge.us
  %.1.lcssa.us = phi i32 [ %.04361.us, %..preheader_crit_edge.us ], [ %14, %.lr.ph57.us ] ; 2 uses
  %6 = getelementptr inbounds i8, ptr %.063.us, i64 %i.e
  %7 = getelementptr inbounds i8, ptr %.04262.us, i64 %i.f
  %8 = add nuw nsw i32 %.04660.us, 1              ; 2 uses
  %exitcond98.not = icmp eq i32 %8, %3
  br i1 %exitcond98.not, label %._crit_edge64.loopexit, label %.preheader50.us, !llvm.loop !30

.lr.ph57.us:                                      ; preds = %.lr.ph57.us.preheader109, %.lr.ph57.us
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %.lr.ph57.us ], [ %indvars.iv95.ph, %.lr.ph57.us.preheader109 ] ; 3 uses
  %.156.us = phi i32 [ %14, %.lr.ph57.us ], [ %.156.us.ph, %.lr.ph57.us.preheader109 ]
  %9 = shl nuw nsw i64 %indvars.iv95, 2
  %10 = getelementptr inbounds nuw i8, ptr %.063.us, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !9       ; 2 uses
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds nuw i8, ptr %.04262.us, i64 %indvars.iv95
  store i8 %11, ptr %13, align 1, !tbaa !9
  %14 = and i32 %.156.us, %12                     ; 2 uses
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %15 = icmp samesign ult i64 %indvars.iv.next96, %i.h
  br i1 %15, label %.lr.ph57.us, label %._crit_edge.us, !llvm.loop !31

.preheader50.us.new:                              ; preds = %.preheader50.us, %.preheader50.us.new
  %indvars.iv93 = phi i64 [ %indvars.iv.next94.1, %.preheader50.us.new ], [ 8, %.preheader50.us ] ; 2 uses
  %indvars.iv90 = phi i64 [ %indvars.iv.next91.1, %.preheader50.us.new ], [ 0, %.preheader50.us ] ; 3 uses
  %.14852.us = phi <2 x i64> [ %i.ar, %.preheader50.us.new ], [ %.04759.us, %.preheader50.us ]
  %.04951.us = phi ptr [ %i.as, %.preheader50.us.new ], [ %.063.us, %.preheader50.us ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader50.us.new ], [ 0, %.preheader50.us ]
  %i.u = load <4 x i32>, ptr %.04951.us, align 1, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %.04951.us, i64 16
  %i.w = load <4 x i32>, ptr %i.v, align 1, !tbaa !9
  %i.x = and <4 x i32> %i.u, splat (i32 255)
  %i.y = and <4 x i32> %i.w, splat (i32 255)
  %i.z = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.x, <4 x i32> %i.y) ; 2 uses
  %i.aa = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.z, <8 x i16> %i.z)
  %i.ab = bitcast <16 x i8> %i.aa to <2 x i64>    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.04262.us, i64 %indvars.iv90
  %i.ad = extractelement <2 x i64> %i.ab, i64 0
  store i64 %i.ad, ptr %i.ac, align 1, !tbaa !9
  %i.ae = and <2 x i64> %.14852.us, %i.ab
  %i.af = getelementptr inbounds nuw i8, ptr %.04951.us, i64 32
  %i.ag = load <4 x i32>, ptr %i.af, align 1, !tbaa !9
  %i.ah = getelementptr inbounds nuw i8, ptr %.04951.us, i64 48
  %i.ai = load <4 x i32>, ptr %i.ah, align 1, !tbaa !9
  %i.aj = and <4 x i32> %i.ag, splat (i32 255)
  %i.ak = and <4 x i32> %i.ai, splat (i32 255)
  %i.al = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.aj, <4 x i32> %i.ak) ; 2 uses
  %i.am = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.al, <8 x i16> %i.al)
  %i.an = bitcast <16 x i8> %i.am to <2 x i64>    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.04262.us, i64 %indvars.iv90
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = extractelement <2 x i64> %i.an, i64 0
  store i64 %i.aq, ptr %i.ap, align 1, !tbaa !9
  %i.ar = and <2 x i64> %i.ae, %i.an              ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.04951.us, i64 64 ; 2 uses
  %indvars.iv.next91.1 = add nuw nsw i64 %indvars.iv90, 16 ; 3 uses
  %indvars.iv.next94.1 = add nuw nsw i64 %indvars.iv93, 16 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %..preheader_crit_edge.us.unr-lcssa, label %.preheader50.us.new, !llvm.loop !32

..preheader_crit_edge.us.unr-lcssa:               ; preds = %.preheader50.us.new
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 8
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %..preheader_crit_edge.us

.epil.preheader:                                  ; preds = %..preheader_crit_edge.us.unr-lcssa, %.preheader50.us
  %indvars.iv93.epil.init = phi i64 [ 8, %.preheader50.us ], [ %indvars.iv.next94.1, %..preheader_crit_edge.us.unr-lcssa ]
  %indvars.iv90.epil.init = phi i64 [ 0, %.preheader50.us ], [ %indvars.iv.next91.1, %..preheader_crit_edge.us.unr-lcssa ] ; 2 uses
  %.14852.us.epil.init = phi <2 x i64> [ %.04759.us, %.preheader50.us ], [ %i.ar, %..preheader_crit_edge.us.unr-lcssa ]
  %.04951.us.epil.init = phi ptr [ %.063.us, %.preheader50.us ], [ %i.as, %..preheader_crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod118)
  %i.at = load <4 x i32>, ptr %.04951.us.epil.init, align 1, !tbaa !9
  %i.au = getelementptr inbounds nuw i8, ptr %.04951.us.epil.init, i64 16
  %i.av = load <4 x i32>, ptr %i.au, align 1, !tbaa !9
  %i.aw = and <4 x i32> %i.at, splat (i32 255)
  %i.ax = and <4 x i32> %i.av, splat (i32 255)
  %i.ay = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.aw, <4 x i32> %i.ax) ; 2 uses
  %i.az = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ay, <8 x i16> %i.ay)
  %i.ba = bitcast <16 x i8> %i.az to <2 x i64>    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.04262.us, i64 %indvars.iv90.epil.init
  %i.bc = extractelement <2 x i64> %i.ba, i64 0
  store i64 %i.bc, ptr %i.bb, align 1, !tbaa !9
  %i.bd = and <2 x i64> %.14852.us.epil.init, %i.ba
  %indvars.iv.next91.epil = add nuw nsw i64 %indvars.iv90.epil.init, 8
  br label %..preheader_crit_edge.us

..preheader_crit_edge.us:                         ; preds = %..preheader_crit_edge.us.unr-lcssa, %.epil.preheader
  %indvars.iv93.lcssa = phi i64 [ %indvars.iv.next94, %..preheader_crit_edge.us.unr-lcssa ], [ %indvars.iv93.epil.init, %.epil.preheader ] ; 3 uses
  %.lcssa = phi <2 x i64> [ %i.ar, %..preheader_crit_edge.us.unr-lcssa ], [ %i.bd, %.epil.preheader ] ; 2 uses
  %indvars.iv.next91.lcssa = phi i64 [ %indvars.iv.next91.1, %..preheader_crit_edge.us.unr-lcssa ], [ %indvars.iv.next91.epil, %.epil.preheader ]
  %i.be = trunc nuw nsw i64 %indvars.iv.next91.lcssa to i32
  %i.bf = icmp sgt i32 %2, %i.be
  br i1 %i.bf, label %.lr.ph57.us.preheader, label %._crit_edge.us

.lr.ph57.us.preheader:                            ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check, label %.lr.ph57.us.preheader109, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph57.us.preheader
  %i.bg = add i64 %indvars.iv93.lcssa, %n.vec
  %i.bh = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %.04361.us, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bh, %vector.ph ], [ %i.da, %vector.body ]
  %vec.phi108 = phi <4 x i32> [ splat (i32 -1), %vector.ph ], [ %i.db, %vector.body ]
  %i.bi = add nuw i64 %indvars.iv93.lcssa, %index ; 9 uses
  %i.bj = shl nuw nsw i64 %i.bi, 2
  %i.bk = shl i64 %i.bi, 2
  %i.bl = shl i64 %i.bi, 2
  %i.bm = shl i64 %i.bi, 2
  %i.bn = shl i64 %i.bi, 2
  %i.bo = shl i64 %i.bi, 2
  %i.bp = shl i64 %i.bi, 2
  %i.bq = shl i64 %i.bi, 2
  %i.br = getelementptr inbounds nuw i8, ptr %.063.us, i64 %i.bj
  %i.bs = getelementptr inbounds nuw i8, ptr %.063.us, i64 %i.bk
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bu = getelementptr inbounds nuw i8, ptr %.063.us, i64 %i.bl
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.063.us, i64 %i.bm
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.by = getelementptr inbounds nuw i8, ptr %.063.us, i64 %i.bn
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %.063.us, i64 %i.bo
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 20
  %i.cc = getelementptr inbounds nuw i8, ptr %.063.us, i64 %i.bp
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %.063.us, i64 %i.bq
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 28
  %i.cg = load i8, ptr %i.br, align 1, !tbaa !9
  %i.ch = load i8, ptr %i.bt, align 1, !tbaa !9
  %i.ci = load i8, ptr %i.bv, align 1, !tbaa !9
  %i.cj = load i8, ptr %i.bx, align 1, !tbaa !9
  %i.ck = insertelement <4 x i8> poison, i8 %i.cg, i64 0
  %i.cl = insertelement <4 x i8> %i.ck, i8 %i.ch, i64 1
  %i.cm = insertelement <4 x i8> %i.cl, i8 %i.ci, i64 2
  %i.cn = insertelement <4 x i8> %i.cm, i8 %i.cj, i64 3 ; 2 uses
  %i.co = load i8, ptr %i.bz, align 1, !tbaa !9
  %i.cp = load i8, ptr %i.cb, align 1, !tbaa !9
  %i.cq = load i8, ptr %i.cd, align 1, !tbaa !9
  %i.cr = load i8, ptr %i.cf, align 1, !tbaa !9
  %i.cs = insertelement <4 x i8> poison, i8 %i.co, i64 0
  %i.ct = insertelement <4 x i8> %i.cs, i8 %i.cp, i64 1
  %i.cu = insertelement <4 x i8> %i.ct, i8 %i.cq, i64 2
  %i.cv = insertelement <4 x i8> %i.cu, i8 %i.cr, i64 3 ; 2 uses
  %i.cw = zext <4 x i8> %i.cn to <4 x i32>
  %i.cx = zext <4 x i8> %i.cv to <4 x i32>
  %i.cy = getelementptr inbounds nuw i8, ptr %.04262.us, i64 %i.bi ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store <4 x i8> %i.cn, ptr %i.cy, align 1, !tbaa !9
  store <4 x i8> %i.cv, ptr %i.cz, align 1, !tbaa !9
  %i.da = and <4 x i32> %vec.phi, %i.cw           ; 2 uses
  %i.db = and <4 x i32> %vec.phi108, %i.cx        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  %bin.rdx = and <4 x i32> %i.db, %i.da
  %i.dd = tail call i32 @llvm.vector.reduce.and.v4i32(<4 x i32> %bin.rdx)
  br label %.lr.ph57.us.preheader109

.lr.ph57.us.preheader109:                         ; preds = %.lr.ph57.us.preheader, %middle.block
  %indvars.iv95.ph = phi i64 [ %indvars.iv93.lcssa, %.lr.ph57.us.preheader ], [ %i.bg, %middle.block ]
  %.156.us.ph = phi i32 [ %.04361.us, %.lr.ph57.us.preheader ], [ %i.dd, %middle.block ]
  br label %.lr.ph57.us

.preheader50.lr.ph.split:                         ; preds = %.preheader50.lr.ph
  %i.de = icmp sgt i32 %2, 0
  br i1 %i.de, label %.preheader50.us68.preheader, label %._crit_edge64

.preheader50.us68.preheader:                      ; preds = %.preheader50.lr.ph.split
  %exitcond.not = icmp eq i32 %2, 1
  %exitcond.not.1 = icmp eq i32 %2, 2
  %exitcond.not.2 = icmp eq i32 %2, 3
  %exitcond.not.3 = icmp eq i32 %2, 4
  %exitcond.not.4 = icmp eq i32 %2, 5
  %exitcond.not.5 = icmp eq i32 %2, 6
  %exitcond.not.6 = icmp eq i32 %2, 7
  br label %.preheader50.us68

.preheader50.us68:                                ; preds = %.preheader50.us68.preheader, %._crit_edge.us77
  %.063.us69 = phi ptr [ %i.er, %._crit_edge.us77 ], [ %0, %.preheader50.us68.preheader ] ; 9 uses
  %.04262.us70 = phi ptr [ %i.es, %._crit_edge.us77 ], [ %4, %.preheader50.us68.preheader ] ; 9 uses
  %.04361.us71 = phi i32 [ %.lcssa114, %._crit_edge.us77 ], [ 255, %.preheader50.us68.preheader ]
  %.04660.us72 = phi i32 [ %i.et, %._crit_edge.us77 ], [ 0, %.preheader50.us68.preheader ]
  %i.df = load i8, ptr %.063.us69, align 1, !tbaa !9 ; 2 uses
  %i.dg = zext i8 %i.df to i32
  store i8 %i.df, ptr %.04262.us70, align 1, !tbaa !9
  %i.dh = and i32 %.04361.us71, %i.dg             ; 2 uses
  br i1 %exitcond.not, label %._crit_edge.us77, label %bb.b

bb.b:                                             ; preds = %.preheader50.us68
  %i.di = getelementptr inbounds nuw i8, ptr %.063.us69, i64 4
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !9   ; 2 uses
  %i.dk = zext i8 %i.dj to i32
  %i.dl = getelementptr inbounds nuw i8, ptr %.04262.us70, i64 1
  store i8 %i.dj, ptr %i.dl, align 1, !tbaa !9
  %i.dm = and i32 %i.dh, %i.dk                    ; 2 uses
  br i1 %exitcond.not.1, label %._crit_edge.us77, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.dn = getelementptr inbounds nuw i8, ptr %.063.us69, i64 8
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !9   ; 2 uses
  %i.dp = zext i8 %i.do to i32
  %i.dq = getelementptr inbounds nuw i8, ptr %.04262.us70, i64 2
  store i8 %i.do, ptr %i.dq, align 1, !tbaa !9
  %i.dr = and i32 %i.dm, %i.dp                    ; 2 uses
  br i1 %exitcond.not.2, label %._crit_edge.us77, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ds = getelementptr inbounds nuw i8, ptr %.063.us69, i64 12
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !9   ; 2 uses
  %i.du = zext i8 %i.dt to i32
  %i.dv = getelementptr inbounds nuw i8, ptr %.04262.us70, i64 3
  store i8 %i.dt, ptr %i.dv, align 1, !tbaa !9
  %i.dw = and i32 %i.dr, %i.du                    ; 2 uses
  br i1 %exitcond.not.3, label %._crit_edge.us77, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dx = getelementptr inbounds nuw i8, ptr %.063.us69, i64 16
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !9   ; 2 uses
  %i.dz = zext i8 %i.dy to i32
  %i.ea = getelementptr inbounds nuw i8, ptr %.04262.us70, i64 4
  store i8 %i.dy, ptr %i.ea, align 1, !tbaa !9
  %i.eb = and i32 %i.dw, %i.dz                    ; 2 uses
  br i1 %exitcond.not.4, label %._crit_edge.us77, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ec = getelementptr inbounds nuw i8, ptr %.063.us69, i64 20
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !9   ; 2 uses
  %i.ee = zext i8 %i.ed to i32
  %i.ef = getelementptr inbounds nuw i8, ptr %.04262.us70, i64 5
  store i8 %i.ed, ptr %i.ef, align 1, !tbaa !9
  %i.eg = and i32 %i.eb, %i.ee                    ; 2 uses
  br i1 %exitcond.not.5, label %._crit_edge.us77, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.eh = getelementptr inbounds nuw i8, ptr %.063.us69, i64 24
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !9   ; 2 uses
  %i.ej = zext i8 %i.ei to i32
  %i.ek = getelementptr inbounds nuw i8, ptr %.04262.us70, i64 6
  store i8 %i.ei, ptr %i.ek, align 1, !tbaa !9
  %i.el = and i32 %i.eg, %i.ej                    ; 2 uses
  br i1 %exitcond.not.6, label %._crit_edge.us77, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.em = getelementptr inbounds nuw i8, ptr %.063.us69, i64 28
  %i.en = load i8, ptr %i.em, align 1, !tbaa !9   ; 2 uses
  %i.eo = zext i8 %i.en to i32
  %i.ep = getelementptr inbounds nuw i8, ptr %.04262.us70, i64 7
  store i8 %i.en, ptr %i.ep, align 1, !tbaa !9
  %i.eq = and i32 %i.el, %i.eo
  br label %._crit_edge.us77

._crit_edge.us77:                                 ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %.preheader50.us68
  %.lcssa114 = phi i32 [ %i.dh, %.preheader50.us68 ], [ %i.dm, %bb.b ], [ %i.dr, %bb.c ], [ %i.dw, %bb.d ], [ %i.eb, %bb.e ], [ %i.eg, %bb.f ], [ %i.el, %bb.g ], [ %i.eq, %bb.h ] ; 2 uses
  %i.er = getelementptr inbounds i8, ptr %.063.us69, i64 %i.e
  %i.es = getelementptr inbounds i8, ptr %.04262.us70, i64 %i.f
  %i.et = add nuw nsw i32 %.04660.us72, 1         ; 2 uses
  %exitcond89.not = icmp eq i32 %i.et, %3
  br i1 %exitcond89.not, label %._crit_edge64, label %.preheader50.us68, !llvm.loop !30

._crit_edge64.loopexit:                           ; preds = %._crit_edge.us
  %i.eu = bitcast <2 x i64> %.lcssa to <16 x i8>
  %i.ev = icmp eq <16 x i8> %i.eu, <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>
  %i.ew = bitcast <16 x i1> %i.ev to i16
  %i.ex = zext i16 %i.ew to i32
  br label %._crit_edge64

._crit_edge64:                                    ; preds = %._crit_edge.us77, %.preheader50.lr.ph.split, %._crit_edge64.loopexit, %bb.a
  %.047.lcssa = phi i32 [ 65535, %bb.a ], [ 65535, %.preheader50.lr.ph.split ], [ %i.ex, %._crit_edge64.loopexit ], [ 65535, %._crit_edge.us77 ]
  %.043.lcssa = phi i32 [ 255, %bb.a ], [ 255, %.preheader50.lr.ph.split ], [ %.1.lcssa.us, %._crit_edge64.loopexit ], [ %.lcssa114, %._crit_edge.us77 ]
  %i.ey = and i32 %.043.lcssa, %.047.lcssa
  %i.ez = icmp eq i32 %i.ey, 255
  %i.fa = zext i1 %i.ez to i32
  ret i32 %i.fa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ExtractGreen_SSE2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, i32 noundef %2) #2 {
bb.a:
  %.not59 = icmp slt i32 %2, 16
  br i1 %.not59, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv68 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next69, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ 16, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %.05460 = phi ptr [ %0, %.lr.ph.preheader ], [ %i.u, %.lr.ph ] ; 5 uses
  %i.b = load <4 x i32>, ptr %.05460, align 1, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %.05460, i64 16
  %i.d = load <4 x i32>, ptr %i.c, align 1, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %.05460, i64 32
  %i.f = load <4 x i32>, ptr %i.e, align 1, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %.05460, i64 48
  %i.h = load <4 x i32>, ptr %i.g, align 1, !tbaa !9
  %i.i = lshr <4 x i32> %i.b, splat (i32 8)
  %i.j = lshr <4 x i32> %i.d, splat (i32 8)
  %i.k = lshr <4 x i32> %i.f, splat (i32 8)
  %i.l = lshr <4 x i32> %i.h, splat (i32 8)
  %i.m = and <4 x i32> %i.i, splat (i32 255)
  %i.n = and <4 x i32> %i.j, splat (i32 255)
  %i.o = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.m, <4 x i32> %i.n)
  %i.p = and <4 x i32> %i.k, splat (i32 255)
  %i.q = and <4 x i32> %i.l, splat (i32 255)
  %i.r = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.p, <4 x i32> %i.q)
  %i.s = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.o, <8 x i16> %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv68
  store <16 x i8> %i.s, ptr %i.t, align 1, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %.05460, i64 64 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 16
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !34

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.v = and i32 %2, 2147483632
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.054.lcssa = phi ptr [ %0, %bb.a ], [ %i.u, %._crit_edge.loopexit ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.v, %._crit_edge.loopexit ] ; 3 uses
  %i.w = or disjoint i32 %.0.lcssa, 8             ; 2 uses
  %.not58 = icmp sgt i32 %i.w, %2
  br i1 %.not58, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.x = load <4 x i32>, ptr %.054.lcssa, align 1, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %.054.lcssa, i64 16
  %i.z = load <4 x i32>, ptr %i.y, align 1, !tbaa !9
  %i.aa = lshr <4 x i32> %i.x, splat (i32 8)
  %i.ab = lshr <4 x i32> %i.z, splat (i32 8)
  %i.ac = and <4 x i32> %i.aa, splat (i32 255)
  %i.ad = and <4 x i32> %i.ab, splat (i32 255)
  %i.ae = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ac, <4 x i32> %i.ad)
  %i.af = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ae, <8 x i16> poison)
  %i.ag = bitcast <16 x i8> %i.af to <2 x i64>
  %i.ah = zext nneg i32 %.0.lcssa to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ah
  %i.aj = extractelement <2 x i64> %i.ag, i64 0
  store i64 %i.aj, ptr %i.ai, align 1, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.1 = phi i32 [ %i.w, %bb.b ], [ %.0.lcssa, %._crit_edge ] ; 2 uses
  %i.ak = icmp slt i32 %.1, %2
  br i1 %i.ak, label %.lr.ph65.preheader, label %._crit_edge66

.lr.ph65.preheader:                               ; preds = %bb.c
  %i.al = zext i32 %.1 to i64                     ; 4 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %i.am = sub nsw i64 %wide.trip.count, %i.al     ; 3 uses
  %min.iters.check = icmp ult i64 %i.am, 8
  br i1 %min.iters.check, label %.lr.ph65.preheader79, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph65.preheader
  %n.vec = and i64 %i.am, -8                      ; 3 uses
  %i.an = add nsw i64 %n.vec, %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = add nuw i64 %index, %i.al               ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load = load <4 x i32>, ptr %i.ap, align 4, !tbaa !3
  %wide.load78 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !3
  %i.ar = lshr <4 x i32> %wide.load, splat (i32 8)
  %i.as = lshr <4 x i32> %wide.load78, splat (i32 8)
  %i.at = trunc <4 x i32> %i.ar to <4 x i8>
  %i.au = trunc <4 x i32> %i.as to <4 x i8>
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %i.ao ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store <4 x i8> %i.at, ptr %i.av, align 1, !tbaa !9
  store <4 x i8> %i.au, ptr %i.aw, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %._crit_edge66, label %.lr.ph65.preheader79

.lr.ph65.preheader79:                             ; preds = %.lr.ph65.preheader, %middle.block
  %indvars.iv73.ph = phi i64 [ %i.al, %.lr.ph65.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.preheader79, %.lr.ph65
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %.lr.ph65 ], [ %indvars.iv73.ph, %.lr.ph65.preheader79 ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv73
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !3
  %i.ba = lshr i32 %i.az, 8
  %i.bb = trunc i32 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv73
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !9
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next74, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge66, label %.lr.ph65, !llvm.loop !36

._crit_edge66:                                    ; preds = %.lr.ph65, %middle.block, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @HasAlpha8b_SSE2(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #3 {
bb.a:
  %i.a = sext i32 %1 to i64
  %.not37 = icmp slt i32 %1, 16
  br i1 %.not37, label %.preheader, label %.lr.ph40

bb.b:                                             ; preds = %.lr.ph40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next39, 16 ; 2 uses
  %.not = icmp sgt i64 %indvars.iv.next, %i.a
  br i1 %.not, label %.preheader, label %.lr.ph40, !llvm.loop !37

.preheader:                                       ; preds = %bb.b, %bb.a
  %indvars.iv.lcssa = phi i64 [ 0, %bb.a ], [ %indvars.iv.next39, %bb.b ] ; 2 uses
  %i.b = trunc nuw nsw i64 %indvars.iv.lcssa to i32
  %i.c = icmp sgt i32 %1, %i.b
  br i1 %i.c, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext i32 %1 to i64
  br label %.lr.ph

.lr.ph40:                                         ; preds = %bb.a, %bb.b
  %indvars.iv.next39 = phi i64 [ %indvars.iv.next, %bb.b ], [ 16, %bb.a ] ; 3 uses
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %bb.b ], [ 0, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv38
  %i.e = load <16 x i8>, ptr %i.d, align 1, !tbaa !9
  %i.f = icmp ne <16 x i8> %i.e, splat (i8 -1)
  %i.g = bitcast <16 x i1> %i.f to i16
  %.not20 = icmp eq i16 %i.g, 0
  br i1 %.not20, label %bb.b, label %.loopexit, !llvm.loop !37

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next31, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !38

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv30 = phi i64 [ %indvars.iv.lcssa, %.lr.ph.preheader ], [ %indvars.iv.next31, %bb.c ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv30
  %i.i = load i8, ptr %i.h, align 1, !tbaa !9
  %.not19 = icmp eq i8 %i.i, -1
  br i1 %.not19, label %bb.c, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph40, %.lr.ph, %bb.c, %.preheader
  %.2 = phi i32 [ 0, %.preheader ], [ 0, %bb.c ], [ 1, %.lr.ph ], [ 1, %.lr.ph40 ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @HasAlpha32b_SSE2(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #3 {
bb.a:
  %i.a = shl nsw i32 %1, 2
  %i.b = add nsw i32 %i.a, -3                     ; 2 uses
  %i.c = sext i32 %i.b to i64                     ; 4 uses
end_hunk_1
