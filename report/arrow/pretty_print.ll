inline.NumInlined: 4037
inline.NumDeleted: 1046
begin_hunk_0_@_ZN5arrow16VisitArrayInlineINS_12_GLOBAL__N_112ArrayPrinterEJEEENS_6StatusERKNS_5ArrayEPT_DpOT0_:bb.a
  %i.gqk = load i8, ptr %i.gqj, align 8, !tbaa !126, !range !97, !noalias !646, !noundef !98
  %i.gql = trunc nuw i8 %i.gqk to i1
  %i.gqm = load i32, ptr %i.gnr, align 8, !noalias !646
  %i.gqn = icmp slt i32 %i.gqm, 1
  %or.cond80.not.i.i.i.i.i = select i1 %i.gql, i1 true, i1 %i.gqn
  br i1 %or.cond80.not.i.i.i.i.i, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit43.i.i.i.i.i1997, label %.lr.ph.i.i41.i.i.i.i.i1988

.lr.ph.i.i41.i.i.i.i.i1988:                       ; preds = %bb.zr, %.noexc9.i.i.i1994
  %.02.i.i42.i.i.i.i.i1989 = phi i32 [ %i.gqq, %.noexc9.i.i.i1994 ], [ 0, %bb.zr ]
  %i.gqo = load ptr, ptr %i.glr, align 8, !tbaa !60, !noalias !646
  %i.gqp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gqo, ptr noundef nonnull @.str, i64 noundef 1)
          to label %.noexc9.i.i.i1994 unwind label %.loopexit.i.i.i1990, !noalias !629 ; 0 uses

.noexc9.i.i.i1994:                                ; preds = %.lr.ph.i.i41.i.i.i.i.i1988
  %i.gqq = add nuw nsw i32 %.02.i.i42.i.i.i.i.i1989, 1 ; 2 uses
  %i.gqr = load i32, ptr %i.gnr, align 8, !tbaa !57, !noalias !646
  %i.gqs = icmp slt i32 %i.gqq, %i.gqr
  br i1 %i.gqs, label %.lr.ph.i.i41.i.i.i.i.i1988, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit43.loopexit.i.i.i.i.i1995, !llvm.loop !195

_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit43.loopexit.i.i.i.i.i1995: ; preds = %.noexc9.i.i.i1994
  %.pre.i.i.i.i.i1996 = load ptr, ptr %2, align 8, !tbaa !194, !noalias !646
  br label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit43.i.i.i.i.i1997

_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit43.i.i.i.i.i1997: ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit43.loopexit.i.i.i.i.i1995, %bb.zr
  %i.gqt = phi ptr [ %.pre.i.i.i.i.i1996, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit43.loopexit.i.i.i.i.i1995 ], [ %i.gqi, %bb.zr ] ; 2 uses
  %i.gqu = load ptr, ptr %i.glr, align 8, !tbaa !60, !noalias !646
  %i.gqv = getelementptr inbounds nuw i8, ptr %i.gqt, i64 16
  %i.gqw = load ptr, ptr %i.gqv, align 8, !tbaa !102, !noalias !646
  %i.gqx = getelementptr inbounds nuw i8, ptr %i.gqt, i64 24
  %i.gqy = load i64, ptr %i.gqx, align 8, !tbaa !44, !noalias !646
  %i.gqz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gqu, ptr noundef %i.gqw, i64 noundef %i.gqy)
          to label %.noexc10.i.i.i2000 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i1998, !noalias !629 ; 0 uses

.noexc10.i.i.i2000:                               ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit43.i.i.i.i.i1997
  br i1 %i.goi, label %.critedge.i.i.i.i.i2002, label %.invoke.i.i.i2001

.invoke.i.i.i2001:                                ; preds = %_ZN5arrow6StatusD2Ev.exit50.i.i.i.i.i2014, %.noexc10.i.i.i2000
  %i.gra = load ptr, ptr %i.glr, align 8, !tbaa !60, !noalias !646
  %i.grb = load ptr, ptr %2, align 8, !tbaa !194, !noalias !646, !nonnull !98, !align !192 ; 2 uses
  %i.grc = getelementptr inbounds nuw i8, ptr %i.grb, i64 120
  %i.grd = load ptr, ptr %i.grc, align 8, !tbaa !102, !noalias !646
  %i.gre = getelementptr inbounds nuw i8, ptr %i.grb, i64 128
  %i.grf = load i64, ptr %i.gre, align 8, !tbaa !44, !noalias !646
  %i.grg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gra, ptr noundef %i.grd, i64 noundef %i.grf)
          to label %.critedge.i.i.i.i.i2002 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i1998, !noalias !629 ; 0 uses

bb.zs:                                            ; preds = %.noexc8.i.i.i2021, %bb.zq, %.noexc7.i.i.i2018, %.noexc6.i.i.i2019, %bb.zm
  %i.grh = load ptr, ptr %2, align 8, !tbaa !194, !noalias !646, !nonnull !98, !align !192
  %i.gri = getelementptr inbounds nuw i8, ptr %i.grh, i64 48
  %i.grj = load i8, ptr %i.gri, align 8, !tbaa !126, !range !97, !noalias !646, !noundef !98
  %i.grk = trunc nuw i8 %i.grj to i1
  %i.grl = load i32, ptr %i.gnr, align 8, !noalias !646
  %i.grm = icmp slt i32 %i.grl, 1
  %or.cond83.not.i.i.i.i.i = select i1 %i.grk, i1 true, i1 %i.grm
  br i1 %or.cond83.not.i.i.i.i.i, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit46.i.i.i.i.i2013, label %.lr.ph.i.i44.i.i.i.i.i2009

.lr.ph.i.i44.i.i.i.i.i2009:                       ; preds = %bb.zs, %.noexc12.i.i.i2012
  %.02.i.i45.i.i.i.i.i2010 = phi i32 [ %i.grp, %.noexc12.i.i.i2012 ], [ 0, %bb.zs ]
  %i.grn = load ptr, ptr %i.glr, align 8, !tbaa !60, !noalias !646
  %i.gro = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.grn, ptr noundef nonnull @.str, i64 noundef 1)
          to label %.noexc12.i.i.i2012 unwind label %.loopexit.split-lp.loopexit.i.i.i2011, !noalias !629 ; 0 uses

.noexc12.i.i.i2012:                               ; preds = %.lr.ph.i.i44.i.i.i.i.i2009
  %i.grp = add nuw nsw i32 %.02.i.i45.i.i.i.i.i2010, 1 ; 2 uses
  %i.grq = load i32, ptr %i.gnr, align 8, !tbaa !57, !noalias !646
  %i.grr = icmp slt i32 %i.grp, %i.grq
  br i1 %i.grr, label %.lr.ph.i.i44.i.i.i.i.i2009, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit46.i.i.i.i.i2013, !llvm.loop !195

_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit46.i.i.i.i.i2013: ; preds = %.noexc12.i.i.i2012, %bb.zs
  %i.grs = load ptr, ptr %i.goe, align 8, !tbaa !649, !noalias !651
  %i.grt = getelementptr inbounds [8 x i8], ptr %i.grs, i64 %.074.i.i.i.i.i
  %i.gru = load i64, ptr %i.grt, align 8, !tbaa !385, !noalias !651 ; 20 uses
  %.val.i.i.i.i.i.i = load i32, ptr %59, align 8, !tbaa !639, !noalias !651
  %.val1.i.i.i.i.i.i = load i64, ptr %i.gni, align 8, !noalias !651 ; 4 uses
  switch i32 %.val.i.i.i.i.i.i, label %bb.abf [
    i32 3, label %bb.aat
    i32 1, label %bb.zt
    i32 2, label %bb.aag
  ]

bb.zt:                                            ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit46.i.i.i.i.i2013
  %i.grv = add i64 %i.gru, 1096193779200000
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.grv, 2068084742400000
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %bb.zu, label %.invoke100.i.i.i, !prof !77

.invoke100.i.i.i:                                 ; preds = %bb.abf, %bb.aag, %bb.zt
  invoke fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRlRZNS_12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_13TimestampTypeEEENS0_15StringFormatterIS8_vEEEENS_6StatusERKT_PT0_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalISG_EEtlSL_EEEOSD_OSG_(i64 %i.gru, ptr noundef nonnull readonly align 8 dereferenceable(8) %58)
          to label %_ZN5arrow6StatusD2Ev.exit50.i.i.i.i.i2014 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i1998, !noalias !629

bb.zu:                                            ; preds = %bb.zt
  %i.grw = sdiv i64 %i.gru, 86400000              ; 3 uses
  %i.grx = trunc nsw i64 %i.grw to i32            ; 2 uses
  %i.gry = mul nsw i64 %i.grw, 86400000           ; 2 uses
  %.not53.i.i.i.i.i.i.i.i.i = icmp sgt i64 %i.gry, %i.gru
  br i1 %.not53.i.i.i.i.i.i.i.i.i, label %bb.zw, label %bb.zv

bb.zv:                                            ; preds = %bb.zu
  %.neg.i.i.i.i.i.i.i.i.i.i.i = mul nsw i64 %i.grw, -86400000
  %i.grz = add nsw i64 %.neg.i.i.i.i.i.i.i.i.i.i.i, %i.gru
  br label %bb.zx

bb.zw:                                            ; preds = %bb.zu
  %.neg.i.i.i.i.i.i.i.i.i = add nsw i64 %i.gru, 86400000
  %i.gsa = sub nsw i64 %.neg.i.i.i.i.i.i.i.i.i, %i.gry
  %i.gsb = add nsw i32 %i.grx, -1
  br label %bb.zx

