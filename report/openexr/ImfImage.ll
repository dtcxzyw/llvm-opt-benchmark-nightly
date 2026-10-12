Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfImage?download=true
inline.NumInlined: 584
inline.NumDeleted: 241
begin_hunk_0_@_ZN7Imf_3_45Image6resizeERKN9Imath_3_23BoxINS1_4Vec2IiEEEENS_9LevelModeENS_17LevelRoundingModeE:bb.a
  br i1 %.not7.i.i, label %_ZN7Imf_3_412_GLOBAL__N_117computeNumXLevelsERKN9Imath_3_23BoxINS1_4Vec2IlEEEENS_9LevelModeENS_17LevelRoundingModeE.exit.thread119, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.aa, %.lr.ph.i.i.i
  %.06.i.i.i = phi i32 [ %i.bx, %.lr.ph.i.i.i ], [ 0, %bb.aa ]
  %.045.i.i.i = phi i64 [ %i.by, %.lr.ph.i.i.i ], [ %.sroa.speculated.i, %bb.aa ] ; 2 uses
  %i.bx = add nuw nsw i32 %.06.i.i.i, 1           ; 2 uses
  %i.by = lshr i64 %.045.i.i.i, 1
  %i.bz = icmp samesign ugt i64 %.045.i.i.i, 3
  br i1 %i.bz, label %.lr.ph.i.i.i, label %_ZN7Imf_3_412_GLOBAL__N_117computeNumXLevelsERKN9Imath_3_23BoxINS1_4Vec2IlEEEENS_9LevelModeENS_17LevelRoundingModeE.exit.thread119, !llvm.loop !94

bb.ab:                                            ; preds = %bb.z
  br i1 %.not7.i.i, label %_ZN7Imf_3_412_GLOBAL__N_117computeNumXLevelsERKN9Imath_3_23BoxINS1_4Vec2IlEEEENS_9LevelModeENS_17LevelRoundingModeE.exit.thread119, label %.lr.ph.i6.i.i

.lr.ph.i6.i.i:                                    ; preds = %bb.ab, %.lr.ph.i6.i.i
  %.010.i.i.i = phi i32 [ %spec.select.i.i.i, %.lr.ph.i6.i.i ], [ 0, %bb.ab ]
  %.069.i.i.i = phi i32 [ %i.cb, %.lr.ph.i6.i.i ], [ 0, %bb.ab ]
  %.078.i.i.i = phi i64 [ %i.cc, %.lr.ph.i6.i.i ], [ %.sroa.speculated.i, %bb.ab ] ; 3 uses
  %i.ca = and i64 %.078.i.i.i, 1
  %.not.i.i.i = icmp eq i64 %i.ca, 0
  %spec.select.i.i.i = select i1 %.not.i.i.i, i32 %.010.i.i.i, i32 1 ; 2 uses
  %i.cb = add nuw nsw i32 %.069.i.i.i, 1          ; 2 uses
  %i.cc = lshr i64 %.078.i.i.i, 1
  %i.cd = icmp samesign ugt i64 %.078.i.i.i, 3
  br i1 %i.cd, label %.lr.ph.i6.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !95

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i6.i.i
  %i.ce = add nuw nsw i32 %spec.select.i.i.i, %i.cb
  br label %_ZN7Imf_3_412_GLOBAL__N_117computeNumXLevelsERKN9Imath_3_23BoxINS1_4Vec2IlEEEENS_9LevelModeENS_17LevelRoundingModeE.exit.thread119

_ZN7Imf_3_412_GLOBAL__N_117computeNumXLevelsERKN9Imath_3_23BoxINS1_4Vec2IlEEEENS_9LevelModeENS_17LevelRoundingModeE.exit.thread119: ; preds = %.lr.ph.i.i.i, %bb.y, %bb.aa, %bb.ab, %._crit_edge.loopexit.i.i.i
  %.0.i9.i = phi i32 [ 1, %bb.y ], [ %i.ce, %._crit_edge.loopexit.i.i.i ], [ 0, %bb.aa ], [ 0, %bb.ab ], [ %i.bx, %.lr.ph.i.i.i ]
  %i.cf = add nsw i32 %.0.i9.i, 1
  %i.cg = sub nsw i64 %i.as, %i.ai
  %.0.i.i74 = select i1 %i.bk, i64 0, i64 %i.cg
  %.sroa.speculated.i75 = tail call i64 @llvm.smax.i64(i64 %.0.i.i74, i64 %.0.i40.i) ; 4 uses
  %i.ch = icmp slt i64 %.sroa.speculated.i75, 1
  br i1 %i.ch, label %_ZN7Imf_3_412_GLOBAL__N_19roundLog2ElNS_17LevelRoundingModeE.exit.i84, label %bb.ag

