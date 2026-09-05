Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/alpha_processing_sse2?download=true
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@MultRow_SSE2:bb.a
.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %narrow, %.loopexit.loopexit ] ; 2 uses
  %i.v = sub nsw i32 %2, %.1                      ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.loopexit
  %i.x = zext nneg i32 %.1 to i64                 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  tail call void @WebPMultRow_C(ptr noundef %i.y, ptr noundef %i.z, i32 noundef %i.v, i32 noundef %3) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.loopexit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ApplyAlphaMultiply_SSE2(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
bb.a:
  %i.a = add nsw i32 %3, -1                       ; 4 uses
  %i.b = icmp sgt i32 %3, 0
  br i1 %i.b, label %.lr.ph115, label %._crit_edge116

.lr.ph115:                                        ; preds = %bb.a
  %.not = icmp ne i32 %1, 0                       ; 3 uses
  %i.c = select i1 %.not, i64 0, i64 3            ; 4 uses
  %i.d = zext i1 %.not to i64                     ; 4 uses
  %i.e = sext i32 %4 to i64                       ; 4 uses
  %.not100106 = icmp slt i32 %2, 4                ; 2 uses
  br i1 %.not, label %.lr.ph115.split.us, label %.lr.ph115.split

.lr.ph115.split.us:                               ; preds = %.lr.ph115
  br i1 %.not100106, label %.lr.ph115.split.us.split.us, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.lr.ph115.split.us
  %i.f = zext nneg i32 %2 to i64
  %i.g = add nsw i32 %2, -4                       ; 2 uses
  %i.h = and i32 %i.g, 2147483644
  %narrow156 = add nuw nsw i32 %i.h, 4
  %i.i = and i32 %i.g, -4
  %i.j = add nuw nsw i32 %i.i, 4
  %i.k = zext nneg i32 %i.j to i64
  %i.l = icmp slt i32 %narrow156, %2
  br label %.preheader.us

.lr.ph115.split.us.split.us:                      ; preds = %.lr.ph115.split.us
  %i.m = icmp sgt i32 %2, 0
  br i1 %i.m, label %.preheader.us.us.preheader, label %._crit_edge116

.preheader.us.us.preheader:                       ; preds = %.lr.ph115.split.us.split.us
  %exitcond151.not = icmp eq i32 %2, 1
  %exitcond151.not.1 = icmp eq i32 %2, 2
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader, %._crit_edge.us.us
  %i.n = phi i32 [ %i.cd, %._crit_edge.us.us ], [ %i.a, %.preheader.us.us.preheader ] ; 2 uses
  %.0112.us.us = phi ptr [ %i.cc, %._crit_edge.us.us ], [ %0, %.preheader.us.us.preheader ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0112.us.us, i64 %i.c ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0112.us.us, i64 %i.d ; 10 uses
  %i.q = load i8, ptr %i.o, align 1, !tbaa !7     ; 2 uses
  %.not101.us.us = icmp eq i8 %i.q, -1
  br i1 %.not101.us.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.us.us
  %i.r = zext i8 %i.q to i32
  %i.s = mul nuw nsw i32 %i.r, 32897              ; 3 uses
  %i.t = load i8, ptr %i.p, align 1, !tbaa !7
  %i.u = zext i8 %i.t to i32
  %i.v = mul nuw nsw i32 %i.s, %i.u
  %i.w = lshr i32 %i.v, 23
  %i.x = trunc nuw i32 %i.w to i8
  store i8 %i.x, ptr %i.p, align 1, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !7
  %i.aa = zext i8 %i.z to i32
  %i.ab = mul nuw nsw i32 %i.s, %i.aa
  %i.ac = lshr i32 %i.ab, 23
  %i.ad = trunc nuw i32 %i.ac to i8
  store i8 %i.ad, ptr %i.y, align 1, !tbaa !7
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 2 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !7
  %i.ag = zext i8 %i.af to i32
  %i.ah = mul nuw nsw i32 %i.s, %i.ag
  %i.ai = lshr i32 %i.ah, 23
  %i.aj = trunc nuw i32 %i.ai to i8
  store i8 %i.aj, ptr %i.ae, align 1, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader.us.us
  br i1 %exitcond151.not, label %._crit_edge.us.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !7   ; 2 uses
  %.not101.us.us.1 = icmp eq i8 %i.al, -1
  br i1 %.not101.us.us.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = zext i8 %i.al to i32
  %i.an = mul nuw nsw i32 %i.am, 32897            ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !7
  %i.aq = zext i8 %i.ap to i32
  %i.ar = mul nuw nsw i32 %i.an, %i.aq
  %i.as = lshr i32 %i.ar, 23
  %i.at = trunc nuw i32 %i.as to i8
  store i8 %i.at, ptr %i.ao, align 1, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %i.p, i64 5 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !7
  %i.aw = zext i8 %i.av to i32
  %i.ax = mul nuw nsw i32 %i.an, %i.aw
  %i.ay = lshr i32 %i.ax, 23
  %i.az = trunc nuw i32 %i.ay to i8
  store i8 %i.az, ptr %i.au, align 1, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %i.p, i64 6 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !7
  %i.bc = zext i8 %i.bb to i32
  %i.bd = mul nuw nsw i32 %i.an, %i.bc
  %i.be = lshr i32 %i.bd, 23
  %i.bf = trunc nuw i32 %i.be to i8
  store i8 %i.bf, ptr %i.ba, align 1, !tbaa !7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %exitcond151.not.1, label %._crit_edge.us.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !7   ; 2 uses
  %.not101.us.us.2 = icmp eq i8 %i.bh, -1
  br i1 %.not101.us.us.2, label %._crit_edge.us.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = zext i8 %i.bh to i32
  %i.bj = mul nuw nsw i32 %i.bi, 32897            ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !7
  %i.bm = zext i8 %i.bl to i32
  %i.bn = mul nuw nsw i32 %i.bj, %i.bm
  %i.bo = lshr i32 %i.bn, 23
  %i.bp = trunc nuw i32 %i.bo to i8
  store i8 %i.bp, ptr %i.bk, align 1, !tbaa !7
  %i.bq = getelementptr inbounds nuw i8, ptr %i.p, i64 9 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !7
  %i.bs = zext i8 %i.br to i32
  %i.bt = mul nuw nsw i32 %i.bj, %i.bs
  %i.bu = lshr i32 %i.bt, 23
  %i.bv = trunc nuw i32 %i.bu to i8
  store i8 %i.bv, ptr %i.bq, align 1, !tbaa !7
  %i.bw = getelementptr inbounds nuw i8, ptr %i.p, i64 10 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !7
  %i.by = zext i8 %i.bx to i32
  %i.bz = mul nuw nsw i32 %i.bj, %i.by
  %i.ca = lshr i32 %i.bz, 23
  %i.cb = trunc nuw i32 %i.ca to i8
  store i8 %i.cb, ptr %i.bw, align 1, !tbaa !7
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %bb.g, %bb.h, %bb.f, %bb.c
  %i.cc = getelementptr inbounds i8, ptr %.0112.us.us, i64 %i.e
  %i.cd = add nsw i32 %i.n, -1
  %i.ce = icmp sgt i32 %i.n, 0
  br i1 %i.ce, label %.preheader.us.us, label %._crit_edge116, !llvm.loop !16

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %i.cf = phi i32 [ %i.dz, %._crit_edge.us ], [ %i.a, %.preheader.us.preheader ] ; 2 uses
  %.0112.us = phi ptr [ %i.dy, %._crit_edge.us ], [ %0, %.preheader.us.preheader ] ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %.preheader.us, %bb.i
  %indvars.iv139 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next140, %bb.i ] ; 2 uses
  %indvars.iv137 = phi i64 [ 4, %.preheader.us ], [ %indvars.iv.next138, %bb.i ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.0112.us, i64 %indvars.iv139 ; 2 uses
  %i.ch = load <16 x i8>, ptr %i.cg, align 1, !tbaa !7 ; 2 uses
  %i.ci = shufflevector <16 x i8> %i.ch, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.cj = shufflevector <16 x i8> %i.ch, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ck = bitcast <16 x i8> %i.ci to <8 x i16>
  %i.cl = bitcast <16 x i8> %i.ci to <8 x i16>
  %i.cm = or <8 x i16> %i.cl, <i16 0, i16 255, i16 poison, i16 poison, i16 0, i16 255, i16 poison, i16 poison>
  %i.cn = bitcast <16 x i8> %i.cj to <8 x i16>
  %i.co = bitcast <16 x i8> %i.cj to <8 x i16>
  %i.cp = or <8 x i16> %i.co, <i16 0, i16 255, i16 poison, i16 poison, i16 0, i16 255, i16 poison, i16 poison>
  %i.cq = shufflevector <8 x i16> %i.cm, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 0, i32 0, i32 5, i32 4, i32 4, i32 4>
  %i.cr = shufflevector <8 x i16> %i.cp, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 0, i32 0, i32 5, i32 4, i32 4, i32 4>
  %i.cs = mul nuw <8 x i16> %i.cq, %i.ck
  %i.ct = mul nuw <8 x i16> %i.cr, %i.cn
  %i.cu = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.cs, <8 x i16> splat (i16 -32639))
  %i.cv = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.ct, <8 x i16> splat (i16 -32639))
  %i.cw = lshr <8 x i16> %i.cu, splat (i16 7)
  %i.cx = lshr <8 x i16> %i.cv, splat (i16 7)
  %i.cy = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cw, <8 x i16> %i.cx)
  store <16 x i8> %i.cy, ptr %i.cg, align 1, !tbaa !7
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 4 ; 2 uses
  %.not100.us = icmp samesign ugt i64 %indvars.iv.next138, %i.f
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 4
  br i1 %.not100.us, label %..loopexit_crit_edge.us, label %bb.i, !llvm.loop !17

