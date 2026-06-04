inline.NumInlined: 3252
inline.NumDeleted: 426
begin_hunk_0_@sqlite3ResultSetOfSelect:bb.a
.lr.ph.i127:                                      ; preds = %.lr.ph, %bb.ah
  %i.cw = phi i8 [ %i.dh, %bb.ah ], [ %i.cv, %.lr.ph ] ; 2 uses
  %.012.i = phi ptr [ %i.dg, %bb.ah ], [ %.184156, %.lr.ph ] ; 3 uses
  %.0911.i = phi ptr [ %i.df, %bb.ah ], [ %i.cu, %.lr.ph ]
  %i.cx = zext i8 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !37
  %i.da = load i8, ptr %.012.i, align 1, !tbaa !37
  %i.db = zext i8 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !37
  %i.de = icmp eq i8 %i.cz, %i.dd
  br i1 %i.de, label %bb.ah, label %.critedge.loopexit.isplit

bb.ah:                                            ; preds = %.lr.ph.i127
  %i.df = getelementptr inbounds nuw i8, ptr %.0911.i, i64 1 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.012.i, i64 1 ; 2 uses
  %i.dh = load i8, ptr %i.df, align 1, !tbaa !37  ; 2 uses
  %.not.i128 = icmp eq i8 %i.dh, 0
  br i1 %.not.i128, label %..critedge.loopexit.i_crit_edge, label %.lr.ph.i127, !llvm.loop !266

..critedge.loopexit.i_crit_edge:                  ; preds = %bb.ah
  br label %sqlite3StrICmp.exit, !llvm.loop !266

.critedge.loopexit.isplit:                        ; preds = %.lr.ph.i127
  %i.di = zext i8 %i.cw to i64
  br label %sqlite3StrICmp.exit

sqlite3StrICmp.exit:                              ; preds = %..critedge.loopexit.i_crit_edge, %.critedge.loopexit.isplit, %.lr.ph
  %.0.lcssa.i = phi ptr [ %.184156, %.lr.ph ], [ %i.dg, %..critedge.loopexit.i_crit_edge ], [ %.012.i, %.critedge.loopexit.isplit ]
  %.lcssa.i = phi i64 [ 0, %.lr.ph ], [ 0, %..critedge.loopexit.i_crit_edge ], [ %i.di, %.critedge.loopexit.isplit ]
  %i.dj = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.lcssa.i
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !37
  %i.dl = load i8, ptr %.0.lcssa.i, align 1, !tbaa !37
  %i.dm = zext i8 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !37
  %i.dp = icmp eq i8 %i.dk, %i.do
  br i1 %i.dp, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %sqlite3StrICmp.exit
  %i.dq = getelementptr inbounds i8, ptr %.184156, i64 %i.cr
  store i8 0, ptr %i.dq, align 1, !tbaa !37
  %i.dr = add nsw i32 %.0157, 1                   ; 2 uses
  %i.ds = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %i.a, ptr noundef nonnull @.str.339, ptr noundef %.184156, i32 noundef %i.dr) ; 2 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %._crit_edge, label %bb.aj

bb.aj:                                            ; preds = %sqlite3StrICmp.exit, %bb.ai
  %.188 = phi i32 [ -1, %bb.ai ], [ %.087155, %sqlite3StrICmp.exit ]
  %.285 = phi ptr [ %i.ds, %bb.ai ], [ %.184156, %sqlite3StrICmp.exit ] ; 2 uses
  %.1 = phi i32 [ %i.dr, %bb.ai ], [ %.0157, %sqlite3StrICmp.exit ]
  %i.du = add nsw i32 %.188, 1                    ; 2 uses
  %i.dv = sext i32 %i.du to i64
  %i.dw = icmp sgt i64 %indvars.iv, %i.dv
  br i1 %i.dw, label %.lr.ph, label %._crit_edge, !llvm.loop !1569

._crit_edge:                                      ; preds = %bb.aj, %bb.ai, %sqlite3Dequote.exit
  %.3 = phi ptr [ %.083148, %sqlite3Dequote.exit ], [ null, %bb.ai ], [ %.285, %bb.aj ]
  store ptr %.3, ptr %.089160, align 8, !tbaa !264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.dx = load ptr, ptr %i.an, align 8, !tbaa !1222
  store ptr %i.dx, ptr %i.ao, align 8, !tbaa !1410
  %i.dy = call fastcc ptr @columnType(ptr noundef %3, ptr noundef %i.as, ptr noundef null, ptr noundef null, ptr noundef null) ; 3 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %sqlite3DbStrDup.exit132, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge
  %i.ea = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.dy) #42
  %i.eb = trunc i64 %i.ea to i32
  %i.ec = add i32 %i.eb, 1                        ; 2 uses
  %i.ed = call ptr @sqlite3_malloc(i32 noundef %i.ec) ; 3 uses
  %.not.i.i129 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i129, label %sqlite3StrDup.exit.i131, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ee = sext i32 %i.ec to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ed, ptr nonnull readonly align 1 %i.dy, i64 %i.ee, i1 false)
  br label %sqlite3DbStrDup.exit132

sqlite3StrDup.exit.i131:                          ; preds = %bb.ak
  store i8 1, ptr %i.am, align 2, !tbaa !129
  br label %sqlite3DbStrDup.exit132

sqlite3DbStrDup.exit132:                          ; preds = %._crit_edge, %bb.al, %sqlite3StrDup.exit.i131
  %.0.i8.i130 = phi ptr [ null, %._crit_edge ], [ null, %sqlite3StrDup.exit.i131 ], [ %i.ed, %bb.al ]
  %i.ef = getelementptr inbounds nuw i8, ptr %.089160, i64 16
  store ptr %.0.i8.i130, ptr %i.ef, align 8, !tbaa !399
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %bb.am, %sqlite3DbStrDup.exit132
  %.tr.i = phi ptr [ %i.as, %sqlite3DbStrDup.exit132 ], [ %i.em, %bb.am ] ; 5 uses
  %i.eg = load i8, ptr %.tr.i, align 8, !tbaa !1319
  switch i8 %i.eg, label %bb.as [
    i8 110, label %bb.am
    i8 31, label %bb.an
  ]

bb.am:                                            ; preds = %tailrecurse.i
  %i.eh = getelementptr inbounds nuw i8, ptr %.tr.i, i64 96
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !1217
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !1219
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !1208
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !1212
  br label %tailrecurse.i

bb.an:                                            ; preds = %tailrecurse.i
  %i.en = getelementptr inbounds nuw i8, ptr %.tr.i, i64 40
  %.val.i = load ptr, ptr %i.en, align 8, !tbaa !77 ; 2 uses
  %i.eo = getelementptr i8, ptr %.tr.i, i64 48
  %.val7.i = load i32, ptr %i.eo, align 8
  %i.ep = lshr i32 %.val7.i, 1                    ; 2 uses
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.eq
  %.not1.i.i = icmp eq i32 %i.ep, 0
  br i1 %.not1.i.i, label %sqlite3ExprAffinity.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.an, %bb.ar
  %.04.i.i = phi i32 [ %i.ey, %bb.ar ], [ 0, %bb.an ]
  %.0323.i.i = phi ptr [ %i.ez, %bb.ar ], [ %.val.i, %bb.an ] ; 2 uses
  %.0332.i.i = phi i8 [ %.1.i.i, %bb.ar ], [ 99, %bb.an ] ; 3 uses
  %i.es = shl i32 %.04.i.i, 8
  %i.et = load i8, ptr %.0323.i.i, align 1, !tbaa !37
  %i.eu = zext i8 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !37
  %i.ex = zext i8 %i.ew to i32
  %i.ey = or disjoint i32 %i.es, %i.ex            ; 6 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.0323.i.i, i64 1 ; 2 uses
  switch i32 %i.ey, label %bb.ap [
    i32 1667785074, label %bb.ar
    i32 1668050786, label %bb.ar
    i32 1952807028, label %bb.ar
    i32 1651273570, label %bb.ao
  ]

bb.ao:                                            ; preds = %.lr.ph.i.i
  switch i8 %.0332.i.i, label %bb.ap [
    i8 101, label %bb.ar
    i8 99, label %bb.ar
  ]

bb.ap:                                            ; preds = %bb.ao, %.lr.ph.i.i
  %i.fa = icmp eq i32 %i.ey, 1919246700
  %i.fb = icmp eq i8 %.0332.i.i, 99
  %i.fc = icmp eq i32 %i.ey, 1718382433
  %i.fd = or i1 %i.fa, %i.fc
  %i.fe = icmp eq i32 %i.ey, 1685026146
  %i.ff = or i1 %i.fe, %i.fd
  %or.cond35.i.i = select i1 %i.ff, i1 %i.fb, i1 false
  br i1 %or.cond35.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fg = and i32 %i.ey, 16777215
  %i.fh = icmp eq i32 %i.fg, 6909556
  br i1 %i.fh, label %sqlite3ExprAffinity.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.ao, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %.1.i.i = phi i8 [ %.0332.i.i, %bb.aq ], [ 97, %.lr.ph.i.i ], [ 97, %.lr.ph.i.i ], [ 97, %.lr.ph.i.i ], [ 98, %bb.ao ], [ 101, %bb.ap ], [ 98, %bb.ao ] ; 2 uses
  %.not.i.i133 = icmp eq ptr %i.ez, %i.er
  br i1 %.not.i.i133, label %sqlite3ExprAffinity.exit, label %.lr.ph.i.i, !llvm.loop !1318

bb.as:                                            ; preds = %tailrecurse.i
  %i.fi = getelementptr inbounds nuw i8, ptr %.tr.i, i64 1
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !1570
  br label %sqlite3ExprAffinity.exit

sqlite3ExprAffinity.exit:                         ; preds = %bb.aq, %bb.ar, %bb.an, %bb.as
  %.0.i = phi i8 [ 99, %bb.an ], [ %i.fj, %bb.as ], [ %.1.i.i, %bb.ar ], [ 100, %bb.aq ]
  %i.fk = getelementptr inbounds nuw i8, ptr %.089160, i64 34
  store i8 %.0.i, ptr %i.fk, align 2, !tbaa !1317
  %.not33.i = icmp eq ptr %i.as, null
  br i1 %.not33.i, label %sqlite3ExprCollSeq.exit.thread, label %.lr.ph.i134

.lr.ph.i134:                                      ; preds = %sqlite3ExprAffinity.exit, %tailrecurse.i135
  %.tr3234.i = phi ptr [ %i.fs, %tailrecurse.i135 ], [ %i.as, %sqlite3ExprAffinity.exit ] ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.tr3234.i, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !1431 ; 5 uses
  %i.fn = load i8, ptr %.tr3234.i, align 8, !tbaa !1319 ; 2 uses
  %i.fo = icmp ne i8 %i.fn, 31
  %i.fp = icmp ne i8 %i.fn, 86
  %or.cond.not21.i = and i1 %i.fo, %i.fp
  %i.fq = icmp ne ptr %i.fm, null
  %or.cond3.i = select i1 %or.cond.not21.i, i1 true, i1 %i.fq
  br i1 %or.cond3.i, label %bb.at, label %tailrecurse.i135

tailrecurse.i135:                                 ; preds = %.lr.ph.i134
  %i.fr = getelementptr inbounds nuw i8, ptr %.tr3234.i, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !1205 ; 2 uses
  %.not.i136 = icmp eq ptr %i.fs, null
  br i1 %.not.i136, label %sqlite3ExprCollSeq.exit.thread, label %.lr.ph.i134

bb.at:                                            ; preds = %.lr.ph.i134
  %.not.i.i137 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i137, label %sqlite3ExprCollSeq.exit.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ft = load ptr, ptr %i.fm, align 8, !tbaa !195 ; 2 uses
  %i.fu = load ptr, ptr %0, align 8, !tbaa !244
  %i.fv = call fastcc ptr @sqlite3GetCollSeq(ptr noundef %i.fu, ptr noundef nonnull %i.fm, ptr noundef %i.ft)
  %.not13.i.i = icmp eq ptr %i.fv, null
  br i1 %.not13.i.i, label %bb.av, label %sqlite3ExprCollSeq.exit

bb.av:                                            ; preds = %bb.au
  %i.fw = load i32, ptr %i.ap, align 8, !tbaa !252 ; 2 uses
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %bb.aw, label %sqlite3CheckCollSeq.exit.i

bb.aw:                                            ; preds = %bb.av
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.343, ptr noundef %i.ft), !inline_history !1571
  %.pre.i.i = load i32, ptr %i.ap, align 8, !tbaa !252
  br label %sqlite3CheckCollSeq.exit.i

sqlite3CheckCollSeq.exit.i:                       ; preds = %bb.aw, %bb.av
  %i.fy = phi i32 [ %i.fw, %bb.av ], [ %.pre.i.i, %bb.aw ]
  %i.fz = add nsw i32 %i.fy, 1
  store i32 %i.fz, ptr %i.ap, align 8, !tbaa !252
  br label %sqlite3ExprCollSeq.exit.thread

sqlite3ExprCollSeq.exit:                          ; preds = %bb.au
  %i.ga = load ptr, ptr %i.fm, align 8, !tbaa !195 ; 3 uses
  %i.gb = icmp eq ptr %i.ga, null
  br i1 %i.gb, label %sqlite3DbStrDup.exit141, label %bb.ax

bb.ax:                                            ; preds = %sqlite3ExprCollSeq.exit
  %i.gc = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ga) #42
  %i.gd = trunc i64 %i.gc to i32
  %i.ge = add i32 %i.gd, 1                        ; 2 uses
  %i.gf = call ptr @sqlite3_malloc(i32 noundef %i.ge) ; 3 uses
  %.not.i.i138 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i138, label %sqlite3StrDup.exit.i140, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gg = sext i32 %i.ge to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gf, ptr nonnull readonly align 1 %i.ga, i64 %i.gg, i1 false)
  br label %sqlite3DbStrDup.exit141

sqlite3StrDup.exit.i140:                          ; preds = %bb.ax
  store i8 1, ptr %i.am, align 2, !tbaa !129
  br label %sqlite3DbStrDup.exit141

sqlite3DbStrDup.exit141:                          ; preds = %sqlite3ExprCollSeq.exit, %bb.ay, %sqlite3StrDup.exit.i140
  %.0.i8.i139 = phi ptr [ null, %sqlite3ExprCollSeq.exit ], [ null, %sqlite3StrDup.exit.i140 ], [ %i.gf, %bb.ay ]
  %i.gh = getelementptr inbounds nuw i8, ptr %.089160, i64 24
  store ptr %.0.i8.i139, ptr %i.gh, align 8, !tbaa !400
  br label %sqlite3ExprCollSeq.exit.thread

sqlite3ExprCollSeq.exit.thread:                   ; preds = %tailrecurse.i135, %sqlite3ExprAffinity.exit, %bb.at, %sqlite3CheckCollSeq.exit.i, %sqlite3DbStrDup.exit141
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.089160, i64 40
  %i.gj = load i32, ptr %i.ah, align 8, !tbaa !254
  %i.gk = sext i32 %i.gj to i64
  %i.gl = icmp slt i64 %indvars.iv.next, %i.gk
  br i1 %i.gl, label %bb.o, label %._crit_edge163, !llvm.loop !1572

._crit_edge163:                                   ; preds = %sqlite3ExprCollSeq.exit.thread, %sqlite3DbMallocZero.exit121
  %i.gm = getelementptr inbounds nuw i8, ptr %.0.i11.i, i64 24
  store i32 -1, ptr %i.gm, align 8, !tbaa !1402
  br label %sqlite3DbMallocZero.exit.thread

sqlite3DbMallocZero.exit.thread:                  ; preds = %bb.f, %bb.h, %sqlite3DbMallocRaw.exit.i, %.critedge, %bb.d, %bb.c, %._crit_edge163
  %.2 = phi ptr [ %.0.i11.i, %._crit_edge163 ], [ null, %bb.c ], [ null, %bb.d ], [ null, %.critedge ], [ null, %sqlite3DbMallocRaw.exit.i ], [ null, %bb.h ], [ null, %bb.f ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @createTableStmt(ptr noundef writeonly captures(none) %0, ptr noundef nonnull readonly captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !254  ; 3 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !261
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %.069 = phi ptr [ %i.u, %bb.f ], [ %i.f, %.lr.ph.preheader ] ; 3 uses
  %.05368 = phi i32 [ %.154, %bb.f ], [ 0, %.lr.ph.preheader ]
  %.05567 = phi i32 [ %i.t, %bb.f ], [ 0, %.lr.ph.preheader ]
  %i.g = load ptr, ptr %.069, align 8, !tbaa !264
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph
  %.05.i = phi ptr [ %i.g, %.lr.ph ], [ %i.k, %bb.d ] ; 2 uses
  %.0.i = phi i32 [ 0, %.lr.ph ], [ %i.j, %bb.d ] ; 3 uses
  %i.h = load i8, ptr %.05.i, align 1, !tbaa !37
  switch i8 %i.h, label %bb.d [
    i8 0, label %identLength.exit
    i8 34, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = add nsw i32 %.0.i, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1.i = phi i32 [ %i.i, %bb.c ], [ %.0.i, %bb.b ]
  %i.j = add nsw i32 %.1.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i, i64 1
  br label %bb.b, !llvm.loop !1573

identLength.exit:                                 ; preds = %bb.b
  %i.l = add i32 %.05368, 2
  %i.m = add i32 %i.l, %.0.i                      ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.069, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !399  ; 2 uses
  %.not61 = icmp eq ptr %i.o, null
  br i1 %.not61, label %bb.f, label %bb.e

bb.e:                                             ; preds = %identLength.exit
  %i.p = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.o) #42
  %i.q = trunc i64 %i.p to i32
  %i.r = add i32 %i.m, 1
  %i.s = add i32 %i.r, %i.q
  br label %bb.f

bb.f:                                             ; preds = %identLength.exit, %bb.e
  %.154 = phi i32 [ %i.s, %bb.e ], [ %i.m, %identLength.exit ] ; 2 uses
  %i.t = add nuw nsw i32 %.05567, 1               ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.069, i64 40
  %exitcond.not = icmp eq i32 %i.t, %i.d
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !1574

._crit_edge.loopexit:                             ; preds = %bb.f
  %i.v = add i32 %.154, 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.053.lcssa = phi i32 [ 2, %bb.a ], [ %i.v, %._crit_edge.loopexit ]
  %i.w = load ptr, ptr %1, align 8, !tbaa !402
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %._crit_edge
  %.05.i62 = phi ptr [ %i.w, %._crit_edge ], [ %i.aa, %bb.i ] ; 2 uses
  %.0.i63 = phi i32 [ 0, %._crit_edge ], [ %i.z, %bb.i ] ; 3 uses
  %i.x = load i8, ptr %.05.i62, align 1, !tbaa !37
  switch i8 %i.x, label %bb.i [
    i8 0, label %identLength.exit65
    i8 34, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.y = add nsw i32 %.0.i63, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.i64 = phi i32 [ %i.y, %bb.h ], [ %.0.i63, %bb.g ]
  %i.z = add nsw i32 %.1.i64, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i62, i64 1
  br label %bb.g, !llvm.loop !1573

identLength.exit65:                               ; preds = %bb.g
  %i.ab = add i32 %.053.lcssa, %.0.i63            ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 50                  ; 3 uses
  %.str.344..str.347 = select i1 %i.ac, ptr @.str.344, ptr @.str.347
  %.str.345..str.348 = select i1 %i.ac, ptr @.str.345, ptr @.str.348
  %i.ad = mul nsw i32 %i.d, 6
  %i.ae = add nsw i32 %i.ad, 35
  %i.af = add nsw i32 %i.ae, %i.ab                ; 7 uses
  %i.ag = tail call ptr @sqlite3_malloc(i32 noundef %i.af) ; 15 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %identLength.exit65
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 1, ptr %i.ai, align 2, !tbaa !129
  br label %bb.p

bb.k:                                             ; preds = %identLength.exit65
  %.not = icmp eq i32 %2, 0
  %i.aj = select i1 %.not, ptr @.str.350, ptr @.str.349
  %i.ak = tail call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef %i.af, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.aj) ; 0 uses
  %i.al = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ag) #42
  %i.am = trunc i64 %i.al to i32
  store i32 %i.am, ptr %i.a, align 4, !tbaa !4
  %i.an = load ptr, ptr %1, align 8, !tbaa !402
  call fastcc void @identPut(ptr noundef %i.ag, ptr noundef %i.a, ptr noundef %i.an)
  %i.ao = load i32, ptr %i.a, align 4, !tbaa !4   ; 2 uses
  %i.ap = add nsw i32 %i.ao, 1                    ; 4 uses
  %i.aq = sext i32 %i.ao to i64
  %i.ar = getelementptr inbounds i8, ptr %i.ag, i64 %i.aq
  store i8 40, ptr %i.ar, align 1, !tbaa !37
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !261 ; 3 uses
  %i.at = load i32, ptr %i.c, align 8, !tbaa !254
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph75.preheader, label %._crit_edge76

.lr.ph75.preheader:                               ; preds = %bb.k
  %.str.21..str.346 = select i1 %i.ac, ptr @.str.21, ptr @.str.346
  %i.av = sub nsw i32 %i.af, %i.ap
  %i.aw = sext i32 %i.ap to i64
  %i.ax = getelementptr inbounds i8, ptr %i.ag, i64 %i.aw ; 2 uses
  %i.ay = tail call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef %i.av, ptr noundef nonnull %i.ax, ptr noundef nonnull %.str.21..str.346) ; 0 uses
  %i.az = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ax) #42