bb.ac:                                            ; preds = %_ZN7Imf_3_412_GLOBAL__N_118validateDataWindowERKN9Imath_3_23BoxINS1_4Vec2IlEEEE.exit
  %i.ci = icmp slt i64 %.0.i.i, 1
  br i1 %i.ci, label %_ZN7Imf_3_412_GLOBAL__N_117computeNumXLevelsERKN9Imath_3_23BoxINS1_4Vec2IlEEEENS_9LevelModeENS_17LevelRoundingModeE.exit.thread122, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cj = icmp eq i32 %3, 0
  %.not7.i10.i = icmp eq i64 %.0.i.i, 1           ; 2 uses
  br i1 %i.cj, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  br i1 %.not7.i10.i, label %_ZN7Imf_3_412_GLOBAL__N_117computeNumXLevelsERKN9Imath_3_23BoxINS1_4Vec2IlEEEENS_9LevelModeENS_17LevelRoundingModeE.exit.thread122, label %.lr.ph.i.i19.i

.lr.ph.i.i19.i:                                   ; preds = %bb.ae, %.lr.ph.i.i19.i
  %.06.i.i20.i = phi i32 [ %i.ck, %.lr.ph.i.i19.i ], [ 0, %bb.ae ]
  %.045.i.i21.i = phi i64 [ %i.cl, %.lr.ph.i.i19.i ], [ %i.bl, %bb.ae ] ; 2 uses
  %i.ck = add nuw nsw i32 %.06.i.i20.i, 1         ; 2 uses
  %i.cl = lshr i64 %.045.i.i21.i, 1
  %i.cm = icmp samesign ugt i64 %.045.i.i21.i, 3
  br i1 %i.cm, label %.lr.ph.i.i19.i, label %_ZN7Imf_3_412_GLOBAL__N_117computeNumXLevelsERKN9Imath_3_23BoxINS1_4Vec2IlEEEENS_9LevelModeENS_17LevelRoundingModeE.exit.thread122, !llvm.loop !94

bb.af:                                            ; preds = %bb.ad
  br i1 %.not7.i10.i, label %_ZN7Imf_3_412_GLOBAL__N_117computeNumXLevelsERKN9Imath_3_23BoxINS1_4Vec2IlEEEENS_9LevelModeENS_17LevelRoundingModeE.exit.thread122, label %.lr.ph.i6.i11.i

.lr.ph.i6.i11.i:                                  ; preds = %bb.af, %.lr.ph.i6.i11.i
  %.010.i.i12.i = phi i32 [ %spec.select.i.i16.i, %.lr.ph.i6.i11.i ], [ 0, %bb.af ]
  %.069.i.i13.i = phi i32 [ %i.co, %.lr.ph.i6.i11.i ], [ 0, %bb.af ]
  %.078.i.i14.i = phi i64 [ %i.cp, %.lr.ph.i6.i11.i ], [ %i.bl, %bb.af ] ; 3 uses
  %i.cn = and i64 %.078.i.i14.i, 1
  %.not.i.i15.i = icmp eq i64 %i.cn, 0
  %spec.select.i.i16.i = select i1 %.not.i.i15.i, i32 %.010.i.i12.i, i32 1 ; 2 uses
  %i.co = add nuw nsw i32 %.069.i.i13.i, 1        ; 2 uses
  %i.cp = lshr i64 %.078.i.i14.i, 1
  %i.cq = icmp samesign ugt i64 %.078.i.i14.i, 3
  br i1 %i.cq, label %.lr.ph.i6.i11.i, label %._crit_edge.loopexit.i.i17.i, !llvm.loop !95

