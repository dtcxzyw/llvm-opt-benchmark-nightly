inline.NumInlined: 1873
inline.NumDeleted: 1202
begin_hunk_0_@_ZN6duckdb7roaring19RoaringAnalyzeState7AnalyzeILNS_12PhysicalTypeE1EEEvRNS_6VectorEm:bb.a
  %.not7.i = icmp eq i64 %2, 0                    ; 2 uses
  br i1 %.not.i29, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  br i1 %.not7.i, label %_ZN6duckdb7roaringL15BitPackBooleansILb0ELb1EEEvPhPKbmPKNS_12ValidityMaskEPNS_14BaseStatisticsE.exit, label %.lr.ph.outer.i

.lr.ph.outer.i:                                   ; preds = %bb.g, %.thread.i
  %.04.ph.i = phi i64 [ %i.av, %.thread.i ], [ 0, %bb.g ] ; 9 uses
  %.0171.ph.i = phi ptr [ %i.au, %.thread.i ], [ %i.e, %bb.g ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.04.ph.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !230, !range !312, !noundef !91 ; 2 uses
  %i.l = or disjoint i64 %.04.ph.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.l, %2
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i.1

._crit_edge.i:                                    ; preds = %.lr.ph.i.6, %.lr.ph.i.5, %.lr.ph.i.4, %.lr.ph.i.3, %.lr.ph.i.2, %.lr.ph.i.1, %.lr.ph.outer.i
  %.lcssa55.ph = phi i8 [ %i.ao, %.lr.ph.i.6 ], [ %i.aj, %.lr.ph.i.5 ], [ %i.ae, %.lr.ph.i.4 ], [ %i.z, %.lr.ph.i.3 ], [ %i.u, %.lr.ph.i.2 ], [ %i.p, %.lr.ph.i.1 ], [ %i.k, %.lr.ph.outer.i ]
  store i8 %.lcssa55.ph, ptr %.0171.ph.i, align 1, !tbaa !177
  br label %_ZN6duckdb7roaringL15BitPackBooleansILb0ELb1EEEvPhPKbmPKNS_12ValidityMaskEPNS_14BaseStatisticsE.exit

.lr.ph.i.1:                                       ; preds = %.lr.ph.outer.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !230, !range !312, !noundef !91
  %i.o = shl nuw nsw i8 %i.n, 1
  %i.p = or disjoint i8 %i.k, %i.o                ; 2 uses
  %i.q = or disjoint i64 %.04.ph.i, 2             ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.q, %2
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !230, !range !312, !noundef !91
  %i.t = shl nuw nsw i8 %i.s, 2
  %i.u = or disjoint i8 %i.p, %i.t                ; 2 uses
  %i.v = or disjoint i64 %.04.ph.i, 3             ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %i.v, %2
  br i1 %exitcond.not.i.2, label %._crit_edge.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !230, !range !312, !noundef !91
  %i.y = shl nuw nsw i8 %i.x, 3
  %i.z = or disjoint i8 %i.u, %i.y                ; 2 uses
  %i.aa = or disjoint i64 %.04.ph.i, 4            ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.aa, %2
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %.lr.ph.i.3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !230, !range !312, !noundef !91
  %i.ad = shl nuw nsw i8 %i.ac, 4
  %i.ae = or disjoint i8 %i.z, %i.ad              ; 2 uses
  %i.af = or disjoint i64 %.04.ph.i, 5            ; 2 uses
  %exitcond.not.i.4 = icmp eq i64 %i.af, %2
  br i1 %exitcond.not.i.4, label %._crit_edge.i, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %.lr.ph.i.4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !230, !range !312, !noundef !91
  %i.ai = shl nuw nsw i8 %i.ah, 5
  %i.aj = or i8 %i.ae, %i.ai                      ; 2 uses
  %i.ak = or disjoint i64 %.04.ph.i, 6            ; 2 uses
  %exitcond.not.i.5 = icmp eq i64 %i.ak, %2
  br i1 %exitcond.not.i.5, label %._crit_edge.i, label %.lr.ph.i.6

.lr.ph.i.6:                                       ; preds = %.lr.ph.i.5
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !230, !range !312, !noundef !91
  %i.an = shl nuw nsw i8 %i.am, 6
  %i.ao = or i8 %i.aj, %i.an                      ; 2 uses
  %i.ap = or disjoint i64 %.04.ph.i, 7            ; 2 uses
  %exitcond.not.i.6 = icmp eq i64 %i.ap, %2
  br i1 %exitcond.not.i.6, label %._crit_edge.i, label %.thread.i

.thread.i:                                        ; preds = %.lr.ph.i.6
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !230, !range !312, !noundef !91
  %i.as = shl nuw i8 %i.ar, 7
  %i.at = or i8 %i.ao, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %.0171.ph.i, i64 1
  store i8 %i.at, ptr %.0171.ph.i, align 1, !tbaa !177
  %i.av = add nuw i64 %.04.ph.i, 8                ; 2 uses
  %exitcond.not16.i = icmp eq i64 %i.av, %2
  br i1 %exitcond.not16.i, label %_ZN6duckdb7roaringL15BitPackBooleansILb0ELb1EEEvPhPKbmPKNS_12ValidityMaskEPNS_14BaseStatisticsE.exit, label %.lr.ph.outer.i, !llvm.loop !319

bb.h:                                             ; preds = %bb.a
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #26
  br label %bb.v

bb.i:                                             ; preds = %bb.d, %bb.b
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.j:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE14EnsureWritableEv.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.k:                                             ; preds = %bb.e, %_ZN6duckdb7roaringL15BitPackBooleansILb0ELb1EEEvPhPKbmPKNS_12ValidityMaskEPNS_14BaseStatisticsE.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.l:                                             ; preds = %bb.f
  br i1 %.not7.i, label %_ZN6duckdb7roaringL15BitPackBooleansILb0ELb1EEEvPhPKbmPKNS_12ValidityMaskEPNS_14BaseStatisticsE.exit, label %.lr.ph.outer.i30

.lr.ph.outer.i30thread-pre-split:                 ; preds = %.thread.i34
  %i.ba = getelementptr inbounds nuw i8, ptr %.010.ph.i, i64 1
  %.pr = load ptr, ptr %i.h, align 8, !tbaa !14
  br label %.lr.ph.outer.i30

.lr.ph.outer.i30:                                 ; preds = %bb.l, %.lr.ph.outer.i30thread-pre-split
  %i.bb = phi ptr [ %.pr, %.lr.ph.outer.i30thread-pre-split ], [ %i.i, %bb.l ] ; 9 uses
  %.010.ph.i = phi ptr [ %i.ba, %.lr.ph.outer.i30thread-pre-split ], [ %i.e, %bb.l ] ; 3 uses
  %.0258.ph.i = phi i64 [ %i.ht, %.lr.ph.outer.i30thread-pre-split ], [ 0, %bb.l ] ; 18 uses
  %.0267.ph.i = phi i1 [ %.us-phi48, %.lr.ph.outer.i30thread-pre-split ], [ false, %bb.l ]
  %.0276.ph.i = phi i32 [ %.us-phi, %.lr.ph.outer.i30thread-pre-split ], [ 0, %bb.l ]
  %.not.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i, label %.lr.ph.i31.us.preheader, label %.lr.ph.i31.preheader

.lr.ph.i31.preheader:                             ; preds = %.lr.ph.outer.i30
  %i.bc = lshr i64 %.0258.ph.i, 6
  %i.bd = and i64 %.0258.ph.i, 63
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bc
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !7
  %i.bg = shl nuw i64 1, %i.bd
  %i.bh = and i64 %i.bf, %i.bg
  %.not4.i = icmp eq i64 %i.bh, 0
  br i1 %.not4.i, label %bb.m, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

.lr.ph.i31.us.preheader:                          ; preds = %.lr.ph.outer.i30
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0258.ph.i
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !230, !range !312, !noundef !91 ; 2 uses
  %i.bk = add nuw i64 %.0258.ph.i, 1              ; 2 uses
  %exitcond.not.i32.us = icmp eq i64 %i.bk, %2
  br i1 %exitcond.not.i32.us, label %._crit_edge.i33, label %.lr.ph.i31.us.1

.lr.ph.i31.us.1:                                  ; preds = %.lr.ph.i31.us.preheader
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !230, !range !312, !noundef !91
  %i.bn = shl nuw nsw i8 %i.bm, 1
  %i.bo = or disjoint i8 %i.bj, %i.bn             ; 2 uses
  %i.bp = add nuw i64 %.0258.ph.i, 2              ; 2 uses
  %exitcond.not.i32.us.1 = icmp eq i64 %i.bp, %2
  br i1 %exitcond.not.i32.us.1, label %._crit_edge.i33, label %.lr.ph.i31.us.2

.lr.ph.i31.us.2:                                  ; preds = %.lr.ph.i31.us.1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !230, !range !312, !noundef !91
  %i.bs = shl nuw nsw i8 %i.br, 2
  %i.bt = or disjoint i8 %i.bo, %i.bs             ; 2 uses
  %i.bu = add nuw i64 %.0258.ph.i, 3              ; 2 uses
  %exitcond.not.i32.us.2 = icmp eq i64 %i.bu, %2
  br i1 %exitcond.not.i32.us.2, label %._crit_edge.i33, label %.lr.ph.i31.us.3

.lr.ph.i31.us.3:                                  ; preds = %.lr.ph.i31.us.2
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !230, !range !312, !noundef !91
  %i.bx = shl nuw nsw i8 %i.bw, 3
  %i.by = or disjoint i8 %i.bt, %i.bx             ; 2 uses
  %i.bz = add nuw i64 %.0258.ph.i, 4              ; 2 uses
  %exitcond.not.i32.us.3 = icmp eq i64 %i.bz, %2
  br i1 %exitcond.not.i32.us.3, label %._crit_edge.i33, label %.lr.ph.i31.us.4

.lr.ph.i31.us.4:                                  ; preds = %.lr.ph.i31.us.3
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !230, !range !312, !noundef !91
  %i.cc = shl nuw nsw i8 %i.cb, 4
  %i.cd = or disjoint i8 %i.by, %i.cc             ; 2 uses
  %i.ce = add nuw i64 %.0258.ph.i, 5              ; 2 uses
  %exitcond.not.i32.us.4 = icmp eq i64 %i.ce, %2
  br i1 %exitcond.not.i32.us.4, label %._crit_edge.i33, label %.lr.ph.i31.us.5

.lr.ph.i31.us.5:                                  ; preds = %.lr.ph.i31.us.4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !230, !range !312, !noundef !91
  %i.ch = shl nuw nsw i8 %i.cg, 5
  %i.ci = or i8 %i.cd, %i.ch                      ; 2 uses
  %i.cj = add nuw i64 %.0258.ph.i, 6              ; 2 uses
  %exitcond.not.i32.us.5 = icmp eq i64 %i.cj, %2
  br i1 %exitcond.not.i32.us.5, label %._crit_edge.i33, label %.lr.ph.i31.us.6

.lr.ph.i31.us.6:                                  ; preds = %.lr.ph.i31.us.5
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !230, !range !312, !noundef !91
  %i.cm = shl nuw nsw i8 %i.cl, 6
  %i.cn = or i8 %i.ci, %i.cm                      ; 2 uses
  %i.co = add nuw i64 %.0258.ph.i, 7              ; 3 uses
  %exitcond.not.i32.us.6 = icmp eq i64 %i.co, %2
  br i1 %exitcond.not.i32.us.6, label %._crit_edge.i33, label %.thread.i34.split.us

.thread.i34.split.us:                             ; preds = %.lr.ph.i31.us.6
  %i.cp = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !230, !range !312, !noundef !91 ; 3 uses
  %i.cr = shl nuw i8 %i.cq, 7
  %i.cs = or i8 %i.cn, %i.cr
  %i.ct = zext nneg i8 %i.cq to i32
  %5 = trunc nuw i8 %i.cq to i1
  br label %.thread.i34

._crit_edge.i33:                                  ; preds = %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %.lr.ph.i31.us.preheader, %.lr.ph.i31.us.1, %.lr.ph.i31.us.2, %.lr.ph.i31.us.3, %.lr.ph.i31.us.4, %.lr.ph.i31.us.5, %.lr.ph.i31.us.6
  %.us-phi51 = phi i8 [ %i.bj, %.lr.ph.i31.us.preheader ], [ %i.cn, %.lr.ph.i31.us.6 ], [ %i.ci, %.lr.ph.i31.us.5 ], [ %i.cd, %.lr.ph.i31.us.4 ], [ %i.by, %.lr.ph.i31.us.3 ], [ %i.bt, %.lr.ph.i31.us.2 ], [ %i.bo, %.lr.ph.i31.us.1 ], [ %i.ha, %bb.s ], [ %i.gj, %bb.r ], [ %i.fs, %bb.q ], [ %i.fb, %bb.p ], [ %i.ek, %bb.o ], [ %i.dt, %bb.n ], [ %i.dc, %bb.m ]
  store i8 %.us-phi51, ptr %.010.ph.i, align 1, !tbaa !177
  br label %_ZN6duckdb7roaringL15BitPackBooleansILb0ELb1EEEvPhPKbmPKNS_12ValidityMaskEPNS_14BaseStatisticsE.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %.lr.ph.i31.preheader
  %i.cu = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0258.ph.i
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !230, !range !312, !noundef !91
  %i.cw = zext nneg i8 %i.cv to i32
  br label %bb.m

bb.m:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, %.lr.ph.i31.preheader
  %.0.i2.i = phi i32 [ 1, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i ], [ 0, %.lr.ph.i31.preheader ] ; 2 uses
  %i.cx = phi i32 [ %i.cw, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i ], [ %.0276.ph.i, %.lr.ph.i31.preheader ] ; 3 uses
  %i.cy = and i32 %i.cx, %.0.i2.i
  %i.cz = xor i32 %.0.i2.i, 1
  %i.da = select i1 %.0267.ph.i, i32 %i.cz, i32 0
  %i.db = or i32 %i.cy, %i.da
  %i.dc = trunc nuw nsw i32 %i.db to i8           ; 2 uses
  %.not = icmp eq i32 %i.cx, 0
  %i.dd = add nuw i64 %.0258.ph.i, 1              ; 4 uses
  %exitcond.not.i32 = icmp eq i64 %i.dd, %2
  br i1 %exitcond.not.i32, label %._crit_edge.i33, label %.lr.ph.i31.1

.lr.ph.i31.1:                                     ; preds = %bb.m
  %i.de = lshr i64 %i.dd, 6
  %i.df = and i64 %i.dd, 63
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.de
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !7
  %i.di = shl nuw i64 1, %i.df
  %i.dj = and i64 %i.dh, %i.di
  %.not4.i.1 = icmp eq i64 %i.dj, 0
  br i1 %.not4.i.1, label %bb.n, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.1: ; preds = %.lr.ph.i31.1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.dd
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !230, !range !312, !noundef !91
  %i.dm = zext nneg i8 %i.dl to i32
  br label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.1, %.lr.ph.i31.1
  %.0.i2.i.1 = phi i32 [ 1, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.1 ], [ 0, %.lr.ph.i31.1 ] ; 2 uses
  %i.dn = phi i32 [ %i.dm, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.1 ], [ %i.cx, %.lr.ph.i31.1 ] ; 3 uses
  %i.do = and i32 %i.dn, %.0.i2.i.1
  %i.dp = xor i32 %.0.i2.i.1, 1
  %i.dq = select i1 %.not, i32 0, i32 %i.dp
  %i.dr = or i32 %i.do, %i.dq
  %.tr = trunc nuw nsw i32 %i.dr to i8
  %i.ds = shl nuw nsw i8 %.tr, 1
  %i.dt = or i8 %i.ds, %i.dc                      ; 2 uses
  %.not117 = icmp eq i32 %i.dn, 0
  %i.du = add nuw i64 %.0258.ph.i, 2              ; 4 uses
  %exitcond.not.i32.1 = icmp eq i64 %i.du, %2
  br i1 %exitcond.not.i32.1, label %._crit_edge.i33, label %.lr.ph.i31.2

.lr.ph.i31.2:                                     ; preds = %bb.n
  %i.dv = lshr i64 %i.du, 6
  %i.dw = and i64 %i.du, 63
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.dv
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !7
  %i.dz = shl nuw i64 1, %i.dw
  %i.ea = and i64 %i.dy, %i.dz
  %.not4.i.2 = icmp eq i64 %i.ea, 0
  br i1 %.not4.i.2, label %bb.o, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.2

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.2: ; preds = %.lr.ph.i31.2
  %i.eb = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.du
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !230, !range !312, !noundef !91
  %i.ed = zext nneg i8 %i.ec to i32
  br label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.2, %.lr.ph.i31.2
  %.0.i2.i.2 = phi i32 [ 1, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.2 ], [ 0, %.lr.ph.i31.2 ] ; 2 uses
  %i.ee = phi i32 [ %i.ed, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.2 ], [ %i.dn, %.lr.ph.i31.2 ] ; 3 uses
  %i.ef = and i32 %i.ee, %.0.i2.i.2
  %i.eg = xor i32 %.0.i2.i.2, 1
  %i.eh = select i1 %.not117, i32 0, i32 %i.eg
  %i.ei = or i32 %i.ef, %i.eh
  %.tr118 = trunc nuw nsw i32 %i.ei to i8
  %i.ej = shl nuw nsw i8 %.tr118, 2
  %i.ek = or i8 %i.dt, %i.ej                      ; 2 uses
  %.not119 = icmp eq i32 %i.ee, 0
  %i.el = add nuw i64 %.0258.ph.i, 3              ; 4 uses
  %exitcond.not.i32.2 = icmp eq i64 %i.el, %2
  br i1 %exitcond.not.i32.2, label %._crit_edge.i33, label %.lr.ph.i31.3

.lr.ph.i31.3:                                     ; preds = %bb.o
  %i.em = lshr i64 %i.el, 6
  %i.en = and i64 %i.el, 63
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.em
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !7
  %i.eq = shl nuw i64 1, %i.en
  %i.er = and i64 %i.ep, %i.eq
  %.not4.i.3 = icmp eq i64 %i.er, 0
  br i1 %.not4.i.3, label %bb.p, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.3

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.3: ; preds = %.lr.ph.i31.3
  %i.es = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.el
  %i.et = load i8, ptr %i.es, align 1, !tbaa !230, !range !312, !noundef !91
  %i.eu = zext nneg i8 %i.et to i32
  br label %bb.p

bb.p:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.3, %.lr.ph.i31.3
  %.0.i2.i.3 = phi i32 [ 1, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.3 ], [ 0, %.lr.ph.i31.3 ] ; 2 uses
  %i.ev = phi i32 [ %i.eu, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.3 ], [ %i.ee, %.lr.ph.i31.3 ] ; 3 uses
  %i.ew = and i32 %i.ev, %.0.i2.i.3
  %i.ex = xor i32 %.0.i2.i.3, 1
  %i.ey = select i1 %.not119, i32 0, i32 %i.ex
  %i.ez = or i32 %i.ew, %i.ey
  %.tr120 = trunc nuw nsw i32 %i.ez to i8
  %i.fa = shl nuw nsw i8 %.tr120, 3
  %i.fb = or i8 %i.ek, %i.fa                      ; 2 uses
  %.not121 = icmp eq i32 %i.ev, 0
  %i.fc = add nuw i64 %.0258.ph.i, 4              ; 4 uses
  %exitcond.not.i32.3 = icmp eq i64 %i.fc, %2
  br i1 %exitcond.not.i32.3, label %._crit_edge.i33, label %.lr.ph.i31.4

.lr.ph.i31.4:                                     ; preds = %bb.p
  %i.fd = lshr i64 %i.fc, 6
  %i.fe = and i64 %i.fc, 63
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.fd
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !7
  %i.fh = shl nuw i64 1, %i.fe
  %i.fi = and i64 %i.fg, %i.fh
  %.not4.i.4 = icmp eq i64 %i.fi, 0
  br i1 %.not4.i.4, label %bb.q, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.4

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.4: ; preds = %.lr.ph.i31.4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.fc
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !230, !range !312, !noundef !91
  %i.fl = zext nneg i8 %i.fk to i32
  br label %bb.q

bb.q:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.4, %.lr.ph.i31.4
  %.0.i2.i.4 = phi i32 [ 1, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.4 ], [ 0, %.lr.ph.i31.4 ] ; 2 uses
  %i.fm = phi i32 [ %i.fl, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.4 ], [ %i.ev, %.lr.ph.i31.4 ] ; 3 uses
  %i.fn = and i32 %i.fm, %.0.i2.i.4
  %i.fo = xor i32 %.0.i2.i.4, 1
  %i.fp = select i1 %.not121, i32 0, i32 %i.fo
  %i.fq = or i32 %i.fn, %i.fp
  %.tr122 = trunc nuw nsw i32 %i.fq to i8
  %i.fr = shl nuw nsw i8 %.tr122, 4
  %i.fs = or i8 %i.fb, %i.fr                      ; 2 uses
  %.not123 = icmp eq i32 %i.fm, 0
  %i.ft = add nuw i64 %.0258.ph.i, 5              ; 4 uses
  %exitcond.not.i32.4 = icmp eq i64 %i.ft, %2
  br i1 %exitcond.not.i32.4, label %._crit_edge.i33, label %.lr.ph.i31.5

.lr.ph.i31.5:                                     ; preds = %bb.q
  %i.fu = lshr i64 %i.ft, 6
  %i.fv = and i64 %i.ft, 63
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.fu
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !7
  %i.fy = shl nuw i64 1, %i.fv
  %i.fz = and i64 %i.fx, %i.fy
  %.not4.i.5 = icmp eq i64 %i.fz, 0
  br i1 %.not4.i.5, label %bb.r, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.5

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.5: ; preds = %.lr.ph.i31.5
  %i.ga = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ft
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !230, !range !312, !noundef !91
  %i.gc = zext nneg i8 %i.gb to i32
  br label %bb.r

bb.r:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.5, %.lr.ph.i31.5
  %.0.i2.i.5 = phi i32 [ 1, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.5 ], [ 0, %.lr.ph.i31.5 ] ; 2 uses
  %i.gd = phi i32 [ %i.gc, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.5 ], [ %i.fm, %.lr.ph.i31.5 ] ; 3 uses
  %i.ge = and i32 %i.gd, %.0.i2.i.5
  %i.gf = xor i32 %.0.i2.i.5, 1
  %i.gg = select i1 %.not123, i32 0, i32 %i.gf
  %i.gh = or i32 %i.ge, %i.gg
  %.tr124 = trunc nuw nsw i32 %i.gh to i8
  %i.gi = shl nuw nsw i8 %.tr124, 5
  %i.gj = or i8 %i.fs, %i.gi                      ; 2 uses
  %.not125 = icmp eq i32 %i.gd, 0
  %i.gk = add nuw i64 %.0258.ph.i, 6              ; 4 uses
  %exitcond.not.i32.5 = icmp eq i64 %i.gk, %2
  br i1 %exitcond.not.i32.5, label %._crit_edge.i33, label %.lr.ph.i31.6

.lr.ph.i31.6:                                     ; preds = %bb.r
  %i.gl = lshr i64 %i.gk, 6
  %i.gm = and i64 %i.gk, 63
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.gl
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !7
  %i.gp = shl nuw i64 1, %i.gm
  %i.gq = and i64 %i.go, %i.gp
  %.not4.i.6 = icmp eq i64 %i.gq, 0
  br i1 %.not4.i.6, label %bb.s, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.6

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.6: ; preds = %.lr.ph.i31.6
  %i.gr = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.gk
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !230, !range !312, !noundef !91
  %i.gt = zext nneg i8 %i.gs to i32
  br label %bb.s

bb.s:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.6, %.lr.ph.i31.6
  %.0.i2.i.6 = phi i32 [ 1, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.6 ], [ 0, %.lr.ph.i31.6 ] ; 2 uses
  %i.gu = phi i32 [ %i.gt, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.6 ], [ %i.gd, %.lr.ph.i31.6 ] ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb7roaring13AppendToArrayILb0EEEvRNS0_25ContainerCompressionStateEbt:bb.a
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !336

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec85 = and i64 %wide.trip.count, 252        ; 3 uses
  %broadcast.splatinsert86 = insertelement <4 x i8> poison, i8 %i.ab, i64 0
  %broadcast.splat87 = shufflevector <4 x i8> %broadcast.splatinsert86, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.bk = trunc nuw i64 %vec.epilog.resume.val to i8
  %broadcast.splatinsert88 = insertelement <4 x i8> poison, i8 %i.bk, i64 0
  %broadcast.splat89 = shufflevector <4 x i8> %broadcast.splatinsert88, <4 x i8> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i8> %broadcast.splat89, <i8 0, i8 1, i8 2, i8 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index90 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next92, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind91 = phi <4 x i8> [ %induction, %vec.epilog.ph ], [ %vec.ind.next93, %vec.epilog.vector.body ] ; 2 uses
  %i.bl = add <4 x i8> %vec.ind91, %broadcast.splat87
  %i.bm = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index90
  store <4 x i8> %i.bl, ptr %i.bm, align 1, !tbaa !177
  %index.next92 = add nuw i64 %index90, 4         ; 2 uses
  %vec.ind.next93 = add <4 x i8> %vec.ind91, splat (i8 4)
  %i.bn = icmp eq i64 %index.next92, %n.vec85
  br i1 %i.bn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !344

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n94 = icmp eq i64 %n.vec85, %wide.trip.count
  br i1 %cmp.n94, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv69.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec85, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.d
  %i.bo = lshr i32 %i.t, 8
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bp ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !177
  %i.bs = trunc i16 %i.y to i8
  %i.bt = add i8 %i.br, %i.bs
  store i8 %i.bt, ptr %i.bq, align 1, !tbaa !177
  %i.bu = add i16 %i.z, %.05059                   ; 3 uses
  %i.bv = zext i16 %i.bu to i32
  %i.bw = icmp ult i16 %i.bu, %2
  br i1 %i.bw, label %bb.d, label %._crit_edge62, !llvm.loop !345

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %vec.epilog.scalar.ph ], [ %indvars.iv69.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.bx = trunc i64 %indvars.iv69 to i8
  %i.by = add i8 %i.bx, %i.ab
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv69
  store i8 %i.by, ptr %gep, align 1, !tbaa !177
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next70, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !346

._crit_edge62:                                    ; preds = %._crit_edge
  %i.bz = icmp samesign ugt i32 %i.g, 7
  br i1 %i.bz, label %.loopexit, label %iter.check112

iter.check112:                                    ; preds = %._crit_edge62
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.a
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !326
  %i.cd = zext i16 %i.d to i64
  %wide.trip.count75 = zext i16 %2 to i64         ; 6 uses
  %invariant.gep80 = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.cd ; 3 uses
  %min.iters.check95 = icmp ult i16 %2, 4
  br i1 %min.iters.check95, label %vec.epilog.scalar.ph113.preheader, label %vector.main.loop.iter.check96

vector.main.loop.iter.check96:                    ; preds = %iter.check112
  %min.iters.check97 = icmp ult i16 %2, 16
  br i1 %min.iters.check97, label %vec.epilog.ph116, label %vector.ph98

vector.ph98:                                      ; preds = %vector.main.loop.iter.check96
  %n.mod.vf99 = and i64 %wide.trip.count75, 12
  %n.vec100 = and i64 %wide.trip.count75, 65520   ; 4 uses
  %broadcast.splatinsert101 = insertelement <8 x i16> poison, i16 %i.j, i64 0
  %broadcast.splat102 = shufflevector <8 x i16> %broadcast.splatinsert101, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <8 x i16> splat (i16 8), %broadcast.splat102
  br label %vector.body103

vector.body103:                                   ; preds = %vector.body103, %vector.ph98
  %index104 = phi i64 [ 0, %vector.ph98 ], [ %index.next107, %vector.body103 ] ; 2 uses
  %vec.ind105 = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph98 ], [ %vec.ind.next108, %vector.body103 ] ; 3 uses
  %i.ce = add <8 x i16> %broadcast.splat102, %vec.ind105
  %.reass = add <8 x i16> %vec.ind105, %invariant.op
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep80, i64 %index104 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store <8 x i16> %i.ce, ptr %i.cf, align 2, !tbaa !325
  store <8 x i16> %.reass, ptr %i.cg, align 2, !tbaa !325
  %index.next107 = add nuw i64 %index104, 16      ; 2 uses
  %vec.ind.next108 = add <8 x i16> %vec.ind105, splat (i16 16)
  %i.ch = icmp eq i64 %index.next107, %n.vec100
  br i1 %i.ch, label %middle.block109, label %vector.body103, !llvm.loop !347

