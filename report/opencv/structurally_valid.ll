Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/structurally_valid?download=true
inline.NumInlined: 10
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN6google8protobuf8internal15UTF8GenericScanEPKNS1_19UTF8StateMachineObjEPKciPi:bb.a
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.d, label %.critedge.thread

bb.d:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %.098, i64 1 ; 5 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = and i64 %i.af, 7                        ; 2 uses
  %.not = icmp ne i64 %i.ag, 0
  %i.ah = icmp ult ptr %i.ae, %i.f
  %or.cond = select i1 %.not, i1 %i.ah, i1 false
  br i1 %or.cond, label %.lr.ph.1, label %.critedge

.lr.ph.1:                                         ; preds = %bb.d
  %i.ai = load i8, ptr %i.ae, align 1, !tbaa !19
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !19
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.e, label %.critedge.thread

bb.e:                                             ; preds = %.lr.ph.1
  %i.an = getelementptr inbounds nuw i8, ptr %.098, i64 2 ; 5 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = and i64 %i.ao, 7                        ; 2 uses
  %.not.1 = icmp ne i64 %i.ap, 0
  %i.aq = icmp ult ptr %i.an, %i.f
  %or.cond.1 = select i1 %.not.1, i1 %i.aq, i1 false
  br i1 %or.cond.1, label %.lr.ph.2, label %.critedge

.lr.ph.2:                                         ; preds = %bb.e
  %i.ar = load i8, ptr %i.an, align 1, !tbaa !19
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !19
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %bb.f, label %.critedge.thread

bb.f:                                             ; preds = %.lr.ph.2
  %i.aw = getelementptr inbounds nuw i8, ptr %.098, i64 3 ; 5 uses
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = and i64 %i.ax, 7                        ; 2 uses
  %.not.2 = icmp ne i64 %i.ay, 0
  %i.az = icmp ult ptr %i.aw, %i.f
  %or.cond.2 = select i1 %.not.2, i1 %i.az, i1 false
  br i1 %or.cond.2, label %.lr.ph.3, label %.critedge

.lr.ph.3:                                         ; preds = %bb.f
  %i.ba = load i8, ptr %i.aw, align 1, !tbaa !19
  %i.bb = zext i8 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !19
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %bb.g, label %.critedge.thread

bb.g:                                             ; preds = %.lr.ph.3
  %i.bf = getelementptr inbounds nuw i8, ptr %.098, i64 4 ; 5 uses
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = and i64 %i.bg, 7                        ; 2 uses
  %.not.3 = icmp ne i64 %i.bh, 0
  %i.bi = icmp ult ptr %i.bf, %i.f
  %or.cond.3 = select i1 %.not.3, i1 %i.bi, i1 false
  br i1 %or.cond.3, label %.lr.ph.4, label %.critedge

.lr.ph.4:                                         ; preds = %bb.g
  %i.bj = load i8, ptr %i.bf, align 1, !tbaa !19
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !19
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.h, label %.critedge.thread

bb.h:                                             ; preds = %.lr.ph.4
  %i.bo = getelementptr inbounds nuw i8, ptr %.098, i64 5 ; 5 uses
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = and i64 %i.bp, 7                        ; 2 uses
  %.not.4 = icmp ne i64 %i.bq, 0
  %i.br = icmp ult ptr %i.bo, %i.f
  %or.cond.4 = select i1 %.not.4, i1 %i.br, i1 false
  br i1 %or.cond.4, label %.lr.ph.5, label %.critedge

.lr.ph.5:                                         ; preds = %bb.h
  %i.bs = load i8, ptr %i.bo, align 1, !tbaa !19
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !19
  %i.bw = icmp eq i8 %i.bv, 0
  br i1 %i.bw, label %bb.i, label %.critedge.thread

bb.i:                                             ; preds = %.lr.ph.5
  %i.bx = getelementptr inbounds nuw i8, ptr %.098, i64 6 ; 5 uses
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = and i64 %i.by, 7                        ; 2 uses
  %.not.5 = icmp ne i64 %i.bz, 0
  %i.ca = icmp ult ptr %i.bx, %i.f
  %or.cond.5 = select i1 %.not.5, i1 %i.ca, i1 false
  br i1 %or.cond.5, label %.lr.ph.6, label %.critedge