._crit_edge.loopexit.i.i17.i:                     ; preds = %.lr.ph.i6.i11.i
  %i.cr = add nuw nsw i32 %spec.select.i.i16.i, %i.co
  br label %_ZN7Imf_3_412_GLOBAL__N_117computeNumXLevelsERKN9Imath_3_23BoxINS1_4Vec2IlEEEENS_9LevelModeENS_17LevelRoundingModeE.exit.thread122

_ZN7Imf_3_412_GLOBAL__N_117computeNumXLevelsERKN9Imath_3_23BoxINS1_4Vec2IlEEEENS_9LevelModeENS_17LevelRoundingModeE.exit.thread122: ; preds = %.lr.ph.i.i19.i, %bb.ac, %bb.ae, %bb.af, %._crit_edge.loopexit.i.i17.i
  %.0.i18.i = phi i32 [ 1, %bb.ac ], [ %i.cr, %._crit_edge.loopexit.i.i17.i ], [ 0, %bb.ae ], [ 0, %bb.af ], [ %i.ck, %.lr.ph.i.i19.i ]
  %i.cs = add nsw i32 %.0.i18.i, 1
  %i.ct = icmp slt i64 %.0.i40.i, 1
  br i1 %i.ct, label %_ZN7Imf_3_412_GLOBAL__N_19roundLog2ElNS_17LevelRoundingModeE.exit22.i67, label %bb.aj

_ZN7Imf_3_412_GLOBAL__N_117computeNumXLevelsERKN9Imath_3_23BoxINS1_4Vec2IlEEEENS_9LevelModeENS_17LevelRoundingModeE.exit: ; preds = %_ZN7Imf_3_412_GLOBAL__N_118validateDataWindowERKN9Imath_3_23BoxINS1_4Vec2IlEEEE.exit
  br label %_ZN7Imf_3_412_GLOBAL__N_117computeNumYLevelsERKN9Imath_3_23BoxINS1_4Vec2IlEEEENS_9LevelModeENS_17LevelRoundingModeE.exit

bb.ag:                                            ; preds = %_ZN7Imf_3_412_GLOBAL__N_117computeNumXLevelsERKN9Imath_3_23BoxINS1_4Vec2IlEEEENS_9LevelModeENS_17LevelRoundingModeE.exit.thread119
  %i.cu = icmp eq i32 %3, 0
  %.not7.i.i76 = icmp eq i64 %.sroa.speculated.i75, 1 ; 2 uses
  br i1 %i.cu, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  br i1 %.not7.i.i76, label %_ZN7Imf_3_412_GLOBAL__N_19roundLog2ElNS_17LevelRoundingModeE.exit.i84, label %.lr.ph.i.i.i86

.lr.ph.i.i.i86:                                   ; preds = %bb.ah, %.lr.ph.i.i.i86
  %.06.i.i.i87 = phi i32 [ %i.cv, %.lr.ph.i.i.i86 ], [ 0, %bb.ah ]
  %.045.i.i.i88 = phi i64 [ %i.cw, %.lr.ph.i.i.i86 ], [ %.sroa.speculated.i75, %bb.ah ] ; 2 uses
  %i.cv = add nuw nsw i32 %.06.i.i.i87, 1         ; 2 uses
  %i.cw = lshr i64 %.045.i.i.i88, 1
  %i.cx = icmp samesign ugt i64 %.045.i.i.i88, 3
  br i1 %i.cx, label %.lr.ph.i.i.i86, label %_ZN7Imf_3_412_GLOBAL__N_19roundLog2ElNS_17LevelRoundingModeE.exit.i84, !llvm.loop !94

bb.ai:                                            ; preds = %bb.ag
  br i1 %.not7.i.i76, label %_ZN7Imf_3_412_GLOBAL__N_19roundLog2ElNS_17LevelRoundingModeE.exit.i84, label %.lr.ph.i6.i.i77

