inline.NumInlined: 6793
inline.NumDeleted: 2407
loop-unroll.NumCompletelyUnrolled: 100
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 295
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_117ListRangeFunctionINS0_16NumericRangeInfoELb0EEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a

.lr.ph.i:                                         ; preds = %bb.z
  %i.bq = sdiv exact i64 %.pre146, 104
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, %.lr.ph.i
  %.01114.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cg, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i ] ; 2 uses
  %i.br = getelementptr inbounds nuw [80 x i8], ptr %.ptr13.i, i64 %.01114.i ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !66
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !75 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %.058100
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !3
  %i.bw = zext i32 %i.bv to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.ab, %bb.aa
  %i.bx = phi i64 [ %i.bw, %bb.ab ], [ %.058100, %bb.aa ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !76 ; 2 uses
  %.not.i12.i = icmp eq ptr %i.bz, null
  br i1 %.not.i12.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %i.ca = lshr i64 %i.bx, 6
  %i.cb = and i64 %i.bx, 63
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ca
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !77
  %i.ce = shl nuw i64 1, %i.cb
  %i.cf = and i64 %i.cd, %i.ce
  %.not.i = icmp eq i64 %i.cf, 0
  br i1 %.not.i, label %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE10RowIsValidEm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %i.cg = add nuw i64 %.01114.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cg, %i.bq
  br i1 %exitcond.not.i, label %.loopexit, label %bb.aa, !llvm.loop !195

_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %i.ch = load ptr, ptr %i.bf, align 8, !tbaa !76 ; 2 uses
  %.not.i79 = icmp eq ptr %i.ch, null
  br i1 %.not.i79, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE10RowIsValidEm.exit
  %i.ci = load i64, ptr %i.bg, align 8, !tbaa !78
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 noundef %i.ci)
          to label %.noexc unwind label %bb.ae

.noexc:                                           ; preds = %bb.ac
  %.pre.i = load ptr, ptr %i.bf, align 8, !tbaa !76
  br label %bb.ad

bb.ad:                                            ; preds = %.noexc, %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE10RowIsValidEm.exit
  %i.cj = phi ptr [ %.pre.i, %.noexc ], [ %i.ch, %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE10RowIsValidEm.exit ]
  %i.ck = lshr i64 %.058100, 6
  %i.cl = and i64 %.058100, 63
  %i.cm = shl nuw i64 1, %i.cl
  %i.cn = xor i64 %i.cm, -1
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ck ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !77
  %i.cq = and i64 %i.cp, %i.cn
  store i64 %i.cq, ptr %i.co, align 8, !tbaa !77
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %.058100 ; 2 uses
  store i64 %.05999, ptr %i.cr, align 8, !tbaa !81
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i64 0, ptr %i.cs, align 8, !tbaa !83
  br label %bb.ak

bb.ae:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE13GetListValuesEmRlS4_S4_.exit.i, %bb.ac
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit:                                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, %bb.z
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %.058100 ; 2 uses
  store i64 %.05999, ptr %i.cu, align 8, !tbaa !81
  %i.cv = icmp eq i64 %.pre146, 104               ; 3 uses
  %.ptr13.i.val.pre = load ptr, ptr %.ptr13.i, align 8 ; 2 uses
  br i1 %i.cv, label %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE14StartListValueEm.exit.i.i, label %bb.af

bb.af:                                            ; preds = %.loopexit
  %i.cw = load ptr, ptr %i.bh, align 8, !tbaa !80
  %i.cx = load ptr, ptr %.ptr13.i.val.pre, align 8, !tbaa !75 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %.058100
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3
  %i.da = zext i32 %i.cz to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i: ; preds = %bb.ag, %bb.af
  %i.db = phi i64 [ %i.da, %bb.ag ], [ %.058100, %bb.af ]
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !77
  br label %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE14StartListValueEm.exit.i.i

_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE14StartListValueEm.exit.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i, %.loopexit
  %.0.i.i.i = phi i64 [ %i.dd, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i ], [ 0, %.loopexit ]
  %.val = load ptr, ptr %i.bh, align 8
  %.sroa.gep143.val = load ptr, ptr %.sroa.gep143, align 8
  %i.de = select i1 %i.cv, ptr %.val, ptr %.sroa.gep143.val
  %.sroa.gep.val = load ptr, ptr %.ptr.ptr.1.i, align 8
  %i.df = select i1 %i.cv, ptr %.ptr13.i.val.pre, ptr %.sroa.gep.val
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !75 ; 2 uses
  %.not.i.i6.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i6.i.i, label %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE12EndListValueEm.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE14StartListValueEm.exit.i.i
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %.058100
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3
  %i.dj = zext i32 %i.di to i64
  br label %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE12EndListValueEm.exit.i.i

_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE12EndListValueEm.exit.i.i: ; preds = %bb.ah, %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE14StartListValueEm.exit.i.i
  %i.dk = phi i64 [ %i.dj, %bb.ah ], [ %.058100, %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE14StartListValueEm.exit.i.i ]
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dk
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !77
  %i.dn = sdiv exact i64 %.pre146, 104
  %i.do = icmp ult i64 %i.dn, 3
  br i1 %i.do, label %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE13GetListValuesEmRlS4_S4_.exit.i, label %bb.ai

bb.ai:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE12EndListValueEm.exit.i.i
  %i.dp = load ptr, ptr %i.bi, align 8, !tbaa !80
  %i.dq = load ptr, ptr %.ptr.ptr.2.i, align 8, !tbaa !66
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !75 ; 2 uses
  %.not.i.i8.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i8.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i9.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %.058100
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !3
  %i.du = zext i32 %i.dt to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i9.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i9.i.i: ; preds = %bb.aj, %bb.ai
  %i.dv = phi i64 [ %i.du, %bb.aj ], [ %.058100, %bb.ai ]
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dv
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !77
  br label %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE13GetListValuesEmRlS4_S4_.exit.i