bb.zx:                                            ; preds = %bb.zw, %bb.zv
  %.sroa.036.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.grz, %bb.zv ], [ %i.gsa, %bb.zw ]
  %.sroa.037.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.grx, %bb.zv ], [ %i.gsb, %bb.zw ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #18, !noalias !651
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.zz, label %bb.zy

bb.zy:                                            ; preds = %bb.zx
  store i8 90, ptr %i.gny, align 1, !tbaa !45, !noalias !651
  br label %bb.zz

bb.zz:                                            ; preds = %bb.zy, %bb.zx
  %.063.i.i.i.i.pre-phi.i.i.i.i.i = phi i64 [ %.pre90.i.i.i.i.i, %bb.zy ], [ %i.gnz, %bb.zx ] ; 3 uses
  %.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gny, %bb.zy ], [ %i.gnx, %bb.zx ] ; 5 uses
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.abs.i64(i64 %.sroa.036.0.i.i.i.i.i.i.i.i.i, i1 true) ; 3 uses
  %i.gsc = udiv i64 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, 3600000 ; 3 uses
  %i.gsd = udiv i64 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, 60000
  %.neg.i.i.i.i.i.i.i.i.i.i.i.i = mul nsw i64 %i.gsc, -60
  %i.gse = add nsw i64 %.neg.i.i.i.i.i.i.i.i.i.i.i.i, %i.gsd ; 2 uses
  %.neg.i7.i.i.i.i.i.i.i.i.i.i.i = mul nsw i64 %i.gsc, -3600000
  %i.gsf = add nsw i64 %.neg.i7.i.i.i.i.i.i.i.i.i.i.i, %spec.select.i.i.i.i.i.i.i.i.i.i.i.i
  %.neg.i8.i.i.i.i.i.i.i.i.i.i.i = mul nsw i64 %i.gse, -60000
  %i.gsg = add nsw i64 %i.gsf, %.neg.i8.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.gsh = sdiv i64 %i.gsg, 1000                  ; 2 uses
  %.neg.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nsw i64 %i.gsh, -1000
  %i.gsi = add nsw i64 %.neg.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.gsg ; 3 uses
  %i.gsj = icmp sgt i64 %i.gsi, 99
  br i1 %i.gsj, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.zz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.1.idx.i.i.i.i.i.i.i.i.i = phi i64 [ %.1.add.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.zz ] ; 2 uses
  %.08.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gsr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gsi, %bb.zz ] ; 3 uses
  %.1.ptr.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.0.i.i.i.i.i.i.i.i.i, i64 %.1.idx.i.i.i.i.i.i.i.i.i
  %i.gsk = urem i64 %.08.i.i.i.i.i.i.i.i.i.i.i.i, 100
  %i.gsl = shl nuw nsw i64 %i.gsk, 1
  %i.gsm = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.gsl ; 2 uses
  %i.gsn = getelementptr inbounds nuw i8, ptr %i.gsm, i64 1
  %i.gso = load i8, ptr %i.gsn, align 1, !tbaa !45, !noalias !651
  %i.gsp = getelementptr inbounds i8, ptr %.1.ptr.i.i.i.i.i.i.i.i.i, i64 -1
  store i8 %i.gso, ptr %i.gsp, align 1, !tbaa !45, !noalias !651
  %i.gsq = load i8, ptr %i.gsm, align 1, !tbaa !45, !noalias !651
  %.1.add.i.i.i.i.i.i.i.i.i = add nsw i64 %.1.idx.i.i.i.i.i.i.i.i.i, -2 ; 3 uses
  %.ptr55.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.0.i.i.i.i.i.i.i.i.i, i64 %.1.add.i.i.i.i.i.i.i.i.i
  store i8 %i.gsq, ptr %.ptr55.i.i.i.i.i.i.i.i.i, align 1, !tbaa !45, !noalias !651
  %i.gsr = udiv i64 %.08.i.i.i.i.i.i.i.i.i.i.i.i, 100 ; 2 uses
  %i.gss = icmp samesign ugt i64 %.08.i.i.i.i.i.i.i.i.i.i.i.i, 9999
  br i1 %i.gss, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !654

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %bb.zz
  %.2.idx.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.zz ], [ %.1.add.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gsi, %bb.zz ], [ %i.gsr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.gst = icmp sgt i64 %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, 9
  br i1 %i.gst, label %bb.aaa, label %bb.aab

bb.aaa:                                           ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gsu = shl nuw nsw i64 %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.gsv = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.gsu ; 2 uses
  %i.gsw = getelementptr inbounds nuw i8, ptr %i.gsv, i64 1
  %i.gsx = load i8, ptr %i.gsw, align 1, !tbaa !45, !noalias !651
  %.2.add.i.i.i.i.i.i.i.i.i = add nsw i64 %.2.idx.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %.ptr54.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.0.i.i.i.i.i.i.i.i.i, i64 %.2.add.i.i.i.i.i.i.i.i.i
  store i8 %i.gsx, ptr %.ptr54.i.i.i.i.i.i.i.i.i, align 1, !tbaa !45, !noalias !651
  %i.gsy = load i8, ptr %i.gsv, align 1, !tbaa !45, !noalias !651
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i.i.i.i

bb.aab:                                           ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gsz = trunc i64 %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i to i8
  %i.gta = add i8 %i.gsz, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.aab, %bb.aaa
  %.3.idx.i.i.i.i.i.i.i.i.i = phi i64 [ %.2.add.i.i.i.i.i.i.i.i.i, %bb.aaa ], [ %.2.idx.i.i.i.i.i.i.i.i.i, %bb.aab ] ; 3 uses
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.gsy, %bb.aaa ], [ %i.gta, %bb.aab ]
  %i.gtb = getelementptr i8, ptr %.0.i.i.i.i.i.i.i.i.i, i64 %.3.idx.i.i.i.i.i.i.i.i.i ; 2 uses
  %.ptr.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.gtb, i64 -1
  store i8 %.sink.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.ptr.i.i.i.i.i.i.i.i.i, align 1, !tbaa !45, !noalias !651
  %i.gtc = icmp sgt i64 %.3.idx.i.i.i.i.i.i.i.i.i, -2
  br i1 %i.gtc, label %.lr.ph.i.i.preheader.i.i.i.i.i.i.i.i.i, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.preheader.i.i.i.i.i.i.i.i.i:           ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.gtd = add i64 %.3.idx.i.i.i.i.i.i.i.i.i, %.063.i.i.i.i.pre-phi.i.i.i.i.i ; 2 uses
  %i.gte = add i64 %i.gtd, -2
  %i.gtf = add i64 %.063.i.i.i.i.pre-phi.i.i.i.i.i, -3
  %umin.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.gte, i64 %i.gtf) ; 2 uses
  %i.gtg = sub i64 %umin.i.i.i.i.i.i.i.i.i, %.063.i.i.i.i.pre-phi.i.i.i.i.i
  %scevgep.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %.0.i.i.i.i.i.i.i.i.i, i64 %i.gtg ; 2 uses
  %i.gth = xor i64 %umin.i.i.i.i.i.i.i.i.i, -1
  %i.gti = add i64 %i.gtd, %i.gth
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i.i.i.i.i.i.i.i.i, i8 48, i64 %i.gti, i1 false), !tbaa !45, !noalias !651
  %scevgep65.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i.i.i.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.preheader.i.i.i.i.i.i.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.gtj = phi ptr [ %i.gtb, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %scevgep65.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i.i.i.i.i.i.i ] ; 21 uses
  %103 = getelementptr i8, ptr %i.gtj, i64 -2
  store i8 46, ptr %103, align 1, !tbaa !45, !noalias !651
  %i.gtk = shl nsw i64 %i.gsh, 1
  %104 = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.gtk ; 2 uses
  %i.gtl = getelementptr inbounds nuw i8, ptr %104, i64 1
  %105 = load i8, ptr %i.gtl, align 1, !tbaa !45, !noalias !651
  %i.gtm = getelementptr i8, ptr %i.gtj, i64 -3
  store i8 %105, ptr %i.gtm, align 1, !tbaa !45, !noalias !651
  %106 = load i8, ptr %104, align 1, !tbaa !45, !noalias !651
  %107 = getelementptr i8, ptr %i.gtj, i64 -4
  store i8 %106, ptr %107, align 1, !tbaa !45, !noalias !651
  %108 = getelementptr i8, ptr %i.gtj, i64 -5
  store i8 58, ptr %108, align 1, !tbaa !45, !noalias !651
  %i.gtn = shl nsw i64 %i.gse, 1
  %109 = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.gtn ; 2 uses
  %110 = getelementptr inbounds nuw i8, ptr %109, i64 1
  %111 = load i8, ptr %110, align 1, !tbaa !45, !noalias !651
  %112 = getelementptr i8, ptr %i.gtj, i64 -6
  store i8 %111, ptr %112, align 1, !tbaa !45, !noalias !651
  %113 = load i8, ptr %109, align 1, !tbaa !45, !noalias !651
  %114 = getelementptr i8, ptr %i.gtj, i64 -7
  store i8 %113, ptr %114, align 1, !tbaa !45, !noalias !651
  %i.gto = getelementptr i8, ptr %i.gtj, i64 -8
  store i8 58, ptr %i.gto, align 1, !tbaa !45, !noalias !651
  %i.gtp = shl nuw nsw i64 %i.gsc, 1
  %115 = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.gtp ; 2 uses
  %116 = getelementptr inbounds nuw i8, ptr %115, i64 1
  %117 = load i8, ptr %116, align 1, !tbaa !45, !noalias !651
  %118 = getelementptr i8, ptr %i.gtj, i64 -9
  store i8 %117, ptr %118, align 1, !tbaa !45, !noalias !651
  %119 = load i8, ptr %115, align 1, !tbaa !45, !noalias !651
  %120 = getelementptr i8, ptr %i.gtj, i64 -10
  store i8 %119, ptr %120, align 1, !tbaa !45, !noalias !651
  %i.gtq = getelementptr i8, ptr %i.gtj, i64 -11
  store i8 32, ptr %i.gtq, align 1, !tbaa !45, !noalias !651
  %i.gtr = add nsw i32 %.sroa.037.0.i.i.i.i.i.i.i.i.i, 719468 ; 2 uses
  %i.gts = icmp sgt i32 %.sroa.037.0.i.i.i.i.i.i.i.i.i, -719469
  %i.gtt = add nuw nsw i32 %.sroa.037.0.i.i.i.i.i.i.i.i.i, 573372
  %i.gtu = select i1 %i.gts, i32 %i.gtr, i32 %i.gtt
  %i.gtv = sdiv i32 %i.gtu, 146097                ; 2 uses
  %.neg.i.i17.i.i.i.i.i.i.i.i.i = mul nsw i32 %i.gtv, -146097
  %i.gtw = add nsw i32 %.neg.i.i17.i.i.i.i.i.i.i.i.i, %i.gtr ; 5 uses
  %i.gtx = udiv i32 %i.gtw, 1460
  %i.gty = udiv i32 %i.gtw, 36524
  %i.gtz = udiv i32 %i.gtw, 146096
  %.neg4008 = add nsw i32 %i.gty, %i.gtw
  %i.gua = add nuw nsw i32 %i.gtz, %i.gtx
  %i.gub = sub nsw i32 %.neg4008, %i.gua          ; 3 uses
  %i.guc = udiv i32 %i.gub, 365                   ; 2 uses
  %i.gud = mul nsw i32 %i.gtv, 400
  %i.gue = add nsw i32 %i.guc, %i.gud
  %i.guf = udiv i32 %i.gub, 1460
  %i.gug = udiv i32 %i.gub, 36500
  %.neg36.i.i.i.i.i.i.i.i.i.i.i = mul i32 %i.guc, -365
  %.neg37.i.i.i.i.i.i.i.i.i.i.i = sub nsw i32 %i.gtw, %i.guf
  %.neg25.i.i.i.i.i.i.i.i.i.i.i = add nsw i32 %.neg37.i.i.i.i.i.i.i.i.i.i.i, %i.gug
  %i.guh = add i32 %.neg25.i.i.i.i.i.i.i.i.i.i.i, %.neg36.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.gui = mul i32 %i.guh, 5
  %i.guj = add i32 %i.gui, 2                      ; 2 uses
  %i.guk = udiv i32 %i.guj, 153                   ; 2 uses
  %i.gul = mul nuw i32 %i.guk, 153
  %i.gum = add nuw i32 %i.gul, 2
  %i.gun = udiv i32 %i.gum, 5
  %i.guo = sub i32 %i.guh, %i.gun
  %i.gup = icmp ult i32 %i.guj, 1530
  %.v.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.gup, i32 3, i32 -9
  %i.guq = add nsw i32 %.v.i.i.i.i.i.i.i.i.i.i.i, %i.guk ; 2 uses
  %i.gur = icmp ult i32 %i.guq, 3
  %i.gus = zext i1 %i.gur to i32
  %i.gut = add nsw i32 %i.gue, %i.gus
  %i.guu = shl i32 %i.guo, 24
  %.sroa.3.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i = add i32 %i.guu, 16777216
  %i.guv = lshr exact i32 %.sroa.3.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i, 23
  %i.guw = zext nneg i32 %i.guv to i64
  %121 = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.guw ; 2 uses
  %122 = getelementptr inbounds nuw i8, ptr %121, i64 1
  %123 = load i8, ptr %122, align 1, !tbaa !45, !noalias !651
  %124 = getelementptr i8, ptr %i.gtj, i64 -12
  store i8 %123, ptr %124, align 1, !tbaa !45, !noalias !651
  %125 = load i8, ptr %121, align 1, !tbaa !45, !noalias !651
  %126 = getelementptr i8, ptr %i.gtj, i64 -13
  store i8 %125, ptr %126, align 1, !tbaa !45, !noalias !651
  %i.gux = getelementptr i8, ptr %i.gtj, i64 -14
  store i8 45, ptr %i.gux, align 1, !tbaa !45, !noalias !651
  %i.guy = shl nsw i32 %i.guq, 1
  %i.guz = and i32 %i.guy, 510
  %i.gva = zext nneg i32 %i.guz to i64
  %127 = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.gva ; 2 uses
  %128 = getelementptr inbounds nuw i8, ptr %127, i64 1
  %129 = load i8, ptr %128, align 1, !tbaa !45, !noalias !651
  %i.gvb = getelementptr i8, ptr %i.gtj, i64 -15
  store i8 %129, ptr %i.gvb, align 1, !tbaa !45, !noalias !651
  %130 = load i8, ptr %127, align 1, !tbaa !45, !noalias !651
  %131 = getelementptr i8, ptr %i.gtj, i64 -16
  store i8 %130, ptr %131, align 1, !tbaa !45, !noalias !651
  %132 = getelementptr i8, ptr %i.gtj, i64 -17
  store i8 45, ptr %132, align 1, !tbaa !45, !noalias !651
  %sext.i.i.i.i.i.i.i.i.i.i = shl i32 %i.gut, 16
  %133 = ashr exact i32 %sext.i.i.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %134 = icmp slt i32 %133, 0
  %135 = call i32 @llvm.abs.i32(i32 %133, i1 true) ; 2 uses
  %.lhs.trunc.i.i.i.i.i.i.i.i.i.i = trunc nuw i32 %135 to i16 ; 3 uses
  %i.gvc = urem i16 %.lhs.trunc.i.i.i.i.i.i.i.i.i.i, 100
  %i.gvd = shl nuw nsw i16 %i.gvc, 1
  %i.gve = zext nneg i16 %i.gvd to i64
  %i.gvf = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.gve ; 2 uses
  %i.gvg = getelementptr inbounds nuw i8, ptr %i.gvf, i64 1
  %136 = load i8, ptr %i.gvg, align 1, !tbaa !45, !noalias !651
  %137 = getelementptr i8, ptr %i.gtj, i64 -18
  store i8 %136, ptr %137, align 1, !tbaa !45, !noalias !651
  %138 = load i8, ptr %i.gvf, align 1, !tbaa !45, !noalias !651
  %139 = getelementptr i8, ptr %i.gtj, i64 -19
  store i8 %138, ptr %139, align 1, !tbaa !45, !noalias !651
  %140 = udiv i16 %.lhs.trunc.i.i.i.i.i.i.i.i.i.i, 100
  %141 = urem i16 %140, 100
  %142 = shl nuw nsw i16 %141, 1
  %143 = zext nneg i16 %142 to i64
  %144 = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %143 ; 2 uses
  %145 = getelementptr inbounds nuw i8, ptr %144, i64 1
  %146 = load i8, ptr %145, align 1, !tbaa !45, !noalias !651
  %147 = getelementptr i8, ptr %i.gtj, i64 -20
  store i8 %146, ptr %147, align 1, !tbaa !45, !noalias !651
  %148 = load i8, ptr %144, align 1, !tbaa !45, !noalias !651
  %149 = getelementptr i8, ptr %i.gtj, i64 -21    ; 2 uses
  store i8 %148, ptr %149, align 1, !tbaa !45, !noalias !651
  %i.gvh = icmp samesign ugt i32 %135, 9999
  br i1 %i.gvh, label %bb.aac, label %bb.aad

