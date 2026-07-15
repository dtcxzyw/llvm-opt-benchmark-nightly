inline.NumInlined: 1075
inline.NumDeleted: 584
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN2v88internal27Utf8ExternalStreamingStream26FillBufferFromCurrentChunkEv:bb.a
  br i1 %i.dv, label %.preheader.i.preheader, label %.lr.ph.i.lr.ph, !llvm.loop !11

.lr.ph.i.lr.ph:                                   ; preds = %.lr.ph.preheader
  %i.dw = load i8, ptr %i.ds, align 1
  %i.dx = icmp slt i8 %i.dw, 0
  br i1 %i.dx, label %_ZN2v88internal13NonAsciiStartEPKhj.exit, label %.lr.ph, !llvm.loop !11

.lr.ph:                                           ; preds = %.lr.ph.i.lr.ph
  %i.dy = getelementptr inbounds nuw i8, ptr %i.df, i64 2 ; 3 uses
  %i.dz = ptrtoint ptr %i.dy to i64               ; 2 uses
  %i.ea = and i64 %i.dz, 7
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %.preheader.i.preheader, label %.lr.ph.i.1, !llvm.loop !11

.lr.ph.i.1:                                       ; preds = %.lr.ph
  %i.ec = load i8, ptr %i.dy, align 1
  %i.ed = icmp slt i8 %i.ec, 0
  br i1 %i.ed, label %_ZN2v88internal13NonAsciiStartEPKhj.exit, label %.lr.ph.1, !llvm.loop !11

.lr.ph.1:                                         ; preds = %.lr.ph.i.1
  %i.ee = getelementptr inbounds nuw i8, ptr %i.df, i64 3 ; 3 uses
  %i.ef = ptrtoint ptr %i.ee to i64               ; 2 uses
  %i.eg = and i64 %i.ef, 7
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %.preheader.i.preheader, label %.lr.ph.i.2, !llvm.loop !11

.lr.ph.i.2:                                       ; preds = %.lr.ph.1
  %i.ei = load i8, ptr %i.ee, align 1
  %i.ej = icmp slt i8 %i.ei, 0
  br i1 %i.ej, label %_ZN2v88internal13NonAsciiStartEPKhj.exit, label %.lr.ph.2, !llvm.loop !11

.lr.ph.2:                                         ; preds = %.lr.ph.i.2
  %i.ek = getelementptr inbounds nuw i8, ptr %i.df, i64 4 ; 3 uses
  %i.el = ptrtoint ptr %i.ek to i64               ; 2 uses
  %i.em = and i64 %i.el, 7
  %i.en = icmp eq i64 %i.em, 0
  br i1 %i.en, label %.preheader.i.preheader, label %.lr.ph.i.3, !llvm.loop !11

.lr.ph.i.3:                                       ; preds = %.lr.ph.2
  %i.eo = load i8, ptr %i.ek, align 1
  %i.ep = icmp slt i8 %i.eo, 0
  br i1 %i.ep, label %_ZN2v88internal13NonAsciiStartEPKhj.exit, label %.lr.ph.3, !llvm.loop !11

.lr.ph.3:                                         ; preds = %.lr.ph.i.3
  %i.eq = getelementptr inbounds nuw i8, ptr %i.df, i64 5 ; 3 uses
  %i.er = ptrtoint ptr %i.eq to i64               ; 2 uses
  %i.es = and i64 %i.er, 7
  %i.et = icmp eq i64 %i.es, 0
  br i1 %i.et, label %.preheader.i.preheader, label %.lr.ph.i.4, !llvm.loop !11

.lr.ph.i.4:                                       ; preds = %.lr.ph.3
  %i.eu = load i8, ptr %i.eq, align 1
  %i.ev = icmp slt i8 %i.eu, 0
  br i1 %i.ev, label %_ZN2v88internal13NonAsciiStartEPKhj.exit, label %.lr.ph.4, !llvm.loop !11

.lr.ph.4:                                         ; preds = %.lr.ph.i.4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.df, i64 6 ; 3 uses
  %i.ex = ptrtoint ptr %i.ew to i64               ; 2 uses
  %i.ey = and i64 %i.ex, 7
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %.preheader.i.preheader, label %.lr.ph.i.5, !llvm.loop !11

.lr.ph.i.5:                                       ; preds = %.lr.ph.4
  %i.fa = load i8, ptr %i.ew, align 1
  %i.fb = icmp slt i8 %i.fa, 0
  br i1 %i.fb, label %_ZN2v88internal13NonAsciiStartEPKhj.exit, label %.lr.ph.5, !llvm.loop !11

.lr.ph.5:                                         ; preds = %.lr.ph.i.5
  %i.fc = getelementptr inbounds nuw i8, ptr %i.df, i64 7 ; 3 uses
  %i.fd = ptrtoint ptr %i.fc to i64               ; 2 uses
  %i.fe = and i64 %i.fd, 7
  %i.ff = icmp eq i64 %i.fe, 0
  br i1 %i.ff, label %.preheader.i.preheader, label %.lr.ph.i.6, !llvm.loop !11

.lr.ph.i.6:                                       ; preds = %.lr.ph.5
  %i.fg = load i8, ptr %i.fc, align 1
  %i.fh = icmp slt i8 %i.fg, 0
  br i1 %i.fh, label %_ZN2v88internal13NonAsciiStartEPKhj.exit, label %.lr.ph.6, !llvm.loop !11

.lr.ph.6:                                         ; preds = %.lr.ph.i.6
  %i.fi = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  br label %.preheader.i.preheader, !llvm.loop !11

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.t
  %.126.i = phi ptr [ %i.fj, %bb.t ], [ %.126.i.ph, %.preheader.i.preheader ] ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.126.i, i64 8 ; 2 uses
  %.not.i = icmp ugt ptr %i.fj, %i.dm
  br i1 %.not.i, label %.thread.loopexit.i, label %bb.t

bb.t:                                             ; preds = %.preheader.i
  %i.fk = load i64, ptr %.126.i, align 8
  %i.fl = and i64 %i.fk, -9187201950435737472
  %.not28.i = icmp eq i64 %i.fl, 0
  br i1 %.not28.i, label %.preheader.i, label %bb.u, !llvm.loop !12