_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE13GetListValuesEmRlS4_S4_.exit.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i9.i.i, %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE12EndListValueEm.exit.i.i
  %.0.i10.i.i = phi i64 [ %i.dx, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i9.i.i ], [ 1, %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE12EndListValueEm.exit.i.i ]
  %i.dy = invoke fastcc noundef i64 @_ZN6duckdb12_GLOBAL__N_116NumericRangeInfo10ListLengthElllb(i64 noundef %.0.i.i.i, i64 noundef %i.dm, i64 noundef %.0.i10.i.i, i1 noundef zeroext false)
          to label %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE10ListLengthEm.exit unwind label %bb.ae ; 2 uses

_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE10ListLengthEm.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE13GetListValuesEmRlS4_S4_.exit.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i64 %i.dy, ptr %i.dz, align 8, !tbaa !83
  %i.ea = add i64 %i.dy, %.05999
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ad, %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE10ListLengthEm.exit
  %.160 = phi i64 [ %i.ea, %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE10ListLengthEm.exit ], [ %.05999, %bb.ad ] ; 2 uses
  %i.eb = add nuw i64 %.058100, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.eb, %.053
  br i1 %exitcond.not, label %._crit_edge, label %bb.z, !llvm.loop !196

bb.al:                                            ; preds = %._crit_edge
  %i.ec = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.am unwind label %bb.ap     ; 2 uses

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.ec)
          to label %_ZN6duckdb10FlatVector7GetDataIlEEPT_RNS_6VectorE.exit unwind label %bb.ap

_ZN6duckdb10FlatVector7GetDataIlEEPT_RNS_6VectorE.exit: ; preds = %bb.am
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !28 ; 4 uses
  br i1 %.not129, label %._crit_edge114, label %.lr.ph113

.lr.ph113:                                        ; preds = %_ZN6duckdb10FlatVector7GetDataIlEEPT_RNS_6VectorE.exit
  %i.ef = load ptr, ptr %5, align 8, !tbaa !189, !nonnull !121, !align !122 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !191
  %i.ei = load ptr, ptr %i.ef, align 8, !tbaa !192
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = sub i64 %i.ej, %i.ek                    ; 2 uses
  %i.em = icmp eq i64 %i.el, 104
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.eo = load ptr, ptr %i.en, align 8            ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %5, i64 176
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = load ptr, ptr %.ptr.ptr.2.i, align 8
  br i1 %i.em, label %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE18ListIncrementValueEm.exit.us, label %.lr.ph113.split

_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE18ListIncrementValueEm.exit.us: ; preds = %.lr.ph113, %._crit_edge108.us
  %.055111.us = phi i64 [ %6, %._crit_edge108.us ], [ 0, %.lr.ph113 ] ; 2 uses
  %.056110.us = phi i64 [ %.1.lcssa.us, %._crit_edge108.us ], [ 0, %.lr.ph113 ] ; 2 uses
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %.055111.us
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8 ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !83
  %.not133 = icmp eq i64 %i.eu, 0
  br i1 %.not133, label %._crit_edge108.us, label %.lr.ph107.us

._crit_edge108.us:                                ; preds = %.lr.ph107.us, %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE18ListIncrementValueEm.exit.us
  %.1.lcssa.us = phi i64 [ %.056110.us, %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE18ListIncrementValueEm.exit.us ], [ %i.ew, %.lr.ph107.us ]
  %6 = add nuw i64 %.055111.us, 1                 ; 2 uses
  %exitcond141.not = icmp eq i64 %6, %.053
  br i1 %exitcond141.not, label %._crit_edge114, label %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE18ListIncrementValueEm.exit.us, !llvm.loop !197

.lr.ph107.us:                                     ; preds = %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE18ListIncrementValueEm.exit.us, %.lr.ph107.us
  %.0106.us = phi i64 [ %i.ey, %.lr.ph107.us ], [ 0, %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE18ListIncrementValueEm.exit.us ] ; 2 uses
  %.1105.us = phi i64 [ %i.ew, %.lr.ph107.us ], [ %.056110.us, %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE18ListIncrementValueEm.exit.us ] ; 2 uses
  %.090104.us = phi i64 [ %spec.select.us, %.lr.ph107.us ], [ 0, %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE18ListIncrementValueEm.exit.us ]
  %.not73.us = icmp ne i64 %.0106.us, 0
  %i.ev = zext i1 %.not73.us to i64
  %spec.select.us = add nuw nsw i64 %.090104.us, %i.ev ; 2 uses
  %i.ew = add i64 %.1105.us, 1                    ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.1105.us
  store i64 %spec.select.us, ptr %i.ex, align 8, !tbaa !77
  %i.ey = add nuw i64 %.0106.us, 1                ; 2 uses
  %i.ez = load i64, ptr %i.et, align 8, !tbaa !83
  %i.fa = icmp ult i64 %i.ey, %i.ez
  br i1 %i.fa, label %.lr.ph107.us, label %._crit_edge108.us, !llvm.loop !198

.lr.ph113.split:                                  ; preds = %.lr.ph113
  %i.fb = sdiv exact i64 %i.el, 104
  %i.fc = icmp ult i64 %i.fb, 3
  %i.fd = load ptr, ptr %.ptr13.i, align 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !75 ; 3 uses
  %.not.i.i82 = icmp eq ptr %i.fe, null           ; 2 uses
  br i1 %i.fc, label %.lr.ph113.split.split.us, label %.lr.ph113.split.split

.lr.ph113.split.split.us:                         ; preds = %.lr.ph113.split, %._crit_edge108.us126
  %.055111.us115 = phi i64 [ %7, %._crit_edge108.us126 ], [ 0, %.lr.ph113.split ] ; 4 uses
  %.056110.us116 = phi i64 [ %.1.lcssa.us119, %._crit_edge108.us126 ], [ 0, %.lr.ph113.split ] ; 2 uses
  br i1 %.not.i.i82, label %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE14StartListValueEm.exit.us, label %bb.an

bb.an:                                            ; preds = %.lr.ph113.split.split.us
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %.055111.us115
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !3
  %i.fh = zext i32 %i.fg to i64
  br label %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE14StartListValueEm.exit.us

_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE14StartListValueEm.exit.us: ; preds = %bb.an, %.lr.ph113.split.split.us
  %i.fi = phi i64 [ %i.fh, %bb.an ], [ %.055111.us115, %.lr.ph113.split.split.us ]
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %.055111.us115
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !83
  %.not132 = icmp eq i64 %i.fl, 0
  br i1 %.not132, label %._crit_edge108.us126, label %.lr.ph107.us125.preheader