bb.aac:                                           ; preds = %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i
  %i.gvi = udiv i16 %.lhs.trunc.i.i.i.i.i.i.i.i.i.i, 10000
  %i.gvj = trunc nuw nsw i16 %i.gvi to i8
  %i.gvk = or disjoint i8 %i.gvj, 48
  %i.gvl = getelementptr i8, ptr %i.gtj, i64 -22  ; 2 uses
  store i8 %i.gvk, ptr %i.gvl, align 1, !tbaa !45, !noalias !651
  br label %bb.aad

bb.aad:                                           ; preds = %bb.aac, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i
  %.4.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gvl, %bb.aac ], [ %149, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  br i1 %134, label %bb.aae, label %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i.i.i.i.i.i.i.i.i

bb.aae:                                           ; preds = %bb.aad
  %i.gvm = getelementptr inbounds i8, ptr %.4.i.i.i.i.i.i.i.i.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.gvm, align 1, !tbaa !45, !noalias !651
  br label %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i.i.i.i.i.i.i.i.i

_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.aae, %bb.aad
  %.5.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gvm, %bb.aae ], [ %.4.i.i.i.i.i.i.i.i.i, %bb.aad ] ; 2 uses
  %i.gvn = ptrtoint ptr %.5.i.i.i.i.i.i.i.i.i to i64
  %i.gvo = sub i64 %i.gnz, %i.gvn                 ; 3 uses
  %i.gvp = load ptr, ptr %2, align 8, !tbaa !194, !noalias !651, !nonnull !98, !align !192
  %i.gvq = getelementptr inbounds nuw i8, ptr %i.gvp, i64 52
  %i.gvr = load i32, ptr %i.gvq, align 4, !tbaa !47, !noalias !651
  %i.gvs = load ptr, ptr %i.glr, align 8, !tbaa !60, !noalias !651
  %i.gvt = sext i32 %i.gvr to i64                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.gvo, i64 %i.gvt)
  %i.gvu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gvs, ptr noundef nonnull %.5.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc14.i.i.i2015 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i1998, !noalias !629 ; 0 uses

.noexc14.i.i.i2015:                               ; preds = %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i.i.i.i.i.i.i.i.i
  %i.gvv = icmp ugt i64 %i.gvo, %i.gvt
  br i1 %i.gvv, label %bb.aaf, label %_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_13TimestampTypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i.i.i.i.i.i.i.i.i

bb.aaf:                                           ; preds = %.noexc14.i.i.i2015
  %i.gvw = load ptr, ptr %i.glr, align 8, !tbaa !60, !noalias !651 ; 2 uses
  %i.gvx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gvw, ptr noundef nonnull @.str.17, i64 noundef 6)
          to label %.noexc15.i.i.i2016 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i1998, !noalias !629 ; 0 uses

.noexc15.i.i.i2016:                               ; preds = %bb.aaf
  %i.gvy = sub nuw i64 %i.gvo, %i.gvt
  %i.gvz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gvw, i64 noundef %i.gvy)
          to label %.noexc16.i.i.i2017 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i1998, !noalias !629

.noexc16.i.i.i2017:                               ; preds = %.noexc15.i.i.i2016
  %i.gwa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gvz, ptr noundef nonnull @.str.18, i64 noundef 15)
          to label %_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_13TimestampTypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i1998, !noalias !629 ; 0 uses

_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_13TimestampTypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc16.i.i.i2017, %.noexc14.i.i.i2015
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #18, !noalias !651
  br label %_ZN5arrow6StatusD2Ev.exit50.i.i.i.i.i2014

bb.aag:                                           ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit46.i.i.i.i.i2013
  %i.gwb = add i64 %i.gru, 1096193779200000000
  %spec.select.i.i18.i.i.i.i.i.i.i.i = icmp ult i64 %i.gwb, 2068084742400000000
  br i1 %spec.select.i.i18.i.i.i.i.i.i.i.i, label %bb.aah, label %.invoke100.i.i.i, !prof !77

bb.aah:                                           ; preds = %bb.aag
  %i.gwc = sdiv i64 %i.gru, 86400000000           ; 3 uses
  %i.gwd = trunc nsw i64 %i.gwc to i32            ; 2 uses
  %i.gwe = mul nsw i64 %i.gwc, 86400000000        ; 2 uses
  %.not53.i19.i.i.i.i.i.i.i.i = icmp sgt i64 %i.gwe, %i.gru
  br i1 %.not53.i19.i.i.i.i.i.i.i.i, label %bb.aaj, label %bb.aai

bb.aai:                                           ; preds = %bb.aah
  %.neg.i.i.i20.i.i.i.i.i.i.i.i = mul nsw i64 %i.gwc, -86400000000
  %i.gwf = add nsw i64 %.neg.i.i.i20.i.i.i.i.i.i.i.i, %i.gru
  br label %bb.aak

bb.aaj:                                           ; preds = %bb.aah
  %.neg.i65.i.i.i.i.i.i.i.i = add nsw i64 %i.gru, 86400000000
  %i.gwg = sub nsw i64 %.neg.i65.i.i.i.i.i.i.i.i, %i.gwe
  %i.gwh = add nsw i32 %i.gwd, -1
  br label %bb.aak

