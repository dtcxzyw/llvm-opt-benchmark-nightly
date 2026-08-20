inline.NumInlined: 1687
inline.NumDeleted: 214
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 42
begin_hunk_0_@Gia_ManPrintPath:bb.a
  %.pre-phi = phi i64 [ %.pre871, %Gia_ObjIsMux.exit.Gia_ObjIsXor.exit.thread_crit_edge ], [ %i.dg, %Gia_ObjIsMux.exit.thread ], [ %i.cy, %bb.n ] ; 2 uses
  %.val472 = phi ptr [ %.val438, %Gia_ObjIsMux.exit.Gia_ObjIsXor.exit.thread_crit_edge ], [ %.val438, %Gia_ObjIsMux.exit.thread ], [ %.val438.pre869, %bb.n ]
  %i.dk = phi i32 [ 2, %Gia_ObjIsMux.exit.Gia_ObjIsXor.exit.thread_crit_edge ], [ %spec.select, %Gia_ObjIsMux.exit.thread ], [ 0, %bb.n ]
  %.val472.fr = freeze ptr %.val472               ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val472.fr, null
  br i1 %.not.i.i.i, label %.split.us.preheader, label %Gia_ObjFaninId2.exit.peel

.split.us.preheader:                              ; preds = %Gia_ObjIsXor.exit.thread
  %.pn.in.i.us = trunc i64 %.val440 to i32
  %.pn.i.us = and i32 %.pn.in.i.us, 536870911
  %i.dl = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.dm = sub nsw i32 %i.dl, %.pn.i.us            ; 2 uses
  %i.dn = sext i32 %i.dm to i64                   ; 2 uses
  %i.do = getelementptr inbounds [4 x i8], ptr %.val448, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !8  ; 3 uses
  %i.dq = icmp sgt i32 %i.dp, -1
  br i1 %i.dq, label %bb.p, label %Gia_ManPrintPathFaninBetter.exit.us

bb.p:                                             ; preds = %.split.us.preheader
  %i.dr = getelementptr inbounds [4 x i8], ptr %.val449, i64 %i.dn
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !8
  br label %Gia_ManPrintPathFaninBetter.exit.us

Gia_ManPrintPathFaninBetter.exit.us:              ; preds = %bb.p, %.split.us.preheader
  %.1.us = phi i32 [ %i.dm, %bb.p ], [ -1, %.split.us.preheader ] ; 3 uses
  %.1364.us = phi i32 [ %i.ds, %bb.p ], [ -1, %.split.us.preheader ] ; 5 uses
  %.1362.us = tail call i32 @llvm.smax.i32(i32 %i.dp, i32 -1) ; 4 uses
  %.pn.in.i.us.1 = trunc nuw i64 %.pre-phi to i32
  %.pn.i.us.1 = and i32 %.pn.in.i.us.1, 536870911
  %i.dt = sub nsw i32 %i.dl, %.pn.i.us.1          ; 2 uses
  %i.du = sext i32 %i.dt to i64                   ; 2 uses
  %i.dv = getelementptr inbounds [4 x i8], ptr %.val449, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !8  ; 3 uses
  %i.dx = getelementptr inbounds [4 x i8], ptr %.val448, i64 %i.du
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !8  ; 3 uses
  %i.dz = icmp slt i32 %i.dy, 0
  br i1 %i.dz, label %.split766.us, label %bb.q

bb.q:                                             ; preds = %Gia_ManPrintPathFaninBetter.exit.us
  %i.ea = icmp slt i32 %i.dp, 0
  br i1 %i.ea, label %.split1020.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not.i502.us.1 = icmp eq i32 %i.dw, %.1364.us
  br i1 %.not.i502.us.1, label %.split1009, label %Gia_ManPrintPathFaninBetter.exit.us.1

.split1009:                                       ; preds = %bb.r
  %i.eb = icmp samesign ult i32 %i.dy, %.1362.us
  %cond.fr10011010 = freeze i1 %i.eb
  br i1 %cond.fr10011010, label %.split1020.thread, label %.split766.us

Gia_ManPrintPathFaninBetter.exit.us.1:            ; preds = %bb.r
  %i.ec = icmp sgt i32 %i.dw, %.1364.us
  %cond.fr1001 = freeze i1 %i.ec
  br i1 %cond.fr1001, label %.split1020.thread, label %.split766.us

.split1020.thread:                                ; preds = %.split1009, %Gia_ManPrintPathFaninBetter.exit.us.1, %bb.q
  br label %.split766.us