.lr.ph107.us125.preheader:                        ; preds = %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE14StartListValueEm.exit.us
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.fi
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !77
  br label %.lr.ph107.us125

._crit_edge108.us126:                             ; preds = %.lr.ph107.us125, %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE14StartListValueEm.exit.us
  %.1.lcssa.us119 = phi i64 [ %.056110.us116, %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE14StartListValueEm.exit.us ], [ %i.fp, %.lr.ph107.us125 ]
  %7 = add nuw i64 %.055111.us115, 1              ; 2 uses
  %exitcond140.not = icmp eq i64 %7, %.053
  br i1 %exitcond140.not, label %._crit_edge114, label %.lr.ph113.split.split.us, !llvm.loop !197

.lr.ph107.us125:                                  ; preds = %.lr.ph107.us125.preheader, %.lr.ph107.us125
  %.0106.us120 = phi i64 [ %i.fr, %.lr.ph107.us125 ], [ 0, %.lr.ph107.us125.preheader ] ; 2 uses
  %.1105.us121 = phi i64 [ %i.fp, %.lr.ph107.us125 ], [ %.056110.us116, %.lr.ph107.us125.preheader ] ; 2 uses
  %.090104.us122 = phi i64 [ %spec.select.us124, %.lr.ph107.us125 ], [ %i.fn, %.lr.ph107.us125.preheader ]
  %.not73.us123 = icmp ne i64 %.0106.us120, 0
  %i.fo = zext i1 %.not73.us123 to i64
  %spec.select.us124 = add nsw i64 %.090104.us122, %i.fo ; 2 uses
  %i.fp = add i64 %.1105.us121, 1                 ; 2 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.1105.us121
  store i64 %spec.select.us124, ptr %i.fq, align 8, !tbaa !77
  %i.fr = add nuw i64 %.0106.us120, 1             ; 2 uses
  %i.fs = load i64, ptr %i.fk, align 8, !tbaa !83
  %i.ft = icmp ult i64 %i.fr, %i.fs
  br i1 %i.ft, label %.lr.ph107.us125, label %._crit_edge108.us126, !llvm.loop !198

.lr.ph113.split.split:                            ; preds = %.lr.ph113.split
  %i.fu = load ptr, ptr %i.er, align 8, !tbaa !75 ; 2 uses
  %.not.i.i85 = icmp eq ptr %i.fu, null
  br label %bb.aq

._crit_edge114:                                   ; preds = %._crit_edge108, %._crit_edge108.us126, %._crit_edge108.us, %_ZN6duckdb10FlatVector7GetDataIlEEPT_RNS_6VectorE.exit
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.059.lcssa)
          to label %bb.at unwind label %bb.aw

bb.ao:                                            ; preds = %._crit_edge
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ap:                                            ; preds = %bb.am, %bb.al
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.aq:                                            ; preds = %.lr.ph113.split.split, %._crit_edge108
  %.055111 = phi i64 [ 0, %.lr.ph113.split.split ], [ %i.gq, %._crit_edge108 ] ; 6 uses
  %.056110 = phi i64 [ 0, %.lr.ph113.split.split ], [ %.1.lcssa, %._crit_edge108 ] ; 3 uses
  br i1 %.not.i.i82, label %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE14StartListValueEm.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %.055111
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !3
  %i.fz = zext i32 %i.fy to i64
  br label %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE14StartListValueEm.exit

_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE14StartListValueEm.exit: ; preds = %bb.aq, %bb.ar
  %i.ga = phi i64 [ %i.fz, %bb.ar ], [ %.055111, %bb.aq ]
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.ga
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !77 ; 2 uses
  br i1 %.not.i.i85, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i86, label %bb.as

bb.as:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE14StartListValueEm.exit
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %.055111
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !3
  %i.gf = zext i32 %i.ge to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i86

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i86: ; preds = %bb.as, %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE14StartListValueEm.exit
  %i.gg = phi i64 [ %i.gf, %bb.as ], [ %.055111, %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EE14StartListValueEm.exit ]
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.gg
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !77
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %.055111
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8 ; 3 uses
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !83
  %.not131 = icmp eq i64 %i.gl, 0
  br i1 %.not131, label %._crit_edge108, label %.lr.ph107.preheader

.lr.ph107.preheader:                              ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i86
  %i.gm = add i64 %.056110, 1                     ; 2 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.056110
  store i64 %i.gc, ptr %i.gn, align 8, !tbaa !77
  %i.go = load i64, ptr %i.gk, align 8, !tbaa !83
  %i.gp = icmp ugt i64 %i.go, 1
  br i1 %i.gp, label %.lr.ph107, label %._crit_edge108

._crit_edge108:                                   ; preds = %.lr.ph107, %.lr.ph107.preheader, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i86
  %.1.lcssa = phi i64 [ %.056110, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i86 ], [ %i.gm, %.lr.ph107.preheader ], [ %i.gr, %.lr.ph107 ]
  %i.gq = add nuw i64 %.055111, 1                 ; 2 uses
  %exitcond139.not = icmp eq i64 %i.gq, %.053
  br i1 %exitcond139.not, label %._crit_edge114, label %bb.aq, !llvm.loop !197

.lr.ph107:                                        ; preds = %.lr.ph107.preheader, %.lr.ph107
  %.0106 = phi i64 [ %i.gt, %.lr.ph107 ], [ 1, %.lr.ph107.preheader ]
  %.1105 = phi i64 [ %i.gr, %.lr.ph107 ], [ %i.gm, %.lr.ph107.preheader ] ; 2 uses
  %.090104 = phi i64 [ %spec.select, %.lr.ph107 ], [ %i.gc, %.lr.ph107.preheader ]
  %spec.select = add nsw i64 %i.gi, %.090104      ; 2 uses
  %i.gr = add i64 %.1105, 1                       ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.1105
  store i64 %spec.select, ptr %i.gs, align 8, !tbaa !77
  %i.gt = add nuw i64 %.0106, 1                   ; 2 uses
  %i.gu = load i64, ptr %i.gk, align 8, !tbaa !83
  %i.gv = icmp ult i64 %i.gt, %i.gu
  br i1 %i.gv, label %.lr.ph107, label %._crit_edge108, !llvm.loop !199