.lr.ph.6:                                         ; preds = %bb.i
  %i.cb = load i8, ptr %i.bx, align 1, !tbaa !19
  %i.cc = zext i8 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !19
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %bb.j, label %.critedge.thread

bb.j:                                             ; preds = %.lr.ph.6
  %i.cg = getelementptr inbounds nuw i8, ptr %.098, i64 7 ; 5 uses
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = and i64 %i.ch, 7                        ; 2 uses
  %.not.6 = icmp ne i64 %i.ci, 0
  %i.cj = icmp ult ptr %i.cg, %i.f
  %or.cond.6 = select i1 %.not.6, i1 %i.cj, i1 false
  br i1 %or.cond.6, label %.lr.ph.7, label %.critedge

.lr.ph.7:                                         ; preds = %bb.j
  %i.ck = load i8, ptr %i.cg, align 1, !tbaa !19
  %i.cl = zext i8 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !19
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %bb.k, label %.critedge.thread

bb.k:                                             ; preds = %.lr.ph.7
  %i.cp = getelementptr inbounds nuw i8, ptr %.098, i64 8 ; 2 uses
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = and i64 %i.cq, 7
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.c
  %.199.lcssa = phi ptr [ %.098, %bb.c ], [ %i.ae, %bb.d ], [ %i.an, %bb.e ], [ %i.aw, %bb.f ], [ %i.bf, %bb.g ], [ %i.bo, %bb.h ], [ %i.bx, %bb.i ], [ %i.cg, %bb.j ], [ %i.cp, %bb.k ] ; 3 uses
  %.lcssa141 = phi i64 [ %i.x, %bb.c ], [ %i.ag, %bb.d ], [ %i.ap, %bb.e ], [ %i.ay, %bb.f ], [ %i.bh, %bb.g ], [ %i.bq, %bb.h ], [ %i.bz, %bb.i ], [ %i.ci, %bb.j ], [ %i.cr, %bb.k ]
  %i.cs = icmp eq i64 %.lcssa141, 0
  %i.ct = icmp ult ptr %.199.lcssa, %i.i
  %or.cond233 = select i1 %i.cs, i1 %i.ct, i1 false
  br i1 %or.cond233, label %.lr.ph225, label %.critedge.thread

.lr.ph225:                                        ; preds = %.critedge, %.preheader138.backedge
  %.2100224 = phi ptr [ %i.cx, %.preheader138.backedge ], [ %.199.lcssa, %.critedge ] ; 5 uses
  %i.cu = load i32, ptr %.2100224, align 4        ; 6 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.2100224, i64 4
  %i.cw = load i32, ptr %i.cv, align 4            ; 6 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.2100224, i64 8 ; 3 uses
  %i.cy = sub i32 %i.cu, %i.r
  %i.cz = add i32 %i.cu, %i.t
  %i.da = or i32 %i.cy, %i.cz
  %i.db = sub i32 %i.cw, %i.r
  %i.dc = or i32 %i.da, %i.db
  %i.dd = add i32 %i.cw, %i.t
  %i.de = or i32 %i.dc, %i.dd
  %i.df = and i32 %i.de, -2139062144
  %.not111 = icmp eq i32 %i.df, 0
  %i.dg = lshr i32 %i.cw, 8
  %i.dh = lshr i32 %i.cw, 16
  %i.di = lshr i32 %i.cw, 24
  %i.dj = zext nneg i32 %i.di to i64
  br i1 %.not111, label %.preheader138.backedge, label %bb.l

bb.l:                                             ; preds = %.lr.ph225
  %i.dk = lshr i32 %i.cu, 24
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = lshr i32 %i.cu, 16
  %i.dn = lshr i32 %i.cu, 8
  %i.do = and i32 %i.cu, 255
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !19
  %i.ds = and i32 %i.dn, 255
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !19
  %i.dw = and i32 %i.dm, 255
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !19
  %i.ea = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.dl
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !19
  %i.ec = or i8 %i.dv, %i.dr
  %i.ed = or i8 %i.ec, %i.dz
  %i.ee = or i8 %i.ed, %i.eb
  %.not112 = icmp eq i8 %i.ee, 0
  br i1 %.not112, label %.split, label %.critedge.thread