Gia_ObjFaninId2.exit.peel:                        ; preds = %Gia_ObjIsXor.exit.thread
  %sext.i.i = shl nuw nsw i64 %indvars.iv, 2
  %i.ed = getelementptr inbounds nuw i8, ptr %.val472.fr, i64 %sext.i.i
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !8  ; 2 uses
  %.not2.i.not = icmp eq i32 %i.ee, 0             ; 2 uses
  %.pn.in.i.peel = trunc i64 %.val440 to i32
  %.pn.i.peel = and i32 %.pn.in.i.peel, 536870911
  %i.ef = trunc nuw nsw i64 %indvars.iv to i32
  %i.eg = sub nsw i32 %i.ef, %.pn.i.peel          ; 2 uses
  %i.eh = sext i32 %i.eg to i64                   ; 2 uses
  %i.ei = getelementptr inbounds [4 x i8], ptr %.val449, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !8
  %i.ek = getelementptr inbounds [4 x i8], ptr %.val448, i64 %i.eh
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !8  ; 3 uses
  %i.em = icmp sgt i32 %i.el, -1                  ; 2 uses
  %.1.peel = select i1 %i.em, i32 %i.eg, i32 -1   ; 3 uses
  %.1362.peel = tail call i32 @llvm.smax.i32(i32 %i.el, i32 -1) ; 4 uses
  %.1364.peel = select i1 %i.em, i32 %i.ej, i32 -1 ; 5 uses
  %.pn.in.i = trunc nuw i64 %.pre-phi to i32
  %.pn.i = and i32 %.pn.in.i, 536870911
  %i.en = trunc nuw nsw i64 %indvars.iv to i32
  %i.eo = sub nsw i32 %i.en, %.pn.i               ; 2 uses
  %i.ep = ashr i32 %i.ee, 1
  %spec.select.i = select i1 %.not2.i.not, i32 -1, i32 %i.ep ; 2 uses
  %i.eq = sext i32 %i.eo to i64                   ; 2 uses
  %i.er = getelementptr inbounds [4 x i8], ptr %.val449, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4, !tbaa !8  ; 3 uses
  %i.et = getelementptr inbounds [4 x i8], ptr %.val448, i64 %i.eq
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !8  ; 3 uses
  %i.ev = icmp slt i32 %i.eu, 0
  br i1 %i.ev, label %.thread1042, label %bb.s

bb.s:                                             ; preds = %Gia_ObjFaninId2.exit.peel
  %i.ew = icmp slt i32 %i.el, 0
  br i1 %i.ew, label %.split1045.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not.i502 = icmp eq i32 %i.es, %.1364.peel
  br i1 %.not.i502, label %.split1033, label %Gia_ManPrintPathFaninBetter.exit

.split1033:                                       ; preds = %bb.t
  %i.ex = icmp samesign ult i32 %i.eu, %.1362.peel
  %cond.fr10251034 = freeze i1 %i.ex
  br i1 %cond.fr10251034, label %.split1045.thread, label %.thread1042

Gia_ManPrintPathFaninBetter.exit:                 ; preds = %bb.t
  %i.ey = icmp sgt i32 %i.es, %.1364.peel
  %cond.fr1025 = freeze i1 %i.ey
  br i1 %cond.fr1025, label %.split1045.thread, label %.thread1042

.split1045.thread:                                ; preds = %.split1033, %Gia_ManPrintPathFaninBetter.exit, %bb.s
  br label %.thread1042

.thread1042:                                      ; preds = %.split1033, %Gia_ManPrintPathFaninBetter.exit, %Gia_ObjFaninId2.exit.peel, %.split1045.thread
  %i.ez = phi i32 [ %i.eu, %.split1045.thread ], [ %.1362.peel, %Gia_ObjFaninId2.exit.peel ], [ %.1362.peel, %Gia_ManPrintPathFaninBetter.exit ], [ %.1362.peel, %.split1033 ] ; 6 uses
  %i.fa = phi i32 [ %i.es, %.split1045.thread ], [ %.1364.peel, %Gia_ObjFaninId2.exit.peel ], [ %.1364.peel, %Gia_ManPrintPathFaninBetter.exit ], [ %.1364.peel, %.split1033 ] ; 6 uses
  %i.fb = phi i32 [ %i.eo, %.split1045.thread ], [ %.1.peel, %Gia_ObjFaninId2.exit.peel ], [ %.1.peel, %Gia_ManPrintPathFaninBetter.exit ], [ %.1.peel, %.split1033 ] ; 4 uses
  br i1 %.not2.i.not, label %.split766.us, label %Gia_ObjFaninId2.exit.1

Gia_ObjFaninId2.exit.1:                           ; preds = %.thread1042
  %i.fc = sext i32 %spec.select.i to i64          ; 2 uses
  %i.fd = getelementptr inbounds [4 x i8], ptr %.val449, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !8  ; 3 uses
  %i.ff = getelementptr inbounds [4 x i8], ptr %.val448, i64 %i.fc
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !8  ; 3 uses
  %i.fh = icmp slt i32 %i.fg, 0
  br i1 %i.fh, label %.split766.us, label %bb.u

bb.u:                                             ; preds = %Gia_ObjFaninId2.exit.1
  %i.fi = icmp slt i32 %i.ez, 0
  br i1 %i.fi, label %.split1045.thread.1, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not.i502.1 = icmp eq i32 %i.fe, %i.fa
  br i1 %.not.i502.1, label %.split1033.1, label %Gia_ManPrintPathFaninBetter.exit.1

Gia_ManPrintPathFaninBetter.exit.1:               ; preds = %bb.v
  %i.fj = icmp sgt i32 %i.fe, %i.fa
  %cond.fr1025.1 = freeze i1 %i.fj
  br i1 %cond.fr1025.1, label %.split1045.thread.1, label %.split766.us

.split1033.1:                                     ; preds = %bb.v
  %i.fk = icmp samesign ult i32 %i.fg, %i.ez
  %cond.fr10251034.1 = freeze i1 %i.fk
  br i1 %cond.fr10251034.1, label %.split1045.thread.1, label %.split766.us