bb.j:                                             ; preds = %.lr.ph111.us, %bb.l
  %indvars.iv144 = phi i64 [ %i.k, %.lr.ph111.us ], [ %indvars.iv.next145, %bb.l ] ; 2 uses
  %i.cz = shl nuw nsw i64 %indvars.iv144, 2       ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !7   ; 2 uses
  %.not101.us = icmp eq i8 %i.db, -1
  br i1 %.not101.us, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dc = zext i8 %i.db to i32
  %i.dd = mul nuw nsw i32 %i.dc, 32897            ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.cz ; 4 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !7
  %i.dg = zext i8 %i.df to i32
  %i.dh = mul nuw nsw i32 %i.dd, %i.dg
  %i.di = lshr i32 %i.dh, 23
  %i.dj = trunc nuw i32 %i.di to i8
  store i8 %i.dj, ptr %i.de, align 1, !tbaa !7
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 1 ; 2 uses
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !7
  %i.dm = zext i8 %i.dl to i32
  %i.dn = mul nuw nsw i32 %i.dd, %i.dm
  %i.do = lshr i32 %i.dn, 23
  %i.dp = trunc nuw i32 %i.do to i8
  store i8 %i.dp, ptr %i.dk, align 1, !tbaa !7
  %i.dq = getelementptr inbounds nuw i8, ptr %i.de, i64 2 ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !7
  %i.ds = zext i8 %i.dr to i32
  %i.dt = mul nuw nsw i32 %i.dd, %i.ds
  %i.du = lshr i32 %i.dt, 23
  %i.dv = trunc nuw i32 %i.du to i8
  store i8 %i.dv, ptr %i.dq, align 1, !tbaa !7
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %i.dw = trunc nuw i64 %indvars.iv.next145 to i32
  %i.dx = icmp sgt i32 %2, %i.dw
  br i1 %i.dx, label %bb.j, label %._crit_edge.us, !llvm.loop !18

