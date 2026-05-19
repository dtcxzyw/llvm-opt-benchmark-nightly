inline.NumInlined: 10
inline.NumDeleted: 3
begin_hunk_0_@_ZL17_Bocu1FromUnicodeP25UConverterFromUnicodeArgsP10UErrorCode:bb.a
  %i.aa = icmp sgt i32 %spec.select, 0
  br i1 %i.aa, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %bb.g
  %.1148227 = phi ptr [ %i.am, %bb.g ], [ %.0147, %bb.b ] ; 4 uses
  %.1159226 = phi i32 [ %.3161, %bb.g ], [ %.0158, %bb.b ] ; 4 uses
  %.2168225 = phi i32 [ %i.an, %bb.g ], [ %spec.select, %bb.b ] ; 2 uses
  %.1175224 = phi ptr [ %.2176, %bb.g ], [ %.0174, %bb.b ] ; 4 uses
  %i.ab = load i16, ptr %.1148227, align 2        ; 5 uses
  %i.ac = zext i16 %i.ab to i32                   ; 5 uses
  %i.ad = icmp ult i16 %i.ab, 12288
  br i1 %i.ad, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph
  %i.ae = icmp samesign ult i16 %i.ab, 33
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not198 = icmp eq i16 %i.ab, 32
  %spec.select199 = select i1 %.not198, i32 %.1159226, i32 64
  %i.af = trunc nuw nsw i16 %i.ab to i8
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.ag = sub nsw i32 %i.ac, %.1159226            ; 2 uses
  %i.ah = add i32 %i.ag, 64
  %or.cond3 = icmp ult i32 %i.ah, 128
  br i1 %or.cond3, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.ai = and i32 %i.ac, 16256
  %i.aj = or disjoint i32 %i.ai, 64
  %i.ak = trunc nsw i32 %i.ag to i8
  %i.al = add i8 %i.ak, -112
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %storemerge = phi i8 [ %i.al, %bb.f ], [ %i.af, %bb.d ]
  %.3161 = phi i32 [ %i.aj, %bb.f ], [ %spec.select199, %bb.d ] ; 2 uses
  %.2176 = getelementptr inbounds nuw i8, ptr %.1175224, i64 1 ; 2 uses
  store i8 %storemerge, ptr %.1175224, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %.1148227, i64 2 ; 2 uses
  %i.an = add nsw i32 %.2168225, -1
  %i.ao = icmp sgt i32 %.2168225, 1
  br i1 %i.ao, label %.lr.ph, label %.critedge, !llvm.loop !15

.critedge:                                        ; preds = %.lr.ph, %bb.e, %bb.g, %bb.b
  %.1175.lcssa = phi ptr [ %.0174, %bb.b ], [ %.2176, %bb.g ], [ %.1175224, %bb.e ], [ %.1175224, %.lr.ph ] ; 2 uses
  %.1159.lcssa = phi i32 [ %.0158, %bb.b ], [ %.3161, %bb.g ], [ %.1159226, %bb.e ], [ %.1159226, %.lr.ph ]
  %.1148.lcssa = phi ptr [ %.0147, %bb.b ], [ %i.am, %bb.g ], [ %.1148227, %bb.e ], [ %.1148227, %.lr.ph ]
  %.2153 = phi i32 [ %.0151, %bb.b ], [ %i.ac, %bb.g ], [ %i.ac, %bb.e ], [ %i.ac, %.lr.ph ]
  %i.ap = load ptr, ptr %i.i, align 8
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %.1175.lcssa to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = trunc i64 %i.as to i32
  br label %.preheader

.preheader:                                       ; preds = %bb.z, %bb.s, %.thread204, %.critedge
  %.3177.ph = phi ptr [ %.1175.lcssa, %.critedge ], [ %i.cd, %bb.s ], [ %i.de, %bb.z ], [ %.7181, %.thread204 ] ; 3 uses
  %.3169.ph = phi i32 [ %i.at, %.critedge ], [ %i.ce, %bb.s ], [ %i.df, %bb.z ], [ %i.du, %.thread204 ] ; 2 uses
  %.4162.ph = phi i32 [ %.1159.lcssa, %.critedge ], [ %i.bz, %bb.s ], [ %i.bz, %bb.z ], [ %i.bz, %.thread204 ] ; 3 uses
  %.3154.ph = phi i32 [ %.2153, %.critedge ], [ %.6157, %bb.s ], [ %.6157, %bb.z ], [ %.6157, %.thread204 ] ; 2 uses
  %.2.ph = phi ptr [ %.1148.lcssa, %.critedge ], [ %.5, %bb.s ], [ %.5, %bb.z ], [ %.5, %.thread204 ] ; 4 uses
  %i.au = icmp ult ptr %.2.ph, %i.f
  br i1 %i.au, label %.lr.ph246.preheader, label %.loopexit

.lr.ph246.preheader:                              ; preds = %.preheader
  %i.av = icmp sgt i32 %.3169.ph, 0
  br i1 %i.av, label %.lr.ph310, label %.lr.ph246._crit_edge

.lr.ph246:                                        ; preds = %bb.h
  %i.aw = add nsw i32 %.3169242308, -1
  %i.ax = icmp sgt i32 %.3169242308, 1
  br i1 %i.ax, label %.lr.ph310, label %.lr.ph246._crit_edge.loopexit, !llvm.loop !16