middle.block109:                                  ; preds = %vector.body103
  %cmp.n110 = icmp eq i64 %n.vec100, %wide.trip.count75
  br i1 %cmp.n110, label %.loopexit, label %vec.epilog.iter.check114

vec.epilog.iter.check114:                         ; preds = %middle.block109
  %min.epilog.iters.check115 = icmp eq i64 %n.mod.vf99, 0
  br i1 %min.epilog.iters.check115, label %vec.epilog.scalar.ph113.preheader, label %vec.epilog.ph116, !prof !341

vec.epilog.ph116:                                 ; preds = %vector.main.loop.iter.check96, %vec.epilog.iter.check114
  %vec.epilog.resume.val111 = phi i64 [ %n.vec100, %vec.epilog.iter.check114 ], [ 0, %vector.main.loop.iter.check96 ] ; 2 uses
  %n.vec118 = and i64 %wide.trip.count75, 65532   ; 3 uses
  %broadcast.splatinsert119 = insertelement <4 x i16> poison, i16 %i.j, i64 0
  %broadcast.splat120 = shufflevector <4 x i16> %broadcast.splatinsert119, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.ci = trunc nuw i64 %vec.epilog.resume.val111 to i16
  %broadcast.splatinsert121 = insertelement <4 x i16> poison, i16 %i.ci, i64 0
  %broadcast.splat122 = shufflevector <4 x i16> %broadcast.splatinsert121, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction123 = or disjoint <4 x i16> %broadcast.splat122, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body124