.split1045.thread.1:                              ; preds = %.split1033.1, %Gia_ManPrintPathFaninBetter.exit.1, %bb.u
  br label %.split766.us

.split766.us:                                     ; preds = %.thread1042, %.split1045.thread.1, %.split1033.1, %Gia_ManPrintPathFaninBetter.exit.1, %Gia_ObjFaninId2.exit.1, %.split1009, %Gia_ManPrintPathFaninBetter.exit.us.1, %Gia_ManPrintPathFaninBetter.exit.us, %.split1020.thread
  %.us-phi = phi i32 [ %.1364.us, %Gia_ManPrintPathFaninBetter.exit.us ], [ %i.dw, %.split1020.thread ], [ %.1364.us, %.split1009 ], [ %.1364.us, %Gia_ManPrintPathFaninBetter.exit.us.1 ], [ %i.fa, %.thread1042 ], [ %i.fe, %.split1045.thread.1 ], [ %i.fa, %Gia_ObjFaninId2.exit.1 ], [ %i.fa, %Gia_ManPrintPathFaninBetter.exit.1 ], [ %i.fa, %.split1033.1 ]
  %.us-phi767 = phi i32 [ %.1362.us, %Gia_ManPrintPathFaninBetter.exit.us ], [ %i.dy, %.split1020.thread ], [ %.1362.us, %.split1009 ], [ %.1362.us, %Gia_ManPrintPathFaninBetter.exit.us.1 ], [ %i.ez, %.thread1042 ], [ %i.fg, %.split1045.thread.1 ], [ %i.ez, %Gia_ObjFaninId2.exit.1 ], [ %i.ez, %Gia_ManPrintPathFaninBetter.exit.1 ], [ %i.ez, %.split1033.1 ]
  %.us-phi768 = phi i32 [ %.1.us, %Gia_ManPrintPathFaninBetter.exit.us ], [ %i.dt, %.split1020.thread ], [ %.1.us, %.split1009 ], [ %.1.us, %Gia_ManPrintPathFaninBetter.exit.us.1 ], [ %i.fb, %.thread1042 ], [ %spec.select.i, %.split1045.thread.1 ], [ %i.fb, %Gia_ObjFaninId2.exit.1 ], [ %i.fb, %Gia_ManPrintPathFaninBetter.exit.1 ], [ %i.fb, %.split1033.1 ]
  %i.fl = add nsw i32 %.us-phi, %i.dk
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.val449, i64 %indvars.iv
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !8
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.val448, i64 %indvars.iv
  store i32 %.us-phi767, ptr %i.fn, align 4, !tbaa !8
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.val459, i64 %indvars.iv
  store i32 %.us-phi768, ptr %i.fo, align 4, !tbaa !8
  %.pre = load i32, ptr %i.bb, align 8, !tbaa !42
  br label %bb.w

