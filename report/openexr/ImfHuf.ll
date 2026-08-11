inline.NumInlined: 142
inline.NumDeleted: 51
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN7Imf_3_411hufCompressEPKtiPc:bb.a
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !10
  %.not65.i.epil = icmp eq i64 %i.aw, 0
  br i1 %.not65.i.epil, label %._crit_edge.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i30.epil.preheader
  %i.ax = sext i32 %.057133.i.epil.init to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ax
  store ptr %i.av, ptr %i.ay, align 8, !tbaa !18
  %i.az = add nsw i32 %.057133.i.epil.init, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i30.epil.preheader, %bb.e, %._crit_edge.i.unr-lcssa
  %.2.lcssa = phi i32 [ %.2.1, %._crit_edge.i.unr-lcssa ], [ %.1.epil.init, %.lr.ph.i30.epil.preheader ], [ %i.au, %bb.e ] ; 3 uses
  %.158.i.lcssa = phi i32 [ %.158.i.1, %._crit_edge.i.unr-lcssa ], [ %.057133.i.epil.init, %.lr.ph.i30.epil.preheader ], [ %i.az, %bb.e ] ; 4 uses
  %i.ba = trunc nuw nsw i64 %indvars.iv.i28 to i32 ; 3 uses
  %i.bb = add nsw i32 %.2.lcssa, 1                ; 3 uses
  %i.bc = sext i32 %i.bb to i64                   ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.bc ; 4 uses
  store i64 1, ptr %i.bd, align 8, !tbaa !10
  %i.be = sext i32 %.158.i.lcssa to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.be
  store ptr %i.bd, ptr %i.bf, align 8, !tbaa !18
  %i.bg = add i32 %.158.i.lcssa, 1                ; 2 uses
  %i.bh = icmp slt i32 %.158.i.lcssa, 1
  br i1 %i.bh, label %_ZSt9make_heapIPPmN7Imf_3_412_GLOBAL__N_112FHeapCompareEEvT_S5_T0_.exit.i, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i
  %i.bi = zext nneg i32 %i.bg to i64              ; 3 uses
  %i.bj = add nsw i64 %i.bi, -2                   ; 2 uses
  %i.bk = lshr i64 %i.bj, 1                       ; 3 uses
  %i.bl = add nsw i64 %i.bi, -1
  %i.bm = lshr i64 %i.bl, 1                       ; 2 uses
  %i.bn = and i64 %i.bi, 1
  %i.bo = icmp eq i64 %i.bn, 0
  %i.bp = or disjoint i64 %i.bj, 1                ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bk
  br label %bb.g