._crit_edge.us:                                   ; preds = %bb.l, %..loopexit_crit_edge.us
  %i.dy = getelementptr inbounds i8, ptr %.0112.us, i64 %i.e
  %i.dz = add nsw i32 %i.cf, -1
  %i.ea = icmp sgt i32 %i.cf, 0
  br i1 %i.ea, label %.preheader.us, label %._crit_edge116, !llvm.loop !16

..loopexit_crit_edge.us:                          ; preds = %bb.i
  br i1 %i.l, label %.lr.ph111.us, label %._crit_edge.us

.lr.ph111.us:                                     ; preds = %..loopexit_crit_edge.us
  %i.eb = getelementptr inbounds nuw i8, ptr %.0112.us, i64 %i.c
  %i.ec = getelementptr inbounds nuw i8, ptr %.0112.us, i64 %i.d
  br label %bb.j

.lr.ph115.split:                                  ; preds = %.lr.ph115
  br i1 %.not100106, label %.lr.ph115.split.split.us, label %.preheader102.preheader

.preheader102.preheader:                          ; preds = %.lr.ph115.split
  %i.ed = zext nneg i32 %2 to i64
  %i.ee = add nsw i32 %2, -4                      ; 2 uses
  %i.ef = and i32 %i.ee, 2147483644
  %narrow = add nuw nsw i32 %i.ef, 4
  %i.eg = and i32 %i.ee, -4
  %i.eh = add nuw nsw i32 %i.eg, 4
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = icmp slt i32 %narrow, %2
  br label %.preheader102