bb.u:                                             ; preds = %bb.t
  %i.fm = ptrtoint ptr %.126.i to i64
  br label %_ZN2v88internal13NonAsciiStartEPKhj.exit

.thread.loopexit.i:                               ; preds = %.preheader.i
  %.pre.i = ptrtoint ptr %.126.i to i64
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.loopexit.i, %bb.s
  %.244.pre-phi.i = phi i64 [ %.pre.i, %.thread.loopexit.i ], [ %i.dg, %bb.s ] ; 2 uses
  %.2.i = phi ptr [ %.126.i, %.thread.loopexit.i ], [ %i.df, %bb.s ] ; 3 uses
  %i.fn = icmp ult ptr %.2.i, %i.dm
  br i1 %i.fn, label %.lr.ph37.preheader.i, label %_ZN2v88internal13NonAsciiStartEPKhj.exit

.lr.ph37.preheader.i:                             ; preds = %.thread.i
  %i.fo = add i64 %i.dl, %i.dg
  %i.fp = sub i64 %i.fo, %.244.pre-phi.i
  %scevgep.i = getelementptr i8, ptr %.2.i, i64 %i.fp ; 2 uses
  br label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %bb.w, %.lr.ph37.preheader.i
  %.336.i = phi ptr [ %i.ft, %bb.w ], [ %.2.i, %.lr.ph37.preheader.i ] ; 3 uses
  %i.fq = load i8, ptr %.336.i, align 1
  %i.fr = icmp slt i8 %i.fq, 0
  br i1 %i.fr, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph37.i
  %i.fs = ptrtoint ptr %.336.i to i64
  br label %_ZN2v88internal13NonAsciiStartEPKhj.exit

bb.w:                                             ; preds = %.lr.ph37.i
  %i.ft = getelementptr inbounds nuw i8, ptr %.336.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.ft, %scevgep.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph37.i, !llvm.loop !13

._crit_edge.loopexit.i:                           ; preds = %bb.w
  %.pre45.i = ptrtoint ptr %scevgep.i to i64
  br label %_ZN2v88internal13NonAsciiStartEPKhj.exit

_ZN2v88internal13NonAsciiStartEPKhj.exit:         ; preds = %.lr.ph.i.lr.ph, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %.lr.ph.i.5, %.lr.ph.i.6, %.lr.ph.i.preheader, %bb.u, %.thread.i, %bb.v, %._crit_edge.loopexit.i
  %.pn.i = phi i64 [ %i.fm, %bb.u ], [ %i.fs, %bb.v ], [ %.244.pre-phi.i, %.thread.i ], [ %.pre45.i, %._crit_edge.loopexit.i ], [ %i.dg, %.lr.ph.i.preheader ], [ %i.dt, %.lr.ph.i.lr.ph ], [ %i.dz, %.lr.ph.i.1 ], [ %i.ef, %.lr.ph.i.2 ], [ %i.el, %.lr.ph.i.3 ], [ %i.er, %.lr.ph.i.4 ], [ %i.ex, %.lr.ph.i.5 ], [ %i.fd, %.lr.ph.i.6 ]
  %.1.in.i = sub i64 %.pn.i, %i.dg
  %sext = shl i64 %.1.in.i, 32
  %i.fu = ashr exact i64 %sext, 32                ; 3 uses
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %.5, ptr noundef %i.df, i64 noundef %i.fu)
  %i.fv = load ptr, ptr %i.c, align 8
  %i.fw = getelementptr inbounds i8, ptr %i.fv, i64 %i.fu ; 2 uses
  store ptr %i.fw, ptr %i.c, align 8
  %i.fx = getelementptr inbounds [2 x i8], ptr %.5, i64 %i.fu
  %.pre = load i8, ptr %i.a, align 1
  br label %.thread67

.thread67:                                        ; preds = %bb.n, %bb.q, %_ZN2v88internal13NonAsciiStartEPKhj.exit
  %i.fy = phi i8 [ %.pre, %_ZN2v88internal13NonAsciiStartEPKhj.exit ], [ 12, %bb.q ], [ %i.cl, %bb.n ] ; 2 uses
  %i.fz = phi ptr [ %i.fw, %_ZN2v88internal13NonAsciiStartEPKhj.exit ], [ %i.by, %bb.q ], [ %i.by, %bb.n ] ; 3 uses
  %.6 = phi ptr [ %i.fx, %_ZN2v88internal13NonAsciiStartEPKhj.exit ], [ %.478, %bb.q ], [ %.478, %bb.n ] ; 3 uses
  %i.ga = icmp ult ptr %i.fz, %i.ao
  %i.gb = getelementptr inbounds nuw i8, ptr %.6, i64 2 ; 2 uses
  %i.gc = icmp ult ptr %i.gb, %i.bm
  %i.gd = select i1 %i.ga, i1 %i.gc, i1 false
  br i1 %i.gd, label %bb.l, label %._crit_edge

._crit_edge:                                      ; preds = %.thread67, %.critedge
  %i.ge = phi i8 [ %.pre90, %.critedge ], [ %i.fy, %.thread67 ]
  %.4.lcssa = phi ptr [ %.3, %.critedge ], [ %.6, %.thread67 ] ; 2 uses
  %.lcssa74 = phi ptr [ %i.bn, %.critedge ], [ %i.fz, %.thread67 ] ; 2 uses
  %i.gf = load i64, ptr %i.aj, align 8
  %i.gg = load ptr, ptr %i.i, align 8
  %i.gh = ptrtoint ptr %.lcssa74 to i64
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = add i64 %i.gf, %i.gh
  %i.gk = sub i64 %i.gj, %i.gi
  store i64 %i.gk, ptr %i.s, align 8
  %i.gl = load ptr, ptr %i.k, align 8
  %i.gm = ptrtoint ptr %.4.lcssa to i64
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = ashr exact i64 %i.go, 1
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.gr = load i64, ptr %i.gq, align 8
  %i.gs = add i64 %i.gp, %i.gr
  store i64 %i.gs, ptr %i.gq, align 8
  %i.gt = load i32, ptr %i.b, align 4
  store i32 %i.gt, ptr %i.v, align 8
  store i8 %i.ge, ptr %i.t, align 4
  %i.gu = icmp eq ptr %.lcssa74, %i.ao
  %i.gv = zext i1 %i.gu to i64
  %i.gw = load i64, ptr %i.d, align 8
  %i.gx = add i64 %i.gw, %i.gv
  store i64 %i.gx, ptr %i.d, align 8
  store ptr %.4.lcssa, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %bb.x