bb.at:                                            ; preds = %._crit_edge114
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext %.054)
          to label %bb.au unwind label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !51
  invoke void @_ZN6duckdb6Vector6VerifyEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.gx)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  call fastcc void @_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void

bb.aw:                                            ; preds = %bb.au, %bb.at, %._crit_edge114
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ax:                                            ; preds = %bb.x, %bb.ae, %bb.ao, %bb.aw, %bb.ap, %bb.y, %bb.v
  %.pn74.pn.pn.pn = phi { ptr, i32 } [ %i.bc, %bb.v ], [ %i.bj, %bb.x ], [ %i.bk, %bb.y ], [ %i.ct, %bb.ae ], [ %i.fv, %bb.ao ], [ %i.fw, %bb.ap ], [ %i.gy, %bb.aw ]
  call fastcc void @_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_117ListRangeFunctionINS0_18TimestampRangeInfoELb0EEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %5 = alloca %"class.duckdb::(anonymous namespace)::RangeInfoStruct.1300", align 8 ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr %0, ptr %5, align 8, !tbaa !187
  %.ptr13.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 8 uses
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %.ptr13.i)
  %.ptr.ptr.1.i = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 5 uses
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %.ptr.ptr.1.i)
          to label %bb.b unwind label %.preheader.preheader.i

bb.b:                                             ; preds = %bb.a
  %.ptr.ptr.2.i = getelementptr inbounds nuw i8, ptr %5, i64 168 ; 5 uses
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %.ptr.ptr.2.i)
          to label %bb.c unwind label %.preheader.preheader.i

bb.c:                                             ; preds = %bb.b
  %i.a = load ptr, ptr %5, align 8, !tbaa !201, !nonnull !121, !align !122 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !191
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !192
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 104
  switch i64 %i.h, label %bb.n [
    i64 1, label %bb.d
    i64 2, label %bb.f
    i64 3, label %bb.i
  ]

.preheader.preheader.i:                           ; preds = %bb.b, %bb.a
  %.idx.lcssa.ph.i = phi i64 [ 168, %bb.b ], [ 88, %bb.a ]
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %.idx14.i = phi i64 [ %.add15.i, %.preheader.i ], [ %.idx.lcssa.ph.i, %.preheader.preheader.i ]
  %.add15.i = add nsw i64 %.idx14.i, -80          ; 3 uses
  %.ptr17.i = getelementptr inbounds i8, ptr %5, i64 %.add15.i
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %.ptr17.i) #24
  %i.i = icmp eq i64 %.add15.i, 8
  br i1 %i.i, label %common.resume, label %.preheader.i

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0)
          to label %.invoke.i unwind label %bb.e

bb.e:                                             ; preds = %.invoke.i, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.loopexit.i

bb.f:                                             ; preds = %bb.c
  %i.l = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr %5, align 8, !tbaa !201, !nonnull !121, !align !122
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !51
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.l, i64 noundef %i.o, ptr noundef nonnull align 8 dereferenceable(73) %.ptr13.i)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %5, align 8, !tbaa !201, !nonnull !121, !align !122
  %i.q = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef 1)
          to label %.invoke.i unwind label %bb.e

bb.i:                                             ; preds = %bb.c
  %i.r = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0)
          to label %bb.j unwind label %bb.e

bb.j:                                             ; preds = %bb.i
  %i.s = load ptr, ptr %5, align 8, !tbaa !201, !nonnull !121, !align !122
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !51
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i64 noundef %i.u, ptr noundef nonnull align 8 dereferenceable(73) %.ptr13.i)
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  %i.v = load ptr, ptr %5, align 8, !tbaa !201, !nonnull !121, !align !122
  %i.w = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 noundef 1)
          to label %bb.l unwind label %bb.e

bb.l:                                             ; preds = %bb.k
  %i.x = load ptr, ptr %5, align 8, !tbaa !201, !nonnull !121, !align !122
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !51
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.w, i64 noundef %i.z, ptr noundef nonnull align 8 dereferenceable(73) %.ptr.ptr.1.i)
          to label %bb.m unwind label %bb.e

bb.m:                                             ; preds = %bb.l
  %i.aa = load ptr, ptr %5, align 8, !tbaa !201, !nonnull !121, !align !122
  %i.ab = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 noundef 2)
          to label %.invoke.i unwind label %bb.e

.invoke.i:                                        ; preds = %bb.m, %bb.h, %bb.d
  %i.ac = phi ptr [ %i.q, %bb.h ], [ %i.j, %bb.d ], [ %i.ab, %bb.m ]
  %i.ad = phi ptr [ %.ptr.ptr.1.i, %bb.h ], [ %.ptr13.i, %bb.d ], [ %.ptr.ptr.2.i, %bb.m ]
  %i.ae = load ptr, ptr %5, align 8, !tbaa !201, !nonnull !121, !align !122
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !51
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.ac, i64 noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(73) %i.ad)
          to label %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_18TimestampRangeInfoELb0EEC2ERNS_9DataChunkE.exit.preheader unwind label %bb.e

_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_18TimestampRangeInfoELb0EEC2ERNS_9DataChunkE.exit.preheader: ; preds = %.invoke.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !191
  %i.aj = load ptr, ptr %0, align 8, !tbaa !192
  %.not118 = icmp eq ptr %i.ai, %i.aj
  br i1 %.not118, label %.loopexit97, label %.lr.ph

bb.n:                                             ; preds = %bb.c
  %i.ak = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.60, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.o unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.ak, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.s unwind label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.n
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0.i = phi i1 [ false, %bb.p ], [ true, %bb.o ] ; 2 uses
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.an = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.q
  call void @_ZdlPv(ptr noundef %i.an) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %.0.i, label %bb.r, label %.loopexit.loopexit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %.0.i, label %bb.r, label %.loopexit.loopexit.i