.lr.ph.i6.i.i77:                                  ; preds = %bb.ai, %.lr.ph.i6.i.i77
  %.010.i.i.i78 = phi i32 [ %spec.select.i.i.i82, %.lr.ph.i6.i.i77 ], [ 0, %bb.ai ]
  %.069.i.i.i79 = phi i32 [ %i.cz, %.lr.ph.i6.i.i77 ], [ 0, %bb.ai ]
  %.078.i.i.i80 = phi i64 [ %i.da, %.lr.ph.i6.i.i77 ], [ %.sroa.speculated.i75, %bb.ai ] ; 3 uses
  %i.cy = and i64 %.078.i.i.i80, 1
  %.not.i.i.i81 = icmp eq i64 %i.cy, 0
  %spec.select.i.i.i82 = select i1 %.not.i.i.i81, i32 %.010.i.i.i78, i32 1 ; 2 uses
  %i.cz = add nuw nsw i32 %.069.i.i.i79, 1        ; 2 uses
  %i.da = lshr i64 %.078.i.i.i80, 1
  %i.db = icmp samesign ugt i64 %.078.i.i.i80, 3
  br i1 %i.db, label %.lr.ph.i6.i.i77, label %._crit_edge.loopexit.i.i.i83, !llvm.loop !95

._crit_edge.loopexit.i.i.i83:                     ; preds = %.lr.ph.i6.i.i77
  %i.dc = add nuw nsw i32 %spec.select.i.i.i82, %i.cz
  br label %_ZN7Imf_3_412_GLOBAL__N_19roundLog2ElNS_17LevelRoundingModeE.exit.i84

_ZN7Imf_3_412_GLOBAL__N_19roundLog2ElNS_17LevelRoundingModeE.exit.i84: ; preds = %.lr.ph.i.i.i86, %._crit_edge.loopexit.i.i.i83, %bb.ai, %bb.ah, %_ZN7Imf_3_412_GLOBAL__N_117computeNumXLevelsERKN9Imath_3_23BoxINS1_4Vec2IlEEEENS_9LevelModeENS_17LevelRoundingModeE.exit.thread119
  %.0.i9.i85 = phi i32 [ 1, %_ZN7Imf_3_412_GLOBAL__N_117computeNumXLevelsERKN9Imath_3_23BoxINS1_4Vec2IlEEEENS_9LevelModeENS_17LevelRoundingModeE.exit.thread119 ], [ %i.dc, %._crit_edge.loopexit.i.i.i83 ], [ 0, %bb.ah ], [ 0, %bb.ai ], [ %i.cv, %.lr.ph.i.i.i86 ]
  %i.dd = add nsw i32 %.0.i9.i85, 1
  br label %_ZN7Imf_3_412_GLOBAL__N_117computeNumYLevelsERKN9Imath_3_23BoxINS1_4Vec2IlEEEENS_9LevelModeENS_17LevelRoundingModeE.exit

bb.aj:                                            ; preds = %_ZN7Imf_3_412_GLOBAL__N_117computeNumXLevelsERKN9Imath_3_23BoxINS1_4Vec2IlEEEENS_9LevelModeENS_17LevelRoundingModeE.exit.thread122
  %i.de = icmp eq i32 %3, 0
  %.not7.i10.i59 = icmp eq i64 %.0.i40.i, 1       ; 2 uses
  br i1 %i.de, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  br i1 %.not7.i10.i59, label %_ZN7Imf_3_412_GLOBAL__N_19roundLog2ElNS_17LevelRoundingModeE.exit22.i67, label %.lr.ph.i.i19.i70

.lr.ph.i.i19.i70:                                 ; preds = %bb.ak, %.lr.ph.i.i19.i70
  %.06.i.i20.i71 = phi i32 [ %i.df, %.lr.ph.i.i19.i70 ], [ 0, %bb.ak ]
  %.045.i.i21.i72 = phi i64 [ %i.dg, %.lr.ph.i.i19.i70 ], [ %i.bn, %bb.ak ] ; 2 uses
  %i.df = add nuw nsw i32 %.06.i.i20.i71, 1       ; 2 uses
  %i.dg = lshr i64 %.045.i.i21.i72, 1
  %i.dh = icmp samesign ugt i64 %.045.i.i21.i72, 3
  br i1 %i.dh, label %.lr.ph.i.i19.i70, label %_ZN7Imf_3_412_GLOBAL__N_19roundLog2ElNS_17LevelRoundingModeE.exit22.i67, !llvm.loop !94

bb.al:                                            ; preds = %bb.aj
  br i1 %.not7.i10.i59, label %_ZN7Imf_3_412_GLOBAL__N_19roundLog2ElNS_17LevelRoundingModeE.exit22.i67, label %.lr.ph.i6.i11.i60