bb.aak:                                           ; preds = %bb.aaj, %bb.aai
  %.sroa.036.0.i21.i.i.i.i.i.i.i.i = phi i64 [ %i.gwf, %bb.aai ], [ %i.gwg, %bb.aaj ]
  %.sroa.037.0.i22.i.i.i.i.i.i.i.i = phi i32 [ %i.gwd, %bb.aai ], [ %i.gwh, %bb.aaj ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #18, !noalias !651
  %.not.i23.i.i.i.i.i.i.i.i = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %.not.i23.i.i.i.i.i.i.i.i, label %bb.aam, label %bb.aal

bb.aal:                                           ; preds = %bb.aak
  store i8 90, ptr %i.gnv, align 1, !tbaa !45, !noalias !651
  br label %bb.aam

bb.aam:                                           ; preds = %bb.aal, %bb.aak
  %.063.i25.i.i.i.pre-phi.i.i.i.i.i = phi i64 [ %.pre91.i.i.i.i.i, %bb.aal ], [ %i.gnw, %bb.aak ] ; 3 uses
  %.0.i24.i.i.i.i.i.i.i.i = phi ptr [ %i.gnv, %bb.aal ], [ %i.gnu, %bb.aak ] ; 5 uses
  %spec.select.i.i.i.i26.i.i.i.i.i.i.i.i = call i64 @llvm.abs.i64(i64 %.sroa.036.0.i21.i.i.i.i.i.i.i.i, i1 true) ; 3 uses
  %i.gwi = udiv i64 %spec.select.i.i.i.i26.i.i.i.i.i.i.i.i, 3600000000 ; 3 uses
  %i.gwj = udiv i64 %spec.select.i.i.i.i26.i.i.i.i.i.i.i.i, 60000000
  %.neg.i.i.i.i27.i.i.i.i.i.i.i.i = mul nsw i64 %i.gwi, -60
  %i.gwk = add nsw i64 %.neg.i.i.i.i27.i.i.i.i.i.i.i.i, %i.gwj ; 2 uses
  %.neg.i7.i.i.i28.i.i.i.i.i.i.i.i = mul nsw i64 %i.gwi, -3600000000
  %i.gwl = add nsw i64 %.neg.i7.i.i.i28.i.i.i.i.i.i.i.i, %spec.select.i.i.i.i26.i.i.i.i.i.i.i.i
  %.neg.i8.i.i.i29.i.i.i.i.i.i.i.i = mul nsw i64 %i.gwk, -60000000
  %i.gwm = add nsw i64 %i.gwl, %.neg.i8.i.i.i29.i.i.i.i.i.i.i.i ; 2 uses
  %i.gwn = sdiv i64 %i.gwm, 1000000               ; 2 uses
  %.neg.i.i.i.i.i30.i.i.i.i.i.i.i.i = mul nsw i64 %i.gwn, -1000000
  %i.gwo = add nsw i64 %.neg.i.i.i.i.i30.i.i.i.i.i.i.i.i, %i.gwm ; 3 uses
  %i.gwp = icmp sgt i64 %i.gwo, 99
  br i1 %i.gwp, label %.lr.ph.i.i.i.i59.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i31.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i59.i.i.i.i.i.i.i.i:                 ; preds = %bb.aam, %.lr.ph.i.i.i.i59.i.i.i.i.i.i.i.i
  %.1.idx.i60.i.i.i.i.i.i.i.i = phi i64 [ %.1.add.i63.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i59.i.i.i.i.i.i.i.i ], [ 0, %bb.aam ] ; 2 uses
  %.08.i.i.i.i61.i.i.i.i.i.i.i.i = phi i64 [ %i.gwx, %.lr.ph.i.i.i.i59.i.i.i.i.i.i.i.i ], [ %i.gwo, %bb.aam ] ; 3 uses
  %.1.ptr.i62.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.0.i24.i.i.i.i.i.i.i.i, i64 %.1.idx.i60.i.i.i.i.i.i.i.i
  %i.gwq = urem i64 %.08.i.i.i.i61.i.i.i.i.i.i.i.i, 100
  %i.gwr = shl nuw nsw i64 %i.gwq, 1
  %i.gws = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.gwr ; 2 uses
  %i.gwt = getelementptr inbounds nuw i8, ptr %i.gws, i64 1
  %i.gwu = load i8, ptr %i.gwt, align 1, !tbaa !45, !noalias !651
  %i.gwv = getelementptr inbounds i8, ptr %.1.ptr.i62.i.i.i.i.i.i.i.i, i64 -1
  store i8 %i.gwu, ptr %i.gwv, align 1, !tbaa !45, !noalias !651
  %i.gww = load i8, ptr %i.gws, align 1, !tbaa !45, !noalias !651
  %.1.add.i63.i.i.i.i.i.i.i.i = add nsw i64 %.1.idx.i60.i.i.i.i.i.i.i.i, -2 ; 3 uses
  %.ptr55.i64.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.0.i24.i.i.i.i.i.i.i.i, i64 %.1.add.i63.i.i.i.i.i.i.i.i
  store i8 %i.gww, ptr %.ptr55.i64.i.i.i.i.i.i.i.i, align 1, !tbaa !45, !noalias !651
  %i.gwx = udiv i64 %.08.i.i.i.i61.i.i.i.i.i.i.i.i, 100 ; 2 uses
  %i.gwy = icmp samesign ugt i64 %.08.i.i.i.i61.i.i.i.i.i.i.i.i, 9999
  br i1 %i.gwy, label %.lr.ph.i.i.i.i59.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i31.i.i.i.i.i.i.i.i, !llvm.loop !654

._crit_edge.i.i.i.i31.i.i.i.i.i.i.i.i:            ; preds = %.lr.ph.i.i.i.i59.i.i.i.i.i.i.i.i, %bb.aam
  %.2.idx.i32.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.aam ], [ %.1.add.i63.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i59.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i33.i.i.i.i.i.i.i.i = phi i64 [ %i.gwo, %bb.aam ], [ %i.gwx, %.lr.ph.i.i.i.i59.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.gwz = icmp sgt i64 %.0.lcssa.i.i.i.i33.i.i.i.i.i.i.i.i, 9
  br i1 %i.gwz, label %bb.aan, label %bb.aao

bb.aan:                                           ; preds = %._crit_edge.i.i.i.i31.i.i.i.i.i.i.i.i
  %i.gxa = shl nuw nsw i64 %.0.lcssa.i.i.i.i33.i.i.i.i.i.i.i.i, 1
  %i.gxb = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.gxa ; 2 uses
  %i.gxc = getelementptr inbounds nuw i8, ptr %i.gxb, i64 1
  %i.gxd = load i8, ptr %i.gxc, align 1, !tbaa !45, !noalias !651
  %.2.add.i57.i.i.i.i.i.i.i.i = add nsw i64 %.2.idx.i32.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %.ptr54.i58.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.0.i24.i.i.i.i.i.i.i.i, i64 %.2.add.i57.i.i.i.i.i.i.i.i
  store i8 %i.gxd, ptr %.ptr54.i58.i.i.i.i.i.i.i.i, align 1, !tbaa !45, !noalias !651
  %i.gxe = load i8, ptr %i.gxb, align 1, !tbaa !45, !noalias !651
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i34.i.i.i.i.i.i.i.i

bb.aao:                                           ; preds = %._crit_edge.i.i.i.i31.i.i.i.i.i.i.i.i
  %i.gxf = trunc i64 %.0.lcssa.i.i.i.i33.i.i.i.i.i.i.i.i to i8
  %i.gxg = add i8 %i.gxf, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i34.i.i.i.i.i.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i34.i.i.i.i.i.i.i.i: ; preds = %bb.aao, %bb.aan
  %.3.idx.i35.i.i.i.i.i.i.i.i = phi i64 [ %.2.add.i57.i.i.i.i.i.i.i.i, %bb.aan ], [ %.2.idx.i32.i.i.i.i.i.i.i.i, %bb.aao ] ; 3 uses
  %.sink.i.i.i.i36.i.i.i.i.i.i.i.i = phi i8 [ %i.gxe, %bb.aan ], [ %i.gxg, %bb.aao ]
  %i.gxh = getelementptr i8, ptr %.0.i24.i.i.i.i.i.i.i.i, i64 %.3.idx.i35.i.i.i.i.i.i.i.i ; 2 uses
  %.ptr.i37.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.gxh, i64 -1
  store i8 %.sink.i.i.i.i36.i.i.i.i.i.i.i.i, ptr %.ptr.i37.i.i.i.i.i.i.i.i, align 1, !tbaa !45, !noalias !651
  %i.gxi = icmp sgt i64 %.3.idx.i35.i.i.i.i.i.i.i.i, -5
  br i1 %i.gxi, label %.lr.ph.i.i.preheader.i53.i.i.i.i.i.i.i.i, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.preheader.i53.i.i.i.i.i.i.i.i:         ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i34.i.i.i.i.i.i.i.i
  %i.gxj = add i64 %.3.idx.i35.i.i.i.i.i.i.i.i, %.063.i25.i.i.i.pre-phi.i.i.i.i.i ; 2 uses
  %i.gxk = add i64 %i.gxj, -2
  %i.gxl = add i64 %.063.i25.i.i.i.pre-phi.i.i.i.i.i, -6
  %umin.i54.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.gxk, i64 %i.gxl) ; 2 uses
  %i.gxm = sub i64 %umin.i54.i.i.i.i.i.i.i.i, %.063.i25.i.i.i.pre-phi.i.i.i.i.i
  %scevgep.i55.i.i.i.i.i.i.i.i = getelementptr i8, ptr %.0.i24.i.i.i.i.i.i.i.i, i64 %i.gxm ; 2 uses
  %i.gxn = xor i64 %umin.i54.i.i.i.i.i.i.i.i, -1
  %i.gxo = add i64 %i.gxj, %i.gxn
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i55.i.i.i.i.i.i.i.i, i8 48, i64 %i.gxo, i1 false), !tbaa !45, !noalias !651
  %scevgep65.i56.i.i.i.i.i.i.i.i = getelementptr i8, ptr %scevgep.i55.i.i.i.i.i.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.preheader.i53.i.i.i.i.i.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i34.i.i.i.i.i.i.i.i
  %i.gxp = phi ptr [ %i.gxh, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i34.i.i.i.i.i.i.i.i ], [ %scevgep65.i56.i.i.i.i.i.i.i.i, %.lr.ph.i.i.preheader.i53.i.i.i.i.i.i.i.i ] ; 21 uses
  %150 = getelementptr i8, ptr %i.gxp, i64 -2
  store i8 46, ptr %150, align 1, !tbaa !45, !noalias !651
  %i.gxq = shl nsw i64 %i.gwn, 1
  %151 = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.gxq ; 2 uses
  %i.gxr = getelementptr inbounds nuw i8, ptr %151, i64 1
  %152 = load i8, ptr %i.gxr, align 1, !tbaa !45, !noalias !651
  %i.gxs = getelementptr i8, ptr %i.gxp, i64 -3
  store i8 %152, ptr %i.gxs, align 1, !tbaa !45, !noalias !651
  %153 = load i8, ptr %151, align 1, !tbaa !45, !noalias !651
  %154 = getelementptr i8, ptr %i.gxp, i64 -4
  store i8 %153, ptr %154, align 1, !tbaa !45, !noalias !651
  %155 = getelementptr i8, ptr %i.gxp, i64 -5
  store i8 58, ptr %155, align 1, !tbaa !45, !noalias !651
  %i.gxt = shl nsw i64 %i.gwk, 1
  %156 = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.gxt ; 2 uses
  %157 = getelementptr inbounds nuw i8, ptr %156, i64 1
  %158 = load i8, ptr %157, align 1, !tbaa !45, !noalias !651
  %159 = getelementptr i8, ptr %i.gxp, i64 -6
  store i8 %158, ptr %159, align 1, !tbaa !45, !noalias !651
  %160 = load i8, ptr %156, align 1, !tbaa !45, !noalias !651
  %161 = getelementptr i8, ptr %i.gxp, i64 -7
  store i8 %160, ptr %161, align 1, !tbaa !45, !noalias !651
  %i.gxu = getelementptr i8, ptr %i.gxp, i64 -8
  store i8 58, ptr %i.gxu, align 1, !tbaa !45, !noalias !651
  %i.gxv = shl nuw nsw i64 %i.gwi, 1
  %162 = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.gxv ; 2 uses
  %163 = getelementptr inbounds nuw i8, ptr %162, i64 1
  %164 = load i8, ptr %163, align 1, !tbaa !45, !noalias !651
  %165 = getelementptr i8, ptr %i.gxp, i64 -9
  store i8 %164, ptr %165, align 1, !tbaa !45, !noalias !651
  %166 = load i8, ptr %162, align 1, !tbaa !45, !noalias !651
  %167 = getelementptr i8, ptr %i.gxp, i64 -10
  store i8 %166, ptr %167, align 1, !tbaa !45, !noalias !651
  %i.gxw = getelementptr i8, ptr %i.gxp, i64 -11
  store i8 32, ptr %i.gxw, align 1, !tbaa !45, !noalias !651
  %i.gxx = add nsw i32 %.sroa.037.0.i22.i.i.i.i.i.i.i.i, 719468 ; 2 uses
  %i.gxy = icmp sgt i32 %.sroa.037.0.i22.i.i.i.i.i.i.i.i, -719469
  %i.gxz = add nuw nsw i32 %.sroa.037.0.i22.i.i.i.i.i.i.i.i, 573372
  %i.gya = select i1 %i.gxy, i32 %i.gxx, i32 %i.gxz
  %i.gyb = sdiv i32 %i.gya, 146097                ; 2 uses
  %.neg.i.i17.i38.i.i.i.i.i.i.i.i = mul nsw i32 %i.gyb, -146097
  %i.gyc = add nsw i32 %.neg.i.i17.i38.i.i.i.i.i.i.i.i, %i.gxx ; 5 uses
  %i.gyd = udiv i32 %i.gyc, 1460
  %i.gye = udiv i32 %i.gyc, 36524
  %i.gyf = udiv i32 %i.gyc, 146096
  %.neg4003 = add nsw i32 %i.gye, %i.gyc
  %i.gyg = add nuw nsw i32 %i.gyf, %i.gyd
  %i.gyh = sub nsw i32 %.neg4003, %i.gyg          ; 3 uses
  %i.gyi = udiv i32 %i.gyh, 365                   ; 2 uses
  %i.gyj = mul nsw i32 %i.gyb, 400
  %i.gyk = add nsw i32 %i.gyi, %i.gyj
  %i.gyl = udiv i32 %i.gyh, 1460
  %i.gym = udiv i32 %i.gyh, 36500
  %.neg36.i.i.i40.i.i.i.i.i.i.i.i = mul i32 %i.gyi, -365
  %.neg37.i.i.i41.i.i.i.i.i.i.i.i = sub nsw i32 %i.gyc, %i.gyl
  %.neg25.i.i.i42.i.i.i.i.i.i.i.i = add nsw i32 %.neg37.i.i.i41.i.i.i.i.i.i.i.i, %i.gym
  %i.gyn = add i32 %.neg25.i.i.i42.i.i.i.i.i.i.i.i, %.neg36.i.i.i40.i.i.i.i.i.i.i.i ; 2 uses
  %i.gyo = mul i32 %i.gyn, 5
  %i.gyp = add i32 %i.gyo, 2                      ; 2 uses
  %i.gyq = udiv i32 %i.gyp, 153                   ; 2 uses
  %i.gyr = mul nuw i32 %i.gyq, 153
  %i.gys = add nuw i32 %i.gyr, 2
  %i.gyt = udiv i32 %i.gys, 5
  %i.gyu = sub i32 %i.gyn, %i.gyt
  %i.gyv = icmp ult i32 %i.gyp, 1530
  %.v.i.i.i43.i.i.i.i.i.i.i.i = select i1 %i.gyv, i32 3, i32 -9
  %i.gyw = add nsw i32 %.v.i.i.i43.i.i.i.i.i.i.i.i, %i.gyq ; 2 uses
  %i.gyx = icmp ult i32 %i.gyw, 3
  %i.gyy = zext i1 %i.gyx to i32
  %i.gyz = add nsw i32 %i.gyk, %i.gyy
  %i.gza = shl i32 %i.gyu, 24
  %.sroa.3.0.insert.ext.i.i.i44.i.i.i.i.i.i.i.i = add i32 %i.gza, 16777216
  %i.gzb = lshr exact i32 %.sroa.3.0.insert.ext.i.i.i44.i.i.i.i.i.i.i.i, 23
  %i.gzc = zext nneg i32 %i.gzb to i64
  %168 = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.gzc ; 2 uses
  %169 = getelementptr inbounds nuw i8, ptr %168, i64 1
  %170 = load i8, ptr %169, align 1, !tbaa !45, !noalias !651
  %171 = getelementptr i8, ptr %i.gxp, i64 -12
  store i8 %170, ptr %171, align 1, !tbaa !45, !noalias !651
  %172 = load i8, ptr %168, align 1, !tbaa !45, !noalias !651
  %173 = getelementptr i8, ptr %i.gxp, i64 -13
  store i8 %172, ptr %173, align 1, !tbaa !45, !noalias !651
  %i.gzd = getelementptr i8, ptr %i.gxp, i64 -14
  store i8 45, ptr %i.gzd, align 1, !tbaa !45, !noalias !651
  %i.gze = shl nsw i32 %i.gyw, 1
  %i.gzf = and i32 %i.gze, 510
  %i.gzg = zext nneg i32 %i.gzf to i64
  %174 = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.gzg ; 2 uses
  %175 = getelementptr inbounds nuw i8, ptr %174, i64 1
  %176 = load i8, ptr %175, align 1, !tbaa !45, !noalias !651
  %i.gzh = getelementptr i8, ptr %i.gxp, i64 -15
  store i8 %176, ptr %i.gzh, align 1, !tbaa !45, !noalias !651
  %177 = load i8, ptr %174, align 1, !tbaa !45, !noalias !651
  %178 = getelementptr i8, ptr %i.gxp, i64 -16
  store i8 %177, ptr %178, align 1, !tbaa !45, !noalias !651
  %179 = getelementptr i8, ptr %i.gxp, i64 -17
  store i8 45, ptr %179, align 1, !tbaa !45, !noalias !651
  %sext.i.i45.i.i.i.i.i.i.i.i = shl i32 %i.gyz, 16
  %180 = ashr exact i32 %sext.i.i45.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %181 = icmp slt i32 %180, 0
  %182 = call i32 @llvm.abs.i32(i32 %180, i1 true) ; 2 uses
  %.lhs.trunc.i.i46.i.i.i.i.i.i.i.i = trunc nuw i32 %182 to i16 ; 3 uses
  %i.gzi = urem i16 %.lhs.trunc.i.i46.i.i.i.i.i.i.i.i, 100
  %i.gzj = shl nuw nsw i16 %i.gzi, 1
  %i.gzk = zext nneg i16 %i.gzj to i64
  %i.gzl = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.gzk ; 2 uses
  %i.gzm = getelementptr inbounds nuw i8, ptr %i.gzl, i64 1
  %183 = load i8, ptr %i.gzm, align 1, !tbaa !45, !noalias !651
  %184 = getelementptr i8, ptr %i.gxp, i64 -18
  store i8 %183, ptr %184, align 1, !tbaa !45, !noalias !651
  %185 = load i8, ptr %i.gzl, align 1, !tbaa !45, !noalias !651
  %186 = getelementptr i8, ptr %i.gxp, i64 -19
  store i8 %185, ptr %186, align 1, !tbaa !45, !noalias !651
  %187 = udiv i16 %.lhs.trunc.i.i46.i.i.i.i.i.i.i.i, 100
  %188 = urem i16 %187, 100
  %189 = shl nuw nsw i16 %188, 1
  %190 = zext nneg i16 %189 to i64
  %191 = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %190 ; 2 uses
  %192 = getelementptr inbounds nuw i8, ptr %191, i64 1
  %193 = load i8, ptr %192, align 1, !tbaa !45, !noalias !651
  %194 = getelementptr i8, ptr %i.gxp, i64 -20
  store i8 %193, ptr %194, align 1, !tbaa !45, !noalias !651
  %195 = load i8, ptr %191, align 1, !tbaa !45, !noalias !651
  %196 = getelementptr i8, ptr %i.gxp, i64 -21    ; 2 uses
  store i8 %195, ptr %196, align 1, !tbaa !45, !noalias !651
  %i.gzn = icmp samesign ugt i32 %182, 9999
  br i1 %i.gzn, label %bb.aap, label %bb.aaq