.lr.ph310:                                        ; preds = %.lr.ph246.preheader, %.lr.ph246
  %.3177241309 = phi ptr [ %i.bc, %.lr.ph246 ], [ %.3177.ph, %.lr.ph246.preheader ] ; 4 uses
  %.3169242308 = phi i32 [ %i.aw, %.lr.ph246 ], [ %.3169.ph, %.lr.ph246.preheader ] ; 4 uses
  %.4162243307 = phi i32 [ %spec.select200, %.lr.ph246 ], [ %.4162.ph, %.lr.ph246.preheader ] ; 3 uses
  %.2245306 = phi ptr [ %i.ay, %.lr.ph246 ], [ %.2.ph, %.lr.ph246.preheader ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.2245306, i64 2 ; 6 uses
  %i.az = load i16, ptr %.2245306, align 2        ; 6 uses
  %i.ba = icmp ult i16 %i.az, 33
  br i1 %i.ba, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph310
  %.not197 = icmp eq i16 %i.az, 32
  %spec.select200 = select i1 %.not197, i32 %.4162243307, i32 64 ; 3 uses
  %i.bb = trunc nuw nsw i16 %i.az to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %.3177241309, i64 1 ; 3 uses
  store i8 %i.bb, ptr %.3177241309, align 1
  %i.bd = icmp ult ptr %i.ay, %i.f
  br i1 %i.bd, label %.lr.ph246, label %.loopexit.loopexit, !llvm.loop !16

bb.i:                                             ; preds = %.lr.ph310
  %i.be = zext i16 %i.az to i32                   ; 3 uses
  %i.bf = and i32 %i.be, 64512
  %i.bg = icmp eq i32 %i.bf, 55296
  br i1 %i.bg, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i, %bb.a
  %.4178 = phi ptr [ %i.h, %bb.a ], [ %.3177241309, %bb.i ] ; 2 uses
  %.4170 = phi i32 [ %i.n, %bb.a ], [ %.3169242308, %bb.i ]
  %.6164 = phi i32 [ %spec.store.select, %bb.a ], [ %.4162243307, %bb.i ] ; 2 uses
  %.4155 = phi i32 [ %i.p, %bb.a ], [ %i.be, %bb.i ] ; 3 uses
  %.3 = phi ptr [ %i.d, %bb.a ], [ %i.ay, %bb.i ] ; 4 uses
  %i.bh = icmp ult ptr %.3, %i.f
  br i1 %i.bh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bi = load i16, ptr %.3, align 2
  %i.bj = zext i16 %i.bi to i32                   ; 2 uses
  %i.bk = and i32 %i.bj, 64512
  %i.bl = icmp eq i32 %i.bk, 56320                ; 2 uses
  %i.bm = shl i32 %.4155, 10
  %i.bn = add i32 %i.bm, -56613888
  %i.bo = add i32 %i.bn, %i.bj
  %.5156 = select i1 %i.bl, i32 %i.bo, i32 %.4155
  %.4.idx = select i1 %i.bl, i64 2, i64 0
  %.4 = getelementptr inbounds nuw i8, ptr %.3, i64 %.4.idx
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bp = sub nsw i32 0, %.4155
  br label %.loopexit

bb.m:                                             ; preds = %bb.k, %bb.i
  %.5179 = phi ptr [ %.4178, %bb.k ], [ %.3177241309, %bb.i ] ; 16 uses
  %.5171 = phi i32 [ %.4170, %bb.k ], [ %.3169242308, %bb.i ] ; 7 uses
  %.7165 = phi i32 [ %.6164, %bb.k ], [ %.4162243307, %bb.i ]
  %.6157 = phi i32 [ %.5156, %bb.k ], [ %i.be, %bb.i ] ; 13 uses
  %.5 = phi ptr [ %.4, %bb.k ], [ %i.ay, %bb.i ]  ; 5 uses
  %i.bq = sub nsw i32 %.6157, %.7165              ; 7 uses
  %i.br = add i32 %.6157, -55204
  %or.cond5 = icmp ult i32 %i.br, -42852
  br i1 %or.cond5, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bs = and i32 %.6157, -128
  %i.bt = or disjoint i32 %i.bs, 64
  br label %_ZL9bocu1Previ.exit

bb.o:                                             ; preds = %bb.m
  %i.bu = icmp samesign ult i32 %.6157, 12448
  br i1 %i.bu, label %_ZL9bocu1Previ.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bv = add nsw i32 %.6157, -19968
  %or.cond.i = icmp ult i32 %i.bv, 20902
  br i1 %or.cond.i, label %_ZL9bocu1Previ.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bw = icmp samesign ugt i32 %.6157, 44031
  br i1 %i.bw, label %_ZL9bocu1Previ.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bx = and i32 %.6157, 65408
  %i.by = or disjoint i32 %i.bx, 64
  br label %_ZL9bocu1Previ.exit

_ZL9bocu1Previ.exit:                              ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %i.bz = phi i32 [ %i.bt, %bb.n ], [ %i.by, %bb.r ], [ 12400, %bb.o ], [ 30481, %bb.p ], [ 49617, %bb.q ] ; 5 uses
  %i.ca = add i32 %i.bq, 64
  %or.cond7 = icmp ult i32 %i.ca, 128
  br i1 %or.cond7, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZL9bocu1Previ.exit
  %i.cb = trunc nsw i32 %i.bq to i8
  %i.cc = add i8 %i.cb, -112
  %i.cd = getelementptr inbounds nuw i8, ptr %.5179, i64 1 ; 2 uses
  store i8 %i.cc, ptr %.5179, align 1
  %i.ce = add nsw i32 %.5171, -1                  ; 2 uses
  %i.cf = icmp slt i32 %.6157, 12288
  br i1 %i.cf, label %bb.b, label %.preheader, !llvm.loop !16

bb.t:                                             ; preds = %_ZL9bocu1Previ.exit
  %i.cg = add i32 %i.bq, 10513
  %or.cond9 = icmp ult i32 %i.cg, 21026
  %i.ch = icmp samesign ugt i32 %.5171, 1
  %or.cond11 = select i1 %or.cond9, i1 %i.ch, i1 false
  br i1 %or.cond11, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.ci = icmp sgt i32 %i.bq, -1
  br i1 %i.ci, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cj = trunc nuw nsw i32 %i.bq to i16
  %.lhs.trunc = add nsw i16 %i.cj, -64            ; 2 uses
  %i.ck = srem i16 %.lhs.trunc, 243
  %.sext = sext i16 %i.ck to i32
  %i.cl = sdiv i16 %.lhs.trunc, 243
  %narrow = add nuw nsw i16 %i.cl, 208
  %i.cm = zext nneg i16 %narrow to i32
  br label %select.unfold

bb.w:                                             ; preds = %bb.u
  %.nonneg = sub nsw i32 -64, %i.bq               ; 2 uses
  %i.cn = urem i32 %.nonneg, 243                  ; 2 uses
  %i.co = udiv i32 %.nonneg, 243                  ; 2 uses
  %.neg211 = sub nsw i32 0, %i.co
  %.not212 = icmp eq i32 %i.cn, 0                 ; 2 uses
  %2 = xor i32 %i.co, -1
  %i.cp = sub nuw nsw i32 243, %i.cn
  %.0149 = select i1 %.not212, i32 %.neg211, i32 %2
  %i.cq = add nsw i32 %.0149, 80                  ; 2 uses
  br i1 %.not212, label %.thread, label %select.unfold

.thread:                                          ; preds = %bb.w
  %i.cr = trunc nuw i32 %i.cq to i8
  %i.cs = getelementptr inbounds nuw i8, ptr %.5179, i64 1
  store i8 %i.cr, ptr %.5179, align 1
  br label %bb.y

select.unfold:                                    ; preds = %bb.w, %bb.v
  %.1150 = phi i32 [ %i.cm, %bb.v ], [ %i.cq, %bb.w ]
  %.1146 = phi i32 [ %.sext, %bb.v ], [ %i.cp, %bb.w ] ; 3 uses
  %i.ct = trunc nuw i32 %.1150 to i8
  %i.cu = getelementptr inbounds nuw i8, ptr %.5179, i64 1 ; 2 uses
  store i8 %i.ct, ptr %.5179, align 1
  %i.cv = icmp sgt i32 %.1146, 19
  br i1 %i.cv, label %bb.x, label %bb.y

bb.x:                                             ; preds = %select.unfold
  %i.cw = trunc nuw i32 %.1146 to i8
  %i.cx = add nuw i8 %i.cw, 13
  br label %bb.z

bb.y:                                             ; preds = %.thread, %select.unfold
  %i.cy = phi ptr [ %i.cs, %.thread ], [ %i.cu, %select.unfold ]
  %.1146203 = phi i32 [ 0, %.thread ], [ %.1146, %select.unfold ]
  %i.cz = sext i32 %.1146203 to i64
  %i.da = getelementptr inbounds i8, ptr @_ZL16bocu1TrailToByte, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dc = phi ptr [ %i.cu, %bb.x ], [ %i.cy, %bb.y ]
  %i.dd = phi i8 [ %i.cx, %bb.x ], [ %i.db, %bb.y ]
  %i.de = getelementptr inbounds nuw i8, ptr %.5179, i64 2
  store i8 %i.dd, ptr %i.dc, align 1
  %i.df = add nsw i32 %.5171, -2
  br label %.preheader, !llvm.loop !16

bb.aa:                                            ; preds = %bb.t
  %i.dg = tail call fastcc noundef i32 @_ZL8packDiffi(i32 noundef %i.bq) ; 9 uses
  %i.dh = icmp ult i32 %i.dg, 67108864
  %i.di = ashr i32 %i.dg, 24                      ; 2 uses
  %i.dj = select i1 %i.dh, i32 %i.di, i32 4       ; 4 uses
  %.not = icmp sgt i32 %i.dj, %.5171
  br i1 %.not, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  switch i32 %i.dj, label %.thread204 [
    i32 4, label %bb.ac
    i32 3, label %bb.ad
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.dk = trunc nsw i32 %i.di to i8
  %i.dl = getelementptr inbounds nuw i8, ptr %.5179, i64 1
  store i8 %i.dk, ptr %.5179, align 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.6180 = phi ptr [ %i.dl, %bb.ac ], [ %.5179, %bb.ab ] ; 4 uses
  %i.dm = lshr i32 %i.dg, 16
  %i.dn = trunc i32 %i.dm to i8
  %i.do = getelementptr inbounds nuw i8, ptr %.6180, i64 1
  store i8 %i.dn, ptr %.6180, align 1
  %i.dp = lshr i32 %i.dg, 8
  %i.dq = trunc i32 %i.dp to i8
  %i.dr = getelementptr inbounds nuw i8, ptr %.6180, i64 2
  store i8 %i.dq, ptr %i.do, align 1
  %i.ds = trunc i32 %i.dg to i8
  %i.dt = getelementptr inbounds nuw i8, ptr %.6180, i64 3
  store i8 %i.ds, ptr %i.dr, align 1
  br label %.thread204

.thread204:                                       ; preds = %bb.ad, %bb.ab
  %.7181 = phi ptr [ %.5179, %bb.ab ], [ %i.dt, %bb.ad ]
  %i.du = sub nsw i32 %.5171, %i.dj
  br label %.preheader, !llvm.loop !16

bb.ae:                                            ; preds = %bb.aa
  %i.dv = sub nsw i32 %i.dj, %.5171               ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 3 uses
  switch i32 %i.dv, label %bb.ai [
    i32 3, label %bb.af
    i32 2, label %bb.ag
    i32 1, label %bb.ah
  ]

bb.af:                                            ; preds = %bb.ae
  %i.dx = lshr i32 %i.dg, 16
  %i.dy = trunc i32 %i.dx to i8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 105
  store i8 %i.dy, ptr %i.dw, align 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.0144 = phi ptr [ %i.dz, %bb.af ], [ %i.dw, %bb.ae ] ; 2 uses
  %i.ea = lshr i32 %i.dg, 8
  %i.eb = trunc i32 %i.ea to i8
  %i.ec = getelementptr inbounds nuw i8, ptr %.0144, i64 1
  store i8 %i.eb, ptr %.0144, align 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  %.1 = phi ptr [ %i.ec, %bb.ag ], [ %i.dw, %bb.ae ]
  %i.ed = trunc i32 %i.dg to i8
  store i8 %i.ed, ptr %.1, align 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ae, %bb.ah
  %i.ee = trunc nsw i32 %i.dv to i8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 91
  store i8 %i.ee, ptr %i.ef, align 1
  %i.eg = shl nsw i32 %i.dv, 3
  %i.eh = ashr i32 %i.dg, %i.eg                   ; 3 uses
  switch i32 %.5171, label %bb.am [
    i32 3, label %bb.aj
    i32 2, label %bb.ak
    i32 1, label %bb.al
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.ei = lshr i32 %i.eh, 16
  %i.ej = trunc i32 %i.ei to i8
  %i.ek = getelementptr inbounds nuw i8, ptr %.5179, i64 1
  store i8 %i.ej, ptr %.5179, align 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.8182 = phi ptr [ %i.ek, %bb.aj ], [ %.5179, %bb.ai ] ; 2 uses
  %i.el = lshr i32 %i.eh, 8
  %i.em = trunc i32 %i.el to i8
  %i.en = getelementptr inbounds nuw i8, ptr %.8182, i64 1
  store i8 %i.em, ptr %.8182, align 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ai
  %.9 = phi ptr [ %i.en, %bb.ak ], [ %.5179, %bb.ai ] ; 2 uses
  %i.eo = trunc i32 %i.eh to i8
  %i.ep = getelementptr inbounds nuw i8, ptr %.9, i64 1
  store i8 %i.eo, ptr %.9, align 1
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ai
  %.10 = phi ptr [ %.5179, %bb.ai ], [ %i.ep, %bb.al ]
  store i32 15, ptr %1, align 4
  br label %.loopexit

.lr.ph246._crit_edge.loopexit:                    ; preds = %.lr.ph246
  %i.eq = zext i16 %i.az to i32
  br label %.lr.ph246._crit_edge

.lr.ph246._crit_edge:                             ; preds = %.lr.ph246._crit_edge.loopexit, %.lr.ph246.preheader
  %.2245.lcssa = phi ptr [ %.2.ph, %.lr.ph246.preheader ], [ %i.ay, %.lr.ph246._crit_edge.loopexit ]
  %.3154244.lcssa = phi i32 [ %.3154.ph, %.lr.ph246.preheader ], [ %i.eq, %.lr.ph246._crit_edge.loopexit ]
  %.4162243.lcssa = phi i32 [ %.4162.ph, %.lr.ph246.preheader ], [ %spec.select200, %.lr.ph246._crit_edge.loopexit ]
  %.3177241.lcssa = phi ptr [ %.3177.ph, %.lr.ph246.preheader ], [ %i.bc, %.lr.ph246._crit_edge.loopexit ]
  store i32 15, ptr %1, align 4
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.h
  %i.er = zext i16 %i.az to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %bb.am, %.lr.ph246._crit_edge, %bb.l
  %.13 = phi ptr [ %.3177241.lcssa, %.lr.ph246._crit_edge ], [ %.4178, %bb.l ], [ %.10, %bb.am ], [ %.3177.ph, %.preheader ], [ %i.bc, %.loopexit.loopexit ]
  %.8 = phi i32 [ %.4162243.lcssa, %.lr.ph246._crit_edge ], [ %.6164, %bb.l ], [ %i.bz, %bb.am ], [ %.4162.ph, %.preheader ], [ %spec.select200, %.loopexit.loopexit ]
  %.7 = phi i32 [ %.3154244.lcssa, %.lr.ph246._crit_edge ], [ %i.bp, %bb.l ], [ %.6157, %bb.am ], [ %.3154.ph, %.preheader ], [ %i.er, %.loopexit.loopexit ] ; 2 uses
  %.6 = phi ptr [ %.2245.lcssa, %.lr.ph246._crit_edge ], [ %.3, %bb.l ], [ %.5, %bb.am ], [ %.2.ph, %.preheader ], [ %i.ay, %.loopexit.loopexit ]
  %i.es = icmp slt i32 %.7, 0
  %i.et = sub nsw i32 0, %.7
  %i.eu = select i1 %i.es, i32 %i.et, i32 0
  store i32 %i.eu, ptr %i.o, align 4
  store i32 %.8, ptr %i.q, align 8
  store ptr %.6, ptr %i.c, align 8
  store ptr %.13, ptr %i.g, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL28_Bocu1FromUnicodeWithOffsetsP25UConverterFromUnicodeArgsP10UErrorCode(ptr noundef captures(none) %0, ptr noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 84 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4              ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  %spec.store.select = select i1 %i.u, i32 64, i32 %i.t ; 2 uses
  %i.v = icmp ne i32 %i.r, 0                      ; 2 uses
  %i.w = sext i1 %i.v to i32
  %i.x = icmp sgt i32 %i.n, 0
  %or.cond = select i1 %i.v, i1 %i.x, i1 false
  br i1 %or.cond, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.s, %bb.a
  %.0236 = phi ptr [ %i.ch, %bb.s ], [ %i.h, %bb.a ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZL28_Bocu1FromUnicodeWithOffsetsP25UConverterFromUnicodeArgsP10UErrorCode:bb.a

bb.e:                                             ; preds = %bb.c
  %i.aj = sub nsw i32 %i.af, %.1211302            ; 2 uses
  %i.ak = add i32 %i.aj, 64
  %or.cond3 = icmp ult i32 %i.ak, 128
  br i1 %or.cond3, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.al = and i32 %i.af, 16256
  %i.am = or disjoint i32 %i.al, 64
  %i.an = trunc nsw i32 %i.aj to i8
  %i.ao = add i8 %i.an, -112
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %storemerge = phi i8 [ %i.ao, %bb.f ], [ %i.ai, %bb.d ]
  %.3213 = phi i32 [ %i.am, %bb.f ], [ %spec.select267, %bb.d ] ; 2 uses
  store i8 %storemerge, ptr %.1237299, align 1
  store i32 %.1189303, ptr %.1219301, align 4
  %.2 = getelementptr inbounds nuw i8, ptr %.1187304, i64 2 ; 2 uses
  %.2190 = add nsw i32 %.1189303, 1               ; 2 uses
  %.2220 = getelementptr inbounds nuw i8, ptr %.1219301, i64 4 ; 2 uses
  %.3230 = add nsw i32 %.2229300, -1
  %.2238 = getelementptr inbounds nuw i8, ptr %.1237299, i64 1 ; 2 uses
  %i.ap = icmp sgt i32 %.2229300, 1
  br i1 %i.ap, label %.lr.ph, label %.critedge, !llvm.loop !17

.critedge:                                        ; preds = %.lr.ph, %bb.e, %bb.g, %bb.b
  %.1237.lcssa = phi ptr [ %.0236, %bb.b ], [ %.2238, %bb.g ], [ %.1237299, %bb.e ], [ %.1237299, %.lr.ph ] ; 2 uses
  %.1219.lcssa = phi ptr [ %.0218, %bb.b ], [ %.2220, %bb.g ], [ %.1219301, %bb.e ], [ %.1219301, %.lr.ph ]
  %.1211.lcssa = phi i32 [ %.0210, %bb.b ], [ %.3213, %bb.g ], [ %.1211302, %bb.e ], [ %.1211302, %.lr.ph ]
  %.1189.lcssa = phi i32 [ %.0188, %bb.b ], [ %.2190, %bb.g ], [ %.1189303, %bb.e ], [ %.1189303, %.lr.ph ]
  %.1187.lcssa = phi ptr [ %.0186, %bb.b ], [ %.2, %bb.g ], [ %.1187304, %bb.e ], [ %.1187304, %.lr.ph ]
  %.2204 = phi i32 [ %.0202, %bb.b ], [ %i.af, %bb.g ], [ %i.af, %bb.e ], [ %i.af, %.lr.ph ]
  %i.aq = load ptr, ptr %i.i, align 8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %.1237.lcssa to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = trunc i64 %i.at to i32
  br label %.preheader

.preheader:                                       ; preds = %bb.z, %bb.s, %.thread272, %.critedge
  %.3239.ph = phi ptr [ %.1237.lcssa, %.critedge ], [ %i.ch, %bb.s ], [ %i.dj, %bb.z ], [ %.8244, %.thread272 ] ; 3 uses
  %.4231.ph = phi i32 [ %i.au, %.critedge ], [ %i.cj, %bb.s ], [ %i.dm, %bb.z ], [ %i.ef, %.thread272 ] ; 2 uses
  %.3221.ph = phi ptr [ %.1219.lcssa, %.critedge ], [ %i.ci, %bb.s ], [ %i.dl, %bb.z ], [ %.8226, %.thread272 ] ; 3 uses
  %.4214.ph = phi i32 [ %.1211.lcssa, %.critedge ], [ %i.cd, %bb.s ], [ %i.cd, %bb.z ], [ %i.cd, %.thread272 ] ; 3 uses
  %.3205.ph = phi i32 [ %.2204, %.critedge ], [ %.6208, %bb.s ], [ %.6208, %bb.z ], [ %.6208, %.thread272 ] ; 2 uses
  %.0195.ph = phi i32 [ %.1189.lcssa, %.critedge ], [ %.6194, %bb.s ], [ %.6194, %bb.z ], [ %.6194, %.thread272 ]
  %.3.ph = phi ptr [ %.1187.lcssa, %.critedge ], [ %.6, %bb.s ], [ %.6, %bb.z ], [ %.6, %.thread272 ] ; 4 uses
  %i.av = icmp ult ptr %.3.ph, %i.f
  br i1 %i.av, label %.lr.ph331.preheader, label %.loopexit

.lr.ph331.preheader:                              ; preds = %.preheader
  %i.aw = icmp sgt i32 %.4231.ph, 0
  br i1 %i.aw, label %.lr.ph419, label %.lr.ph331._crit_edge

.lr.ph331:                                        ; preds = %bb.h
  %i.ax = add nsw i32 %.4231325417, -1
  %i.ay = icmp sgt i32 %.4231325417, 1
  br i1 %i.ay, label %.lr.ph419, label %.lr.ph331._crit_edge.loopexit, !llvm.loop !18

.lr.ph419:                                        ; preds = %.lr.ph331.preheader, %.lr.ph331
  %.3239324418 = phi ptr [ %i.be, %.lr.ph331 ], [ %.3239.ph, %.lr.ph331.preheader ] ; 4 uses
  %.4231325417 = phi i32 [ %i.ax, %.lr.ph331 ], [ %.4231.ph, %.lr.ph331.preheader ] ; 4 uses
  %.3221326416 = phi ptr [ %i.bf, %.lr.ph331 ], [ %.3221.ph, %.lr.ph331.preheader ] ; 4 uses
  %.4214327415 = phi i32 [ %spec.select268, %.lr.ph331 ], [ %.4214.ph, %.lr.ph331.preheader ] ; 3 uses
  %.0195329414 = phi i32 [ %i.bb, %.lr.ph331 ], [ %.0195.ph, %.lr.ph331.preheader ] ; 4 uses
  %.3330413 = phi ptr [ %i.az, %.lr.ph331 ], [ %.3.ph, %.lr.ph331.preheader ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.3330413, i64 2 ; 6 uses
  %i.ba = load i16, ptr %.3330413, align 2        ; 6 uses
  %i.bb = add nsw i32 %.0195329414, 1             ; 3 uses
  %i.bc = icmp ult i16 %i.ba, 33
  br i1 %i.bc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph419
  %.not265 = icmp eq i16 %i.ba, 32
  %spec.select268 = select i1 %.not265, i32 %.4214327415, i32 64 ; 3 uses
  %i.bd = trunc nuw nsw i16 %i.ba to i8
  %i.be = getelementptr inbounds nuw i8, ptr %.3239324418, i64 1 ; 3 uses
  store i8 %i.bd, ptr %.3239324418, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %.3221326416, i64 4 ; 3 uses
  store i32 %.0195329414, ptr %.3221326416, align 4
  %i.bg = icmp ult ptr %i.az, %i.f
  br i1 %i.bg, label %.lr.ph331, label %.loopexit.loopexit, !llvm.loop !18

bb.i:                                             ; preds = %.lr.ph419
  %i.bh = zext i16 %i.ba to i32                   ; 3 uses
  %i.bi = and i32 %i.bh, 64512
  %i.bj = icmp eq i32 %i.bi, 55296
  br i1 %i.bj, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i, %bb.a
  %.4240 = phi ptr [ %i.h, %bb.a ], [ %.3239324418, %bb.i ] ; 2 uses
  %.5232 = phi i32 [ %i.n, %bb.a ], [ %.4231325417, %bb.i ]
  %.4222 = phi ptr [ %i.p, %bb.a ], [ %.3221326416, %bb.i ] ; 2 uses
  %.6216 = phi i32 [ %spec.store.select, %bb.a ], [ %.4214327415, %bb.i ] ; 2 uses
  %.4206 = phi i32 [ %i.r, %bb.a ], [ %i.bh, %bb.i ] ; 3 uses
  %.1196 = phi i32 [ %i.w, %bb.a ], [ %.0195329414, %bb.i ]
  %.4192 = phi i32 [ 0, %bb.a ], [ %i.bb, %bb.i ]
  %.4 = phi ptr [ %i.d, %bb.a ], [ %i.az, %bb.i ] ; 4 uses
  %i.bk = icmp ult ptr %.4, %i.f
  br i1 %i.bk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bl = load i16, ptr %.4, align 2
  %i.bm = zext i16 %i.bl to i32                   ; 2 uses
  %i.bn = and i32 %i.bm, 64512
  %i.bo = icmp eq i32 %i.bn, 56320                ; 3 uses
  %i.bp = shl i32 %.4206, 10
  %i.bq = add i32 %i.bp, -56613888
  %i.br = add i32 %i.bq, %i.bm
  %.5207 = select i1 %i.bo, i32 %i.br, i32 %.4206
  %i.bs = zext i1 %i.bo to i32
  %.5193 = add nsw i32 %.4192, %i.bs
  %.5.idx = select i1 %i.bo, i64 2, i64 0
  %.5 = getelementptr inbounds nuw i8, ptr %.4, i64 %.5.idx
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bt = sub nsw i32 0, %.4206
  br label %.loopexit

bb.m:                                             ; preds = %bb.k, %bb.i
  %.5241 = phi ptr [ %.4240, %bb.k ], [ %.3239324418, %bb.i ] ; 17 uses
  %.6233 = phi i32 [ %.5232, %bb.k ], [ %.4231325417, %bb.i ] ; 7 uses
  %.5223 = phi ptr [ %.4222, %bb.k ], [ %.3221326416, %bb.i ] ; 15 uses
  %.7217 = phi i32 [ %.6216, %bb.k ], [ %.4214327415, %bb.i ]
  %.6208 = phi i32 [ %.5207, %bb.k ], [ %i.bh, %bb.i ] ; 13 uses
  %.2197 = phi i32 [ %.1196, %bb.k ], [ %.0195329414, %bb.i ] ; 10 uses
  %.6194 = phi i32 [ %.5193, %bb.k ], [ %i.bb, %bb.i ] ; 4 uses
  %.6 = phi ptr [ %.5, %bb.k ], [ %i.az, %bb.i ]  ; 5 uses
  %i.bu = sub nsw i32 %.6208, %.7217              ; 7 uses
  %i.bv = add i32 %.6208, -55204
  %or.cond5 = icmp ult i32 %i.bv, -42852
  br i1 %or.cond5, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bw = and i32 %.6208, -128
  %i.bx = or disjoint i32 %i.bw, 64
  br label %_ZL9bocu1Previ.exit

bb.o:                                             ; preds = %bb.m
  %i.by = icmp samesign ult i32 %.6208, 12448
  br i1 %i.by, label %_ZL9bocu1Previ.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = add nsw i32 %.6208, -19968
  %or.cond.i = icmp ult i32 %i.bz, 20902
  br i1 %or.cond.i, label %_ZL9bocu1Previ.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ca = icmp samesign ugt i32 %.6208, 44031
  br i1 %i.ca, label %_ZL9bocu1Previ.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = and i32 %.6208, 65408
  %i.cc = or disjoint i32 %i.cb, 64
  br label %_ZL9bocu1Previ.exit

_ZL9bocu1Previ.exit:                              ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %i.cd = phi i32 [ %i.bx, %bb.n ], [ %i.cc, %bb.r ], [ 12400, %bb.o ], [ 30481, %bb.p ], [ 49617, %bb.q ] ; 5 uses
  %i.ce = add i32 %i.bu, 64
  %or.cond7 = icmp ult i32 %i.ce, 128
  br i1 %or.cond7, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZL9bocu1Previ.exit
  %i.cf = trunc nsw i32 %i.bu to i8
  %i.cg = add i8 %i.cf, -112
  %i.ch = getelementptr inbounds nuw i8, ptr %.5241, i64 1 ; 2 uses
  store i8 %i.cg, ptr %.5241, align 1
  %i.ci = getelementptr inbounds nuw i8, ptr %.5223, i64 4 ; 2 uses
  store i32 %.2197, ptr %.5223, align 4
  %i.cj = add nsw i32 %.6233, -1                  ; 2 uses
  %i.ck = icmp slt i32 %.6208, 12288
  br i1 %i.ck, label %bb.b, label %.preheader, !llvm.loop !18

bb.t:                                             ; preds = %_ZL9bocu1Previ.exit
  %i.cl = add i32 %i.bu, 10513
  %or.cond9 = icmp ult i32 %i.cl, 21026
  %i.cm = icmp samesign ugt i32 %.6233, 1
  %or.cond11 = select i1 %or.cond9, i1 %i.cm, i1 false
  br i1 %or.cond11, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.cn = icmp sgt i32 %i.bu, -1
  br i1 %i.cn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.co = trunc nuw nsw i32 %i.bu to i16
  %.lhs.trunc = add nsw i16 %i.co, -64            ; 2 uses
  %i.cp = srem i16 %.lhs.trunc, 243
  %.sext = sext i16 %i.cp to i32
  %i.cq = sdiv i16 %.lhs.trunc, 243
  %narrow = add nuw nsw i16 %i.cq, 208
  %i.cr = zext nneg i16 %narrow to i32
  br label %select.unfold

bb.w:                                             ; preds = %bb.u
  %.nonneg = sub nsw i32 -64, %i.bu               ; 2 uses
  %i.cs = urem i32 %.nonneg, 243                  ; 2 uses
  %i.ct = udiv i32 %.nonneg, 243                  ; 2 uses
  %.neg281 = sub nsw i32 0, %i.ct
  %.not282 = icmp eq i32 %i.cs, 0                 ; 2 uses
  %2 = xor i32 %i.ct, -1
  %i.cu = sub nuw nsw i32 243, %i.cs
  %.0200 = select i1 %.not282, i32 %.neg281, i32 %2
  %i.cv = add nsw i32 %.0200, 80                  ; 2 uses
  br i1 %.not282, label %.thread, label %select.unfold

.thread:                                          ; preds = %bb.w
  %i.cw = trunc nuw i32 %i.cv to i8
  %i.cx = getelementptr inbounds nuw i8, ptr %.5241, i64 1
  store i8 %i.cw, ptr %.5241, align 1
  br label %bb.y

select.unfold:                                    ; preds = %bb.w, %bb.v
  %.1201 = phi i32 [ %i.cr, %bb.v ], [ %i.cv, %bb.w ]
  %.1185 = phi i32 [ %.sext, %bb.v ], [ %i.cu, %bb.w ] ; 3 uses
  %i.cy = trunc nuw i32 %.1201 to i8
  %i.cz = getelementptr inbounds nuw i8, ptr %.5241, i64 1 ; 2 uses
  store i8 %i.cy, ptr %.5241, align 1
  %i.da = icmp sgt i32 %.1185, 19
  br i1 %i.da, label %bb.x, label %bb.y

bb.x:                                             ; preds = %select.unfold
  %i.db = trunc nuw i32 %.1185 to i8
  %i.dc = add nuw i8 %i.db, 13
  br label %bb.z

bb.y:                                             ; preds = %.thread, %select.unfold
  %i.dd = phi ptr [ %i.cx, %.thread ], [ %i.cz, %select.unfold ]
  %.1185271 = phi i32 [ 0, %.thread ], [ %.1185, %select.unfold ]
  %i.de = sext i32 %.1185271 to i64
  %i.df = getelementptr inbounds i8, ptr @_ZL16bocu1TrailToByte, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dh = phi ptr [ %i.cz, %bb.x ], [ %i.dd, %bb.y ]
  %i.di = phi i8 [ %i.dc, %bb.x ], [ %i.dg, %bb.y ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.5241, i64 2
  store i8 %i.di, ptr %i.dh, align 1
  %i.dk = getelementptr inbounds nuw i8, ptr %.5223, i64 4
  store i32 %.2197, ptr %.5223, align 4
  %i.dl = getelementptr inbounds nuw i8, ptr %.5223, i64 8
  store i32 %.2197, ptr %i.dk, align 4
  %i.dm = add nsw i32 %.6233, -2
  br label %.preheader, !llvm.loop !18

bb.aa:                                            ; preds = %bb.t
  %i.dn = tail call fastcc noundef i32 @_ZL8packDiffi(i32 noundef %i.bu) ; 9 uses
  %i.do = icmp ult i32 %i.dn, 67108864
  %i.dp = ashr i32 %i.dn, 24                      ; 2 uses
  %i.dq = select i1 %i.do, i32 %i.dp, i32 4       ; 4 uses
  %.not = icmp sgt i32 %i.dq, %.6233
  br i1 %.not, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  switch i32 %i.dq, label %.thread272 [
    i32 4, label %bb.ac
    i32 3, label %bb.ad
    i32 2, label %bb.ae
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.dr = trunc nsw i32 %i.dp to i8
  %i.ds = getelementptr inbounds nuw i8, ptr %.5241, i64 1
  store i8 %i.dr, ptr %.5241, align 1
  %i.dt = getelementptr inbounds nuw i8, ptr %.5223, i64 4
  store i32 %.2197, ptr %.5223, align 4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.6242 = phi ptr [ %i.ds, %bb.ac ], [ %.5241, %bb.ab ] ; 2 uses
  %.6224 = phi ptr [ %i.dt, %bb.ac ], [ %.5223, %bb.ab ] ; 2 uses
  %i.du = lshr i32 %i.dn, 16
  %i.dv = trunc i32 %i.du to i8
  %i.dw = getelementptr inbounds nuw i8, ptr %.6242, i64 1
  store i8 %i.dv, ptr %.6242, align 1
  %i.dx = getelementptr inbounds nuw i8, ptr %.6224, i64 4
  store i32 %.2197, ptr %.6224, align 4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ab
  %.7243 = phi ptr [ %i.dw, %bb.ad ], [ %.5241, %bb.ab ] ; 3 uses
  %.7225 = phi ptr [ %i.dx, %bb.ad ], [ %.5223, %bb.ab ] ; 3 uses
  %i.dy = lshr i32 %i.dn, 8
  %i.dz = trunc i32 %i.dy to i8
  %i.ea = getelementptr inbounds nuw i8, ptr %.7243, i64 1
  store i8 %i.dz, ptr %.7243, align 1
  %i.eb = getelementptr inbounds nuw i8, ptr %.7225, i64 4
  store i32 %.2197, ptr %.7225, align 4
  %i.ec = trunc i32 %i.dn to i8
  %i.ed = getelementptr inbounds nuw i8, ptr %.7243, i64 2
  store i8 %i.ec, ptr %i.ea, align 1
  %i.ee = getelementptr inbounds nuw i8, ptr %.7225, i64 8
  store i32 %.2197, ptr %i.eb, align 4
  br label %.thread272

.thread272:                                       ; preds = %bb.ae, %bb.ab
  %.8244 = phi ptr [ %.5241, %bb.ab ], [ %i.ed, %bb.ae ]
  %.8226 = phi ptr [ %.5223, %bb.ab ], [ %i.ee, %bb.ae ]
  %i.ef = sub nsw i32 %.6233, %i.dq
  br label %.preheader, !llvm.loop !18

bb.af:                                            ; preds = %bb.aa
  %i.eg = sub nsw i32 %i.dq, %.6233               ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 3 uses
  switch i32 %i.eg, label %bb.aj [
    i32 3, label %bb.ag
    i32 2, label %bb.ah
    i32 1, label %bb.ai
  ]

bb.ag:                                            ; preds = %bb.af
  %i.ei = lshr i32 %i.dn, 16
  %i.ej = trunc i32 %i.ei to i8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 105
  store i8 %i.ej, ptr %i.eh, align 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.0183 = phi ptr [ %i.ek, %bb.ag ], [ %i.eh, %bb.af ] ; 2 uses
  %i.el = lshr i32 %i.dn, 8
  %i.em = trunc i32 %i.el to i8
  %i.en = getelementptr inbounds nuw i8, ptr %.0183, i64 1
  store i8 %i.em, ptr %.0183, align 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af
  %.1 = phi ptr [ %i.en, %bb.ah ], [ %i.eh, %bb.af ]
  %i.eo = trunc i32 %i.dn to i8
  store i8 %i.eo, ptr %.1, align 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.af, %bb.ai
  %i.ep = trunc nsw i32 %i.eg to i8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 91
  store i8 %i.ep, ptr %i.eq, align 1
  %i.er = shl nsw i32 %i.eg, 3
  %i.es = ashr i32 %i.dn, %i.er                   ; 3 uses
  switch i32 %.6233, label %bb.an [
    i32 3, label %bb.ak
    i32 2, label %bb.al
    i32 1, label %bb.am
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.et = lshr i32 %i.es, 16
  %i.eu = trunc i32 %i.et to i8
  %i.ev = getelementptr inbounds nuw i8, ptr %.5241, i64 1
  store i8 %i.eu, ptr %.5241, align 1
  %i.ew = getelementptr inbounds nuw i8, ptr %.5223, i64 4
  store i32 %.2197, ptr %.5223, align 4
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.9245 = phi ptr [ %i.ev, %bb.ak ], [ %.5241, %bb.aj ] ; 2 uses
  %.9 = phi ptr [ %i.ew, %bb.ak ], [ %.5223, %bb.aj ] ; 2 uses
  %i.ex = lshr i32 %i.es, 8
  %i.ey = trunc i32 %i.ex to i8
  %i.ez = getelementptr inbounds nuw i8, ptr %.9245, i64 1
  store i8 %i.ey, ptr %.9245, align 1
  %i.fa = getelementptr inbounds nuw i8, ptr %.9, i64 4
  store i32 %.2197, ptr %.9, align 4
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.aj
  %.10246 = phi ptr [ %i.ez, %bb.al ], [ %.5241, %bb.aj ] ; 2 uses
  %.10 = phi ptr [ %i.fa, %bb.al ], [ %.5223, %bb.aj ] ; 2 uses
  %i.fb = trunc i32 %i.es to i8
  %i.fc = getelementptr inbounds nuw i8, ptr %.10246, i64 1
  store i8 %i.fb, ptr %.10246, align 1
  %i.fd = getelementptr inbounds nuw i8, ptr %.10, i64 4
  store i32 %.2197, ptr %.10, align 4
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aj
  %.11247 = phi ptr [ %.5241, %bb.aj ], [ %i.fc, %bb.am ]
  %.11 = phi ptr [ %.5223, %bb.aj ], [ %i.fd, %bb.am ]
  store i32 15, ptr %1, align 4
  br label %.loopexit

.lr.ph331._crit_edge.loopexit:                    ; preds = %.lr.ph331
  %i.fe = zext i16 %i.ba to i32
  br label %.lr.ph331._crit_edge

.lr.ph331._crit_edge:                             ; preds = %.lr.ph331._crit_edge.loopexit, %.lr.ph331.preheader
  %.3330.lcssa = phi ptr [ %.3.ph, %.lr.ph331.preheader ], [ %i.az, %.lr.ph331._crit_edge.loopexit ]
  %.3205328.lcssa = phi i32 [ %.3205.ph, %.lr.ph331.preheader ], [ %i.fe, %.lr.ph331._crit_edge.loopexit ]
  %.4214327.lcssa = phi i32 [ %.4214.ph, %.lr.ph331.preheader ], [ %spec.select268, %.lr.ph331._crit_edge.loopexit ]
  %.3221326.lcssa = phi ptr [ %.3221.ph, %.lr.ph331.preheader ], [ %i.bf, %.lr.ph331._crit_edge.loopexit ]
  %.3239324.lcssa = phi ptr [ %.3239.ph, %.lr.ph331.preheader ], [ %i.be, %.lr.ph331._crit_edge.loopexit ]
  store i32 15, ptr %1, align 4
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.h
  %i.ff = zext i16 %i.ba to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %bb.an, %.lr.ph331._crit_edge, %bb.l
  %.14250 = phi ptr [ %.3239324.lcssa, %.lr.ph331._crit_edge ], [ %.4240, %bb.l ], [ %.11247, %bb.an ], [ %.3239.ph, %.preheader ], [ %i.be, %.loopexit.loopexit ]
  %.14 = phi ptr [ %.3221326.lcssa, %.lr.ph331._crit_edge ], [ %.4222, %bb.l ], [ %.11, %bb.an ], [ %.3221.ph, %.preheader ], [ %i.bf, %.loopexit.loopexit ]
  %.8 = phi i32 [ %.4214327.lcssa, %.lr.ph331._crit_edge ], [ %.6216, %bb.l ], [ %i.cd, %bb.an ], [ %.4214.ph, %.preheader ], [ %spec.select268, %.loopexit.loopexit ]
  %.7209 = phi i32 [ %.3205328.lcssa, %.lr.ph331._crit_edge ], [ %i.bt, %bb.l ], [ %.6208, %bb.an ], [ %.3205.ph, %.preheader ], [ %i.ff, %.loopexit.loopexit ] ; 2 uses
  %.7 = phi ptr [ %.3330.lcssa, %.lr.ph331._crit_edge ], [ %.4, %bb.l ], [ %.6, %bb.an ], [ %.3.ph, %.preheader ], [ %i.az, %.loopexit.loopexit ]
  %i.fg = icmp slt i32 %.7209, 0
  %i.fh = sub nsw i32 0, %.7209
  %i.fi = select i1 %i.fg, i32 %i.fh, i32 0
  store i32 %i.fi, ptr %i.q, align 4
  store i32 %.8, ptr %i.s, align 8
  store ptr %.7, ptr %i.c, align 8
  store ptr %.14250, ptr %i.g, align 8
  store ptr %.14, ptr %i.o, align 8
  ret void
}

declare void @ucnv_getCompleteUnicodeSet_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef range(i32 33554432, 0) i32 @_ZL8packDiffi(i32 noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %0, -65
  br i1 %i.a, label %bb.b, label %bb.y

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %0, 10513
  br i1 %i.b, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.c = trunc nsw i32 %0 to i16
  %.lhs.trunc = add nsw i16 %i.c, -64             ; 2 uses
  %i.d = srem i16 %.lhs.trunc, 243                ; 3 uses
  %i.e = sdiv i16 %.lhs.trunc, 243
  %.sext136 = zext nneg i16 %i.e to i32
  %i.f = icmp sgt i16 %i.d, 19
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %narrow172 = add nuw nsw i16 %i.d, 13
  %i.g = zext nneg i16 %narrow172 to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = sext i16 %i.d to i64
  %i.i = getelementptr inbounds i8, ptr @_ZL16bocu1TrailToByte, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  %i.k = sext i8 %i.j to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = phi i32 [ %i.g, %bb.d ], [ %i.k, %bb.e ]
  %i.m = shl nuw nsw i32 %.sext136, 8
  %i.n = add nuw nsw i32 %i.m, 53248
  %i.o = or i32 %i.n, %i.l
  %i.p = or i32 %i.o, 33554432
  br label %bb.av

bb.g:                                             ; preds = %bb.b
  %i.q = icmp samesign ult i32 %0, 187660
  br i1 %i.q, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.r = add nsw i32 %0, -10513                   ; 3 uses
  %i.s = urem i32 %i.r, 243                       ; 3 uses
  %i.t = udiv i32 %i.r, 243
  %i.u = icmp samesign ugt i32 %i.s, 19
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = add nuw nsw i32 %i.s, 13
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.w = zext nneg i32 %i.s to i64
  %i.x = getelementptr inbounds nuw i8, ptr @_ZL16bocu1TrailToByte, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1
  %i.z = sext i8 %i.y to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aa = phi i32 [ %i.v, %bb.i ], [ %i.z, %bb.j ]
  %.lhs.trunc137 = trunc nuw nsw i32 %i.t to i16
  %i.ab = urem i16 %.lhs.trunc137, 243            ; 3 uses
  %i.ac = udiv i32 %i.r, 59049
  %i.ad = icmp samesign ugt i16 %i.ab, 19
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %narrow171 = add nuw nsw i16 %i.ab, 13
  %i.ae = zext nneg i16 %narrow171 to i32
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.af = zext nneg i16 %i.ab to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @_ZL16bocu1TrailToByte, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = sext i8 %i.ah to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aj = phi i32 [ %i.ae, %bb.l ], [ %i.ai, %bb.m ]
  %i.ak = shl nsw i32 %i.aj, 8
  %i.al = shl nuw nsw i32 %i.ac, 16
  %i.am = add nuw nsw i32 %i.al, 16449536
  %i.an = or i32 %i.am, %i.aa
  %i.ao = or i32 %i.an, %i.ak
  %i.ap = or i32 %i.ao, 50331648
  br label %bb.av

bb.o:                                             ; preds = %bb.g
  %i.aq = add nsw i32 %0, -187660                 ; 3 uses
  %i.ar = urem i32 %i.aq, 243                     ; 3 uses
  %i.as = udiv i32 %i.aq, 243
  %i.at = icmp samesign ugt i32 %i.ar, 19
  br i1 %i.at, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.au = add nuw nsw i32 %i.ar, 13
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.av = zext nneg i32 %i.ar to i64
  %i.aw = getelementptr inbounds nuw i8, ptr @_ZL16bocu1TrailToByte, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = sext i8 %i.ax to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.az = phi i32 [ %i.au, %bb.p ], [ %i.ay, %bb.q ]
  %i.ba = urem i32 %i.as, 243                     ; 3 uses
  %i.bb = udiv i32 %i.aq, 59049                   ; 2 uses
  %i.bc = icmp samesign ugt i32 %i.ba, 19
  br i1 %i.bc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bd = add nuw nsw i32 %i.ba, 13
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.be = zext nneg i32 %i.ba to i64
  %i.bf = getelementptr inbounds nuw i8, ptr @_ZL16bocu1TrailToByte, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = sext i8 %i.bg to i32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bi = phi i32 [ %i.bd, %bb.s ], [ %i.bh, %bb.t ]
  %i.bj = shl nsw i32 %i.bi, 8
  %i.bk = icmp samesign ugt i32 %0, 1368639
  br i1 %i.bk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bl = add nuw nsw i32 %i.bb, 13
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bm = zext nneg i32 %i.bb to i64
  %i.bn = getelementptr inbounds nuw i8, ptr @_ZL16bocu1TrailToByte, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = sext i8 %i.bo to i32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bq = phi i32 [ %i.bl, %bb.v ], [ %i.bp, %bb.w ]
  %i.br = shl i32 %i.bq, 16
  %i.bs = or i32 %i.az, %i.bj
  %i.bt = or i32 %i.bs, %i.br
  %i.bu = or i32 %i.bt, -33554432
  br label %bb.av

bb.y:                                             ; preds = %bb.a
  %i.bv = icmp samesign ugt i32 %0, -10514
  br i1 %i.bv, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.bw = trunc nsw i32 %0 to i16
  %.lhs.trunc138 = sub nuw nsw i16 -64, %i.bw     ; 2 uses
  %i.bx = urem i16 %.lhs.trunc138, 243            ; 2 uses
  %i.by = udiv i16 %.lhs.trunc138, 243
  %.zext143 = zext nneg i16 %i.by to i32          ; 2 uses
  %.neg141 = sub nsw i32 0, %.zext143
  %.not167 = icmp eq i16 %i.bx, 0                 ; 2 uses
  %1 = xor i32 %.zext143, -1
  %narrow168 = sub nuw nsw i16 243, %i.bx
  %.0105 = select i1 %.not167, i32 %.neg141, i32 %1
  %narrow169 = select i1 %.not167, i16 0, i16 %narrow168 ; 3 uses
  %i.bz = icmp samesign ugt i16 %narrow169, 19
  br i1 %i.bz, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %narrow170 = add nuw nsw i16 %narrow169, 13
  %i.ca = zext nneg i16 %narrow170 to i32
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.cb = zext nneg i16 %narrow169 to i64
  %i.cc = getelementptr inbounds nuw i8, ptr @_ZL16bocu1TrailToByte, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = sext i8 %i.cd to i32
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cf = phi i32 [ %i.ca, %bb.aa ], [ %i.ce, %bb.ab ]
  %i.cg = shl nsw i32 %.0105, 8
  %i.ch = add nsw i32 %i.cg, 20480
  %i.ci = or i32 %i.ch, %i.cf
  %i.cj = or i32 %i.ci, 33554432
  br label %bb.av

bb.ad:                                            ; preds = %bb.y
  %i.ck = icmp samesign ugt i32 %0, -187661
  br i1 %i.ck, label %bb.ae, label %bb.al

bb.ae:                                            ; preds = %bb.ad
  %.nonneg144 = sub nuw nsw i32 -10513, %0        ; 2 uses
  %i.cl = urem i32 %.nonneg144, 243               ; 2 uses
  %i.cm = udiv i32 %.nonneg144, 243
  %.not163 = icmp ne i32 %i.cl, 0                 ; 2 uses
  %i.cn = sub nuw nsw i32 243, %i.cl
  %.neg183.a = zext i1 %.not163 to i32
  %.1106.neg = add nuw nsw i32 %i.cm, %.neg183.a
  %.1 = select i1 %.not163, i32 %i.cn, i32 0      ; 3 uses
  %i.co = icmp samesign ugt i32 %.1, 19
  br i1 %i.co, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cp = add nuw nsw i32 %.1, 13
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.cq = zext nneg i32 %.1 to i64
  %i.cr = getelementptr inbounds nuw i8, ptr @_ZL16bocu1TrailToByte, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = sext i8 %i.cs to i32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.cu = phi i32 [ %i.cp, %bb.af ], [ %i.ct, %bb.ag ]
  %.neg184 = trunc nuw nsw i32 %.1106.neg to i16  ; 2 uses
  %i.cv = urem i16 %.neg184, 243                  ; 2 uses
  %i.cw = udiv i16 %.neg184, 243
  %.zext154 = zext nneg i16 %i.cw to i32          ; 2 uses
  %.neg152 = sub nsw i32 0, %.zext154
  %.not164 = icmp eq i16 %i.cv, 0                 ; 2 uses
  %2 = xor i32 %.zext154, -1
  %narrow = sub nuw nsw i16 243, %i.cv
  %.2107 = select i1 %.not164, i32 %.neg152, i32 %2
  %narrow165 = select i1 %.not164, i16 0, i16 %narrow ; 3 uses
  %i.cx = icmp samesign ugt i16 %narrow165, 19
  br i1 %i.cx, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %narrow166 = add nuw nsw i16 %narrow165, 13
  %i.cy = zext nneg i16 %narrow166 to i32
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.cz = zext nneg i16 %narrow165 to i64
  %i.da = getelementptr inbounds nuw i8, ptr @_ZL16bocu1TrailToByte, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1
  %i.dc = sext i8 %i.db to i32
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.dd = phi i32 [ %i.cy, %bb.ai ], [ %i.dc, %bb.aj ]
  %i.de = shl nsw i32 %i.dd, 8
  %i.df = shl nsw i32 %.2107, 16
  %i.dg = add nsw i32 %i.df, 2424832
  %i.dh = or i32 %i.dg, %i.cu
  %i.di = or i32 %i.dh, %i.de
  %i.dj = or i32 %i.di, 50331648
  br label %bb.av

bb.al:                                            ; preds = %bb.ad
  %.nonneg155 = sub nuw nsw i32 -187660, %0       ; 2 uses
  %i.dk = urem i32 %.nonneg155, 243               ; 2 uses
  %i.dl = udiv i32 %.nonneg155, 243
  %.not = icmp ne i32 %i.dk, 0                    ; 2 uses
  %i.dm = sub nuw nsw i32 243, %i.dk
  %.neg = zext i1 %.not to i32
  %.3108.neg = add nuw nsw i32 %i.dl, %.neg       ; 2 uses
  %.3 = select i1 %.not, i32 %i.dm, i32 0         ; 3 uses
  %i.dn = icmp samesign ugt i32 %.3, 19
  br i1 %i.dn, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.do = add nuw nsw i32 %.3, 13
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.dp = zext nneg i32 %.3 to i64
  %i.dq = getelementptr inbounds nuw i8, ptr @_ZL16bocu1TrailToByte, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1
  %i.ds = sext i8 %i.dr to i32
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.dt = phi i32 [ %i.do, %bb.am ], [ %i.ds, %bb.an ]
  %i.du = urem i32 %.3108.neg, 243                ; 2 uses
  %i.dv = udiv i32 %.3108.neg, 243                ; 2 uses
  %.neg161 = sub nsw i32 0, %i.dv
  %.not162 = icmp eq i32 %i.du, 0                 ; 2 uses
  %3 = xor i32 %i.dv, -1
  %i.dw = sub nuw nsw i32 243, %i.du
  %.4109 = select i1 %.not162, i32 %.neg161, i32 %3 ; 3 uses
  %.4 = select i1 %.not162, i32 0, i32 %i.dw      ; 3 uses
  %i.dx = icmp samesign ugt i32 %.4, 19
  br i1 %i.dx, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.dy = add nuw nsw i32 %.4, 13
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.dz = zext nneg i32 %.4 to i64
  %i.ea = getelementptr inbounds nuw i8, ptr @_ZL16bocu1TrailToByte, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1
  %i.ec = sext i8 %i.eb to i32
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.ed = phi i32 [ %i.dy, %bb.ap ], [ %i.ec, %bb.aq ]
  %i.ee = shl nsw i32 %i.ed, 8
  %i.ef = icmp sgt i32 %.4109, -224
  br i1 %i.ef, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.eg = add nsw i32 %.4109, 256
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.eh = sext i32 %.4109 to i64
  %i.ei = getelementptr i8, ptr @_ZL16bocu1TrailToByte, i64 %i.eh
  %i.ej = getelementptr i8, ptr %i.ei, i64 243
  %i.ek = load i8, ptr %i.ej, align 1
  %i.el = sext i8 %i.ek to i32
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.em = phi i32 [ %i.eg, %bb.as ], [ %i.el, %bb.at ]
  %i.en = shl nsw i32 %i.em, 16
  %i.eo = or i32 %i.dt, %i.ee
  %i.ep = or i32 %i.eo, %i.en
  %i.eq = or i32 %i.ep, 553648128
  br label %bb.av

bb.av:                                            ; preds = %bb.ac, %bb.au, %bb.ak, %bb.f, %bb.x, %bb.n
  %.0104 = phi i32 [ %i.p, %bb.f ], [ %i.ap, %bb.n ], [ %i.bu, %bb.x ], [ %i.cj, %bb.ac ], [ %i.dj, %bb.ak ], [ %i.eq, %bb.au ]
  ret i32 %.0104
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6, !8}
!8 = !{!"llvm.loop.peeled.count", i32 1}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6, !8}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
end_hunk_1