end_hunk_0
begin_hunk_1_@flattenSubquery:bb.a
  %.not191 = icmp eq ptr %i.eg, null
  br i1 %.not191, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eh = load ptr, ptr %i.g, align 8, !tbaa !1219
  tail call fastcc void @substExprList(ptr noundef %0, ptr noundef nonnull %i.eg, i32 noundef %i.av, ptr noundef %i.eh)
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al, %bb.aj
  %i.ei = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !1223 ; 2 uses
  %.not192 = icmp eq ptr %i.ej, null
  br i1 %.not192, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ek = tail call fastcc ptr @sqlite3ExprDup(ptr noundef %0, ptr noundef nonnull %i.ej)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %.0163 = phi ptr [ %i.ek, %bb.an ], [ null, %bb.am ] ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !1223 ; 3 uses
  br i1 %i.i, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  store ptr %i.em, ptr %i.en, align 8, !tbaa !1225
  store ptr %.0163, ptr %i.el, align 8, !tbaa !1223
  %i.eo = load ptr, ptr %i.g, align 8, !tbaa !1219
  tail call fastcc void @substExpr(ptr noundef %0, ptr noundef %i.em, i32 noundef %i.av, ptr noundef %i.eo)
  %i.ep = load ptr, ptr %i.en, align 8, !tbaa !1225 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !1225
  %i.es = tail call fastcc ptr @sqlite3ExprDup(ptr noundef %0, ptr noundef %i.er) ; 3 uses
  %i.et = icmp eq ptr %i.ep, null
  br i1 %i.et, label %sqlite3ExprAnd.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eu = icmp eq ptr %i.es, null
  br i1 %i.eu, label %sqlite3ExprAnd.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ev = tail call fastcc ptr @sqlite3Expr(ptr noundef %0, i32 noundef 61, ptr noundef nonnull %i.ep, ptr noundef nonnull %i.es, ptr noundef null)
  br label %sqlite3ExprAnd.exit

sqlite3ExprAnd.exit:                              ; preds = %bb.ap, %bb.aq, %bb.ar
  %.0.i = phi ptr [ %i.ev, %bb.ar ], [ %i.es, %bb.ap ], [ %i.ep, %bb.aq ]
  store ptr %.0.i, ptr %i.en, align 8, !tbaa !1225
  %i.ew = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !1224
  %i.ey = tail call fastcc ptr @sqlite3ExprListDup(ptr noundef %0, ptr noundef %i.ex)
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.ey, ptr %i.ez, align 8, !tbaa !1224
  br label %bb.av

bb.as:                                            ; preds = %bb.ao
  %i.fa = load ptr, ptr %i.g, align 8, !tbaa !1219
  tail call fastcc void @substExpr(ptr noundef %0, ptr noundef %i.em, i32 noundef %i.av, ptr noundef %i.fa)
  %i.fb = load ptr, ptr %i.el, align 8, !tbaa !1223 ; 3 uses
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %sqlite3ExprAnd.exit201, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fd = icmp eq ptr %.0163, null
  br i1 %i.fd, label %sqlite3ExprAnd.exit201, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fe = tail call fastcc ptr @sqlite3Expr(ptr noundef %0, i32 noundef 61, ptr noundef nonnull %i.fb, ptr noundef nonnull %.0163, ptr noundef null)
  br label %sqlite3ExprAnd.exit201

sqlite3ExprAnd.exit201:                           ; preds = %bb.as, %bb.at, %bb.au
  %.0.i200 = phi ptr [ %i.fe, %bb.au ], [ %.0163, %bb.as ], [ %i.fb, %bb.at ]
  store ptr %.0.i200, ptr %i.el, align 8, !tbaa !1223
  br label %bb.av

bb.av:                                            ; preds = %sqlite3ExprAnd.exit201, %sqlite3ExprAnd.exit
  %i.ff = load i8, ptr %i.ad, align 1, !tbaa !1455
  %.not193 = icmp eq i8 %i.ff, 0
  br i1 %.not193, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.fg = load i8, ptr %i.z, align 1, !tbaa !1455
  %i.fh = icmp ne i8 %i.fg, 0
  %i.fi = zext i1 %i.fh to i8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.fj = phi i8 [ 1, %bb.av ], [ %i.fi, %bb.aw ]
  store i8 %i.fj, ptr %i.ad, align 1, !tbaa !1455
  %i.fk = load ptr, ptr %i.n, align 8, !tbaa !1228 ; 2 uses
  %.not194 = icmp eq ptr %i.fk, null
  br i1 %.not194, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr %i.fk, ptr %i.fl, align 8, !tbaa !1228
  store ptr null, ptr %i.n, align 8, !tbaa !1228
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  tail call fastcc void @sqlite3SelectDelete(ptr noundef nonnull %i.g)
  br label %bb.ba

bb.ba:                                            ; preds = %.thread, %bb.u, %bb.s, %bb.q, %bb.o, %bb.l, %bb.k, %bb.i, %bb.h, %bb.f, %bb.e, %bb.c, %bb.a, %bb.az
  %.3 = phi i32 [ 0, %bb.u ], [ 1, %bb.az ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.o ], [ 0, %bb.q ], [ 0, %bb.s ], [ 1, %.thread ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @keyInfoFromExprList(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !244    ; 4 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !1211   ; 5 uses
  %i.c = mul i32 %i.b, 9
  %i.d = add i32 %i.c, 32                         ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %sqlite3DbMallocRaw.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 42 ; 2 uses
  %i.f = load i8, ptr %i.e, align 2, !tbaa !129
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.c, label %sqlite3DbMallocZero.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @sqlite3_malloc(i32 noundef %i.d) ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.e, align 2, !tbaa !129
  br label %sqlite3DbMallocZero.exit.thread

sqlite3DbMallocRaw.exit.i:                        ; preds = %bb.a
  %i.j = tail call ptr @sqlite3_malloc(i32 noundef %i.d) ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %sqlite3DbMallocZero.exit.thread, label %bb.e

bb.e:                                             ; preds = %sqlite3DbMallocRaw.exit.i, %bb.c
  %.0.i11.i = phi ptr [ %i.j, %sqlite3DbMallocRaw.exit.i ], [ %i.h, %bb.c ] ; 7 uses
  %i.k = zext i32 %i.d to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0.i11.i, i8 0, i64 %i.k, i1 false)
  %i.l = sext i32 %i.b to i64
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i11.i, i64 24 ; 2 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i11.i, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !197
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i11.i, i64 12
  store i32 %i.b, ptr %i.p, align 4, !tbaa !192
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !235
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !236
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 145
  %i.v = load i8, ptr %i.u, align 1, !tbaa !240
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i11.i, i64 8
  store i8 %i.v, ptr %i.w, align 8, !tbaa !969
  %i.x = icmp sgt i32 %i.b, 0
  br i1 %i.x, label %.lr.ph, label %sqlite3DbMallocZero.exit.thread

.lr.ph:                                           ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1208
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %sqlite3ExprCollSeq.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %sqlite3ExprCollSeq.exit ] ; 3 uses
  %.02840 = phi ptr [ %i.z, %.lr.ph ], [ %i.ay, %sqlite3ExprCollSeq.exit ] ; 3 uses
  %i.ac = load ptr, ptr %.02840, align 8, !tbaa !1212 ; 2 uses
  %.not33.i = icmp eq ptr %i.ac, null
  br i1 %.not33.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %tailrecurse.i
  %.tr3234.i = phi ptr [ %i.ak, %tailrecurse.i ], [ %i.ac, %bb.f ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr3234.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1431 ; 5 uses
  %i.af = load i8, ptr %.tr3234.i, align 8, !tbaa !1319 ; 2 uses
  %i.ag = icmp ne i8 %i.af, 31
  %i.ah = icmp ne i8 %i.af, 86
  %or.cond.not21.i = and i1 %i.ag, %i.ah
  %i.ai = icmp ne ptr %i.ae, null
  %or.cond3.i = select i1 %or.cond.not21.i, i1 true, i1 %i.ai
  br i1 %or.cond3.i, label %bb.g, label %tailrecurse.i

tailrecurse.i:                                    ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.tr3234.i, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1205 ; 2 uses
  %.not.i32 = icmp eq ptr %i.ak, null
  br i1 %.not.i32, label %.loopexit, label %.lr.ph.i

bb.g:                                             ; preds = %.lr.ph.i
  %.not.i.i33 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i33, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !195 ; 2 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !244
  %i.an = tail call fastcc ptr @sqlite3GetCollSeq(ptr noundef %i.am, ptr noundef nonnull %i.ae, ptr noundef %i.al)
  %.not13.i.i = icmp eq ptr %i.an, null
  br i1 %.not13.i.i, label %bb.i, label %sqlite3ExprCollSeq.exit

bb.i:                                             ; preds = %bb.h
  %i.ao = load i32, ptr %i.aa, align 8, !tbaa !252 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.j, label %sqlite3CheckCollSeq.exit.i

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.343, ptr noundef %i.al), !inline_history !1571
  %.pre.i.i = load i32, ptr %i.aa, align 8, !tbaa !252
  br label %sqlite3CheckCollSeq.exit.i

sqlite3CheckCollSeq.exit.i:                       ; preds = %bb.j, %bb.i
  %i.aq = phi i32 [ %i.ao, %bb.i ], [ %.pre.i.i, %bb.j ]
  %i.ar = add nsw i32 %i.aq, 1
  store i32 %i.ar, ptr %i.aa, align 8, !tbaa !252
  br label %.loopexit

.loopexit:                                        ; preds = %tailrecurse.i, %sqlite3CheckCollSeq.exit.i, %bb.g, %bb.f
  %i.as = load ptr, ptr %i.ab, align 8, !tbaa !512
  br label %sqlite3ExprCollSeq.exit

sqlite3ExprCollSeq.exit:                          ; preds = %bb.h, %.loopexit
  %.0 = phi ptr [ %i.as, %.loopexit ], [ %i.ae, %bb.h ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  store ptr %.0, ptr %i.at, align 8, !tbaa !194
  %i.au = getelementptr inbounds nuw i8, ptr %.02840, i64 16
  %i.av = load i8, ptr %i.au, align 8, !tbaa !1337
  %i.aw = load ptr, ptr %i.o, align 8, !tbaa !197
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %indvars.iv
  store i8 %i.av, ptr %i.ax, align 1, !tbaa !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.02840, i64 24
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %sqlite3DbMallocZero.exit.thread, label %bb.f, !llvm.loop !1673

sqlite3DbMallocZero.exit.thread:                  ; preds = %sqlite3ExprCollSeq.exit, %bb.e, %bb.b, %bb.d, %sqlite3DbMallocRaw.exit.i
  %.0.i7.i36 = phi ptr [ null, %bb.b ], [ null, %sqlite3DbMallocRaw.exit.i ], [ null, %bb.d ], [ %.0.i11.i, %bb.e ], [ %.0.i11.i, %sqlite3ExprCollSeq.exit ]
  ret ptr %.0.i7.i36
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3VdbeMakeLabel(ptr noundef captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1674 ; 4 uses
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !1674
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1675 ; 2 uses
  %.not = icmp slt i32 %i.b, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !134
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = shl nsw i32 %i.e, 1
  %i.g = add nsw i32 %i.f, 10                     ; 2 uses
  store i32 %i.g, ptr %i.d, align 4, !tbaa !1675
  %i.h = load ptr, ptr %0, align 8, !tbaa !106
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !134  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 42 ; 2 uses
  %i.l = load i8, ptr %i.k, align 2, !tbaa !129
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = shl i32 %i.g, 2
  %i.o = tail call ptr @sqlite3_realloc(ptr noundef %i.j, i32 noundef %i.n) ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %bb.d, label %sqlite3DbReallocOrFree.exit

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.k, align 2, !tbaa !129
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.p = icmp eq ptr %i.j, null
  br i1 %i.p, label %sqlite3DbReallocOrFree.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !28
  %sext.i.i = shl i64 %i.r, 32
  %i.s = ashr exact i64 %sext.i.i, 32
  %i.t = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.u = sub nsw i64 %i.t, %i.s
  store i64 %i.u, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.q) #43
  br label %sqlite3DbReallocOrFree.exit

sqlite3DbReallocOrFree.exit:                      ; preds = %bb.c, %bb.e, %bb.f
  %.0.i7.i = phi ptr [ %i.o, %bb.c ], [ null, %bb.e ], [ null, %bb.f ] ; 2 uses
  store ptr %.0.i7.i, ptr %i.i, align 8, !tbaa !134
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %sqlite3DbReallocOrFree.exit
  %i.v = phi ptr [ %.pre, %._crit_edge ], [ %.0.i7.i, %sqlite3DbReallocOrFree.exit ] ; 2 uses
  %.not13 = icmp eq ptr %i.v, null
  br i1 %.not13, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = sext i32 %i.b to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.w
  store i32 -1, ptr %i.x, align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.y = xor i32 %i.b, -1
  ret i32 %i.y
}

; Function Attrs: nounwind uwtable
define internal fastcc void @computeLimitRegisters(ptr noundef %0, ptr noundef nonnull captures(none) %1, i32 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1228
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %sqlite3VdbeAddOp2.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1304
  %i.e = add nsw i32 %i.d, 1                      ; 9 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !1304
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 %i.e, ptr %i.f, align 8, !tbaa !1657
  %i.g = tail call fastcc ptr @sqlite3GetVdbe(ptr noundef %0) ; 13 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %sqlite3VdbeJumpHere.exit119, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !1228
  %i.j = tail call fastcc i32 @sqlite3ExprCodeTarget(ptr noundef nonnull %0, ptr noundef %i.i, i32 noundef %i.e), !inline_history !1676 ; 2 uses
  %.not.i = icmp eq i32 %i.j, %i.e
  br i1 %.not.i, label %sqlite3ExprCode.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !367  ; 8 uses
  %.not11.i = icmp eq ptr %i.l, null
  br i1 %.not11.i, label %sqlite3ExprCode.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !135  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 28 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !147  ; 6 uses
  %.not.i.i120 = icmp sgt i32 %i.p, %i.n
  br i1 %.not.i.i120, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not23.i.i121 = icmp eq i32 %i.p, 0
  %i.q = shl nsw i32 %i.p, 1
  %spec.select.i.i122 = select i1 %.not23.i.i121, i32 42, i32 %i.q ; 4 uses
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !106
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 42 ; 2 uses
  %i.u = load i8, ptr %i.t, align 2, !tbaa !129
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.g, label %resizeOpArray.exit.i.i123

bb.g:                                             ; preds = %bb.f
  %i.w = mul i32 %spec.select.i.i122, 24
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !136
  %i.y = tail call ptr @sqlite3_realloc(ptr noundef %i.x, i32 noundef %i.w) ; 3 uses
  %.not.i.i.i.i128 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i128, label %bb.h, label %sqlite3DbRealloc.exit.i.i.i129

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.t, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i123

sqlite3DbRealloc.exit.i.i.i129:                   ; preds = %bb.g
  store i32 %spec.select.i.i122, ptr %i.o, align 4, !tbaa !147
  store ptr %i.y, ptr %i.s, align 8, !tbaa !136
  %i.z = icmp sgt i32 %spec.select.i.i122, %i.p
  br i1 %i.z, label %bb.i, label %resizeOpArray.exit.i.i123

bb.i:                                             ; preds = %sqlite3DbRealloc.exit.i.i.i129
  %i.aa = sext i32 %i.p to i64
  %i.ab = getelementptr inbounds [24 x i8], ptr %i.y, i64 %i.aa
  %i.ac = sub nsw i32 %spec.select.i.i122, %i.p
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = mul nuw nsw i64 %i.ad, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ab, i8 0, i64 %i.ae, i1 false)
  br label %resizeOpArray.exit.i.i123

resizeOpArray.exit.i.i123:                        ; preds = %bb.i, %sqlite3DbRealloc.exit.i.i.i129, %bb.h, %bb.f
  %i.af = load ptr, ptr %i.l, align 8, !tbaa !106
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 42
  %i.ah = load i8, ptr %i.ag, align 2, !tbaa !129
  %.not24.i.i124 = icmp eq i8 %i.ah, 0
  br i1 %.not24.i.i124, label %resizeOpArray.exit._crit_edge.i.i126, label %sqlite3ExprCode.exit

end_hunk_1
begin_hunk_2_@sqlite3WhereBegin:bb.a

bb.ds:                                            ; preds = %tailrecurse.i.i361.i
  %i.uz = getelementptr inbounds nuw i8, ptr %.tr.i.i.i, i64 1
  %i.va = load i8, ptr %i.uz, align 1, !tbaa !1570
  br label %sqlite3ExprAffinity.exit.i.i

sqlite3ExprAffinity.exit.i.i:                     ; preds = %bb.dr, %bb.dq, %bb.ds, %bb.dn
  %.0.i.i.i = phi i8 [ 99, %bb.dn ], [ %i.va, %bb.ds ], [ %.1.i.i.i.i, %bb.dr ], [ 100, %bb.dq ] ; 7 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.tp, i64 24
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !1206 ; 5 uses
  %.not.i364.i = icmp eq ptr %i.vc, null          ; 3 uses
  br i1 %.not.i364.i, label %bb.ec, label %tailrecurse.i.i367.i

tailrecurse.i.i367.i:                             ; preds = %sqlite3ExprAffinity.exit.i.i, %bb.dt
  %.tr.i.i368.i = phi ptr [ %i.vj, %bb.dt ], [ %i.vc, %sqlite3ExprAffinity.exit.i.i ] ; 5 uses
  %i.vd = load i8, ptr %.tr.i.i368.i, align 8, !tbaa !1319
  switch i8 %i.vd, label %bb.dz [
    i8 110, label %bb.dt
    i8 31, label %bb.du
  ]

bb.dt:                                            ; preds = %tailrecurse.i.i367.i
  %i.ve = getelementptr inbounds nuw i8, ptr %.tr.i.i368.i, i64 96
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !1217
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !1219
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 16
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !1208
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !1212
  br label %tailrecurse.i.i367.i

bb.du:                                            ; preds = %tailrecurse.i.i367.i
  %i.vk = getelementptr inbounds nuw i8, ptr %.tr.i.i368.i, i64 40
  %.val.i.i369.i = load ptr, ptr %i.vk, align 8, !tbaa !77 ; 2 uses
  %i.vl = getelementptr i8, ptr %.tr.i.i368.i, i64 48
  %.val7.i.i370.i = load i32, ptr %i.vl, align 8
  %i.vm = lshr i32 %.val7.i.i370.i, 1             ; 2 uses
  %i.vn = zext nneg i32 %i.vm to i64
  %i.vo = getelementptr inbounds nuw i8, ptr %.val.i.i369.i, i64 %i.vn
  %.not1.i.i.i371.i = icmp eq i32 %i.vm, 0
  br i1 %.not1.i.i.i371.i, label %sqlite3ExprAffinity.exit.i378.i, label %.lr.ph.i.i.i372.i

.lr.ph.i.i.i372.i:                                ; preds = %bb.du, %bb.dy
  %.04.i.i.i373.i = phi i32 [ %i.vv, %bb.dy ], [ 0, %bb.du ]
  %.0323.i.i.i374.i = phi ptr [ %i.vw, %bb.dy ], [ %.val.i.i369.i, %bb.du ] ; 2 uses
  %.0332.i.i.i375.i = phi i8 [ %.1.i.i.i376.i, %bb.dy ], [ 99, %bb.du ] ; 3 uses
  %i.vp = shl i32 %.04.i.i.i373.i, 8
  %i.vq = load i8, ptr %.0323.i.i.i374.i, align 1, !tbaa !37
  %i.vr = zext i8 %i.vq to i64
  %i.vs = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.vr
  %i.vt = load i8, ptr %i.vs, align 1, !tbaa !37
  %i.vu = zext i8 %i.vt to i32
  %i.vv = or disjoint i32 %i.vp, %i.vu            ; 6 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %.0323.i.i.i374.i, i64 1 ; 2 uses
  switch i32 %i.vv, label %bb.dw [
    i32 1667785074, label %bb.dy
    i32 1668050786, label %bb.dy
    i32 1952807028, label %bb.dy
    i32 1651273570, label %bb.dv
  ]

bb.dv:                                            ; preds = %.lr.ph.i.i.i372.i
  switch i8 %.0332.i.i.i375.i, label %bb.dw [
    i8 101, label %bb.dy
    i8 99, label %bb.dy
  ]

bb.dw:                                            ; preds = %bb.dv, %.lr.ph.i.i.i372.i
  %i.vx = icmp eq i32 %i.vv, 1919246700
  %i.vy = icmp eq i8 %.0332.i.i.i375.i, 99
  %i.vz = icmp eq i32 %i.vv, 1718382433
  %i.wa = or i1 %i.vx, %i.vz
  %i.wb = icmp eq i32 %i.vv, 1685026146
  %i.wc = or i1 %i.wb, %i.wa
  %or.cond35.i.i.i381.i = select i1 %i.wc, i1 %i.vy, i1 false
  br i1 %or.cond35.i.i.i381.i, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.wd = and i32 %i.vv, 16777215
  %i.we = icmp eq i32 %i.wd, 6909556
  br i1 %i.we, label %sqlite3ExprAffinity.exit.i378.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw, %bb.dv, %bb.dv, %.lr.ph.i.i.i372.i, %.lr.ph.i.i.i372.i, %.lr.ph.i.i.i372.i
  %.1.i.i.i376.i = phi i8 [ %.0332.i.i.i375.i, %bb.dx ], [ 97, %.lr.ph.i.i.i372.i ], [ 97, %.lr.ph.i.i.i372.i ], [ 97, %.lr.ph.i.i.i372.i ], [ 98, %bb.dv ], [ 101, %bb.dw ], [ 98, %bb.dv ] ; 2 uses
  %.not.i.i.i377.i = icmp eq ptr %i.vw, %i.vo
  br i1 %.not.i.i.i377.i, label %sqlite3ExprAffinity.exit.i378.i, label %.lr.ph.i.i.i372.i, !llvm.loop !1318

bb.dz:                                            ; preds = %tailrecurse.i.i367.i
  %i.wf = getelementptr inbounds nuw i8, ptr %.tr.i.i368.i, i64 1
  %i.wg = load i8, ptr %i.wf, align 1, !tbaa !1570
  br label %sqlite3ExprAffinity.exit.i378.i

sqlite3ExprAffinity.exit.i378.i:                  ; preds = %bb.dy, %bb.dx, %bb.dz, %bb.du
  %.0.i.i379.i = phi i8 [ 99, %bb.du ], [ %i.wg, %bb.dz ], [ %.1.i.i.i376.i, %bb.dy ], [ 100, %bb.dx ] ; 4 uses
  %i.wh = icmp ne i8 %.0.i.i379.i, 0
  %i.wi = icmp ne i8 %.0.i.i.i, 0
  %or.cond.i.i = and i1 %i.wi, %i.wh
  br i1 %or.cond.i.i, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %sqlite3ExprAffinity.exit.i378.i
  %i.wj = icmp slt i8 %.0.i.i379.i, 99
  %i.wk = icmp slt i8 %.0.i.i.i, 99
  %or.cond5.i.not459.i = and i1 %i.wk, %i.wj
  %i.wl = icmp sgt i8 %i.tw, 98
  %or.cond457.i = select i1 %or.cond5.i.not459.i, i1 true, i1 %i.wl
  br i1 %or.cond457.i, label %sqlite3IndexAffinityOk.exit.thread.i.i, label %.thread.i.i