bb.aap:                                           ; preds = %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i
  %i.gzo = udiv i16 %.lhs.trunc.i.i46.i.i.i.i.i.i.i.i, 10000
  %i.gzp = trunc nuw nsw i16 %i.gzo to i8
  %i.gzq = or disjoint i8 %i.gzp, 48
  %i.gzr = getelementptr i8, ptr %i.gxp, i64 -22  ; 2 uses
  store i8 %i.gzq, ptr %i.gzr, align 1, !tbaa !45, !noalias !651
  br label %bb.aaq

bb.aaq:                                           ; preds = %bb.aap, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i
  %.4.i47.i.i.i.i.i.i.i.i = phi ptr [ %i.gzr, %bb.aap ], [ %196, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  br i1 %181, label %bb.aar, label %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i48.i.i.i.i.i.i.i.i

bb.aar:                                           ; preds = %bb.aaq
  %i.gzs = getelementptr inbounds i8, ptr %.4.i47.i.i.i.i.i.i.i.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.gzs, align 1, !tbaa !45, !noalias !651
  br label %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i48.i.i.i.i.i.i.i.i

_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i48.i.i.i.i.i.i.i.i: ; preds = %bb.aar, %bb.aaq
  %.5.i49.i.i.i.i.i.i.i.i = phi ptr [ %i.gzs, %bb.aar ], [ %.4.i47.i.i.i.i.i.i.i.i, %bb.aaq ] ; 2 uses
  %i.gzt = ptrtoint ptr %.5.i49.i.i.i.i.i.i.i.i to i64
  %i.gzu = sub i64 %i.gnw, %i.gzt                 ; 3 uses
  %i.gzv = load ptr, ptr %2, align 8, !tbaa !194, !noalias !651, !nonnull !98, !align !192
  %i.gzw = getelementptr inbounds nuw i8, ptr %i.gzv, i64 52
  %i.gzx = load i32, ptr %i.gzw, align 4, !tbaa !47, !noalias !651
  %i.gzy = load ptr, ptr %i.glr, align 8, !tbaa !60, !noalias !651
  %i.gzz = sext i32 %i.gzx to i64                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i51.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.gzu, i64 %i.gzz)
  %i.haa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gzy, ptr noundef nonnull %.5.i49.i.i.i.i.i.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i51.i.i.i.i.i.i.i.i)
          to label %.noexc19.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i1998, !noalias !629 ; 0 uses

.noexc19.i.i.i:                                   ; preds = %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i48.i.i.i.i.i.i.i.i
  %i.hab = icmp ugt i64 %i.gzu, %i.gzz
  br i1 %i.hab, label %bb.aas, label %_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_13TimestampTypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i52.i.i.i.i.i.i.i.i

bb.aas:                                           ; preds = %.noexc19.i.i.i
  %i.hac = load ptr, ptr %i.glr, align 8, !tbaa !60, !noalias !651 ; 2 uses
  %i.had = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hac, ptr noundef nonnull @.str.17, i64 noundef 6)
          to label %.noexc20.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i1998, !noalias !629 ; 0 uses

.noexc20.i.i.i:                                   ; preds = %bb.aas
  %i.hae = sub nuw i64 %i.gzu, %i.gzz
  %i.haf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.hac, i64 noundef %i.hae)
          to label %.noexc21.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i1998, !noalias !629

.noexc21.i.i.i:                                   ; preds = %.noexc20.i.i.i
  %i.hag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.haf, ptr noundef nonnull @.str.18, i64 noundef 15)
          to label %_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_13TimestampTypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i52.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i1998, !noalias !629 ; 0 uses

_ZZN5arrow12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayINS_13TimestampTypeEEENS_8internal15StringFormatterIS4_vEEEENS_6StatusERKT_PT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i52.i.i.i.i.i.i.i.i: ; preds = %.noexc21.i.i.i, %.noexc19.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #18, !noalias !651
  br label %_ZN5arrow6StatusD2Ev.exit50.i.i.i.i.i2014

bb.aat:                                           ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit46.i.i.i.i.i2013
  %i.hah = sdiv i64 %i.gru, 86400000000000        ; 3 uses
  %i.hai = trunc nsw i64 %i.hah to i32            ; 2 uses
  %i.haj = mul nsw i64 %i.hah, 86400000000000     ; 2 uses
  %.not53.i66.i.i.i.i.i.i.i.i = icmp sgt i64 %i.haj, %i.gru
  br i1 %.not53.i66.i.i.i.i.i.i.i.i, label %bb.aav, label %bb.aau

bb.aau:                                           ; preds = %bb.aat
  %.neg.i.i.i67.i.i.i.i.i.i.i.i = mul nsw i64 %i.hah, -86400000000000
  %i.hak = add i64 %.neg.i.i.i67.i.i.i.i.i.i.i.i, %i.gru
  br label %bb.aaw

bb.aav:                                           ; preds = %bb.aat
  %.neg.i111.i.i.i.i.i.i.i.i = add i64 %i.gru, 86400000000000
  %i.hal = sub i64 %.neg.i111.i.i.i.i.i.i.i.i, %i.haj
  %i.ham = add nsw i32 %i.hai, -1
  br label %bb.aaw

bb.aaw:                                           ; preds = %bb.aav, %bb.aau
  %.sroa.036.0.i68.i.i.i.i.i.i.i.i = phi i64 [ %i.hak, %bb.aau ], [ %i.hal, %bb.aav ]
  %.sroa.037.0.i69.i.i.i.i.i.i.i.i = phi i32 [ %i.hai, %bb.aau ], [ %i.ham, %bb.aav ]
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #18, !noalias !651
  %.not.i70.i.i.i.i.i.i.i.i = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %.not.i70.i.i.i.i.i.i.i.i, label %bb.aay, label %bb.aax

bb.aax:                                           ; preds = %bb.aaw
  store i8 90, ptr %i.gob, align 1, !tbaa !45, !noalias !651
  br label %bb.aay