.split:                                           ; preds = %bb.l
  %i.ef = and i32 %i.cw, 255
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !19
  %i.ej = and i32 %i.dg, 255
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !19
  %i.en = and i32 %i.dh, 255
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !19
  %i.er = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.dj
  %i.es = load i8, ptr %i.er, align 1, !tbaa !19
  %i.et = or i8 %i.em, %i.ei
  %i.eu = or i8 %i.et, %i.eq
  %i.ev = or i8 %i.eu, %i.es
  %.not113 = icmp eq i8 %i.ev, 0
  br i1 %.not113, label %.preheader138.backedge, label %.critedge.thread.loopexit.split.loop.exit

.preheader138.backedge:                           ; preds = %.split, %.lr.ph225
  %i.ew = icmp ult ptr %i.cx, %i.i
  br i1 %i.ew, label %.lr.ph225, label %.critedge.thread

.critedge.thread.loopexit.split.loop.exit:        ; preds = %.split
  %i.ex = getelementptr inbounds nuw i8, ptr %.2100224, i64 4
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %.lr.ph.7, %bb.l, %.preheader138.backedge, %.critedge.thread.loopexit.split.loop.exit, %.critedge
  %.6 = phi ptr [ %.199.lcssa, %.critedge ], [ %i.ex, %.critedge.thread.loopexit.split.loop.exit ], [ %i.cx, %.preheader138.backedge ], [ %.2100224, %bb.l ], [ %.098, %.lr.ph ], [ %i.ae, %.lr.ph.1 ], [ %i.an, %.lr.ph.2 ], [ %i.aw, %.lr.ph.3 ], [ %i.bf, %.lr.ph.4 ], [ %i.bo, %.lr.ph.5 ], [ %i.bx, %.lr.ph.6 ], [ %i.cg, %.lr.ph.7 ] ; 5 uses
  %i.ey = icmp ult ptr %.6, %i.f
  br i1 %i.ey, label %.lr.ph155.preheader, label %.critedge.thread._crit_edge

.lr.ph155.preheader:                              ; preds = %.critedge.thread
  %.6177 = ptrtoaddr ptr %.6 to i64
  %i.ez = getelementptr i8, ptr %.6, i64 %i.b
  %scevgep = getelementptr i8, ptr %i.ez, i64 %i.e
  %i.fa = sub i64 0, %.6177
  %scevgep178 = getelementptr i8, ptr %scevgep, i64 %i.fa ; 2 uses
  br label %.lr.ph155

.lr.ph155:                                        ; preds = %.lr.ph155.preheader, %bb.m
  %.0154 = phi ptr [ %i.fk, %bb.m ], [ %i.n, %.lr.ph155.preheader ] ; 2 uses
  %.7153 = phi ptr [ %i.fh, %bb.m ], [ %.6, %.lr.ph155.preheader ] ; 4 uses
  %i.fb = load i8, ptr %.7153, align 1, !tbaa !19
  %i.fc = zext i8 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %.0154, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !19  ; 3 uses
  %i.ff = zext i8 %i.fe to i32                    ; 2 uses
  %i.fg = icmp ugt i8 %i.fe, -17
  br i1 %i.fg, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph155
  %i.fh = getelementptr inbounds nuw i8, ptr %.7153, i64 1 ; 2 uses
  %i.fi = shl i32 %i.ff, %i.d
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds i8, ptr %i.n, i64 %i.fj ; 2 uses
  %exitcond.not = icmp eq ptr %i.fh, %scevgep178
  br i1 %exitcond.not, label %.critedge.thread._crit_edge, label %.lr.ph155, !llvm.loop !20

bb.n:                                             ; preds = %.lr.ph155
  %i.fl = ptrtoint ptr %.0154 to i64
  %i.fm = sub i64 %i.fl, %i.v
  %i.fn = trunc i64 %i.fm to i32
  %i.fo = load i32, ptr %i.u, align 4, !tbaa !22
  %i.fp = icmp ugt i32 %i.fo, %i.fn
  br i1 %i.fp, label %.critedge3, label %.preheader137.preheader