vec.epilog.vector.body124:                        ; preds = %vec.epilog.vector.body124, %vec.epilog.ph116
  %index125 = phi i64 [ %vec.epilog.resume.val111, %vec.epilog.ph116 ], [ %index.next127, %vec.epilog.vector.body124 ] ; 2 uses
  %vec.ind126 = phi <4 x i16> [ %induction123, %vec.epilog.ph116 ], [ %vec.ind.next128, %vec.epilog.vector.body124 ] ; 2 uses
  %i.cj = add <4 x i16> %broadcast.splat120, %vec.ind126
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep80, i64 %index125
  store <4 x i16> %i.cj, ptr %i.ck, align 2, !tbaa !325
  %index.next127 = add nuw i64 %index125, 4       ; 2 uses
  %vec.ind.next128 = add <4 x i16> %vec.ind126, splat (i16 4)
  %i.cl = icmp eq i64 %index.next127, %n.vec118
  br i1 %i.cl, label %vec.epilog.middle.block129, label %vec.epilog.vector.body124, !llvm.loop !348

vec.epilog.middle.block129:                       ; preds = %vec.epilog.vector.body124
  %cmp.n130 = icmp eq i64 %n.vec118, %wide.trip.count75
  br i1 %cmp.n130, label %.loopexit, label %vec.epilog.scalar.ph113.preheader

vec.epilog.scalar.ph113.preheader:                ; preds = %iter.check112, %vec.epilog.iter.check114, %vec.epilog.middle.block129
  %indvars.iv72.ph = phi i64 [ 0, %iter.check112 ], [ %n.vec100, %vec.epilog.iter.check114 ], [ %n.vec118, %vec.epilog.middle.block129 ]
  br label %vec.epilog.scalar.ph113

vec.epilog.scalar.ph113:                          ; preds = %vec.epilog.scalar.ph113.preheader, %vec.epilog.scalar.ph113
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %vec.epilog.scalar.ph113 ], [ %indvars.iv72.ph, %vec.epilog.scalar.ph113.preheader ] ; 3 uses
  %i.cm = trunc i64 %indvars.iv72 to i16
  %i.cn = add i16 %i.j, %i.cm
  %gep81 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep80, i64 %indvars.iv72
  store i16 %i.cn, ptr %gep81, align 2, !tbaa !325
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %exitcond76.not = icmp eq i64 %indvars.iv.next73, %wide.trip.count75
  br i1 %exitcond76.not, label %.loopexit, label %vec.epilog.scalar.ph113, !llvm.loop !349

.loopexit:                                        ; preds = %vec.epilog.scalar.ph113, %middle.block109, %vec.epilog.middle.block129, %._crit_edge62, %bb.c
  %i.co = load i16, ptr %i.c, align 2, !tbaa !325
  %i.cp = add i16 %i.co, %2
  store i16 %i.cp, ptr %i.c, align 2, !tbaa !325
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6duckdb7roaring25ContainerCompressionState11OverrideRunERPhm(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(936) initializes((928, 936)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, i64 noundef %2) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 928
  store ptr @_ZN6duckdb7roaring9AppendRunERNS0_25ContainerCompressionStateEbt, ptr %i.a, align 8, !tbaa !335
  %i.b = icmp ugt i64 %2, 3
  %i.c = load ptr, ptr %1, align 8, !tbaa !229    ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.c, align 1
  %i.d = load ptr, ptr %1, align 8, !tbaa !229    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.d, ptr %i.e, align 8, !tbaa !330
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = add i64 %i.g, 3
  %i.i = and i64 %i.h, -4
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  store ptr %i.j, ptr %1, align 8, !tbaa !229
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink9 = phi i64 [ 16, %bb.c ], [ 24, %bb.b ]
  %.sink = phi ptr [ %i.j, %bb.c ], [ %i.f, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9
  store ptr %.sink, ptr %i.k, align 8, !tbaa !350
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb7roaring9AppendRunERNS0_25ContainerCompressionStateEbt(ptr noundef nonnull align 8 dereferenceable(936) %0, i1 noundef zeroext %1, i16 noundef zeroext %2) #7 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !324  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i16, ptr %i.c, align 4, !tbaa !331  ; 7 uses
  %.not = xor i1 %1, true
  %i.e = zext i16 %i.b to i32                     ; 2 uses
  %i.f = icmp ult i16 %i.b, 124                   ; 2 uses
  %or.cond = select i1 %.not, i1 %i.f, i1 false
  %i.g = icmp ne i16 %i.d, 0                      ; 2 uses
  %or.cond4 = select i1 %or.cond, i1 %i.g, i1 false
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !312  ; 2 uses
  br i1 %or.cond4, label %4, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %3 = trunc nuw i8 %i.i to i1
  br label %bb.e

4:                                                ; preds = %bb.a
  %.not42 = icmp eq i8 %i.i, 0
  br i1 %.not42, label %bb.e, label %bb.b

bb.b:                                             ; preds = %4
  %i.j = icmp samesign ult i16 %i.b, 4
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !328
  %i.m = zext nneg i16 %i.b to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %i.o = load i16, ptr %i.n, align 2, !tbaa !351
  %i.p = xor i16 %i.o, -1
  %i.q = add i16 %i.d, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  store i16 %i.q, ptr %i.r, align 2, !tbaa !353
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = trunc i16 %i.d to i8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !329
  %i.v = shl nuw nsw i32 %i.e, 1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store i8 %i.s, ptr %i.y, align 1, !tbaa !177
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !330
  %i.ab = lshr i16 %i.d, 8
  %i.ac = zext nneg i16 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ac ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !177
  %i.af = add i8 %i.ae, 1
  store i8 %i.af, ptr %i.ad, align 1, !tbaa !177
  %i.ag = load i16, ptr %i.a, align 8, !tbaa !324
  %i.ah = add i16 %i.ag, 1
  store i16 %i.ah, ptr %i.a, align 8, !tbaa !324
  br label %bb.i

bb.e:                                             ; preds = %._crit_edge, %4
  %.not43.not = phi i1 [ %3, %._crit_edge ], [ false, %4 ]
  %or.cond7 = select i1 %1, i1 %i.f, i1 false
  %or.cond7.not = xor i1 %or.cond7, true
  %or.cond46.not = select i1 %i.g, i1 %.not43.not, i1 false
  %or.cond46.not.a = select i1 %or.cond7.not, i1 true, i1 %or.cond46.not
  br i1 %or.cond46.not.a, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp samesign ult i16 %i.b, 4
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !328
  %i.al = zext nneg i16 %i.b to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.al
  store i16 %i.d, ptr %i.am, align 2, !tbaa !351
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.an = trunc i16 %i.d to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !329
  %i.aq = shl nuw nsw i32 %i.e, 1
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ar
  store i8 %i.an, ptr %i.as, align 1, !tbaa !177
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !330
  %i.av = lshr i16 %i.d, 8
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aw ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !177
  %i.az = add i8 %i.ay, 1
  store i8 %i.az, ptr %i.ax, align 1, !tbaa !177
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6duckdb7roaring25ContainerCompressionState20OverrideUncompressedERPh(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(936) initializes((912, 920), (928, 936)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 928
  store ptr @_ZN6duckdb7roaring12AppendBitsetERNS0_25ContainerCompressionStateEbt, ptr %i.a, align 8, !tbaa !335
  %i.b = load ptr, ptr %1, align 8, !tbaa !229
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = add i64 %i.c, 7
  %i.e = and i64 %i.d, -8
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  store ptr %i.f, ptr %1, align 8, !tbaa !229
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 912
  store ptr %i.f, ptr %i.g, align 8, !tbaa !354
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb7roaring12AppendBitsetERNS0_25ContainerCompressionStateEbt(ptr noundef nonnull align 8 dereferenceable(936) %0, i1 noundef zeroext %1, i16 noundef zeroext %2) #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::ValidityMask", align 8 ; 9 uses
  br i1 %1, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !354
  store ptr %i.b, ptr %3, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 2048, ptr %i.d, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i16, ptr %i.e, align 4, !tbaa !331
  %i.g = zext i16 %i.f to i64                     ; 2 uses
  %i.h = zext i16 %2 to i64
  %i.i = add nuw nsw i64 %i.g, %i.h
  invoke void @_ZN6duckdb7roaring15SetInvalidRangeERNS_12ValidityMaskEmm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.g, i64 noundef %i.i)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !172  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.l, align 8, !tbaa !173
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !175
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !149
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #26, !inline_history !179
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !149
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #26, !inline_history !179
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !177
  %.not.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.o, %bb.g ], [ %i.y, %bb.h ]
  %i.z = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.z, label %bb.i, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, !prof !178

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #26
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit

_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit:    ; preds = %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.k

bb.j:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb21TemplatedValidityMaskImED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %i.aa

bb.k:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6duckdb7roaring25ContainerCompressionState8FinalizeEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(936) initializes((920, 921)) %0) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i16, ptr %i.a, align 4, !tbaa !331  ; 3 uses
  %.not = icmp ne i16 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i8, ptr %i.c, align 8, !range !312
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.g = load i16, ptr %i.f, align 8, !tbaa !324  ; 4 uses
  %i.h = icmp ult i16 %i.g, 124
  br i1 %i.h, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.i = icmp samesign ult i16 %i.g, 4
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !328
  %i.l = zext nneg i16 %i.g to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = load i16, ptr %i.m, align 2, !tbaa !351
  %i.o = sub i16 %i.b, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store i16 %i.o, ptr %i.p, align 2, !tbaa !353
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = trunc i16 %i.b to i8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !329
  %i.t = shl nuw nsw i16 %i.g, 1
  %i.u = zext nneg i16 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store i8 %i.q, ptr %i.w, align 1, !tbaa !177
  %i.x = load i16, ptr %i.a, align 4, !tbaa !331  ; 2 uses
  %.not4 = icmp eq i16 %i.x, 2048
  br i1 %.not4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !330
  %i.aa = lshr i16 %i.x, 8
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ab ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !177
  %i.ae = add i8 %i.ad, 1
  store i8 %i.ae, ptr %i.ac, align 1, !tbaa !177
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.af = load i16, ptr %i.f, align 8, !tbaa !324
  %i.ag = add i16 %i.af, 1
  store i16 %i.ag, ptr %i.f, align 8, !tbaa !324
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b, %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 920
  store i8 1, ptr %i.ah, align 8, !tbaa !333
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 1, -65024) i32 @_ZN6duckdb7roaring25ContainerCompressionState9GetResultEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(936) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !354
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i16, ptr %i.c, align 4, !tbaa !331  ; 4 uses
  br i1 %.not, label %bb.b, label %_ZN6duckdb7roaring17ContainerMetadata14CreateMetadataEtttt.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 114
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.g = load i16, ptr %i.f, align 4, !tbaa !325  ; 6 uses
  %i.h = load i16, ptr %i.e, align 2, !tbaa !325  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load i16, ptr %i.i, align 8, !tbaa !324  ; 5 uses
  %i.k = icmp ult i16 %i.g, 248
  %i.l = icmp ult i16 %i.h, 248
  %i.m = icmp ult i16 %i.j, 124
  %i.n = or i1 %i.k, %i.l
  %or.cond.i = or i1 %i.n, %i.m
  br i1 %or.cond.i, label %bb.c, label %_ZN6duckdb7roaring17ContainerMetadata14CreateMetadataEtttt.exit

