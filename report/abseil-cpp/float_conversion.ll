Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/float_conversion?download=true
inline.NumInlined: 822
inline.NumDeleted: 310
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN4absl12lts_2026052619str_format_internal16ConvertFloatImplEeRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_17FormatFINS0_7uint128EEEvT_iRKNS2_11FormatStateE.exit.i

bb.n:                                             ; preds = %bb.k
  %i.bo = icmp slt i32 %i.av, -64
  br i1 %i.bo, label %bb.o, label %bb.t, !prof !40

bb.o:                                             ; preds = %bb.n
  %i.bp = sub nsw i32 64, %i.av
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatFNegativeExpSlowENS0_7uint128EiRKNS2_11FormatStateEm(i64 %.sroa.021.0.copyload.i, i64 %.sroa.222.0.copyload.i, i32 noundef %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0)
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_17FormatFINS0_7uint128EEEvT_iRKNS2_11FormatStateE.exit.i

bb.p:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.thread.i.i
  %i.bq = add nsw i32 %reass.sub40.i.i, 64
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.i.i.i: ; preds = %bb.p, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.i.i
  %.pre-phi.i.i = phi i32 [ %i.bq, %bb.p ], [ %i.bi, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #15
  %i.br = getelementptr inbounds nuw i8, ptr %i.m, i64 42 ; 4 uses
  store i8 46, ptr %i.br, align 2, !tbaa !25
  %i.bs = getelementptr inbounds nuw i8, ptr %i.m, i64 43 ; 4 uses
  %i.bt = icmp slt i32 %.pre-phi.i.i, 65
  br i1 %i.bt, label %bb.q, label %bb.s

bb.q:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.i.i.i
  %i.bu = zext nneg i32 %i.ay to i64
  %i.bv = shl i64 %.sroa.021.0.copyload.i, %i.bu
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %.03.i.i.i.i = phi i64 [ %i.bv, %bb.q ], [ %i.bx, %bb.r ] ; 3 uses
  %.0.i.i.i.i = phi ptr [ %i.br, %bb.q ], [ %i.bz, %bb.r ]
  %i.bw = urem i64 %.03.i.i.i.i, 10
  %i.bx = udiv i64 %.03.i.i.i.i, 10
  %.lhs.trunc.i.i.i.i.i = trunc nuw nsw i64 %i.bw to i8
  %i.by = or disjoint i8 %.lhs.trunc.i.i.i.i.i, 48
  %i.bz = getelementptr inbounds i8, ptr %.0.i.i.i.i, i64 -1 ; 3 uses
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !25
  %.not.i50.i.i.i = icmp ult i64 %.03.i.i.i.i, 10
  br i1 %.not.i50.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i.i, label %bb.r, !llvm.loop !0

bb.s:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.i.i.i
  %i.ca = zext i64 %.sroa.222.0.copyload.i to i128
  %i.cb = shl nuw i128 %i.ca, 64
  %i.cc = zext i64 %.sroa.021.0.copyload.i to i128
  %i.cd = or disjoint i128 %i.cb, %i.cc
  %i.ce = zext nneg i32 %i.ay to i128
  %i.cf = shl i128 %i.cd, %i.ce                   ; 2 uses
  %i.cg = trunc i128 %i.cf to i64                 ; 2 uses
  %i.ch = lshr i128 %i.cf, 64                     ; 2 uses
  %.not10.i.i.i.i = icmp eq i128 %i.ch, 0
  br i1 %.not10.i.i.i.i, label %.preheader.i.i.i.i.preheader, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.s
  %i.ci = trunc nuw i128 %i.ch to i64
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.cv, %.lr.ph.i.i.i.i ], [ %i.br, %.lr.ph.i.preheader.i.i.i ]
  %.0812.i.i.i.i = phi i64 [ %i.cs, %.lr.ph.i.i.i.i ], [ %i.cg, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %.0911.i.i.i.i = phi i64 [ %i.ck, %.lr.ph.i.i.i.i ], [ %i.ci, %.lr.ph.i.preheader.i.i.i ] ; 3 uses
  %i.cj = urem i64 %.0911.i.i.i.i, 10             ; 2 uses
  %i.ck = udiv i64 %.0911.i.i.i.i, 10
  %i.cl = urem i64 %.0812.i.i.i.i, 10
  %i.cm = mul nuw nsw i64 %i.cj, 6
  %i.cn = add nuw nsw i64 %i.cm, %i.cl
  %i.co = udiv i64 %.0812.i.i.i.i, 10
  %i.cp = mul nuw i64 %i.cj, 1844674407370955161
  %i.cq = add nuw i64 %i.cp, %i.co
  %.lhs.trunc.i3.i.i.i.i = trunc nuw nsw i64 %i.cn to i8 ; 2 uses
  %i.cr = udiv i8 %.lhs.trunc.i3.i.i.i.i, 10
  %.zext.i.i.i.i.i = zext nneg i8 %i.cr to i64
  %i.cs = add i64 %i.cq, %.zext.i.i.i.i.i         ; 2 uses
  %i.ct = urem i8 %.lhs.trunc.i3.i.i.i.i, 10
  %i.cu = or disjoint i8 %i.ct, 48
  %i.cv = getelementptr inbounds i8, ptr %.013.i.i.i.i, i64 -1 ; 3 uses
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !25
  %.not.i51.i.i.i = icmp ult i64 %.0911.i.i.i.i, 10
  br i1 %.not.i51.i.i.i, label %.preheader.i.i.i.i.preheader, label %.lr.ph.i.i.i.i, !llvm.loop !1

.preheader.i.i.i.i.preheader:                     ; preds = %.lr.ph.i.i.i.i, %bb.s
  %.03.i.i.i.i.i.ph = phi i64 [ %i.cg, %bb.s ], [ %i.cs, %.lr.ph.i.i.i.i ]
  %.0.i.i.i.i.i.ph = phi ptr [ %i.br, %bb.s ], [ %i.cv, %.lr.ph.i.i.i.i ]
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.preheader, %.preheader.i.i.i.i
  %.03.i.i.i.i.i = phi i64 [ %i.cx, %.preheader.i.i.i.i ], [ %.03.i.i.i.i.i.ph, %.preheader.i.i.i.i.preheader ] ; 3 uses
  %.0.i.i.i.i.i = phi ptr [ %i.cz, %.preheader.i.i.i.i ], [ %.0.i.i.i.i.i.ph, %.preheader.i.i.i.i.preheader ]
  %i.cw = urem i64 %.03.i.i.i.i.i, 10
  %i.cx = udiv i64 %.03.i.i.i.i.i, 10
  %.lhs.trunc.i.i.i.i.i.i = trunc nuw nsw i64 %i.cw to i8
  %i.cy = or disjoint i8 %.lhs.trunc.i.i.i.i.i.i, 48
  %i.cz = getelementptr inbounds i8, ptr %.0.i.i.i.i.i, i64 -1 ; 3 uses
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !25
  %.not.i.i.i.i.i = icmp ult i64 %.03.i.i.i.i.i, 10
  br i1 %.not.i.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !0

bb.t:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #15
  %i.da = getelementptr inbounds nuw i8, ptr %i.m, i64 42 ; 4 uses
  store i8 46, ptr %i.da, align 2, !tbaa !25
  %i.db = getelementptr inbounds nuw i8, ptr %i.m, i64 43 ; 2 uses
  %i.dc = sub nsw i32 64, %i.av                   ; 2 uses
  %.not.i72.i = icmp eq i32 %i.ay, -128
  br i1 %.not.i72.i, label %.preheader.i62.i.i.i.preheader, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dd = zext i64 %.sroa.222.0.copyload.i to i128
  %i.de = shl nuw i128 %i.dd, 64
  %i.df = zext i64 %.sroa.021.0.copyload.i to i128
  %i.dg = or disjoint i128 %i.de, %i.df
  %i.dh = zext nneg i32 %i.dc to i128
  %i.di = lshr i128 %i.dg, %i.dh                  ; 2 uses
  %i.dj = trunc i128 %i.di to i64                 ; 2 uses
  %i.dk = lshr i128 %i.di, 64                     ; 2 uses
  %.not10.i54.i.i.i = icmp eq i128 %i.dk, 0
  br i1 %.not10.i54.i.i.i, label %.preheader.i62.i.i.i.preheader, label %.lr.ph.i55.preheader.i.i.i

.lr.ph.i55.preheader.i.i.i:                       ; preds = %bb.u
  %i.dl = trunc nuw nsw i128 %i.dk to i64
  br label %.lr.ph.i55.i.i.i

.lr.ph.i55.i.i.i:                                 ; preds = %.lr.ph.i55.i.i.i, %.lr.ph.i55.preheader.i.i.i
  %.013.i56.i.i.i = phi ptr [ %i.dy, %.lr.ph.i55.i.i.i ], [ %i.da, %.lr.ph.i55.preheader.i.i.i ]
  %.0812.i57.i.i.i = phi i64 [ %i.dv, %.lr.ph.i55.i.i.i ], [ %i.dj, %.lr.ph.i55.preheader.i.i.i ] ; 2 uses
  %.0911.i58.i.i.i = phi i64 [ %i.dn, %.lr.ph.i55.i.i.i ], [ %i.dl, %.lr.ph.i55.preheader.i.i.i ] ; 3 uses
  %i.dm = urem i64 %.0911.i58.i.i.i, 10           ; 2 uses
  %i.dn = udiv i64 %.0911.i58.i.i.i, 10
  %i.do = urem i64 %.0812.i57.i.i.i, 10
  %i.dp = mul nuw nsw i64 %i.dm, 6
  %i.dq = add nuw nsw i64 %i.dp, %i.do
  %i.dr = udiv i64 %.0812.i57.i.i.i, 10
  %i.ds = mul nuw i64 %i.dm, 1844674407370955161
  %i.dt = add nuw i64 %i.ds, %i.dr
  %.lhs.trunc.i3.i59.i.i.i = trunc nuw nsw i64 %i.dq to i8 ; 2 uses
  %i.du = udiv i8 %.lhs.trunc.i3.i59.i.i.i, 10
  %.zext.i.i60.i.i.i = zext nneg i8 %i.du to i64
  %i.dv = add i64 %i.dt, %.zext.i.i60.i.i.i       ; 2 uses
  %i.dw = urem i8 %.lhs.trunc.i3.i59.i.i.i, 10
  %i.dx = or disjoint i8 %i.dw, 48
  %i.dy = getelementptr inbounds i8, ptr %.013.i56.i.i.i, i64 -1 ; 3 uses
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !25
  %.not.i61.i.i.i = icmp ult i64 %.0911.i58.i.i.i, 10
  br i1 %.not.i61.i.i.i, label %.preheader.i62.i.i.i.preheader, label %.lr.ph.i55.i.i.i, !llvm.loop !1

.preheader.i62.i.i.i.preheader:                   ; preds = %.lr.ph.i55.i.i.i, %bb.u, %bb.t
  %.03.i.i65.i.i.i.ph = phi i64 [ %i.dj, %bb.u ], [ 0, %bb.t ], [ %i.dv, %.lr.ph.i55.i.i.i ]
  %.0.i.i66.i.i.i.ph = phi ptr [ %i.da, %bb.u ], [ %i.da, %bb.t ], [ %i.dy, %.lr.ph.i55.i.i.i ]
  br label %.preheader.i62.i.i.i

.preheader.i62.i.i.i:                             ; preds = %.preheader.i62.i.i.i.preheader, %.preheader.i62.i.i.i
  %.03.i.i65.i.i.i = phi i64 [ %i.ea, %.preheader.i62.i.i.i ], [ %.03.i.i65.i.i.i.ph, %.preheader.i62.i.i.i.preheader ] ; 3 uses
  %.0.i.i66.i.i.i = phi ptr [ %i.ec, %.preheader.i62.i.i.i ], [ %.0.i.i66.i.i.i.ph, %.preheader.i62.i.i.i.preheader ] ; 2 uses
  %i.dz = urem i64 %.03.i.i65.i.i.i, 10
  %i.ea = udiv i64 %.03.i.i65.i.i.i, 10
  %.lhs.trunc.i.i.i67.i.i.i = trunc nuw nsw i64 %i.dz to i8
  %i.eb = or disjoint i8 %.lhs.trunc.i.i.i67.i.i.i, 48
  %i.ec = getelementptr inbounds i8, ptr %.0.i.i66.i.i.i, i64 -1 ; 3 uses
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !25
  %.not.i.i68.i.i.i = icmp ult i64 %.03.i.i65.i.i.i, 10
  br i1 %.not.i.i68.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastENS0_7uint128EPc.exit69.i.i.i, label %.preheader.i62.i.i.i, !llvm.loop !0

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastENS0_7uint128EPc.exit69.i.i.i: ; preds = %.preheader.i62.i.i.i
  %i.ed = getelementptr inbounds i8, ptr %.0.i.i66.i.i.i, i64 -2 ; 3 uses
  store i8 48, ptr %i.ed, align 1, !tbaa !25
  %i.ee = call fastcc noundef ptr @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastENS0_7uint128EPcim(i64 %.sroa.021.0.copyload.i, i64 %.sroa.222.0.copyload.i, ptr noundef %i.db, i32 noundef %i.dc, i64 noundef %spec.select.i)
  %i.ef = load i8, ptr %i.ed, align 1, !tbaa !25
  %.not.i24.i.i = icmp eq i8 %i.ef, 48
  %spec.select.i.i.i = select i1 %.not.i24.i.i, ptr %i.ec, ptr %i.ed
  %.val.i.i.i.pre = load i64, ptr %i.bc, align 8, !tbaa !37
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i.i: ; preds = %.preheader.i.i.i.i, %bb.r, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastENS0_7uint128EPc.exit69.i.i.i
  %.val.i.i.i = phi i64 [ %.val.i.i.i.pre, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastENS0_7uint128EPc.exit69.i.i.i ], [ %spec.select.i, %bb.r ], [ %spec.select.i, %.preheader.i.i.i.i ] ; 2 uses
  %i.eg = phi ptr [ %i.db, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastENS0_7uint128EPc.exit69.i.i.i ], [ %i.bs, %bb.r ], [ %i.bs, %.preheader.i.i.i.i ]
  %.042.i.i.i = phi ptr [ %i.ee, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastENS0_7uint128EPc.exit69.i.i.i ], [ %i.bs, %bb.r ], [ %i.bs, %.preheader.i.i.i.i ]
  %.041.i.i.i = phi ptr [ %spec.select.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastENS0_7uint128EPc.exit69.i.i.i ], [ %i.bz, %bb.r ], [ %i.cz, %.preheader.i.i.i.i ] ; 2 uses
  %i.eh = ptrtoint ptr %.042.i.i.i to i64         ; 2 uses
  %i.ei = ptrtoint ptr %.041.i.i.i to i64
  %i.ej = sub i64 %i.eh, %i.ei                    ; 2 uses
  %.not.i70.i.i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %.not.i70.i.i.i, label %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i.i, label %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i.i

_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i.i: ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i.i
  %.val47.i.i.i = load ptr, ptr %i.bd, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %.val47.i.i.i, i64 1
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !24
  %.fr88.i.i.i = freeze i8 %i.el
  %i.em = and i8 %.fr88.i.i.i, 8
  %.not89.i.i.i = icmp eq i8 %i.em, 0
  %i.en = add i64 %i.ej, -1
  br i1 %.not89.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatFFastINS0_7uint128EEEvT_iRKNS2_11FormatStateE.exit.i.i, label %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i.i

_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i.i: ; preds = %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i.i
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatFFastINS0_7uint128EEEvT_iRKNS2_11FormatStateE.exit.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatFFastINS0_7uint128EEEvT_iRKNS2_11FormatStateE.exit.i.i: ; preds = %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i.i, %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i.i
  %i.eo = phi i64 [ %i.ej, %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i.i ], [ %i.en, %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i.i ]
  %i.ep = ptrtoint ptr %i.eg to i64
  %.neg.i.i.i = add i64 %.val.i.i.i, %i.ep
  %16 = sub i64 %.neg.i.i.i, %i.eh
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_110FinalPrintERKNS2_11FormatStateESt17basic_string_viewIcSt11char_traitsIcEEmmS9_(ptr noundef nonnull readonly align 8 dereferenceable(32) %10, i64 %i.eo, ptr nonnull %.041.i.i.i, i64 noundef 0, i64 noundef %16, i64 0, ptr nonnull @.str.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #15
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_17FormatFINS0_7uint128EEEvT_iRKNS2_11FormatStateE.exit.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_17FormatFINS0_7uint128EEEvT_iRKNS2_11FormatStateE.exit.i: ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatFFastINS0_7uint128EEEvT_iRKNS2_11FormatStateE.exit.i.i, %bb.o, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %bb.fz

bb.v:                                             ; preds = %bb.j
  %.sroa.019.0.copyload.i = load i64, ptr %9, align 16, !tbaa !31 ; 9 uses
  %.sroa.220.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.220.0.copyload.i = load i64, ptr %.sroa.220.0..sroa_idx.i, align 8, !tbaa !31 ; 10 uses
  %i.eq = and i8 %i.ba, -7
  %i.er = icmp eq i8 %i.eq, 9                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  store i8 %.068108.i, ptr %11, align 8, !tbaa !36
  %i.es = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 7 uses
  store i64 %spec.select.i, ptr %i.es, align 8, !tbaa !37
  %i.et = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %1, ptr %i.et, align 8, !tbaa !38
  %i.eu = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %2, ptr %i.eu, align 8, !tbaa !39
  %i.ev = icmp sgt i32 %i.av, 64
  br i1 %i.ev, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %.not.i.i81.i = icmp eq i64 %.sroa.220.0.copyload.i, 0
  br i1 %.not.i.i81.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ew = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.220.0.copyload.i, i1 true)
  %i.ex = trunc nuw nsw i64 %i.ew to i32
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.i82.i

bb.y:                                             ; preds = %bb.w
  %i.ey = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.019.0.copyload.i, i1 false)
  %i.ez = trunc nuw nsw i64 %i.ey to i32
  %i.fa = add nuw nsw i32 %i.ez, 64
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.i82.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.i82.i: ; preds = %bb.y, %bb.x
  %i.fb = phi i32 [ %i.ex, %bb.x ], [ %i.fa, %bb.y ]
  %reass.sub.i83.i = add nuw i32 %i.av, 64
  %i.fc = sub nuw i32 %reass.sub.i83.i, %i.fb
  %i.fd = icmp sgt i32 %i.fc, 128
  br i1 %i.fd, label %bb.z, label %.thread.i.i