bb.w:                                             ; preds = %bb.l, %.split766.us, %bb.k
  %i.fp = phi i32 [ %i.ck, %bb.l ], [ %.pre, %.split766.us ], [ %i.ck, %bb.k ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fq = sext i32 %i.fp to i64
  %i.fr = icmp slt i64 %indvars.iv.next, %i.fq
  br i1 %i.fr, label %.lr.ph.split, label %.critedge.loopexit, !llvm.loop !350

.critedge.loopexit:                               ; preds = %bb.w
  %.val455.pre = load i32, ptr %i.d, align 4, !tbaa !64
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.lr.ph, %Vec_IntStartFull.exit490
  %.val455 = phi i32 [ %.val455.pre, %.critedge.loopexit ], [ %.val464.val, %.lr.ph ], [ %.val464.val, %Vec_IntStartFull.exit490 ] ; 3 uses
  %i.fs = sext i32 %i.f to i64
  %i.ft = shl nsw i64 %i.fs, 2                    ; 4 uses
  %i.fu = tail call noalias ptr @malloc(i64 noundef %i.ft) #40 ; 11 uses
  %i.fv = tail call noalias ptr @malloc(i64 noundef %i.ft) #40 ; 13 uses
  %i.fw = tail call noalias ptr @malloc(i64 noundef %i.ft) #40 ; 15 uses
  %i.fx = tail call noalias ptr @malloc(i64 noundef %i.ft) #40 ; 8 uses
  %i.fy = icmp sgt i32 %.val455, 0
  br i1 %i.fy, label %.lr.ph781, label %.critedge2..preheader_crit_edge

.lr.ph781:                                        ; preds = %.critedge
  %i.fz = getelementptr i8, ptr %0, i64 32
  %.val456 = load ptr, ptr %i.fz, align 8, !tbaa !46 ; 2 uses
  %.not393 = icmp eq ptr %.val456, null
  %i.ga = getelementptr i8, ptr %0, i64 16
  %i.gb = getelementptr i8, ptr %0, i64 64
  br i1 %.not393, label %.critedge2..preheader_crit_edge, label %.lr.ph781.split

.lr.ph781.split:                                  ; preds = %.lr.ph781
  %i.gc = getelementptr i8, ptr %.val464, i64 8
  %.val457.val = load ptr, ptr %i.gc, align 8, !tbaa !61
  %wide.trip.count = zext nneg i32 %.val455 to i64
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph781.split, %Gia_ManPrintPathInsert.exit
  %indvars.iv832 = phi i64 [ 0, %.lr.ph781.split ], [ %indvars.iv.next833, %Gia_ManPrintPathInsert.exit ] ; 2 uses
  %.0719779 = phi i32 [ 0, %.lr.ph781.split ], [ %.1720, %Gia_ManPrintPathInsert.exit ] ; 9 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.val457.val, i64 %indvars.iv832
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !8  ; 2 uses
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [12 x i8], ptr %.val456, i64 %i.gf
  %.val3.i = load i64, ptr %i.gg, align 4         ; 2 uses
  %i.gh = trunc i64 %.val3.i to i32
  %i.gi = and i32 %i.gh, 536870911
  %i.gj = sub nsw i32 %i.ge, %i.gi                ; 2 uses
  %i.gk = sext i32 %i.gj to i64                   ; 2 uses
  %i.gl = getelementptr inbounds [4 x i8], ptr %.val449, i64 %i.gk
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !8  ; 4 uses
  %i.gn = getelementptr inbounds [4 x i8], ptr %.val448, i64 %i.gk
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !8  ; 5 uses
  %i.gp = lshr i64 %.val3.i, 32
  %i.gq = trunc nuw i64 %i.gp to i32
  %i.gr = and i32 %i.gq, 536870911                ; 3 uses
  %i.gs = icmp sgt i32 %i.go, -1
  br i1 %i.gs, label %.preheader.i504, label %Gia_ManPrintPathInsert.exit

.preheader.i504:                                  ; preds = %bb.x
  %.val469 = load i32, ptr %i.ga, align 8, !tbaa !103 ; 2 uses
  %.val470 = load ptr, ptr %i.gb, align 8, !tbaa !63
  %i.gt = getelementptr i8, ptr %.val470, i64 4
  %.val470.val = load i32, ptr %i.gt, align 4, !tbaa !64
  %i.gu = sub nsw i32 %.val470.val, %.val469
  %.not423 = icmp slt i32 %i.go, %i.gu
  %i.gv = select i1 %.not423, i64 0, i64 2
  %i.gw = sub nsw i32 %.val455, %.val469
  %.not424 = icmp sge i32 %i.gr, %i.gw
  %i.gx = zext i1 %.not424 to i64
  %i.gy = or disjoint i64 %i.gv, %i.gx            ; 2 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gy ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !8
  %i.hb = add nsw i32 %i.ha, 1
  store i32 %i.hb, ptr %i.gz, align 4, !tbaa !8
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gy ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !8
  %i.he = tail call noundef i32 @llvm.smax.i32(i32 %i.hd, i32 %i.gm)
  store i32 %i.he, ptr %i.hc, align 4, !tbaa !8
  %i.hf = icmp sgt i32 %.0719779, 0
  br i1 %i.hf, label %.lr.ph.preheader.i, label %Gia_ManPrintPathCandBetter.exit._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i504
  %wide.trip.count.i506 = zext nneg i32 %.0719779 to i64
  br label %.lr.ph.i507

.lr.ph.i507:                                      ; preds = %bb.z, %.lr.ph.preheader.i
  %indvars.iv.i508 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i510, %bb.z ] ; 7 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %indvars.iv.i508
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !8  ; 2 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv.i508
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !8  ; 2 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %indvars.iv.i508
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !8
  %.not.i.i509 = icmp eq i32 %i.gm, %i.hh
  br i1 %.not.i.i509, label %bb.y, label %.split.i

.split.i:                                         ; preds = %.lr.ph.i507
  %i.hm = icmp sgt i32 %i.gm, %i.hh
  br i1 %i.hm, label %Gia_ManPrintPathCandBetter.exit._crit_edge.loopexit.split.loop.exit75.i, label %bb.z

bb.y:                                             ; preds = %.lr.ph.i507
  %.not15.i.i = icmp eq i32 %i.go, %i.hj
  br i1 %.not15.i.i, label %.split74.i, label %Gia_ManPrintPathCandBetter.exit.i

.split74.i:                                       ; preds = %bb.y
  %i.hn = icmp slt i32 %i.gr, %i.hl
  br i1 %i.hn, label %Gia_ManPrintPathCandBetter.exit._crit_edge.loopexit.split.loop.exit.i, label %bb.z

Gia_ManPrintPathCandBetter.exit.i:                ; preds = %bb.y
  %i.ho = icmp slt i32 %i.go, %i.hj
  br i1 %i.ho, label %Gia_ManPrintPathCandBetter.exit._crit_edge.loopexit.split.loop.exit77.i, label %bb.z

bb.z:                                             ; preds = %Gia_ManPrintPathCandBetter.exit.i, %.split74.i, %.split.i
  %indvars.iv.next.i510 = add nuw nsw i64 %indvars.iv.i508, 1 ; 2 uses
  %exitcond.not.i511 = icmp eq i64 %indvars.iv.next.i510, %wide.trip.count.i506
  br i1 %exitcond.not.i511, label %Gia_ManPrintPathCandBetter.exit._crit_edge.i, label %.lr.ph.i507, !llvm.loop !351