bb.eb:                                            ; preds = %sqlite3ExprAffinity.exit.i378.i
  %i.wm = or i8 %.0.i.i379.i, %.0.i.i.i
  %or.cond7.not.i.i = icmp eq i8 %i.wm, 0
  %i.wn = add i8 %.0.i.i379.i, %.0.i.i.i
  br i1 %or.cond7.not.i.i, label %sqlite3IndexAffinityOk.exit.thread.i.i, label %comparisonAffinity.exit.i

bb.ec:                                            ; preds = %sqlite3ExprAffinity.exit.i.i
  %i.wo = getelementptr inbounds nuw i8, ptr %i.tp, i64 96
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !1217 ; 2 uses
  %.not10.i.i = icmp eq ptr %i.wp, null
  br i1 %.not10.i.i, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !1219
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 16
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !1208
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !1212
  %i.wu = call fastcc signext i8 @sqlite3CompareAffinity(ptr noundef %i.wt, i8 noundef signext %.0.i.i.i)
  br label %comparisonAffinity.exit.i

bb.ee:                                            ; preds = %bb.ec
  %.not11.i.i = icmp eq i8 %.0.i.i.i, 0
  br i1 %.not11.i.i, label %sqlite3IndexAffinityOk.exit.thread.i.thread.i, label %comparisonAffinity.exit.i

comparisonAffinity.exit.i:                        ; preds = %bb.ee, %bb.ed, %bb.eb
  %.0.i365.i = phi i8 [ %.0.i.i.i, %bb.ee ], [ %i.wu, %bb.ed ], [ %i.wn, %bb.eb ]
  switch i8 %.0.i365.i, label %comparisonAffinity.exit.thread416.i [
    i8 98, label %sqlite3IndexAffinityOk.exit.thread.i.i
    i8 97, label %sqlite3IndexAffinityOk.exit.i.i
  ]

comparisonAffinity.exit.thread416.i:              ; preds = %comparisonAffinity.exit.i
  %.old.i = icmp sgt i8 %i.tw, 98
  br i1 %.old.i, label %sqlite3IndexAffinityOk.exit.thread.i.i, label %.thread.i.i

sqlite3IndexAffinityOk.exit.i.i:                  ; preds = %comparisonAffinity.exit.i
  %i.wv = icmp eq i8 %i.tw, 97
  br i1 %i.wv, label %sqlite3IndexAffinityOk.exit.thread.i.i, label %.thread.i.i

sqlite3IndexAffinityOk.exit.thread.i.i:           ; preds = %sqlite3IndexAffinityOk.exit.i.i, %comparisonAffinity.exit.thread416.i, %comparisonAffinity.exit.i, %bb.eb, %bb.ea
  %i.ww = load ptr, ptr %i.tx, align 8, !tbaa !1205 ; 4 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 2
  %i.wy = load i16, ptr %i.wx, align 2, !tbaa !1343
  %i.wz = and i16 %i.wy, 256
  %.not.i347.i = icmp eq i16 %i.wz, 0
  br i1 %.not.i347.i, label %bb.ef, label %sqlite3BinaryCompareCollSeq.exit.i

sqlite3IndexAffinityOk.exit.thread.i.thread.i:    ; preds = %bb.ee
  %i.xa = load ptr, ptr %i.tx, align 8, !tbaa !1205 ; 3 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 2
  %i.xc = load i16, ptr %i.xb, align 2, !tbaa !1343
  %i.xd = and i16 %i.xc, 256
  %.not.i347455.i = icmp eq i16 %i.xd, 0
  br i1 %.not.i347455.i, label %.lr.ph.i.i350.i.preheader, label %sqlite3BinaryCompareCollSeq.exit.i

bb.ef:                                            ; preds = %sqlite3IndexAffinityOk.exit.thread.i.i
  br i1 %.not.i364.i, label %.lr.ph.i.i350.i.preheader, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.xe = getelementptr inbounds nuw i8, ptr %i.vc, i64 2
  %i.xf = load i16, ptr %i.xe, align 2, !tbaa !1343
  %i.xg = and i16 %i.xf, 256
  %.not14.i.i = icmp eq i16 %i.xg, 0
  br i1 %.not14.i.i, label %.lr.ph.i.i350.i.preheader, label %sqlite3BinaryCompareCollSeq.exit.i

.lr.ph.i.i350.i.preheader:                        ; preds = %bb.eg, %bb.ef, %sqlite3IndexAffinityOk.exit.thread.i.thread.i
  %.tr3234.i.i351.i.ph = phi ptr [ %i.xa, %sqlite3IndexAffinityOk.exit.thread.i.thread.i ], [ %i.ww, %bb.eg ], [ %i.ww, %bb.ef ]
  br label %.lr.ph.i.i350.i

.lr.ph.i.i350.i:                                  ; preds = %.lr.ph.i.i350.i.preheader, %tailrecurse.i.i354.i
  %.tr3234.i.i351.i = phi ptr [ %i.xo, %tailrecurse.i.i354.i ], [ %.tr3234.i.i351.i.ph, %.lr.ph.i.i350.i.preheader ] ; 3 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %.tr3234.i.i351.i, i64 8
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !1431 ; 5 uses
  %i.xj = load i8, ptr %.tr3234.i.i351.i, align 8, !tbaa !1319 ; 2 uses
  %i.xk = icmp ne i8 %i.xj, 31
  %i.xl = icmp ne i8 %i.xj, 86
  %or.cond.not21.i.i352.i = and i1 %i.xk, %i.xl
  %i.xm = icmp ne ptr %i.xi, null
  %or.cond3.i.i353.i = select i1 %or.cond.not21.i.i352.i, i1 true, i1 %i.xm
  br i1 %or.cond3.i.i353.i, label %bb.eh, label %tailrecurse.i.i354.i

tailrecurse.i.i354.i:                             ; preds = %.lr.ph.i.i350.i
  %i.xn = getelementptr inbounds nuw i8, ptr %.tr3234.i.i351.i, i64 16
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !1205 ; 2 uses
  %.not.i.i355.i = icmp eq ptr %i.xo, null
  br i1 %.not.i.i355.i, label %.loopexit.i356.i, label %.lr.ph.i.i350.i

bb.eh:                                            ; preds = %.lr.ph.i.i350.i
  %.not.i.i.i357.i = icmp eq ptr %i.xi, null
  br i1 %.not.i.i.i357.i, label %.loopexit.i356.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.xp = load ptr, ptr %i.xi, align 8, !tbaa !195 ; 2 uses
  %i.xq = load ptr, ptr %i.tq, align 8, !tbaa !244
  %i.xr = call fastcc ptr @sqlite3GetCollSeq(ptr noundef %i.xq, ptr noundef nonnull %i.xi, ptr noundef %i.xp)
  %.not13.i.i.i358.i = icmp eq ptr %i.xr, null
  br i1 %.not13.i.i.i358.i, label %bb.ej, label %sqlite3BinaryCompareCollSeq.exit.thread421.i

bb.ej:                                            ; preds = %bb.ei
  %i.xs = getelementptr inbounds nuw i8, ptr %i.tq, i64 80 ; 3 uses
  %i.xt = load i32, ptr %i.xs, align 8, !tbaa !252 ; 2 uses
  %i.xu = icmp eq i32 %i.xt, 0
  br i1 %i.xu, label %bb.ek, label %sqlite3CheckCollSeq.exit.i.i359.i

bb.ek:                                            ; preds = %bb.ej
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.tq, ptr noundef nonnull @.str.343, ptr noundef %i.xp), !inline_history !1571
  %.pre.i.i.i360.i = load i32, ptr %i.xs, align 8, !tbaa !252
  br label %sqlite3CheckCollSeq.exit.i.i359.i

sqlite3CheckCollSeq.exit.i.i359.i:                ; preds = %bb.ek, %bb.ej
  %i.xv = phi i32 [ %i.xt, %bb.ej ], [ %.pre.i.i.i360.i, %bb.ek ]
  %i.xw = add nsw i32 %i.xv, 1
  store i32 %i.xw, ptr %i.xs, align 8, !tbaa !252
  br label %.loopexit.i356.i

.loopexit.i356.i:                                 ; preds = %tailrecurse.i.i354.i, %sqlite3CheckCollSeq.exit.i.i359.i, %bb.eh
  br i1 %.not.i364.i, label %sqlite3BinaryCompareCollSeq.exit.thread.i, label %.lr.ph.i17.i.i

.lr.ph.i17.i.i:                                   ; preds = %.loopexit.i356.i, %tailrecurse.i21.i.i
  %.tr3234.i18.i.i = phi ptr [ %i.ye, %tailrecurse.i21.i.i ], [ %i.vc, %.loopexit.i356.i ] ; 3 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %.tr3234.i18.i.i, i64 8
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !1431 ; 5 uses
  %i.xz = load i8, ptr %.tr3234.i18.i.i, align 8, !tbaa !1319 ; 2 uses
  %i.ya = icmp ne i8 %i.xz, 31
  %i.yb = icmp ne i8 %i.xz, 86
  %or.cond.not21.i19.i.i = and i1 %i.ya, %i.yb
  %i.yc = icmp ne ptr %i.xy, null
  %or.cond3.i20.i.i = select i1 %or.cond.not21.i19.i.i, i1 true, i1 %i.yc
  br i1 %or.cond3.i20.i.i, label %bb.el, label %tailrecurse.i21.i.i

tailrecurse.i21.i.i:                              ; preds = %.lr.ph.i17.i.i
  %i.yd = getelementptr inbounds nuw i8, ptr %.tr3234.i18.i.i, i64 16
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !1205 ; 2 uses
  %.not.i22.i.i = icmp eq ptr %i.ye, null
  br i1 %.not.i22.i.i, label %sqlite3BinaryCompareCollSeq.exit.thread.i, label %.lr.ph.i17.i.i

bb.el:                                            ; preds = %.lr.ph.i17.i.i
  %.not.i.i24.i.i = icmp eq ptr %i.xy, null
  br i1 %.not.i.i24.i.i, label %sqlite3BinaryCompareCollSeq.exit.thread.i, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.yf = load ptr, ptr %i.xy, align 8, !tbaa !195 ; 2 uses
  %i.yg = load ptr, ptr %i.tq, align 8, !tbaa !244
  %i.yh = call fastcc ptr @sqlite3GetCollSeq(ptr noundef %i.yg, ptr noundef nonnull %i.xy, ptr noundef %i.yf)
  %.not13.i.i25.i.i = icmp eq ptr %i.yh, null
  br i1 %.not13.i.i25.i.i, label %bb.en, label %sqlite3BinaryCompareCollSeq.exit.thread421.i

bb.en:                                            ; preds = %bb.em
  %i.yi = getelementptr inbounds nuw i8, ptr %i.tq, i64 80 ; 3 uses
  %i.yj = load i32, ptr %i.yi, align 8, !tbaa !252 ; 2 uses
  %i.yk = icmp eq i32 %i.yj, 0
  br i1 %i.yk, label %bb.eo, label %sqlite3CheckCollSeq.exit.i26.i.i

bb.eo:                                            ; preds = %bb.en
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.tq, ptr noundef nonnull @.str.343, ptr noundef %i.yf), !inline_history !1571
  %.pre.i.i27.i.i = load i32, ptr %i.yi, align 8, !tbaa !252
  br label %sqlite3CheckCollSeq.exit.i26.i.i

sqlite3CheckCollSeq.exit.i26.i.i:                 ; preds = %bb.eo, %bb.en
  %i.yl = phi i32 [ %i.yj, %bb.en ], [ %.pre.i.i27.i.i, %bb.eo ]
  %i.ym = add nsw i32 %i.yl, 1
  store i32 %i.ym, ptr %i.yi, align 8, !tbaa !252
  br label %sqlite3BinaryCompareCollSeq.exit.thread.i

sqlite3BinaryCompareCollSeq.exit.i:               ; preds = %bb.eg, %sqlite3IndexAffinityOk.exit.thread.i.thread.i, %sqlite3IndexAffinityOk.exit.thread.i.i
  %.pn.i = phi ptr [ %i.ww, %sqlite3IndexAffinityOk.exit.thread.i.i ], [ %i.xa, %sqlite3IndexAffinityOk.exit.thread.i.thread.i ], [ %i.vc, %bb.eg ]
  %.0.i349.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8
  %.0.i349.i = load ptr, ptr %.0.i349.in.i, align 8, !tbaa !1431 ; 2 uses
  %.not51.i.i = icmp eq ptr %.0.i349.i, null
  br i1 %.not51.i.i, label %sqlite3BinaryCompareCollSeq.exit.thread.i, label %sqlite3BinaryCompareCollSeq.exit.thread421.i

sqlite3BinaryCompareCollSeq.exit.thread.i:        ; preds = %tailrecurse.i21.i.i, %sqlite3BinaryCompareCollSeq.exit.i, %sqlite3CheckCollSeq.exit.i26.i.i, %bb.el, %.loopexit.i356.i
  %i.yn = load ptr, ptr %i.tq, align 8, !tbaa !244
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 48
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !512
  br label %sqlite3BinaryCompareCollSeq.exit.thread421.i

sqlite3BinaryCompareCollSeq.exit.thread421.i:     ; preds = %sqlite3BinaryCompareCollSeq.exit.thread.i, %sqlite3BinaryCompareCollSeq.exit.i, %bb.em, %bb.ei
  %.042.i.i = phi ptr [ %.0.i349.i, %sqlite3BinaryCompareCollSeq.exit.i ], [ %i.yp, %sqlite3BinaryCompareCollSeq.exit.thread.i ], [ %i.xy, %bb.em ], [ %i.xi, %bb.ei ]
  %i.yq = load i32, ptr %i.rq, align 8, !tbaa !269 ; 4 uses
  %i.yr = icmp sgt i32 %i.yq, 0
  br i1 %i.yr, label %.lr.ph.i301.i, label %.critedge.i.i

.lr.ph.i301.i:                                    ; preds = %sqlite3BinaryCompareCollSeq.exit.thread421.i
  %i.ys = load ptr, ptr %i.rx, align 8, !tbaa !271
  %wide.trip.count.i.i = zext nneg i32 %i.yq to i64 ; 2 uses
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eq, %.lr.ph.i301.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i301.i ], [ %indvars.iv.next.i.i, %bb.eq ] ; 3 uses
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %i.ys, i64 %indvars.iv.i.i
  %i.yu = load i32, ptr %i.yt, align 4, !tbaa !4
  %.not52.i.i = icmp eq i32 %i.yu, %i.sd
  br i1 %.not52.i.i, label %.critedge.loopexit.split.loop.exit91.i.i, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.critedge.i.i, label %bb.ep, !llvm.loop !1740

.critedge.loopexit.split.loop.exit91.i.i:         ; preds = %bb.ep
  %.pre598.i = and i64 %indvars.iv.i.i, 4294967295
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.eq, %.critedge.loopexit.split.loop.exit91.i.i, %sqlite3BinaryCompareCollSeq.exit.thread421.i
  %.040.lcssa.i.i = phi i64 [ 0, %sqlite3BinaryCompareCollSeq.exit.thread421.i ], [ %.pre598.i, %.critedge.loopexit.split.loop.exit91.i.i ], [ %wide.trip.count.i.i, %bb.eq ]
  %i.yv = load ptr, ptr %.042.i.i, align 8, !tbaa !195 ; 2 uses
  %i.yw = load ptr, ptr %i.rz, align 8, !tbaa !1325
  %i.yx = getelementptr inbounds nuw [8 x i8], ptr %i.yw, i64 %.040.lcssa.i.i
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !72 ; 2 uses
  %i.yz = load i8, ptr %i.yv, align 1, !tbaa !37  ; 2 uses
  %.not10.i.i.i = icmp eq i8 %i.yz, 0
  br i1 %.not10.i.i.i, label %sqlite3StrICmp.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge.i.i, %bb.er
  %i.za = phi i8 [ %i.zl, %bb.er ], [ %i.yz, %.critedge.i.i ]
  %.012.i.i.i = phi ptr [ %i.zk, %bb.er ], [ %i.yy, %.critedge.i.i ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.zj, %bb.er ], [ %i.yv, %.critedge.i.i ]
  %i.zb = zext i8 %i.za to i64                    ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.zb
  %i.zd = load i8, ptr %i.zc, align 1, !tbaa !37
  %i.ze = load i8, ptr %.012.i.i.i, align 1, !tbaa !37
  %i.zf = zext i8 %i.ze to i64
  %i.zg = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.zf
  %i.zh = load i8, ptr %i.zg, align 1, !tbaa !37
  %i.zi = icmp eq i8 %i.zd, %i.zh
  br i1 %i.zi, label %bb.er, label %sqlite3StrICmp.exit.i.i

bb.er:                                            ; preds = %.lr.ph.i.i.i
  %i.zj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 1 ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 1 ; 2 uses
  %i.zl = load i8, ptr %i.zj, align 1, !tbaa !37  ; 2 uses
  %.not.i.i300.i = icmp eq i8 %i.zl, 0
  br i1 %.not.i.i300.i, label %..critedge.loopexit.i_crit_edge.i.i, label %.lr.ph.i.i.i, !llvm.loop !266

..critedge.loopexit.i_crit_edge.i.i:              ; preds = %bb.er
  br label %sqlite3StrICmp.exit.i.i, !llvm.loop !266

sqlite3StrICmp.exit.i.i:                          ; preds = %.lr.ph.i.i.i, %..critedge.loopexit.i_crit_edge.i.i, %.critedge.i.i
  %.0.lcssa.i.i.i = phi ptr [ %i.yy, %.critedge.i.i ], [ %i.zk, %..critedge.loopexit.i_crit_edge.i.i ], [ %.012.i.i.i, %.lr.ph.i.i.i ]
  %.lcssa.i.i.i = phi i64 [ 0, %.critedge.i.i ], [ 0, %..critedge.loopexit.i_crit_edge.i.i ], [ %i.zb, %.lr.ph.i.i.i ]
  %i.zm = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.lcssa.i.i.i
  %i.zn = load i8, ptr %i.zm, align 1, !tbaa !37
  %i.zo = load i8, ptr %.0.lcssa.i.i.i, align 1, !tbaa !37
  %i.zp = zext i8 %i.zo to i64
  %i.zq = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.zp
  %i.zr = load i8, ptr %i.zq, align 1, !tbaa !37
  %.not53.i.i = icmp eq i8 %i.zn, %i.zr
  br i1 %.not53.i.i, label %sqlite3StrICmp.exit.i.findTerm.exit308.thread426.loopexit550_crit_edge.i, label %.thread.i.i

sqlite3StrICmp.exit.i.findTerm.exit308.thread426.loopexit550_crit_edge.i: ; preds = %sqlite3StrICmp.exit.i.i
  %i.zs = getelementptr inbounds nuw i8, ptr %.04167.i.i, i64 14
  %.pre596.pre.i = load i16, ptr %i.zs, align 2, !tbaa !1705
  br label %findTerm.exit308.thread426.i

.thread.i.i:                                      ; preds = %sqlite3StrICmp.exit.i.i, %sqlite3IndexAffinityOk.exit.i.i, %comparisonAffinity.exit.thread416.i, %bb.ea, %bb.dj, %bb.di, %bb.dh, %.lr.ph68.split.i.i
  %i.zt = phi i32 [ %i.sy, %bb.ea ], [ %i.yq, %sqlite3StrICmp.exit.i.i ], [ %i.sy, %sqlite3IndexAffinityOk.exit.i.i ], [ %i.sy, %comparisonAffinity.exit.thread416.i ], [ %i.sy, %bb.dj ], [ %i.sy, %bb.di ], [ %i.sy, %bb.dh ], [ %i.sy, %.lr.ph68.split.i.i ] ; 2 uses
  %i.zu = add nsw i32 %.04366.i.i, -1             ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %.04167.i.i, i64 48
  %.not.i.i830 = icmp eq i32 %i.zu, 0
  br i1 %.not.i.i830, label %findTerm.exit308.thread.i, label %.lr.ph68.split.i.i, !llvm.loop !1736

findTerm.exit308.thread426.i:                     ; preds = %bb.dg, %sqlite3StrICmp.exit.i.findTerm.exit308.thread426.loopexit550_crit_edge.i
  %i.zw = phi i32 [ %i.yq, %sqlite3StrICmp.exit.i.findTerm.exit308.thread426.loopexit550_crit_edge.i ], [ %i.sa, %bb.dg ] ; 4 uses
  %i.zx = phi i16 [ %.pre596.pre.i, %sqlite3StrICmp.exit.i.findTerm.exit308.thread426.loopexit550_crit_edge.i ], [ %i.su, %bb.dg ]
  %.039.i299428.i = phi ptr [ %.04167.i.i, %sqlite3StrICmp.exit.i.findTerm.exit308.thread426.loopexit550_crit_edge.i ], [ %.04167.us.i303.i, %bb.dg ]
  %i.zy = or i32 %.3188512.i, 4096
  %i.zz = and i16 %i.zx, 1
  %.not215.i = icmp eq i16 %i.zz, 0
  br i1 %.not215.i, label %bb.ew, label %bb.es

bb.es:                                            ; preds = %findTerm.exit308.thread426.i
  %i.aaa = load ptr, ptr %.039.i299428.i, align 8, !tbaa !1738 ; 2 uses
  %i.aab = or i32 %.3188512.i, 20480              ; 3 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aaa, i64 96
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !1217
  %.not216.i = icmp eq ptr %i.aad, null
  br i1 %.not216.i, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.aae = fmul double %.0164516.i, 2.500000e+01
  br label %bb.ew

