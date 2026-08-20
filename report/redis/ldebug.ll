inline.NumInlined: 26
inline.NumDeleted: 14
begin_hunk_0_@symbexec
define internal fastcc i32 @symbexec(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i32, ptr %i.a, align 8, !tbaa !63   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 115
  %i.d = load i8, ptr %i.c, align 1, !tbaa !64    ; 2 uses
  %i.e = icmp ult i8 %i.d, -5
  br i1 %i.e, label %bb.b, label %.critedge232

bb.b:                                             ; preds = %bb.a
  %i.f = zext i8 %i.d to i32                      ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 113
  %i.h = load i8, ptr %i.g, align 1, !tbaa !65
  %i.i = zext i8 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 114
  %i.k = load i8, ptr %i.j, align 2, !tbaa !66    ; 2 uses
  %i.l = zext i8 %i.k to i32                      ; 2 uses
  %i.m = and i32 %i.l, 1
  %i.n = add nuw nsw i32 %i.m, %i.i
  %.not.i = icmp samesign ugt i32 %i.n, %i.f
  %i.o = and i32 %i.l, 5
  %or.cond.i = icmp eq i32 %i.o, 4
  %or.cond22.i = or i1 %or.cond.i, %.not.i
  br i1 %or.cond22.i, label %.critedge232, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load i32, ptr %i.p, align 8, !tbaa !67
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.s = load i8, ptr %i.r, align 8, !tbaa !68
  %i.t = zext i8 %i.s to i32                      ; 2 uses
  %.not19.i = icmp sgt i32 %i.q, %i.t
  br i1 %.not19.i, label %.critedge232, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.v = load i32, ptr %i.u, align 4, !tbaa !61   ; 2 uses
  %i.w = icmp eq i32 %i.v, %i.b
  %i.x = icmp eq i32 %i.v, 0
  %or.cond20.i = or i1 %i.x, %i.w
  %i.y = icmp sgt i32 %i.b, 0
  %or.cond21.i = and i1 %i.y, %or.cond20.i
  br i1 %or.cond21.i, label %precheck.exit, label %.critedge232

precheck.exit:                                    ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !37  ; 5 uses
  %i.ab = zext nneg i32 %i.b to i64
  %i.ac = getelementptr [4 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.af = and i32 %i.ae, 63
  %.not = icmp eq i32 %i.af, 30
  br i1 %.not, label %bb.e, label %.critedge232

bb.e:                                             ; preds = %precheck.exit
  %i.ag = add nsw i32 %i.b, -1                    ; 3 uses
  %i.ah = icmp sgt i32 %1, 0
  br i1 %i.ah, label %.lr.ph281, label %._crit_edge282

.lr.ph281:                                        ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not204 = icmp eq i32 %2, 255                  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = and i8 %i.k, 6
  %or.cond230 = icmp eq i8 %i.am, 2
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph281, %bb.bg
  %.0165279 = phi i32 [ %i.ag, %.lr.ph281 ], [ %.2167, %bb.bg ] ; 2 uses
  %.0169278 = phi i32 [ 0, %.lr.ph281 ], [ %i.fj, %bb.bg ] ; 31 uses
  %i.an = sext i32 %.0169278 to i64               ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.an ; 5 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4  ; 7 uses
  %i.aq = and i32 %i.ap, 63                       ; 3 uses
  %i.ar = lshr i32 %i.ap, 6
  %i.as = and i32 %i.ar, 255                      ; 12 uses
  %i.at = icmp samesign ult i32 %i.aq, 38
  %i.au = icmp samesign ult i32 %i.as, %i.f
  %or.cond285 = select i1 %i.at, i1 %i.au, i1 false
  br i1 %or.cond285, label %bb.g, label %.critedge232

bb.g:                                             ; preds = %bb.f
  %i.av = zext nneg i32 %i.aq to i64
  %i.aw = getelementptr inbounds nuw i8, ptr @luaP_opmodes, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !27  ; 4 uses
  %i.ay = zext i8 %i.ax to i32                    ; 4 uses
  %i.az = and i32 %i.ay, 3
  switch i32 %i.az, label %default.unreachable306 [
    i32 0, label %bb.h
    i32 1, label %bb.s
    i32 2, label %bb.u
    i32 3, label %.critedge
  ]

bb.h:                                             ; preds = %bb.g
  %i.ba = lshr i32 %i.ap, 23                      ; 9 uses
  %i.bb = lshr i32 %i.ay, 4
  %i.bc = and i32 %i.bb, 3
  switch i32 %i.bc, label %default.unreachable306 [
    i32 0, label %bb.i
    i32 3, label %bb.k
    i32 2, label %bb.j
    i32 1, label %checkArgMode.exit
  ]

bb.i:                                             ; preds = %bb.h
  %i.bd = icmp eq i32 %i.ba, 0
  br i1 %i.bd, label %checkArgMode.exit, label %.critedge232

bb.j:                                             ; preds = %bb.h
  %i.be = icmp samesign ult i32 %i.ba, %i.f
  br i1 %i.be, label %checkArgMode.exit, label %.critedge232

bb.k:                                             ; preds = %bb.h
  %.not.i235 = icmp sgt i32 %i.ap, -1
  br i1 %.not.i235, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = and i32 %i.ba, 255
  %i.bg = load i32, ptr %i.ai, align 4, !tbaa !69
  %i.bh = icmp slt i32 %i.bf, %i.bg
  br i1 %i.bh, label %checkArgMode.exit, label %.critedge232

bb.m:                                             ; preds = %bb.k
  %i.bi = icmp samesign ult i32 %i.ba, %i.f
  br i1 %i.bi, label %checkArgMode.exit, label %.critedge232

checkArgMode.exit:                                ; preds = %bb.m, %bb.l, %bb.j, %bb.i, %bb.h
  %i.bj = lshr i32 %i.ap, 14                      ; 2 uses
  %i.bk = and i32 %i.bj, 511                      ; 8 uses
  %i.bl = lshr i8 %i.ax, 2
  %i.bm = and i8 %i.bl, 3
  switch i8 %i.bm, label %default.unreachable306 [
    i8 0, label %bb.n
    i8 3, label %bb.p
    i8 2, label %bb.o
    i8 1, label %.critedge
  ]

bb.n:                                             ; preds = %checkArgMode.exit
  %i.bn = icmp eq i32 %i.bk, 0
  br i1 %i.bn, label %.critedge, label %.critedge232

bb.o:                                             ; preds = %checkArgMode.exit
  %i.bo = icmp samesign ult i32 %i.bk, %i.f
  br i1 %i.bo, label %.critedge, label %.critedge232

bb.p:                                             ; preds = %checkArgMode.exit
  %.not.i237 = icmp samesign ult i32 %i.bk, 256
  br i1 %.not.i237, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = and i32 %i.bj, 255
  %i.bq = load i32, ptr %i.ai, align 4, !tbaa !69
  %i.br = icmp slt i32 %i.bp, %i.bq
  br i1 %i.br, label %.critedge, label %.critedge232

bb.r:                                             ; preds = %bb.p
  %i.bs = icmp samesign ult i32 %i.bk, %i.f
  br i1 %i.bs, label %.critedge, label %.critedge232

bb.s:                                             ; preds = %bb.g
  %i.bt = lshr i32 %i.ap, 14                      ; 3 uses
  %i.bu = and i32 %i.ay, 48
  %i.bv = icmp eq i32 %i.bu, 48
  br i1 %i.bv, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.bw = load i32, ptr %i.ai, align 4, !tbaa !69
  %i.bx = icmp slt i32 %i.bt, %i.bw
  br i1 %i.bx, label %.critedge, label %.critedge232

bb.u:                                             ; preds = %bb.g
  %i.by = lshr i32 %i.ap, 14
  %i.bz = add nsw i32 %i.by, -131071              ; 5 uses
  %i.ca = and i32 %i.ay, 48
  %i.cb = icmp eq i32 %i.ca, 32
  br i1 %i.cb, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.cc = add nsw i32 %.0169278, 1
  %i.cd = add nsw i32 %i.cc, %i.bz                ; 5 uses
  %i.ce = icmp sgt i32 %i.cd, -1
  %i.cf = icmp slt i32 %i.cd, %i.b
  %or.cond256 = select i1 %i.ce, i1 %i.cf, i1 false
  br i1 %or.cond256, label %bb.w, label %.critedge232

bb.w:                                             ; preds = %bb.v
  %.not194 = icmp eq i32 %i.cd, 0
  br i1 %.not194, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.w
  %i.cg = add i32 %i.bz, %.0169278
  %wide.trip.count = zext nneg i32 %i.cd to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.x
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.x ] ; 2 uses
  %i.ch = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ci = sub i32 %i.cg, %i.ch
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !4
  %i.cm = and i32 %i.cl, 8372287
  %or.cond221 = icmp eq i32 %i.cm, 34
  br i1 %or.cond221, label %bb.x, label %._crit_edge

bb.x:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !70

._crit_edge:                                      ; preds = %bb.x, %.lr.ph
  %.0161.lcssa.ph = phi i32 [ %i.cd, %bb.x ], [ %i.ch, %.lr.ph ]
  %i.cn = and i32 %.0161.lcssa.ph, 1
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %.critedge, label %.critedge232

default.unreachable306:                           ; preds = %checkArgMode.exit, %bb.h, %bb.g
  unreachable

.critedge:                                        ; preds = %bb.r, %bb.q, %bb.o, %bb.n, %checkArgMode.exit, %bb.w, %._crit_edge, %bb.u, %bb.s, %bb.t, %bb.g
  %.0163 = phi i32 [ %i.bz, %bb.w ], [ %i.bt, %bb.t ], [ %i.bt, %bb.s ], [ 0, %bb.g ], [ %i.bz, %bb.u ], [ %i.bz, %._crit_edge ], [ %i.ba, %checkArgMode.exit ], [ %i.ba, %bb.n ], [ %i.ba, %bb.o ], [ %i.ba, %bb.q ], [ %i.ba, %bb.r ] ; 16 uses
  %.0162 = phi i32 [ 0, %bb.w ], [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %bb.g ], [ 0, %bb.u ], [ 0, %._crit_edge ], [ %i.bk, %checkArgMode.exit ], [ 0, %bb.n ], [ %i.bk, %bb.o ], [ %i.bk, %bb.q ], [ %i.bk, %bb.r ] ; 7 uses
  %i.cp = and i8 %i.ax, 64
  %.not197 = icmp ne i8 %i.cp, 0
  %i.cq = icmp eq i32 %i.as, %2
  %or.cond222 = and i1 %i.cq, %.not197
  %.1166 = select i1 %or.cond222, i32 %.0169278, i32 %.0165279 ; 17 uses
  %.not198 = icmp sgt i8 %i.ax, -1
  br i1 %.not198, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %.critedge
  %i.cr = add nsw i32 %.0169278, 2
  %i.cs = icmp slt i32 %i.cr, %i.b
  br i1 %i.cs, label %bb.z, label %.critedge232

bb.z:                                             ; preds = %bb.y
  %i.ct = getelementptr i8, ptr %i.ao, i64 4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !4
  %i.cv = and i32 %i.cu, 63
  %i.cw = icmp eq i32 %i.cv, 22
  br i1 %i.cw, label %bb.aa, label %.critedge232

bb.aa:                                            ; preds = %bb.z, %.critedge
  switch i32 %i.aq, label %bb.bg [
    i32 2, label %bb.ab
    i32 3, label %bb.ae
    i32 4, label %bb.af
    i32 8, label %bb.af
    i32 5, label %bb.ag
    i32 7, label %bb.ag
    i32 11, label %bb.ah
    i32 21, label %bb.aj
    i32 33, label %bb.ak
    i32 31, label %bb.an
    i32 32, label %bb.an
    i32 22, label %bb.ao
    i32 28, label %bb.ap
    i32 29, label %bb.ap
    i32 30, label %bb.au
    i32 34, label %bb.aw
    i32 36, label %bb.az
    i32 37, label %bb.bc
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.cx = icmp eq i32 %.0162, 1
  br i1 %i.cx, label %bb.ac, label %bb.bg

bb.ac:                                            ; preds = %bb.ab
  %i.cy = add nsw i32 %.0169278, 2
  %i.cz = icmp slt i32 %i.cy, %i.b
  br i1 %i.cz, label %bb.ad, label %.critedge232

bb.ad:                                            ; preds = %bb.ac
  %i.da = getelementptr i8, ptr %i.ao, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !4
  %i.dc = and i32 %i.db, 8372287
  %or.cond223 = icmp eq i32 %i.dc, 34
  br i1 %or.cond223, label %.critedge232, label %bb.bg

bb.ae:                                            ; preds = %bb.aa
  %.not216 = icmp sgt i32 %i.as, %2
  %.not217 = icmp sgt i32 %2, %.0163
  %or.cond224 = select i1 %.not216, i1 true, i1 %.not217
  %spec.select233 = select i1 %or.cond224, i32 %.1166, i32 %.0169278
  br label %bb.bg

bb.af:                                            ; preds = %bb.aa, %bb.aa
  %i.dd = icmp slt i32 %.0163, %i.t
  br i1 %i.dd, label %bb.bg, label %.critedge232

bb.ag:                                            ; preds = %bb.aa, %bb.aa
  %i.de = load ptr, ptr %i.al, align 8, !tbaa !71
  %i.df = sext i32 %.0163 to i64
  %i.dg = getelementptr inbounds [16 x i8], ptr %i.de, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !34
  %i.dj = icmp eq i32 %i.di, 4
  br i1 %i.dj, label %bb.bg, label %.critedge232

bb.ah:                                            ; preds = %bb.aa
  %i.dk = add nuw nsw i32 %i.as, 1                ; 2 uses
  %i.dl = icmp samesign ult i32 %i.dk, %i.f
  br i1 %i.dl, label %bb.ai, label %.critedge232

bb.ai:                                            ; preds = %bb.ah
  %i.dm = icmp eq i32 %2, %i.dk
  %spec.select = select i1 %i.dm, i32 %.0169278, i32 %.1166
  br label %bb.bg

bb.aj:                                            ; preds = %bb.aa
  %i.dn = icmp slt i32 %.0163, %.0162
  br i1 %i.dn, label %bb.bg, label %.critedge232

bb.ak:                                            ; preds = %bb.aa
  %.not214 = icmp eq i32 %.0162, 0
  br i1 %.not214, label %.critedge232, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.do = add nuw nsw i32 %i.as, 2                ; 2 uses
  %i.dp = add nuw nsw i32 %.0162, %i.do
  %i.dq = icmp samesign ult i32 %i.dp, %i.f
  br i1 %i.dq, label %bb.am, label %.critedge232

bb.am:                                            ; preds = %bb.al
  %.not215 = icmp slt i32 %2, %i.do
  %spec.select225 = select i1 %.not215, i32 %.1166, i32 %.0169278
  br label %bb.bg

bb.an:                                            ; preds = %bb.aa, %bb.aa
  %i.dr = add nuw nsw i32 %i.as, 3
  %i.ds = icmp samesign ult i32 %i.dr, %i.f
  br i1 %i.ds, label %bb.ao, label %.critedge232

bb.ao:                                            ; preds = %bb.an, %bb.aa
  %i.dt = add nsw i32 %.0169278, 1
  %i.du = add nsw i32 %i.dt, %.0163               ; 2 uses
  %i.dv = icmp sge i32 %.0169278, %i.du
  %.not213 = icmp sgt i32 %i.du, %1
  %i.dw = or i1 %i.dv, %.not213
  %or.cond227 = select i1 %.not204, i1 true, i1 %i.dw
  %i.dx = select i1 %or.cond227, i32 0, i32 %.0163
  %.1170 = add nsw i32 %i.dx, %.0169278
  br label %bb.bg

bb.ap:                                            ; preds = %bb.aa, %bb.aa
  %.not206 = icmp ne i32 %.0163, 0
  %i.dy = add nsw i32 %.0163, %i.as
  %.not207 = icmp sgt i32 %i.dy, %i.f
  %or.cond257 = select i1 %.not206, i1 %.not207, i1 false
  br i1 %or.cond257, label %.critedge232, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dz = icmp eq i32 %.0162, 0
  br i1 %i.dz, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ea = getelementptr i8, ptr %i.ao, i64 4
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !4  ; 2 uses
  %i.ec = and i32 %i.eb, 63
  switch i32 %i.ec, label %.critedge232 [
    i32 28, label %luaG_checkopenop.exit
    i32 29, label %luaG_checkopenop.exit
    i32 30, label %luaG_checkopenop.exit
    i32 34, label %luaG_checkopenop.exit
  ]

luaG_checkopenop.exit:                            ; preds = %bb.ar, %bb.ar, %bb.ar, %bb.ar
  %i.ed = icmp ugt i32 %i.eb, 8388607
  br i1 %i.ed, label %.critedge232, label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.ee = add nsw i32 %.0162, -1                  ; 2 uses
  %.not208 = icmp ne i32 %i.ee, 0
  %i.ef = add nuw nsw i32 %i.ee, %i.as
  %.not209 = icmp sgt i32 %i.ef, %i.f
  %or.cond258 = select i1 %.not208, i1 %.not209, i1 false
  br i1 %or.cond258, label %.critedge232, label %bb.at

bb.at:                                            ; preds = %bb.as, %luaG_checkopenop.exit
  %.not211 = icmp slt i32 %2, %i.as
  %spec.select228 = select i1 %.not211, i32 %.0165279, i32 %.0169278
  br label %bb.bg

bb.au:                                            ; preds = %bb.aa
  %i.eg = icmp sgt i32 %.0163, 1
  br i1 %i.eg, label %bb.av, label %bb.bg

bb.av:                                            ; preds = %bb.au
  %i.eh = add nsw i32 %i.as, -1
  %i.ei = add nsw i32 %i.eh, %.0163
  %.not205 = icmp sgt i32 %i.ei, %i.f
  br i1 %.not205, label %.critedge232, label %bb.bg

bb.aw:                                            ; preds = %bb.aa
  %i.ej = icmp slt i32 %.0163, 1
  %i.ek = add nuw nsw i32 %.0163, %i.as
  %i.el = icmp slt i32 %i.ek, %i.f
  %or.cond260 = select i1 %i.ej, i1 true, i1 %i.el
  br i1 %or.cond260, label %bb.ax, label %.critedge232

bb.ax:                                            ; preds = %bb.aw
  %i.em = icmp eq i32 %.0162, 0
  br i1 %i.em, label %bb.ay, label %bb.bg

bb.ay:                                            ; preds = %bb.ax
  %i.en = add nsw i32 %.0169278, 1                ; 2 uses
  %i.eo = icmp slt i32 %i.en, %i.ag
  br i1 %i.eo, label %bb.bg, label %.critedge232

bb.az:                                            ; preds = %bb.aa
  %i.ep = load i32, ptr %i.aj, align 8, !tbaa !72
end_hunk_0