end_hunk_1
begin_hunk_2_@_ZN6duckdb7roaring20RoaringCompressState8CompressILNS_12PhysicalTypeE1EEEvRNS_6VectorEm:bb.a
  store i8 %.lcssa59.ph, ptr %.0201.ph.i, align 1, !tbaa !177
  br label %_ZN6duckdb7roaringL15BitPackBooleansILb1ELb1EEEvPhPKbmPKNS_12ValidityMaskEPNS_14BaseStatisticsE.exit

bb.h:                                             ; preds = %.outer.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !230, !range !312, !noundef !91 ; 4 uses
  %i.y = trunc nuw i8 %i.x to i1                  ; 2 uses
  %i.z = trunc nuw i8 %.in.sroa.speculated.i.i.i.i to i1
  %not..i.i.i.i.i.i.1 = xor i1 %i.y, true
  %i.aa = select i1 %not..i.i.i.i.i.i.1, i1 %i.z, i1 false
  %.in.sroa.speculated.i.i.i.i.1 = select i1 %i.aa, i8 %i.x, i8 %.in.sroa.speculated.i.i.i.i ; 3 uses
  store i8 %.in.sroa.speculated.i.i.i.i.1, ptr %i.m, align 1, !tbaa !230
  %i.ab = trunc nuw i8 %.in6.sroa.speculated.i.i.i.i to i1
  %not..i.i.i.i.i.1 = xor i1 %i.ab, true
  %i.ac = and i1 %not..i.i.i.i.i.1, %i.y
  %.in6.sroa.speculated.i.i.i.i.1 = select i1 %i.ac, i8 %i.x, i8 %.in6.sroa.speculated.i.i.i.i ; 3 uses
  store i8 %.in6.sroa.speculated.i.i.i.i.1, ptr %i.n, align 1, !tbaa !230
  %i.ad = shl nuw nsw i8 %i.x, 1
  %i.ae = or disjoint i8 %i.p, %i.ad              ; 2 uses
  %i.af = or disjoint i64 %.04.ph.i, 2            ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.af, %2
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !230, !range !312, !noundef !91 ; 4 uses
  %i.ai = trunc nuw i8 %i.ah to i1                ; 2 uses
  %i.aj = trunc nuw i8 %.in.sroa.speculated.i.i.i.i.1 to i1
  %not..i.i.i.i.i.i.2 = xor i1 %i.ai, true
  %i.ak = select i1 %not..i.i.i.i.i.i.2, i1 %i.aj, i1 false
  %.in.sroa.speculated.i.i.i.i.2 = select i1 %i.ak, i8 %i.ah, i8 %.in.sroa.speculated.i.i.i.i.1 ; 3 uses
  store i8 %.in.sroa.speculated.i.i.i.i.2, ptr %i.m, align 1, !tbaa !230
  %i.al = trunc nuw i8 %.in6.sroa.speculated.i.i.i.i.1 to i1
  %not..i.i.i.i.i.2 = xor i1 %i.al, true
  %i.am = and i1 %not..i.i.i.i.i.2, %i.ai
  %.in6.sroa.speculated.i.i.i.i.2 = select i1 %i.am, i8 %i.ah, i8 %.in6.sroa.speculated.i.i.i.i.1 ; 3 uses
  store i8 %.in6.sroa.speculated.i.i.i.i.2, ptr %i.n, align 1, !tbaa !230
  %i.an = shl nuw nsw i8 %i.ah, 2
  %i.ao = or disjoint i8 %i.ae, %i.an             ; 2 uses
  %i.ap = or disjoint i64 %.04.ph.i, 3            ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %i.ap, %2
  br i1 %exitcond.not.i.2, label %._crit_edge.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !230, !range !312, !noundef !91 ; 4 uses
  %i.as = trunc nuw i8 %i.ar to i1                ; 2 uses
  %i.at = trunc nuw i8 %.in.sroa.speculated.i.i.i.i.2 to i1
  %not..i.i.i.i.i.i.3 = xor i1 %i.as, true
  %i.au = select i1 %not..i.i.i.i.i.i.3, i1 %i.at, i1 false
  %.in.sroa.speculated.i.i.i.i.3 = select i1 %i.au, i8 %i.ar, i8 %.in.sroa.speculated.i.i.i.i.2 ; 3 uses
  store i8 %.in.sroa.speculated.i.i.i.i.3, ptr %i.m, align 1, !tbaa !230
  %i.av = trunc nuw i8 %.in6.sroa.speculated.i.i.i.i.2 to i1
  %not..i.i.i.i.i.3 = xor i1 %i.av, true
  %i.aw = and i1 %not..i.i.i.i.i.3, %i.as
  %.in6.sroa.speculated.i.i.i.i.3 = select i1 %i.aw, i8 %i.ar, i8 %.in6.sroa.speculated.i.i.i.i.2 ; 3 uses
  store i8 %.in6.sroa.speculated.i.i.i.i.3, ptr %i.n, align 1, !tbaa !230
  %i.ax = shl nuw nsw i8 %i.ar, 3
  %i.ay = or disjoint i8 %i.ao, %i.ax             ; 2 uses
  %i.az = or disjoint i64 %.04.ph.i, 4            ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.az, %2
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !230, !range !312, !noundef !91 ; 4 uses
  %i.bc = trunc nuw i8 %i.bb to i1                ; 2 uses
  %i.bd = trunc nuw i8 %.in.sroa.speculated.i.i.i.i.3 to i1
  %not..i.i.i.i.i.i.4 = xor i1 %i.bc, true
  %i.be = select i1 %not..i.i.i.i.i.i.4, i1 %i.bd, i1 false
  %.in.sroa.speculated.i.i.i.i.4 = select i1 %i.be, i8 %i.bb, i8 %.in.sroa.speculated.i.i.i.i.3 ; 3 uses
  store i8 %.in.sroa.speculated.i.i.i.i.4, ptr %i.m, align 1, !tbaa !230
  %i.bf = trunc nuw i8 %.in6.sroa.speculated.i.i.i.i.3 to i1
  %not..i.i.i.i.i.4 = xor i1 %i.bf, true
  %i.bg = and i1 %not..i.i.i.i.i.4, %i.bc
  %.in6.sroa.speculated.i.i.i.i.4 = select i1 %i.bg, i8 %i.bb, i8 %.in6.sroa.speculated.i.i.i.i.3 ; 3 uses
  store i8 %.in6.sroa.speculated.i.i.i.i.4, ptr %i.n, align 1, !tbaa !230
  %i.bh = shl nuw nsw i8 %i.bb, 4
  %i.bi = or disjoint i8 %i.ay, %i.bh             ; 2 uses
  %i.bj = or disjoint i64 %.04.ph.i, 5            ; 2 uses
  %exitcond.not.i.4 = icmp eq i64 %i.bj, %2
  br i1 %exitcond.not.i.4, label %._crit_edge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !230, !range !312, !noundef !91 ; 4 uses
  %i.bm = trunc nuw i8 %i.bl to i1                ; 2 uses
  %i.bn = trunc nuw i8 %.in.sroa.speculated.i.i.i.i.4 to i1
  %not..i.i.i.i.i.i.5 = xor i1 %i.bm, true
  %i.bo = select i1 %not..i.i.i.i.i.i.5, i1 %i.bn, i1 false
  %.in.sroa.speculated.i.i.i.i.5 = select i1 %i.bo, i8 %i.bl, i8 %.in.sroa.speculated.i.i.i.i.4 ; 3 uses
  store i8 %.in.sroa.speculated.i.i.i.i.5, ptr %i.m, align 1, !tbaa !230
  %i.bp = trunc nuw i8 %.in6.sroa.speculated.i.i.i.i.4 to i1
  %not..i.i.i.i.i.5 = xor i1 %i.bp, true
  %i.bq = and i1 %not..i.i.i.i.i.5, %i.bm
  %.in6.sroa.speculated.i.i.i.i.5 = select i1 %i.bq, i8 %i.bl, i8 %.in6.sroa.speculated.i.i.i.i.4 ; 3 uses
  store i8 %.in6.sroa.speculated.i.i.i.i.5, ptr %i.n, align 1, !tbaa !230
  %i.br = shl nuw nsw i8 %i.bl, 5
  %i.bs = or i8 %i.bi, %i.br                      ; 2 uses
  %i.bt = or disjoint i64 %.04.ph.i, 6            ; 2 uses
  %exitcond.not.i.5 = icmp eq i64 %i.bt, %2
  br i1 %exitcond.not.i.5, label %._crit_edge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !230, !range !312, !noundef !91 ; 4 uses
  %i.bw = trunc nuw i8 %i.bv to i1                ; 2 uses
  %i.bx = trunc nuw i8 %.in.sroa.speculated.i.i.i.i.5 to i1
  %not..i.i.i.i.i.i.6 = xor i1 %i.bw, true
  %i.by = select i1 %not..i.i.i.i.i.i.6, i1 %i.bx, i1 false
  %.in.sroa.speculated.i.i.i.i.6 = select i1 %i.by, i8 %i.bv, i8 %.in.sroa.speculated.i.i.i.i.5 ; 3 uses
  store i8 %.in.sroa.speculated.i.i.i.i.6, ptr %i.m, align 1, !tbaa !230
  %i.bz = trunc nuw i8 %.in6.sroa.speculated.i.i.i.i.5 to i1
  %not..i.i.i.i.i.6 = xor i1 %i.bz, true
  %i.ca = and i1 %not..i.i.i.i.i.6, %i.bw
  %.in6.sroa.speculated.i.i.i.i.6 = select i1 %i.ca, i8 %i.bv, i8 %.in6.sroa.speculated.i.i.i.i.5 ; 3 uses
  store i8 %.in6.sroa.speculated.i.i.i.i.6, ptr %i.n, align 1, !tbaa !230
  %i.cb = shl nuw nsw i8 %i.bv, 6
  %i.cc = or i8 %i.bs, %i.cb                      ; 2 uses
  %i.cd = or disjoint i64 %.04.ph.i, 7            ; 2 uses
  %exitcond.not.i.6 = icmp eq i64 %i.cd, %2
  br i1 %exitcond.not.i.6, label %._crit_edge.i, label %.thread.i