.lr.ph.i6.i11.i60:                                ; preds = %bb.al, %.lr.ph.i6.i11.i60
  %.010.i.i12.i61 = phi i32 [ %spec.select.i.i16.i65, %.lr.ph.i6.i11.i60 ], [ 0, %bb.al ]
  %.069.i.i13.i62 = phi i32 [ %i.dj, %.lr.ph.i6.i11.i60 ], [ 0, %bb.al ]
  %.078.i.i14.i63 = phi i64 [ %i.dk, %.lr.ph.i6.i11.i60 ], [ %i.bn, %bb.al ] ; 3 uses
  %i.di = and i64 %.078.i.i14.i63, 1
  %.not.i.i15.i64 = icmp eq i64 %i.di, 0
  %spec.select.i.i16.i65 = select i1 %.not.i.i15.i64, i32 %.010.i.i12.i61, i32 1 ; 2 uses
  %i.dj = add nuw nsw i32 %.069.i.i13.i62, 1      ; 2 uses
  %i.dk = lshr i64 %.078.i.i14.i63, 1
  %i.dl = icmp samesign ugt i64 %.078.i.i14.i63, 3
  br i1 %i.dl, label %.lr.ph.i6.i11.i60, label %._crit_edge.loopexit.i.i17.i66, !llvm.loop !95

._crit_edge.loopexit.i.i17.i66:                   ; preds = %.lr.ph.i6.i11.i60
  %i.dm = add nuw nsw i32 %spec.select.i.i16.i65, %i.dj
  br label %_ZN7Imf_3_412_GLOBAL__N_19roundLog2ElNS_17LevelRoundingModeE.exit22.i67

_ZN7Imf_3_412_GLOBAL__N_19roundLog2ElNS_17LevelRoundingModeE.exit22.i67: ; preds = %.lr.ph.i.i19.i70, %._crit_edge.loopexit.i.i17.i66, %bb.al, %bb.ak, %_ZN7Imf_3_412_GLOBAL__N_117computeNumXLevelsERKN9Imath_3_23BoxINS1_4Vec2IlEEEENS_9LevelModeENS_17LevelRoundingModeE.exit.thread122
  %.0.i18.i68 = phi i32 [ 1, %_ZN7Imf_3_412_GLOBAL__N_117computeNumXLevelsERKN9Imath_3_23BoxINS1_4Vec2IlEEEENS_9LevelModeENS_17LevelRoundingModeE.exit.thread122 ], [ %i.dm, %._crit_edge.loopexit.i.i17.i66 ], [ 0, %bb.ak ], [ 0, %bb.al ], [ %i.df, %.lr.ph.i.i19.i70 ]
  %i.dn = add nsw i32 %.0.i18.i68, 1
  br label %_ZN7Imf_3_412_GLOBAL__N_117computeNumYLevelsERKN9Imath_3_23BoxINS1_4Vec2IlEEEENS_9LevelModeENS_17LevelRoundingModeE.exit