bb.eu:                                            ; preds = %bb.es
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aaa, i64 32
  %i.aag = load ptr, ptr %i.aaf, align 8, !tbaa !1207 ; 2 uses
  %.not217.i = icmp eq ptr %i.aag, null
  br i1 %.not217.i, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.aah = load i32, ptr %i.aag, align 8, !tbaa !1211
  %i.aai = add nsw i32 %i.aah, 1
  %i.aaj = sitofp i32 %i.aai to double
  %i.aak = fmul double %.0164516.i, %i.aaj
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu, %bb.et, %findTerm.exit308.thread426.i, %findTerm.exit308.thread426.thread.i
  %i.aal = phi i32 [ %i.zw, %bb.et ], [ %i.zw, %bb.ev ], [ %i.zw, %bb.eu ], [ %i.zw, %findTerm.exit308.thread426.i ], [ %i.sy, %findTerm.exit308.thread426.thread.i ] ; 3 uses
  %.5190.ph.i = phi i32 [ %i.aab, %bb.et ], [ %i.aab, %bb.ev ], [ %i.aab, %bb.eu ], [ %i.zy, %findTerm.exit308.thread426.i ], [ %i.to, %findTerm.exit308.thread426.thread.i ] ; 2 uses
  %.3167.ph.i = phi double [ %i.aae, %bb.et ], [ %i.aak, %bb.ev ], [ %.0164516.i, %bb.eu ], [ %.0164516.i, %findTerm.exit308.thread426.i ], [ %.0164516.i, %findTerm.exit308.thread426.thread.i ] ; 2 uses
  %indvars.iv.next.i831 = add nuw nsw i64 %indvars.iv.i829, 1 ; 3 uses
  %i.aam = sext i32 %i.aal to i64
  %i.aan = icmp slt i64 %indvars.iv.next.i831, %i.aam
  br i1 %i.aan, label %bb.dd, label %findTerm.exit308.thread.i, !llvm.loop !1741

findTerm.exit308.thread.i:                        ; preds = %bb.ew, %bb.dd, %.thread.i.i, %.thread.us.i305.i
  %indvars.iv.next.lcssa.sink.sink.i = phi i64 [ %indvars.iv.i829, %.thread.i.i ], [ %indvars.iv.i829, %.thread.us.i305.i ], [ %indvars.iv.i829, %bb.dd ], [ %indvars.iv.next.i831, %bb.ew ] ; 2 uses
  %i.aao = phi i32 [ %i.zt, %.thread.i.i ], [ %i.sa, %.thread.us.i305.i ], [ %i.sa, %bb.dd ], [ %i.aal, %bb.ew ] ; 2 uses
  %.3188494.i = phi i32 [ %.3188512.i, %.thread.i.i ], [ %.3188512.i, %.thread.us.i305.i ], [ %.3188512.i, %bb.dd ], [ %.5190.ph.i, %bb.ew ] ; 2 uses
  %.0164485.i = phi double [ %.0164516.i, %.thread.i.i ], [ %.0164516.i, %.thread.us.i305.i ], [ %.0164516.i, %bb.dd ], [ %.3167.ph.i, %bb.ew ] ; 3 uses
  %indvars.le.i = trunc i64 %indvars.iv.next.lcssa.sink.sink.i to i32 ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %.0194531.i, i64 24
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !1074
  %i.aar = and i64 %indvars.iv.next.lcssa.sink.sink.i, 4294967295 ; 3 uses
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.aaq, i64 %i.aar
  %i.aat = load i32, ptr %i.aas, align 4, !tbaa !4
  %i.aau = uitofp i32 %i.aat to double
  %i.aav = fmul double %.0164485.i, %i.aau        ; 2 uses
  %i.aaw = fcmp ogt double %.0164485.i, 1.000000e+01
  br i1 %i.aaw, label %.lr.ph.i310.i, label %estLog.exit313.i

.lr.ph.i310.i:                                    ; preds = %findTerm.exit308.thread.i, %.lr.ph.i310.i
  %.07.i311.i = phi double [ %i.aay, %.lr.ph.i310.i ], [ 1.000000e+01, %findTerm.exit308.thread.i ]
  %.056.i312.i = phi double [ %i.aax, %.lr.ph.i310.i ], [ 1.000000e+00, %findTerm.exit308.thread.i ]
  %i.aax = fadd double %.056.i312.i, 1.000000e+00 ; 2 uses
  %i.aay = fmul double %.07.i311.i, 1.000000e+01  ; 2 uses
  %i.aaz = fcmp ogt double %.0164485.i, %i.aay
  br i1 %i.aaz, label %.lr.ph.i310.i, label %estLog.exit313.loopexit.i, !llvm.loop !1739

estLog.exit313.loopexit.i:                        ; preds = %.lr.ph.i310.i
  %i.aba = fmul double %i.aav, %i.aax
  br label %estLog.exit313.i

estLog.exit313.i:                                 ; preds = %estLog.exit313.loopexit.i, %findTerm.exit308.thread.i, %findTerm.exit308.thread.thread.i
  %i.abb = phi i64 [ %i.aar, %findTerm.exit308.thread.i ], [ %i.aar, %estLog.exit313.loopexit.i ], [ 0, %findTerm.exit308.thread.thread.i ] ; 3 uses
  %.0169488658.i = phi i32 [ %indvars.le.i, %findTerm.exit308.thread.i ], [ %indvars.le.i, %estLog.exit313.loopexit.i ], [ 0, %findTerm.exit308.thread.thread.i ] ; 3 uses
  %.3188494657.i = phi i32 [ %.3188494.i, %findTerm.exit308.thread.i ], [ %.3188494.i, %estLog.exit313.loopexit.i ], [ 0, %findTerm.exit308.thread.thread.i ] ; 3 uses
  %i.abc = phi i32 [ %i.aao, %findTerm.exit308.thread.i ], [ %i.aao, %estLog.exit313.loopexit.i ], [ %i.rr, %findTerm.exit308.thread.thread.i ] ; 2 uses
  %.05.lcssa.i309.i = phi double [ %i.aav, %findTerm.exit308.thread.i ], [ %i.aba, %estLog.exit313.loopexit.i ], [ %i.rw, %findTerm.exit308.thread.thread.i ] ; 4 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %.0194531.i, i64 44 ; 2 uses
  %i.abe = load i8, ptr %i.abd, align 4, !tbaa !1078
  %.not218.i = icmp ne i8 %i.abe, 0
  %i.abf = and i32 %.3188494657.i, 16384
  %i.abg = icmp eq i32 %i.abf, 0
  %or.cond.i821 = select i1 %.not218.i, i1 %i.abg, i1 false
  %i.abh = icmp eq i32 %.0169488658.i, %i.abc
  %i.abi = or i32 %.3188494657.i, 4194304
  %i.abj = and i1 %i.abh, %or.cond.i821
  %.7192.i = select i1 %i.abj, i32 %i.abi, i32 %.3188494657.i ; 3 uses
  %i.abk = icmp slt i32 %.0169488658.i, %i.abc
  br i1 %i.abk, label %bb.ex, label %bb.fa

bb.ex:                                            ; preds = %estLog.exit313.i
  %i.abl = getelementptr inbounds nuw i8, ptr %.0194531.i, i64 16
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !271
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %i.abm, i64 %i.abb
  %i.abo = load i32, ptr %i.abn, align 4, !tbaa !4 ; 3 uses
  %i.abp = call fastcc ptr @findTerm(ptr noundef nonnull readonly %6, i32 noundef %i.dg, i32 noundef %i.abo, i64 noundef %.06471605, i16 noundef zeroext 60, ptr noundef nonnull %.0194531.i)
  %.not219.i = icmp eq ptr %i.abp, null
  br i1 %.not219.i, label %bb.fa, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.abq = call fastcc ptr @findTerm(ptr noundef nonnull readonly %6, i32 noundef %i.dg, i32 noundef %i.abo, i64 noundef %.06471605, i16 noundef zeroext 24, ptr noundef nonnull %.0194531.i)
  %.not220.i = icmp eq ptr %i.abq, null           ; 2 uses
  %i.abr = fdiv double %.05.lcssa.i309.i, 3.000000e+00
  %.8193.v.i = select i1 %.not220.i, i32 8192, i32 73728
  %.8193.i = or i32 %.8193.v.i, %.7192.i          ; 2 uses
  %.3179.i = select i1 %.not220.i, double %.05.lcssa.i309.i, double %i.abr ; 2 uses
  %i.abs = call fastcc ptr @findTerm(ptr noundef nonnull readonly %6, i32 noundef %i.dg, i32 noundef %i.abo, i64 noundef %.06471605, i16 noundef zeroext 36, ptr noundef nonnull %.0194531.i)
  %.not221.i = icmp eq ptr %i.abs, null
  br i1 %.not221.i, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.abt = or i32 %.8193.i, 131072
  %i.abu = fdiv double %.3179.i, 3.000000e+00
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey, %bb.ex, %estLog.exit313.i
  %.10.i = phi i32 [ %.7192.i, %estLog.exit313.i ], [ %i.abt, %bb.ez ], [ %.8193.i, %bb.ey ], [ %.7192.i, %bb.ex ] ; 5 uses
  %.5181.i = phi double [ %.05.lcssa.i309.i, %estLog.exit313.i ], [ %i.abu, %bb.ez ], [ %.3179.i, %bb.ey ], [ %.05.lcssa.i309.i, %bb.ex ] ; 6 uses
  br i1 %.not210.i, label %bb.gg, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.abv = and i32 %.10.i, 16384
  %i.abw = icmp eq i32 %i.abv, 0
  br i1 %i.abw, label %bb.fc, label %isSortingIndex.exit.thread.i

bb.fc:                                            ; preds = %bb.fb
  %i.abx = load ptr, ptr %i.h, align 8, !tbaa !1681 ; 6 uses
  %i.aby = load i32, ptr %i.lf, align 8, !tbaa !1211 ; 4 uses
  %i.abz = icmp sgt i32 %i.aby, 0
  br i1 %i.abz, label %.lr.ph.i315.i, label %.critedge.i314.i

.lr.ph.i315.i:                                    ; preds = %bb.fc
  %i.aca = load ptr, ptr %i.ro, align 8, !tbaa !1208
  %i.acb = load ptr, ptr %0, align 8, !tbaa !244
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 48
  %i.acd = getelementptr inbounds nuw i8, ptr %.0194531.i, i64 16
  %i.ace = getelementptr inbounds nuw i8, ptr %.0194531.i, i64 32
  %i.acf = getelementptr inbounds nuw i8, ptr %.0194531.i, i64 72
  %i.acg = getelementptr inbounds nuw i8, ptr %.0194531.i, i64 80
  %i.ach = getelementptr inbounds nuw i8, ptr %i.abx, i64 4
  %.pre.i.i = load i32, ptr %i.rq, align 8, !tbaa !269
  br label %bb.fd

bb.fd:                                            ; preds = %select.unfold.i.i, %.lr.ph.i315.i
  %i.aci = phi i32 [ %.pre.i.i, %.lr.ph.i315.i ], [ %i.ade, %select.unfold.i.i ]
  %indvars.iv.i316.i = phi i64 [ 0, %.lr.ph.i315.i ], [ %indvars.iv.next.i321.i, %select.unfold.i.i ] ; 12 uses
  %.066135.i.i = phi i32 [ 0, %.lr.ph.i315.i ], [ %.268.ph.i.i, %select.unfold.i.i ] ; 5 uses
  %.069134.i.i = phi ptr [ %i.aca, %.lr.ph.i315.i ], [ %.170.ph.i.i, %select.unfold.i.i ] ; 4 uses
  %.071133.i.i = phi i32 [ 0, %.lr.ph.i315.i ], [ %.273.ph.i.i, %select.unfold.i.i ] ; 6 uses
  %i.acj = sext i32 %i.aci to i64
  %.not.i317.i = icmp sgt i64 %indvars.iv.i316.i, %i.acj
  br i1 %.not.i317.i, label %.critedge.loopexit.i318.i, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.ack = load ptr, ptr %.069134.i.i, align 8, !tbaa !1212 ; 4 uses
  %i.acl = load i8, ptr %i.ack, align 8, !tbaa !1319
  %.not78.i.i = icmp eq i8 %i.acl, -107
  br i1 %.not78.i.i, label %bb.ff, label %.critedge.loopexit.i318.i

bb.ff:                                            ; preds = %bb.fe
  %i.acm = getelementptr inbounds nuw i8, ptr %i.ack, i64 72
  %i.acn = load i32, ptr %i.acm, align 8, !tbaa !1338
  %.not79.i.i = icmp eq i32 %i.acn, %i.dg
  br i1 %.not79.i.i, label %.lr.ph.i.i319.i, label %.critedge.loopexit.i318.i

.lr.ph.i.i319.i:                                  ; preds = %bb.ff, %tailrecurse.i.i.i
  %.tr3234.i.i.i = phi ptr [ %i.acv, %tailrecurse.i.i.i ], [ %i.ack, %bb.ff ] ; 3 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %.tr3234.i.i.i, i64 8
  %i.acp = load ptr, ptr %i.aco, align 8, !tbaa !1431 ; 5 uses
  %i.acq = load i8, ptr %.tr3234.i.i.i, align 8, !tbaa !1319 ; 2 uses
  %i.acr = icmp ne i8 %i.acq, 31
  %i.acs = icmp ne i8 %i.acq, 86
  %or.cond.not21.i.i.i = and i1 %i.acr, %i.acs
  %i.act = icmp ne ptr %i.acp, null
  %or.cond3.i.i.i = select i1 %or.cond.not21.i.i.i, i1 true, i1 %i.act
  br i1 %or.cond3.i.i.i, label %bb.fg, label %tailrecurse.i.i.i

tailrecurse.i.i.i:                                ; preds = %.lr.ph.i.i319.i
  %i.acu = getelementptr inbounds nuw i8, ptr %.tr3234.i.i.i, i64 16
  %i.acv = load ptr, ptr %i.acu, align 8, !tbaa !1205 ; 2 uses
  %.not.i.i320.i = icmp eq ptr %i.acv, null
  br i1 %.not.i.i320.i, label %.loopexit.i.i, label %.lr.ph.i.i319.i

bb.fg:                                            ; preds = %.lr.ph.i.i319.i
  %.not.i.i.i.i = icmp eq ptr %i.acp, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.acw = load ptr, ptr %i.acp, align 8, !tbaa !195 ; 2 uses
  %i.acx = load ptr, ptr %0, align 8, !tbaa !244
  %i.acy = call fastcc ptr @sqlite3GetCollSeq(ptr noundef %i.acx, ptr noundef nonnull %i.acp, ptr noundef %i.acw)
  %.not13.i.i.i.i = icmp eq ptr %i.acy, null
  br i1 %.not13.i.i.i.i, label %bb.fi, label %sqlite3ExprCollSeq.exit.i.i

bb.fi:                                            ; preds = %bb.fh
  %i.acz = load i32, ptr %i.cr, align 8, !tbaa !252 ; 2 uses
  %i.ada = icmp eq i32 %i.acz, 0
  br i1 %i.ada, label %bb.fj, label %sqlite3CheckCollSeq.exit.i.i.i

bb.fj:                                            ; preds = %bb.fi
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.343, ptr noundef %i.acw), !inline_history !1571
  %.pre.i.i.i.i = load i32, ptr %i.cr, align 8, !tbaa !252
  br label %sqlite3CheckCollSeq.exit.i.i.i

sqlite3CheckCollSeq.exit.i.i.i:                   ; preds = %bb.fj, %bb.fi
  %i.adb = phi i32 [ %i.acz, %bb.fi ], [ %.pre.i.i.i.i, %bb.fj ]
  %i.adc = add nsw i32 %i.adb, 1
  store i32 %i.adc, ptr %i.cr, align 8, !tbaa !252
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %tailrecurse.i.i.i, %sqlite3CheckCollSeq.exit.i.i.i, %bb.fg
  %i.add = load ptr, ptr %i.acc, align 8, !tbaa !512
  br label %sqlite3ExprCollSeq.exit.i.i

sqlite3ExprCollSeq.exit.i.i:                      ; preds = %.loopexit.i.i, %bb.fh
  %.064.i.i = phi ptr [ %i.add, %.loopexit.i.i ], [ %i.acp, %bb.fh ] ; 2 uses
  %i.ade = load i32, ptr %i.rq, align 8, !tbaa !269 ; 2 uses
  %i.adf = sext i32 %i.ade to i64
  %i.adg = icmp slt i64 %indvars.iv.i316.i, %i.adf
  br i1 %i.adg, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %sqlite3ExprCollSeq.exit.i.i
  %i.adh = load ptr, ptr %i.acd, align 8, !tbaa !271
  %i.adi = getelementptr inbounds nuw [4 x i8], ptr %i.adh, i64 %indvars.iv.i316.i
  %i.adj = load i32, ptr %i.adi, align 4, !tbaa !4 ; 2 uses
  %i.adk = load ptr, ptr %i.ace, align 8, !tbaa !1088
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 24
  %i.adm = load i32, ptr %i.adl, align 8, !tbaa !1402
  %i.adn = icmp eq i32 %i.adj, %i.adm
  %spec.store.select.i.i = select i1 %i.adn, i32 -1, i32 %i.adj
  %i.ado = load ptr, ptr %i.acf, align 8, !tbaa !1433
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 %indvars.iv.i316.i
  %i.adq = load i8, ptr %i.adp, align 1, !tbaa !37
  %i.adr = zext i8 %i.adq to i32
  %i.ads = load ptr, ptr %i.acg, align 8, !tbaa !1325
  %i.adt = getelementptr inbounds nuw [8 x i8], ptr %i.ads, i64 %indvars.iv.i316.i
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %sqlite3ExprCollSeq.exit.i.i
  %.062.i.i = phi i32 [ %spec.store.select.i.i, %bb.fk ], [ -1, %sqlite3ExprCollSeq.exit.i.i ] ; 2 uses
  %.061.i.i = phi i32 [ %i.adr, %bb.fk ], [ 0, %sqlite3ExprCollSeq.exit.i.i ]
  %.060.in.i.i = phi ptr [ %i.adt, %bb.fk ], [ %.064.i.i, %sqlite3ExprCollSeq.exit.i.i ]
  %i.adu = getelementptr inbounds nuw i8, ptr %i.ack, i64 76
  %i.adv = load i32, ptr %i.adu, align 4, !tbaa !1368
  %.not81.i.i = icmp eq i32 %i.adv, %.062.i.i
  br i1 %.not81.i.i, label %bb.fm, label %bb.fo

bb.fm:                                            ; preds = %bb.fl
  %.060.i.i = load ptr, ptr %.060.in.i.i, align 8, !tbaa !72 ; 2 uses
  %i.adw = load ptr, ptr %.064.i.i, align 8, !tbaa !195 ; 2 uses
  %i.adx = load i8, ptr %i.adw, align 1, !tbaa !37 ; 2 uses
  %.not10.i.i322.i = icmp eq i8 %i.adx, 0
  br i1 %.not10.i.i322.i, label %sqlite3StrICmp.exit.i326.i, label %.lr.ph.i88.i.i

.lr.ph.i88.i.i:                                   ; preds = %bb.fm, %bb.fn
  %i.ady = phi i8 [ %i.aej, %bb.fn ], [ %i.adx, %bb.fm ]
  %.012.i.i323.i = phi ptr [ %i.aei, %bb.fn ], [ %.060.i.i, %bb.fm ] ; 3 uses
  %.0911.i.i324.i = phi ptr [ %i.aeh, %bb.fn ], [ %i.adw, %bb.fm ]
  %i.adz = zext i8 %i.ady to i64                  ; 2 uses
  %i.aea = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.adz
  %i.aeb = load i8, ptr %i.aea, align 1, !tbaa !37
  %i.aec = load i8, ptr %.012.i.i323.i, align 1, !tbaa !37
  %i.aed = zext i8 %i.aec to i64
  %i.aee = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.aed
  %i.aef = load i8, ptr %i.aee, align 1, !tbaa !37
  %i.aeg = icmp eq i8 %i.aeb, %i.aef
  br i1 %i.aeg, label %bb.fn, label %sqlite3StrICmp.exit.i326.i

bb.fn:                                            ; preds = %.lr.ph.i88.i.i
  %i.aeh = getelementptr inbounds nuw i8, ptr %.0911.i.i324.i, i64 1 ; 2 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %.012.i.i323.i, i64 1 ; 2 uses
  %i.aej = load i8, ptr %i.aeh, align 1, !tbaa !37 ; 2 uses
  %.not.i89.i.i = icmp eq i8 %i.aej, 0
  br i1 %.not.i89.i.i, label %..critedge.loopexit.i_crit_edge.i341.i, label %.lr.ph.i88.i.i, !llvm.loop !266

..critedge.loopexit.i_crit_edge.i341.i:           ; preds = %bb.fn
  br label %sqlite3StrICmp.exit.i326.i, !llvm.loop !266

sqlite3StrICmp.exit.i326.i:                       ; preds = %.lr.ph.i88.i.i, %..critedge.loopexit.i_crit_edge.i341.i, %bb.fm
  %.0.lcssa.i.i327.i = phi ptr [ %.060.i.i, %bb.fm ], [ %i.aei, %..critedge.loopexit.i_crit_edge.i341.i ], [ %.012.i.i323.i, %.lr.ph.i88.i.i ]
  %.lcssa.i.i328.i = phi i64 [ 0, %bb.fm ], [ 0, %..critedge.loopexit.i_crit_edge.i341.i ], [ %i.adz, %.lr.ph.i88.i.i ]
  %i.aek = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.lcssa.i.i328.i
  %i.ael = load i8, ptr %i.aek, align 1, !tbaa !37
  %i.aem = load i8, ptr %.0.lcssa.i.i327.i, align 1, !tbaa !37
  %i.aen = zext i8 %i.aem to i64
  %i.aeo = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.aen
  %i.aep = load i8, ptr %i.aeo, align 1, !tbaa !37
  %.not82.i.i = icmp eq i8 %i.ael, %i.aep
  br i1 %.not82.i.i, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %sqlite3StrICmp.exit.i326.i, %bb.fl
  %i.aeq = icmp samesign ult i64 %indvars.iv.i316.i, %i.abb
  br i1 %i.aeq, label %select.unfold.i.i, label %isSortingIndex.exit.thread.i

bb.fp:                                            ; preds = %sqlite3StrICmp.exit.i326.i
  %i.aer = getelementptr inbounds nuw i8, ptr %.069134.i.i, i64 16
  %i.aes = load i8, ptr %i.aer, align 8, !tbaa !1337
  %i.aet = zext i8 %i.aes to i32
  %i.aeu = xor i32 %.061.i.i, %i.aet              ; 2 uses
  %i.aev = icmp samesign ugt i64 %indvars.iv.i316.i, %i.abb
  br i1 %i.aev, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %.not83.i.i = icmp eq i32 %i.aeu, %.071133.i.i
  br i1 %.not83.i.i, label %bb.fr, label %isSortingIndex.exit.thread.i

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %.172.i.i = phi i32 [ %.071133.i.i, %bb.fq ], [ %i.aeu, %bb.fp ] ; 3 uses
  %i.aew = add nuw nsw i32 %.066135.i.i, 1        ; 5 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %.069134.i.i, i64 24 ; 2 uses
  %i.aey = icmp slt i32 %.062.i.i, 0
  br i1 %i.aey, label %bb.fs, label %select.unfold.i.i