.thread.i:                                        ; preds = %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !230, !range !312, !noundef !91 ; 4 uses
  %i.cg = trunc nuw i8 %i.cf to i1                ; 2 uses
  %i.ch = trunc nuw i8 %.in.sroa.speculated.i.i.i.i.6 to i1
  %not..i.i.i.i.i.i.7 = xor i1 %i.cg, true
  %i.ci = select i1 %not..i.i.i.i.i.i.7, i1 %i.ch, i1 false
  %.in.sroa.speculated.i.i.i.i.7 = select i1 %i.ci, i8 %i.cf, i8 %.in.sroa.speculated.i.i.i.i.6
  store i8 %.in.sroa.speculated.i.i.i.i.7, ptr %i.m, align 1, !tbaa !230
  %i.cj = trunc nuw i8 %.in6.sroa.speculated.i.i.i.i.6 to i1
  %not..i.i.i.i.i.7 = xor i1 %i.cj, true
  %i.ck = and i1 %not..i.i.i.i.i.7, %i.cg
  %.in6.sroa.speculated.i.i.i.i.7 = select i1 %i.ck, i8 %i.cf, i8 %.in6.sroa.speculated.i.i.i.i.6
  store i8 %.in6.sroa.speculated.i.i.i.i.7, ptr %i.n, align 1, !tbaa !230
  %i.cl = shl nuw i8 %i.cf, 7
  %i.cm = or i8 %i.cc, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %.0201.ph.i, i64 1
  store i8 %i.cm, ptr %.0201.ph.i, align 1, !tbaa !177
  %i.co = add nuw i64 %.04.ph.i, 8                ; 2 uses
  %exitcond.not16.i = icmp eq i64 %i.co, %2
  br i1 %exitcond.not16.i, label %_ZN6duckdb7roaringL15BitPackBooleansILb1ELb1EEEvPhPKbmPKNS_12ValidityMaskEPNS_14BaseStatisticsE.exit, label %.outer.i, !llvm.loop !418

bb.n:                                             ; preds = %bb.a
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #26
  br label %bb.ay

bb.o:                                             ; preds = %bb.d, %bb.b
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.p:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE14EnsureWritableEv.exit, %_ZN6duckdb7roaringL15BitPackBooleansILb1ELb1EEEvPhPKbmPKNS_12ValidityMaskEPNS_14BaseStatisticsE.exit, %bb.q, %bb.f
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.q:                                             ; preds = %bb.e
  %i.cs = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.r unwind label %bb.p       ; 4 uses

bb.r:                                             ; preds = %bb.q
  %.not48.i = icmp eq i64 %2, 0
  br i1 %.not48.i, label %_ZN6duckdb7roaringL15BitPackBooleansILb1ELb1EEEvPhPKbmPKNS_12ValidityMaskEPNS_14BaseStatisticsE.exit, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %bb.r
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 80 ; 8 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 104 ; 25 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 120 ; 25 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 81 ; 16 uses
  br label %.outer.i28

.outer.i28:                                       ; preds = %.thread.i31, %.lr.ph.i27
  %.045.ph.i = phi ptr [ %i.nd, %.thread.i31 ], [ %i.g, %.lr.ph.i27 ] ; 3 uses
  %.03043.ph.i = phi i64 [ %i.ne, %.thread.i31 ], [ 0, %.lr.ph.i27 ] ; 18 uses
  %.03142.ph.i = phi i1 [ %.us-phi49, %.thread.i31 ], [ false, %.lr.ph.i27 ]
  %.03241.ph.i = phi i32 [ %.us-phi, %.thread.i31 ], [ 0, %.lr.ph.i27 ] ; 2 uses
  %i.cx = load ptr, ptr %i.h, align 8, !tbaa !14  ; 9 uses
  %.not.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i, label %.outer.i28.split.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.preheader

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.preheader: ; preds = %.outer.i28
  %i.cy = lshr i64 %.03043.ph.i, 6
  %i.cz = and i64 %.03043.ph.i, 63
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cy
  %i.db = load i64, ptr %i.da, align 8, !tbaa !7
  %i.dc = shl nuw i64 1, %i.cz
  %i.dd = and i64 %i.db, %i.dc
  %.not39.i.not = icmp eq i64 %i.dd, 0
  br i1 %.not39.i.not, label %bb.t, label %bb.s

.outer.i28.split.us:                              ; preds = %.outer.i28
  %.promoted = load i8, ptr %i.cu, align 1        ; 2 uses
  %.promoted54 = load i8, ptr %i.cv, align 1, !tbaa !230 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 %.03043.ph.i
  %i.df = load i8, ptr %i.de, align 1, !tbaa !230, !range !312, !noundef !91 ; 5 uses
  %5 = trunc nuw i8 %i.df to i1                   ; 2 uses
  %i.dg = trunc nuw i8 %.promoted to i1
  %not..i.i.i.i.i.i32.us = xor i1 %5, true
  %i.dh = select i1 %not..i.i.i.i.i.i32.us, i1 %i.dg, i1 false
  %.in.sroa.speculated.i.i.i.i33.us = select i1 %i.dh, i8 %i.df, i8 %.promoted ; 3 uses
  store i8 %.in.sroa.speculated.i.i.i.i33.us, ptr %i.cu, align 1, !tbaa !230
  %i.di = trunc nuw i8 %.promoted54 to i1
  %not..i.i.i.i.i34.us = xor i1 %i.di, true
  %6 = and i1 %5, %not..i.i.i.i.i34.us
  %.in6.sroa.speculated.i.i.i.i35.us = select i1 %6, i8 %i.df, i8 %.promoted54 ; 3 uses
  store i8 %.in6.sroa.speculated.i.i.i.i35.us, ptr %i.cv, align 1, !tbaa !230
  store i8 1, ptr %i.cw, align 1, !tbaa !406
  %i.dj = add nuw i64 %.03043.ph.i, 1             ; 2 uses
  %exitcond.not.i29.us = icmp eq i64 %i.dj, %2
  br i1 %exitcond.not.i29.us, label %._crit_edge.i30, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.us.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.us.1: ; preds = %.outer.i28.split.us
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !230, !range !312, !noundef !91 ; 4 uses
  %i.dm = shl nuw nsw i8 %i.dl, 1
  %i.dn = or disjoint i8 %i.df, %i.dm             ; 2 uses
  %7 = trunc nuw i8 %i.dl to i1                   ; 2 uses
  %i.do = trunc nuw i8 %.in.sroa.speculated.i.i.i.i33.us to i1
  %not..i.i.i.i.i.i32.us.1 = xor i1 %7, true
  %i.dp = select i1 %not..i.i.i.i.i.i32.us.1, i1 %i.do, i1 false
  %.in.sroa.speculated.i.i.i.i33.us.1 = select i1 %i.dp, i8 %i.dl, i8 %.in.sroa.speculated.i.i.i.i33.us ; 3 uses
  store i8 %.in.sroa.speculated.i.i.i.i33.us.1, ptr %i.cu, align 1, !tbaa !230
  %i.dq = trunc nuw i8 %.in6.sroa.speculated.i.i.i.i35.us to i1
  %not..i.i.i.i.i34.us.1 = xor i1 %i.dq, true
  %8 = and i1 %7, %not..i.i.i.i.i34.us.1
  %.in6.sroa.speculated.i.i.i.i35.us.1 = select i1 %8, i8 %i.dl, i8 %.in6.sroa.speculated.i.i.i.i35.us ; 3 uses
  store i8 %.in6.sroa.speculated.i.i.i.i35.us.1, ptr %i.cv, align 1, !tbaa !230
  store i8 1, ptr %i.cw, align 1, !tbaa !406
  %i.dr = add nuw i64 %.03043.ph.i, 2             ; 2 uses
  %exitcond.not.i29.us.1 = icmp eq i64 %i.dr, %2
  br i1 %exitcond.not.i29.us.1, label %._crit_edge.i30, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.us.2

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.us.2: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.us.1
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !230, !range !312, !noundef !91 ; 4 uses
  %i.du = shl nuw nsw i8 %i.dt, 2
  %i.dv = or disjoint i8 %i.dn, %i.du             ; 2 uses
  %9 = trunc nuw i8 %i.dt to i1                   ; 2 uses
  %i.dw = trunc nuw i8 %.in.sroa.speculated.i.i.i.i33.us.1 to i1
  %not..i.i.i.i.i.i32.us.2 = xor i1 %9, true
  %i.dx = select i1 %not..i.i.i.i.i.i32.us.2, i1 %i.dw, i1 false
  %.in.sroa.speculated.i.i.i.i33.us.2 = select i1 %i.dx, i8 %i.dt, i8 %.in.sroa.speculated.i.i.i.i33.us.1 ; 3 uses
  store i8 %.in.sroa.speculated.i.i.i.i33.us.2, ptr %i.cu, align 1, !tbaa !230
  %i.dy = trunc nuw i8 %.in6.sroa.speculated.i.i.i.i35.us.1 to i1
  %not..i.i.i.i.i34.us.2 = xor i1 %i.dy, true
  %10 = and i1 %9, %not..i.i.i.i.i34.us.2
  %.in6.sroa.speculated.i.i.i.i35.us.2 = select i1 %10, i8 %i.dt, i8 %.in6.sroa.speculated.i.i.i.i35.us.1 ; 3 uses
  store i8 %.in6.sroa.speculated.i.i.i.i35.us.2, ptr %i.cv, align 1, !tbaa !230
  store i8 1, ptr %i.cw, align 1, !tbaa !406
  %i.dz = add nuw i64 %.03043.ph.i, 3             ; 2 uses
  %exitcond.not.i29.us.2 = icmp eq i64 %i.dz, %2
  br i1 %exitcond.not.i29.us.2, label %._crit_edge.i30, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.us.3

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.us.3: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.us.2
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !230, !range !312, !noundef !91 ; 4 uses
  %i.ec = shl nuw nsw i8 %i.eb, 3
  %i.ed = or disjoint i8 %i.dv, %i.ec             ; 2 uses
  %11 = trunc nuw i8 %i.eb to i1                  ; 2 uses
  %i.ee = trunc nuw i8 %.in.sroa.speculated.i.i.i.i33.us.2 to i1
  %not..i.i.i.i.i.i32.us.3 = xor i1 %11, true
  %i.ef = select i1 %not..i.i.i.i.i.i32.us.3, i1 %i.ee, i1 false
  %.in.sroa.speculated.i.i.i.i33.us.3 = select i1 %i.ef, i8 %i.eb, i8 %.in.sroa.speculated.i.i.i.i33.us.2 ; 3 uses
  store i8 %.in.sroa.speculated.i.i.i.i33.us.3, ptr %i.cu, align 1, !tbaa !230
  %i.eg = trunc nuw i8 %.in6.sroa.speculated.i.i.i.i35.us.2 to i1
  %not..i.i.i.i.i34.us.3 = xor i1 %i.eg, true
  %12 = and i1 %11, %not..i.i.i.i.i34.us.3
  %.in6.sroa.speculated.i.i.i.i35.us.3 = select i1 %12, i8 %i.eb, i8 %.in6.sroa.speculated.i.i.i.i35.us.2 ; 3 uses
  store i8 %.in6.sroa.speculated.i.i.i.i35.us.3, ptr %i.cv, align 1, !tbaa !230
  store i8 1, ptr %i.cw, align 1, !tbaa !406
  %i.eh = add nuw i64 %.03043.ph.i, 4             ; 2 uses
  %exitcond.not.i29.us.3 = icmp eq i64 %i.eh, %2
  br i1 %exitcond.not.i29.us.3, label %._crit_edge.i30, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.us.4

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.us.4: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.us.3
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !230, !range !312, !noundef !91 ; 4 uses
  %i.ek = shl nuw nsw i8 %i.ej, 4
  %i.el = or disjoint i8 %i.ed, %i.ek             ; 2 uses
  %13 = trunc nuw i8 %i.ej to i1                  ; 2 uses
  %i.em = trunc nuw i8 %.in.sroa.speculated.i.i.i.i33.us.3 to i1
  %not..i.i.i.i.i.i32.us.4 = xor i1 %13, true
  %i.en = select i1 %not..i.i.i.i.i.i32.us.4, i1 %i.em, i1 false
  %.in.sroa.speculated.i.i.i.i33.us.4 = select i1 %i.en, i8 %i.ej, i8 %.in.sroa.speculated.i.i.i.i33.us.3 ; 3 uses
  store i8 %.in.sroa.speculated.i.i.i.i33.us.4, ptr %i.cu, align 1, !tbaa !230
  %i.eo = trunc nuw i8 %.in6.sroa.speculated.i.i.i.i35.us.3 to i1
  %not..i.i.i.i.i34.us.4 = xor i1 %i.eo, true
  %14 = and i1 %13, %not..i.i.i.i.i34.us.4
  %.in6.sroa.speculated.i.i.i.i35.us.4 = select i1 %14, i8 %i.ej, i8 %.in6.sroa.speculated.i.i.i.i35.us.3 ; 3 uses
  store i8 %.in6.sroa.speculated.i.i.i.i35.us.4, ptr %i.cv, align 1, !tbaa !230
  store i8 1, ptr %i.cw, align 1, !tbaa !406
  %i.ep = add nuw i64 %.03043.ph.i, 5             ; 2 uses
  %exitcond.not.i29.us.4 = icmp eq i64 %i.ep, %2
  br i1 %exitcond.not.i29.us.4, label %._crit_edge.i30, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.us.5

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.us.5: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.us.4
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !230, !range !312, !noundef !91 ; 4 uses
  %i.es = shl nuw nsw i8 %i.er, 5
  %i.et = or i8 %i.el, %i.es                      ; 2 uses
  %15 = trunc nuw i8 %i.er to i1                  ; 2 uses
  %i.eu = trunc nuw i8 %.in.sroa.speculated.i.i.i.i33.us.4 to i1
  %not..i.i.i.i.i.i32.us.5 = xor i1 %15, true
  %i.ev = select i1 %not..i.i.i.i.i.i32.us.5, i1 %i.eu, i1 false
  %.in.sroa.speculated.i.i.i.i33.us.5 = select i1 %i.ev, i8 %i.er, i8 %.in.sroa.speculated.i.i.i.i33.us.4 ; 3 uses
  store i8 %.in.sroa.speculated.i.i.i.i33.us.5, ptr %i.cu, align 1, !tbaa !230
  %i.ew = trunc nuw i8 %.in6.sroa.speculated.i.i.i.i35.us.4 to i1
  %not..i.i.i.i.i34.us.5 = xor i1 %i.ew, true
  %16 = and i1 %15, %not..i.i.i.i.i34.us.5
  %.in6.sroa.speculated.i.i.i.i35.us.5 = select i1 %16, i8 %i.er, i8 %.in6.sroa.speculated.i.i.i.i35.us.4 ; 3 uses
  store i8 %.in6.sroa.speculated.i.i.i.i35.us.5, ptr %i.cv, align 1, !tbaa !230
  store i8 1, ptr %i.cw, align 1, !tbaa !406
  %i.ex = add nuw i64 %.03043.ph.i, 6             ; 2 uses
  %exitcond.not.i29.us.5 = icmp eq i64 %i.ex, %2
  br i1 %exitcond.not.i29.us.5, label %._crit_edge.i30, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.us.6

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.us.6: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.us.5
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !230, !range !312, !noundef !91 ; 4 uses
  %i.fa = shl nuw nsw i8 %i.ez, 6
  %i.fb = or i8 %i.et, %i.fa                      ; 2 uses
  %17 = trunc nuw i8 %i.ez to i1                  ; 2 uses
  %i.fc = trunc nuw i8 %.in.sroa.speculated.i.i.i.i33.us.5 to i1
  %not..i.i.i.i.i.i32.us.6 = xor i1 %17, true
  %i.fd = select i1 %not..i.i.i.i.i.i32.us.6, i1 %i.fc, i1 false
  %.in.sroa.speculated.i.i.i.i33.us.6 = select i1 %i.fd, i8 %i.ez, i8 %.in.sroa.speculated.i.i.i.i33.us.5 ; 3 uses
  store i8 %.in.sroa.speculated.i.i.i.i33.us.6, ptr %i.cu, align 1, !tbaa !230
  %i.fe = trunc nuw i8 %.in6.sroa.speculated.i.i.i.i35.us.5 to i1
  %not..i.i.i.i.i34.us.6 = xor i1 %i.fe, true
  %18 = and i1 %17, %not..i.i.i.i.i34.us.6
  %.in6.sroa.speculated.i.i.i.i35.us.6 = select i1 %18, i8 %i.ez, i8 %.in6.sroa.speculated.i.i.i.i35.us.5 ; 3 uses
  store i8 %.in6.sroa.speculated.i.i.i.i35.us.6, ptr %i.cv, align 1, !tbaa !230
  store i8 1, ptr %i.cw, align 1, !tbaa !406
  %i.ff = add nuw i64 %.03043.ph.i, 7             ; 3 uses
  %exitcond.not.i29.us.6 = icmp eq i64 %i.ff, %2
  br i1 %exitcond.not.i29.us.6, label %._crit_edge.i30, label %.thread.i31.loopexit