end_hunk_0
begin_hunk_1_@_ZN6duckdb12_GLOBAL__N_117ListRangeFunctionINS0_16NumericRangeInfoELb1EEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a

.lr.ph.i:                                         ; preds = %bb.z
  %i.bq = sdiv exact i64 %.pre146, 104
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, %.lr.ph.i
  %.01114.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cg, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i ] ; 2 uses
  %i.br = getelementptr inbounds nuw [80 x i8], ptr %.ptr13.i, i64 %.01114.i ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !66
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !75 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %.058100
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !3
  %i.bw = zext i32 %i.bv to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.ab, %bb.aa
  %i.bx = phi i64 [ %i.bw, %bb.ab ], [ %.058100, %bb.aa ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !76 ; 2 uses
  %.not.i12.i = icmp eq ptr %i.bz, null
  br i1 %.not.i12.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %i.ca = lshr i64 %i.bx, 6
  %i.cb = and i64 %i.bx, 63
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ca
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !77
  %i.ce = shl nuw i64 1, %i.cb
  %i.cf = and i64 %i.cd, %i.ce
  %.not.i = icmp eq i64 %i.cf, 0
  br i1 %.not.i, label %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE10RowIsValidEm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %i.cg = add nuw i64 %.01114.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cg, %i.bq
  br i1 %exitcond.not.i, label %.loopexit, label %bb.aa, !llvm.loop !214

_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %i.ch = load ptr, ptr %i.bf, align 8, !tbaa !76 ; 2 uses
  %.not.i79 = icmp eq ptr %i.ch, null
  br i1 %.not.i79, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE10RowIsValidEm.exit
  %i.ci = load i64, ptr %i.bg, align 8, !tbaa !78
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 noundef %i.ci)
          to label %.noexc unwind label %bb.ae

.noexc:                                           ; preds = %bb.ac
  %.pre.i = load ptr, ptr %i.bf, align 8, !tbaa !76
  br label %bb.ad

bb.ad:                                            ; preds = %.noexc, %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE10RowIsValidEm.exit
  %i.cj = phi ptr [ %.pre.i, %.noexc ], [ %i.ch, %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE10RowIsValidEm.exit ]
  %i.ck = lshr i64 %.058100, 6
  %i.cl = and i64 %.058100, 63
  %i.cm = shl nuw i64 1, %i.cl
  %i.cn = xor i64 %i.cm, -1
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ck ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !77
  %i.cq = and i64 %i.cp, %i.cn
  store i64 %i.cq, ptr %i.co, align 8, !tbaa !77
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %.058100 ; 2 uses
  store i64 %.05999, ptr %i.cr, align 8, !tbaa !81
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i64 0, ptr %i.cs, align 8, !tbaa !83
  br label %bb.ak

bb.ae:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE13GetListValuesEmRlS4_S4_.exit.i, %bb.ac
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit:                                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, %bb.z
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %.058100 ; 2 uses
  store i64 %.05999, ptr %i.cu, align 8, !tbaa !81
  %i.cv = icmp eq i64 %.pre146, 104               ; 3 uses
  %.ptr13.i.val.pre = load ptr, ptr %.ptr13.i, align 8 ; 2 uses
  br i1 %i.cv, label %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE14StartListValueEm.exit.i.i, label %bb.af

bb.af:                                            ; preds = %.loopexit
  %i.cw = load ptr, ptr %i.bh, align 8, !tbaa !80
  %i.cx = load ptr, ptr %.ptr13.i.val.pre, align 8, !tbaa !75 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %.058100
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3
  %i.da = zext i32 %i.cz to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i: ; preds = %bb.ag, %bb.af
  %i.db = phi i64 [ %i.da, %bb.ag ], [ %.058100, %bb.af ]
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !77
  br label %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE14StartListValueEm.exit.i.i

_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE14StartListValueEm.exit.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i, %.loopexit
  %.0.i.i.i = phi i64 [ %i.dd, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i ], [ 0, %.loopexit ]
  %.val = load ptr, ptr %i.bh, align 8
  %.sroa.gep143.val = load ptr, ptr %.sroa.gep143, align 8
  %i.de = select i1 %i.cv, ptr %.val, ptr %.sroa.gep143.val
  %.sroa.gep.val = load ptr, ptr %.ptr.ptr.1.i, align 8
  %i.df = select i1 %i.cv, ptr %.ptr13.i.val.pre, ptr %.sroa.gep.val
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !75 ; 2 uses
  %.not.i.i6.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i6.i.i, label %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE12EndListValueEm.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE14StartListValueEm.exit.i.i
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %.058100
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3
  %i.dj = zext i32 %i.di to i64
  br label %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE12EndListValueEm.exit.i.i

_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE12EndListValueEm.exit.i.i: ; preds = %bb.ah, %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE14StartListValueEm.exit.i.i
  %i.dk = phi i64 [ %i.dj, %bb.ah ], [ %.058100, %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE14StartListValueEm.exit.i.i ]
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dk
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !77
  %i.dn = sdiv exact i64 %.pre146, 104
  %i.do = icmp ult i64 %i.dn, 3
  br i1 %i.do, label %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE13GetListValuesEmRlS4_S4_.exit.i, label %bb.ai

bb.ai:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE12EndListValueEm.exit.i.i
  %i.dp = load ptr, ptr %i.bi, align 8, !tbaa !80
  %i.dq = load ptr, ptr %.ptr.ptr.2.i, align 8, !tbaa !66
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !75 ; 2 uses
  %.not.i.i8.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i8.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i9.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %.058100
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !3
  %i.du = zext i32 %i.dt to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i9.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i9.i.i: ; preds = %bb.aj, %bb.ai
  %i.dv = phi i64 [ %i.du, %bb.aj ], [ %.058100, %bb.ai ]
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dv
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !77
  br label %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE13GetListValuesEmRlS4_S4_.exit.i