.lr.ph115.split.split.us:                         ; preds = %.lr.ph115.split
  %i.ek = icmp sgt i32 %2, 0
  br i1 %i.ek, label %.preheader102.us.preheader, label %._crit_edge116

.preheader102.us.preheader:                       ; preds = %.lr.ph115.split.split.us
  %exitcond.not = icmp eq i32 %2, 1
  %exitcond.not.1 = icmp eq i32 %2, 2
  br label %.preheader102.us

.preheader102.us:                                 ; preds = %.preheader102.us.preheader, %._crit_edge.us121
  %i.el = phi i32 [ %i.hb, %._crit_edge.us121 ], [ %i.a, %.preheader102.us.preheader ] ; 2 uses
  %.0112.us117 = phi ptr [ %i.ha, %._crit_edge.us121 ], [ %0, %.preheader102.us.preheader ] ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.0112.us117, i64 %i.c ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.0112.us117, i64 %i.d ; 10 uses
  %i.eo = load i8, ptr %i.em, align 1, !tbaa !7   ; 2 uses
  %.not101.us119 = icmp eq i8 %i.eo, -1
  br i1 %.not101.us119, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.preheader102.us
  %i.ep = zext i8 %i.eo to i32
  %i.eq = mul nuw nsw i32 %i.ep, 32897            ; 3 uses
  %i.er = load i8, ptr %i.en, align 1, !tbaa !7
  %i.es = zext i8 %i.er to i32
  %i.et = mul nuw nsw i32 %i.eq, %i.es
  %i.eu = lshr i32 %i.et, 23
  %i.ev = trunc nuw i32 %i.eu to i8
  store i8 %i.ev, ptr %i.en, align 1, !tbaa !7
  %i.ew = getelementptr inbounds nuw i8, ptr %i.en, i64 1 ; 2 uses
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !7
  %i.ey = zext i8 %i.ex to i32
  %i.ez = mul nuw nsw i32 %i.eq, %i.ey
  %i.fa = lshr i32 %i.ez, 23
  %i.fb = trunc nuw i32 %i.fa to i8
  store i8 %i.fb, ptr %i.ew, align 1, !tbaa !7
  %i.fc = getelementptr inbounds nuw i8, ptr %i.en, i64 2 ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !7
  %i.fe = zext i8 %i.fd to i32
  %i.ff = mul nuw nsw i32 %i.eq, %i.fe
  %i.fg = lshr i32 %i.ff, 23
  %i.fh = trunc nuw i32 %i.fg to i8
  store i8 %i.fh, ptr %i.fc, align 1, !tbaa !7
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.preheader102.us
  br i1 %exitcond.not, label %._crit_edge.us121, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fi = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !7   ; 2 uses
  %.not101.us119.1 = icmp eq i8 %i.fj, -1
  br i1 %.not101.us119.1, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fk = zext i8 %i.fj to i32
  %i.fl = mul nuw nsw i32 %i.fk, 32897            ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.en, i64 4 ; 2 uses
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !7
  %i.fo = zext i8 %i.fn to i32
  %i.fp = mul nuw nsw i32 %i.fl, %i.fo
  %i.fq = lshr i32 %i.fp, 23
  %i.fr = trunc nuw i32 %i.fq to i8
  store i8 %i.fr, ptr %i.fm, align 1, !tbaa !7
  %i.fs = getelementptr inbounds nuw i8, ptr %i.en, i64 5 ; 2 uses
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !7
  %i.fu = zext i8 %i.ft to i32
  %i.fv = mul nuw nsw i32 %i.fl, %i.fu
  %i.fw = lshr i32 %i.fv, 23
  %i.fx = trunc nuw i32 %i.fw to i8
  store i8 %i.fx, ptr %i.fs, align 1, !tbaa !7
  %i.fy = getelementptr inbounds nuw i8, ptr %i.en, i64 6 ; 2 uses
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !7
  %i.ga = zext i8 %i.fz to i32
  %i.gb = mul nuw nsw i32 %i.fl, %i.ga
  %i.gc = lshr i32 %i.gb, 23
  %i.gd = trunc nuw i32 %i.gc to i8
  store i8 %i.gd, ptr %i.fy, align 1, !tbaa !7
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %exitcond.not.1, label %._crit_edge.us121, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ge = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !7   ; 2 uses
  %.not101.us119.2 = icmp eq i8 %i.gf, -1
  br i1 %.not101.us119.2, label %._crit_edge.us121, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gg = zext i8 %i.gf to i32
  %i.gh = mul nuw nsw i32 %i.gg, 32897            ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 2 uses
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !7
  %i.gk = zext i8 %i.gj to i32
  %i.gl = mul nuw nsw i32 %i.gh, %i.gk
  %i.gm = lshr i32 %i.gl, 23
  %i.gn = trunc nuw i32 %i.gm to i8
  store i8 %i.gn, ptr %i.gi, align 1, !tbaa !7
  %i.go = getelementptr inbounds nuw i8, ptr %i.en, i64 9 ; 2 uses
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !7
  %i.gq = zext i8 %i.gp to i32
  %i.gr = mul nuw nsw i32 %i.gh, %i.gq
  %i.gs = lshr i32 %i.gr, 23
  %i.gt = trunc nuw i32 %i.gs to i8
  store i8 %i.gt, ptr %i.go, align 1, !tbaa !7
  %i.gu = getelementptr inbounds nuw i8, ptr %i.en, i64 10 ; 2 uses
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !7
  %i.gw = zext i8 %i.gv to i32
  %i.gx = mul nuw nsw i32 %i.gh, %i.gw
  %i.gy = lshr i32 %i.gx, 23
  %i.gz = trunc nuw i32 %i.gy to i8
  store i8 %i.gz, ptr %i.gu, align 1, !tbaa !7
  br label %._crit_edge.us121