bb.g:                                             ; preds = %_ZSt13__adjust_heapIPPmlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_T0_SA_T1_T2_.exit.i.i.i, %bb.f
  %.014.i.i.i = phi i64 [ %i.bk, %bb.f ], [ %i.da, %_ZSt13__adjust_heapIPPmlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_T0_SA_T1_T2_.exit.i.i.i ] ; 8 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.014.i.i.i
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !18 ; 3 uses
  %i.bu = icmp slt i64 %.014.i.i.i, %i.bm
  br i1 %i.bu, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.030.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.014.i.i.i, %bb.g ] ; 2 uses
  %i.bv = shl i64 %.030.i.i.i.i, 1                ; 3 uses
  %i.bw = add i64 %i.bv, 2                        ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bw
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bv
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.bx, align 8, !tbaa !18 ; 2 uses
  %.val29.i.i.i.i = load ptr, ptr %i.bz, align 8, !tbaa !18 ; 2 uses
  %i.ca = load i64, ptr %.val.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.cb = load i64, ptr %.val29.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.cc = icmp ugt i64 %i.ca, %i.cb
  %i.cd = icmp eq i64 %i.ca, %i.cb
  %i.ce = icmp ugt ptr %.val.i.i.i.i, %.val29.i.i.i.i
  %i.cf = and i1 %i.ce, %i.cd
  %i.cg = or i1 %i.cc, %i.cf
  %i.ch = or disjoint i64 %i.bv, 1
  %spec.select.i.i.i.i = select i1 %i.cg, i64 %i.ch, i64 %i.bw ; 4 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %spec.select.i.i.i.i
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !18
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.030.i.i.i.i
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !18
  %i.cl = icmp slt i64 %spec.select.i.i.i.i, %i.bm
  br i1 %i.cl, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !21

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.g
  %.0.lcssa.i.i.i.i = phi i64 [ %.014.i.i.i, %bb.g ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.cm = icmp eq i64 %.0.lcssa.i.i.i.i, %i.bk
  %or.cond.i.i.i = select i1 %i.bo, i1 %i.cm, i1 false
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.cn = load ptr, ptr %i.bq, align 8, !tbaa !18
  store ptr %i.cn, ptr %i.br, align 8, !tbaa !18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i
  %.128.i.i.i.i = phi i64 [ %i.bp, %bb.h ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.co = icmp samesign ugt i64 %.128.i.i.i.i, %.014.i.i.i
  br i1 %i.co, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIPPmlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_T0_SA_T1_T2_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i
  %i.cp = load i64, ptr %i.bt, align 8, !tbaa !10 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i
  %.0133.i.i.i.i.i = phi i64 [ %.128.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i, %bb.k ] ; 3 uses
  %.04.in.i.i.i.i.i = add nsw i64 %.0133.i.i.i.i.i, -1
  %.048.i.i.i.i.i = lshr i64 %.04.in.i.i.i.i.i, 1 ; 4 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.048.i.i.i.i.i
  %.val.i.i.i.i.i = load ptr, ptr %i.cq, align 8, !tbaa !18 ; 3 uses
  %i.cr = load i64, ptr %.val.i.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.cs = icmp ugt i64 %i.cr, %i.cp
  %i.ct = icmp eq i64 %i.cr, %i.cp
  %i.cu = icmp ugt ptr %.val.i.i.i.i.i, %i.bt
  %i.cv = and i1 %i.cu, %i.ct
  %i.cw = or i1 %i.cs, %i.cv
  br i1 %i.cw, label %bb.k, label %_ZSt13__adjust_heapIPPmlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_T0_SA_T1_T2_.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.0133.i.i.i.i.i
  store ptr %.val.i.i.i.i.i, ptr %i.cx, align 8, !tbaa !18
  %i.cy = icmp samesign ugt i64 %.048.i.i.i.i.i, %.014.i.i.i
  br i1 %i.cy, label %bb.j, label %_ZSt13__adjust_heapIPPmlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_T0_SA_T1_T2_.exit.i.i.i, !llvm.loop !22

_ZSt13__adjust_heapIPPmlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_T0_SA_T1_T2_.exit.i.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %.013.lcssa.i.i.i.i.i = phi i64 [ %.128.i.i.i.i, %bb.i ], [ %.0133.i.i.i.i.i, %bb.j ], [ %.048.i.i.i.i.i, %bb.k ]
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.013.lcssa.i.i.i.i.i
  store ptr %i.bt, ptr %i.cz, align 8, !tbaa !18
  %.not.i.i.i = icmp eq i64 %.014.i.i.i, 0
  %i.da = add nsw i64 %.014.i.i.i, -1
  br i1 %.not.i.i.i, label %_ZSt9make_heapIPPmN7Imf_3_412_GLOBAL__N_112FHeapCompareEEvT_S5_T0_.exit.i, label %bb.g, !llvm.loop !23

.lr.ph.i30:                                       ; preds = %bb.n, %.lr.ph.i30.preheader.new
  %.1 = phi i32 [ 0, %.lr.ph.i30.preheader.new ], [ %.2.1, %bb.n ]
  %indvars.iv141.i = phi i64 [ %indvars.iv.i28, %.lr.ph.i30.preheader.new ], [ %indvars.iv.next142.i.1, %bb.n ] ; 5 uses
  %.057133.i = phi i32 [ 0, %.lr.ph.i30.preheader.new ], [ %.158.i.1, %bb.n ] ; 3 uses
  %niter194 = phi i64 [ 0, %.lr.ph.i30.preheader.new ], [ %niter194.next.1, %bb.n ]
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv141.i
  %i.dc = trunc nuw nsw i64 %indvars.iv141.i to i32 ; 2 uses
  store i32 %i.dc, ptr %i.db, align 4, !tbaa !17
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv141.i ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !10
  %.not65.i = icmp eq i64 %i.de, 0
  br i1 %.not65.i, label %.lr.ph.i30.1, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i30
  %i.df = sext i32 %.057133.i to i64
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.df
  store ptr %i.dd, ptr %i.dg, align 8, !tbaa !18
  %i.dh = add nsw i32 %.057133.i, 1
  br label %.lr.ph.i30.1

.lr.ph.i30.1:                                     ; preds = %bb.l, %.lr.ph.i30
  %.2 = phi i32 [ %.1, %.lr.ph.i30 ], [ %i.dc, %bb.l ]
  %.158.i = phi i32 [ %.057133.i, %.lr.ph.i30 ], [ %i.dh, %bb.l ] ; 3 uses
  %indvars.iv.next142.i = add nuw nsw i64 %indvars.iv141.i, 1 ; 3 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.next142.i
  %i.dj = trunc nuw nsw i64 %indvars.iv.next142.i to i32 ; 2 uses
  store i32 %i.dj, ptr %i.di, align 4, !tbaa !17
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next142.i ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !10
  %.not65.i.1 = icmp eq i64 %i.dl, 0
  br i1 %.not65.i.1, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i30.1
  %i.dm = sext i32 %.158.i to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.dm
  store ptr %i.dk, ptr %i.dn, align 8, !tbaa !18
  %i.do = add nsw i32 %.158.i, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i30.1
  %.2.1 = phi i32 [ %.2, %.lr.ph.i30.1 ], [ %i.dj, %bb.m ] ; 3 uses
  %.158.i.1 = phi i32 [ %.158.i, %.lr.ph.i30.1 ], [ %i.do, %bb.m ] ; 3 uses
  %indvars.iv.next142.i.1 = add nuw nsw i64 %indvars.iv141.i, 2 ; 2 uses
  %niter194.next.1 = add i64 %niter194, 2         ; 2 uses
  %niter194.ncmp.1 = icmp eq i64 %niter194.next.1, %unroll_iter193
  br i1 %niter194.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i30, !llvm.loop !24

_ZSt9make_heapIPPmN7Imf_3_412_GLOBAL__N_112FHeapCompareEEvT_S5_T0_.exit.i: ; preds = %_ZSt13__adjust_heapIPPmlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_T0_SA_T1_T2_.exit.i.i.i, %._crit_edge.i
  %i.dp = invoke noalias noundef nonnull dereferenceable(524296) ptr @_Znam(i64 noundef 524296) #11
          to label %bb.o unwind label %_ZN7Imf_3_49AutoArrayIPmLi65537EED2Ev.exit100.i ; 10 uses

bb.o:                                             ; preds = %_ZSt9make_heapIPPmN7Imf_3_412_GLOBAL__N_112FHeapCompareEEvT_S5_T0_.exit.i
  %i.dq = icmp sgt i32 %.158.i.lcssa, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(524296) %i.dp, i8 0, i64 524296, i1 false)
  br i1 %i.dq, label %.lr.ph138.i, label %._crit_edge139.i

.lr.ph138.i:                                      ; preds = %bb.o
  %i.dr = ptrtoint ptr %i.c to i64                ; 2 uses
  %i.ds = zext i32 %i.bg to i64
  br label %bb.p

.loopexit.i:                                      ; preds = %bb.ad
  %i.dt = trunc nuw i64 %indvars.iv144.i to i32
  %i.du = icmp sgt i32 %i.dt, 2
  br i1 %i.du, label %bb.p, label %._crit_edge139.i, !llvm.loop !25

bb.p:                                             ; preds = %.loopexit.i, %.lr.ph138.i
  %indvars.iv144.i = phi i64 [ %i.ds, %.lr.ph138.i ], [ %i.fs, %.loopexit.i ] ; 5 uses
  %i.dv = load ptr, ptr %i.an, align 8, !tbaa !18 ; 2 uses
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = sub i64 %i.dw, %i.dr                    ; 2 uses
  %i.dy = lshr exact i64 %i.dx, 3
  %i.dz = trunc i64 %i.dy to i32                  ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv144.i
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 -8 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !18 ; 3 uses
  store ptr %i.dv, ptr %i.eb, align 8, !tbaa !18
  %.idx.i = shl nuw nsw i64 %indvars.iv144.i, 3
  %i.ed = add nsw i64 %.idx.i, -8                 ; 2 uses
  %i.ee = ashr exact i64 %i.ed, 3                 ; 3 uses
  %i.ef = add nsw i64 %i.ee, -1
  %3 = sdiv i64 %i.ef, 2
  %i.eg = icmp sgt i64 %i.ee, 2
  br i1 %i.eg, label %.lr.ph.i.i.i75.i, label %._crit_edge.i.i.i66.i

.lr.ph.i.i.i75.i:                                 ; preds = %bb.p, %.lr.ph.i.i.i75.i
  %.030.i.i.i76.i = phi i64 [ %spec.select.i.i.i79.i, %.lr.ph.i.i.i75.i ], [ 0, %bb.p ] ; 2 uses
  %i.eh = shl i64 %.030.i.i.i76.i, 1              ; 3 uses
  %i.ei = add i64 %i.eh, 2                        ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ei
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.eh
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %.val.i.i.i77.i = load ptr, ptr %i.ej, align 8, !tbaa !18 ; 2 uses
  %.val29.i.i.i78.i = load ptr, ptr %i.el, align 8, !tbaa !18 ; 2 uses
  %i.em = load i64, ptr %.val.i.i.i77.i, align 8, !tbaa !10 ; 2 uses
  %i.en = load i64, ptr %.val29.i.i.i78.i, align 8, !tbaa !10 ; 2 uses
  %i.eo = icmp ugt i64 %i.em, %i.en
  %i.ep = icmp eq i64 %i.em, %i.en
  %i.eq = icmp ugt ptr %.val.i.i.i77.i, %.val29.i.i.i78.i
  %i.er = and i1 %i.eq, %i.ep
  %i.es = or i1 %i.eo, %i.er
  %i.et = or disjoint i64 %i.eh, 1
  %spec.select.i.i.i79.i = select i1 %i.es, i64 %i.et, i64 %i.ei ; 4 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %spec.select.i.i.i79.i
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !18
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.030.i.i.i76.i
  store ptr %i.ev, ptr %i.ew, align 8, !tbaa !18
  %i.ex = icmp slt i64 %spec.select.i.i.i79.i, %3
  br i1 %i.ex, label %.lr.ph.i.i.i75.i, label %._crit_edge.i.i.i66.i, !llvm.loop !21

._crit_edge.i.i.i66.i:                            ; preds = %.lr.ph.i.i.i75.i, %bb.p
  %.0.lcssa.i.i.i67.i = phi i64 [ 0, %bb.p ], [ %spec.select.i.i.i79.i, %.lr.ph.i.i.i75.i ] ; 5 uses
  %i.ey = and i64 %i.ed, 8
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i.i66.i
  %i.fa = add nsw i64 %i.ee, -2
  %i.fb = ashr exact i64 %i.fa, 1
  %i.fc = icmp eq i64 %.0.lcssa.i.i.i67.i, %i.fb
  br i1 %i.fc, label %.thread.i.i.i, label %bb.r

.thread.i.i.i:                                    ; preds = %bb.q
  %i.fd = shl nuw nsw i64 %.0.lcssa.i.i.i67.i, 1
  %i.fe = or disjoint i64 %i.fd, 1                ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.fe
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !18
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.0.lcssa.i.i.i67.i
  store ptr %i.fg, ptr %i.fh, align 8, !tbaa !18
  br label %.lr.ph.i.i.i.i69.i

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i.i66.i
  %.not.i.i68.i = icmp eq i64 %.0.lcssa.i.i.i67.i, 0
  br i1 %.not.i.i68.i, label %_ZSt10__pop_heapIPPmN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i69.i

.lr.ph.i.i.i.i69.i:                               ; preds = %bb.r, %.thread.i.i.i
  %.128.i2.i.i.i = phi i64 [ %i.fe, %.thread.i.i.i ], [ %.0.lcssa.i.i.i67.i, %bb.r ]
  %i.fi = load i64, ptr %i.ec, align 8, !tbaa !10 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %.lr.ph.i.i.i.i69.i
  %.0133.i.i.i.i70.i = phi i64 [ %.128.i2.i.i.i, %.lr.ph.i.i.i.i69.i ], [ %.048.i.i.i.i72.i, %bb.t ] ; 3 uses
  %.04.in.i.i.i.i71.i = add nsw i64 %.0133.i.i.i.i70.i, -1
  %.048.i.i.i.i72.i = lshr i64 %.04.in.i.i.i.i71.i, 1 ; 3 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.048.i.i.i.i72.i
  %.val.i.i.i.i73.i = load ptr, ptr %i.fj, align 8, !tbaa !18 ; 3 uses
  %i.fk = load i64, ptr %.val.i.i.i.i73.i, align 8, !tbaa !10 ; 2 uses
  %i.fl = icmp ugt i64 %i.fk, %i.fi
  %i.fm = icmp eq i64 %i.fk, %i.fi
  %i.fn = icmp ugt ptr %.val.i.i.i.i73.i, %i.ec
  %i.fo = and i1 %i.fn, %i.fm
  %i.fp = or i1 %i.fl, %i.fo
  br i1 %i.fp, label %bb.t, label %_ZSt10__pop_heapIPPmN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_S9_S9_RT0_.exit.i.i

bb.t:                                             ; preds = %bb.s
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.0133.i.i.i.i70.i
  store ptr %.val.i.i.i.i73.i, ptr %i.fq, align 8, !tbaa !18
  %.not3.i.i.i = icmp eq i64 %.048.i.i.i.i72.i, 0
  br i1 %.not3.i.i.i, label %_ZSt10__pop_heapIPPmN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_S9_S9_RT0_.exit.i.i, label %bb.s, !llvm.loop !22

_ZSt10__pop_heapIPPmN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_S9_S9_RT0_.exit.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.013.lcssa.i.i.i.i74.i = phi i64 [ 0, %bb.r ], [ %.0133.i.i.i.i70.i, %bb.s ], [ 0, %bb.t ]
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.013.lcssa.i.i.i.i74.i
  store ptr %i.ec, ptr %i.fr, align 8, !tbaa !18
  %i.fs = add nsw i64 %indvars.iv144.i, -1        ; 4 uses
  %i.ft = load ptr, ptr %i.an, align 8, !tbaa !18 ; 2 uses
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = sub i64 %i.fu, %i.dr                    ; 2 uses
  %i.fw = lshr exact i64 %i.fv, 3
  %i.fx = trunc i64 %i.fw to i32
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.fs ; 2 uses
  %.wide146.i = icmp ugt i64 %i.fs, 1             ; 2 uses
  br i1 %.wide146.i, label %bb.u, label %_ZSt8pop_heapIPPmN7Imf_3_412_GLOBAL__N_112FHeapCompareEEvT_S5_T0_.exit98.i

bb.u:                                             ; preds = %_ZSt10__pop_heapIPPmN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_S9_S9_RT0_.exit.i.i
  %i.fz = getelementptr inbounds i8, ptr %i.fy, i64 -8 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !18 ; 3 uses
  store ptr %i.ft, ptr %i.fz, align 8, !tbaa !18
  %.idx131.i = shl nuw nsw i64 %i.fs, 3
  %i.gb = add nsw i64 %.idx131.i, -8              ; 2 uses
  %i.gc = ashr exact i64 %i.gb, 3                 ; 3 uses
  %i.gd = add nsw i64 %i.gc, -1
  %4 = sdiv i64 %i.gd, 2
  %i.ge = icmp sgt i64 %i.gc, 2
  br i1 %i.ge, label %.lr.ph.i.i.i93.i, label %._crit_edge.i.i.i80.i

.lr.ph.i.i.i93.i:                                 ; preds = %bb.u, %.lr.ph.i.i.i93.i
  %.030.i.i.i94.i = phi i64 [ %spec.select.i.i.i97.i, %.lr.ph.i.i.i93.i ], [ 0, %bb.u ] ; 2 uses
  %i.gf = shl i64 %.030.i.i.i94.i, 1              ; 3 uses
  %i.gg = add i64 %i.gf, 2                        ; 2 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.gg
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.gf
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %.val.i.i.i95.i = load ptr, ptr %i.gh, align 8, !tbaa !18 ; 2 uses
  %.val29.i.i.i96.i = load ptr, ptr %i.gj, align 8, !tbaa !18 ; 2 uses
  %i.gk = load i64, ptr %.val.i.i.i95.i, align 8, !tbaa !10 ; 2 uses
  %i.gl = load i64, ptr %.val29.i.i.i96.i, align 8, !tbaa !10 ; 2 uses
  %i.gm = icmp ugt i64 %i.gk, %i.gl
  %i.gn = icmp eq i64 %i.gk, %i.gl
  %i.go = icmp ugt ptr %.val.i.i.i95.i, %.val29.i.i.i96.i
  %i.gp = and i1 %i.go, %i.gn
  %i.gq = or i1 %i.gm, %i.gp
  %i.gr = or disjoint i64 %i.gf, 1
  %spec.select.i.i.i97.i = select i1 %i.gq, i64 %i.gr, i64 %i.gg ; 4 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %spec.select.i.i.i97.i
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !18
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.030.i.i.i94.i
  store ptr %i.gt, ptr %i.gu, align 8, !tbaa !18
  %i.gv = icmp slt i64 %spec.select.i.i.i97.i, %4
  br i1 %i.gv, label %.lr.ph.i.i.i93.i, label %._crit_edge.i.i.i80.i, !llvm.loop !21

._crit_edge.i.i.i80.i:                            ; preds = %.lr.ph.i.i.i93.i, %bb.u
  %.0.lcssa.i.i.i81.i = phi i64 [ 0, %bb.u ], [ %spec.select.i.i.i97.i, %.lr.ph.i.i.i93.i ] ; 5 uses
  %i.gw = and i64 %i.gb, 8
  %i.gx = icmp eq i64 %i.gw, 0
  br i1 %i.gx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i.i80.i
  %i.gy = add nsw i64 %i.gc, -2
  %i.gz = ashr exact i64 %i.gy, 1
  %i.ha = icmp eq i64 %.0.lcssa.i.i.i81.i, %i.gz
  br i1 %i.ha, label %.thread.i.i92.i, label %bb.w

.thread.i.i92.i:                                  ; preds = %bb.v
  %i.hb = shl nuw nsw i64 %.0.lcssa.i.i.i81.i, 1
  %i.hc = or disjoint i64 %i.hb, 1                ; 2 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.hc
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !18
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.0.lcssa.i.i.i81.i
  store ptr %i.he, ptr %i.hf, align 8, !tbaa !18
  br label %.lr.ph.i.i.i.i83.i

bb.w:                                             ; preds = %bb.v, %._crit_edge.i.i.i80.i
  %.not.i.i82.i = icmp eq i64 %.0.lcssa.i.i.i81.i, 0
  br i1 %.not.i.i82.i, label %_ZSt10__pop_heapIPPmN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_S9_S9_RT0_.exit.i89.i, label %.lr.ph.i.i.i.i83.i

.lr.ph.i.i.i.i83.i:                               ; preds = %bb.w, %.thread.i.i92.i
  %.128.i2.i.i84.i = phi i64 [ %i.hc, %.thread.i.i92.i ], [ %.0.lcssa.i.i.i81.i, %bb.w ]
  %i.hg = load i64, ptr %i.ga, align 8, !tbaa !10 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %.lr.ph.i.i.i.i83.i
  %.0133.i.i.i.i85.i = phi i64 [ %.128.i2.i.i84.i, %.lr.ph.i.i.i.i83.i ], [ %.048.i.i.i.i87.i, %bb.y ] ; 3 uses
  %.04.in.i.i.i.i86.i = add nsw i64 %.0133.i.i.i.i85.i, -1
  %.048.i.i.i.i87.i = lshr i64 %.04.in.i.i.i.i86.i, 1 ; 3 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.048.i.i.i.i87.i
  %.val.i.i.i.i88.i = load ptr, ptr %i.hh, align 8, !tbaa !18 ; 3 uses
  %i.hi = load i64, ptr %.val.i.i.i.i88.i, align 8, !tbaa !10 ; 2 uses
  %i.hj = icmp ugt i64 %i.hi, %i.hg
  %i.hk = icmp eq i64 %i.hi, %i.hg
  %i.hl = icmp ugt ptr %.val.i.i.i.i88.i, %i.ga
  %i.hm = and i1 %i.hl, %i.hk
  %i.hn = or i1 %i.hj, %i.hm
  br i1 %i.hn, label %bb.y, label %_ZSt10__pop_heapIPPmN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_S9_S9_RT0_.exit.i89.i

bb.y:                                             ; preds = %bb.x
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.0133.i.i.i.i85.i
  store ptr %.val.i.i.i.i88.i, ptr %i.ho, align 8, !tbaa !18
  %.not3.i.i91.i = icmp eq i64 %.048.i.i.i.i87.i, 0
  br i1 %.not3.i.i91.i, label %_ZSt10__pop_heapIPPmN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_S9_S9_RT0_.exit.i89.i, label %bb.x, !llvm.loop !22

_ZSt10__pop_heapIPPmN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_S9_S9_RT0_.exit.i89.i: ; preds = %bb.y, %bb.x, %bb.w
  %.013.lcssa.i.i.i.i90.i = phi i64 [ 0, %bb.w ], [ %.0133.i.i.i.i85.i, %bb.x ], [ 0, %bb.y ]
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.013.lcssa.i.i.i.i90.i
  store ptr %i.ga, ptr %i.hp, align 8, !tbaa !18
  br label %_ZSt8pop_heapIPPmN7Imf_3_412_GLOBAL__N_112FHeapCompareEEvT_S5_T0_.exit98.i

_ZSt8pop_heapIPPmN7Imf_3_412_GLOBAL__N_112FHeapCompareEEvT_S5_T0_.exit98.i: ; preds = %_ZSt10__pop_heapIPPmN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_S9_S9_RT0_.exit.i89.i, %_ZSt10__pop_heapIPPmN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_412_GLOBAL__N_112FHeapCompareEEEEvT_S9_S9_RT0_.exit.i.i
  %sext.i = shl i64 %i.dx, 29
  %i.hq = ashr i64 %sext.i, 32
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.hq
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !10
  %sext60.i = shl i64 %i.fv, 29
  %i.ht = ashr i64 %sext60.i, 32
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ht ; 2 uses
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !10
  %i.hw = add i64 %i.hv, %i.hs
  store i64 %i.hw, ptr %i.hu, align 8, !tbaa !10
  %i.hx = getelementptr inbounds i8, ptr %i.fy, i64 -8
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !18 ; 3 uses
  %i.hz = add nsw i64 %indvars.iv144.i, -2        ; 2 uses
  br i1 %.wide146.i, label %.lr.ph.i.i.i, label %_ZSt9push_heapIPPmN7Imf_3_412_GLOBAL__N_112FHeapCompareEEvT_S5_T0_.exit.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt8pop_heapIPPmN7Imf_3_412_GLOBAL__N_112FHeapCompareEEvT_S5_T0_.exit98.i
  %i.ia = load i64, ptr %i.hy, align 8, !tbaa !10 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.aa, %.lr.ph.i.i.i
  %.0133.i.i.i = phi i64 [ %i.hz, %.lr.ph.i.i.i ], [ %.048.i.i.i, %bb.aa ] ; 3 uses
  %.04.in.i.i.i = add nsw i64 %.0133.i.i.i, -1
  %.048.i.i.i = lshr i64 %.04.in.i.i.i, 1         ; 3 uses
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.048.i.i.i
  %.val.i.i.i = load ptr, ptr %i.ib, align 8, !tbaa !18 ; 3 uses
  %i.ic = load i64, ptr %.val.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.id = icmp ugt i64 %i.ic, %i.ia
  %i.ie = icmp eq i64 %i.ic, %i.ia
  %i.if = icmp ugt ptr %.val.i.i.i, %i.hy
  %i.ig = and i1 %i.if, %i.ie
  %i.ih = or i1 %i.id, %i.ig
  br i1 %i.ih, label %bb.aa, label %_ZSt9push_heapIPPmN7Imf_3_412_GLOBAL__N_112FHeapCompareEEvT_S5_T0_.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.0133.i.i.i
  store ptr %.val.i.i.i, ptr %i.ii, align 8, !tbaa !18
  %.not.i.i = icmp eq i64 %.048.i.i.i, 0
  br i1 %.not.i.i, label %_ZSt9push_heapIPPmN7Imf_3_412_GLOBAL__N_112FHeapCompareEEvT_S5_T0_.exit.i, label %bb.z, !llvm.loop !22

_ZSt9push_heapIPPmN7Imf_3_412_GLOBAL__N_112FHeapCompareEEvT_S5_T0_.exit.i: ; preds = %bb.aa, %bb.z, %_ZSt8pop_heapIPPmN7Imf_3_412_GLOBAL__N_112FHeapCompareEEvT_S5_T0_.exit98.i
  %.013.lcssa.i.i.i = phi i64 [ %i.hz, %_ZSt8pop_heapIPPmN7Imf_3_412_GLOBAL__N_112FHeapCompareEEvT_S5_T0_.exit98.i ], [ %.0133.i.i.i, %bb.z ], [ 0, %bb.aa ]
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.an, i64 %.013.lcssa.i.i.i
  store ptr %i.hy, ptr %i.ij, align 8, !tbaa !18
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %_ZSt9push_heapIPPmN7Imf_3_412_GLOBAL__N_112FHeapCompareEEvT_S5_T0_.exit.i
  %.050.i = phi i32 [ %i.fx, %_ZSt9push_heapIPPmN7Imf_3_412_GLOBAL__N_112FHeapCompareEEvT_S5_T0_.exit.i ], [ %i.ip, %bb.ab ] ; 2 uses
  %i.ik = sext i32 %.050.i to i64                 ; 3 uses
  %i.il = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.ik ; 2 uses
  %i.im = load i64, ptr %i.il, align 8, !tbaa !10
  %i.in = add i64 %i.im, 1
  store i64 %i.in, ptr %i.il, align 8, !tbaa !10
  %i.io = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ik
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !17 ; 2 uses
  %i.iq = icmp eq i32 %i.ip, %.050.i
  br i1 %i.iq, label %bb.ac, label %bb.ab, !llvm.loop !26

_ZN7Imf_3_49AutoArrayIPmLi65537EED2Ev.exit100.i:  ; preds = %_ZSt9make_heapIPPmN7Imf_3_412_GLOBAL__N_112FHeapCompareEEvT_S5_T0_.exit.i
  %i.ir = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.an) #12
  br label %_ZN7Imf_3_49AutoArrayIiLi65537EED2Ev.exit101.i