bb.x:                                             ; preds = %bb.b, %bb.c, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

declare noundef i32 @_ZN7unibrow4Utf824ValueOfIncrementalFinishEPN14Utf8DfaDecoder5StateE(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #1 comdat {
bb.a:
  %3 = ptrtoaddr ptr %0 to i64                    ; 6 uses
  %4 = ptrtoaddr ptr %1 to i64                    ; 6 uses
  switch i64 %2, label %bb.b [
    i64 1, label %.lr.ph.i.i.i.i.i.i.i.preheader
    i64 2, label %.lr.ph.i.i.i.i.i.i.i37.preheader
    i64 3, label %.lr.ph.i.i.i.i.i.i.i42.preheader
    i64 4, label %.lr.ph.i.i.i.i.i.i.i47.preheader
    i64 5, label %.lr.ph.i.i.i.i.i.i.i52.preheader
    i64 6, label %.lr.ph.i.i.i.i.i.i.i57.preheader
    i64 7, label %.lr.ph.i.i.i.i.i.i.i62.preheader
    i64 8, label %.lr.ph.i.i.i.i.i.i.i67.preheader
    i64 9, label %.lr.ph.i.i.i.i.i.i.i72.preheader
    i64 10, label %.lr.ph.i.i.i.i.i.i.i77.preheader
    i64 11, label %.lr.ph.i.i.i.i.i.i.i82.preheader
    i64 12, label %.lr.ph.i.i.i.i.i.i.i87.preheader
    i64 13, label %.lr.ph.i.i.i.i.i.i.i92.preheader
    i64 14, label %.lr.ph.i.i.i.i.i.i.i97.preheader
    i64 15, label %.lr.ph.i.i.i.i.i.i.i102.preheader
    i64 16, label %.lr.ph.i.i.i.i.i.i.i107.preheader
  ]

.lr.ph.i.i.i.i.i.i.i107.preheader:                ; preds = %bb.a
  %5 = add i64 %4, 16
  %6 = add i64 %3, 32
  %rt.bound0169 = icmp ugt i64 %5, %3
  %rt.bound1170 = icmp ugt i64 %6, %4
  %rt.conflict171 = and i1 %rt.bound0169, %rt.bound1170
  br i1 %rt.conflict171, label %.lr.ph.i.i.i.i.i.i.i107.preheader.rtscalar, label %.lr.ph.i.i.i.i.i.i.i107.preheader.rtvec

.lr.ph.i.i.i.i.i.i.i102.preheader:                ; preds = %bb.a
  %7 = add i64 %4, 15
  %8 = add i64 %3, 30
  %rt.bound0165 = icmp ugt i64 %7, %3
  %rt.bound1166 = icmp ugt i64 %8, %4
  %rt.conflict167 = and i1 %rt.bound0165, %rt.bound1166
  br i1 %rt.conflict167, label %.lr.ph.i.i.i.i.i.i.i102.preheader.rtscalar, label %.lr.ph.i.i.i.i.i.i.i102.preheader.rtvec

.lr.ph.i.i.i.i.i.i.i97.preheader:                 ; preds = %bb.a
  %9 = add i64 %4, 14
  %10 = add i64 %3, 28
  %rt.bound0 = icmp ugt i64 %9, %3
  %rt.bound1 = icmp ugt i64 %10, %4
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.lr.ph.i.i.i.i.i.i.i97.preheader.rtscalar, label %.lr.ph.i.i.i.i.i.i.i97.preheader.rtvec

.lr.ph.i.i.i.i.i.i.i92.preheader:                 ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1
  %i.b = zext i8 %i.a to i16
  store i16 %i.b, ptr %0, align 2
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i8, ptr %i.c, align 1
  %i.f = zext i8 %i.e to i16
  store i16 %i.f, ptr %i.d, align 2
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i8, ptr %i.g, align 1
  %i.j = zext i8 %i.i to i16
  store i16 %i.j, ptr %i.h, align 2
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.m = load i8, ptr %i.k, align 1
  %i.n = zext i8 %i.m to i16
  store i16 %i.n, ptr %i.l, align 2
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i8, ptr %i.o, align 1
  %i.r = zext i8 %i.q to i16
  store i16 %i.r, ptr %i.p, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.u = load i8, ptr %i.s, align 1
  %i.v = zext i8 %i.u to i16
  store i16 %i.v, ptr %i.t, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.y = load i8, ptr %i.w, align 1
  %i.z = zext i8 %i.y to i16
  store i16 %i.z, ptr %i.x, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ac = load i8, ptr %i.aa, align 1
  %i.ad = zext i8 %i.ac to i16
  store i16 %i.ad, ptr %i.ab, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load i8, ptr %i.ae, align 1
  %i.ah = zext i8 %i.ag to i16
  store i16 %i.ah, ptr %i.af, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ak = load i8, ptr %i.ai, align 1
  %i.al = zext i8 %i.ak to i16
  store i16 %i.al, ptr %i.aj, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ao = load i8, ptr %i.am, align 1
  %i.ap = zext i8 %i.ao to i16
  store i16 %i.ap, ptr %i.an, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.as = load i8, ptr %i.aq, align 1
  %i.at = zext i8 %i.as to i16
  store i16 %i.at, ptr %i.ar, align 2
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = load i8, ptr %i.au, align 1
  %i.ax = zext i8 %i.aw to i16
  store i16 %i.ax, ptr %i.av, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i87.preheader:                 ; preds = %bb.a
  %i.ay = load i8, ptr %1, align 1
  %i.az = zext i8 %i.ay to i16
  store i16 %i.az, ptr %0, align 2
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bc = load i8, ptr %i.ba, align 1
  %i.bd = zext i8 %i.bc to i16
  store i16 %i.bd, ptr %i.bb, align 2
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bg = load i8, ptr %i.be, align 1
  %i.bh = zext i8 %i.bg to i16
  store i16 %i.bh, ptr %i.bf, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.bk = load i8, ptr %i.bi, align 1
  %i.bl = zext i8 %i.bk to i16
  store i16 %i.bl, ptr %i.bj, align 2
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load i8, ptr %i.bm, align 1
  %i.bp = zext i8 %i.bo to i16
  store i16 %i.bp, ptr %i.bn, align 2
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.bs = load i8, ptr %i.bq, align 1
  %i.bt = zext i8 %i.bs to i16
  store i16 %i.bt, ptr %i.br, align 2
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bw = load i8, ptr %i.bu, align 1
  %i.bx = zext i8 %i.bw to i16
  store i16 %i.bx, ptr %i.bv, align 2
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ca = load i8, ptr %i.by, align 1
  %i.cb = zext i8 %i.ca to i16
  store i16 %i.cb, ptr %i.bz, align 2
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ce = load i8, ptr %i.cc, align 1
  %i.cf = zext i8 %i.ce to i16
  store i16 %i.cf, ptr %i.cd, align 2
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ci = load i8, ptr %i.cg, align 1
  %i.cj = zext i8 %i.ci to i16
  store i16 %i.cj, ptr %i.ch, align 2
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cm = load i8, ptr %i.ck, align 1
  %i.cn = zext i8 %i.cm to i16
  store i16 %i.cn, ptr %i.cl, align 2
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.cq = load i8, ptr %i.co, align 1
  %i.cr = zext i8 %i.cq to i16
  store i16 %i.cr, ptr %i.cp, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i82.preheader:                 ; preds = %bb.a
  %i.cs = load i8, ptr %1, align 1
  %i.ct = zext i8 %i.cs to i16
  store i16 %i.ct, ptr %0, align 2
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.cw = load i8, ptr %i.cu, align 1
  %i.cx = zext i8 %i.cw to i16
  store i16 %i.cx, ptr %i.cv, align 2
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.da = load i8, ptr %i.cy, align 1
  %i.db = zext i8 %i.da to i16
  store i16 %i.db, ptr %i.cz, align 2
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.de = load i8, ptr %i.dc, align 1
  %i.df = zext i8 %i.de to i16
  store i16 %i.df, ptr %i.dd, align 2
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.di = load i8, ptr %i.dg, align 1
  %i.dj = zext i8 %i.di to i16
  store i16 %i.dj, ptr %i.dh, align 2
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.dm = load i8, ptr %i.dk, align 1
  %i.dn = zext i8 %i.dm to i16
  store i16 %i.dn, ptr %i.dl, align 2
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.dq = load i8, ptr %i.do, align 1
  %i.dr = zext i8 %i.dq to i16
  store i16 %i.dr, ptr %i.dp, align 2
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.du = load i8, ptr %i.ds, align 1
  %i.dv = zext i8 %i.du to i16
  store i16 %i.dv, ptr %i.dt, align 2
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dy = load i8, ptr %i.dw, align 1
  %i.dz = zext i8 %i.dy to i16
  store i16 %i.dz, ptr %i.dx, align 2
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ec = load i8, ptr %i.ea, align 1
  %i.ed = zext i8 %i.ec to i16
  store i16 %i.ed, ptr %i.eb, align 2
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.eg = load i8, ptr %i.ee, align 1
  %i.eh = zext i8 %i.eg to i16
  store i16 %i.eh, ptr %i.ef, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i77.preheader:                 ; preds = %bb.a
  %i.ei = load i8, ptr %1, align 1
  %i.ej = zext i8 %i.ei to i16
  store i16 %i.ej, ptr %0, align 2
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.em = load i8, ptr %i.ek, align 1
  %i.en = zext i8 %i.em to i16
  store i16 %i.en, ptr %i.el, align 2
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.eq = load i8, ptr %i.eo, align 1
  %i.er = zext i8 %i.eq to i16
  store i16 %i.er, ptr %i.ep, align 2
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 6
end_hunk_0
begin_hunk_1_@_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m:bb.a
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.jo = load i8, ptr %i.jm, align 1
  %i.jp = zext i8 %i.jo to i16
  store i16 %i.jp, ptr %i.jn, align 2
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.js = load i8, ptr %i.jq, align 1
  %i.jt = zext i8 %i.js to i16
  store i16 %i.jt, ptr %i.jr, align 2
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jw = load i8, ptr %i.ju, align 1
  %i.jx = zext i8 %i.jw to i16
  store i16 %i.jx, ptr %i.jv, align 2
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ka = load i8, ptr %i.jy, align 1
  %i.kb = zext i8 %i.ka to i16
  store i16 %i.kb, ptr %i.jz, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i52.preheader:                 ; preds = %bb.a
  %i.kc = load i8, ptr %1, align 1
  %i.kd = zext i8 %i.kc to i16
  store i16 %i.kd, ptr %0, align 2
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.kg = load i8, ptr %i.ke, align 1
  %i.kh = zext i8 %i.kg to i16
  store i16 %i.kh, ptr %i.kf, align 2
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.kk = load i8, ptr %i.ki, align 1
  %i.kl = zext i8 %i.kk to i16
  store i16 %i.kl, ptr %i.kj, align 2
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ko = load i8, ptr %i.km, align 1
  %i.kp = zext i8 %i.ko to i16
  store i16 %i.kp, ptr %i.kn, align 2
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ks = load i8, ptr %i.kq, align 1
  %i.kt = zext i8 %i.ks to i16
  store i16 %i.kt, ptr %i.kr, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i47.preheader:                 ; preds = %bb.a
  %i.ku = load i8, ptr %1, align 1
  %i.kv = zext i8 %i.ku to i16
  store i16 %i.kv, ptr %0, align 2
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ky = load i8, ptr %i.kw, align 1
  %i.kz = zext i8 %i.ky to i16
  store i16 %i.kz, ptr %i.kx, align 2
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.lc = load i8, ptr %i.la, align 1
  %i.ld = zext i8 %i.lc to i16
  store i16 %i.ld, ptr %i.lb, align 2
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.lg = load i8, ptr %i.le, align 1
  %i.lh = zext i8 %i.lg to i16
  store i16 %i.lh, ptr %i.lf, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i42.preheader:                 ; preds = %bb.a
  %i.li = load i8, ptr %1, align 1
  %i.lj = zext i8 %i.li to i16
  store i16 %i.lj, ptr %0, align 2
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.lm = load i8, ptr %i.lk, align 1
  %i.ln = zext i8 %i.lm to i16
  store i16 %i.ln, ptr %i.ll, align 2
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.lq = load i8, ptr %i.lo, align 1
  %i.lr = zext i8 %i.lq to i16
  store i16 %i.lr, ptr %i.lp, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i37.preheader:                 ; preds = %bb.a
  %i.ls = load i8, ptr %1, align 1
  %i.lt = zext i8 %i.ls to i16
  store i16 %i.lt, ptr %0, align 2
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.lw = load i8, ptr %i.lu, align 1
  %i.lx = zext i8 %i.lw to i16
  store i16 %i.lx, ptr %i.lv, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.a
  %i.ly = load i8, ptr %1, align 1
  %i.lz = zext i8 %i.ly to i16
  store i16 %i.lz, ptr %0, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

bb.b:                                             ; preds = %bb.a
  %i.ma = icmp sgt i64 %2, 0
  br i1 %i.ma, label %iter.check, label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

iter.check:                                       ; preds = %bb.b
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i112.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.mb = shl nuw i64 %2, 1
  %scevgep = getelementptr i8, ptr %0, i64 %i.mb
  %scevgep148 = getelementptr i8, ptr %1, i64 %2
  %bound0 = icmp ult ptr %0, %scevgep148
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i112.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check149 = icmp ult i64 %2, 16
  br i1 %min.iters.check149, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %2, 12
  %n.vec = and i64 %2, 9223372036854775792        ; 5 uses
  %i.mc = and i64 %2, 15
  %i.md = shl nuw i64 %n.vec, 1
  %i.me = getelementptr i8, ptr %0, i64 %i.md
  %i.mf = getelementptr i8, ptr %1, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.mg = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %0, i64 %i.mg ; 2 uses
  %next.gep150 = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.mh = getelementptr i8, ptr %next.gep150, i64 8
  %wide.load = load <8 x i8>, ptr %next.gep150, align 1, !alias.scope !14
  %wide.load151 = load <8 x i8>, ptr %i.mh, align 1, !alias.scope !14
  %i.mi = zext <8 x i8> %wide.load to <8 x i16>
  %i.mj = zext <8 x i8> %wide.load151 to <8 x i16>
  %i.mk = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %i.mi, ptr %next.gep, align 2, !alias.scope !17, !noalias !14
  store <8 x i16> %i.mj, ptr %i.mk, align 2, !alias.scope !17, !noalias !14
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ml = icmp eq i64 %index.next, %n.vec
  br i1 %i.ml, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i112.preheader, label %vec.epilog.ph, !prof !22

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec155 = and i64 %2, 9223372036854775804     ; 4 uses
  %i.mm = and i64 %2, 3
  %i.mn = shl nuw i64 %n.vec155, 1
  %i.mo = getelementptr i8, ptr %0, i64 %i.mn
  %i.mp = getelementptr i8, ptr %1, i64 %n.vec155
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index156 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next160, %vec.epilog.vector.body ] ; 3 uses
  %i.mq = shl i64 %index156, 1
  %next.gep157 = getelementptr i8, ptr %0, i64 %i.mq
  %next.gep158 = getelementptr i8, ptr %1, i64 %index156
  %wide.load159 = load <4 x i8>, ptr %next.gep158, align 1, !alias.scope !14
  %i.mr = zext <4 x i8> %wide.load159 to <4 x i16>
  store <4 x i16> %i.mr, ptr %next.gep157, align 2, !alias.scope !17, !noalias !14
  %index.next160 = add nuw i64 %index156, 4       ; 2 uses
  %i.ms = icmp eq i64 %index.next160, %n.vec155
  br i1 %i.ms, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !23

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n161 = icmp eq i64 %2, %n.vec155
  br i1 %cmp.n161, label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit, label %.lr.ph.i.i.i.i.i.i.i112.preheader