._crit_edge.us121:                                ; preds = %bb.r, %bb.s, %bb.q, %bb.n
  %i.ha = getelementptr inbounds i8, ptr %.0112.us117, i64 %i.e
  %i.hb = add nsw i32 %i.el, -1
  %i.hc = icmp sgt i32 %i.el, 0
  br i1 %i.hc, label %.preheader102.us, label %._crit_edge116, !llvm.loop !16

.preheader102:                                    ; preds = %.preheader102.preheader, %._crit_edge
  %i.hd = phi i32 [ %i.iz, %._crit_edge ], [ %i.a, %.preheader102.preheader ] ; 2 uses
  %.0112 = phi ptr [ %i.iy, %._crit_edge ], [ %0, %.preheader102.preheader ] ; 4 uses
  br label %bb.t

bb.t:                                             ; preds = %.preheader102, %bb.t
  %indvars.iv126 = phi i64 [ 0, %.preheader102 ], [ %indvars.iv.next127, %bb.t ] ; 2 uses
  %indvars.iv = phi i64 [ 4, %.preheader102 ], [ %indvars.iv.next, %bb.t ]
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %.0112, i64 %indvars.iv126 ; 2 uses
  %i.hf = load <16 x i8>, ptr %i.he, align 1, !tbaa !7 ; 2 uses
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
  store <16 x i8> %i.hw, ptr %i.he, align 1, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not99 = icmp samesign ugt i64 %indvars.iv.next, %i.ed
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 4
  br i1 %.not99, label %..loopexit103_crit_edge, label %bb.t, !llvm.loop !19