bb.fs:                                            ; preds = %bb.fr
  %i.aez = load i32, ptr %i.abx, align 4, !tbaa !1688 ; 2 uses
  %i.afa = icmp sgt i32 %i.aez, 0
  br i1 %i.afa, label %.lr.ph.i.i.i336.i, label %getMask.exit.i.i329.i

.lr.ph.i.i.i336.i:                                ; preds = %bb.fs
  %wide.trip.count.i.i.i337.i = zext nneg i32 %i.aez to i64
  br label %bb.fu

bb.ft:                                            ; preds = %bb.fu
  %indvars.iv.next.i.i.i339.i = add nuw nsw i64 %indvars.iv.i.i.i338.i, 1 ; 2 uses
  %exitcond.not.i.i.i340.i = icmp eq i64 %indvars.iv.next.i.i.i339.i, %wide.trip.count.i.i.i337.i
  br i1 %exitcond.not.i.i.i340.i, label %getMask.exit.i.i329.i, label %bb.fu, !llvm.loop !1693

bb.fu:                                            ; preds = %bb.ft, %.lr.ph.i.i.i336.i
  %indvars.iv.i.i.i338.i = phi i64 [ 0, %.lr.ph.i.i.i336.i ], [ %indvars.iv.next.i.i.i339.i, %bb.ft ] ; 3 uses
  %i.afb = getelementptr inbounds nuw [4 x i8], ptr %i.ach, i64 %indvars.iv.i.i.i338.i
  %i.afc = load i32, ptr %i.afb, align 4, !tbaa !4
  %i.afd = icmp eq i32 %i.afc, %i.dg
  br i1 %i.afd, label %bb.fv, label %bb.ft

bb.fv:                                            ; preds = %bb.fu
  %i.afe = shl nuw i64 1, %indvars.iv.i.i.i338.i
  %i.aff = xor i64 %i.afe, -1
  br label %getMask.exit.i.i329.i

getMask.exit.i.i329.i:                            ; preds = %bb.ft, %bb.fv, %bb.fs
  %.07.i.i.i330.i = phi i64 [ %i.aff, %bb.fv ], [ -1, %bb.fs ], [ -1, %bb.ft ]
  %i.afg = load i32, ptr %i.lf, align 8, !tbaa !1211 ; 2 uses
  %smax.i.i331.i = call i32 @llvm.smax.i32(i32 %i.afg, i32 range(i32 0, -2147483648) %i.aew)
  %wide.trip.count.i.i332.i = zext nneg i32 %smax.i.i331.i to i64
  %exitcond.not.i.i334.i2192.not = icmp slt i32 %i.aew, %i.afg
  br i1 %exitcond.not.i.i334.i2192.not, label %.lr.ph2194, label %select.unfold.thread.i.i

.lr.ph2194:                                       ; preds = %getMask.exit.i.i329.i
  %i.afh = zext nneg i32 %i.aew to i64
  %i.afi = load ptr, ptr %i.ro, align 8, !tbaa !1208
  br label %bb.fx

bb.fw:                                            ; preds = %bb.fx
  %indvars.iv.next.i.i335.i = add nuw nsw i64 %indvars.iv.i.i333.i2193, 1 ; 2 uses
  %exitcond.not.i.i334.i = icmp eq i64 %indvars.iv.next.i.i335.i, %wide.trip.count.i.i332.i
  br i1 %exitcond.not.i.i334.i, label %select.unfold.thread.i.i, label %bb.fx, !llvm.loop !1737

select.unfold.thread.i.i:                         ; preds = %getMask.exit.i.i329.i, %bb.fw
  %indvars.iv.next167.i.i = add nuw nsw i64 %indvars.iv.i316.i, 1
  br label %.critedge.loopexit.i318.i

bb.fx:                                            ; preds = %.lr.ph2194, %bb.fw
  %indvars.iv.i.i333.i2193 = phi i64 [ %i.afh, %.lr.ph2194 ], [ %indvars.iv.next.i.i335.i, %bb.fw ] ; 2 uses
  %i.afj = getelementptr inbounds nuw [24 x i8], ptr %i.afi, i64 %indvars.iv.i.i333.i2193
  %i.afk = load ptr, ptr %i.afj, align 8, !tbaa !1212
  %i.afl = call fastcc i64 @exprTableUsage(ptr noundef nonnull %i.abx, ptr noundef %i.afk)
  %i.afm = and i64 %i.afl, %.07.i.i.i330.i
  %.not.i90.i.i = icmp eq i64 %i.afm, 0
  br i1 %.not.i90.i.i, label %bb.fw, label %select.unfold.i.i, !llvm.loop !1737

select.unfold.i.i:                                ; preds = %bb.fx, %bb.fr, %bb.fo
  %.273.ph.i.i = phi i32 [ %.172.i.i, %bb.fr ], [ %.071133.i.i, %bb.fo ], [ %.172.i.i, %bb.fx ] ; 2 uses
  %.170.ph.i.i = phi ptr [ %i.aex, %bb.fr ], [ %.069134.i.i, %bb.fo ], [ %i.aex, %bb.fx ]
  %.268.ph.i.i = phi i32 [ %i.aew, %bb.fr ], [ %.066135.i.i, %bb.fo ], [ %i.aew, %bb.fx ] ; 3 uses
  %indvars.iv.next.i321.i = add nuw nsw i64 %indvars.iv.i316.i, 1 ; 2 uses
  %i.afn = icmp slt i32 %.268.ph.i.i, %i.aby
  br i1 %i.afn, label %bb.fd, label %.critedge.loopexit.i318.i, !llvm.loop !1742

.critedge.loopexit.i318.i:                        ; preds = %select.unfold.i.i, %bb.ff, %bb.fe, %bb.fd, %select.unfold.thread.i.i
  %.071.lcssa.ph.i.i = phi i32 [ %.172.i.i, %select.unfold.thread.i.i ], [ %.071133.i.i, %bb.ff ], [ %.071133.i.i, %bb.fe ], [ %.273.ph.i.i, %select.unfold.i.i ], [ %.071133.i.i, %bb.fd ]
  %.066.lcssa.ph.i.i = phi i32 [ %i.aby, %select.unfold.thread.i.i ], [ %.066135.i.i, %bb.ff ], [ %.066135.i.i, %bb.fe ], [ %.268.ph.i.i, %select.unfold.i.i ], [ %.066135.i.i, %bb.fd ]
  %.065.lcssa.ph.in.i.i = phi i64 [ %indvars.iv.next167.i.i, %select.unfold.thread.i.i ], [ %indvars.iv.i316.i, %bb.ff ], [ %indvars.iv.i316.i, %bb.fe ], [ %indvars.iv.next.i321.i, %select.unfold.i.i ], [ %indvars.iv.i316.i, %bb.fd ]
  %.065.lcssa.ph.i.i = trunc i64 %.065.lcssa.ph.in.i.i to i32
  %.not.i827 = icmp eq i32 %.071.lcssa.ph.i.i, 0
  br label %.critedge.i314.i

.critedge.i314.i:                                 ; preds = %.critedge.loopexit.i318.i, %bb.fc
  %.071.lcssa.i.i = phi i1 [ true, %bb.fc ], [ %.not.i827, %.critedge.loopexit.i318.i ]
  %.066.lcssa.i.i = phi i32 [ 0, %bb.fc ], [ %.066.lcssa.ph.i.i, %.critedge.loopexit.i318.i ] ; 4 uses
  %.065.lcssa.i.i = phi i32 [ 0, %bb.fc ], [ %.065.lcssa.ph.i.i, %.critedge.loopexit.i318.i ]
  %.not85.i.i = icmp slt i32 %.066.lcssa.i.i, %i.aby
end_hunk_2
begin_hunk_3_@updateAccumulator:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 42 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 2, !tbaa !129
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %bb.i, label %resizeOpArray.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.at = mul i32 %spec.select.i.i.i, 24
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !136
  %i.av = tail call ptr @sqlite3_realloc(ptr noundef %i.au, i32 noundef %i.at), !inline_history !1809 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i.i, label %bb.j, label %sqlite3DbRealloc.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.aq, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i.i

sqlite3DbRealloc.exit.i.i.i.i:                    ; preds = %bb.i
  store i32 %spec.select.i.i.i, ptr %i.al, align 4, !tbaa !147
  store ptr %i.av, ptr %i.ap, align 8, !tbaa !136
  %i.aw = icmp sgt i32 %spec.select.i.i.i, %i.am
  br i1 %i.aw, label %bb.k, label %resizeOpArray.exit.i.i.i

bb.k:                                             ; preds = %sqlite3DbRealloc.exit.i.i.i.i
  %i.ax = sext i32 %i.am to i64
  %i.ay = getelementptr inbounds [24 x i8], ptr %i.av, i64 %i.ax
  %i.az = sub nsw i32 %spec.select.i.i.i, %i.am
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = mul nuw nsw i64 %i.ba, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ay, i8 0, i64 %i.bb, i1 false)
  br label %resizeOpArray.exit.i.i.i

resizeOpArray.exit.i.i.i:                         ; preds = %bb.k, %sqlite3DbRealloc.exit.i.i.i.i, %bb.j, %bb.h
  %i.bc = load ptr, ptr %i.ai, align 8, !tbaa !106
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 42
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !129
  %.not24.i.i.i = icmp eq i8 %i.be, 0
  br i1 %.not24.i.i.i, label %resizeOpArray.exit._crit_edge.i.i.i, label %sqlite3ExprCode.exit89

resizeOpArray.exit._crit_edge.i.i.i:              ; preds = %resizeOpArray.exit.i.i.i
  %.pre.i.i.i = load i32, ptr %i.aj, align 8, !tbaa !135
  br label %bb.l

bb.l:                                             ; preds = %resizeOpArray.exit._crit_edge.i.i.i, %bb.g
  %i.bf = phi i32 [ %.pre.i.i.i, %resizeOpArray.exit._crit_edge.i.i.i ], [ %i.ak, %bb.g ]
  %i.bg = add nsw i32 %i.bf, 1
  store i32 %i.bg, ptr %i.aj, align 8, !tbaa !135
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !136
  %i.bj = sext i32 %i.ak to i64
  %i.bk = getelementptr inbounds [24 x i8], ptr %i.bi, i64 %i.bj ; 6 uses
  store i8 7, ptr %i.bk, align 8, !tbaa !137
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i32 %i.ah, ptr %i.bl, align 4, !tbaa !141
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i32 %.014.i109, ptr %i.bm, align 8, !tbaa !140
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 0, ptr %i.bn, align 4, !tbaa !190
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store ptr null, ptr %i.bo, align 8, !tbaa !37
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  store i8 0, ptr %i.bp, align 1, !tbaa !191
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ai, i64 339
  store i8 0, ptr %i.bq, align 1, !tbaa !104
  br label %sqlite3ExprCode.exit89

sqlite3ExprCode.exit89:                           ; preds = %resizeOpArray.exit.i.i.i, %bb.l, %.lr.ph, %bb.f
  %i.br = add nsw i32 %.014.i109, 1
  %i.bs = add nsw i32 %.012.i111, -1
  %i.bt = getelementptr inbounds nuw i8, ptr %.013.i110, i64 24
  %i.bu = icmp sgt i32 %.012.i111, 1
  br i1 %i.bu, label %.lr.ph, label %sqlite3ExprCodeExprList.exit, !llvm.loop !1808

sqlite3ExprCodeExprList.exit:                     ; preds = %sqlite3ExprCode.exit89, %sqlite3GetTempRange.exit, %bb.b
  %.060 = phi i32 [ 0, %bb.b ], [ %i.v, %sqlite3GetTempRange.exit ], [ %i.v, %sqlite3ExprCode.exit89 ] ; 5 uses
  %.058 = phi i32 [ 0, %bb.b ], [ %.0.i, %sqlite3GetTempRange.exit ], [ %.0.i, %sqlite3ExprCode.exit89 ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.062116, i64 20 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !1806
  %i.bx = icmp sgt i32 %i.bw, -1
  br i1 %i.bx, label %bb.m, label %bb.u

bb.m:                                             ; preds = %sqlite3ExprCodeExprList.exit
  %i.by = load i32, ptr %i.k, align 8, !tbaa !1674 ; 4 uses
  %i.bz = add nsw i32 %i.by, 1
  store i32 %i.bz, ptr %i.k, align 8, !tbaa !1674
  %i.ca = load i32, ptr %i.l, align 4, !tbaa !1675 ; 2 uses
  %.not.i68 = icmp slt i32 %i.by, %i.ca
  br i1 %.not.i68, label %._crit_edge.i, label %bb.n

._crit_edge.i:                                    ; preds = %bb.m
  %.pre.i = load ptr, ptr %i.m, align 8, !tbaa !134
  br label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.cb = shl nsw i32 %i.ca, 1
  %i.cc = add nsw i32 %i.cb, 10                   ; 2 uses
  store i32 %i.cc, ptr %i.l, align 4, !tbaa !1675
  %i.cd = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.ce = load ptr, ptr %i.m, align 8, !tbaa !134 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 42 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 2, !tbaa !129
  %i.ch = icmp eq i8 %i.cg, 0
  br i1 %i.ch, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ci = shl i32 %i.cc, 2
  %i.cj = tail call ptr @sqlite3_realloc(ptr noundef %i.ce, i32 noundef %i.ci) ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i, label %bb.p, label %sqlite3DbReallocOrFree.exit.i

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %i.cf, align 2, !tbaa !129
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %i.ck = icmp eq ptr %i.ce, null
  br i1 %i.ck, label %sqlite3DbReallocOrFree.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cl = getelementptr inbounds i8, ptr %i.ce, i64 -8 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !28
  %sext.i.i.i = shl i64 %i.cm, 32
  %i.cn = ashr exact i64 %sext.i.i.i, 32
  %i.co = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.cp = sub nsw i64 %i.co, %i.cn
  store i64 %i.cp, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.cl) #43
  br label %sqlite3DbReallocOrFree.exit.i

sqlite3DbReallocOrFree.exit.i:                    ; preds = %bb.r, %bb.q, %bb.o
  %.0.i7.i.i = phi ptr [ %i.cj, %bb.o ], [ null, %bb.q ], [ null, %bb.r ] ; 2 uses
  store ptr %.0.i7.i.i, ptr %i.m, align 8, !tbaa !134
  br label %bb.s

bb.s:                                             ; preds = %sqlite3DbReallocOrFree.exit.i, %._crit_edge.i
  %i.cq = phi ptr [ %.pre.i, %._crit_edge.i ], [ %.0.i7.i.i, %sqlite3DbReallocOrFree.exit.i ] ; 2 uses
  %.not13.i = icmp eq ptr %i.cq, null
  br i1 %.not13.i, label %sqlite3VdbeMakeLabel.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cr = sext i32 %i.by to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.cr
  store i32 -1, ptr %i.cs, align 4, !tbaa !4
  br label %sqlite3VdbeMakeLabel.exit

sqlite3VdbeMakeLabel.exit:                        ; preds = %bb.s, %bb.t
  %i.ct = xor i32 %i.by, -1                       ; 2 uses
  %i.cu = load i32, ptr %i.bv, align 4, !tbaa !1806
  tail call fastcc void @codeDistinct(ptr noundef %0, i32 noundef %i.cu, i32 noundef %i.ct, i32 noundef 1, i32 noundef %.058)
  br label %bb.u

bb.u:                                             ; preds = %sqlite3VdbeMakeLabel.exit, %sqlite3ExprCodeExprList.exit
  %.059 = phi i32 [ %i.ct, %sqlite3VdbeMakeLabel.exit ], [ 0, %sqlite3ExprCodeExprList.exit ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.062116, i64 8 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !1800 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 3
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !947
  %.not64 = icmp eq i8 %i.cy, 0
  br i1 %.not64, label %sqlite3VdbeChangeP4.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cz = icmp sgt i32 %.060, 0
  br i1 %i.cz, label %.lr.ph114.preheader, label %._crit_edge.thread

.lr.ph114.preheader:                              ; preds = %bb.v
  %i.da = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1208
  br label %.lr.ph114

.lr.ph114:                                        ; preds = %.lr.ph114.preheader, %sqlite3ExprCollSeq.exit
  %.0113 = phi i32 [ %i.ds, %sqlite3ExprCollSeq.exit ], [ 0, %.lr.ph114.preheader ]
  %.054112 = phi ptr [ %i.dt, %sqlite3ExprCollSeq.exit ], [ %i.db, %.lr.ph114.preheader ] ; 2 uses
  %i.dc = load ptr, ptr %.054112, align 8, !tbaa !1212 ; 2 uses
  %.not33.i = icmp eq ptr %i.dc, null
  br i1 %.not33.i, label %sqlite3ExprCollSeq.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph114, %tailrecurse.i
  %.tr3234.i = phi ptr [ %i.dk, %tailrecurse.i ], [ %i.dc, %.lr.ph114 ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.tr3234.i, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !1431 ; 5 uses
  %i.df = load i8, ptr %.tr3234.i, align 8, !tbaa !1319 ; 2 uses
  %i.dg = icmp ne i8 %i.df, 31
  %i.dh = icmp ne i8 %i.df, 86
  %or.cond.not21.i = and i1 %i.dg, %i.dh
  %i.di = icmp ne ptr %i.de, null
  %or.cond3.i = select i1 %or.cond.not21.i, i1 true, i1 %i.di
  br i1 %or.cond3.i, label %bb.w, label %tailrecurse.i

tailrecurse.i:                                    ; preds = %.lr.ph.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.tr3234.i, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !1205 ; 2 uses
  %.not.i69 = icmp eq ptr %i.dk, null
  br i1 %.not.i69, label %sqlite3ExprCollSeq.exit, label %.lr.ph.i

bb.w:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i, label %sqlite3ExprCollSeq.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dl = load ptr, ptr %i.de, align 8, !tbaa !195 ; 2 uses
  %i.dm = load ptr, ptr %0, align 8, !tbaa !244
  %i.dn = tail call fastcc ptr @sqlite3GetCollSeq(ptr noundef %i.dm, ptr noundef nonnull %i.de, ptr noundef %i.dl)
  %.not13.i.i = icmp eq ptr %i.dn, null
  br i1 %.not13.i.i, label %bb.y, label %sqlite3ExprCollSeq.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.do = load i32, ptr %i.n, align 8, !tbaa !252 ; 2 uses
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.z, label %sqlite3CheckCollSeq.exit.i

bb.z:                                             ; preds = %bb.y
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.343, ptr noundef %i.dl), !inline_history !1571
  %.pre.i.i = load i32, ptr %i.n, align 8, !tbaa !252
  br label %sqlite3CheckCollSeq.exit.i

sqlite3CheckCollSeq.exit.i:                       ; preds = %bb.z, %bb.y
  %i.dq = phi i32 [ %i.do, %bb.y ], [ %.pre.i.i, %bb.z ]
  %i.dr = add nsw i32 %i.dq, 1
  store i32 %i.dr, ptr %i.n, align 8, !tbaa !252
  br label %sqlite3ExprCollSeq.exit

sqlite3ExprCollSeq.exit:                          ; preds = %tailrecurse.i, %.lr.ph114, %bb.w, %sqlite3CheckCollSeq.exit.i
  %i.ds = add nuw nsw i32 %.0113, 1               ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.054112, i64 24
  %i.du = icmp slt i32 %i.ds, %.060
  br i1 %i.du, label %.lr.ph114, label %._crit_edge.thread, !llvm.loop !1810

._crit_edge.thread:                               ; preds = %sqlite3ExprCollSeq.exit, %bb.v
  %i.dv = load ptr, ptr %0, align 8, !tbaa !244
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 48
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !512
  br label %sqlite3ExprCollSeq.exit.thread

sqlite3ExprCollSeq.exit.thread:                   ; preds = %bb.x, %._crit_edge.thread
  %.1 = phi ptr [ %i.dx, %._crit_edge.thread ], [ %i.de, %bb.x ] ; 2 uses
  %i.dy = load i32, ptr %i.o, align 8, !tbaa !135 ; 4 uses
  %i.dz = load i32, ptr %i.p, align 4, !tbaa !147 ; 6 uses
  %.not.i.i70 = icmp sgt i32 %i.dz, %i.dy
  br i1 %.not.i.i70, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %sqlite3ExprCollSeq.exit.thread
  %.not23.i.i = icmp eq i32 %i.dz, 0
  %i.ea = shl nsw i32 %i.dz, 1
  %spec.select.i.i = select i1 %.not23.i.i, i32 42, i32 %i.ea ; 4 uses
  %i.eb = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 42 ; 2 uses
  %i.ed = load i8, ptr %i.ec, align 2, !tbaa !129
  %i.ee = icmp eq i8 %i.ed, 0
  br i1 %i.ee, label %bb.ab, label %resizeOpArray.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.ef = mul i32 %spec.select.i.i, 24
  %i.eg = load ptr, ptr %i.q, align 8, !tbaa !136
  %i.eh = tail call ptr @sqlite3_realloc(ptr noundef %i.eg, i32 noundef %i.ef) ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i.i, label %bb.ac, label %sqlite3DbRealloc.exit.i.i.i

bb.ac:                                            ; preds = %bb.ab
  store i8 1, ptr %i.ec, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i

sqlite3DbRealloc.exit.i.i.i:                      ; preds = %bb.ab
  store i32 %spec.select.i.i, ptr %i.p, align 4, !tbaa !147
  store ptr %i.eh, ptr %i.q, align 8, !tbaa !136
  %i.ei = icmp sgt i32 %spec.select.i.i, %i.dz
  br i1 %i.ei, label %bb.ad, label %resizeOpArray.exit.i.i

bb.ad:                                            ; preds = %sqlite3DbRealloc.exit.i.i.i
  %i.ej = sext i32 %i.dz to i64
  %i.ek = getelementptr inbounds [24 x i8], ptr %i.eh, i64 %i.ej
  %i.el = sub nsw i32 %spec.select.i.i, %i.dz
  %i.em = zext nneg i32 %i.el to i64
  %i.en = mul nuw nsw i64 %i.em, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ek, i8 0, i64 %i.en, i1 false)
  br label %resizeOpArray.exit.i.i

resizeOpArray.exit.i.i:                           ; preds = %bb.ad, %sqlite3DbRealloc.exit.i.i.i, %bb.ac, %bb.aa
  %i.eo = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 42
  %i.eq = load i8, ptr %i.ep, align 2, !tbaa !129
  %.not24.i.i = icmp eq i8 %i.eq, 0
  br i1 %.not24.i.i, label %resizeOpArray.exit._crit_edge.i.i, label %sqlite3VdbeAddOp4.exit