._crit_edge.i30:                                  ; preds = %bb.u, %bb.y, %bb.ac, %bb.ag, %bb.ak, %bb.ao, %bb.as, %.outer.i28.split.us, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.us.1, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.us.2, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.us.3, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.us.4, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.us.5, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.us.6
  %.us-phi52 = phi i8 [ %i.df, %.outer.i28.split.us ], [ %i.fb, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.us.6 ], [ %i.et, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.us.5 ], [ %i.el, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.us.4 ], [ %i.ed, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.us.3 ], [ %i.dv, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.us.2 ], [ %i.dn, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.us.1 ], [ %i.ll, %bb.as ], [ %i.kl, %bb.ao ], [ %i.jl, %bb.ak ], [ %i.il, %bb.ag ], [ %i.hl, %bb.ac ], [ %i.gl, %bb.y ], [ %i.fs, %bb.u ]
  store i8 %.us-phi52, ptr %.045.ph.i, align 1, !tbaa !177
  br label %_ZN6duckdb7roaringL15BitPackBooleansILb1ELb1EEEvPhPKbmPKNS_12ValidityMaskEPNS_14BaseStatisticsE.exit

bb.s:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.preheader
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 %.03043.ph.i
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !230, !range !312, !noundef !91 ; 5 uses
  %i.fi = zext nneg i8 %i.fh to i32
  %19 = trunc nuw i8 %i.fh to i1                  ; 3 uses
  %i.fj = load i8, ptr %i.cu, align 1             ; 2 uses
  %i.fk = trunc nuw i8 %i.fj to i1
  %not..i.i.i.i.i.i32 = xor i1 %19, true
  %i.fl = select i1 %not..i.i.i.i.i.i32, i1 %i.fk, i1 false
  %.in.sroa.speculated.i.i.i.i33 = select i1 %i.fl, i8 %i.fh, i8 %i.fj
  store i8 %.in.sroa.speculated.i.i.i.i33, ptr %i.cu, align 1, !tbaa !230
  %i.fm = load i8, ptr %i.cv, align 1, !tbaa !230, !range !312, !noundef !91 ; 2 uses
  %i.fn = trunc nuw i8 %i.fm to i1
  %not..i.i.i.i.i34 = xor i1 %i.fn, true
  %i.fo = and i1 %19, %not..i.i.i.i.i34
  %.in6.sroa.speculated.i.i.i.i35 = select i1 %i.fo, i8 %i.fh, i8 %i.fm
  store i8 %.in6.sroa.speculated.i.i.i.i35, ptr %i.cv, align 1, !tbaa !230
  store i8 1, ptr %i.cw, align 1, !tbaa !406
  br label %bb.u

bb.t:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.preheader
  %i.fp = zext i1 %.03142.ph.i to i8
  %i.fq = icmp ne i32 %.03241.ph.i, 0
  store i8 1, ptr %i.ct, align 8, !tbaa !396
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.fr = phi i1 [ %i.fq, %bb.t ], [ %19, %bb.s ]
  %i.fs = phi i8 [ %i.fp, %bb.t ], [ %i.fh, %bb.s ] ; 2 uses
  %i.ft = phi i32 [ %.03241.ph.i, %bb.t ], [ %i.fi, %bb.s ]
  %i.fu = add nuw i64 %.03043.ph.i, 1             ; 4 uses
  %exitcond.not.i29 = icmp eq i64 %i.fu, %2
  br i1 %exitcond.not.i29, label %._crit_edge.i30, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.1: ; preds = %bb.u
  %i.fv = lshr i64 %i.fu, 6
  %i.fw = and i64 %i.fu, 63
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.fv
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !7
  %i.fz = shl nuw i64 1, %i.fw
  %i.ga = and i64 %i.fy, %i.fz
  %.not39.i.1 = icmp ne i64 %i.ga, 0              ; 3 uses
  br i1 %.not39.i.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.1, label %bb.v

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.1
  %i.gb = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fu
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !230, !range !312, !noundef !91
  %i.gd = zext nneg i8 %i.gc to i32
  br label %bb.v

bb.v:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.1, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.1
  %i.ge = phi i32 [ %i.gd, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.1 ], [ %i.ft, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.1 ] ; 3 uses
  %i.gf = zext i1 %.not39.i.1 to i32              ; 2 uses
  %i.gg = and i32 %i.ge, %i.gf
  %i.gh = xor i32 %i.gf, 1
  %i.gi = select i1 %i.fr, i32 %i.gh, i32 0
  %i.gj = or i32 %i.gi, %i.gg
  %.tr = trunc nuw nsw i32 %i.gj to i8
  %i.gk = shl nuw nsw i8 %.tr, 1
  %i.gl = or disjoint i8 %i.gk, %i.fs             ; 2 uses
  %i.gm = icmp ne i32 %i.ge, 0                    ; 4 uses
  br i1 %.not39.i.1, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 1, ptr %i.ct, align 8, !tbaa !396
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.gn = zext i1 %i.gm to i8                     ; 2 uses
  %i.go = load i8, ptr %i.cu, align 1             ; 2 uses
  %i.gp = trunc nuw i8 %i.go to i1
  %not..i.i.i.i.i.i32.1 = xor i1 %i.gm, true
  %i.gq = select i1 %not..i.i.i.i.i.i32.1, i1 %i.gp, i1 false
  %.in.sroa.speculated.i.i.i.i33.1 = select i1 %i.gq, i8 %i.gn, i8 %i.go
  store i8 %.in.sroa.speculated.i.i.i.i33.1, ptr %i.cu, align 1, !tbaa !230
  %i.gr = load i8, ptr %i.cv, align 1, !tbaa !230, !range !312, !noundef !91 ; 2 uses
  %i.gs = trunc nuw i8 %i.gr to i1
  %not..i.i.i.i.i34.1 = xor i1 %i.gs, true
  %i.gt = and i1 %i.gm, %not..i.i.i.i.i34.1
  %.in6.sroa.speculated.i.i.i.i35.1 = select i1 %i.gt, i8 %i.gn, i8 %i.gr
  store i8 %.in6.sroa.speculated.i.i.i.i35.1, ptr %i.cv, align 1, !tbaa !230
  store i8 1, ptr %i.cw, align 1, !tbaa !406
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.gu = add nuw i64 %.03043.ph.i, 2             ; 4 uses
  %exitcond.not.i29.1 = icmp eq i64 %i.gu, %2
  br i1 %exitcond.not.i29.1, label %._crit_edge.i30, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.2

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.2: ; preds = %bb.y
  %i.gv = lshr i64 %i.gu, 6
  %i.gw = and i64 %i.gu, 63
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.gv
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !7
  %i.gz = shl nuw i64 1, %i.gw
  %i.ha = and i64 %i.gy, %i.gz
  %.not39.i.2 = icmp ne i64 %i.ha, 0              ; 3 uses
  br i1 %.not39.i.2, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.2, label %bb.z

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.2: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.2
  %i.hb = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.gu
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !230, !range !312, !noundef !91
  %i.hd = zext nneg i8 %i.hc to i32
  br label %bb.z