_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE13GetListValuesEmRlS4_S4_.exit.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i9.i.i, %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE12EndListValueEm.exit.i.i
  %.0.i10.i.i = phi i64 [ %i.dx, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i9.i.i ], [ 1, %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE12EndListValueEm.exit.i.i ]
  %i.dy = invoke fastcc noundef i64 @_ZN6duckdb12_GLOBAL__N_116NumericRangeInfo10ListLengthElllb(i64 noundef %.0.i.i.i, i64 noundef %i.dm, i64 noundef %.0.i10.i.i, i1 noundef zeroext true)
          to label %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE10ListLengthEm.exit unwind label %bb.ae ; 2 uses

_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE10ListLengthEm.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE13GetListValuesEmRlS4_S4_.exit.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i64 %i.dy, ptr %i.dz, align 8, !tbaa !83
  %i.ea = add i64 %i.dy, %.05999
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ad, %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE10ListLengthEm.exit
  %.160 = phi i64 [ %i.ea, %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE10ListLengthEm.exit ], [ %.05999, %bb.ad ] ; 2 uses
  %i.eb = add nuw i64 %.058100, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.eb, %.053
  br i1 %exitcond.not, label %._crit_edge, label %bb.z, !llvm.loop !215

bb.al:                                            ; preds = %._crit_edge
  %i.ec = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.am unwind label %bb.ap     ; 2 uses

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.ec)
          to label %_ZN6duckdb10FlatVector7GetDataIlEEPT_RNS_6VectorE.exit unwind label %bb.ap

_ZN6duckdb10FlatVector7GetDataIlEEPT_RNS_6VectorE.exit: ; preds = %bb.am
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !28 ; 4 uses
  br i1 %.not129, label %._crit_edge114, label %.lr.ph113

.lr.ph113:                                        ; preds = %_ZN6duckdb10FlatVector7GetDataIlEEPT_RNS_6VectorE.exit
  %i.ef = load ptr, ptr %5, align 8, !tbaa !211, !nonnull !121, !align !122 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !191
  %i.ei = load ptr, ptr %i.ef, align 8, !tbaa !192
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = sub i64 %i.ej, %i.ek                    ; 2 uses
  %i.em = icmp eq i64 %i.el, 104
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.eo = load ptr, ptr %i.en, align 8            ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %5, i64 176
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = load ptr, ptr %.ptr.ptr.2.i, align 8
  br i1 %i.em, label %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE18ListIncrementValueEm.exit.us, label %.lr.ph113.split

_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE18ListIncrementValueEm.exit.us: ; preds = %.lr.ph113, %._crit_edge108.us
  %.055111.us = phi i64 [ %6, %._crit_edge108.us ], [ 0, %.lr.ph113 ] ; 2 uses
  %.056110.us = phi i64 [ %.1.lcssa.us, %._crit_edge108.us ], [ 0, %.lr.ph113 ] ; 2 uses
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %.055111.us
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8 ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !83
  %.not133 = icmp eq i64 %i.eu, 0
  br i1 %.not133, label %._crit_edge108.us, label %.lr.ph107.us

._crit_edge108.us:                                ; preds = %.lr.ph107.us, %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE18ListIncrementValueEm.exit.us
  %.1.lcssa.us = phi i64 [ %.056110.us, %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE18ListIncrementValueEm.exit.us ], [ %i.ew, %.lr.ph107.us ]
  %6 = add nuw i64 %.055111.us, 1                 ; 2 uses
  %exitcond141.not = icmp eq i64 %6, %.053
  br i1 %exitcond141.not, label %._crit_edge114, label %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE18ListIncrementValueEm.exit.us, !llvm.loop !216

.lr.ph107.us:                                     ; preds = %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE18ListIncrementValueEm.exit.us, %.lr.ph107.us
  %.0106.us = phi i64 [ %i.ey, %.lr.ph107.us ], [ 0, %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE18ListIncrementValueEm.exit.us ] ; 2 uses
  %.1105.us = phi i64 [ %i.ew, %.lr.ph107.us ], [ %.056110.us, %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE18ListIncrementValueEm.exit.us ] ; 2 uses
  %.090104.us = phi i64 [ %spec.select.us, %.lr.ph107.us ], [ 0, %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE18ListIncrementValueEm.exit.us ]
  %.not73.us = icmp ne i64 %.0106.us, 0
  %i.ev = zext i1 %.not73.us to i64
  %spec.select.us = add nuw nsw i64 %.090104.us, %i.ev ; 2 uses
  %i.ew = add i64 %.1105.us, 1                    ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.1105.us
  store i64 %spec.select.us, ptr %i.ex, align 8, !tbaa !77
  %i.ey = add nuw i64 %.0106.us, 1                ; 2 uses
  %i.ez = load i64, ptr %i.et, align 8, !tbaa !83
  %i.fa = icmp ult i64 %i.ey, %i.ez
  br i1 %i.fa, label %.lr.ph107.us, label %._crit_edge108.us, !llvm.loop !217

.lr.ph113.split:                                  ; preds = %.lr.ph113
  %i.fb = sdiv exact i64 %i.el, 104
  %i.fc = icmp ult i64 %i.fb, 3
  %i.fd = load ptr, ptr %.ptr13.i, align 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !75 ; 3 uses
  %.not.i.i82 = icmp eq ptr %i.fe, null           ; 2 uses
  br i1 %i.fc, label %.lr.ph113.split.split.us, label %.lr.ph113.split.split

.lr.ph113.split.split.us:                         ; preds = %.lr.ph113.split, %._crit_edge108.us126
  %.055111.us115 = phi i64 [ %7, %._crit_edge108.us126 ], [ 0, %.lr.ph113.split ] ; 4 uses
  %.056110.us116 = phi i64 [ %.1.lcssa.us119, %._crit_edge108.us126 ], [ 0, %.lr.ph113.split ] ; 2 uses
  br i1 %.not.i.i82, label %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE14StartListValueEm.exit.us, label %bb.an

bb.an:                                            ; preds = %.lr.ph113.split.split.us
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %.055111.us115
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !3
  %i.fh = zext i32 %i.fg to i64
  br label %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE14StartListValueEm.exit.us

_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE14StartListValueEm.exit.us: ; preds = %bb.an, %.lr.ph113.split.split.us
  %i.fi = phi i64 [ %i.fh, %bb.an ], [ %.055111.us115, %.lr.ph113.split.split.us ]
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %.055111.us115
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !83
  %.not132 = icmp eq i64 %i.fl, 0
  br i1 %.not132, label %._crit_edge108.us126, label %.lr.ph107.us125.preheader