resizeOpArray.exit._crit_edge.i.i:                ; preds = %resizeOpArray.exit.i.i
  %.pre.i.i71 = load i32, ptr %i.o, align 8, !tbaa !135
  br label %bb.ae

bb.ae:                                            ; preds = %resizeOpArray.exit._crit_edge.i.i, %sqlite3ExprCollSeq.exit.thread
  %i.er = phi i32 [ %.pre.i.i71, %resizeOpArray.exit._crit_edge.i.i ], [ %i.dy, %sqlite3ExprCollSeq.exit.thread ]
  %i.es = add nsw i32 %i.er, 1
  store i32 %i.es, ptr %i.o, align 8, !tbaa !135
  %i.et = load ptr, ptr %i.q, align 8, !tbaa !136
  %i.eu = sext i32 %i.dy to i64
  %i.ev = getelementptr inbounds [24 x i8], ptr %i.et, i64 %i.eu ; 3 uses
  store i8 11, ptr %i.ev, align 8, !tbaa !137
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 1
  store i8 0, ptr %i.ex, align 1, !tbaa !191
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ew, i8 0, i64 20, i1 false)
  store i8 0, ptr %i.r, align 1, !tbaa !104
  br label %sqlite3VdbeAddOp4.exit

sqlite3VdbeAddOp4.exit:                           ; preds = %resizeOpArray.exit.i.i, %bb.ae
  %.0.i.i = phi i32 [ %i.dy, %bb.ae ], [ 0, %resizeOpArray.exit.i.i ] ; 2 uses
  %i.ey = load ptr, ptr %i.q, align 8, !tbaa !136 ; 2 uses
  %i.ez = icmp eq ptr %i.ey, null
  br i1 %i.ez, label %sqlite3VdbeChangeP4.exitthread-pre-split, label %bb.af

bb.af:                                            ; preds = %sqlite3VdbeAddOp4.exit
  %i.fa = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 42
  %i.fc = load i8, ptr %i.fb, align 2, !tbaa !129
  %.not.i90 = icmp eq i8 %i.fc, 0
  br i1 %.not.i90, label %bb.ag, label %sqlite3VdbeChangeP4.exitthread-pre-split

bb.ag:                                            ; preds = %bb.af
  %i.fd = icmp slt i32 %.0.i.i, 0
  br i1 %i.fd, label %bb.ah, label %sqlite3VdbeChangeP4.exitthread-pre-split.sink.split

bb.ah:                                            ; preds = %bb.ag
  %i.fe = load i32, ptr %i.o, align 8, !tbaa !135 ; 2 uses
  %i.ff = add nsw i32 %i.fe, -1
  %i.fg = icmp slt i32 %i.fe, 1
  br i1 %i.fg, label %sqlite3VdbeChangeP4.exitthread-pre-split, label %sqlite3VdbeChangeP4.exitthread-pre-split.sink.split

sqlite3VdbeChangeP4.exitthread-pre-split.sink.split: ; preds = %bb.ah, %bb.ag
  %.0.i91 = phi i32 [ %i.ff, %bb.ah ], [ %.0.i.i, %bb.ag ]
  %i.fh = zext nneg i32 %.0.i91 to i64
  %i.fi = getelementptr inbounds nuw [24 x i8], ptr %i.ey, i64 %i.fh ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 1 ; 2 uses
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !191
  %i.fl = sext i8 %i.fk to i32
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 16 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !37
  tail call fastcc void @freeP4(i32 noundef %i.fl, ptr noundef %i.fn)
  %i.fo = icmp eq ptr %.1, null
  store ptr %.1, ptr %i.fm, align 8
  %spec.select = select i1 %i.fo, i8 0, i8 -4
  store i8 %spec.select, ptr %i.fj, align 1, !tbaa !191
  br label %sqlite3VdbeChangeP4.exitthread-pre-split

sqlite3VdbeChangeP4.exitthread-pre-split:         ; preds = %sqlite3VdbeChangeP4.exitthread-pre-split.sink.split, %sqlite3VdbeAddOp4.exit, %bb.af, %bb.ah
  %.pr = load ptr, ptr %i.cv, align 8, !tbaa !1800
  br label %sqlite3VdbeChangeP4.exit

sqlite3VdbeChangeP4.exit:                         ; preds = %sqlite3VdbeChangeP4.exitthread-pre-split, %bb.u
  %i.fp = phi ptr [ %.pr, %sqlite3VdbeChangeP4.exitthread-pre-split ], [ %i.cw, %bb.u ] ; 5 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.062116, i64 16
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !1799
  %i.fs = load i32, ptr %i.o, align 8, !tbaa !135 ; 4 uses
  %i.ft = load i32, ptr %i.p, align 4, !tbaa !147 ; 6 uses
  %.not.i.i72 = icmp sgt i32 %i.ft, %i.fs
  br i1 %.not.i.i72, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %sqlite3VdbeChangeP4.exit
  %.not23.i.i73 = icmp eq i32 %i.ft, 0
  %i.fu = shl nsw i32 %i.ft, 1
  %spec.select.i.i74 = select i1 %.not23.i.i73, i32 42, i32 %i.fu ; 4 uses
  %i.fv = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 42 ; 2 uses
  %i.fx = load i8, ptr %i.fw, align 2, !tbaa !129
  %i.fy = icmp eq i8 %i.fx, 0
  br i1 %i.fy, label %bb.aj, label %resizeOpArray.exit.i.i75

bb.aj:                                            ; preds = %bb.ai
  %i.fz = mul i32 %spec.select.i.i74, 24
  %i.ga = load ptr, ptr %i.q, align 8, !tbaa !136
  %i.gb = tail call ptr @sqlite3_realloc(ptr noundef %i.ga, i32 noundef %i.fz) ; 3 uses
  %.not.i.i.i.i80 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i.i.i80, label %bb.ak, label %sqlite3DbRealloc.exit.i.i.i81

bb.ak:                                            ; preds = %bb.aj
  store i8 1, ptr %i.fw, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i75

sqlite3DbRealloc.exit.i.i.i81:                    ; preds = %bb.aj
  store i32 %spec.select.i.i74, ptr %i.p, align 4, !tbaa !147
  store ptr %i.gb, ptr %i.q, align 8, !tbaa !136
  %i.gc = icmp sgt i32 %spec.select.i.i74, %i.ft
  br i1 %i.gc, label %bb.al, label %resizeOpArray.exit.i.i75

bb.al:                                            ; preds = %sqlite3DbRealloc.exit.i.i.i81
  %i.gd = sext i32 %i.ft to i64
  %i.ge = getelementptr inbounds [24 x i8], ptr %i.gb, i64 %i.gd
  %i.gf = sub nsw i32 %spec.select.i.i74, %i.ft
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = mul nuw nsw i64 %i.gg, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ge, i8 0, i64 %i.gh, i1 false)
  br label %resizeOpArray.exit.i.i75

resizeOpArray.exit.i.i75:                         ; preds = %bb.al, %sqlite3DbRealloc.exit.i.i.i81, %bb.ak, %bb.ai
  %i.gi = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 42
  %i.gk = load i8, ptr %i.gj, align 2, !tbaa !129
  %.not24.i.i76 = icmp eq i8 %i.gk, 0
  br i1 %.not24.i.i76, label %resizeOpArray.exit._crit_edge.i.i78, label %sqlite3VdbeAddOp4.exit82

resizeOpArray.exit._crit_edge.i.i78:              ; preds = %resizeOpArray.exit.i.i75
  %.pre.i.i79 = load i32, ptr %i.o, align 8, !tbaa !135
  br label %bb.am

bb.am:                                            ; preds = %resizeOpArray.exit._crit_edge.i.i78, %sqlite3VdbeChangeP4.exit
end_hunk_3
begin_hunk_4_@processCompoundOrderBy:bb.a
  store ptr null, ptr %i.bd, align 8, !tbaa !1588
  %i.be = load ptr, ptr %i.ae, align 8, !tbaa !1208
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %indvars.iv108
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 18
  store i8 1, ptr %i.bg, align 2, !tbaa !1600
  br label %.lr.ph95._crit_edge

.lr.ph95._crit_edge:                              ; preds = %.lr.ph95, %bb.l, %bb.m
  %.363 = phi i32 [ %.16194, %bb.m ], [ 1, %bb.l ], [ %.16194, %.lr.ph95 ] ; 2 uses
  %indvars.iv.next109.pre-phi = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %i.bh = load i32, ptr %i.b, align 8, !tbaa !1211 ; 4 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = icmp slt i64 %indvars.iv.next109.pre-phi, %i.bi
  br i1 %i.bj, label %.lr.ph95, label %._crit_edge, !llvm.loop !1821

._crit_edge:                                      ; preds = %.lr.ph95._crit_edge
  %i.bk = icmp ne i32 %.363, 0
  %i.bl = getelementptr inbounds nuw i8, ptr %.15796, i64 64
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1457 ; 2 uses
  %i.bn = icmp ne ptr %i.bm, null
  %i.bo = select i1 %i.bn, i1 %i.bk, i1 false
  br i1 %i.bo, label %.preheader78, label %.preheader, !llvm.loop !1822

bb.n:                                             ; preds = %.lr.ph98, %bb.p
  %indvars.iv111 = phi i64 [ 0, %.lr.ph98 ], [ %indvars.iv.next112, %bb.p ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %indvars.iv111
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 18
  %i.br = load i8, ptr %i.bq, align 2, !tbaa !1600
  %i.bs = icmp eq i8 %i.br, 0
  br i1 %i.bs, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bt = trunc nuw nsw i64 %indvars.iv111 to i32
  %i.bu = add nuw nsw i32 %i.bt, 1
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.392, i32 noundef %i.bu)
  br label %.thread75

bb.p:                                             ; preds = %bb.n
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %exitcond115.not = icmp eq i64 %indvars.iv.next112, %wide.trip.count114
  br i1 %exitcond115.not, label %.thread75, label %bb.n, !llvm.loop !1823

.thread75:                                        ; preds = %.preheader78, %bb.h, %bb.i, %bb.p, %.preheader80, %.preheader, %.thread, %bb.k, %bb.a, %bb.o, %bb.c
  %.3 = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ 1, %.thread ], [ 1, %bb.o ], [ 1, %bb.k ], [ 0, %.preheader ], [ 0, %.preheader80 ], [ 0, %bb.p ], [ 1, %bb.h ], [ 1, %bb.i ], [ 0, %.preheader78 ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc void @createSortingIndex(ptr noundef captures(none) %0, ptr noundef nonnull writeonly captures(none) %1, ptr noundef captures(address_is_null) %2) unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1305 ; 3 uses
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !1305
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.b, ptr %i.d, align 8, !tbaa !1462
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !367  ; 7 uses
  %i.g = load i32, ptr %2, align 8, !tbaa !1211
  %i.h = add nsw i32 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !135  ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 28 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !147  ; 6 uses
  %.not.i.i = icmp sgt i32 %i.l, %i.j
  br i1 %.not.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not23.i.i = icmp eq i32 %i.l, 0
  %i.m = shl nsw i32 %i.l, 1
  %spec.select.i.i = select i1 %.not23.i.i, i32 42, i32 %i.m ; 4 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !106
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 42 ; 2 uses
  %i.q = load i8, ptr %i.p, align 2, !tbaa !129
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.d, label %resizeOpArray.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.s = mul i32 %spec.select.i.i, 24
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !136
  %i.u = tail call ptr @sqlite3_realloc(ptr noundef %i.t, i32 noundef %i.s) ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %bb.e, label %sqlite3DbRealloc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.p, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i

sqlite3DbRealloc.exit.i.i.i:                      ; preds = %bb.d
  store i32 %spec.select.i.i, ptr %i.k, align 4, !tbaa !147
  store ptr %i.u, ptr %i.o, align 8, !tbaa !136
  %i.v = icmp sgt i32 %spec.select.i.i, %i.l
  br i1 %i.v, label %bb.f, label %resizeOpArray.exit.i.i

bb.f:                                             ; preds = %sqlite3DbRealloc.exit.i.i.i
  %i.w = sext i32 %i.l to i64
  %i.x = getelementptr inbounds [24 x i8], ptr %i.u, i64 %i.w
  %i.y = sub nsw i32 %spec.select.i.i, %i.l
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = mul nuw nsw i64 %i.z, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.x, i8 0, i64 %i.aa, i1 false)
  br label %resizeOpArray.exit.i.i

resizeOpArray.exit.i.i:                           ; preds = %bb.f, %sqlite3DbRealloc.exit.i.i.i, %bb.e, %bb.c
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !106
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 42
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !129
  %.not24.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not24.i.i, label %resizeOpArray.exit._crit_edge.i.i, label %sqlite3VdbeAddOp2.exit

resizeOpArray.exit._crit_edge.i.i:                ; preds = %resizeOpArray.exit.i.i
  %.pre.i.i = load i32, ptr %i.i, align 8, !tbaa !135
  br label %bb.g

bb.g:                                             ; preds = %resizeOpArray.exit._crit_edge.i.i, %bb.b
  %i.ae = phi i32 [ %.pre.i.i, %resizeOpArray.exit._crit_edge.i.i ], [ %i.j, %bb.b ]
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.i, align 8, !tbaa !135
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !136
  %i.ai = sext i32 %i.j to i64
  %i.aj = getelementptr inbounds [24 x i8], ptr %i.ah, i64 %i.ai ; 6 uses
  store i8 111, ptr %i.aj, align 8, !tbaa !137
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 %i.b, ptr %i.ak, align 4, !tbaa !141
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i32 %i.h, ptr %i.al, align 8, !tbaa !140
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.am, align 4, !tbaa !190
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr null, ptr %i.an, align 8, !tbaa !37
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store i8 0, ptr %i.ao, align 1, !tbaa !191
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 339
  store i8 0, ptr %i.ap, align 1, !tbaa !104
  br label %sqlite3VdbeAddOp2.exit