bb.ac:                                            ; preds = %bb.ab
  %i.is = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ik
  store i32 %i.dz, ptr %i.is, align 4, !tbaa !17
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %bb.ac
  %.0.i = phi i32 [ %i.dz, %bb.ac ], [ %i.iy, %bb.ad ] ; 2 uses
  %i.it = sext i32 %.0.i to i64                   ; 2 uses
  %i.iu = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.it ; 2 uses
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !10
  %i.iw = add i64 %i.iv, 1
  store i64 %i.iw, ptr %i.iu, align 8, !tbaa !10
  %i.ix = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.it
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !17 ; 2 uses
  %i.iz = icmp eq i32 %i.iy, %.0.i
  br i1 %i.iz, label %.loopexit.i, label %bb.ad, !llvm.loop !27

._crit_edge139.i:                                 ; preds = %.loopexit.i, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(472) %i.a, i8 0, i64 472, i1 false), !tbaa !10
  br label %.preheader28.i.i

.preheader28.i.i:                                 ; preds = %.preheader28.i.i.1, %._crit_edge139.i
  %indvars.iv.i.i = phi i64 [ 0, %._crit_edge139.i ], [ %indvars.iv.next.i.i.3, %.preheader28.i.i.1 ] ; 6 uses
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.i.i
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !10
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.jb ; 2 uses
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !10
  %i.je = add i64 %i.jd, 1
  store i64 %i.je, ptr %i.jc, align 8, !tbaa !10
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i, 65536
  br i1 %exitcond.not.i.i, label %.preheader27.i.i, label %.preheader28.i.i.1

.preheader28.i.i.1:                               ; preds = %.preheader28.i.i
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.i.i
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !10
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.jh ; 2 uses
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !10
  %i.jk = add i64 %i.jj, 1
  store i64 %i.jk, ptr %i.ji, align 8, !tbaa !10
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.i.i
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !10
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.jn ; 2 uses
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !10
  %i.jq = add i64 %i.jp, 1
  store i64 %i.jq, ptr %i.jo, align 8, !tbaa !10
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.i.i
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 24
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !10
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.jt ; 2 uses
end_hunk_0