bb.aay:                                           ; preds = %bb.aax, %bb.aaw
  %.063.i72.i.i.i.pre-phi.i.i.i.i.i = phi i64 [ %.pre89.i.i.i.i.i, %bb.aax ], [ %i.goc, %bb.aaw ] ; 3 uses
  %.0.i71.i.i.i.i.i.i.i.i = phi ptr [ %i.gob, %bb.aax ], [ %i.goa, %bb.aaw ] ; 5 uses
  %spec.select.i.i.i.i73.i.i.i.i.i.i.i.i = call i64 @llvm.abs.i64(i64 %.sroa.036.0.i68.i.i.i.i.i.i.i.i, i1 true) ; 3 uses
  %i.han = udiv i64 %spec.select.i.i.i.i73.i.i.i.i.i.i.i.i, 3600000000000 ; 3 uses
  %i.hao = udiv i64 %spec.select.i.i.i.i73.i.i.i.i.i.i.i.i, 60000000000
  %.neg.i.i.i.i74.i.i.i.i.i.i.i.i = mul nsw i64 %i.han, -60
  %i.hap = add nsw i64 %.neg.i.i.i.i74.i.i.i.i.i.i.i.i, %i.hao ; 2 uses
  %.neg.i7.i.i.i75.i.i.i.i.i.i.i.i = mul nsw i64 %i.han, -3600000000000
  %i.haq = add nsw i64 %.neg.i7.i.i.i75.i.i.i.i.i.i.i.i, %spec.select.i.i.i.i73.i.i.i.i.i.i.i.i
  %.neg.i8.i.i.i76.i.i.i.i.i.i.i.i = mul nsw i64 %i.hap, -60000000000
  %i.har = add i64 %i.haq, %.neg.i8.i.i.i76.i.i.i.i.i.i.i.i ; 2 uses
  %i.has = sdiv i64 %i.har, 1000000000            ; 2 uses
  %.neg.i.i.i.i.i77.i.i.i.i.i.i.i.i = mul nsw i64 %i.has, -1000000000
  %i.hat = add i64 %.neg.i.i.i.i.i77.i.i.i.i.i.i.i.i, %i.har ; 3 uses
  %i.hau = icmp sgt i64 %i.hat, 99
  br i1 %i.hau, label %.lr.ph.i.i.i.i105.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i78.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i105.i.i.i.i.i.i.i.i:                ; preds = %bb.aay, %.lr.ph.i.i.i.i105.i.i.i.i.i.i.i.i
  %.1.idx.i106.i.i.i.i.i.i.i.i = phi i64 [ %.1.add.i109.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i105.i.i.i.i.i.i.i.i ], [ 0, %bb.aay ] ; 2 uses
  %.08.i.i.i.i107.i.i.i.i.i.i.i.i = phi i64 [ %i.hbc, %.lr.ph.i.i.i.i105.i.i.i.i.i.i.i.i ], [ %i.hat, %bb.aay ] ; 3 uses
  %.1.ptr.i108.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.0.i71.i.i.i.i.i.i.i.i, i64 %.1.idx.i106.i.i.i.i.i.i.i.i
  %i.hav = urem i64 %.08.i.i.i.i107.i.i.i.i.i.i.i.i, 100
  %i.haw = shl nuw nsw i64 %i.hav, 1
  %i.hax = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.haw ; 2 uses
  %i.hay = getelementptr inbounds nuw i8, ptr %i.hax, i64 1
  %i.haz = load i8, ptr %i.hay, align 1, !tbaa !45, !noalias !651
  %i.hba = getelementptr inbounds i8, ptr %.1.ptr.i108.i.i.i.i.i.i.i.i, i64 -1
  store i8 %i.haz, ptr %i.hba, align 1, !tbaa !45, !noalias !651
  %i.hbb = load i8, ptr %i.hax, align 1, !tbaa !45, !noalias !651
  %.1.add.i109.i.i.i.i.i.i.i.i = add nsw i64 %.1.idx.i106.i.i.i.i.i.i.i.i, -2 ; 3 uses
  %.ptr55.i110.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.0.i71.i.i.i.i.i.i.i.i, i64 %.1.add.i109.i.i.i.i.i.i.i.i
  store i8 %i.hbb, ptr %.ptr55.i110.i.i.i.i.i.i.i.i, align 1, !tbaa !45, !noalias !651
  %i.hbc = udiv i64 %.08.i.i.i.i107.i.i.i.i.i.i.i.i, 100 ; 2 uses
  %i.hbd = icmp samesign ugt i64 %.08.i.i.i.i107.i.i.i.i.i.i.i.i, 9999
  br i1 %i.hbd, label %.lr.ph.i.i.i.i105.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i78.i.i.i.i.i.i.i.i, !llvm.loop !654

._crit_edge.i.i.i.i78.i.i.i.i.i.i.i.i:            ; preds = %.lr.ph.i.i.i.i105.i.i.i.i.i.i.i.i, %bb.aay
  %.2.idx.i79.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.aay ], [ %.1.add.i109.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i105.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i80.i.i.i.i.i.i.i.i = phi i64 [ %i.hat, %bb.aay ], [ %i.hbc, %.lr.ph.i.i.i.i105.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.hbe = icmp sgt i64 %.0.lcssa.i.i.i.i80.i.i.i.i.i.i.i.i, 9
  br i1 %i.hbe, label %bb.aaz, label %bb.aba

bb.aaz:                                           ; preds = %._crit_edge.i.i.i.i78.i.i.i.i.i.i.i.i
  %i.hbf = shl nuw nsw i64 %.0.lcssa.i.i.i.i80.i.i.i.i.i.i.i.i, 1
  %i.hbg = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.hbf ; 2 uses
  %i.hbh = getelementptr inbounds nuw i8, ptr %i.hbg, i64 1
  %i.hbi = load i8, ptr %i.hbh, align 1, !tbaa !45, !noalias !651
  %.2.add.i103.i.i.i.i.i.i.i.i = add nsw i64 %.2.idx.i79.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %.ptr54.i104.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.0.i71.i.i.i.i.i.i.i.i, i64 %.2.add.i103.i.i.i.i.i.i.i.i
  store i8 %i.hbi, ptr %.ptr54.i104.i.i.i.i.i.i.i.i, align 1, !tbaa !45, !noalias !651
  %i.hbj = load i8, ptr %i.hbg, align 1, !tbaa !45, !noalias !651
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i81.i.i.i.i.i.i.i.i

bb.aba:                                           ; preds = %._crit_edge.i.i.i.i78.i.i.i.i.i.i.i.i
  %i.hbk = trunc i64 %.0.lcssa.i.i.i.i80.i.i.i.i.i.i.i.i to i8
  %i.hbl = add i8 %i.hbk, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i81.i.i.i.i.i.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i81.i.i.i.i.i.i.i.i: ; preds = %bb.aba, %bb.aaz
  %.3.idx.i82.i.i.i.i.i.i.i.i = phi i64 [ %.2.add.i103.i.i.i.i.i.i.i.i, %bb.aaz ], [ %.2.idx.i79.i.i.i.i.i.i.i.i, %bb.aba ] ; 3 uses
  %.sink.i.i.i.i83.i.i.i.i.i.i.i.i = phi i8 [ %i.hbj, %bb.aaz ], [ %i.hbl, %bb.aba ]
  %i.hbm = getelementptr i8, ptr %.0.i71.i.i.i.i.i.i.i.i, i64 %.3.idx.i82.i.i.i.i.i.i.i.i ; 2 uses
  %.ptr.i84.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.hbm, i64 -1
  store i8 %.sink.i.i.i.i83.i.i.i.i.i.i.i.i, ptr %.ptr.i84.i.i.i.i.i.i.i.i, align 1, !tbaa !45, !noalias !651
  %i.hbn = icmp sgt i64 %.3.idx.i82.i.i.i.i.i.i.i.i, -8
  br i1 %i.hbn, label %.lr.ph.i.i.preheader.i99.i.i.i.i.i.i.i.i, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.preheader.i99.i.i.i.i.i.i.i.i:         ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i81.i.i.i.i.i.i.i.i
  %i.hbo = add i64 %.3.idx.i82.i.i.i.i.i.i.i.i, %.063.i72.i.i.i.pre-phi.i.i.i.i.i ; 2 uses
  %i.hbp = add i64 %i.hbo, -2
  %i.hbq = add i64 %.063.i72.i.i.i.pre-phi.i.i.i.i.i, -9
  %umin.i100.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.hbp, i64 %i.hbq) ; 2 uses
  %i.hbr = sub i64 %umin.i100.i.i.i.i.i.i.i.i, %.063.i72.i.i.i.pre-phi.i.i.i.i.i
  %scevgep.i101.i.i.i.i.i.i.i.i = getelementptr i8, ptr %.0.i71.i.i.i.i.i.i.i.i, i64 %i.hbr ; 2 uses
  %i.hbs = xor i64 %umin.i100.i.i.i.i.i.i.i.i, -1
  %i.hbt = add i64 %i.hbo, %i.hbs
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i101.i.i.i.i.i.i.i.i, i8 48, i64 %i.hbt, i1 false), !tbaa !45, !noalias !651
  %scevgep65.i102.i.i.i.i.i.i.i.i = getelementptr i8, ptr %scevgep.i101.i.i.i.i.i.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.preheader.i99.i.i.i.i.i.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i81.i.i.i.i.i.i.i.i
  %i.hbu = phi ptr [ %i.hbm, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i81.i.i.i.i.i.i.i.i ], [ %scevgep65.i102.i.i.i.i.i.i.i.i, %.lr.ph.i.i.preheader.i99.i.i.i.i.i.i.i.i ] ; 21 uses
  %197 = getelementptr i8, ptr %i.hbu, i64 -2
  store i8 46, ptr %197, align 1, !tbaa !45, !noalias !651
  %i.hbv = shl nsw i64 %i.has, 1
  %198 = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.hbv ; 2 uses
  %i.hbw = getelementptr inbounds nuw i8, ptr %198, i64 1
  %199 = load i8, ptr %i.hbw, align 1, !tbaa !45, !noalias !651
  %i.hbx = getelementptr i8, ptr %i.hbu, i64 -3
  store i8 %199, ptr %i.hbx, align 1, !tbaa !45, !noalias !651
  %200 = load i8, ptr %198, align 1, !tbaa !45, !noalias !651
  %201 = getelementptr i8, ptr %i.hbu, i64 -4
  store i8 %200, ptr %201, align 1, !tbaa !45, !noalias !651
  %202 = getelementptr i8, ptr %i.hbu, i64 -5
  store i8 58, ptr %202, align 1, !tbaa !45, !noalias !651
  %i.hby = shl nsw i64 %i.hap, 1
  %203 = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.hby ; 2 uses
  %204 = getelementptr inbounds nuw i8, ptr %203, i64 1
  %205 = load i8, ptr %204, align 1, !tbaa !45, !noalias !651
  %206 = getelementptr i8, ptr %i.hbu, i64 -6
  store i8 %205, ptr %206, align 1, !tbaa !45, !noalias !651
  %207 = load i8, ptr %203, align 1, !tbaa !45, !noalias !651
  %208 = getelementptr i8, ptr %i.hbu, i64 -7
  store i8 %207, ptr %208, align 1, !tbaa !45, !noalias !651
  %i.hbz = getelementptr i8, ptr %i.hbu, i64 -8
  store i8 58, ptr %i.hbz, align 1, !tbaa !45, !noalias !651
  %i.hca = shl nuw nsw i64 %i.han, 1
  %209 = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.hca ; 2 uses
  %210 = getelementptr inbounds nuw i8, ptr %209, i64 1
  %211 = load i8, ptr %210, align 1, !tbaa !45, !noalias !651
  %212 = getelementptr i8, ptr %i.hbu, i64 -9
  store i8 %211, ptr %212, align 1, !tbaa !45, !noalias !651
  %213 = load i8, ptr %209, align 1, !tbaa !45, !noalias !651
  %214 = getelementptr i8, ptr %i.hbu, i64 -10
  store i8 %213, ptr %214, align 1, !tbaa !45, !noalias !651
  %i.hcb = getelementptr i8, ptr %i.hbu, i64 -11
  store i8 32, ptr %i.hcb, align 1, !tbaa !45, !noalias !651
  %i.hcc = add nsw i32 %.sroa.037.0.i69.i.i.i.i.i.i.i.i, 719468 ; 2 uses
  %i.hcd = udiv i32 %i.hcc, 146097                ; 2 uses
  %.neg.i.i17.i85.i.i.i.i.i.i.i.i = mul nsw i32 %i.hcd, -146097
  %i.hce = add nsw i32 %.neg.i.i17.i85.i.i.i.i.i.i.i.i, %i.hcc ; 5 uses
  %i.hcf = udiv i32 %i.hce, 1460
  %i.hcg = udiv i32 %i.hce, 36524
  %i.hch = udiv i32 %i.hce, 146096
  %.neg4013 = add nsw i32 %i.hcg, %i.hce
  %i.hci = add nuw nsw i32 %i.hch, %i.hcf
  %i.hcj = sub nsw i32 %.neg4013, %i.hci          ; 3 uses
  %i.hck = udiv i32 %i.hcj, 365                   ; 2 uses
  %i.hcl = mul nuw nsw i32 %i.hcd, 400
  %i.hcm = add nuw nsw i32 %i.hck, %i.hcl
  %i.hcn = udiv i32 %i.hcj, 1460
  %i.hco = udiv i32 %i.hcj, 36500
  %.neg36.i.i.i87.i.i.i.i.i.i.i.i = mul i32 %i.hck, -365
  %.neg37.i.i.i88.i.i.i.i.i.i.i.i = sub nsw i32 %i.hce, %i.hcn
  %.neg25.i.i.i89.i.i.i.i.i.i.i.i = add nsw i32 %.neg37.i.i.i88.i.i.i.i.i.i.i.i, %i.hco
  %i.hcp = add i32 %.neg25.i.i.i89.i.i.i.i.i.i.i.i, %.neg36.i.i.i87.i.i.i.i.i.i.i.i ; 2 uses
  %i.hcq = mul i32 %i.hcp, 5
  %i.hcr = add i32 %i.hcq, 2                      ; 2 uses
  %i.hcs = udiv i32 %i.hcr, 153                   ; 2 uses
  %i.hct = mul nuw i32 %i.hcs, 153
  %i.hcu = add nuw i32 %i.hct, 2
  %i.hcv = udiv i32 %i.hcu, 5
  %i.hcw = sub i32 %i.hcp, %i.hcv
  %i.hcx = icmp ult i32 %i.hcr, 1530
  %.v.i.i.i90.i.i.i.i.i.i.i.i = select i1 %i.hcx, i32 3, i32 -9
  %i.hcy = add nsw i32 %.v.i.i.i90.i.i.i.i.i.i.i.i, %i.hcs ; 2 uses
  %i.hcz = icmp ult i32 %i.hcy, 3
  %i.hda = zext i1 %i.hcz to i32
  %i.hdb = add nuw nsw i32 %i.hcm, %i.hda
  %i.hdc = shl i32 %i.hcw, 24
  %.sroa.3.0.insert.ext.i.i.i91.i.i.i.i.i.i.i.i = add i32 %i.hdc, 16777216
  %i.hdd = lshr exact i32 %.sroa.3.0.insert.ext.i.i.i91.i.i.i.i.i.i.i.i, 23
  %i.hde = zext nneg i32 %i.hdd to i64
  %215 = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.hde ; 2 uses
  %216 = getelementptr inbounds nuw i8, ptr %215, i64 1
  %217 = load i8, ptr %216, align 1, !tbaa !45, !noalias !651
  %218 = getelementptr i8, ptr %i.hbu, i64 -12
  store i8 %217, ptr %218, align 1, !tbaa !45, !noalias !651
  %219 = load i8, ptr %215, align 1, !tbaa !45, !noalias !651
  %220 = getelementptr i8, ptr %i.hbu, i64 -13
  store i8 %219, ptr %220, align 1, !tbaa !45, !noalias !651
  %i.hdf = getelementptr i8, ptr %i.hbu, i64 -14
  store i8 45, ptr %i.hdf, align 1, !tbaa !45, !noalias !651
  %i.hdg = shl nsw i32 %i.hcy, 1
  %i.hdh = and i32 %i.hdg, 510
  %i.hdi = zext nneg i32 %i.hdh to i64
  %221 = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.hdi ; 2 uses
  %222 = getelementptr inbounds nuw i8, ptr %221, i64 1
  %223 = load i8, ptr %222, align 1, !tbaa !45, !noalias !651
  %i.hdj = getelementptr i8, ptr %i.hbu, i64 -15
  store i8 %223, ptr %i.hdj, align 1, !tbaa !45, !noalias !651
  %224 = load i8, ptr %221, align 1, !tbaa !45, !noalias !651
  %225 = getelementptr i8, ptr %i.hbu, i64 -16
  store i8 %224, ptr %225, align 1, !tbaa !45, !noalias !651
  %226 = getelementptr i8, ptr %i.hbu, i64 -17
  store i8 45, ptr %226, align 1, !tbaa !45, !noalias !651
  %sext.i.i92.i.i.i.i.i.i.i.i = shl i32 %i.hdb, 16
  %227 = ashr exact i32 %sext.i.i92.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %228 = icmp slt i32 %227, 0
  %229 = call i32 @llvm.abs.i32(i32 %227, i1 true) ; 2 uses
  %.lhs.trunc.i.i93.i.i.i.i.i.i.i.i = trunc nuw i32 %229 to i16 ; 3 uses
  %i.hdk = urem i16 %.lhs.trunc.i.i93.i.i.i.i.i.i.i.i, 100
  %i.hdl = shl nuw nsw i16 %i.hdk, 1
  %i.hdm = zext nneg i16 %i.hdl to i64
  %i.hdn = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.hdm ; 2 uses
  %i.hdo = getelementptr inbounds nuw i8, ptr %i.hdn, i64 1
  %230 = load i8, ptr %i.hdo, align 1, !tbaa !45, !noalias !651
  %231 = getelementptr i8, ptr %i.hbu, i64 -18
  store i8 %230, ptr %231, align 1, !tbaa !45, !noalias !651
  %232 = load i8, ptr %i.hdn, align 1, !tbaa !45, !noalias !651
  %233 = getelementptr i8, ptr %i.hbu, i64 -19
  store i8 %232, ptr %233, align 1, !tbaa !45, !noalias !651
  %234 = udiv i16 %.lhs.trunc.i.i93.i.i.i.i.i.i.i.i, 100
  %235 = urem i16 %234, 100
  %236 = shl nuw nsw i16 %235, 1
  %237 = zext nneg i16 %236 to i64
  %238 = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %237 ; 2 uses
  %239 = getelementptr inbounds nuw i8, ptr %238, i64 1
  %240 = load i8, ptr %239, align 1, !tbaa !45, !noalias !651
  %241 = getelementptr i8, ptr %i.hbu, i64 -20
  store i8 %240, ptr %241, align 1, !tbaa !45, !noalias !651
  %242 = load i8, ptr %238, align 1, !tbaa !45, !noalias !651
  %243 = getelementptr i8, ptr %i.hbu, i64 -21    ; 2 uses
  store i8 %242, ptr %243, align 1, !tbaa !45, !noalias !651
  %i.hdp = icmp samesign ugt i32 %229, 9999
  br i1 %i.hdp, label %bb.abb, label %bb.abc