bb.z:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.2, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.2
  %i.he = phi i32 [ %i.hd, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.2 ], [ %i.ge, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.2 ] ; 3 uses
  %i.hf = zext i1 %.not39.i.2 to i32              ; 2 uses
  %i.hg = and i32 %i.he, %i.hf
  %i.hh = xor i32 %i.hf, 1
  %i.hi = select i1 %i.gm, i32 %i.hh, i32 0
  %i.hj = or i32 %i.hi, %i.hg
  %.tr120 = trunc nuw nsw i32 %i.hj to i8
  %i.hk = shl nuw nsw i8 %.tr120, 2
  %i.hl = or i8 %i.gl, %i.hk                      ; 2 uses
  %i.hm = icmp ne i32 %i.he, 0                    ; 4 uses
  br i1 %.not39.i.2, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i8 1, ptr %i.ct, align 8, !tbaa !396
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.hn = zext i1 %i.hm to i8                     ; 2 uses
  %i.ho = load i8, ptr %i.cu, align 1             ; 2 uses
  %i.hp = trunc nuw i8 %i.ho to i1
  %not..i.i.i.i.i.i32.2 = xor i1 %i.hm, true
  %i.hq = select i1 %not..i.i.i.i.i.i32.2, i1 %i.hp, i1 false
  %.in.sroa.speculated.i.i.i.i33.2 = select i1 %i.hq, i8 %i.hn, i8 %i.ho
  store i8 %.in.sroa.speculated.i.i.i.i33.2, ptr %i.cu, align 1, !tbaa !230
  %i.hr = load i8, ptr %i.cv, align 1, !tbaa !230, !range !312, !noundef !91 ; 2 uses
  %i.hs = trunc nuw i8 %i.hr to i1
  %not..i.i.i.i.i34.2 = xor i1 %i.hs, true
  %i.ht = and i1 %i.hm, %not..i.i.i.i.i34.2
  %.in6.sroa.speculated.i.i.i.i35.2 = select i1 %i.ht, i8 %i.hn, i8 %i.hr
  store i8 %.in6.sroa.speculated.i.i.i.i35.2, ptr %i.cv, align 1, !tbaa !230
  store i8 1, ptr %i.cw, align 1, !tbaa !406
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.hu = add nuw i64 %.03043.ph.i, 3             ; 4 uses
  %exitcond.not.i29.2 = icmp eq i64 %i.hu, %2
  br i1 %exitcond.not.i29.2, label %._crit_edge.i30, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.3

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.3: ; preds = %bb.ac
  %i.hv = lshr i64 %i.hu, 6
  %i.hw = and i64 %i.hu, 63
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.hv
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !7
  %i.hz = shl nuw i64 1, %i.hw
  %i.ia = and i64 %i.hy, %i.hz
  %.not39.i.3 = icmp ne i64 %i.ia, 0              ; 3 uses
  br i1 %.not39.i.3, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.3, label %bb.ad

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.3: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.3
  %i.ib = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hu
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !230, !range !312, !noundef !91
  %i.id = zext nneg i8 %i.ic to i32
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.3, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.3
  %i.ie = phi i32 [ %i.id, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.3 ], [ %i.he, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.3 ] ; 3 uses
  %i.if = zext i1 %.not39.i.3 to i32              ; 2 uses
  %i.ig = and i32 %i.ie, %i.if
  %i.ih = xor i32 %i.if, 1
  %i.ii = select i1 %i.hm, i32 %i.ih, i32 0
  %i.ij = or i32 %i.ii, %i.ig
  %.tr121 = trunc nuw nsw i32 %i.ij to i8
  %i.ik = shl nuw nsw i8 %.tr121, 3
  %i.il = or i8 %i.hl, %i.ik                      ; 2 uses
  %i.im = icmp ne i32 %i.ie, 0                    ; 4 uses
  br i1 %.not39.i.3, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i8 1, ptr %i.ct, align 8, !tbaa !396
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.in = zext i1 %i.im to i8                     ; 2 uses
  %i.io = load i8, ptr %i.cu, align 1             ; 2 uses
  %i.ip = trunc nuw i8 %i.io to i1
  %not..i.i.i.i.i.i32.3 = xor i1 %i.im, true
  %i.iq = select i1 %not..i.i.i.i.i.i32.3, i1 %i.ip, i1 false
  %.in.sroa.speculated.i.i.i.i33.3 = select i1 %i.iq, i8 %i.in, i8 %i.io
  store i8 %.in.sroa.speculated.i.i.i.i33.3, ptr %i.cu, align 1, !tbaa !230
  %i.ir = load i8, ptr %i.cv, align 1, !tbaa !230, !range !312, !noundef !91 ; 2 uses
  %i.is = trunc nuw i8 %i.ir to i1
  %not..i.i.i.i.i34.3 = xor i1 %i.is, true
  %i.it = and i1 %i.im, %not..i.i.i.i.i34.3
  %.in6.sroa.speculated.i.i.i.i35.3 = select i1 %i.it, i8 %i.in, i8 %i.ir
  store i8 %.in6.sroa.speculated.i.i.i.i35.3, ptr %i.cv, align 1, !tbaa !230
  store i8 1, ptr %i.cw, align 1, !tbaa !406
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.iu = add nuw i64 %.03043.ph.i, 4             ; 4 uses
  %exitcond.not.i29.3 = icmp eq i64 %i.iu, %2
  br i1 %exitcond.not.i29.3, label %._crit_edge.i30, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.4

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.4: ; preds = %bb.ag
  %i.iv = lshr i64 %i.iu, 6
  %i.iw = and i64 %i.iu, 63
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.iv
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !7
  %i.iz = shl nuw i64 1, %i.iw
  %i.ja = and i64 %i.iy, %i.iz
  %.not39.i.4 = icmp ne i64 %i.ja, 0              ; 3 uses
  br i1 %.not39.i.4, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.4, label %bb.ah

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.4: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.4
  %i.jb = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.iu
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !230, !range !312, !noundef !91
  %i.jd = zext nneg i8 %i.jc to i32
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.4, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.4
  %i.je = phi i32 [ %i.jd, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.4 ], [ %i.ie, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.4 ] ; 3 uses
  %i.jf = zext i1 %.not39.i.4 to i32              ; 2 uses
  %i.jg = and i32 %i.je, %i.jf
  %i.jh = xor i32 %i.jf, 1
  %i.ji = select i1 %i.im, i32 %i.jh, i32 0
  %i.jj = or i32 %i.ji, %i.jg
  %.tr122 = trunc nuw nsw i32 %i.jj to i8
  %i.jk = shl nuw nsw i8 %.tr122, 4
  %i.jl = or i8 %i.il, %i.jk                      ; 2 uses
  %i.jm = icmp ne i32 %i.je, 0                    ; 4 uses
  br i1 %.not39.i.4, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i8 1, ptr %i.ct, align 8, !tbaa !396
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.jn = zext i1 %i.jm to i8                     ; 2 uses
  %i.jo = load i8, ptr %i.cu, align 1             ; 2 uses
  %i.jp = trunc nuw i8 %i.jo to i1
  %not..i.i.i.i.i.i32.4 = xor i1 %i.jm, true
  %i.jq = select i1 %not..i.i.i.i.i.i32.4, i1 %i.jp, i1 false
  %.in.sroa.speculated.i.i.i.i33.4 = select i1 %i.jq, i8 %i.jn, i8 %i.jo
  store i8 %.in.sroa.speculated.i.i.i.i33.4, ptr %i.cu, align 1, !tbaa !230
  %i.jr = load i8, ptr %i.cv, align 1, !tbaa !230, !range !312, !noundef !91 ; 2 uses
  %i.js = trunc nuw i8 %i.jr to i1
  %not..i.i.i.i.i34.4 = xor i1 %i.js, true
  %i.jt = and i1 %i.jm, %not..i.i.i.i.i34.4
  %.in6.sroa.speculated.i.i.i.i35.4 = select i1 %i.jt, i8 %i.jn, i8 %i.jr
  store i8 %.in6.sroa.speculated.i.i.i.i35.4, ptr %i.cv, align 1, !tbaa !230
  store i8 1, ptr %i.cw, align 1, !tbaa !406
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ju = add nuw i64 %.03043.ph.i, 5             ; 4 uses
  %exitcond.not.i29.4 = icmp eq i64 %i.ju, %2
  br i1 %exitcond.not.i29.4, label %._crit_edge.i30, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.5

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.5: ; preds = %bb.ak
  %i.jv = lshr i64 %i.ju, 6
  %i.jw = and i64 %i.ju, 63
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.jv
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !7
  %i.jz = shl nuw i64 1, %i.jw
  %i.ka = and i64 %i.jy, %i.jz
  %.not39.i.5 = icmp ne i64 %i.ka, 0              ; 3 uses
  br i1 %.not39.i.5, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.5, label %bb.al

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.5: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.5
  %i.kb = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ju
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !230, !range !312, !noundef !91
  %i.kd = zext nneg i8 %i.kc to i32
  br label %bb.al

bb.al:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.5, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.5
  %i.ke = phi i32 [ %i.kd, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.5 ], [ %i.je, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.5 ] ; 3 uses
  %i.kf = zext i1 %.not39.i.5 to i32              ; 2 uses
  %i.kg = and i32 %i.ke, %i.kf
  %i.kh = xor i32 %i.kf, 1
  %i.ki = select i1 %i.jm, i32 %i.kh, i32 0
  %i.kj = or i32 %i.ki, %i.kg
  %.tr123 = trunc nuw nsw i32 %i.kj to i8
  %i.kk = shl nuw nsw i8 %.tr123, 5
  %i.kl = or i8 %i.jl, %i.kk                      ; 2 uses
  %i.km = icmp ne i32 %i.ke, 0                    ; 4 uses
  br i1 %.not39.i.5, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i8 1, ptr %i.ct, align 8, !tbaa !396
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.kn = zext i1 %i.km to i8                     ; 2 uses
  %i.ko = load i8, ptr %i.cu, align 1             ; 2 uses
  %i.kp = trunc nuw i8 %i.ko to i1
  %not..i.i.i.i.i.i32.5 = xor i1 %i.km, true
  %i.kq = select i1 %not..i.i.i.i.i.i32.5, i1 %i.kp, i1 false
  %.in.sroa.speculated.i.i.i.i33.5 = select i1 %i.kq, i8 %i.kn, i8 %i.ko
  store i8 %.in.sroa.speculated.i.i.i.i33.5, ptr %i.cu, align 1, !tbaa !230
  %i.kr = load i8, ptr %i.cv, align 1, !tbaa !230, !range !312, !noundef !91 ; 2 uses
  %i.ks = trunc nuw i8 %i.kr to i1
  %not..i.i.i.i.i34.5 = xor i1 %i.ks, true
  %i.kt = and i1 %i.km, %not..i.i.i.i.i34.5
  %.in6.sroa.speculated.i.i.i.i35.5 = select i1 %i.kt, i8 %i.kn, i8 %i.kr
  store i8 %.in6.sroa.speculated.i.i.i.i35.5, ptr %i.cv, align 1, !tbaa !230
  store i8 1, ptr %i.cw, align 1, !tbaa !406
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ku = add nuw i64 %.03043.ph.i, 6             ; 4 uses
  %exitcond.not.i29.5 = icmp eq i64 %i.ku, %2
  br i1 %exitcond.not.i29.5, label %._crit_edge.i30, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.6

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.6: ; preds = %bb.ao
  %i.kv = lshr i64 %i.ku, 6
  %i.kw = and i64 %i.ku, 63
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.kv
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !7
  %i.kz = shl nuw i64 1, %i.kw
  %i.la = and i64 %i.ky, %i.kz
  %.not39.i.6 = icmp ne i64 %i.la, 0              ; 3 uses
  br i1 %.not39.i.6, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.6, label %bb.ap

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.6: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.6
  %i.lb = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ku
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !230, !range !312, !noundef !91
  %i.ld = zext nneg i8 %i.lc to i32
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.6, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.6
  %i.le = phi i32 [ %i.ld, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.6 ], [ %i.ke, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.6 ] ; 3 uses
  %i.lf = zext i1 %.not39.i.6 to i32              ; 2 uses
  %i.lg = and i32 %i.le, %i.lf
  %i.lh = xor i32 %i.lf, 1
  %i.li = select i1 %i.km, i32 %i.lh, i32 0
  %i.lj = or i32 %i.li, %i.lg
  %.tr124 = trunc nuw nsw i32 %i.lj to i8
  %i.lk = shl nuw nsw i8 %.tr124, 6
  %i.ll = or i8 %i.kl, %i.lk                      ; 2 uses
  %i.lm = icmp ne i32 %i.le, 0                    ; 4 uses
  br i1 %.not39.i.6, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i8 1, ptr %i.ct, align 8, !tbaa !396
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.ln = zext i1 %i.lm to i8                     ; 2 uses
  %i.lo = load i8, ptr %i.cu, align 1             ; 2 uses
  %i.lp = trunc nuw i8 %i.lo to i1
  %not..i.i.i.i.i.i32.6 = xor i1 %i.lm, true
  %i.lq = select i1 %not..i.i.i.i.i.i32.6, i1 %i.lp, i1 false
  %.in.sroa.speculated.i.i.i.i33.6 = select i1 %i.lq, i8 %i.ln, i8 %i.lo
  store i8 %.in.sroa.speculated.i.i.i.i33.6, ptr %i.cu, align 1, !tbaa !230
  %i.lr = load i8, ptr %i.cv, align 1, !tbaa !230, !range !312, !noundef !91 ; 2 uses
  %i.ls = trunc nuw i8 %i.lr to i1
  %not..i.i.i.i.i34.6 = xor i1 %i.ls, true
  %i.lt = and i1 %i.lm, %not..i.i.i.i.i34.6
  %.in6.sroa.speculated.i.i.i.i35.6 = select i1 %i.lt, i8 %i.ln, i8 %i.lr
  store i8 %.in6.sroa.speculated.i.i.i.i35.6, ptr %i.cv, align 1, !tbaa !230
  store i8 1, ptr %i.cw, align 1, !tbaa !406
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.lu = add nuw i64 %.03043.ph.i, 7             ; 6 uses
  %exitcond.not.i29.6 = icmp eq i64 %i.lu, %2
  br i1 %exitcond.not.i29.6, label %._crit_edge.i30, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.7

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.7: ; preds = %bb.as
  %i.lv = lshr i64 %i.lu, 6
  %i.lw = and i64 %i.lu, 63
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.lv
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !7
  %i.lz = shl nuw i64 1, %i.lw
  %i.ma = and i64 %i.ly, %i.lz
  %.not39.i.7 = icmp ne i64 %i.ma, 0              ; 3 uses
  br i1 %.not39.i.7, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.7, label %bb.at

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.7: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.7
  %i.mb = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.lu
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !230, !range !312, !noundef !91
  %i.md = zext nneg i8 %i.mc to i32
  br label %bb.at