.lr.ph107.us125.preheader:                        ; preds = %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE14StartListValueEm.exit.us
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.fi
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !77
  br label %.lr.ph107.us125

._crit_edge108.us126:                             ; preds = %.lr.ph107.us125, %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE14StartListValueEm.exit.us
  %.1.lcssa.us119 = phi i64 [ %.056110.us116, %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE14StartListValueEm.exit.us ], [ %i.fp, %.lr.ph107.us125 ]
  %7 = add nuw i64 %.055111.us115, 1              ; 2 uses
  %exitcond140.not = icmp eq i64 %7, %.053
  br i1 %exitcond140.not, label %._crit_edge114, label %.lr.ph113.split.split.us, !llvm.loop !216

.lr.ph107.us125:                                  ; preds = %.lr.ph107.us125.preheader, %.lr.ph107.us125
  %.0106.us120 = phi i64 [ %i.fr, %.lr.ph107.us125 ], [ 0, %.lr.ph107.us125.preheader ] ; 2 uses
  %.1105.us121 = phi i64 [ %i.fp, %.lr.ph107.us125 ], [ %.056110.us116, %.lr.ph107.us125.preheader ] ; 2 uses
  %.090104.us122 = phi i64 [ %spec.select.us124, %.lr.ph107.us125 ], [ %i.fn, %.lr.ph107.us125.preheader ]
  %.not73.us123 = icmp ne i64 %.0106.us120, 0
  %i.fo = zext i1 %.not73.us123 to i64
  %spec.select.us124 = add nsw i64 %.090104.us122, %i.fo ; 2 uses
  %i.fp = add i64 %.1105.us121, 1                 ; 2 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.1105.us121
  store i64 %spec.select.us124, ptr %i.fq, align 8, !tbaa !77
  %i.fr = add nuw i64 %.0106.us120, 1             ; 2 uses
  %i.fs = load i64, ptr %i.fk, align 8, !tbaa !83
  %i.ft = icmp ult i64 %i.fr, %i.fs
  br i1 %i.ft, label %.lr.ph107.us125, label %._crit_edge108.us126, !llvm.loop !217

.lr.ph113.split.split:                            ; preds = %.lr.ph113.split
  %i.fu = load ptr, ptr %i.er, align 8, !tbaa !75 ; 2 uses
  %.not.i.i85 = icmp eq ptr %i.fu, null
  br label %bb.aq

._crit_edge114:                                   ; preds = %._crit_edge108, %._crit_edge108.us126, %._crit_edge108.us, %_ZN6duckdb10FlatVector7GetDataIlEEPT_RNS_6VectorE.exit
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.059.lcssa)
          to label %bb.at unwind label %bb.aw

bb.ao:                                            ; preds = %._crit_edge
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ap:                                            ; preds = %bb.am, %bb.al
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.aq:                                            ; preds = %.lr.ph113.split.split, %._crit_edge108
  %.055111 = phi i64 [ 0, %.lr.ph113.split.split ], [ %i.gq, %._crit_edge108 ] ; 6 uses
  %.056110 = phi i64 [ 0, %.lr.ph113.split.split ], [ %.1.lcssa, %._crit_edge108 ] ; 3 uses
  br i1 %.not.i.i82, label %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE14StartListValueEm.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %.055111
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !3
  %i.fz = zext i32 %i.fy to i64
  br label %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE14StartListValueEm.exit

_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE14StartListValueEm.exit: ; preds = %bb.aq, %bb.ar
  %i.ga = phi i64 [ %i.fz, %bb.ar ], [ %.055111, %bb.aq ]
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.ga
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !77 ; 2 uses
  br i1 %.not.i.i85, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i86, label %bb.as

bb.as:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE14StartListValueEm.exit
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %.055111
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !3
  %i.gf = zext i32 %i.ge to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i86

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i86: ; preds = %bb.as, %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE14StartListValueEm.exit
  %i.gg = phi i64 [ %i.gf, %bb.as ], [ %.055111, %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EE14StartListValueEm.exit ]
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.gg
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !77
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %.055111
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8 ; 3 uses
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !83
  %.not131 = icmp eq i64 %i.gl, 0
  br i1 %.not131, label %._crit_edge108, label %.lr.ph107.preheader

.lr.ph107.preheader:                              ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i86
  %i.gm = add i64 %.056110, 1                     ; 2 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.056110
  store i64 %i.gc, ptr %i.gn, align 8, !tbaa !77
  %i.go = load i64, ptr %i.gk, align 8, !tbaa !83
  %i.gp = icmp ugt i64 %i.go, 1
  br i1 %i.gp, label %.lr.ph107, label %._crit_edge108

._crit_edge108:                                   ; preds = %.lr.ph107, %.lr.ph107.preheader, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i86
  %.1.lcssa = phi i64 [ %.056110, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i86 ], [ %i.gm, %.lr.ph107.preheader ], [ %i.gr, %.lr.ph107 ]
  %i.gq = add nuw i64 %.055111, 1                 ; 2 uses
  %exitcond139.not = icmp eq i64 %i.gq, %.053
  br i1 %exitcond139.not, label %._crit_edge114, label %bb.aq, !llvm.loop !216

.lr.ph107:                                        ; preds = %.lr.ph107.preheader, %.lr.ph107
  %.0106 = phi i64 [ %i.gt, %.lr.ph107 ], [ 1, %.lr.ph107.preheader ]
  %.1105 = phi i64 [ %i.gr, %.lr.ph107 ], [ %i.gm, %.lr.ph107.preheader ] ; 2 uses
  %.090104 = phi i64 [ %spec.select, %.lr.ph107 ], [ %i.gc, %.lr.ph107.preheader ]
  %spec.select = add nsw i64 %i.gi, %.090104      ; 2 uses
  %i.gr = add i64 %.1105, 1                       ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.1105
  store i64 %spec.select, ptr %i.gs, align 8, !tbaa !77
  %i.gt = add nuw i64 %.0106, 1                   ; 2 uses
  %i.gu = load i64, ptr %i.gk, align 8, !tbaa !83
  %i.gv = icmp ult i64 %i.gt, %i.gu
  br i1 %i.gv, label %.lr.ph107, label %._crit_edge108, !llvm.loop !218