bb.abb:                                           ; preds = %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i
  %i.hdq = udiv i16 %.lhs.trunc.i.i93.i.i.i.i.i.i.i.i, 10000
  %i.hdr = trunc nuw nsw i16 %i.hdq to i8
  %i.hds = or disjoint i8 %i.hdr, 48
  %i.hdt = getelementptr i8, ptr %i.hbu, i64 -22  ; 2 uses
  store i8 %i.hds, ptr %i.hdt, align 1, !tbaa !45, !noalias !651
  br label %bb.abc

bb.abc:                                           ; preds = %bb.abb, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i
  %.4.i94.i.i.i.i.i.i.i.i = phi ptr [ %i.hdt, %bb.abb ], [ %243, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  br i1 %228, label %bb.abd, label %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i95.i.i.i.i.i.i.i.i

bb.abd:                                           ; preds = %bb.abc
  %i.hdu = getelementptr inbounds i8, ptr %.4.i94.i.i.i.i.i.i.i.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.hdu, align 1, !tbaa !45, !noalias !651
  br label %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i95.i.i.i.i.i.i.i.i

_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i95.i.i.i.i.i.i.i.i: ; preds = %bb.abd, %bb.abc
  %.5.i96.i.i.i.i.i.i.i.i = phi ptr [ %i.hdu, %bb.abd ], [ %.4.i94.i.i.i.i.i.i.i.i, %bb.abc ] ; 2 uses
  %i.hdv = ptrtoint ptr %.5.i96.i.i.i.i.i.i.i.i to i64
  %i.hdw = sub i64 %i.goc, %i.hdv                 ; 3 uses
  %i.hdx = load ptr, ptr %2, align 8, !tbaa !194, !noalias !651, !nonnull !98, !align !192
  %i.hdy = getelementptr inbounds nuw i8, ptr %i.hdx, i64 52
  %i.hdz = load i32, ptr %i.hdy, align 4, !tbaa !47, !noalias !651
  %i.hea = load ptr, ptr %i.glr, align 8, !tbaa !60, !noalias !651
  %i.heb = sext i32 %i.hdz to i64                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i98.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.hdw, i64 %i.heb)
  %i.hec = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hea, ptr noundef nonnull %.5.i96.i.i.i.i.i.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i98.i.i.i.i.i.i.i.i)
          to label %.noexc23.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i1998, !noalias !629 ; 0 uses

.noexc23.i.i.i:                                   ; preds = %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i95.i.i.i.i.i.i.i.i
  %i.hed = icmp ugt i64 %i.hdw, %i.heb
  br i1 %i.hed, label %bb.abe, label %_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEclINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEERZNS_12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayIS2_EES3_EENS_6StatusERKT_PT0_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalISJ_EEtlSO_EEESG_lOSJ_.exit.i.i.i.i.i.i.i.i

bb.abe:                                           ; preds = %.noexc23.i.i.i
  %i.hee = load ptr, ptr %i.glr, align 8, !tbaa !60, !noalias !651 ; 2 uses
  %i.hef = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hee, ptr noundef nonnull @.str.17, i64 noundef 6)
          to label %.noexc24.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i1998, !noalias !629 ; 0 uses

.noexc24.i.i.i:                                   ; preds = %bb.abe
  %i.heg = sub nuw i64 %i.hdw, %i.heb
  %i.heh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.hee, i64 noundef %i.heg)
          to label %.noexc25.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i1998, !noalias !629

.noexc25.i.i.i:                                   ; preds = %.noexc24.i.i.i
  %i.hei = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.heh, ptr noundef nonnull @.str.18, i64 noundef 15)
          to label %_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEclINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEERZNS_12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayIS2_EES3_EENS_6StatusERKT_PT0_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalISJ_EEtlSO_EEESG_lOSJ_.exit.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i1998, !noalias !629 ; 0 uses

_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEclINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEERZNS_12_GLOBAL__N_112ArrayPrinter20WritePrimitiveValuesINS_12NumericArrayIS2_EES3_EENS_6StatusERKT_PT0_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalISJ_EEtlSO_EEESG_lOSJ_.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc25.i.i.i, %.noexc23.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #18, !noalias !651
  br label %_ZN5arrow6StatusD2Ev.exit50.i.i.i.i.i2014

bb.abf:                                           ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter18IndentAfterNewlineEv.exit46.i.i.i.i.i2013
  %i.hej = add i64 %i.gru, 1096193779200
  %spec.select.i.i112.i.i.i.i.i.i.i.i = icmp ult i64 %i.hej, 2068084742400
  br i1 %spec.select.i.i112.i.i.i.i.i.i.i.i, label %bb.abg, label %.invoke100.i.i.i, !prof !77

bb.abg:                                           ; preds = %bb.abf
  %i.hek = sdiv i64 %i.gru, 86400                 ; 3 uses
  %i.hel = trunc nsw i64 %i.hek to i32            ; 2 uses
  %i.hem = mul nsw i64 %i.hek, 86400              ; 2 uses
  %.not46.i.i.i.i.i.i.i.i.i = icmp sgt i64 %i.hem, %i.gru
  br i1 %.not46.i.i.i.i.i.i.i.i.i, label %bb.abi, label %bb.abh

bb.abh:                                           ; preds = %bb.abg
  %.neg.i.i.i113.i.i.i.i.i.i.i.i = mul nsw i64 %i.hek, -86400
  %i.hen = add nsw i64 %.neg.i.i.i113.i.i.i.i.i.i.i.i, %i.gru
  br label %bb.abj

bb.abi:                                           ; preds = %bb.abg
  %.neg.i131.i.i.i.i.i.i.i.i = add nsw i64 %i.gru, 86400
  %i.heo = sub nsw i64 %.neg.i131.i.i.i.i.i.i.i.i, %i.hem
  %i.hep = add nsw i32 %i.hel, -1
  br label %bb.abj