.lr.ph.i.i.i.i.i.i.i112.preheader:                ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.i113.ph = phi i64 [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.mc, %vec.epilog.iter.check ], [ %i.mm, %vec.epilog.middle.block ]
  %.0811.i.i.i.i.i.i.i114.ph = phi ptr [ %0, %iter.check ], [ %0, %vector.memcheck ], [ %i.me, %vec.epilog.iter.check ], [ %i.mo, %vec.epilog.middle.block ]
  %.0910.i.i.i.i.i.i.i115.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.mf, %vec.epilog.iter.check ], [ %i.mp, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i112

.lr.ph.i.i.i.i.i.i.i112:                          ; preds = %.lr.ph.i.i.i.i.i.i.i112.preheader, %.lr.ph.i.i.i.i.i.i.i112
  %.012.i.i.i.i.i.i.i113 = phi i64 [ %i.mx, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.012.i.i.i.i.i.i.i113.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader ] ; 2 uses
  %.0811.i.i.i.i.i.i.i114 = phi ptr [ %i.mw, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.0811.i.i.i.i.i.i.i114.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.i115 = phi ptr [ %i.mv, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.0910.i.i.i.i.i.i.i115.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader ] ; 2 uses
  %i.mt = load i8, ptr %.0910.i.i.i.i.i.i.i115, align 1
  %i.mu = zext i8 %i.mt to i16
  store i16 %i.mu, ptr %.0811.i.i.i.i.i.i.i114, align 2
  %i.mv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i115, i64 1
  %i.mw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i114, i64 2
  %i.mx = add nsw i64 %.012.i.i.i.i.i.i.i113, -1
  %i.my = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i113, 1
  br i1 %i.my, label %.lr.ph.i.i.i.i.i.i.i112, label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit, !llvm.loop !24

_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit:              ; preds = %.lr.ph.i.i.i.i.i.i.i107.preheader.rtvec, %.lr.ph.i.i.i.i.i.i.i107.preheader.rtscalar, %.lr.ph.i.i.i.i.i.i.i102.preheader.rtvec, %.lr.ph.i.i.i.i.i.i.i102.preheader.rtscalar, %.lr.ph.i.i.i.i.i.i.i97.preheader.rtvec, %.lr.ph.i.i.i.i.i.i.i97.preheader.rtscalar, %.lr.ph.i.i.i.i.i.i.i112, %middle.block, %vec.epilog.middle.block, %.lr.ph.i.i.i.i.i.i.i92.preheader, %.lr.ph.i.i.i.i.i.i.i87.preheader, %.lr.ph.i.i.i.i.i.i.i82.preheader, %.lr.ph.i.i.i.i.i.i.i77.preheader, %.lr.ph.i.i.i.i.i.i.i72.preheader, %.lr.ph.i.i.i.i.i.i.i67.preheader, %.lr.ph.i.i.i.i.i.i.i62.preheader, %.lr.ph.i.i.i.i.i.i.i57.preheader, %.lr.ph.i.i.i.i.i.i.i52.preheader, %.lr.ph.i.i.i.i.i.i.i47.preheader, %.lr.ph.i.i.i.i.i.i.i42.preheader, %.lr.ph.i.i.i.i.i.i.i37.preheader, %.lr.ph.i.i.i.i.i.i.i.preheader, %bb.b
  ret void

.lr.ph.i.i.i.i.i.i.i97.preheader.rtvec:           ; preds = %.lr.ph.i.i.i.i.i.i.i97.preheader
  %11 = load <8 x i8>, ptr %1, align 1
  %12 = zext <8 x i8> %11 to <8 x i16>
  store <8 x i16> %12, ptr %0, align 2
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %15 = load <4 x i8>, ptr %13, align 1
  %16 = zext <4 x i8> %15 to <4 x i16>
  store <4 x i16> %16, ptr %14, align 2
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %19 = load i8, ptr %17, align 1
  %20 = zext i8 %19 to i16
  store i16 %20, ptr %18, align 2
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 13
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 26
  %23 = load i8, ptr %21, align 1
  %24 = zext i8 %23 to i16
  store i16 %24, ptr %22, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i97.preheader.rtscalar:        ; preds = %.lr.ph.i.i.i.i.i.i.i97.preheader
  %25 = load i8, ptr %1, align 1
  %26 = zext i8 %25 to i16
  store i16 %26, ptr %0, align 2
  %27 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %29 = load i8, ptr %27, align 1
  %30 = zext i8 %29 to i16
  store i16 %30, ptr %28, align 2
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %33 = load i8, ptr %31, align 1
  %34 = zext i8 %33 to i16
  store i16 %34, ptr %32, align 2
  %35 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %37 = load i8, ptr %35, align 1
  %38 = zext i8 %37 to i16
  store i16 %38, ptr %36, align 2
  %39 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %41 = load i8, ptr %39, align 1
  %42 = zext i8 %41 to i16
  store i16 %42, ptr %40, align 2
  %43 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %45 = load i8, ptr %43, align 1
  %46 = zext i8 %45 to i16
  store i16 %46, ptr %44, align 2
  %47 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %49 = load i8, ptr %47, align 1
  %50 = zext i8 %49 to i16
  store i16 %50, ptr %48, align 2
  %51 = getelementptr inbounds nuw i8, ptr %1, i64 7
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %53 = load i8, ptr %51, align 1
  %54 = zext i8 %53 to i16
  store i16 %54, ptr %52, align 2
  %55 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %57 = load i8, ptr %55, align 1
  %58 = zext i8 %57 to i16
  store i16 %58, ptr %56, align 2
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 9
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 18
  %61 = load i8, ptr %59, align 1
  %62 = zext i8 %61 to i16
  store i16 %62, ptr %60, align 2
  %63 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %65 = load i8, ptr %63, align 1
  %66 = zext i8 %65 to i16
  store i16 %66, ptr %64, align 2
  %67 = getelementptr inbounds nuw i8, ptr %1, i64 11
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 22
  %69 = load i8, ptr %67, align 1
  %70 = zext i8 %69 to i16
  store i16 %70, ptr %68, align 2
  %71 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %73 = load i8, ptr %71, align 1
  %74 = zext i8 %73 to i16
  store i16 %74, ptr %72, align 2
  %75 = getelementptr inbounds nuw i8, ptr %1, i64 13
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 26
  %77 = load i8, ptr %75, align 1
  %78 = zext i8 %77 to i16
  store i16 %78, ptr %76, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i102.preheader.rtvec:          ; preds = %.lr.ph.i.i.i.i.i.i.i102.preheader
  %79 = load <8 x i8>, ptr %1, align 1
  %80 = zext <8 x i8> %79 to <8 x i16>
  store <8 x i16> %80, ptr %0, align 2
  %81 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %83 = load <4 x i8>, ptr %81, align 1
  %84 = zext <4 x i8> %83 to <4 x i16>
  store <4 x i16> %84, ptr %82, align 2
  %85 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %87 = load i8, ptr %85, align 1
  %88 = zext i8 %87 to i16
  store i16 %88, ptr %86, align 2
  %89 = getelementptr inbounds nuw i8, ptr %1, i64 13
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 26
  %91 = load i8, ptr %89, align 1
  %92 = zext i8 %91 to i16
  store i16 %92, ptr %90, align 2
  %93 = getelementptr inbounds nuw i8, ptr %1, i64 14
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %95 = load i8, ptr %93, align 1
  %96 = zext i8 %95 to i16
  store i16 %96, ptr %94, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i102.preheader.rtscalar:       ; preds = %.lr.ph.i.i.i.i.i.i.i102.preheader
  %97 = load i8, ptr %1, align 1
  %98 = zext i8 %97 to i16
  store i16 %98, ptr %0, align 2
  %99 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %101 = load i8, ptr %99, align 1
  %102 = zext i8 %101 to i16
  store i16 %102, ptr %100, align 2
  %103 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %105 = load i8, ptr %103, align 1
  %106 = zext i8 %105 to i16
  store i16 %106, ptr %104, align 2
  %107 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %109 = load i8, ptr %107, align 1
  %110 = zext i8 %109 to i16
  store i16 %110, ptr %108, align 2
  %111 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %113 = load i8, ptr %111, align 1
  %114 = zext i8 %113 to i16
  store i16 %114, ptr %112, align 2
  %115 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %117 = load i8, ptr %115, align 1
  %118 = zext i8 %117 to i16
  store i16 %118, ptr %116, align 2
  %119 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %121 = load i8, ptr %119, align 1
  %122 = zext i8 %121 to i16
  store i16 %122, ptr %120, align 2
  %123 = getelementptr inbounds nuw i8, ptr %1, i64 7
  %124 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %125 = load i8, ptr %123, align 1
  %126 = zext i8 %125 to i16
  store i16 %126, ptr %124, align 2
  %127 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %128 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %129 = load i8, ptr %127, align 1
  %130 = zext i8 %129 to i16
  store i16 %130, ptr %128, align 2
  %131 = getelementptr inbounds nuw i8, ptr %1, i64 9
  %132 = getelementptr inbounds nuw i8, ptr %0, i64 18
  %133 = load i8, ptr %131, align 1
  %134 = zext i8 %133 to i16
  store i16 %134, ptr %132, align 2
  %135 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %136 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %137 = load i8, ptr %135, align 1
  %138 = zext i8 %137 to i16
  store i16 %138, ptr %136, align 2
  %139 = getelementptr inbounds nuw i8, ptr %1, i64 11
  %140 = getelementptr inbounds nuw i8, ptr %0, i64 22
  %141 = load i8, ptr %139, align 1
  %142 = zext i8 %141 to i16
  store i16 %142, ptr %140, align 2
  %143 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %144 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %145 = load i8, ptr %143, align 1
  %146 = zext i8 %145 to i16
  store i16 %146, ptr %144, align 2
  %147 = getelementptr inbounds nuw i8, ptr %1, i64 13
  %148 = getelementptr inbounds nuw i8, ptr %0, i64 26
  %149 = load i8, ptr %147, align 1
  %150 = zext i8 %149 to i16
  store i16 %150, ptr %148, align 2
  %151 = getelementptr inbounds nuw i8, ptr %1, i64 14
  %152 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %153 = load i8, ptr %151, align 1
  %154 = zext i8 %153 to i16
  store i16 %154, ptr %152, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i107.preheader.rtvec:          ; preds = %.lr.ph.i.i.i.i.i.i.i107.preheader
  %155 = load <8 x i8>, ptr %1, align 1
  %156 = zext <8 x i8> %155 to <8 x i16>
  store <8 x i16> %156, ptr %0, align 2
  %157 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %159 = load <8 x i8>, ptr %157, align 1
  %160 = zext <8 x i8> %159 to <8 x i16>
  store <8 x i16> %160, ptr %158, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i107.preheader.rtscalar:       ; preds = %.lr.ph.i.i.i.i.i.i.i107.preheader
  %161 = load i8, ptr %1, align 1
  %162 = zext i8 %161 to i16
  store i16 %162, ptr %0, align 2
  %163 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %164 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %165 = load i8, ptr %163, align 1
  %166 = zext i8 %165 to i16
  store i16 %166, ptr %164, align 2
  %167 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %168 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %169 = load i8, ptr %167, align 1
  %170 = zext i8 %169 to i16
  store i16 %170, ptr %168, align 2
  %171 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %173 = load i8, ptr %171, align 1
  %174 = zext i8 %173 to i16
  store i16 %174, ptr %172, align 2
  %175 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %177 = load i8, ptr %175, align 1
  %178 = zext i8 %177 to i16
  store i16 %178, ptr %176, align 2
  %179 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %180 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %181 = load i8, ptr %179, align 1
  %182 = zext i8 %181 to i16
  store i16 %182, ptr %180, align 2
  %183 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %185 = load i8, ptr %183, align 1
  %186 = zext i8 %185 to i16
  store i16 %186, ptr %184, align 2
  %187 = getelementptr inbounds nuw i8, ptr %1, i64 7
  %188 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %189 = load i8, ptr %187, align 1
  %190 = zext i8 %189 to i16
  store i16 %190, ptr %188, align 2
  %191 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %192 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %193 = load i8, ptr %191, align 1
  %194 = zext i8 %193 to i16
  store i16 %194, ptr %192, align 2
  %195 = getelementptr inbounds nuw i8, ptr %1, i64 9
  %196 = getelementptr inbounds nuw i8, ptr %0, i64 18
  %197 = load i8, ptr %195, align 1
  %198 = zext i8 %197 to i16
  store i16 %198, ptr %196, align 2
  %199 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %200 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %201 = load i8, ptr %199, align 1
  %202 = zext i8 %201 to i16
  store i16 %202, ptr %200, align 2
  %203 = getelementptr inbounds nuw i8, ptr %1, i64 11
  %204 = getelementptr inbounds nuw i8, ptr %0, i64 22
  %205 = load i8, ptr %203, align 1
  %206 = zext i8 %205 to i16
  store i16 %206, ptr %204, align 2
  %207 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %208 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %209 = load i8, ptr %207, align 1
  %210 = zext i8 %209 to i16
  store i16 %210, ptr %208, align 2
  %211 = getelementptr inbounds nuw i8, ptr %1, i64 13
  %212 = getelementptr inbounds nuw i8, ptr %0, i64 26
  %213 = load i8, ptr %211, align 1
  %214 = zext i8 %213 to i16
  store i16 %214, ptr %212, align 2
  %215 = getelementptr inbounds nuw i8, ptr %1, i64 14
  %216 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %217 = load i8, ptr %215, align 1
  %218 = zext i8 %217 to i16
  store i16 %218, ptr %216, align 2
  %219 = getelementptr inbounds nuw i8, ptr %1, i64 15
  %220 = getelementptr inbounds nuw i8, ptr %0, i64 30
  %221 = load i8, ptr %219, align 1
  %222 = zext i8 %221 to i16
  store i16 %222, ptr %220, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal27Utf8ExternalStreamingStream10FetchChunkEv(ptr noundef nonnull align 8 dereferenceable(1136) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"struct.v8::internal::Utf8ExternalStreamingStream::StreamPosition", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %i.a) #16 ; 3 uses
  store i64 %i.h, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %.not.i = icmp eq ptr %i.m, %i.o
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  store ptr %i.p, ptr %i.m, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.h, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.s = load ptr, ptr %i.l, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store ptr %i.t, ptr %i.l, align 8
  br label %_ZNSt6vectorIN2v88internal27Utf8ExternalStreamingStream5ChunkESaIS3_EE12emplace_backIJRPKhRmRNS2_14StreamPositionEEEERS3_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNSt6vectorIN2v88internal27Utf8ExternalStreamingStream5ChunkESaIS3_EE17_M_realloc_insertIJRPKhRmRNS2_14StreamPositionEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.k)
  %.pre = load i64, ptr %i.b, align 8
  br label %_ZNSt6vectorIN2v88internal27Utf8ExternalStreamingStream5ChunkESaIS3_EE12emplace_backIJRPKhRmRNS2_14StreamPositionEEEERS3_DpOT_.exit

_ZNSt6vectorIN2v88internal27Utf8ExternalStreamingStream5ChunkESaIS3_EE12emplace_backIJRPKhRmRNS2_14StreamPositionEEEERS3_DpOT_.exit: ; preds = %bb.b, %bb.c
  %i.u = phi i64 [ %i.h, %bb.b ], [ %.pre, %bb.c ]
  %i.v = icmp ne i64 %i.u, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i1 %i.v
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal27Utf8ExternalStreamingStream14SearchPositionEm(ptr noundef nonnull align 8 dereferenceable(1136) %0, i64 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"struct.v8::internal::Utf8ExternalStreamingStream::StreamPosition", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"struct.v8::internal::Utf8ExternalStreamingStream::StreamPosition", align 8 ; 4 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %.sroa.411 = alloca %"struct.v8::internal::Utf8ExternalStreamingStream::StreamPosition", align 8 ; 4 uses
  %.sroa.44 = alloca %"struct.v8::internal::Utf8ExternalStreamingStream::StreamPosition", align 8 ; 4 uses
  %.sroa.4 = alloca %"struct.v8::internal::Utf8ExternalStreamingStream::StreamPosition", align 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp eq i64 %i.h, %1
  br i1 %i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store ptr null, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call noundef i64 %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull %i.c) #16, !inline_history !25 ; 2 uses
  store i64 %i.u, ptr %i.d, align 8
  %i.v = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %.not.i.i = icmp eq ptr %i.x, %i.z
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  store ptr %i.aa, ptr %i.x, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %i.u, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ad = load ptr, ptr %i.w, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store ptr %i.ae, ptr %i.w, align 8
  br label %_ZN2v88internal27Utf8ExternalStreamingStream10FetchChunkEv.exit

bb.e:                                             ; preds = %bb.c
  call void @_ZNSt6vectorIN2v88internal27Utf8ExternalStreamingStream5ChunkESaIS3_EE17_M_realloc_insertIJRPKhRmRNS2_14StreamPositionEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_ZN2v88internal27Utf8ExternalStreamingStream10FetchChunkEv.exit

_ZN2v88internal27Utf8ExternalStreamingStream10FetchChunkEv.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  %.pre = load ptr, ptr %i.j, align 8             ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre47 = load ptr, ptr %.phi.trans.insert, align 8
  %.pre48 = load ptr, ptr %.pre, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal27Utf8ExternalStreamingStream10FetchChunkEv.exit, %bb.b
  %i.af = phi ptr [ %.pre48, %_ZN2v88internal27Utf8ExternalStreamingStream10FetchChunkEv.exit ], [ %i.l, %bb.b ] ; 4 uses
  %i.ag = phi ptr [ %.pre47, %_ZN2v88internal27Utf8ExternalStreamingStream10FetchChunkEv.exit ], [ %i.n, %bb.b ]
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = sdiv exact i64 %i.aj, 40                ; 4 uses
  %.03955 = add nsw i64 %i.ak, -1                 ; 3 uses
  %.not56 = icmp eq i64 %.03955, 0
  br i1 %.not56, label %.critedge, label %.lr.ph59

bb.g:                                             ; preds = %.lr.ph59
  %.039 = add i64 %.03958, -1                     ; 3 uses
  %.not = icmp eq i64 %.039, 0
  br i1 %.not, label %.critedge, label %.lr.ph59, !llvm.loop !26

.lr.ph59:                                         ; preds = %bb.f, %bb.g
  %.03958 = phi i64 [ %.039, %bb.g ], [ %.03955, %bb.f ] ; 5 uses
  %.039.in57 = phi i64 [ %.03958, %bb.g ], [ %i.ak, %bb.f ]
  %i.al = getelementptr inbounds nuw [40 x i8], ptr %i.af, i64 %.03958
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = icmp ugt i64 %i.an, %1
  br i1 %i.ao, label %bb.g, label %..critedge_crit_edge61, !llvm.loop !26

..critedge_crit_edge61:                           ; preds = %.lr.ph59
  br label %.critedge, !llvm.loop !26

.critedge:                                        ; preds = %bb.g, %..critedge_crit_edge61, %bb.f
  %.039.in.lcssa = phi i64 [ %i.ak, %bb.f ], [ %.039.in57, %..critedge_crit_edge61 ], [ %.03958, %bb.g ] ; 2 uses
  %.039.lcssa = phi i64 [ %.03955, %bb.f ], [ %.03958, %..critedge_crit_edge61 ], [ %.039, %bb.g ] ; 5 uses
  %i.ap = getelementptr inbounds nuw [40 x i8], ptr %i.af, i64 %.039.lcssa ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.411)
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.411, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false)
  store i64 %.039.lcssa, ptr %i.e, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.411, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.411)
  br label %.loopexit

bb.i:                                             ; preds = %.critedge
  %i.au = icmp ult i64 %.039.in.lcssa, %i.ak
  br i1 %i.au, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.k, label %.critedge43

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr %i.af, i64 %.039.in.lcssa ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.bc = load i64, ptr %i.bb, align 8            ; 2 uses
  %i.bd = sub i64 %i.ba, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.bh = load i64, ptr %i.bg, align 8            ; 2 uses
  %i.bi = sub i64 %i.bf, %i.bh
  %i.bj = icmp eq i64 %i.bd, %i.bi
end_hunk_1