..loopexit103_crit_edge:                          ; preds = %bb.t
  br i1 %i.ej, label %.lr.ph111, label %._crit_edge

.lr.ph111:                                        ; preds = %..loopexit103_crit_edge
  %i.hx = getelementptr inbounds nuw i8, ptr %.0112, i64 %i.c
  %i.hy = getelementptr inbounds nuw i8, ptr %.0112, i64 %i.d
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph111, %bb.w
  %indvars.iv131 = phi i64 [ %i.ei, %.lr.ph111 ], [ %indvars.iv.next132, %bb.w ] ; 2 uses
  %i.hz = shl nuw nsw i64 %indvars.iv131, 2       ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hz
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !7   ; 2 uses
  %.not101 = icmp eq i8 %i.ib, -1
  br i1 %.not101, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ic = zext i8 %i.ib to i32
  %i.id = mul nuw nsw i32 %i.ic, 32897            ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.hz ; 4 uses
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !7
  %i.ig = zext i8 %i.if to i32
  %i.ih = mul nuw nsw i32 %i.id, %i.ig
  %i.ii = lshr i32 %i.ih, 23
  %i.ij = trunc nuw i32 %i.ii to i8
  store i8 %i.ij, ptr %i.ie, align 1, !tbaa !7
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ie, i64 1 ; 2 uses
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !7
  %i.im = zext i8 %i.il to i32
  %i.in = mul nuw nsw i32 %i.id, %i.im
  %i.io = lshr i32 %i.in, 23
  %i.ip = trunc nuw i32 %i.io to i8
  store i8 %i.ip, ptr %i.ik, align 1, !tbaa !7
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ie, i64 2 ; 2 uses
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !7
  %i.is = zext i8 %i.ir to i32
  %i.it = mul nuw nsw i32 %i.id, %i.is
  %i.iu = lshr i32 %i.it, 23
  %i.iv = trunc nuw i32 %i.iu to i8
  store i8 %i.iv, ptr %i.iq, align 1, !tbaa !7
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %i.iw = trunc nuw i64 %indvars.iv.next132 to i32
  %i.ix = icmp sgt i32 %2, %i.iw
  br i1 %i.ix, label %bb.u, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.w, %..loopexit103_crit_edge
  %i.iy = getelementptr inbounds i8, ptr %.0112, i64 %i.e
  %i.iz = add nsw i32 %i.hd, -1
  %i.ja = icmp sgt i32 %i.hd, 0
  br i1 %i.ja, label %.preheader102, label %._crit_edge116, !llvm.loop !16

._crit_edge116:                                   ; preds = %._crit_edge, %._crit_edge.us121, %._crit_edge.us, %._crit_edge.us.us, %.lr.ph115.split.us.split.us, %.lr.ph115.split.split.us, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @DispatchAlpha_SSE2(ptr noalias nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noalias noundef %4, i32 noundef %5) #1 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.preheader.lr.ph, label %._crit_edge109