bb.abj:                                           ; preds = %bb.abi, %bb.abh
  %.sroa.029.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hen, %bb.abh ], [ %i.heo, %bb.abi ]
  %.sroa.030.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.hel, %bb.abh ], [ %i.hep, %bb.abi ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #18, !noalias !651
  %.not.i114.i.i.i.i.i.i.i.i = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %.not.i114.i.i.i.i.i.i.i.i, label %bb.abl, label %bb.abk

bb.abk:                                           ; preds = %bb.abj
  store i8 90, ptr %.sroa.gep52.i.i.i.i.i.i.i.i.i, align 1, !tbaa !45, !noalias !651
  br label %bb.abl

bb.abl:                                           ; preds = %bb.abk, %bb.abj
  %.sroa.phi.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.gep.i.i.i.i.i.i.i.i.i, %bb.abj ], [ %.sroa.gep52.i.i.i.i.i.i.i.i.i, %bb.abk ] ; 5 uses
  %spec.select.i.i.i.i115.i.i.i.i.i.i.i.i = call i64 @llvm.abs.i64(i64 %.sroa.029.0.i.i.i.i.i.i.i.i.i, i1 true) ; 3 uses
  %i.heq = udiv i64 %spec.select.i.i.i.i115.i.i.i.i.i.i.i.i, 3600 ; 3 uses
  %i.her = udiv i64 %spec.select.i.i.i.i115.i.i.i.i.i.i.i.i, 60
  %.neg.i.i.i.i116.i.i.i.i.i.i.i.i = mul nsw i64 %i.heq, -60
  %i.hes = add nsw i64 %.neg.i.i.i.i116.i.i.i.i.i.i.i.i, %i.her ; 2 uses
  %.neg.i7.i.i.i117.i.i.i.i.i.i.i.i = mul nsw i64 %i.heq, -3600
  %i.het = add nsw i64 %.neg.i7.i.i.i117.i.i.i.i.i.i.i.i, %spec.select.i.i.i.i115.i.i.i.i.i.i.i.i
  %.neg.i8.i.i.i118.i.i.i.i.i.i.i.i = mul nsw i64 %i.hes, -60
  %i.heu = add nsw i64 %i.het, %.neg.i8.i.i.i118.i.i.i.i.i.i.i.i
  %i.hev = shl nsw i64 %i.heu, 1
  %i.hew = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.hev ; 2 uses
  %i.hex = getelementptr inbounds nuw i8, ptr %i.hew, i64 1
  %i.hey = load i8, ptr %i.hex, align 1, !tbaa !45, !noalias !651
  %i.hez = getelementptr inbounds i8, ptr %.sroa.phi.i.i.i.i.i.i.i.i.i, i64 -1
  store i8 %i.hey, ptr %i.hez, align 1, !tbaa !45, !noalias !651
  %i.hfa = load i8, ptr %i.hew, align 1, !tbaa !45, !noalias !651
  %i.hfb = getelementptr inbounds i8, ptr %.sroa.phi.i.i.i.i.i.i.i.i.i, i64 -2
  store i8 %i.hfa, ptr %i.hfb, align 1, !tbaa !45, !noalias !651
  %i.hfc = getelementptr inbounds i8, ptr %.sroa.phi.i.i.i.i.i.i.i.i.i, i64 -3
  store i8 58, ptr %i.hfc, align 1, !tbaa !45, !noalias !651
  %i.hfd = shl nsw i64 %i.hes, 1
  %i.hfe = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.hfd
  %i.hff = shl nuw nsw i64 %i.heq, 1
  %i.hfg = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.hff
  %i.hfh = add nsw i32 %.sroa.030.0.i.i.i.i.i.i.i.i.i, 719468 ; 2 uses
  %i.hfi = icmp sgt i32 %.sroa.030.0.i.i.i.i.i.i.i.i.i, -719469
  %i.hfj = add nuw nsw i32 %.sroa.030.0.i.i.i.i.i.i.i.i.i, 573372
  %i.hfk = select i1 %i.hfi, i32 %i.hfh, i32 %i.hfj
  %i.hfl = sdiv i32 %i.hfk, 146097                ; 2 uses
  %.neg.i.i17.i119.i.i.i.i.i.i.i.i = mul nsw i32 %i.hfl, -146097
  %i.hfm = add nsw i32 %.neg.i.i17.i119.i.i.i.i.i.i.i.i, %i.hfh ; 5 uses
  %i.hfn = udiv i32 %i.hfm, 1460
  %i.hfo = udiv i32 %i.hfm, 36524
  %i.hfp = udiv i32 %i.hfm, 146096
  %.neg4018 = add nsw i32 %i.hfo, %i.hfm
  %i.hfq = add nuw nsw i32 %i.hfp, %i.hfn
  %i.hfr = sub nsw i32 %.neg4018, %i.hfq          ; 3 uses
  %i.hfs = udiv i32 %i.hfr, 365                   ; 2 uses
  %i.hft = mul nsw i32 %i.hfl, 400
  %i.hfu = add nsw i32 %i.hfs, %i.hft
  %i.hfv = udiv i32 %i.hfr, 1460
  %i.hfw = udiv i32 %i.hfr, 36500
  %.neg36.i.i.i120.i.i.i.i.i.i.i.i = mul i32 %i.hfs, -365
  %.neg37.i.i.i121.i.i.i.i.i.i.i.i = sub nsw i32 %i.hfm, %i.hfv
  %.neg25.i.i.i122.i.i.i.i.i.i.i.i = add nsw i32 %.neg37.i.i.i121.i.i.i.i.i.i.i.i, %i.hfw
  %i.hfx = add i32 %.neg25.i.i.i122.i.i.i.i.i.i.i.i, %.neg36.i.i.i120.i.i.i.i.i.i.i.i ; 2 uses
  %i.hfy = mul i32 %i.hfx, 5
  %i.hfz = add i32 %i.hfy, 2                      ; 2 uses
  %i.hga = udiv i32 %i.hfz, 153                   ; 2 uses
  %i.hgb = mul nuw i32 %i.hga, 153
  %i.hgc = add nuw i32 %i.hgb, 2
  %i.hgd = udiv i32 %i.hgc, 5
  %i.hge = sub i32 %i.hfx, %i.hgd
  %i.hgf = icmp ult i32 %i.hfz, 1530
  %.v.i.i.i123.i.i.i.i.i.i.i.i = select i1 %i.hgf, i32 3, i32 -9
  %i.hgg = add nsw i32 %.v.i.i.i123.i.i.i.i.i.i.i.i, %i.hga ; 2 uses
  %i.hgh = icmp ult i32 %i.hgg, 3
  %i.hgi = zext i1 %i.hgh to i32
  %i.hgj = add nsw i32 %i.hfu, %i.hgi
  %i.hgk = shl i32 %i.hge, 24
  %.sroa.3.0.insert.ext.i.i.i124.i.i.i.i.i.i.i.i = add i32 %i.hgk, 16777216
  %i.hgl = lshr exact i32 %.sroa.3.0.insert.ext.i.i.i124.i.i.i.i.i.i.i.i, 23
  %i.hgm = zext nneg i32 %i.hgl to i64
  %i.hgn = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.hgm
  %i.hgo = shl nsw i32 %i.hgg, 1
  %i.hgp = and i32 %i.hgo, 510
  %i.hgq = zext nneg i32 %i.hgp to i64
  %i.hgr = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.hgq
  %sext.i.i125.i.i.i.i.i.i.i.i = shl i32 %i.hgj, 16
  %i.hgs = ashr exact i32 %sext.i.i125.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.hgt = icmp slt i32 %i.hgs, 0
  %i.hgu = call i32 @llvm.abs.i32(i32 %i.hgs, i1 true) ; 2 uses
  %.lhs.trunc.i.i126.i.i.i.i.i.i.i.i = trunc nuw i32 %i.hgu to i16 ; 3 uses
  %i.hgv = urem i16 %.lhs.trunc.i.i126.i.i.i.i.i.i.i.i, 100
  %i.hgw = shl nuw nsw i16 %i.hgv, 1
  %i.hgx = zext nneg i16 %i.hgw to i64
  %i.hgy = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.hgx
  %i.hgz = udiv i16 %.lhs.trunc.i.i126.i.i.i.i.i.i.i.i, 100
  %i.hha = urem i16 %i.hgz, 100
  %i.hhb = shl nuw nsw i16 %i.hha, 1
  %i.hhc = zext nneg i16 %i.hhb to i64
  %i.hhd = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.hhc
  %i.hhe = getelementptr inbounds i8, ptr %.sroa.phi.i.i.i.i.i.i.i.i.i, i64 -19 ; 2 uses
  %i.hhf = load <2 x i8>, ptr %i.hfe, align 1, !tbaa !45, !noalias !651
  %i.hhg = load <2 x i8>, ptr %i.hfg, align 1, !tbaa !45, !noalias !651
  %i.hhh = load <2 x i8>, ptr %i.hgn, align 1, !tbaa !45, !noalias !651
  %i.hhi = load <2 x i8>, ptr %i.hgr, align 1, !tbaa !45, !noalias !651
  %i.hhj = load <2 x i8>, ptr %i.hgy, align 1, !tbaa !45, !noalias !651
  %i.hhk = load <2 x i8>, ptr %i.hhd, align 1, !tbaa !45, !noalias !651
  %i.hhl = shufflevector <2 x i8> %i.hhk, <2 x i8> %i.hhj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hhm = shufflevector <16 x i8> %i.hhl, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 45, i8 poison, i8 poison, i8 45, i8 poison, i8 poison, i8 32, i8 poison, i8 poison, i8 58, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 poison, i32 poison, i32 23, i32 poison, i32 poison, i32 26, i32 poison, i32 poison, i32 29, i32 poison, i32 poison>
  %i.hhn = shufflevector <2 x i8> %i.hhi, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hho = shufflevector <16 x i8> %i.hhm, <16 x i8> %i.hhn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 16, i32 17, i32 7, i32 poison, i32 poison, i32 10, i32 poison, i32 poison, i32 13, i32 poison, i32 poison>
  %i.hhp = shufflevector <2 x i8> %i.hhh, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hhq = shufflevector <16 x i8> %i.hho, <16 x i8> %i.hhp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 10, i32 poison, i32 poison, i32 13, i32 poison, i32 poison>
  %i.hhr = shufflevector <2 x i8> %i.hhg, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hhs = shufflevector <16 x i8> %i.hhq, <16 x i8> %i.hhr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 16, i32 17, i32 13, i32 poison, i32 poison>
  %i.hht = shufflevector <2 x i8> %i.hhf, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hhu = shufflevector <16 x i8> %i.hhs, <16 x i8> %i.hht, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  store <16 x i8> %i.hhu, ptr %i.hhe, align 1, !tbaa !45, !noalias !651
  %i.hhv = icmp samesign ugt i32 %i.hgu, 9999
  br i1 %i.hhv, label %bb.abm, label %bb.abn

bb.abm:                                           ; preds = %bb.abl
  %i.hhw = udiv i16 %.lhs.trunc.i.i126.i.i.i.i.i.i.i.i, 10000
  %i.hhx = trunc nuw nsw i16 %i.hhw to i8
  %i.hhy = or disjoint i8 %i.hhx, 48
  %i.hhz = getelementptr inbounds i8, ptr %.sroa.phi.i.i.i.i.i.i.i.i.i, i64 -20 ; 2 uses
  store i8 %i.hhy, ptr %i.hhz, align 1, !tbaa !45, !noalias !651
  br label %bb.abn

bb.abn:                                           ; preds = %bb.abm, %bb.abl
  %.1.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hhz, %bb.abm ], [ %i.hhe, %bb.abl ] ; 2 uses
  br i1 %i.hgt, label %bb.abo, label %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i127.i.i.i.i.i.i.i.i

bb.abo:                                           ; preds = %bb.abn
  %i.hia = getelementptr inbounds i8, ptr %.1.i.i.i.i.i.i.i.i.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.hia, align 1, !tbaa !45, !noalias !651
  br label %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i127.i.i.i.i.i.i.i.i

_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i127.i.i.i.i.i.i.i.i: ; preds = %bb.abo, %bb.abn
  %.2.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hia, %bb.abo ], [ %.1.i.i.i.i.i.i.i.i.i, %bb.abn ] ; 2 uses
  %i.hib = ptrtoint ptr %.2.i.i.i.i.i.i.i.i.i to i64
end_hunk_0