bb.z:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.i82.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.fe = zext i1 %i.er to i8
  store i8 %i.fe, ptr %i.k, align 1, !tbaa !42
  store i64 0, ptr %i.l, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  store ptr %11, ptr %7, align 8, !tbaa !44
  %i.ff = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.l, ptr %i.ff, align 8, !tbaa !49
  %i.fg = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.k, ptr %i.fg, align 8, !tbaa !46
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS3_EEE(i64 %.sroa.019.0.copyload.i, i64 %.sroa.220.0.copyload.i, i32 noundef %i.ay, ptr nonnull %7, ptr nonnull @"_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_19str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS4_11FormatStateEmE3$_0vJNS4_15BinaryToDecimalEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE")
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_17FormatEINS0_7uint128EEEvT_ibRKNS2_11FormatStateE.exit.i

bb.aa:                                            ; preds = %bb.v
  %i.fh = icmp slt i32 %i.av, -64
  br i1 %i.fh, label %bb.ab, label %.thread.i.i, !prof !40

bb.ab:                                            ; preds = %bb.aa
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatENegativeExpSlowENS0_7uint128EibRKNS2_11FormatStateEm(i64 %.sroa.019.0.copyload.i, i64 %.sroa.220.0.copyload.i, i32 noundef %i.ay, i1 noundef zeroext %i.er, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0)
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_17FormatEINS0_7uint128EEEvT_ibRKNS2_11FormatStateE.exit.i