_ZN7Imf_3_412_GLOBAL__N_117computeNumYLevelsERKN9Imath_3_23BoxINS1_4Vec2IlEEEENS_9LevelModeENS_17LevelRoundingModeE.exit: ; preds = %_ZN7Imf_3_412_GLOBAL__N_117computeNumXLevelsERKN9Imath_3_23BoxINS1_4Vec2IlEEEENS_9LevelModeENS_17LevelRoundingModeE.exit, %_ZN7Imf_3_412_GLOBAL__N_118validateDataWindowERKN9Imath_3_23BoxINS1_4Vec2IlEEEE.exit, %_ZN7Imf_3_412_GLOBAL__N_19roundLog2ElNS_17LevelRoundingModeE.exit22.i67, %_ZN7Imf_3_412_GLOBAL__N_19roundLog2ElNS_17LevelRoundingModeE.exit.i84
  %.0.i118 = phi i32 [ 0, %_ZN7Imf_3_412_GLOBAL__N_117computeNumXLevelsERKN9Imath_3_23BoxINS1_4Vec2IlEEEENS_9LevelModeENS_17LevelRoundingModeE.exit ], [ %i.cs, %_ZN7Imf_3_412_GLOBAL__N_19roundLog2ElNS_17LevelRoundingModeE.exit22.i67 ], [ %i.cf, %_ZN7Imf_3_412_GLOBAL__N_19roundLog2ElNS_17LevelRoundingModeE.exit.i84 ], [ 1, %_ZN7Imf_3_412_GLOBAL__N_118validateDataWindowERKN9Imath_3_23BoxINS1_4Vec2IlEEEE.exit ] ; 4 uses
  %.0.i69 = phi i32 [ 0, %_ZN7Imf_3_412_GLOBAL__N_117computeNumXLevelsERKN9Imath_3_23BoxINS1_4Vec2IlEEEENS_9LevelModeENS_17LevelRoundingModeE.exit ], [ %i.dn, %_ZN7Imf_3_412_GLOBAL__N_19roundLog2ElNS_17LevelRoundingModeE.exit22.i67 ], [ %i.dd, %_ZN7Imf_3_412_GLOBAL__N_19roundLog2ElNS_17LevelRoundingModeE.exit.i84 ], [ 1, %_ZN7Imf_3_412_GLOBAL__N_118validateDataWindowERKN9Imath_3_23BoxINS1_4Vec2IlEEEE.exit ] ; 4 uses
  %i.do = sext i32 %.0.i69 to i64                 ; 2 uses
  %i.dp = sext i32 %.0.i118 to i64                ; 2 uses
  %i.dq = mul nsw i64 %i.do, %i.dp                ; 2 uses
  %i.dr = icmp ugt i64 %i.dq, 2305843009213693951
  %i.ds = shl nuw i64 %i.dq, 3
  %i.dt = select i1 %i.dr, i64 -1, i64 %i.ds
  %i.du = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dt) #23
          to label %.noexc89 unwind label %bb.ap  ; 2 uses

.noexc89:                                         ; preds = %_ZN7Imf_3_412_GLOBAL__N_117computeNumYLevelsERKN9Imath_3_23BoxINS1_4Vec2IlEEEENS_9LevelModeENS_17LevelRoundingModeE.exit
  %i.dv = load ptr, ptr %i.n, align 8, !tbaa !29  ; 2 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %_ZN7Imf_3_47Array2DIPNS_10ImageLevelEE11resizeEraseEll.exit, label %bb.am

bb.am:                                            ; preds = %.noexc89
  tail call void @_ZdaPv(ptr noundef nonnull %i.dv) #24
  br label %_ZN7Imf_3_47Array2DIPNS_10ImageLevelEE11resizeEraseEll.exit

_ZN7Imf_3_47Array2DIPNS_10ImageLevelEE11resizeEraseEll.exit: ; preds = %.noexc89, %bb.am
  store i64 %i.do, ptr %i.b, align 8, !tbaa !27
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  store i64 %i.dp, ptr %i.dx, align 8, !tbaa !28
  store ptr %i.du, ptr %i.n, align 8, !tbaa !29
  %i.dy = icmp sgt i32 %.0.i69, 0                 ; 2 uses
  %i.dz = icmp sgt i32 %.0.i118, 0                ; 2 uses
  %or.cond147 = and i1 %i.dy, %i.dz
  br i1 %or.cond147, label %.preheader.lr.ph.thread, label %.preheader126

.preheader.lr.ph.thread:                          ; preds = %_ZN7Imf_3_47Array2DIPNS_10ImageLevelEE11resizeEraseEll.exit
  %i.ea = zext nneg i32 %.0.i118 to i64
  %i.eb = zext nneg i32 %.0.i69 to i64
  %i.ec = mul nuw nsw i64 %i.ea, %i.eb
  %i.ed = shl i64 %i.ec, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.du, i8 0, i64 %i.ed, i1 false), !tbaa !33
  %i.ee = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 12
  br label %.preheader.preheader

.preheader126:                                    ; preds = %_ZN7Imf_3_47Array2DIPNS_10ImageLevelEE11resizeEraseEll.exit
  br i1 %i.dy, label %.preheader.lr.ph, label %._crit_edge146.split