.preheader137.preheader:                          ; preds = %bb.n
  %i.fq = getelementptr inbounds i8, ptr %.7153, i64 -1 ; 3 uses
  %i.fr = icmp ugt ptr %i.fq, %1
  br i1 %i.fr, label %.lr.ph227, label %.critedge3

.preheader137:                                    ; preds = %.lr.ph227
  %i.fs = getelementptr inbounds i8, ptr %i.fu, i64 -1 ; 3 uses
  %i.ft = icmp ugt ptr %i.fs, %1
  br i1 %i.ft, label %.lr.ph227, label %.critedge3, !llvm.loop !23

.lr.ph227:                                        ; preds = %.preheader137.preheader, %.preheader137
  %i.fu = phi ptr [ %i.fs, %.preheader137 ], [ %i.fq, %.preheader137.preheader ] ; 3 uses
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !19
  %i.fw = icmp slt i8 %i.fv, -64
  br i1 %i.fw, label %.preheader137, label %..critedge3.loopexit_crit_edge, !llvm.loop !23

.critedge.thread._crit_edge:                      ; preds = %.critedge.thread, %bb.m
  %.7.lcssa = phi ptr [ %scevgep178, %bb.m ], [ %.6, %.critedge.thread ] ; 2 uses
  %.0.lcssa = phi ptr [ %i.fk, %bb.m ], [ %i.n, %.critedge.thread ]
  %i.fx = ptrtoint ptr %.0.lcssa to i64
  %i.fy = ptrtoint ptr %i.n to i64
  %i.fz = sub i64 %i.fx, %i.fy
  %i.ga = trunc i64 %i.fz to i32
  %i.gb = load i32, ptr %i.u, align 4, !tbaa !22
  %i.gc = icmp ugt i32 %i.gb, %i.ga
  br i1 %i.gc, label %.thread134, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.critedge.thread._crit_edge
  %i.gd = getelementptr inbounds i8, ptr %.7.lcssa, i64 -1 ; 3 uses
  %i.ge = icmp ugt ptr %i.gd, %1
  br i1 %i.ge, label %.lr.ph230, label %.thread134

.preheader:                                       ; preds = %.lr.ph230
  %i.gf = getelementptr inbounds i8, ptr %i.gh, i64 -1 ; 3 uses
  %i.gg = icmp ugt ptr %i.gf, %1
  br i1 %i.gg, label %.lr.ph230, label %.thread134, !llvm.loop !24

.lr.ph230:                                        ; preds = %.preheader.preheader, %.preheader
  %i.gh = phi ptr [ %i.gf, %.preheader ], [ %i.gd, %.preheader.preheader ] ; 3 uses
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !19
  %i.gj = icmp slt i8 %i.gi, -64
  br i1 %i.gj, label %.preheader, label %..thread134.loopexit_crit_edge, !llvm.loop !24

..critedge3.loopexit_crit_edge:                   ; preds = %.lr.ph227
  br label %.critedge3, !llvm.loop !23

.critedge3:                                       ; preds = %.preheader137, %.preheader137.preheader, %..critedge3.loopexit_crit_edge, %bb.n
  %.11 = phi ptr [ %.7153, %bb.n ], [ %i.fu, %..critedge3.loopexit_crit_edge ], [ %i.fq, %.preheader137.preheader ], [ %i.fs, %.preheader137 ] ; 2 uses
  %i.gk = icmp eq i8 %i.fe, -3
  br i1 %i.gk, label %bb.c, label %.thread134

..thread134.loopexit_crit_edge:                   ; preds = %.lr.ph230
  br label %.thread134, !llvm.loop !24

.thread134:                                       ; preds = %.critedge3, %.preheader, %.preheader.preheader, %..thread134.loopexit_crit_edge, %.critedge.thread._crit_edge
  %.297133 = phi i32 [ 240, %.preheader.preheader ], [ 241, %.critedge.thread._crit_edge ], [ 240, %.preheader ], [ 240, %..thread134.loopexit_crit_edge ], [ %i.ff, %.critedge3 ]
  %.11131 = phi ptr [ %i.gd, %.preheader.preheader ], [ %.7.lcssa, %.critedge.thread._crit_edge ], [ %i.gf, %.preheader ], [ %i.gh, %..thread134.loopexit_crit_edge ], [ %.11, %.critedge3 ]
  %i.gl = ptrtoint ptr %.11131 to i64
  %i.gm = ptrtoint ptr %1 to i64
  %i.gn = sub i64 %i.gl, %i.gm
  %i.go = trunc i64 %i.gn to i32
  store i32 %i.go, ptr %3, align 4, !tbaa !8
  br label %bb.o