Gia_ManPrintPathCandBetter.exit._crit_edge.loopexit.split.loop.exit.i: ; preds = %.split74.i
  %i.hp = trunc nuw nsw i64 %indvars.iv.i508 to i32
  br label %Gia_ManPrintPathCandBetter.exit._crit_edge.i

Gia_ManPrintPathCandBetter.exit._crit_edge.loopexit.split.loop.exit75.i: ; preds = %.split.i
  %i.hq = trunc nuw nsw i64 %indvars.iv.i508 to i32
  br label %Gia_ManPrintPathCandBetter.exit._crit_edge.i

Gia_ManPrintPathCandBetter.exit._crit_edge.loopexit.split.loop.exit77.i: ; preds = %Gia_ManPrintPathCandBetter.exit.i
  %i.hr = trunc nuw nsw i64 %indvars.iv.i508 to i32
  br label %Gia_ManPrintPathCandBetter.exit._crit_edge.i

Gia_ManPrintPathCandBetter.exit._crit_edge.i:     ; preds = %bb.z, %Gia_ManPrintPathCandBetter.exit._crit_edge.loopexit.split.loop.exit77.i, %Gia_ManPrintPathCandBetter.exit._crit_edge.loopexit.split.loop.exit75.i, %Gia_ManPrintPathCandBetter.exit._crit_edge.loopexit.split.loop.exit.i, %.preheader.i504
  %.053.lcssa.i = phi i32 [ 0, %.preheader.i504 ], [ %i.hr, %Gia_ManPrintPathCandBetter.exit._crit_edge.loopexit.split.loop.exit77.i ], [ %i.hp, %Gia_ManPrintPathCandBetter.exit._crit_edge.loopexit.split.loop.exit.i ], [ %i.hq, %Gia_ManPrintPathCandBetter.exit._crit_edge.loopexit.split.loop.exit75.i ], [ %.0719779, %bb.z ] ; 4 uses
  %i.hs = icmp eq i32 %.053.lcssa.i, %i.f
  br i1 %i.hs, label %Gia_ManPrintPathInsert.exit, label %bb.aa

bb.aa:                                            ; preds = %Gia_ManPrintPathCandBetter.exit._crit_edge.i
  %i.ht = icmp slt i32 %.0719779, %i.f
  %i.hu = zext i1 %i.ht to i32                    ; 3 uses
  %spec.select.i505 = add nsw i32 %.0719779, %i.hu ; 7 uses
  %.05259.i = add nsw i32 %spec.select.i505, -1   ; 2 uses
  %i.hv = icmp sgt i32 %.05259.i, %.053.lcssa.i
  br i1 %i.hv, label %.lr.ph63.preheader.i, label %._crit_edge64.i

.lr.ph63.preheader.i:                             ; preds = %bb.aa
  %4 = sext i32 %.05259.i to i64                  ; 8 uses
  %5 = sext i32 %.053.lcssa.i to i64              ; 3 uses
  %6 = sub nsw i64 %4, %5                         ; 3 uses
  %min.iters.check = icmp ult i64 %6, 12
  br i1 %min.iters.check, label %.lr.ph63.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph63.preheader.i
  %7 = xor i64 %5, -1
  %8 = add nsw i64 %7, %4                         ; 2 uses
  %9 = add i32 %.0719779, -2
  %10 = add i32 %9, %i.hu                         ; 2 uses
  %11 = trunc i64 %8 to i32
  %12 = sub i32 %10, %11
  %13 = icmp sgt i32 %12, %10
  %14 = icmp ugt i64 %8, 4294967295
  %15 = or i1 %13, %14
  br i1 %15, label %.lr.ph63.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %16 = add i32 %.0719779, -2
  %17 = add i32 %16, %i.hu
  %18 = sext i32 %17 to i64
  %i.hw = sub nsw i64 %18, %4
  %i.hx = shl nsw i64 %i.hw, 2
  %i.hy = add nsw i64 %i.hx, -1
  %diff.check = icmp ult i64 %i.hy, 15
  br i1 %diff.check, label %.lr.ph63.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %6, -4                         ; 4 uses
  %i.hz = sub nsw i64 %4, %n.vec
  %19 = trunc i64 %n.vec to i32
  %20 = sub i32 %spec.select.i505, %19
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ia = sub i64 %4, %index                      ; 4 uses
  %21 = trunc i64 %index to i32
  %22 = sub i32 %spec.select.i505, %21
  %23 = add nsw i32 %22, -2
  %24 = sext i32 %23 to i64                       ; 4 uses
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.fu, i64 %24
  %i.ic = getelementptr inbounds i8, ptr %i.ib, i64 -12
  %wide.load = load <4 x i32>, ptr %i.ic, align 4, !tbaa !8
  %i.id = getelementptr inbounds [4 x i8], ptr %i.fu, i64 %i.ia
  %i.ie = getelementptr inbounds i8, ptr %i.id, i64 -12
  store <4 x i32> %wide.load, ptr %i.ie, align 4, !tbaa !8
  %i.if = getelementptr inbounds [4 x i8], ptr %i.fv, i64 %24
  %i.ig = getelementptr inbounds i8, ptr %i.if, i64 -12
  %wide.load1160 = load <4 x i32>, ptr %i.ig, align 4, !tbaa !8
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.fv, i64 %i.ia
  %i.ii = getelementptr inbounds i8, ptr %i.ih, i64 -12
  store <4 x i32> %wide.load1160, ptr %i.ii, align 4, !tbaa !8
  %i.ij = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %24
  %i.ik = getelementptr inbounds i8, ptr %i.ij, i64 -12
  %wide.load1161 = load <4 x i32>, ptr %i.ik, align 4, !tbaa !8
  %i.il = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %i.ia
  %i.im = getelementptr inbounds i8, ptr %i.il, i64 -12
  store <4 x i32> %wide.load1161, ptr %i.im, align 4, !tbaa !8
  %i.in = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %24
  %i.io = getelementptr inbounds i8, ptr %i.in, i64 -12
  %wide.load1162 = load <4 x i32>, ptr %i.io, align 4, !tbaa !8
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %i.ia
  %i.iq = getelementptr inbounds i8, ptr %i.ip, i64 -12
  store <4 x i32> %wide.load1162, ptr %i.iq, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ir = icmp eq i64 %index.next, %n.vec
  br i1 %i.ir, label %middle.block, label %vector.body, !llvm.loop !352

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %6, %n.vec
  br i1 %cmp.n, label %._crit_edge64.i, label %.lr.ph63.i.preheader