.preheader.lr.ph:                                 ; preds = %.preheader126
  %i.eh = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ej = getelementptr inbounds nuw i8, ptr %7, i64 12
  br i1 %i.dz, label %.preheader.preheader, label %._crit_edge146.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph.thread, %.preheader.lr.ph
  %i.ek = phi ptr [ %i.eg, %.preheader.lr.ph.thread ], [ %i.ej, %.preheader.lr.ph ]
  %i.el = phi ptr [ %i.ef, %.preheader.lr.ph.thread ], [ %i.ei, %.preheader.lr.ph ]
  %i.em = phi ptr [ %i.ee, %.preheader.lr.ph.thread ], [ %i.eh, %.preheader.lr.ph ]
  %i.en = icmp ne i32 %2, 1
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %wide.trip.count162 = zext nneg i32 %.0.i69 to i64
  %wide.trip.count = zext nneg i32 %.0.i118 to i64
  br label %.preheader

bb.an:                                            ; preds = %._crit_edge16.i
  %i.eq = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

bb.ao:                                            ; preds = %.noexc54, %bb.s, %.noexc52, %bb.m, %.noexc50, %bb.g
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

bb.ap:                                            ; preds = %_ZN7Imf_3_412_GLOBAL__N_117computeNumYLevelsERKN9Imath_3_23BoxINS1_4Vec2IlEEEENS_9LevelModeENS_17LevelRoundingModeE.exit
  %i.es = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge144
  %indvars.iv159 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next160, %._crit_edge144 ] ; 6 uses
  %i.et = trunc nuw nsw i64 %indvars.iv159 to i32 ; 2 uses
  br label %bb.aq

._crit_edge146.split:                             ; preds = %._crit_edge144, %.preheader.lr.ph, %.preheader126
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ev = load <2 x i32>, ptr %1, align 4, !tbaa !14
  store <2 x i32> %i.ev, ptr %i.a, align 8, !tbaa !14
  %i.ew = load <2 x i32>, ptr %i.am, align 4, !tbaa !14
  store <2 x i32> %i.ew, ptr %i.eu, align 8, !tbaa !14
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %2, ptr %i.ex, align 8, !tbaa !46
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %3, ptr %i.ey, align 4, !tbaa !47
  ret void

._crit_edge144:                                   ; preds = %bb.ba
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 2 uses
  %exitcond163.not = icmp eq i64 %indvars.iv.next160, %wide.trip.count162
  br i1 %exitcond163.not, label %._crit_edge146.split, label %.preheader, !llvm.loop !96

bb.aq:                                            ; preds = %.preheader, %bb.ba
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.ba ] ; 6 uses
  %.not = icmp eq i64 %indvars.iv, %indvars.iv159
  %or.cond = or i1 %i.en, %.not
  br i1 %or.cond, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ez = load ptr, ptr %i.n, align 8, !tbaa !29
  %i.fa = load i64, ptr %i.dx, align 8, !tbaa !28
  %i.fb = mul nsw i64 %i.fa, %indvars.iv159
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.ez, i64 %i.fb
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %indvars.iv
  store ptr null, ptr %i.fd, align 8, !tbaa !33
  br label %bb.ba

bb.as:                                            ; preds = %bb.aq
  %i.fe = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ff = invoke fastcc noundef i32 @_ZN7Imf_3_412_GLOBAL__N_19levelSizeElliNS_17LevelRoundingModeE(i64 noundef %i.ai, i64 noundef %i.ao, i32 noundef %i.fe, i32 noundef %3)
          to label %bb.at unwind label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.fg = invoke fastcc noundef i32 @_ZN7Imf_3_412_GLOBAL__N_19levelSizeElliNS_17LevelRoundingModeE(i64 noundef %i.al, i64 noundef %i.ar, i32 noundef %i.et, i32 noundef %3)
          to label %bb.au unwind label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.fh = add nsw i32 %i.ff, -1
  %i.fi = add nsw i32 %i.fg, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.fj = load i32, ptr %1, align 4, !tbaa !101, !noalias !103 ; 2 uses
  %i.fk = add nsw i32 %i.fh, %i.fj
  %i.fl = load i32, ptr %i.aj, align 4, !tbaa !102, !noalias !103 ; 2 uses
  %i.fm = add nsw i32 %i.fi, %i.fl
  store i32 %i.fj, ptr %7, align 4, !tbaa !101
  store i32 %i.fl, ptr %i.el, align 4, !tbaa !102
  store i32 %i.fk, ptr %i.em, align 4, !tbaa !101
  store i32 %i.fm, ptr %i.ek, align 4, !tbaa !102
  %i.fn = load ptr, ptr %0, align 8, !tbaa !13
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 56
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = invoke noundef ptr %i.fp(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %i.fe, i32 noundef %i.et, ptr noundef nonnull align 4 dereferenceable(16) %7)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.fr = load ptr, ptr %i.n, align 8, !tbaa !29
  %i.fs = load i64, ptr %i.dx, align 8, !tbaa !28
  %i.ft = mul nsw i64 %i.fs, %indvars.iv159
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.ft
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv
  store ptr %i.fq, ptr %i.fv, align 8, !tbaa !33
  %i.fw = load ptr, ptr %i.eo, align 8, !tbaa !21 ; 2 uses
  %.not125138 = icmp eq ptr %i.fw, %i.ep
  br i1 %.not125138, label %._crit_edge141, label %.lr.ph