.thread.i.i:                                      ; preds = %bb.aa, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.i82.i
  %i.fi = or i64 %.sroa.220.0.copyload.i, %.sroa.019.0.copyload.i
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %.thread.i.i
  %.not.i.i.i.i = icmp eq i32 %narrow.i, 0
  br i1 %.not.i.i.i.i, label %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i80.i, label %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i79.i

_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i80.i: ; preds = %bb.ac
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !24
  %.fr266.i.i.i = freeze i8 %i.fl
  %i.fm = and i8 %.fr266.i.i.i, 8
  %.not267.i.i.i = icmp eq i8 %i.fm, 0
  br i1 %.not267.i.i.i, label %bb.ad, label %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i79.i

_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i79.i: ; preds = %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i80.i, %bb.ac
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i79.i, %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i80.i
  %i.fn = phi ptr [ @.str.7, %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i79.i ], [ @.str.8, %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i80.i ] ; 2 uses
  %i.fo = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fn) #15
  %.str.9..str.10.i.i.i = select i1 %i.er, ptr @.str.9, ptr @.str.10
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_110FinalPrintERKNS2_11FormatStateESt17basic_string_viewIcSt11char_traitsIcEEmmS9_(ptr noundef nonnull readonly align 8 dereferenceable(32) %11, i64 %i.fo, ptr nonnull %i.fn, i64 noundef 0, i64 noundef %spec.select.i, i64 4, ptr nonnull %.str.9..str.10.i.i.i)
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_17FormatEINS0_7uint128EEEvT_ibRKNS2_11FormatStateE.exit.i

bb.ae:                                            ; preds = %.thread.i.i
  %.not.i158.i.i.i = icmp eq i64 %.sroa.220.0.copyload.i, 0
  br i1 %.not.i158.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fp = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.220.0.copyload.i, i1 true)
  %i.fq = trunc nuw nsw i64 %i.fp to i32
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.i.i73.i