.lr.ph63.i.preheader:                             ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph63.preheader.i, %middle.block
  %indvars.iv66.i.ph = phi i64 [ %4, %vector.memcheck ], [ %4, %vector.scevcheck ], [ %4, %.lr.ph63.preheader.i ], [ %i.hz, %middle.block ]
  %.052.in60.i.ph = phi i32 [ %spec.select.i505, %vector.memcheck ], [ %spec.select.i505, %vector.scevcheck ], [ %spec.select.i505, %.lr.ph63.preheader.i ], [ %20, %middle.block ]
  br label %.lr.ph63.i

.lr.ph63.i:                                       ; preds = %.lr.ph63.i.preheader, %.lr.ph63.i
  %indvars.iv66.i.a = phi i64 [ %indvars.iv.next67.i, %.lr.ph63.i ], [ %indvars.iv66.i.ph, %.lr.ph63.i.preheader ] ; 6 uses
  %.052.in60.i = phi i32 [ %27, %.lr.ph63.i ], [ %.052.in60.i.ph, %.lr.ph63.i.preheader ]
  %25 = add nsw i32 %.052.in60.i, -2
  %26 = sext i32 %25 to i64                       ; 4 uses
  %i.is = getelementptr inbounds [4 x i8], ptr %i.fu, i64 %26
  %i.it = load i32, ptr %i.is, align 4, !tbaa !8
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.fu, i64 %indvars.iv66.i.a
  store i32 %i.it, ptr %i.iu, align 4, !tbaa !8
  %i.iv = getelementptr inbounds [4 x i8], ptr %i.fv, i64 %26
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !8
  %i.ix = getelementptr inbounds [4 x i8], ptr %i.fv, i64 %indvars.iv66.i.a
  store i32 %i.iw, ptr %i.ix, align 4, !tbaa !8
  %i.iy = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %26
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !8
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %indvars.iv66.i.a
  store i32 %i.iz, ptr %i.ja, align 4, !tbaa !8
  %i.jb = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %26
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !8
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %indvars.iv66.i.a
  store i32 %i.jc, ptr %i.jd, align 4, !tbaa !8
  %indvars.iv.next67.i = add nsw i64 %indvars.iv66.i.a, -1 ; 2 uses
  %i.je = icmp sgt i64 %indvars.iv.next67.i, %5
  %27 = trunc nsw i64 %indvars.iv66.i.a to i32
  br i1 %i.je, label %.lr.ph63.i, label %._crit_edge64.i, !llvm.loop !353

._crit_edge64.i:                                  ; preds = %.lr.ph63.i, %middle.block, %bb.aa
  %i.jf = zext nneg i32 %.053.lcssa.i to i64      ; 4 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.jf
  store i32 %i.gm, ptr %i.jg, align 4, !tbaa !8
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.jf
  store i32 %i.go, ptr %i.jh, align 4, !tbaa !8
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.jf
  store i32 %i.gr, ptr %i.ji, align 4, !tbaa !8
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %i.jf
  store i32 %i.gj, ptr %i.jj, align 4, !tbaa !8
  br label %Gia_ManPrintPathInsert.exit

Gia_ManPrintPathInsert.exit:                      ; preds = %bb.x, %Gia_ManPrintPathCandBetter.exit._crit_edge.i, %._crit_edge64.i
  %.1720 = phi i32 [ %spec.select.i505, %._crit_edge64.i ], [ %.0719779, %Gia_ManPrintPathCandBetter.exit._crit_edge.i ], [ %.0719779, %bb.x ] ; 5 uses
  %indvars.iv.next833 = add nuw nsw i64 %indvars.iv832, 1 ; 2 uses
  %exitcond835.not = icmp eq i64 %indvars.iv.next833, %wide.trip.count
  br i1 %exitcond835.not, label %.critedge2, label %bb.x, !llvm.loop !354

.critedge2:                                       ; preds = %Gia_ManPrintPathInsert.exit
  %i.jk = icmp sgt i32 %.1720, 0
  br i1 %i.jk, label %.preheader743.lr.ph, label %.critedge2..preheader_crit_edge