._crit_edge141:                                   ; preds = %bb.ay, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.ba

bb.aw:                                            ; preds = %bb.at, %bb.as
  %i.fx = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

bb.ax:                                            ; preds = %bb.au
  %i.fy = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bb

.lr.ph:                                           ; preds = %bb.av, %bb.ay
  %.sroa.090.0139 = phi ptr [ %i.gs, %bb.ay ], [ %i.fw, %bb.av ] ; 6 uses
  %i.fz = load ptr, ptr %i.n, align 8, !tbaa !29
  %i.ga = load i64, ptr %i.dx, align 8, !tbaa !28
  %i.gb = mul nsw i64 %i.ga, %indvars.iv159
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %i.gb
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %indvars.iv
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !33 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.090.0139, i64 32
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.090.0139, i64 64
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !104
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.090.0139, i64 68
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !55
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.090.0139, i64 72
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !56
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.090.0139, i64 76
  %i.gn = load i8, ptr %i.gm, align 4, !tbaa !105, !range !57, !noundef !58
  %i.go = trunc nuw i8 %i.gn to i1
  %i.gp = load ptr, ptr %i.ge, align 8, !tbaa !13
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  %i.gr = load ptr, ptr %i.gq, align 8
  invoke void %i.gr(ptr noundef nonnull align 8 dereferenceable(40) %i.ge, ptr noundef nonnull align 8 dereferenceable(32) %i.gf, i32 noundef %i.gh, i32 noundef %i.gj, i32 noundef %i.gl, i1 noundef zeroext %i.go)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %.lr.ph
  %i.gs = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.090.0139) #27 ; 2 uses
  %.not125 = icmp eq ptr %i.gs, %i.ep
  br i1 %.not125, label %._crit_edge141, label %.lr.ph, !llvm.loop !99

bb.az:                                            ; preds = %.lr.ph
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bb

bb.ba:                                            ; preds = %._crit_edge141, %bb.ar
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge144, label %bb.aq, !llvm.loop !100

bb.bb:                                            ; preds = %bb.az, %bb.ax
  %.pn = phi { ptr, i32 } [ %i.gt, %bb.az ], [ %i.fy, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %.body

.body:                                            ; preds = %bb.ap, %bb.k, %bb.q, %bb.w, %bb.ao, %bb.bb, %bb.aw, %bb.an
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.eq, %bb.an ], [ %i.es, %bb.ap ], [ %i.fx, %bb.aw ], [ %.pn.i, %bb.w ], [ %i.er, %bb.ao ], [ %.pn32.i, %bb.k ], [ %.pn30.i, %bb.q ], [ %.pn, %bb.bb ]
  %.5 = extractvalue { ptr, i32 } %.pn.pn.pn.pn.pn.pn, 0
  %i.gu = call ptr @__cxa_begin_catch(ptr %.5) #25 ; 0 uses
  invoke void @_ZN7Imf_3_45Image11clearLevelsEv(ptr noundef nonnull align 8 dereferenceable(104) %0)
          to label %bb.bc unwind label %bb.bd

bb.bc:                                            ; preds = %.body
  invoke void @__cxa_rethrow() #26
          to label %bb.bg unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.body
  %i.gv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %bb.bd
  resume { ptr, i32 } %i.gv

bb.bf:                                            ; preds = %bb.bd
  %i.gw = landingpad { ptr, i32 }
          catch ptr null
  %i.gx = extractvalue { ptr, i32 } %i.gw, 0
  call void @__clang_call_terminate(ptr %i.gx) #22
end_hunk_0