bb.at:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.7, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.7
  %i.me = phi i32 [ %i.md, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.7 ], [ %i.le, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.7 ] ; 4 uses
  %i.mf = zext i1 %.not39.i.7 to i32              ; 2 uses
  %i.mg = and i32 %i.me, %i.mf
  %i.mh = xor i32 %i.mf, -1
  %i.mi = select i1 %i.lm, i32 %i.mh, i32 0
  %i.mj = or i32 %i.mi, %i.mg
  %.tr125 = trunc nsw i32 %i.mj to i8
  %i.mk = shl i8 %.tr125, 7
  %i.ml = or i8 %i.ll, %i.mk                      ; 2 uses
  %i.mm = icmp ne i32 %i.me, 0                    ; 5 uses
  br i1 %.not39.i.7, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i8 1, ptr %i.ct, align 8, !tbaa !396
  br label %.thread.i31

bb.av:                                            ; preds = %bb.at
  %i.mn = zext i1 %i.mm to i8                     ; 2 uses
  %i.mo = load i8, ptr %i.cu, align 1             ; 2 uses
  %i.mp = trunc nuw i8 %i.mo to i1
  %not..i.i.i.i.i.i32.7 = xor i1 %i.mm, true
  %i.mq = select i1 %not..i.i.i.i.i.i32.7, i1 %i.mp, i1 false
  %.in.sroa.speculated.i.i.i.i33.7 = select i1 %i.mq, i8 %i.mn, i8 %i.mo
  store i8 %.in.sroa.speculated.i.i.i.i33.7, ptr %i.cu, align 1, !tbaa !230
  %i.mr = load i8, ptr %i.cv, align 1, !tbaa !230, !range !312, !noundef !91 ; 2 uses
  %i.ms = trunc nuw i8 %i.mr to i1
  %not..i.i.i.i.i34.7 = xor i1 %i.ms, true
  %i.mt = and i1 %i.mm, %not..i.i.i.i.i34.7
  %.in6.sroa.speculated.i.i.i.i35.7 = select i1 %i.mt, i8 %i.mn, i8 %i.mr
  store i8 %.in6.sroa.speculated.i.i.i.i35.7, ptr %i.cv, align 1, !tbaa !230
  store i8 1, ptr %i.cw, align 1, !tbaa !406
  br label %.thread.i31

.thread.i31.loopexit:                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.us.6
  %i.mu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ff
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !230, !range !312, !noundef !91 ; 5 uses
  %20 = trunc nuw i8 %i.mv to i1                  ; 3 uses
  %i.mw = trunc nuw i8 %.in.sroa.speculated.i.i.i.i33.us.6 to i1
  %not..i.i.i.i.i.i32.us.7 = xor i1 %20, true
  %i.mx = select i1 %not..i.i.i.i.i.i32.us.7, i1 %i.mw, i1 false
  %.in.sroa.speculated.i.i.i.i33.us.7 = select i1 %i.mx, i8 %i.mv, i8 %.in.sroa.speculated.i.i.i.i33.us.6
  store i8 %.in.sroa.speculated.i.i.i.i33.us.7, ptr %i.cu, align 1, !tbaa !230
  %i.my = trunc nuw i8 %.in6.sroa.speculated.i.i.i.i35.us.6 to i1
  %not..i.i.i.i.i34.us.7 = xor i1 %i.my, true
  %i.mz = and i1 %20, %not..i.i.i.i.i34.us.7
  %.in6.sroa.speculated.i.i.i.i35.us.7 = select i1 %i.mz, i8 %i.mv, i8 %.in6.sroa.speculated.i.i.i.i35.us.6
  store i8 %.in6.sroa.speculated.i.i.i.i35.us.7, ptr %i.cv, align 1, !tbaa !230
  store i8 1, ptr %i.cw, align 1, !tbaa !406
  %i.na = shl nuw i8 %i.mv, 7
  %i.nb = or i8 %i.fb, %i.na
  %i.nc = zext nneg i8 %i.mv to i32
  br label %.thread.i31

.thread.i31:                                      ; preds = %bb.av, %bb.au, %.thread.i31.loopexit
  %.us-phi = phi i32 [ %i.nc, %.thread.i31.loopexit ], [ %i.me, %bb.au ], [ %i.me, %bb.av ]
  %.us-phi48 = phi i8 [ %i.nb, %.thread.i31.loopexit ], [ %i.ml, %bb.au ], [ %i.ml, %bb.av ]
  %.us-phi49 = phi i1 [ %20, %.thread.i31.loopexit ], [ %i.mm, %bb.au ], [ %i.mm, %bb.av ]
  %.us-phi50 = phi i64 [ %i.ff, %.thread.i31.loopexit ], [ %i.lu, %bb.au ], [ %i.lu, %bb.av ]
  %i.nd = getelementptr inbounds nuw i8, ptr %.045.ph.i, i64 1
  store i8 %.us-phi48, ptr %.045.ph.i, align 1, !tbaa !177
  %i.ne = add nuw i64 %.us-phi50, 1               ; 2 uses
  %exitcond.not58.i = icmp eq i64 %i.ne, %2
  br i1 %exitcond.not58.i, label %_ZN6duckdb7roaringL15BitPackBooleansILb1ELb1EEEvPhPKbmPKNS_12ValidityMaskEPNS_14BaseStatisticsE.exit, label %.outer.i28, !llvm.loop !419

_ZN6duckdb7roaringL15BitPackBooleansILb1ELb1EEEvPhPKbmPKNS_12ValidityMaskEPNS_14BaseStatisticsE.exit: ; preds = %.thread.i31, %.thread.i, %._crit_edge.i30, %bb.r, %._crit_edge.i, %bb.g
  invoke void @_ZN6duckdb7roaring20RoaringStateAppenderINS0_20RoaringCompressStateEE12AppendVectorERS2_RNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(1144) %0, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %2)
          to label %bb.aw unwind label %bb.p

bb.aw:                                            ; preds = %_ZN6duckdb7roaringL15BitPackBooleansILb1ELb1EEEvPhPKbmPKNS_12ValidityMaskEPNS_14BaseStatisticsE.exit
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.ax:                                            ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.cr, %bb.p ], [ %i.cq, %bb.o ]
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %3) #26
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ax ], [ %i.cp, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb7roaring20ContainerSegmentScanC2EPh(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(10) initializes((0, 10)) %0, ptr noundef %1) unnamed_addr #8 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !420
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !421
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.b, align 1, !tbaa !422
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext range(i16 0, -255) i16 @_ZN6duckdb7roaring20ContainerSegmentScanppEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(10) %0, i32 noundef %1) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.promoted = load i8, ptr %i.b, align 8, !tbaa !421 ; 4 uses
  %i.c = icmp ult i8 %.promoted, 8
  %.pre = load i8, ptr %i.a, align 1              ; 3 uses
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !420    ; 2 uses
  %i.e = zext nneg i8 %.promoted to i64           ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !177
  %.not.peel = icmp ult i8 %.pre, %i.g
  br i1 %.not.peel, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  store i8 0, ptr %i.a, align 1, !tbaa !422
  %indvars.iv.next.peel = add nuw nsw i64 %i.e, 1 ; 3 uses
  %i.h = trunc nuw nsw i64 %indvars.iv.next.peel to i8
  store i8 %i.h, ptr %i.b, align 8, !tbaa !421
  %exitcond.peel.not = icmp eq i64 %indvars.iv.next.peel, 8
  br i1 %exitcond.peel.not, label %.critedge, label %.peel.next

.peel.next:                                       ; preds = %bb.b, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ %indvars.iv.next.peel, %bb.b ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv
  %i.j = load i8, ptr %i.i, align 1, !tbaa !177
  %.not.not = icmp eq i8 %i.j, 0
  br i1 %.not.not, label %bb.c, label %.critedge.loopexit.split.loop.exit6

bb.c:                                             ; preds = %.peel.next
  store i8 0, ptr %i.a, align 1, !tbaa !422
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.k = trunc i64 %indvars.iv.next to i8         ; 2 uses
  store i8 %i.k, ptr %i.b, align 8, !tbaa !421
  %exitcond.not = icmp eq i8 %i.k, 8
  br i1 %exitcond.not, label %.critedge, label %.peel.next, !llvm.loop !423

.critedge.loopexit.split.loop.exit6:              ; preds = %.peel.next
  %i.l = trunc nuw nsw i64 %indvars.iv to i8
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %.critedge.loopexit.split.loop.exit6, %.lr.ph, %bb.b, %bb.a
  %i.m = phi i8 [ %.pre, %bb.a ], [ %.pre, %.lr.ph ], [ 0, %bb.b ], [ 0, %.critedge.loopexit.split.loop.exit6 ], [ 0, %bb.c ]
  %.lcssa = phi i8 [ %.promoted, %bb.a ], [ %.promoted, %.lr.ph ], [ 8, %bb.b ], [ %i.l, %.critedge.loopexit.split.loop.exit6 ], [ 8, %bb.c ]
  %i.n = add i8 %i.m, 1
  store i8 %i.n, ptr %i.a, align 1, !tbaa !422
  %i.o = zext i8 %.lcssa to i16
  %i.p = shl nuw i16 %i.o, 8
  ret i16 %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb7roaring21RunContainerScanStateC2EmmmPh(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 32), (36, 37), (40, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !197
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.b, align 8, !tbaa !180
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.c, align 8, !tbaa !182
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6duckdb7roaring21RunContainerScanStateE, i64 16), ptr %0, align 8, !tbaa !149
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 0, ptr %i.d, align 4, !tbaa !425
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !427
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %3, ptr %i.f, align 8, !tbaa !428
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %4, ptr %i.g, align 8, !tbaa !429
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb7roaring21RunContainerScanState11ScanPartialERNS_6VectorEmm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !427
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !149
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(64) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.h = load i8, ptr %i.g, align 4, !tbaa !425, !range !312, !noundef !91
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = icmp eq i64 %3, 0
  %.not2829 = or i1 %i.j, %i.i
  br i1 %.not2829, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 34
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.h
  %.030 = phi i64 [ 0, %.lr.ph ], [ %i.af, %bb.h ]
  %i.n = load i16, ptr %i.k, align 8, !tbaa !430
  %i.o = zext i16 %i.n to i64                     ; 2 uses
  %i.p = load i64, ptr %i.l, align 8, !tbaa !182  ; 5 uses
  %i.q = add i64 %i.p, %3                         ; 2 uses
  %i.r = tail call noundef i64 @llvm.umin.i64(i64 %i.o, i64 %i.q)
  %i.s = add i64 %i.p, %.030
  %i.t = tail call noundef i64 @llvm.umax.i64(i64 %i.r, i64 %i.s) ; 3 uses
  %i.u = add nuw nsw i64 %i.o, 1
  %i.v = load i16, ptr %i.m, align 2, !tbaa !431
  %i.w = zext i16 %i.v to i64
  %i.x = add nuw nsw i64 %i.u, %i.w               ; 2 uses
  %i.y = tail call noundef i64 @llvm.umin.i64(i64 %i.x, i64 %i.q) ; 3 uses
  %i.z = icmp ugt i64 %i.y, %i.t
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = sub i64 %i.t, %i.p
  %i.ab = sub nuw nsw i64 %i.y, %i.t
  %i.ac = add i64 %i.aa, %2                       ; 2 uses
  %i.ad = add i64 %i.ab, %i.ac
  tail call void @_ZN6duckdb7roaring15SetInvalidRangeERNS_12ValidityMaskEmm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.ac, i64 noundef %i.ad)
  %.pre = load i64, ptr %i.l, align 8, !tbaa !182
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ae = phi i64 [ %.pre, %bb.e ], [ %i.p, %bb.d ]
  %i.af = sub i64 %i.y, %i.p                      ; 3 uses
  %i.ag = add i64 %i.ae, %i.af
  %i.ah = icmp eq i64 %i.ag, %i.x
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr %0, align 8, !tbaa !149
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(64) %0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.al = load i8, ptr %i.g, align 4, !tbaa !425, !range !312, !noundef !91
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = icmp uge i64 %i.af, %3
  %.not28 = or i1 %i.an, %i.am
  br i1 %.not28, label %._crit_edge, label %bb.d, !llvm.loop !432

._crit_edge:                                      ; preds = %bb.h, %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !182
  %i.aq = add i64 %i.ap, %3
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !182
  ret void
}

end_hunk_2