bb.o:                                             ; preds = %.thread134, %bb.a
  %.2103 = phi i32 [ 241, %bb.a ], [ %.297133, %.thread134 ]
  ret i32 %.2103
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 0, 256) i32 @_ZN6google8protobuf8internal24UTF8GenericScanFastAsciiEPKNS1_19UTF8StateMachineObjEPKciPi(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  store i32 0, ptr %3, align 4, !tbaa !8
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %2 to i64                       ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c ; 10 uses
  %i.e = icmp slt i32 %2, 7
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -7
  %i.g = select i1 %i.e, ptr %1, ptr %i.f         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #2
  %i.h = ptrtoint ptr %1 to i64                   ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.critedge4, %bb.b
  %.0 = phi ptr [ %1, %bb.b ], [ %i.cf, %.critedge4 ] ; 13 uses
  %i.i = ptrtoint ptr %.0 to i64
  %i.j = and i64 %i.i, 7                          ; 2 uses
  %.not50 = icmp ne i64 %i.j, 0
  %i.k = icmp ult ptr %.0, %i.d
  %or.cond51 = select i1 %.not50, i1 %i.k, i1 false
  br i1 %or.cond51, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.c
  %i.l = load i8, ptr %.0, align 1, !tbaa !19
  %i.m = icmp sgt i8 %i.l, -1
  br i1 %i.m, label %bb.d, label %.critedge2

bb.d:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 5 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = and i64 %i.o, 7                          ; 2 uses
  %.not = icmp ne i64 %i.p, 0
  %i.q = icmp ult ptr %i.n, %i.d
  %or.cond = select i1 %.not, i1 %i.q, i1 false
  br i1 %or.cond, label %.lr.ph.1, label %.critedge

.lr.ph.1:                                         ; preds = %bb.d
  %i.r = load i8, ptr %i.n, align 1, !tbaa !19
  %i.s = icmp sgt i8 %i.r, -1
  br i1 %i.s, label %bb.e, label %.critedge2

bb.e:                                             ; preds = %.lr.ph.1
  %i.t = getelementptr inbounds nuw i8, ptr %.0, i64 2 ; 5 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.u, 7                          ; 2 uses
  %.not.1 = icmp ne i64 %i.v, 0
  %i.w = icmp ult ptr %i.t, %i.d
  %or.cond.1 = select i1 %.not.1, i1 %i.w, i1 false
  br i1 %or.cond.1, label %.lr.ph.2, label %.critedge

.lr.ph.2:                                         ; preds = %bb.e
  %i.x = load i8, ptr %i.t, align 1, !tbaa !19
  %i.y = icmp sgt i8 %i.x, -1
  br i1 %i.y, label %bb.f, label %.critedge2

bb.f:                                             ; preds = %.lr.ph.2
  %i.z = getelementptr inbounds nuw i8, ptr %.0, i64 3 ; 5 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = and i64 %i.aa, 7                        ; 2 uses
  %.not.2 = icmp ne i64 %i.ab, 0
  %i.ac = icmp ult ptr %i.z, %i.d
  %or.cond.2 = select i1 %.not.2, i1 %i.ac, i1 false
  br i1 %or.cond.2, label %.lr.ph.3, label %.critedge

.lr.ph.3:                                         ; preds = %bb.f
  %i.ad = load i8, ptr %i.z, align 1, !tbaa !19
  %i.ae = icmp sgt i8 %i.ad, -1
  br i1 %i.ae, label %bb.g, label %.critedge2

bb.g:                                             ; preds = %.lr.ph.3
  %i.af = getelementptr inbounds nuw i8, ptr %.0, i64 4 ; 5 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = and i64 %i.ag, 7                        ; 2 uses
end_hunk_0