.critedge2..preheader_crit_edge:                  ; preds = %.lr.ph781, %.critedge, %.critedge2
  %.val454787.pre = load i32, ptr %i.as, align 4, !tbaa !64
  br label %.preheader

.preheader743.lr.ph:                              ; preds = %.critedge2
  %i.jl = getelementptr i8, ptr %0, i64 16        ; 4 uses
  %i.jm = shl nsw i32 %.5.i, 3
  %i.jn = zext nneg i32 %i.jm to i64
  %i.jo = shl nuw nsw i32 %.5.i, 1
  %i.jp = zext nneg i32 %i.jo to i64
  %i.jq = mul nsw i32 %.5.i, 3
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = zext nneg i32 %i.ac to i64
  %i.jt = mul nsw i32 %.5.i, 5
  %i.ju = zext nneg i32 %i.jt to i64
  %i.jv = mul nsw i32 %.5.i, 6
  %i.jw = zext nneg i32 %i.jv to i64
  %i.jx = mul nsw i32 %.5.i, 7
  %i.jy = zext nneg i32 %i.jx to i64
  %i.jz = getelementptr i8, ptr %0, i64 64        ; 4 uses
  %i.ka = zext nneg i32 %.1720 to i64             ; 2 uses
  br label %.preheader743

.preheader743:                                    ; preds = %.preheader743.lr.ph, %Vec_IntPush.exit524
  %i.kb = phi ptr [ %i.av, %.preheader743.lr.ph ], [ %i.rw, %Vec_IntPush.exit524 ] ; 6 uses
  %.0359786 = phi i32 [ 0, %.preheader743.lr.ph ], [ %i.sr, %Vec_IntPush.exit524 ]
  %.2785 = phi i32 [ 0, %.preheader743.lr.ph ], [ %i.rj, %Vec_IntPush.exit524 ] ; 3 uses
  %i.kc = zext nneg i32 %.2785 to i64             ; 2 uses
  %i.kd = add nuw nsw i32 %.2785, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %.1720, i32 %i.kd) ; 3 uses
  %i.ke = add nsw i32 %smax, -1                   ; 2 uses
  %indvars.iv.next8371156 = add nuw nsw i64 %i.kc, 1 ; 2 uses
  %i.kf = icmp samesign ult i64 %indvars.iv.next8371156, %i.ka
  br i1 %i.kf, label %.lr.ph1159, label %.critedge4

.preheader:                                       ; preds = %Vec_IntPush.exit524, %.critedge2..preheader_crit_edge
  %.val454787 = phi i32 [ %.val454787.pre, %.critedge2..preheader_crit_edge ], [ %i.rx, %Vec_IntPush.exit524 ]
  %i.kg = icmp sgt i32 %.val454787, 0
  br i1 %i.kg, label %.lr.ph792, label %.critedge6

.lr.ph792:                                        ; preds = %.preheader
  %i.kh = getelementptr i8, ptr %0, i64 16        ; 5 uses
  %i.ki = getelementptr i8, ptr %0, i64 64        ; 2 uses
  br label %bb.ci

bb.ab:                                            ; preds = %Gia_ManPrintPathCanGroup.exit
  %indvars.iv.next837 = add nuw nsw i64 %indvars.iv.next8371158, 1 ; 2 uses
  %i.kj = icmp samesign ult i64 %indvars.iv.next837, %i.ka
  br i1 %i.kj, label %.lr.ph1159, label %.critedge4, !llvm.loop !355

.lr.ph1159:                                       ; preds = %.preheader743, %bb.ab
  %indvars.iv.next8371158 = phi i64 [ %indvars.iv.next837, %bb.ab ], [ %indvars.iv.next8371156, %.preheader743 ] ; 10 uses
  %indvars.iv8361157 = phi i64 [ %indvars.iv.next8371158, %bb.ab ], [ %i.kc, %.preheader743 ] ; 8 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %indvars.iv8361157
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !8
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv8361157
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !8  ; 21 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %indvars.iv8361157
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !8  ; 3 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %indvars.iv.next8371158
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !8
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv.next8371158
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !8
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %indvars.iv.next8371158
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !8  ; 4 uses
  %.not.i512 = icmp eq i32 %i.kl, %i.kr
  %.not73.i = icmp eq i32 %i.kn, %i.kt
  %or.cond.i513 = and i1 %.not.i512, %.not73.i
  br i1 %or.cond.i513, label %bb.ac, label %.critedge4.loopexit.split.loop.exit1099

bb.ac:                                            ; preds = %.lr.ph1159
  %.val83.i = load i32, ptr %i.jl, align 8, !tbaa !103 ; 2 uses
  %.val84.i = load ptr, ptr %i.c, align 8, !tbaa !68
  %i.kw = getelementptr i8, ptr %.val84.i, i64 4
  %.val84.val.i = load i32, ptr %i.kw, align 4, !tbaa !64
  %i.kx = sub nsw i32 %.val84.val.i, %.val83.i    ; 5 uses
  %i.ky = icmp slt i32 %i.kp, %i.kx               ; 2 uses
  %i.kz = icmp sge i32 %i.kv, %i.kx
  %.not74.i = xor i1 %i.ky, %i.kz
  br i1 %.not74.i, label %bb.ad, label %.critedge4.loopexit.split.loop.exit1102