sqlite3VdbeAddOp2.exit:                           ; preds = %resizeOpArray.exit.i.i, %bb.g
  %.0.i.i = phi i32 [ %i.j, %bb.g ], [ 0, %resizeOpArray.exit.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 %.0.i.i, ptr %i.aq, align 8, !tbaa !4
  br label %bb.h

bb.h:                                             ; preds = %sqlite3VdbeAddOp2.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @multiSelectCollSeq(ptr noundef captures(none) %0, ptr noundef nonnull readonly captures(none) %1, i32 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1227 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @multiSelectCollSeq(ptr noundef %0, ptr noundef %i.b, i32 noundef %2) ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.thread, label %sqlite3ExprCollSeq.exit

.thread:                                          ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !1219
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1208
  %i.h = sext i32 %2 to i64
  %i.i = getelementptr inbounds [24 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1212 ; 2 uses
  %.not33.i = icmp eq ptr %i.j, null
  br i1 %.not33.i, label %sqlite3ExprCollSeq.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread, %tailrecurse.i
  %.tr3234.i = phi ptr [ %i.r, %tailrecurse.i ], [ %i.j, %.thread ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.tr3234.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1431 ; 5 uses
  %i.m = load i8, ptr %.tr3234.i, align 8, !tbaa !1319 ; 2 uses
  %i.n = icmp ne i8 %i.m, 31
  %i.o = icmp ne i8 %i.m, 86
  %or.cond.not21.i = and i1 %i.n, %i.o
  %i.p = icmp ne ptr %i.l, null
  %or.cond3.i = select i1 %or.cond.not21.i, i1 true, i1 %i.p
  br i1 %or.cond3.i, label %bb.c, label %tailrecurse.i

tailrecurse.i:                                    ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %.tr3234.i, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1205 ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %sqlite3ExprCollSeq.exit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %sqlite3ExprCollSeq.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !195  ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !244
  %i.u = tail call fastcc ptr @sqlite3GetCollSeq(ptr noundef %i.t, ptr noundef nonnull %i.l, ptr noundef %i.s)
  %.not13.i.i = icmp eq ptr %i.u, null
  br i1 %.not13.i.i, label %bb.e, label %sqlite3ExprCollSeq.exit

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !252  ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.f, label %sqlite3CheckCollSeq.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.343, ptr noundef %i.s), !inline_history !1571
  %.pre.i.i = load i32, ptr %i.v, align 8, !tbaa !252
  br label %sqlite3CheckCollSeq.exit.i

sqlite3CheckCollSeq.exit.i:                       ; preds = %bb.f, %bb.e
  %i.y = phi i32 [ %i.w, %bb.e ], [ %.pre.i.i, %bb.f ]
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.v, align 8, !tbaa !252
  br label %sqlite3ExprCollSeq.exit

sqlite3ExprCollSeq.exit:                          ; preds = %tailrecurse.i, %sqlite3CheckCollSeq.exit.i, %bb.d, %bb.c, %.thread, %bb.b
  %.1 = phi ptr [ %i.c, %bb.b ], [ %i.l, %bb.d ], [ null, %sqlite3CheckCollSeq.exit.i ], [ null, %bb.c ], [ null, %.thread ], [ null, %tailrecurse.i ]
  ret ptr %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @heightOfSelect(ptr noundef readonly captures(address_is_null) %0, ptr noundef nonnull captures(none) %1) unnamed_addr #30 {
bb.a:
  %.not43 = icmp eq ptr %0, null
  br i1 %.not43, label %tailrecurse._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %heightOfExprList.exit41
  %.tr44 = phi ptr [ %i.bu, %heightOfExprList.exit41 ], [ %0, %bb.a ] ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr44, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1223 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %heightOfExpr.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1322 ; 2 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !4
  %i.f = icmp sgt i32 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %heightOfExpr.exit

bb.c:                                             ; preds = %bb.b
  store i32 %i.d, ptr %1, align 4, !tbaa !4
  br label %heightOfExpr.exit

heightOfExpr.exit:                                ; preds = %.lr.ph, %bb.b, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.tr44, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1225 ; 2 uses
  %.not.i17 = icmp eq ptr %i.h, null
  br i1 %.not.i17, label %heightOfExpr.exit18, label %bb.d

bb.d:                                             ; preds = %heightOfExpr.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.j = load i32, ptr %i.i, align 8, !tbaa !1322 ; 2 uses
  %i.k = load i32, ptr %1, align 4, !tbaa !4
  %i.l = icmp sgt i32 %i.j, %i.k
  br i1 %i.l, label %bb.e, label %heightOfExpr.exit18

bb.e:                                             ; preds = %bb.d
  store i32 %i.j, ptr %1, align 4, !tbaa !4
  br label %heightOfExpr.exit18

heightOfExpr.exit18:                              ; preds = %heightOfExpr.exit, %bb.d, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.tr44, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1228 ; 2 uses
  %.not.i19 = icmp eq ptr %i.n, null
  br i1 %.not.i19, label %heightOfExpr.exit20, label %bb.f

bb.f:                                             ; preds = %heightOfExpr.exit18
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %i.p = load i32, ptr %i.o, align 8, !tbaa !1322 ; 2 uses
  %i.q = load i32, ptr %1, align 4, !tbaa !4
  %i.r = icmp sgt i32 %i.p, %i.q
  br i1 %i.r, label %bb.g, label %heightOfExpr.exit20

bb.g:                                             ; preds = %bb.f
  store i32 %i.p, ptr %1, align 4, !tbaa !4
  br label %heightOfExpr.exit20

heightOfExpr.exit20:                              ; preds = %heightOfExpr.exit18, %bb.f, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %.tr44, i64 88
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1229 ; 2 uses
  %.not.i21 = icmp eq ptr %i.t, null
  br i1 %.not.i21, label %heightOfExpr.exit22, label %bb.h

bb.h:                                             ; preds = %heightOfExpr.exit20
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  %i.v = load i32, ptr %i.u, align 8, !tbaa !1322 ; 2 uses
  %i.w = load i32, ptr %1, align 4, !tbaa !4
  %i.x = icmp sgt i32 %i.v, %i.w
  br i1 %i.x, label %bb.i, label %heightOfExpr.exit22

bb.i:                                             ; preds = %bb.h
  store i32 %i.v, ptr %1, align 4, !tbaa !4
  br label %heightOfExpr.exit22

heightOfExpr.exit22:                              ; preds = %heightOfExpr.exit20, %bb.h, %bb.i
  %i.y = load ptr, ptr %.tr44, align 8, !tbaa !1219 ; 4 uses
  %.not.i23 = icmp eq ptr %i.y, null
  br i1 %.not.i23, label %heightOfExprList.exit, label %.preheader.i

.preheader.i:                                     ; preds = %heightOfExpr.exit22
  %i.z = load i32, ptr %i.y, align 8, !tbaa !1211 ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph.i, label %heightOfExprList.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1208
  br label %bb.j

bb.j:                                             ; preds = %heightOfExpr.exit.i, %.lr.ph.i
  %i.ad = phi i32 [ %i.z, %.lr.ph.i ], [ %i.ak, %heightOfExpr.exit.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %heightOfExpr.exit.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %indvars.iv.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1212 ; 2 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %heightOfExpr.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 112
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !1322 ; 2 uses
  %i.ai = load i32, ptr %1, align 4, !tbaa !4
  %i.aj = icmp sgt i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.l, label %heightOfExpr.exit.i

bb.l:                                             ; preds = %bb.k
  store i32 %i.ah, ptr %1, align 4, !tbaa !4
  %.pre.i = load i32, ptr %i.y, align 8, !tbaa !1211
  br label %heightOfExpr.exit.i

heightOfExpr.exit.i:                              ; preds = %bb.l, %bb.k, %bb.j
  %i.ak = phi i32 [ %i.ad, %bb.j ], [ %i.ad, %bb.k ], [ %.pre.i, %bb.l ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp slt i64 %indvars.iv.next.i, %i.al
  br i1 %i.am, label %bb.j, label %heightOfExprList.exit, !llvm.loop !1344

heightOfExprList.exit:                            ; preds = %heightOfExpr.exit.i, %heightOfExpr.exit22, %.preheader.i
  %i.an = getelementptr inbounds nuw i8, ptr %.tr44, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1224 ; 4 uses
  %.not.i24 = icmp eq ptr %i.ao, null
  br i1 %.not.i24, label %heightOfExprList.exit32, label %.preheader.i25

.preheader.i25:                                   ; preds = %heightOfExprList.exit
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !1211 ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %.lr.ph.i26, label %heightOfExprList.exit32

.lr.ph.i26:                                       ; preds = %.preheader.i25
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1208
  br label %bb.m

bb.m:                                             ; preds = %heightOfExpr.exit.i29, %.lr.ph.i26
  %i.at = phi i32 [ %i.ap, %.lr.ph.i26 ], [ %i.ba, %heightOfExpr.exit.i29 ] ; 2 uses
  %indvars.iv.i27 = phi i64 [ 0, %.lr.ph.i26 ], [ %indvars.iv.next.i30, %heightOfExpr.exit.i29 ] ; 2 uses
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %indvars.iv.i27
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1212 ; 2 uses
  %.not.i.i28 = icmp eq ptr %i.av, null
  br i1 %.not.i.i28, label %heightOfExpr.exit.i29, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 112
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !1322 ; 2 uses
  %i.ay = load i32, ptr %1, align 4, !tbaa !4
  %i.az = icmp sgt i32 %i.ax, %i.ay
  br i1 %i.az, label %bb.o, label %heightOfExpr.exit.i29

bb.o:                                             ; preds = %bb.n
  store i32 %i.ax, ptr %1, align 4, !tbaa !4
  %.pre.i31 = load i32, ptr %i.ao, align 8, !tbaa !1211
  br label %heightOfExpr.exit.i29

heightOfExpr.exit.i29:                            ; preds = %bb.o, %bb.n, %bb.m
  %i.ba = phi i32 [ %i.at, %bb.m ], [ %i.at, %bb.n ], [ %.pre.i31, %bb.o ] ; 2 uses
  %indvars.iv.next.i30 = add nuw nsw i64 %indvars.iv.i27, 1 ; 2 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = icmp slt i64 %indvars.iv.next.i30, %i.bb
  br i1 %i.bc, label %bb.m, label %heightOfExprList.exit32, !llvm.loop !1344

heightOfExprList.exit32:                          ; preds = %heightOfExpr.exit.i29, %heightOfExprList.exit, %.preheader.i25
  %i.bd = getelementptr inbounds nuw i8, ptr %.tr44, i64 48
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1226 ; 4 uses
  %.not.i33 = icmp eq ptr %i.be, null
  br i1 %.not.i33, label %heightOfExprList.exit41, label %.preheader.i34

.preheader.i34:                                   ; preds = %heightOfExprList.exit32
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !1211 ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph.i35, label %heightOfExprList.exit41

.lr.ph.i35:                                       ; preds = %.preheader.i34
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1208
  br label %bb.p
end_hunk_4
begin_hunk_5_@exprTableUsage:bb.a
  %.1.i23 = phi i64 [ %.1.i28, %exprListTableUsage.exit29 ], [ %.1.i28, %.preheader ], [ %i.bk, %exprListTableUsage.exit24.loopexit ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.017.i56, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1223
  %i.bn = tail call fastcc i64 @exprTableUsage(ptr noundef %0, ptr noundef %i.bm), !inline_history !1832
  %i.bo = getelementptr inbounds nuw i8, ptr %.017.i56, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1225
  %i.bq = tail call fastcc i64 @exprTableUsage(ptr noundef %0, ptr noundef %i.bp), !inline_history !1832
  %i.br = or i64 %.1.i23, %i.bn
  %i.bs = or i64 %i.br, %i.bq                     ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.017.i56, i64 56
  %.017.i = load ptr, ptr %i.bt, align 8, !tbaa !1633 ; 2 uses
  %.not.i19 = icmp eq ptr %.017.i, null
  br i1 %.not.i19, label %exprSelectTableUsage.exit.loopexit, label %.lr.ph57, !llvm.loop !1833

exprSelectTableUsage.exit.loopexit:               ; preds = %exprListTableUsage.exit24
  %i.bu = or i64 %.1.i, %i.bs
  br label %getMask.exit

getMask.exit:                                     ; preds = %bb.d, %exprListTableUsage.exit, %exprSelectTableUsage.exit.loopexit, %bb.f, %bb.c, %bb.a
  %.0 = phi i64 [ %i.bu, %exprSelectTableUsage.exit.loopexit ], [ 0, %bb.a ], [ %i.l, %bb.f ], [ 0, %bb.c ], [ %.1.i, %exprListTableUsage.exit ], [ 0, %bb.d ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3DequoteExpr(ptr noundef writeonly captures(none) %0, ptr noundef captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !1343 ; 2 uses
  %i.c = and i16 %i.b, 64
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.b, label %sqlite3Dequote.exit

bb.b:                                             ; preds = %bb.a
  %i.d = or disjoint i16 %i.b, 64
  store i16 %i.d, ptr %i.a, align 2, !tbaa !1343
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = and i32 %i.g, 1
  %i.i = icmp eq i32 %i.h, 0
  %.pr.pre = load ptr, ptr %i.e, align 8, !tbaa !77 ; 3 uses
  br i1 %i.i, label %sqlite3_free.exit.i, label %sqlite3TokenCopy.exit

sqlite3_free.exit.i:                              ; preds = %bb.b
  %.not11.i = icmp eq ptr %.pr.pre, null
  br i1 %.not11.i, label %sqlite3Dequote.exit, label %bb.c

bb.c:                                             ; preds = %sqlite3_free.exit.i
  %i.j = lshr exact i32 %i.g, 1                   ; 2 uses
  %i.k = add nuw nsw i32 %i.j, 1
  %i.l = tail call ptr @sqlite3_malloc(i32 noundef %i.k) ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %sqlite3StrNDup.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = zext nneg i32 %i.j to i64                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %.pr.pre, i64 %i.m, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  store i8 0, ptr %i.n, align 1, !tbaa !37
  br label %sqlite3DbStrNDup.exit.i

sqlite3StrNDup.exit.i.i:                          ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 1, ptr %i.o, align 2, !tbaa !129
  br label %sqlite3DbStrNDup.exit.i

sqlite3DbStrNDup.exit.i:                          ; preds = %sqlite3StrNDup.exit.i.i, %bb.d
  store ptr %i.l, ptr %i.e, align 8, !tbaa !77
  %i.p = load i32, ptr %i.f, align 8
  %i.q = or i32 %i.p, 1
  store i32 %i.q, ptr %i.f, align 8
  br label %sqlite3TokenCopy.exit

sqlite3TokenCopy.exit:                            ; preds = %bb.b, %sqlite3DbStrNDup.exit.i
  %i.r = phi ptr [ %i.l, %sqlite3DbStrNDup.exit.i ], [ %.pr.pre, %bb.b ] ; 7 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %sqlite3Dequote.exit, label %bb.e

bb.e:                                             ; preds = %sqlite3TokenCopy.exit
  %i.t = load i8, ptr %i.r, align 1, !tbaa !37    ; 2 uses
  %i.u = sext i8 %i.t to i32                      ; 3 uses
  switch i8 %i.t, label %sqlite3Dequote.exit [
    i8 39, label %bb.g
    i8 34, label %bb.g
    i8 96, label %bb.g
    i8 91, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.e, %bb.e
  %.023.i = phi i32 [ %i.u, %bb.e ], [ %i.u, %bb.e ], [ %i.u, %bb.e ], [ 93, %bb.f ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !37    ; 2 uses
  %.not27.i = icmp eq i8 %i.w, 0
  br i1 %.not27.i, label %sqlite3Dequote.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.x = trunc nuw nsw i32 %.023.i to i8
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.k ] ; 3 uses
  %i.y = phi i8 [ %i.w, %.lr.ph.i ], [ %i.an, %bb.k ] ; 2 uses
  %.02128.i = phi i32 [ 1, %.lr.ph.i ], [ %i.ak, %bb.k ] ; 2 uses
  %i.z = sext i8 %i.y to i32
  %i.aa = icmp eq i32 %.023.i, %i.z
  br i1 %i.aa, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ab = add nsw i32 %.02128.i, 1                ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds i8, ptr %i.r, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !37
  %i.af = sext i8 %i.ae to i32
  %i.ag = icmp eq i32 %.023.i, %i.af
  br i1 %i.ag, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = and i64 %indvars.iv.i, 4294967295
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ah
  store i8 0, ptr %i.ai, align 1, !tbaa !37
  br label %sqlite3Dequote.exit

bb.k:                                             ; preds = %bb.i, %bb.h
  %.sink.i = phi i8 [ %i.x, %bb.i ], [ %i.y, %bb.h ]
  %.122.i = phi i32 [ %i.ab, %bb.i ], [ %.02128.i, %bb.h ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.i
  store i8 %.sink.i, ptr %i.aj, align 1, !tbaa !37
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.ak = add nsw i32 %.122.i, 1                  ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %i.r, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !37  ; 2 uses
  %.not.i7 = icmp eq i8 %i.an, 0
  br i1 %.not.i7, label %sqlite3Dequote.exit, label %bb.h, !llvm.loop !1315

sqlite3Dequote.exit:                              ; preds = %bb.k, %sqlite3_free.exit.i, %bb.j, %bb.g, %bb.e, %sqlite3TokenCopy.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sqlite3BinaryCompareCollSeq(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(address_is_null) %2) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !1343
  %i.c = and i16 %i.b, 256
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1431
  br label %sqlite3ExprCollSeq.exit

bb.c:                                             ; preds = %bb.a
  %.not13 = icmp eq ptr %2, null                  ; 2 uses
  br i1 %.not13, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.d, %bb.c
  br label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !1343
  %i.h = and i16 %i.g, 256
  %.not14 = icmp eq i16 %i.h, 0
  br i1 %.not14, label %.lr.ph.i.preheader, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1431
  br label %sqlite3ExprCollSeq.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %tailrecurse.i
  %.tr3234.i = phi ptr [ %i.r, %tailrecurse.i ], [ %1, %.lr.ph.i.preheader ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.tr3234.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1431 ; 5 uses
  %i.m = load i8, ptr %.tr3234.i, align 8, !tbaa !1319 ; 2 uses
  %i.n = icmp ne i8 %i.m, 31
  %i.o = icmp ne i8 %i.m, 86
  %or.cond.not21.i = and i1 %i.n, %i.o
  %i.p = icmp ne ptr %i.l, null
  %or.cond3.i = select i1 %or.cond.not21.i, i1 true, i1 %i.p
  br i1 %or.cond3.i, label %bb.f, label %tailrecurse.i

tailrecurse.i:                                    ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %.tr3234.i, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1205 ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

bb.f:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !195  ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !244
  %i.u = tail call fastcc ptr @sqlite3GetCollSeq(ptr noundef %i.t, ptr noundef nonnull %i.l, ptr noundef %i.s)
  %.not13.i.i = icmp eq ptr %i.u, null
  br i1 %.not13.i.i, label %bb.h, label %sqlite3ExprCollSeq.exit

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !252  ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.i, label %sqlite3CheckCollSeq.exit.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.343, ptr noundef %i.s), !inline_history !1571
  %.pre.i.i = load i32, ptr %i.v, align 8, !tbaa !252
  br label %sqlite3CheckCollSeq.exit.i

sqlite3CheckCollSeq.exit.i:                       ; preds = %bb.i, %bb.h
  %i.y = phi i32 [ %i.w, %bb.h ], [ %.pre.i.i, %bb.i ]
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.v, align 8, !tbaa !252
  br label %.loopexit

.loopexit:                                        ; preds = %tailrecurse.i, %sqlite3CheckCollSeq.exit.i, %bb.f
  br i1 %.not13, label %sqlite3ExprCollSeq.exit, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %.loopexit, %tailrecurse.i21
  %.tr3234.i18 = phi ptr [ %i.ah, %tailrecurse.i21 ], [ %2, %.loopexit ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr3234.i18, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1431 ; 5 uses
  %i.ac = load i8, ptr %.tr3234.i18, align 8, !tbaa !1319 ; 2 uses
  %i.ad = icmp ne i8 %i.ac, 31
  %i.ae = icmp ne i8 %i.ac, 86
  %or.cond.not21.i19 = and i1 %i.ad, %i.ae
  %i.af = icmp ne ptr %i.ab, null
  %or.cond3.i20 = select i1 %or.cond.not21.i19, i1 true, i1 %i.af
  br i1 %or.cond3.i20, label %bb.j, label %tailrecurse.i21

tailrecurse.i21:                                  ; preds = %.lr.ph.i17
  %i.ag = getelementptr inbounds nuw i8, ptr %.tr3234.i18, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1205 ; 2 uses
  %.not.i22 = icmp eq ptr %i.ah, null
  br i1 %.not.i22, label %sqlite3ExprCollSeq.exit, label %.lr.ph.i17

bb.j:                                             ; preds = %.lr.ph.i17
  %.not.i.i24 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i24, label %sqlite3ExprCollSeq.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !195 ; 2 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !244
  %i.ak = tail call fastcc ptr @sqlite3GetCollSeq(ptr noundef %i.aj, ptr noundef nonnull %i.ab, ptr noundef %i.ai)
  %.not13.i.i25 = icmp eq ptr %i.ak, null
  br i1 %.not13.i.i25, label %bb.l, label %sqlite3ExprCollSeq.exit

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !252 ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.m, label %sqlite3CheckCollSeq.exit.i26

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.343, ptr noundef %i.ai), !inline_history !1571
  %.pre.i.i27 = load i32, ptr %i.al, align 8, !tbaa !252
  br label %sqlite3CheckCollSeq.exit.i26

sqlite3CheckCollSeq.exit.i26:                     ; preds = %bb.m, %bb.l
  %i.ao = phi i32 [ %i.am, %bb.l ], [ %.pre.i.i27, %bb.m ]
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.al, align 8, !tbaa !252
  br label %sqlite3ExprCollSeq.exit

sqlite3ExprCollSeq.exit:                          ; preds = %tailrecurse.i21, %sqlite3CheckCollSeq.exit.i26, %bb.k, %bb.j, %.loopexit, %bb.g, %bb.e, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ %i.j, %bb.e ], [ %i.l, %bb.g ], [ %i.ab, %bb.k ], [ null, %sqlite3CheckCollSeq.exit.i26 ], [ null, %bb.j ], [ null, %.loopexit ], [ null, %tailrecurse.i21 ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc signext i8 @comparisonAffinity(ptr noundef readonly captures(none) %0) unnamed_addr #22 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %bb.b, %bb.a
  %.tr.i.in = phi ptr [ %i.a, %bb.a ], [ %i.g, %bb.b ]
  %.tr.i = load ptr, ptr %.tr.i.in, align 8, !tbaa !1340 ; 5 uses
  %i.b = load i8, ptr %.tr.i, align 8, !tbaa !1319
  switch i8 %i.b, label %bb.h [
    i8 110, label %bb.b
    i8 31, label %bb.c
  ]

bb.b:                                             ; preds = %tailrecurse.i
  %i.c = getelementptr inbounds nuw i8, ptr %.tr.i, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1217
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1219
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1208
  br label %tailrecurse.i

bb.c:                                             ; preds = %tailrecurse.i
  %i.h = getelementptr inbounds nuw i8, ptr %.tr.i, i64 40
  %.val.i = load ptr, ptr %i.h, align 8, !tbaa !77 ; 2 uses
  %i.i = getelementptr i8, ptr %.tr.i, i64 48
  %.val7.i = load i32, ptr %i.i, align 8
  %i.j = lshr i32 %.val7.i, 1                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.k
  %.not1.i.i = icmp eq i32 %i.j, 0
  br i1 %.not1.i.i, label %sqlite3ExprAffinity.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.g
  %.04.i.i = phi i32 [ %i.s, %bb.g ], [ 0, %bb.c ]
  %.0323.i.i = phi ptr [ %i.t, %bb.g ], [ %.val.i, %bb.c ] ; 2 uses
  %.0332.i.i = phi i8 [ %.1.i.i, %bb.g ], [ 99, %bb.c ] ; 3 uses
  %i.m = shl i32 %.04.i.i, 8
  %i.n = load i8, ptr %.0323.i.i, align 1, !tbaa !37
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !37
  %i.r = zext i8 %i.q to i32
  %i.s = or disjoint i32 %i.m, %i.r               ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0323.i.i, i64 1 ; 2 uses
  switch i32 %i.s, label %bb.e [
    i32 1667785074, label %bb.g
    i32 1668050786, label %bb.g
    i32 1952807028, label %bb.g
    i32 1651273570, label %bb.d
  ]

bb.d:                                             ; preds = %.lr.ph.i.i
  switch i8 %.0332.i.i, label %bb.e [
    i8 101, label %bb.g
    i8 99, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.u = icmp eq i32 %i.s, 1919246700
  %i.v = icmp eq i8 %.0332.i.i, 99
  %i.w = icmp eq i32 %i.s, 1718382433
  %i.x = or i1 %i.u, %i.w
  %i.y = icmp eq i32 %i.s, 1685026146
  %i.z = or i1 %i.y, %i.x
  %or.cond35.i.i = select i1 %i.z, i1 %i.v, i1 false
  br i1 %or.cond35.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = and i32 %i.s, 16777215
  %i.ab = icmp eq i32 %i.aa, 6909556
  br i1 %i.ab, label %sqlite3ExprAffinity.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.d, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %.1.i.i = phi i8 [ %.0332.i.i, %bb.f ], [ 97, %.lr.ph.i.i ], [ 97, %.lr.ph.i.i ], [ 97, %.lr.ph.i.i ], [ 98, %bb.d ], [ 101, %bb.e ], [ 98, %bb.d ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, %i.l
  br i1 %.not.i.i, label %sqlite3ExprAffinity.exit, label %.lr.ph.i.i, !llvm.loop !1318

bb.h:                                             ; preds = %tailrecurse.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr.i, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !1570
  br label %sqlite3ExprAffinity.exit

sqlite3ExprAffinity.exit:                         ; preds = %bb.f, %bb.g, %bb.c, %bb.h
  %.0.i = phi i8 [ 99, %bb.c ], [ %i.ad, %bb.h ], [ %.1.i.i, %bb.g ], [ 100, %bb.f ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1206 ; 2 uses
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %sqlite3ExprAffinity.exit
  %i.ag = tail call fastcc signext i8 @sqlite3CompareAffinity(ptr noundef nonnull %i.af, i8 noundef signext %.0.i)
  br label %bb.m

bb.j:                                             ; preds = %sqlite3ExprAffinity.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1217 ; 2 uses
  %.not10 = icmp eq ptr %i.ai, null
  br i1 %.not10, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1219
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1208
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1212
  %i.an = tail call fastcc signext i8 @sqlite3CompareAffinity(ptr noundef %i.am, i8 noundef signext %.0.i)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %.not11 = icmp eq i8 %.0.i, 0
  %spec.store.select = select i1 %.not11, i8 98, i8 %.0.i
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.i
  %.0 = phi i8 [ %i.ag, %bb.i ], [ %i.an, %bb.k ], [ %spec.store.select, %bb.l ]
  ret i8 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc signext i8 @sqlite3CompareAffinity(ptr noundef readonly captures(none) %0, i8 noundef signext %1) unnamed_addr #22 {
bb.a:
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %bb.b, %bb.a
  %.tr.i = phi ptr [ %0, %bb.a ], [ %i.g, %bb.b ] ; 5 uses
  %i.a = load i8, ptr %.tr.i, align 8, !tbaa !1319
  switch i8 %i.a, label %bb.h [
    i8 110, label %bb.b
    i8 31, label %bb.c
  ]

bb.b:                                             ; preds = %tailrecurse.i
  %i.b = getelementptr inbounds nuw i8, ptr %.tr.i, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1217
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1219
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1208
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1212
  br label %tailrecurse.i

bb.c:                                             ; preds = %tailrecurse.i
  %i.h = getelementptr inbounds nuw i8, ptr %.tr.i, i64 40
  %.val.i = load ptr, ptr %i.h, align 8, !tbaa !77 ; 2 uses
  %i.i = getelementptr i8, ptr %.tr.i, i64 48
  %.val7.i = load i32, ptr %i.i, align 8
  %i.j = lshr i32 %.val7.i, 1                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.k
  %.not1.i.i = icmp eq i32 %i.j, 0
  br i1 %.not1.i.i, label %sqlite3ExprAffinity.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.g
  %.04.i.i = phi i32 [ %i.s, %bb.g ], [ 0, %bb.c ]
  %.0323.i.i = phi ptr [ %i.t, %bb.g ], [ %.val.i, %bb.c ] ; 2 uses
  %.0332.i.i = phi i8 [ %.1.i.i, %bb.g ], [ 99, %bb.c ] ; 3 uses
  %i.m = shl i32 %.04.i.i, 8
  %i.n = load i8, ptr %.0323.i.i, align 1, !tbaa !37
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !37
  %i.r = zext i8 %i.q to i32
  %i.s = or disjoint i32 %i.m, %i.r               ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0323.i.i, i64 1 ; 2 uses
  switch i32 %i.s, label %bb.e [
    i32 1667785074, label %bb.g
    i32 1668050786, label %bb.g
    i32 1952807028, label %bb.g
    i32 1651273570, label %bb.d
  ]

bb.d:                                             ; preds = %.lr.ph.i.i
  switch i8 %.0332.i.i, label %bb.e [
    i8 101, label %bb.g
    i8 99, label %bb.g
end_hunk_5
begin_hunk_6_@sqlite3ExprCodeTarget:bb.a
  br label %sqlite3VdbeAddOp2.exit400

sqlite3VdbeAddOp2.exit400:                        ; preds = %resizeOpArray.exit.i.i393, %resizeOpArray.exit._crit_edge.i.i396
  %i.os = phi i32 [ %.pre548, %resizeOpArray.exit.i.i393 ], [ %.pre547, %resizeOpArray.exit._crit_edge.i.i396 ] ; 2 uses
  %i.ot = icmp sgt i32 %.0.i.i384, -1
  %i.ou = icmp sgt i32 %i.os, %.0.i.i384
  %or.cond.i = select i1 %i.ot, i1 %i.ou, i1 false
  br i1 %or.cond.i, label %bb.cc, label %sqlite3VdbeAddOp3.exitthread-pre-split

bb.cc:                                            ; preds = %sqlite3VdbeAddOp2.exit400
  %i.ov = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !136 ; 2 uses
  %.not.i.i401 = icmp eq ptr %i.ow, null
  br i1 %.not.i.i401, label %sqlite3VdbeAddOp3.exitthread-pre-split, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ox = zext nneg i32 %.0.i.i384 to i64
  %i.oy = getelementptr inbounds nuw [24 x i8], ptr %i.ow, i64 %i.ox
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  store i32 %i.os, ptr %i.oz, align 8, !tbaa !140
  br label %sqlite3VdbeAddOp3.exitthread-pre-split

bb.ce:                                            ; preds = %bb.c
  %i.pa = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !1840 ; 2 uses
  %i.pc = icmp eq ptr %i.pb, null
  br i1 %i.pc, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.pd = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.403, ptr noundef nonnull %i.pd)
  br label %sqlite3VdbeAddOp3.exitthread-pre-split

bb.cg:                                            ; preds = %bb.ce
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pb, i64 48
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !1476
  %i.pg = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ph = load i32, ptr %i.pg, align 8, !tbaa !1320
  %i.pi = sext i32 %i.ph to i64
  %i.pj = getelementptr inbounds [24 x i8], ptr %i.pf, i64 %i.pi
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 16
  %i.pl = load i32, ptr %i.pk, align 8, !tbaa !1799
  br label %sqlite3VdbeAddOp3.exitthread-pre-split

bb.ch:                                            ; preds = %bb.c, %bb.c
  %i.pm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !1207 ; 4 uses
  %.not349 = icmp eq ptr %i.pn, null              ; 2 uses
  br i1 %.not349, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.po = load i32, ptr %i.pn, align 8, !tbaa !1211
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ch, %bb.ci
  %i.pp = phi i32 [ %i.po, %bb.ci ], [ 0, %bb.ch ]
  %i.pq = load ptr, ptr %0, align 8, !tbaa !244   ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !235
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 40
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !236
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 145
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !240
  %i.px = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !1204
  %i.pz = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.qa = load i32, ptr %i.pz, align 8
  %i.qb = lshr i32 %i.qa, 1
  %i.qc = tail call fastcc ptr @sqlite3FindFunction(ptr noundef %i.pq, ptr noundef %i.py, i32 noundef %i.qb, i32 noundef %i.pp, i8 noundef zeroext %i.pw, i32 noundef 0) ; 3 uses
  br i1 %.not349, label %._crit_edge536, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.qd = load i32, ptr %i.pn, align 8, !tbaa !1211 ; 11 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.qf = load i32, ptr %i.qe, align 8, !tbaa !1485 ; 2 uses
  %.not.i402 = icmp sgt i32 %i.qd, %i.qf
  br i1 %.not.i402, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !1486 ; 2 uses
  %i.qi = add nsw i32 %i.qh, %i.qd
  store i32 %i.qi, ptr %i.qg, align 4, !tbaa !1486
  %i.qj = sub nsw i32 %i.qf, %i.qd
  store i32 %i.qj, ptr %i.qe, align 8, !tbaa !1485
  br label %sqlite3GetTempRange.exit

bb.cm:                                            ; preds = %bb.ck
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ql = load i32, ptr %i.qk, align 8, !tbaa !1304 ; 2 uses
  %i.qm = add nsw i32 %i.ql, 1
  %i.qn = add nsw i32 %i.ql, %i.qd
  store i32 %i.qn, ptr %i.qk, align 8, !tbaa !1304
  br label %sqlite3GetTempRange.exit

sqlite3GetTempRange.exit:                         ; preds = %bb.cm, %bb.cl
  %.0.i403 = phi i32 [ %i.qh, %bb.cl ], [ %i.qm, %bb.cm ] ; 3 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.pn, i64 16 ; 5 uses
  %i.qp = icmp sgt i32 %i.qd, 0
  br i1 %i.qp, label %.lr.ph531.preheader, label %._crit_edge536

.lr.ph531.preheader:                              ; preds = %sqlite3GetTempRange.exit
  %i.qq = load ptr, ptr %i.qo, align 8, !tbaa !1208
  br label %.lr.ph531

.lr.ph531:                                        ; preds = %.lr.ph531.preheader, %.lr.ph531
  %.012.i530 = phi i32 [ %i.qu, %.lr.ph531 ], [ %i.qd, %.lr.ph531.preheader ] ; 2 uses
  %.013.i529 = phi ptr [ %i.qv, %.lr.ph531 ], [ %i.qq, %.lr.ph531.preheader ] ; 2 uses
  %.014.i528 = phi i32 [ %i.qt, %.lr.ph531 ], [ %.0.i403, %.lr.ph531.preheader ] ; 2 uses
  %i.qr = load ptr, ptr %.013.i529, align 8, !tbaa !1212
  %i.qs = tail call fastcc i32 @sqlite3ExprCode(ptr noundef nonnull %0, ptr noundef %i.qr, i32 noundef %.014.i528), !inline_history !1842 ; 0 uses
  %i.qt = add nsw i32 %.014.i528, 1
  %i.qu = add nsw i32 %.012.i530, -1
  %i.qv = getelementptr inbounds nuw i8, ptr %.013.i529, i64 24
  %i.qw = icmp samesign ugt i32 %.012.i530, 1
  br i1 %i.qw, label %.lr.ph531, label %sqlite3ExprCodeExprList.exit, !llvm.loop !1808

sqlite3ExprCodeExprList.exit:                     ; preds = %.lr.ph531
  %.not642 = icmp eq i32 %i.qd, 1
  br i1 %.not642, label %..thread514_crit_edge, label %bb.cn

bb.cn:                                            ; preds = %sqlite3ExprCodeExprList.exit
  %i.qx = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.qy = load i16, ptr %i.qx, align 2, !tbaa !1343
  %i.qz = and i16 %i.qy, 128
  %.not350 = icmp eq i16 %i.qz, 0
  %.pre544 = load ptr, ptr %i.qo, align 8, !tbaa !1208
  %spec.select.idx = select i1 %.not350, i64 0, i64 24
  %spec.select = getelementptr inbounds nuw i8, ptr %.pre544, i64 %spec.select.idx
  br label %.lr.ph535

..thread514_crit_edge:                            ; preds = %sqlite3ExprCodeExprList.exit
  %.pre543 = load ptr, ptr %i.qo, align 8, !tbaa !1208
  br label %.lr.ph535

.lr.ph535:                                        ; preds = %bb.cn, %..thread514_crit_edge
  %.sink.in = phi ptr [ %spec.select, %bb.cn ], [ %.pre543, %..thread514_crit_edge ]
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !1212
  %i.ra = tail call fastcc ptr @sqlite3VtabOverloadFunction(ptr noundef nonnull %i.pq, ptr noundef %i.qc, i32 noundef %i.qd, ptr noundef %.sink) ; 2 uses
  %i.rb = tail call i32 @llvm.umin.i32(i32 %i.qd, i32 32)
  %i.rc = getelementptr inbounds nuw i8, ptr %i.ra, i64 3
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.rb to i64
  br label %bb.co

bb.co:                                            ; preds = %.lr.ph535, %sqlite3ExprCollSeq.exit
  %indvars.iv540 = phi i64 [ 0, %.lr.ph535 ], [ %indvars.iv.next541, %sqlite3ExprCollSeq.exit ] ; 4 uses
  %.0330534 = phi i32 [ 0, %.lr.ph535 ], [ %.1331, %sqlite3ExprCollSeq.exit ]
  %.0334532 = phi ptr [ null, %.lr.ph535 ], [ %.1335, %sqlite3ExprCollSeq.exit ] ; 2 uses
  %i.re = load ptr, ptr %i.qo, align 8, !tbaa !1208
  %i.rf = getelementptr inbounds nuw [24 x i8], ptr %i.re, i64 %indvars.iv540
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !1212
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  store i32 1, ptr %i.a, align 4, !tbaa !4
  %i.rh = call fastcc i32 @walkExprTree(ptr noundef %i.rg, ptr noundef nonnull @exprNodeIsConstant, ptr noundef nonnull %i.a) ; 0 uses
  %i.ri = load i32, ptr %i.a, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  %.not354 = icmp eq i32 %i.ri, 0
  %i.rj = trunc nuw nsw i64 %indvars.iv540 to i32
  %i.rk = shl nuw i32 1, %i.rj
  %i.rl = select i1 %.not354, i32 0, i32 %i.rk
  %.1331 = or i32 %i.rl, %.0330534                ; 2 uses
  %i.rm = load i8, ptr %i.rc, align 1, !tbaa !947
  %i.rn = icmp eq i8 %i.rm, 0
  %i.ro = icmp ne ptr %.0334532, null
  %or.cond = select i1 %i.rn, i1 true, i1 %i.ro
  br i1 %or.cond, label %sqlite3ExprCollSeq.exit, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.rp = load ptr, ptr %i.qo, align 8, !tbaa !1208
  %i.rq = getelementptr inbounds nuw [24 x i8], ptr %i.rp, i64 %indvars.iv540
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !1212 ; 2 uses
  %.not33.i = icmp eq ptr %i.rr, null
  br i1 %.not33.i, label %sqlite3ExprCollSeq.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.cp, %tailrecurse.i
  %.tr3234.i = phi ptr [ %i.rz, %tailrecurse.i ], [ %i.rr, %bb.cp ] ; 3 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %.tr3234.i, i64 8
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !1431 ; 5 uses
  %i.ru = load i8, ptr %.tr3234.i, align 8, !tbaa !1319 ; 2 uses
  %i.rv = icmp ne i8 %i.ru, 31
  %i.rw = icmp ne i8 %i.ru, 86
  %or.cond.not21.i = and i1 %i.rv, %i.rw
  %i.rx = icmp ne ptr %i.rt, null
  %or.cond3.i = select i1 %or.cond.not21.i, i1 true, i1 %i.rx
  br i1 %or.cond3.i, label %bb.cq, label %tailrecurse.i

tailrecurse.i:                                    ; preds = %.lr.ph.i
  %i.ry = getelementptr inbounds nuw i8, ptr %.tr3234.i, i64 16
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !1205 ; 2 uses
  %.not.i405 = icmp eq ptr %i.rz, null
  br i1 %.not.i405, label %sqlite3ExprCollSeq.exit, label %.lr.ph.i

bb.cq:                                            ; preds = %.lr.ph.i
  %.not.i.i406 = icmp eq ptr %i.rt, null
  br i1 %.not.i.i406, label %sqlite3ExprCollSeq.exit, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.sa = load ptr, ptr %i.rt, align 8, !tbaa !195 ; 2 uses
  %i.sb = load ptr, ptr %0, align 8, !tbaa !244
  %i.sc = call fastcc ptr @sqlite3GetCollSeq(ptr noundef %i.sb, ptr noundef nonnull %i.rt, ptr noundef %i.sa)
  %.not13.i.i = icmp eq ptr %i.sc, null
  br i1 %.not13.i.i, label %bb.cs, label %sqlite3ExprCollSeq.exit

bb.cs:                                            ; preds = %bb.cr
  %i.sd = load i32, ptr %i.rd, align 8, !tbaa !252 ; 2 uses
  %i.se = icmp eq i32 %i.sd, 0
  br i1 %i.se, label %bb.ct, label %sqlite3CheckCollSeq.exit.i

bb.ct:                                            ; preds = %bb.cs
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.343, ptr noundef %i.sa), !inline_history !1571
  %.pre.i.i407 = load i32, ptr %i.rd, align 8, !tbaa !252
  br label %sqlite3CheckCollSeq.exit.i

sqlite3CheckCollSeq.exit.i:                       ; preds = %bb.ct, %bb.cs
  %i.sf = phi i32 [ %i.sd, %bb.cs ], [ %.pre.i.i407, %bb.ct ]
  %i.sg = add nsw i32 %i.sf, 1
  store i32 %i.sg, ptr %i.rd, align 8, !tbaa !252
  br label %sqlite3ExprCollSeq.exit

sqlite3ExprCollSeq.exit:                          ; preds = %tailrecurse.i, %sqlite3CheckCollSeq.exit.i, %bb.cr, %bb.cq, %bb.cp, %bb.co
  %.1335 = phi ptr [ %.0334532, %bb.co ], [ %i.rt, %bb.cr ], [ null, %sqlite3CheckCollSeq.exit.i ], [ null, %bb.cq ], [ null, %bb.cp ], [ null, %tailrecurse.i ] ; 2 uses
  %indvars.iv.next541 = add nuw nsw i64 %indvars.iv540, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next541, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge536, label %bb.co, !llvm.loop !1843

._crit_edge536:                                   ; preds = %sqlite3ExprCollSeq.exit, %bb.cj, %sqlite3GetTempRange.exit
  %.0329639 = phi ptr [ %i.qc, %sqlite3GetTempRange.exit ], [ %i.qc, %bb.cj ], [ %i.ra, %sqlite3ExprCollSeq.exit ] ; 4 uses
  %.0328510637 = phi i32 [ %i.qd, %sqlite3GetTempRange.exit ], [ 0, %bb.cj ], [ %i.qd, %sqlite3ExprCollSeq.exit ] ; 4 uses
  %.0326512635 = phi i32 [ %.0.i403, %sqlite3GetTempRange.exit ], [ 0, %bb.cj ], [ %.0.i403, %sqlite3ExprCollSeq.exit ] ; 2 uses
  %.0334.lcssa = phi ptr [ null, %sqlite3GetTempRange.exit ], [ null, %bb.cj ], [ %.1335, %sqlite3ExprCollSeq.exit ] ; 2 uses
  %.0330.lcssa = phi i32 [ 0, %sqlite3GetTempRange.exit ], [ 0, %bb.cj ], [ %.1331, %sqlite3ExprCollSeq.exit ]
  %i.sh = getelementptr inbounds nuw i8, ptr %.0329639, i64 3
  %i.si = load i8, ptr %i.sh, align 1, !tbaa !947
  %.not351 = icmp eq i8 %i.si, 0
  br i1 %.not351, label %bb.cx, label %bb.cu

bb.cu:                                            ; preds = %._crit_edge536
  %.not352 = icmp eq ptr %.0334.lcssa, null
  br i1 %.not352, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.sj = load ptr, ptr %0, align 8, !tbaa !244
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 48
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !512
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.2336 = phi ptr [ %.0334.lcssa, %bb.cu ], [ %i.sl, %bb.cv ]
  %i.sm = call fastcc i32 @sqlite3VdbeAddOp4(ptr noundef %i.f, i32 noundef 11, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %.2336, i32 noundef -4) ; 0 uses
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %._crit_edge536
  %i.sn = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 5 uses
  %i.so = load i32, ptr %i.sn, align 8, !tbaa !135 ; 4 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.f, i64 28 ; 2 uses
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !147 ; 6 uses
  %.not.i.i408 = icmp sgt i32 %i.sq, %i.so
  br i1 %.not.i.i408, label %bb.dc, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %.not23.i.i409 = icmp eq i32 %i.sq, 0
  %i.sr = shl nsw i32 %i.sq, 1
  %spec.select.i.i410 = select i1 %.not23.i.i409, i32 42, i32 %i.sr ; 4 uses
  %i.ss = load ptr, ptr %i.f, align 8, !tbaa !106
  %i.st = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.ss, i64 42 ; 2 uses
  %i.sv = load i8, ptr %i.su, align 2, !tbaa !129
  %i.sw = icmp eq i8 %i.sv, 0
  br i1 %i.sw, label %bb.cz, label %resizeOpArray.exit.i.i411

bb.cz:                                            ; preds = %bb.cy
  %i.sx = mul i32 %spec.select.i.i410, 24
  %i.sy = load ptr, ptr %i.st, align 8, !tbaa !136
  %i.sz = call ptr @sqlite3_realloc(ptr noundef %i.sy, i32 noundef %i.sx) ; 3 uses
  %.not.i.i.i.i416 = icmp eq ptr %i.sz, null
  br i1 %.not.i.i.i.i416, label %bb.da, label %sqlite3DbRealloc.exit.i.i.i417

bb.da:                                            ; preds = %bb.cz
  store i8 1, ptr %i.su, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i411

sqlite3DbRealloc.exit.i.i.i417:                   ; preds = %bb.cz
  store i32 %spec.select.i.i410, ptr %i.sp, align 4, !tbaa !147
  store ptr %i.sz, ptr %i.st, align 8, !tbaa !136
  %i.ta = icmp sgt i32 %spec.select.i.i410, %i.sq
  br i1 %i.ta, label %bb.db, label %resizeOpArray.exit.i.i411

bb.db:                                            ; preds = %sqlite3DbRealloc.exit.i.i.i417
  %i.tb = sext i32 %i.sq to i64
  %i.tc = getelementptr inbounds [24 x i8], ptr %i.sz, i64 %i.tb
  %i.td = sub nsw i32 %spec.select.i.i410, %i.sq
  %i.te = zext nneg i32 %i.td to i64
  %i.tf = mul nuw nsw i64 %i.te, 24
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.tc, i8 0, i64 %i.tf, i1 false)
  br label %resizeOpArray.exit.i.i411

resizeOpArray.exit.i.i411:                        ; preds = %bb.db, %sqlite3DbRealloc.exit.i.i.i417, %bb.da, %bb.cy
  %i.tg = load ptr, ptr %i.f, align 8, !tbaa !106
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 42
  %i.ti = load i8, ptr %i.th, align 2, !tbaa !129
  %.not24.i.i412 = icmp eq i8 %i.ti, 0
  br i1 %.not24.i.i412, label %resizeOpArray.exit._crit_edge.i.i414, label %sqlite3VdbeAddOp4.exit

resizeOpArray.exit._crit_edge.i.i414:             ; preds = %resizeOpArray.exit.i.i411
  %.pre.i.i415 = load i32, ptr %i.sn, align 8, !tbaa !135
  br label %bb.dc

bb.dc:                                            ; preds = %resizeOpArray.exit._crit_edge.i.i414, %bb.cx
  %i.tj = phi i32 [ %.pre.i.i415, %resizeOpArray.exit._crit_edge.i.i414 ], [ %i.so, %bb.cx ]
  %i.tk = add nsw i32 %i.tj, 1
  store i32 %i.tk, ptr %i.sn, align 8, !tbaa !135
  %i.tl = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !136
  %i.tn = sext i32 %i.so to i64
  %i.to = getelementptr inbounds [24 x i8], ptr %i.tm, i64 %i.tn ; 6 uses
  store i8 20, ptr %i.to, align 8, !tbaa !137
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 4
  store i32 %.0330.lcssa, ptr %i.tp, align 4, !tbaa !141
  %i.tq = getelementptr inbounds nuw i8, ptr %i.to, i64 8
  store i32 %.0326512635, ptr %i.tq, align 8, !tbaa !140
  %i.tr = getelementptr inbounds nuw i8, ptr %i.to, i64 12
  store i32 %2, ptr %i.tr, align 4, !tbaa !190
  %i.ts = getelementptr inbounds nuw i8, ptr %i.to, i64 16
  store ptr null, ptr %i.ts, align 8, !tbaa !37
  %i.tt = getelementptr inbounds nuw i8, ptr %i.to, i64 1
  store i8 0, ptr %i.tt, align 1, !tbaa !191
  %i.tu = getelementptr inbounds nuw i8, ptr %i.f, i64 339
  store i8 0, ptr %i.tu, align 1, !tbaa !104
  br label %sqlite3VdbeAddOp4.exit

sqlite3VdbeAddOp4.exit:                           ; preds = %resizeOpArray.exit.i.i411, %bb.dc
  %.0.i.i413 = phi i32 [ %i.so, %bb.dc ], [ 0, %resizeOpArray.exit.i.i411 ] ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !136 ; 2 uses
  %i.tx = icmp eq ptr %i.tw, null
  br i1 %i.tx, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %sqlite3VdbeAddOp4.exit
  %i.ty = load ptr, ptr %i.f, align 8, !tbaa !106
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 42
  %i.ua = load i8, ptr %i.tz, align 2, !tbaa !129
  %.not.i494 = icmp eq i8 %i.ua, 0
  br i1 %.not.i494, label %bb.df, label %bb.de

bb.de:                                            ; preds = %sqlite3VdbeAddOp4.exit, %bb.dd
  %i.ub = getelementptr inbounds nuw i8, ptr %.0329639, i64 4
  %i.uc = load i8, ptr %i.ub, align 4, !tbaa !484
  %i.ud = and i8 %i.uc, 4
  %.not3.i12.i = icmp eq i8 %i.ud, 0
  br i1 %.not3.i12.i, label %bb.di, label %freeEphemeralFunction.exit15.sink.split.i

freeEphemeralFunction.exit15.sink.split.i:        ; preds = %bb.de
  %i.ue = getelementptr inbounds i8, ptr %.0329639, i64 -8 ; 2 uses
  %i.uf = load i64, ptr %i.ue, align 8, !tbaa !28
  %sext.i.i14.i = shl i64 %i.uf, 32
  %i.ug = ashr exact i64 %sext.i.i14.i, 32
  %i.uh = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.ui = sub nsw i64 %i.uh, %i.ug
  store i64 %i.ui, ptr @mem.5, align 8, !tbaa !22
  call void @free(ptr noundef nonnull %i.ue) #43
  br label %bb.di

bb.df:                                            ; preds = %bb.dd
  %i.uj = icmp slt i32 %.0.i.i413, 0
  br i1 %i.uj, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.uk = load i32, ptr %i.sn, align 8, !tbaa !135 ; 2 uses
  %i.ul = add nsw i32 %i.uk, -1
  %i.um = icmp slt i32 %i.uk, 1
  br i1 %i.um, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.df, %bb.dg
  %.0.i495 = phi i32 [ %i.ul, %bb.dg ], [ %.0.i.i413, %bb.df ]
  %i.un = zext nneg i32 %.0.i495 to i64
  %i.uo = getelementptr inbounds nuw [24 x i8], ptr %i.tw, i64 %i.un ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 1 ; 2 uses
  %i.uq = load i8, ptr %i.up, align 1, !tbaa !191
  %i.ur = sext i8 %i.uq to i32
  %i.us = getelementptr inbounds nuw i8, ptr %i.uo, i64 16 ; 2 uses
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !37
  call fastcc void @freeP4(i32 noundef %i.ur, ptr noundef %i.ut)
  store ptr %.0329639, ptr %i.us, align 8, !tbaa !37
  store i8 -5, ptr %i.up, align 1, !tbaa !191
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg, %bb.de, %freeEphemeralFunction.exit15.sink.split.i
  %i.uu = load ptr, ptr %i.tv, align 8, !tbaa !136 ; 2 uses
  %.not5.i = icmp eq ptr %i.uu, null
  br i1 %.not5.i, label %sqlite3VdbeChangeP5.exit, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.uv = trunc i32 %.0328510637 to i8
  %i.uw = load i32, ptr %i.sn, align 8, !tbaa !135
  %i.ux = sext i32 %i.uw to i64
  %i.uy = getelementptr [24 x i8], ptr %i.uu, i64 %i.ux
  %i.uz = getelementptr i8, ptr %i.uy, i64 -21
  store i8 %i.uv, ptr %i.uz, align 1, !tbaa !139
  br label %sqlite3VdbeChangeP5.exit

end_hunk_6