bb.at:                                            ; preds = %._crit_edge114
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext %.054)
          to label %bb.au unwind label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !51
  invoke void @_ZN6duckdb6Vector6VerifyEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.gx)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  call fastcc void @_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void

bb.aw:                                            ; preds = %bb.au, %bb.at, %._crit_edge114
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ax:                                            ; preds = %bb.x, %bb.ae, %bb.ao, %bb.aw, %bb.ap, %bb.y, %bb.v
  %.pn74.pn.pn.pn = phi { ptr, i32 } [ %i.bc, %bb.v ], [ %i.bj, %bb.x ], [ %i.bk, %bb.y ], [ %i.ct, %bb.ae ], [ %i.fv, %bb.ao ], [ %i.fw, %bb.ap ], [ %i.gy, %bb.aw ]
  call fastcc void @_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_16NumericRangeInfoELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_117ListRangeFunctionINS0_18TimestampRangeInfoELb1EEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %5 = alloca %"class.duckdb::(anonymous namespace)::RangeInfoStruct.1302", align 8 ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr %0, ptr %5, align 8, !tbaa !187
  %.ptr13.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 8 uses
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %.ptr13.i)
  %.ptr.ptr.1.i = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 5 uses
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %.ptr.ptr.1.i)
          to label %bb.b unwind label %.preheader.preheader.i

bb.b:                                             ; preds = %bb.a
  %.ptr.ptr.2.i = getelementptr inbounds nuw i8, ptr %5, i64 168 ; 5 uses
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %.ptr.ptr.2.i)
          to label %bb.c unwind label %.preheader.preheader.i

bb.c:                                             ; preds = %bb.b
  %i.a = load ptr, ptr %5, align 8, !tbaa !219, !nonnull !121, !align !122 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !191
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !192
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 104
  switch i64 %i.h, label %bb.n [
    i64 1, label %bb.d
    i64 2, label %bb.f
    i64 3, label %bb.i
  ]

.preheader.preheader.i:                           ; preds = %bb.b, %bb.a
  %.idx.lcssa.ph.i = phi i64 [ 168, %bb.b ], [ 88, %bb.a ]
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %.idx14.i = phi i64 [ %.add15.i, %.preheader.i ], [ %.idx.lcssa.ph.i, %.preheader.preheader.i ]
  %.add15.i = add nsw i64 %.idx14.i, -80          ; 3 uses
  %.ptr17.i = getelementptr inbounds i8, ptr %5, i64 %.add15.i
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %.ptr17.i) #24
  %i.i = icmp eq i64 %.add15.i, 8
  br i1 %i.i, label %common.resume, label %.preheader.i

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0)
          to label %.invoke.i unwind label %bb.e

bb.e:                                             ; preds = %.invoke.i, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.loopexit.i

bb.f:                                             ; preds = %bb.c
  %i.l = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr %5, align 8, !tbaa !219, !nonnull !121, !align !122
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !51
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.l, i64 noundef %i.o, ptr noundef nonnull align 8 dereferenceable(73) %.ptr13.i)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %5, align 8, !tbaa !219, !nonnull !121, !align !122
  %i.q = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef 1)
          to label %.invoke.i unwind label %bb.e

bb.i:                                             ; preds = %bb.c
  %i.r = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0)
          to label %bb.j unwind label %bb.e

bb.j:                                             ; preds = %bb.i
  %i.s = load ptr, ptr %5, align 8, !tbaa !219, !nonnull !121, !align !122
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !51
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i64 noundef %i.u, ptr noundef nonnull align 8 dereferenceable(73) %.ptr13.i)
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  %i.v = load ptr, ptr %5, align 8, !tbaa !219, !nonnull !121, !align !122
  %i.w = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 noundef 1)
          to label %bb.l unwind label %bb.e

bb.l:                                             ; preds = %bb.k
  %i.x = load ptr, ptr %5, align 8, !tbaa !219, !nonnull !121, !align !122
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !51
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.w, i64 noundef %i.z, ptr noundef nonnull align 8 dereferenceable(73) %.ptr.ptr.1.i)
          to label %bb.m unwind label %bb.e

bb.m:                                             ; preds = %bb.l
  %i.aa = load ptr, ptr %5, align 8, !tbaa !219, !nonnull !121, !align !122
  %i.ab = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 noundef 2)
          to label %.invoke.i unwind label %bb.e

.invoke.i:                                        ; preds = %bb.m, %bb.h, %bb.d
  %i.ac = phi ptr [ %i.q, %bb.h ], [ %i.j, %bb.d ], [ %i.ab, %bb.m ]
  %i.ad = phi ptr [ %.ptr.ptr.1.i, %bb.h ], [ %.ptr13.i, %bb.d ], [ %.ptr.ptr.2.i, %bb.m ]
  %i.ae = load ptr, ptr %5, align 8, !tbaa !219, !nonnull !121, !align !122
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !51
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.ac, i64 noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(73) %i.ad)
          to label %_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_18TimestampRangeInfoELb1EEC2ERNS_9DataChunkE.exit.preheader unwind label %bb.e

_ZN6duckdb12_GLOBAL__N_115RangeInfoStructINS0_18TimestampRangeInfoELb1EEC2ERNS_9DataChunkE.exit.preheader: ; preds = %.invoke.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !191
  %i.aj = load ptr, ptr %0, align 8, !tbaa !192
  %.not118 = icmp eq ptr %i.ai, %i.aj
  br i1 %.not118, label %.loopexit97, label %.lr.ph

bb.n:                                             ; preds = %bb.c
  %i.ak = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.60, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.o unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.ak, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.s unwind label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.n
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0.i = phi i1 [ false, %bb.p ], [ true, %bb.o ] ; 2 uses
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.an = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.q
  call void @_ZdlPv(ptr noundef %i.an) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %.0.i, label %bb.r, label %.loopexit.loopexit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %.0.i, label %bb.r, label %.loopexit.loopexit.i

end_hunk_1