.preheader.lr.ph:                                 ; preds = %bb.a
  %.not89.not91 = icmp sgt i32 %2, 16
  %i.b = sext i32 %1 to i64
  %i.c = sext i32 %5 to i64
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge101
  %.0108 = phi ptr [ %0, %.preheader.lr.ph ], [ %i.bw, %._crit_edge101 ] ; 8 uses
  %.076107 = phi ptr [ %4, %.preheader.lr.ph ], [ %i.bx, %._crit_edge101 ] ; 8 uses
  %.077106 = phi i32 [ 255, %.preheader.lr.ph ], [ %.1.lcssa, %._crit_edge101 ] ; 3 uses
  %.080105 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.by, %._crit_edge101 ]
  %.081104 = phi <2 x i64> [ splat (i64 -1), %.preheader.lr.ph ], [ %.182.lcssa, %._crit_edge101 ] ; 2 uses
  %.083103 = phi <2 x i64> [ splat (i64 -1), %.preheader.lr.ph ], [ %.184, %._crit_edge101 ] ; 2 uses
  br i1 %.not89.not91, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 16, %.preheader ] ; 2 uses
  %.18293 = phi <2 x i64> [ %i.v, %.lr.ph ], [ %.081104, %.preheader ]
  %.08592 = phi ptr [ %i.w, %.lr.ph ], [ %.076107, %.preheader ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0108, i64 %indvars.iv116
  %i.e = load <2 x i64>, ptr %i.d, align 1, !tbaa !7 ; 2 uses
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
  br i1 %.not89.not, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !20

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
  %i.ac = load i64, ptr %i.ab, align 1, !tbaa !7
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
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !7   ; 2 uses
  %i.as = zext i8 %i.ar to i32
  %i.at = shl nuw nsw i64 %indvars.iv121.prol, 2
  %i.au = getelementptr inbounds nuw i8, ptr %.076107, i64 %i.at
  store i8 %i.ar, ptr %i.au, align 1, !tbaa !7
  %i.av = and i32 %.198.prol, %i.as               ; 3 uses
  %indvars.iv.next122.prol = add nuw nsw i64 %indvars.iv121.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph100.prol.loopexit, label %.lr.ph100.prol, !llvm.loop !21

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
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !7   ; 2 uses
  %i.ba = zext i8 %i.az to i32
  %i.bb = shl nuw nsw i64 %indvars.iv121, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %.076107, i64 %i.bb
  store i8 %i.az, ptr %i.bc, align 1, !tbaa !7
  %i.bd = and i32 %.198, %i.ba
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0108, i64 %indvars.iv.next122
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !7   ; 2 uses
  %i.bg = zext i8 %i.bf to i32
  %i.bh = shl nuw nsw i64 %indvars.iv.next122, 2
  %i.bi = getelementptr inbounds nuw i8, ptr %.076107, i64 %i.bh
  store i8 %i.bf, ptr %i.bi, align 1, !tbaa !7
  %i.bj = and i32 %i.bd, %i.bg
  %indvars.iv.next122.1 = add nuw nsw i64 %indvars.iv121, 2 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0108, i64 %indvars.iv.next122.1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !7   ; 2 uses
  %i.bm = zext i8 %i.bl to i32
  %i.bn = shl nuw nsw i64 %indvars.iv.next122.1, 2
  %i.bo = getelementptr inbounds nuw i8, ptr %.076107, i64 %i.bn
  store i8 %i.bl, ptr %i.bo, align 1, !tbaa !7
  %i.bp = and i32 %i.bj, %i.bm
  %indvars.iv.next122.2 = add nuw nsw i64 %indvars.iv121, 3 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0108, i64 %indvars.iv.next122.2
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !7   ; 2 uses
  %i.bs = zext i8 %i.br to i32
  %i.bt = shl nuw nsw i64 %indvars.iv.next122.2, 2
  %i.bu = getelementptr inbounds nuw i8, ptr %.076107, i64 %i.bt
  store i8 %i.br, ptr %i.bu, align 1, !tbaa !7
  %i.bv = and i32 %i.bp, %i.bs                    ; 2 uses
  %indvars.iv.next122.3 = add nuw nsw i64 %indvars.iv121, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next122.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge101, label %.lr.ph100, !llvm.loop !22

end_hunk_0