bb.ad:                                            ; preds = %bb.ac
  %i.la = icmp slt i32 %i.kv, %i.kx
  %i.lb = select i1 %i.la, i32 0, i32 %i.kx
  %.0.i.i = sub nsw i32 %i.kv, %i.lb
  %i.lc = select i1 %i.ky, i32 0, i32 %i.kx
  %.0.i88.i = add i32 %i.kp, 1
  %i.ld = sub i32 %.0.i88.i, %i.lc
  %.not75.i = icmp eq i32 %.0.i.i, %i.ld
  br i1 %.not75.i, label %bb.ae, label %.critedge4.loopexit.split.loop.exit1096

bb.ae:                                            ; preds = %bb.ad
  %i.le = tail call noalias ptr @malloc(i64 noundef %i.jn) #40 ; 21 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.ae ; 12 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.jp ; 4 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.jr ; 4 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.js ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.ju ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.jw ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.jy ; 3 uses
  %i.lm = load ptr, ptr %i.g, align 8, !tbaa !156 ; 3 uses
  %.not47.i679 = icmp eq ptr %i.lm, null
  br i1 %.not47.i679, label %.thread.i681, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ln = getelementptr i8, ptr %i.lm, i64 4
  %.val.i680 = load i32, ptr %i.ln, align 4, !tbaa !9
  %i.lo = icmp slt i32 %i.kn, %.val.i680
  br i1 %i.lo, label %bb.ag, label %.thread.i681

bb.ag:                                            ; preds = %bb.af
  %i.lp = getelementptr i8, ptr %i.lm, i64 8
  %.val55.i686 = load ptr, ptr %i.lp, align 8, !tbaa !13
  %i.lq = sext i32 %i.kn to i64
  %i.lr = getelementptr inbounds [8 x i8], ptr %.val55.i686, i64 %i.lq
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !14 ; 6 uses
  %i.lt = icmp eq ptr %i.ls, null
  br i1 %i.lt, label %.thread.i681, label %bb.aj

.thread.i681:                                     ; preds = %bb.ag, %bb.af, %bb.ae
  %.val21.i.i683 = load ptr, ptr %i.jz, align 8, !tbaa !63
  %i.lu = getelementptr i8, ptr %.val21.i.i683, i64 4
  %.val21.val.i.i684 = load i32, ptr %i.lu, align 4, !tbaa !64
  %i.lv = sub nsw i32 %.val21.val.i.i684, %.val83.i ; 2 uses
  %i.lw = icmp slt i32 %i.kn, %i.lv
  br i1 %i.lw, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.thread.i681
  %i.lx = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.le, ptr noundef nonnull dereferenceable(1) @.str.117, i32 noundef %i.kn) #38 ; 0 uses
  br label %Gia_ManPrintPathName.exit701

bb.ai:                                            ; preds = %.thread.i681
  %i.ly = sub nsw i32 %i.kn, %i.lv
  %i.lz = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.le, ptr noundef nonnull dereferenceable(1) @.str.118, i32 noundef %i.ly) #38 ; 0 uses
  br label %Gia_ManPrintPathName.exit701

bb.aj:                                            ; preds = %bb.ag
  %i.ma = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ls, i32 noundef 32) #39 ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %select.unfold.i690, %bb.aj
  %.065.i687 = phi ptr [ %i.ls, %bb.aj ], [ %i.mo, %select.unfold.i690 ] ; 7 uses
  %i.mb = load i8, ptr %.065.i687, align 1, !tbaa !18
  %.not51.i688 = icmp eq i8 %i.mb, 0
  br i1 %.not51.i688, label %.critedge.i692, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.mc = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.065.i687, i32 noundef 32) #39 ; 5 uses
  %i.md = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.065.i687, ptr noundef nonnull dereferenceable(1) @.str.116) #39 ; 2 uses
  %.not52.i689 = icmp eq ptr %i.md, null
  br i1 %.not52.i689, label %select.unfold.i690, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.me = icmp eq ptr %i.mc, null
  br i1 %i.me, label %.split.i699, label %bb.an

.split.i699:                                      ; preds = %bb.am
  %i.mf = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.065.i687) #39
  %sext.i.i700 = shl i64 %i.mf, 32
  %i.mg = ashr exact i64 %sext.i.i700, 32         ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.le, ptr nonnull align 1 %.065.i687, i64 %i.mg, i1 false)
  %i.mh = getelementptr inbounds i8, ptr %i.le, i64 %i.mg
  store i8 0, ptr %i.mh, align 1, !tbaa !18
  br label %Gia_ManPrintPathName.exit701

bb.an:                                            ; preds = %bb.am
  %i.mi = icmp ugt ptr %i.mc, %i.md
  br i1 %i.mi, label %Gia_ManPrintPathCopyToken.exit.i697, label %select.unfold.i690

Gia_ManPrintPathCopyToken.exit.i697:              ; preds = %bb.an
  %i.mj = ptrtoint ptr %i.mc to i64
  %i.mk = ptrtoint ptr %.065.i687 to i64
  %i.ml = sub i64 %i.mj, %i.mk
  %sext.i57.i698 = shl i64 %i.ml, 32
  %i.mm = ashr exact i64 %sext.i57.i698, 32       ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.le, ptr nonnull align 1 %.065.i687, i64 %i.mm, i1 false)
end_hunk_0