bb.ag:                                            ; preds = %bb.ae
  %i.fr = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.019.0.copyload.i, i1 false)
  %i.fs = trunc nuw nsw i64 %i.fr to i32
  %i.ft = add nuw nsw i32 %i.fs, 64
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.i.i73.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.i.i73.i: ; preds = %bb.ag, %bb.af
  %i.fu = phi i32 [ %i.fq, %bb.af ], [ %i.ft, %bb.ag ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #15
  %i.fv = getelementptr inbounds nuw i8, ptr %i.i, i64 2 ; 11 uses
  %i.fw = icmp sgt i32 %i.av, 63
  br i1 %i.fw, label %bb.ah, label %bb.aw

bb.ah:                                            ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.i.i73.i
  %reass.sub.i.i.i = add nuw i32 %i.av, 64
  %i.fx = sub nuw i32 %reass.sub.i.i.i, %i.fu
  %i.fy = icmp slt i32 %i.fx, 65
  br i1 %i.fy, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fz = zext nneg i32 %i.ay to i64
  %i.ga = shl i64 %.sroa.019.0.copyload.i, %i.fz
  %i.gb = call noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferEmPc(i64 noundef %i.ga, ptr noundef nonnull %i.fv)
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.gc = zext i64 %.sroa.220.0.copyload.i to i128
  %i.gd = shl nuw i128 %i.gc, 64
  %i.ge = zext i64 %.sroa.019.0.copyload.i to i128
  %i.gf = or disjoint i128 %i.gd, %i.ge
  %i.gg = zext nneg i32 %i.ay to i128
  %i.gh = shl i128 %i.gf, %i.gg                   ; 2 uses
  %i.gi = trunc i128 %i.gh to i64
  %i.gj = lshr i128 %i.gh, 64
  %i.gk = trunc nuw i128 %i.gj to i64
  %i.gl = call noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferENS0_7uint128EPc(i64 %i.gi, i64 %i.gk, ptr noundef nonnull %i.fv)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.gm = phi ptr [ %i.gb, %bb.ai ], [ %i.gl, %bb.aj ] ; 6 uses
  store i8 48, ptr %i.gm, align 1, !tbaa !25
  %i.gn = ptrtoint ptr %i.gm to i64               ; 3 uses
  %i.go = ptrtoint ptr %i.fv to i64
  %i.gp = sub i64 %i.gn, %i.go                    ; 4 uses
  %i.gq = trunc i64 %i.gp to i32
  %i.gr = add nsw i32 %i.gq, -1                   ; 2 uses
  %i.gs = load i64, ptr %i.es, align 8, !tbaa !37 ; 3 uses
  %i.gt = add i64 %i.gs, 2                        ; 2 uses
  %i.gu = icmp ugt i64 %i.gp, %i.gt
  br i1 %i.gu, label %bb.al, label %_ZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatEFastINS0_7uint128EEEvT_ibRKNS2_11FormatStateEENKUlPcS9_mmE_clES9_S9_mm.exit.i.i.i

bb.al:                                            ; preds = %bb.ak
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.gt ; 4 uses
  %i.gw = ptrtoint ptr %i.gv to i64               ; 2 uses
  %i.gx = sub i64 %i.gn, %i.gw                    ; 2 uses
  %i.gy = ashr i64 %i.gx, 2                       ; 2 uses
  %i.gz = icmp sgt i64 %i.gy, 0
  br i1 %i.gz, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i:               ; preds = %bb.al
  %i.ha = and i64 %i.gx, -4
  %scevgep.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.gv, i64 %i.ha ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.ap, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i
  %.050.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hf, %bb.ap ], [ %i.gy, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.02949.i.i.i.i.i.i.i.i.i = phi ptr [ %i.he, %bb.ap ], [ %i.gv, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %.029.val32.i.i.i.i.i.i.i.i.i = load i8, ptr %.02949.i.i.i.i.i.i.i.i.i, align 1, !tbaa !25
  %.not35.i.i.i.i.i.i.i.i.i = icmp eq i8 %.029.val32.i.i.i.i.i.i.i.i.i, 48
  br i1 %.not35.i.i.i.i.i.i.i.i.i, label %bb.am, label %_ZSt6any_ofIPcZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatEFastINS2_7uint128EEEvT_ibRKNS4_11FormatStateEENKUlS0_S0_mmE_clES0_S0_mmEUlcE_EbS7_S7_T0_.exit.i.i.i.i

bb.am:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.hb = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i.i.i.i, i64 1
  %.val31.i.i.i.i.i.i.i.i.i = load i8, ptr %i.hb, align 1, !tbaa !25
  %.not36.i.i.i.i.i.i.i.i.i = icmp eq i8 %.val31.i.i.i.i.i.i.i.i.i, 48
  br i1 %.not36.i.i.i.i.i.i.i.i.i, label %bb.an, label %_ZSt6any_ofIPcZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatEFastINS2_7uint128EEEvT_ibRKNS4_11FormatStateEENKUlS0_S0_mmE_clES0_S0_mmEUlcE_EbS7_S7_T0_.exit.i.i.i.i.loopexit.split.loop.exit

bb.an:                                            ; preds = %bb.am
  %i.hc = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i.i.i.i, i64 2
  %.val30.i.i.i.i.i.i.i.i.i = load i8, ptr %i.hc, align 1, !tbaa !25
  %.not37.i.i.i.i.i.i.i.i.i = icmp eq i8 %.val30.i.i.i.i.i.i.i.i.i, 48
  br i1 %.not37.i.i.i.i.i.i.i.i.i, label %bb.ao, label %_ZSt6any_ofIPcZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatEFastINS2_7uint128EEEvT_ibRKNS4_11FormatStateEENKUlS0_S0_mmE_clES0_S0_mmEUlcE_EbS7_S7_T0_.exit.i.i.i.i.loopexit.split.loop.exit262

bb.ao:                                            ; preds = %bb.an
  %i.hd = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i.i.i.i, i64 3
  %.val.i.i.i.i.i.i.i.i.i = load i8, ptr %i.hd, align 1, !tbaa !25
  %.not38.i.i.i.i.i.i.i.i.i = icmp eq i8 %.val.i.i.i.i.i.i.i.i.i, 48
  br i1 %.not38.i.i.i.i.i.i.i.i.i, label %bb.ap, label %_ZSt6any_ofIPcZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatEFastINS2_7uint128EEEvT_ibRKNS4_11FormatStateEENKUlS0_S0_mmE_clES0_S0_mmEUlcE_EbS7_S7_T0_.exit.i.i.i.i.loopexit.split.loop.exit264

bb.ap:                                            ; preds = %bb.ao
  %i.he = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i.i.i.i, i64 4
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052619str_format_internal16ConvertFloatImplEeRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE:bb.a
  br i1 %.not.i89.i, label %bb.fw, label %bb.fx

.critedge.i.i:                                    ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_112FormatARoundINS0_7uint128EEEvbRKNS2_11FormatStateEPhPT_Pi.exit.i.i
  %i.aew = or i64 %.sroa.051.4.i.i, %.sroa.16.4.i.i
  %i.aex = icmp eq i64 %i.aew, 0
  br i1 %i.aex, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %.critedge.i.i, %bb.fv
  %i.aey = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.aez = load i8, ptr %i.aey, align 1, !tbaa !24
  %i.afa = and i8 %i.aez, 8
  %.not74.i.i = icmp eq i8 %i.afa, 0
  br i1 %.not74.i.i, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %.critedge.i.i, %bb.fv
  %i.afb = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i8 46, ptr %i.aev, align 1, !tbaa !25
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %.034.i.i = phi ptr [ %i.afb, %bb.fx ], [ %i.aev, %bb.fw ] ; 2 uses
  %i.afc = zext i64 %.sroa.16.4.i.i to i128
  %i.afd = shl nuw i128 %i.afc, 64
  %i.afe = zext i64 %.sroa.051.4.i.i to i128
  %i.aff = or disjoint i128 %i.afd, %i.afe        ; 2 uses
  %.not7578.i.i = icmp eq i128 %i.aff, 0
  br i1 %.not7578.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.fy, %.lr.ph.i.i
  %i.afg = phi i128 [ %i.afl, %.lr.ph.i.i ], [ %i.aff, %bb.fy ]
  %.181.i.i = phi ptr [ %i.afk, %.lr.ph.i.i ], [ %.034.i.i, %bb.fy ] ; 2 uses
  %.03580.i.i = phi i64 [ %i.afo, %.lr.ph.i.i ], [ 0, %bb.fy ]
  %.sroa.16.079.i.i = phi i64 [ %i.afn, %.lr.ph.i.i ], [ %.sroa.16.4.i.i, %bb.fy ]
  %i.afh = lshr i64 %.sroa.16.079.i.i, 60
  %i.afi = getelementptr inbounds nuw i8, ptr %i.aeo, i64 %i.afh
  %i.afj = load i8, ptr %i.afi, align 1, !tbaa !25
  %i.afk = getelementptr inbounds nuw i8, ptr %.181.i.i, i64 1 ; 2 uses
  store i8 %i.afj, ptr %.181.i.i, align 1, !tbaa !25
  %i.afl = shl i128 %i.afg, 4                     ; 3 uses
  %i.afm = lshr i128 %i.afl, 64
  %i.afn = trunc nuw i128 %i.afm to i64
  %i.afo = add nuw nsw i64 %.03580.i.i, 1         ; 2 uses
  %.not75.i.i = icmp eq i128 %i.afl, 0
  br i1 %.not75.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !99

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.fy
  %.035.lcssa.i.i = phi i64 [ 0, %bb.fy ], [ %i.afo, %.lr.ph.i.i ]
  %.1.lcssa.i.i = phi ptr [ %.034.i.i, %bb.fy ], [ %i.afk, %.lr.ph.i.i ]
  %i.afp = sub i64 %spec.select.i, %.035.lcssa.i.i
  %.0.i88.i = select i1 %i.aba, i64 %i.afp, i64 0
  %i.afq = ptrtoint ptr %.1.lcssa.i.i to i64
  %i.afr = ptrtoint ptr %i.e to i64
  %i.afs = sub i64 %i.afq, %i.afr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  %i.aft = select i1 %i.aav, i8 80, i8 112
  store i8 %i.aft, ptr %i.f, align 16, !tbaa !25
  %i.afu = icmp sgt i32 %.5.i.i, -1
  %i.afv = select i1 %i.afu, i8 43, i8 45
  %i.afw = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 %i.afv, ptr %i.afw, align 1, !tbaa !25
  %i.afx = call i32 @llvm.abs.i32(i32 %.5.i.i, i1 true)
  %i.afy = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.afz = call noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferEiPc(i32 noundef %i.afx, ptr noundef nonnull %i.afy) ; 0 uses
  %i.aga = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #15
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_110FinalPrintERKNS2_11FormatStateESt17basic_string_viewIcSt11char_traitsIcEEmmS9_(ptr noundef nonnull readonly align 8 dereferenceable(32) %15, i64 %i.afs, ptr nonnull %i.e, i64 noundef 2, i64 noundef %.0.i88.i, i64 %i.aga, ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  br label %bb.fz

bb.fz:                                            ; preds = %._crit_edge.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatGFastINS0_7uint128EEEvT_ibRKNS2_11FormatStateE.exit, %bb.cr, %bb.cp, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_17FormatEINS0_7uint128EEEvT_ibRKNS2_11FormatStateE.exit.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_17FormatFINS0_7uint128EEEvT_iRKNS2_11FormatStateE.exit.i, %bb.j
  %.1.i = phi i1 [ true, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_17FormatFINS0_7uint128EEEvT_iRKNS2_11FormatStateE.exit.i ], [ true, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_17FormatEINS0_7uint128EEEvT_ibRKNS2_11FormatStateE.exit.i ], [ true, %bb.cp ], [ true, %._crit_edge.i.i ], [ true, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatGFastINS0_7uint128EEEvT_ibRKNS2_11FormatStateE.exit ], [ true, %bb.cr ], [ false, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FloatToSinkIeEEbT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FloatToSinkIeEEbT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit: ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_123ConvertNonNumericFloatsIeEEbcT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit.i, %bb.fz
  %.2.i = phi i1 [ %.1.i, %bb.fz ], [ true, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_123ConvertNonNumericFloatsIeEEbcT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit.i ]
  ret i1 %.2.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal16ConvertFloatImplEfRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(float noundef %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = fpext float %0 to double
  %i.b = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FloatToSinkIdEEbT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(double noundef %i.a, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef %2)
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FloatToSinkIdEEbT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(double noundef %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 9 uses
  %i.b = alloca [34 x i8], align 16               ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %3 = alloca %class.anon.28, align 8             ; 7 uses
  %i.f = alloca [169 x i8], align 16              ; 4 uses
  %i.g = alloca [34 x i8], align 16               ; 8 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %4 = alloca %class.anon.7, align 8              ; 6 uses
  %i.j = alloca [171 x i8], align 16              ; 7 uses
  %i.k = alloca i8, align 1                       ; 4 uses
  %5 = alloca %class.anon, align 8                ; 5 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca [4 x i8], align 1                 ; 9 uses
  %6 = alloca %"struct.absl::lts_20260526::str_format_internal::(anonymous namespace)::FormatState", align 8 ; 9 uses
  %7 = alloca %"struct.absl::lts_20260526::str_format_internal::(anonymous namespace)::FormatState", align 8 ; 10 uses
  %8 = alloca %"struct.absl::lts_20260526::str_format_internal::(anonymous namespace)::FormatState", align 8 ; 7 uses
  %9 = alloca %"struct.absl::lts_20260526::str_format_internal::(anonymous namespace)::FormatState", align 8 ; 7 uses
  %10 = alloca %"struct.absl::lts_20260526::str_format_internal::(anonymous namespace)::FormatState", align 8 ; 7 uses
  %11 = alloca %"struct.absl::lts_20260526::str_format_internal::(anonymous namespace)::FormatState", align 8 ; 7 uses
  %i.n = bitcast double %0 to i64
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = fneg double %0
  br label %select.unfold

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !24    ; 2 uses
  %i.s = and i8 %i.r, 2
  %.not = icmp eq i8 %i.s, 0
  br i1 %.not, label %bb.d, label %select.unfold

bb.d:                                             ; preds = %bb.c
  %i.t = and i8 %i.r, 4
  %.not118 = icmp eq i8 %i.t, 0
  br i1 %.not118, label %bb.e, label %select.unfold

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #15
  br label %bb.f

select.unfold:                                    ; preds = %bb.d, %bb.b, %bb.c
  %.070.ph = phi i8 [ 45, %bb.b ], [ 43, %bb.c ], [ 32, %bb.d ] ; 2 uses
  %.069.ph = phi double [ %i.p, %bb.b ], [ %0, %bb.c ], [ %0, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #15
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store i8 %.070.ph, ptr %i.m, align 1, !tbaa !25
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %select.unfold
  %.069108 = phi double [ %.069.ph, %select.unfold ], [ %0, %bb.e ] ; 3 uses
  %.070106 = phi i8 [ %.070.ph, %select.unfold ], [ 0, %bb.e ] ; 6 uses
  %.0.i = phi ptr [ %i.u, %select.unfold ], [ %i.m, %bb.e ] ; 2 uses
  %i.v = fcmp uno double %.069108, 0.000000e+00
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = load i8, ptr %1, align 4, !tbaa !26      ; 2 uses
  %i.x = icmp eq i8 %i.w, 7
  %i.y = and i8 %i.w, -7
  %i.z = icmp eq i8 %i.y, 9
  %or.cond7.i.i = or i1 %i.x, %i.z
  %.str..str.1.i = select i1 %or.cond7.i.i, ptr @.str, ptr @.str.1
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_123ConvertNonNumericFloatsIdEEbcT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

bb.h:                                             ; preds = %bb.f
  %i.aa = tail call double @llvm.fabs.f64(double %.069108)
  %i.ab = fcmp oeq double %i.aa, +inf
  br i1 %i.ab, label %bb.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_123ConvertNonNumericFloatsIdEEbcT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit.thread

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_123ConvertNonNumericFloatsIdEEbcT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit.thread: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #15
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = load i8, ptr %1, align 4, !tbaa !26     ; 2 uses
  %i.ad = icmp eq i8 %i.ac, 7
  %i.ae = and i8 %i.ac, -7
  %i.af = icmp eq i8 %i.ae, 9
  %or.cond7.i14.i = or i1 %i.ad, %i.af
  %.str.2..str.3.i = select i1 %or.cond7.i14.i, ptr @.str.2, ptr @.str.3
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_123ConvertNonNumericFloatsIdEEbcT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_123ConvertNonNumericFloatsIdEEbcT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit: ; preds = %bb.g, %bb.i
  %.str.2..str.3.sink.i = phi ptr [ %.str.2..str.3.i, %bb.i ], [ %.str..str.1.i, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.0.i, ptr noundef nonnull align 1 dereferenceable(3) %.str.2..str.3.sink.i, i64 3, i1 false)
  %.1.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 3
  %i.ag = ptrtoint ptr %.1.i to i64
  %i.ah = ptrtoint ptr %i.m to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !27
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !24
  %i.an = trunc i8 %i.am to i1
  %i.ao = call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl15PutPaddedStringESt17basic_string_viewIcSt11char_traitsIcEEiib(ptr noundef nonnull align 8 dereferenceable(1056) %2, i64 %i.ai, ptr nonnull %i.m, i32 noundef %i.ak, i32 noundef -1, i1 noundef zeroext %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #15
  br i1 %i.ao, label %bb.cy, label %bb.j

bb.j:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_123ConvertNonNumericFloatsIdEEbcT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit.thread, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_123ConvertNonNumericFloatsIdEEbcT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !28 ; 5 uses
  %i.ar = icmp slt i32 %i.aq, 0
  %narrow = select i1 %i.ar, i32 6, i32 %i.aq     ; 4 uses
  %spec.select = zext i32 %narrow to i64          ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #15
  %i.as = call double @frexp(double noundef %.069108, ptr noundef nonnull %i.l) #15
  %i.at = call double @ldexp(double noundef %i.as, i32 noundef 53) #15
  %i.au = load i32, ptr %i.l, align 4, !tbaa !50  ; 23 uses
  %i.av = add nsw i32 %i.au, -53                  ; 11 uses
  %i.aw = fptoui double %i.at to i64              ; 27 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #15
  %i.ax = load i8, ptr %1, align 4, !tbaa !26     ; 5 uses
  %i.ay = and i8 %i.ax, -2
  switch i8 %i.ay, label %bb.cy [
    i8 8, label %bb.k
    i8 10, label %bb.ab
    i8 12, label %bb.cl
    i8 14, label %bb.cq
  ]

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store i8 %.070106, ptr %6, align 8, !tbaa !36
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %spec.select, ptr %i.az, align 8, !tbaa !37
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %1, ptr %i.ba, align 8, !tbaa !38
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %2, ptr %i.bb, align 8, !tbaa !39
  %i.bc = icmp sgt i32 %i.au, 52
  br i1 %i.bc, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bd = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aw, i1 false)
  %i.be = trunc nuw nsw i64 %i.bd to i32
  %reass.sub.i = add nuw i32 %i.au, 11
  %i.bf = sub nuw i32 %reass.sub.i, %i.be         ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, 128
  br i1 %i.bg, label %bb.m, label %bb.p, !prof !40

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i8 0, ptr %i.k, align 1, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store ptr %6, ptr %5, align 8, !tbaa !44
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.k, ptr %i.bh, align 8, !tbaa !46
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS3_EEE(i64 %i.aw, i64 0, i32 noundef range(i32 -2147483648, 2147483595) %i.av, ptr nonnull %5, ptr nonnull @"_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_19str_format_internal12_GLOBAL__N_122FormatFPositiveExpSlowENS0_7uint128EiRKNS4_11FormatStateEbE3$_0vJNS4_15BinaryToDecimalEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE")
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_17FormatFImEEvT_iRKNS2_11FormatStateE.exit

bb.n:                                             ; preds = %bb.k
  %i.bi = icmp slt i32 %i.au, -75
  br i1 %i.bi, label %bb.o, label %select.unfold.preheader.i.i, !prof !40

bb.o:                                             ; preds = %bb.n
  %i.bj = sub nsw i32 53, %i.au
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatFNegativeExpSlowENS0_7uint128EiRKNS2_11FormatStateEm(i64 %i.aw, i64 0, i32 noundef %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0)
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_17FormatFImEEvT_iRKNS2_11FormatStateE.exit

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 42 ; 4 uses
  store i8 46, ptr %i.bk, align 2, !tbaa !25
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 43 ; 4 uses
  %i.bm = icmp slt i32 %i.bf, 65
  br i1 %i.bm, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bn = zext nneg i32 %i.av to i64
  %i.bo = shl i64 %i.aw, %i.bn
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %.03.i.i.i = phi i64 [ %i.bo, %bb.q ], [ %i.bq, %bb.r ] ; 3 uses
  %.0.i.i.i = phi ptr [ %i.bk, %bb.q ], [ %i.bs, %bb.r ]
  %i.bp = urem i64 %.03.i.i.i, 10
  %i.bq = udiv i64 %.03.i.i.i, 10
  %.lhs.trunc.i.i.i.i = trunc nuw nsw i64 %i.bp to i8
  %i.br = or disjoint i8 %.lhs.trunc.i.i.i.i, 48
  %i.bs = getelementptr inbounds i8, ptr %.0.i.i.i, i64 -1 ; 3 uses
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !25
  %.not.i.i.i = icmp ult i64 %.03.i.i.i, 10
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i, label %bb.r, !llvm.loop !0

bb.s:                                             ; preds = %bb.p
  %i.bt = zext i64 %i.aw to i128
  %i.bu = zext nneg i32 %i.av to i128
  %i.bv = shl i128 %i.bt, %i.bu                   ; 2 uses
  %i.bw = trunc i128 %i.bv to i64                 ; 2 uses
  %i.bx = lshr i128 %i.bv, 64                     ; 2 uses
  %.not10.i.i.i = icmp eq i128 %i.bx, 0
  br i1 %.not10.i.i.i, label %.preheader.i.i.i.preheader, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.s
  %i.by = trunc nuw i128 %i.bx to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.preheader.i.i
  %.013.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i ], [ %i.bk, %.lr.ph.i.preheader.i.i ]
  %.0812.i.i.i = phi i64 [ %i.ci, %.lr.ph.i.i.i ], [ %i.bw, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %.0911.i.i.i = phi i64 [ %i.ca, %.lr.ph.i.i.i ], [ %i.by, %.lr.ph.i.preheader.i.i ] ; 3 uses
  %i.bz = urem i64 %.0911.i.i.i, 10               ; 2 uses
  %i.ca = udiv i64 %.0911.i.i.i, 10
  %i.cb = urem i64 %.0812.i.i.i, 10
  %i.cc = mul nuw nsw i64 %i.bz, 6
  %i.cd = add nuw nsw i64 %i.cc, %i.cb
  %i.ce = udiv i64 %.0812.i.i.i, 10
  %i.cf = mul nuw i64 %i.bz, 1844674407370955161
  %i.cg = add nuw i64 %i.cf, %i.ce
  %.lhs.trunc.i3.i.i.i = trunc nuw nsw i64 %i.cd to i8 ; 2 uses
  %i.ch = udiv i8 %.lhs.trunc.i3.i.i.i, 10
  %.zext.i.i.i.i = zext nneg i8 %i.ch to i64
  %i.ci = add i64 %i.cg, %.zext.i.i.i.i           ; 2 uses
  %i.cj = urem i8 %.lhs.trunc.i3.i.i.i, 10
  %i.ck = or disjoint i8 %i.cj, 48
  %i.cl = getelementptr inbounds i8, ptr %.013.i.i.i, i64 -1 ; 3 uses
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !25
  %.not.i46.i.i = icmp ult i64 %.0911.i.i.i, 10
  br i1 %.not.i46.i.i, label %.preheader.i.i.i.preheader, label %.lr.ph.i.i.i, !llvm.loop !1

.preheader.i.i.i.preheader:                       ; preds = %.lr.ph.i.i.i, %bb.s
  %.03.i.i.i.i.ph = phi i64 [ %i.bw, %bb.s ], [ %i.ci, %.lr.ph.i.i.i ]
  %.0.i.i.i.i.ph = phi ptr [ %i.bk, %bb.s ], [ %i.cl, %.lr.ph.i.i.i ]
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.preheader, %.preheader.i.i.i
  %.03.i.i.i.i = phi i64 [ %i.cn, %.preheader.i.i.i ], [ %.03.i.i.i.i.ph, %.preheader.i.i.i.preheader ] ; 3 uses
  %.0.i.i.i.i = phi ptr [ %i.cp, %.preheader.i.i.i ], [ %.0.i.i.i.i.ph, %.preheader.i.i.i.preheader ]
  %i.cm = urem i64 %.03.i.i.i.i, 10
  %i.cn = udiv i64 %.03.i.i.i.i, 10
  %.lhs.trunc.i.i.i.i.i = trunc nuw nsw i64 %i.cm to i8
  %i.co = or disjoint i8 %.lhs.trunc.i.i.i.i.i, 48
  %i.cp = getelementptr inbounds i8, ptr %.0.i.i.i.i, i64 -1 ; 3 uses
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !25
  %.not.i.i.i.i = icmp ult i64 %.03.i.i.i.i, 10
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i, label %.preheader.i.i.i, !llvm.loop !0

select.unfold.preheader.i.i:                      ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #15
  %i.cq = getelementptr inbounds nuw i8, ptr %i.j, i64 42 ; 2 uses
  store i8 46, ptr %i.cq, align 2, !tbaa !25
  %i.cr = sub nsw i32 53, %i.au                   ; 2 uses
  %i.cs = icmp sgt i32 %i.au, -11
  %i.ct = zext nneg i32 %i.cr to i64
  %i.cu = lshr i64 %i.aw, %i.ct
  %spec.select273 = select i1 %i.cs, i64 %i.cu, i64 0
  br label %select.unfold.i.i

select.unfold.i.i:                                ; preds = %select.unfold.preheader.i.i, %select.unfold.i.i
  %.03.i47.i.i = phi i64 [ %i.cw, %select.unfold.i.i ], [ %spec.select273, %select.unfold.preheader.i.i ] ; 3 uses
  %.0.i48.i.i = phi ptr [ %i.cy, %select.unfold.i.i ], [ %i.cq, %select.unfold.preheader.i.i ] ; 2 uses
  %i.cv = urem i64 %.03.i47.i.i, 10
  %i.cw = udiv i64 %.03.i47.i.i, 10
  %.lhs.trunc.i.i49.i.i = trunc nuw nsw i64 %i.cv to i8
  %i.cx = or disjoint i8 %.lhs.trunc.i.i49.i.i, 48
  %i.cy = getelementptr inbounds i8, ptr %.0.i48.i.i, i64 -1 ; 3 uses
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !25
  %.not.i50.i.i = icmp ult i64 %.03.i47.i.i, 10
  br i1 %.not.i50.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit51.i.i, label %select.unfold.i.i, !llvm.loop !0

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit51.i.i: ; preds = %select.unfold.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.j, i64 43 ; 4 uses
  %i.da = getelementptr inbounds i8, ptr %.0.i48.i.i, i64 -2 ; 3 uses
  store i8 48, ptr %i.da, align 1, !tbaa !25
  %i.db = icmp sgt i32 %i.au, -12
  br i1 %i.db, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit51.i.i
  %i.dc = add nsw i32 %i.au, 11
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = shl i64 %i.aw, %i.dd                    ; 2 uses
  %.not21.i.i.i = icmp eq i32 %narrow, 0
  br i1 %.not21.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i52.i.i

.lr.ph.i52.i.i:                                   ; preds = %bb.t, %bb.u
  %.024.i.i.i = phi ptr [ %i.dk, %bb.u ], [ %i.cz, %bb.t ] ; 3 uses
  %.0923.i.i.i = phi i64 [ %i.dl, %bb.u ], [ %spec.select, %bb.t ]
  %.01622.i.i.i = phi i64 [ %i.dh, %bb.u ], [ %i.de, %bb.t ] ; 2 uses
  %.not13.i.i.i = icmp eq i64 %.01622.i.i.i, 0
  br i1 %.not13.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastEmPcim.exit.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i52.i.i
  %i.df = zext i64 %.01622.i.i.i to i128
  %i.dg = mul nuw nsw i128 %i.df, 10              ; 2 uses
  %i.dh = trunc i128 %i.dg to i64                 ; 2 uses
  %i.di = lshr i128 %i.dg, 64
  %.tr.i.i.i.i.i = trunc nuw nsw i128 %i.di to i8
  %i.dj = or disjoint i8 %.tr.i.i.i.i.i, 48
  %i.dk = getelementptr inbounds nuw i8, ptr %.024.i.i.i, i64 1 ; 2 uses
  store i8 %i.dj, ptr %.024.i.i.i, align 1, !tbaa !25
  %i.dl = add nsw i64 %.0923.i.i.i, -1            ; 2 uses
  %.not.i53.i.i = icmp eq i64 %i.dl, 0
  br i1 %.not.i53.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i52.i.i, !llvm.loop !108

._crit_edge.i.i.i:                                ; preds = %bb.u, %bb.t
  %.016.lcssa.i.i.i = phi i64 [ %i.de, %bb.t ], [ %i.dh, %bb.u ] ; 2 uses
  %.0.lcssa.i54.i.i = phi ptr [ %i.cz, %bb.t ], [ %i.dk, %bb.u ] ; 5 uses
  %i.dm = icmp sgt i64 %.016.lcssa.i.i.i, -1
  br i1 %i.dm, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastEmPcim.exit.i.i, label %bb.v

bb.v:                                             ; preds = %._crit_edge.i.i.i
  %.not12.i.i.i = icmp eq i64 %.016.lcssa.i.i.i, -9223372036854775808
  br i1 %.not12.i.i.i, label %bb.x, label %.preheader.i55.i.i

.preheader.i55.i.i:                               ; preds = %bb.v, %.preheader.i55.i.i.backedge
  %.0.pn.i.i.i = phi ptr [ %.0.i.i56.i.i, %.preheader.i55.i.i.backedge ], [ %.0.lcssa.i54.i.i, %bb.v ]
  %.0.i.i56.i.i = getelementptr inbounds i8, ptr %.0.pn.i.i.i, i64 -1 ; 4 uses
  %i.dn = load i8, ptr %.0.i.i56.i.i, align 1, !tbaa !25 ; 2 uses
  switch i8 %i.dn, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit.sink.split.i.i.i [
    i8 57, label %bb.w
    i8 46, label %.preheader.i55.i.i.backedge
  ]

bb.w:                                             ; preds = %.preheader.i55.i.i
  store i8 48, ptr %.0.i.i56.i.i, align 1, !tbaa !25
  br label %.preheader.i55.i.i.backedge

.preheader.i55.i.i.backedge:                      ; preds = %bb.w, %.preheader.i55.i.i
  br label %.preheader.i55.i.i, !llvm.loop !4

bb.x:                                             ; preds = %bb.v
  %i.do = getelementptr inbounds i8, ptr %.0.lcssa.i54.i.i, i64 -1 ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !25
  %i.dq = icmp eq i8 %i.dp, 46
  %spec.select.idx.i.i.i.i = sext i1 %i.dq to i64
  %spec.select.i.i.i.i = getelementptr inbounds i8, ptr %i.do, i64 %spec.select.idx.i.i.i.i ; 2 uses
  %i.dr = load i8, ptr %spec.select.i.i.i.i, align 1, !tbaa !25 ; 2 uses
  %i.ds = and i8 %i.dr, -127
  %i.dt = icmp eq i8 %i.ds, 1
  br i1 %i.dt, label %.preheader.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastEmPcim.exit.i.i

.preheader.i.i.i.i:                               ; preds = %bb.x, %bb.z
  %i.du = phi i8 [ %.pr.i.i.i.i, %bb.z ], [ %i.dr, %bb.x ] ; 2 uses
  %.0.i.i.i.i.i = phi ptr [ %i.dv, %bb.z ], [ %spec.select.i.i.i.i, %bb.x ] ; 3 uses
  switch i8 %i.du, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit.sink.split.i.i.i [
    i8 57, label %bb.y
    i8 46, label %bb.z
  ]

bb.y:                                             ; preds = %.preheader.i.i.i.i
  store i8 48, ptr %.0.i.i.i.i.i, align 1, !tbaa !25
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.preheader.i.i.i.i
  %i.dv = getelementptr inbounds i8, ptr %.0.i.i.i.i.i, i64 -1 ; 2 uses
  %.pr.i.i.i.i = load i8, ptr %i.dv, align 1, !tbaa !25
  br label %.preheader.i.i.i.i, !llvm.loop !4

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit.sink.split.i.i.i: ; preds = %.preheader.i55.i.i, %.preheader.i.i.i.i
  %.lcssa.sink.i.i.i = phi i8 [ %i.du, %.preheader.i.i.i.i ], [ %i.dn, %.preheader.i55.i.i ]
  %.0.i.i.lcssa.sink.i.i.i = phi ptr [ %.0.i.i.i.i.i, %.preheader.i.i.i.i ], [ %.0.i.i56.i.i, %.preheader.i55.i.i ]
  %i.dw = add i8 %.lcssa.sink.i.i.i, 1
  store i8 %i.dw, ptr %.0.i.i.lcssa.sink.i.i.i, align 1, !tbaa !25
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastEmPcim.exit.i.i

bb.aa:                                            ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit51.i.i
  %i.dx = call fastcc noundef ptr @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastENS0_7uint128EPcim(i64 %i.aw, i64 0, ptr noundef %i.cz, i32 noundef %i.cr, i64 noundef %spec.select)
  %.val.i.i.pre.pre = load i64, ptr %i.az, align 8, !tbaa !37
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastEmPcim.exit.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastEmPcim.exit.i.i: ; preds = %.lr.ph.i52.i.i, %bb.aa, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit.sink.split.i.i.i, %bb.x, %._crit_edge.i.i.i
  %.val.i.i.pre = phi i64 [ %.val.i.i.pre.pre, %bb.aa ], [ %spec.select, %._crit_edge.i.i.i ], [ %spec.select, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit.sink.split.i.i.i ], [ %spec.select, %bb.x ], [ %spec.select, %.lr.ph.i52.i.i ]
  %i.dy = phi ptr [ %i.dx, %bb.aa ], [ %.0.lcssa.i54.i.i, %._crit_edge.i.i.i ], [ %.0.lcssa.i54.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit.sink.split.i.i.i ], [ %.0.lcssa.i54.i.i, %bb.x ], [ %.024.i.i.i, %.lr.ph.i52.i.i ]
  %i.dz = load i8, ptr %i.da, align 1, !tbaa !25
  %.not.i.i = icmp eq i8 %i.dz, 48
  %spec.select.i.i = select i1 %.not.i.i, ptr %i.cy, ptr %i.da
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i: ; preds = %.preheader.i.i.i, %bb.r, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastEmPcim.exit.i.i
  %.val.i.i = phi i64 [ %.val.i.i.pre, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastEmPcim.exit.i.i ], [ %spec.select, %bb.r ], [ %spec.select, %.preheader.i.i.i ] ; 2 uses
  %i.ea = phi ptr [ %i.cz, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastEmPcim.exit.i.i ], [ %i.bl, %bb.r ], [ %i.bl, %.preheader.i.i.i ]
  %.038.i.i = phi ptr [ %spec.select.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastEmPcim.exit.i.i ], [ %i.bs, %bb.r ], [ %i.cp, %.preheader.i.i.i ] ; 2 uses
  %.037.i.i = phi ptr [ %i.dy, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastEmPcim.exit.i.i ], [ %i.bl, %bb.r ], [ %i.bl, %.preheader.i.i.i ]
  %i.eb = ptrtoint ptr %.037.i.i to i64           ; 2 uses
  %i.ec = ptrtoint ptr %.038.i.i to i64
  %i.ed = sub i64 %i.eb, %i.ec                    ; 2 uses
  %.not.i57.i.i = icmp eq i64 %.val.i.i, 0
  br i1 %.not.i57.i.i, label %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i, label %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i

_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i: ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i
  %.val43.i.i = load ptr, ptr %i.ba, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %.val43.i.i, i64 1
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !24
  %.fr66.i.i = freeze i8 %i.ef
  %i.eg = and i8 %.fr66.i.i, 8
  %.not67.i.i = icmp eq i8 %i.eg, 0
  %i.eh = add i64 %i.ed, -1
  br i1 %.not67.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatFFastImEEvT_iRKNS2_11FormatStateE.exit.i, label %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i

_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i: ; preds = %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatFFastImEEvT_iRKNS2_11FormatStateE.exit.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatFFastImEEvT_iRKNS2_11FormatStateE.exit.i: ; preds = %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i, %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i
  %i.ei = phi i64 [ %i.ed, %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i ], [ %i.eh, %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i ]
  %i.ej = ptrtoint ptr %i.ea to i64
  %.neg.i.i = sub i64 %i.ej, %i.eb
  %i.ek = add i64 %.neg.i.i, %.val.i.i
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_110FinalPrintERKNS2_11FormatStateESt17basic_string_viewIcSt11char_traitsIcEEmmS9_(ptr noundef nonnull readonly align 8 dereferenceable(32) %6, i64 %i.ei, ptr %.038.i.i, i64 noundef 0, i64 noundef %i.ek, i64 0, ptr nonnull @.str.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #15
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_17FormatFImEEvT_iRKNS2_11FormatStateE.exit

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_17FormatFImEEvT_iRKNS2_11FormatStateE.exit: ; preds = %bb.m, %bb.o, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatFFastImEEvT_iRKNS2_11FormatStateE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.cy

bb.ab:                                            ; preds = %bb.j
  %i.el = and i8 %i.ax, -7
  %i.em = icmp eq i8 %i.el, 9                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  store i8 %.070106, ptr %7, align 8, !tbaa !36
  %i.en = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 7 uses
  store i64 %spec.select, ptr %i.en, align 8, !tbaa !37
  %i.eo = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %1, ptr %i.eo, align 8, !tbaa !38
  %i.ep = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %2, ptr %i.ep, align 8, !tbaa !39
  %i.eq = icmp sgt i32 %i.au, 53
  br i1 %i.eq, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.er = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aw, i1 false)
  %i.es = trunc nuw nsw i64 %i.er to i32
  %reass.sub.i84 = add nuw i32 %i.au, 11
  %i.et = sub nuw i32 %reass.sub.i84, %i.es
  %i.eu = icmp sgt i32 %i.et, 128
  br i1 %i.eu, label %bb.ad, label %.thread.i

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ev = zext i1 %i.em to i8
  store i8 %i.ev, ptr %i.h, align 1, !tbaa !42
  store i64 0, ptr %i.i, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store ptr %7, ptr %4, align 8, !tbaa !44
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.i, ptr %i.ew, align 8, !tbaa !49
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.h, ptr %i.ex, align 8, !tbaa !46
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS3_EEE(i64 %i.aw, i64 0, i32 noundef range(i32 -2147483648, 2147483595) %i.av, ptr nonnull %4, ptr nonnull @"_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_19str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS4_11FormatStateEmE3$_0vJNS4_15BinaryToDecimalEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE")
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_17FormatEImEEvT_ibRKNS2_11FormatStateE.exit

bb.ae:                                            ; preds = %bb.ab
  %i.ey = icmp slt i32 %i.au, -75
  br i1 %i.ey, label %bb.af, label %.thread.i, !prof !40

bb.af:                                            ; preds = %bb.ae
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatENegativeExpSlowENS0_7uint128EibRKNS2_11FormatStateEm(i64 %i.aw, i64 0, i32 noundef range(i32 -2147483648, 2147483595) %i.av, i1 noundef zeroext %i.em, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0)
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_17FormatEImEEvT_ibRKNS2_11FormatStateE.exit

.thread.i:                                        ; preds = %bb.ae, %bb.ac
  %.not.i.i74 = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i74, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %.thread.i
  %.not.i.i.i81 = icmp eq i32 %narrow, 0
  br i1 %.not.i.i.i81, label %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i83, label %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i82

_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i83: ; preds = %bb.ag
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !24
  %.fr210.i.i = freeze i8 %i.fa
  %i.fb = and i8 %.fr210.i.i, 8
  %.not211.i.i = icmp eq i8 %i.fb, 0
  br i1 %.not211.i.i, label %bb.ah, label %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i82

_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i82: ; preds = %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i83, %bb.ag
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i82, %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i83
  %i.fc = phi ptr [ @.str.7, %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i82 ], [ @.str.8, %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i83 ] ; 2 uses
  %i.fd = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fc) #15
  %.str.9..str.10.i.i = select i1 %i.em, ptr @.str.9, ptr @.str.10
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_110FinalPrintERKNS2_11FormatStateESt17basic_string_viewIcSt11char_traitsIcEEmmS9_(ptr noundef nonnull readonly align 8 dereferenceable(32) %7, i64 %i.fd, ptr nonnull %i.fc, i64 noundef 0, i64 noundef %spec.select, i64 4, ptr nonnull %.str.9..str.10.i.i)
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_17FormatEImEEvT_ibRKNS2_11FormatStateE.exit

bb.ai:                                            ; preds = %.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  %i.fe = getelementptr inbounds nuw i8, ptr %i.f, i64 2 ; 11 uses
  %i.ff = icmp sgt i32 %i.au, 52
  br i1 %i.ff, label %bb.aj, label %bb.ay

bb.aj:                                            ; preds = %bb.ai
  %i.fg = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aw, i1 true)
  %i.fh = trunc nuw nsw i64 %i.fg to i32
  %reass.sub.i.i = add nuw i32 %i.au, 11
  %i.fi = sub nuw i32 %reass.sub.i.i, %i.fh
  %i.fj = icmp slt i32 %i.fi, 65
  br i1 %i.fj, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fk = zext nneg i32 %i.av to i64
  %i.fl = shl i64 %i.aw, %i.fk
  %i.fm = call noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferEmPc(i64 noundef %i.fl, ptr noundef nonnull %i.fe)
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.fn = zext i64 %i.aw to i128
  %i.fo = zext nneg i32 %i.av to i128
  %i.fp = shl i128 %i.fn, %i.fo                   ; 2 uses
  %i.fq = trunc i128 %i.fp to i64
  %i.fr = lshr i128 %i.fp, 64
  %i.fs = trunc nuw i128 %i.fr to i64
  %i.ft = call noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferENS0_7uint128EPc(i64 %i.fq, i64 %i.fs, ptr noundef nonnull %i.fe)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.fu = phi ptr [ %i.fm, %bb.ak ], [ %i.ft, %bb.al ] ; 6 uses
  store i8 48, ptr %i.fu, align 1, !tbaa !25
  %i.fv = ptrtoint ptr %i.fu to i64               ; 3 uses
  %i.fw = ptrtoint ptr %i.fe to i64
  %i.fx = sub i64 %i.fv, %i.fw                    ; 4 uses
  %i.fy = trunc i64 %i.fx to i32
  %i.fz = add nsw i32 %i.fy, -1                   ; 2 uses
  %i.ga = load i64, ptr %i.en, align 8, !tbaa !37 ; 3 uses
  %i.gb = add i64 %i.ga, 2                        ; 2 uses
  %i.gc = icmp ugt i64 %i.fx, %i.gb
  br i1 %i.gc, label %bb.an, label %_ZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatEFastImEEvT_ibRKNS2_11FormatStateEENKUlPcS8_mmE_clES8_S8_mm.exit.i.i

bb.an:                                            ; preds = %bb.am
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.gb ; 4 uses
  %i.ge = ptrtoint ptr %i.gd to i64               ; 2 uses
  %i.gf = sub i64 %i.fv, %i.ge                    ; 2 uses
  %i.gg = ashr i64 %i.gf, 2                       ; 2 uses
  %i.gh = icmp sgt i64 %i.gg, 0
  br i1 %i.gh, label %.lr.ph.preheader.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %bb.an
  %i.gi = and i64 %i.gf, -4
  %scevgep.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.gd, i64 %i.gi ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.ar, %.lr.ph.preheader.i.i.i.i.i.i.i.i
  %.050.i.i.i.i.i.i.i.i = phi i64 [ %i.gn, %bb.ar ], [ %i.gg, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %.02949.i.i.i.i.i.i.i.i = phi ptr [ %i.gm, %bb.ar ], [ %i.gd, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 9 uses
  %.029.val32.i.i.i.i.i.i.i.i = load i8, ptr %.02949.i.i.i.i.i.i.i.i, align 1, !tbaa !25
  %.not35.i.i.i.i.i.i.i.i = icmp eq i8 %.029.val32.i.i.i.i.i.i.i.i, 48
  br i1 %.not35.i.i.i.i.i.i.i.i, label %bb.ao, label %_ZSt6any_ofIPcZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatEFastImEEvT_ibRKNS4_11FormatStateEENKUlS0_S0_mmE_clES0_S0_mmEUlcE_EbS6_S6_T0_.exit.i.i.i

bb.ao:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.gj = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i.i.i, i64 1
  %.val31.i.i.i.i.i.i.i.i = load i8, ptr %i.gj, align 1, !tbaa !25
  %.not36.i.i.i.i.i.i.i.i = icmp eq i8 %.val31.i.i.i.i.i.i.i.i, 48
  br i1 %.not36.i.i.i.i.i.i.i.i, label %bb.ap, label %_ZSt6any_ofIPcZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatEFastImEEvT_ibRKNS4_11FormatStateEENKUlS0_S0_mmE_clES0_S0_mmEUlcE_EbS6_S6_T0_.exit.i.i.i.loopexit.split.loop.exit

bb.ap:                                            ; preds = %bb.ao
  %i.gk = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i.i.i, i64 2
  %.val30.i.i.i.i.i.i.i.i = load i8, ptr %i.gk, align 1, !tbaa !25
  %.not37.i.i.i.i.i.i.i.i = icmp eq i8 %.val30.i.i.i.i.i.i.i.i, 48
  br i1 %.not37.i.i.i.i.i.i.i.i, label %bb.aq, label %_ZSt6any_ofIPcZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatEFastImEEvT_ibRKNS4_11FormatStateEENKUlS0_S0_mmE_clES0_S0_mmEUlcE_EbS6_S6_T0_.exit.i.i.i.loopexit.split.loop.exit265

bb.aq:                                            ; preds = %bb.ap
  %i.gl = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i.i.i, i64 3
  %.val.i.i.i.i.i.i.i.i = load i8, ptr %i.gl, align 1, !tbaa !25
  %.not38.i.i.i.i.i.i.i.i = icmp eq i8 %.val.i.i.i.i.i.i.i.i, 48
  br i1 %.not38.i.i.i.i.i.i.i.i, label %bb.ar, label %_ZSt6any_ofIPcZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatEFastImEEvT_ibRKNS4_11FormatStateEENKUlS0_S0_mmE_clES0_S0_mmEUlcE_EbS6_S6_T0_.exit.i.i.i.loopexit.split.loop.exit267

bb.ar:                                            ; preds = %bb.aq
  %i.gm = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i.i.i, i64 4
  %i.gn = add nsw i64 %.050.i.i.i.i.i.i.i.i, -1
  %i.go = icmp sgt i64 %.050.i.i.i.i.i.i.i.i, 1
  br i1 %i.go, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i, !llvm.loop !109

end_hunk_1
