inline.NumInlined: 4310
inline.NumDeleted: 1255
begin_hunk_0_@_ZN11OpenImageIO4v3_112ImageBufAlgo5scaleERNS0_8ImageBufERKS2_S5_NS0_14ParamValueSpanENS0_3ROIEi:bb.a
  br label %bb.ci

bb.ci:                                            ; preds = %_ZN11OpenImageIO4v3_1L10scale_implItttEEbRNS0_8ImageBufERKS2_S5_NS0_3ROIEi.exit, %_ZN11OpenImageIO4v3_1L10scale_implIfttEEbRNS0_8ImageBufERKS2_S5_NS0_3ROIEi.exit, %_ZN11OpenImageIO4v3_1L10scale_implIN9Imath_3_14halfES3_S3_EEbRNS0_8ImageBufERKS4_S7_NS0_3ROIEi.exit, %_ZN11OpenImageIO4v3_1L10scale_implIfN9Imath_3_14halfES3_EEbRNS0_8ImageBufERKS4_S7_NS0_3ROIEi.exit, %_ZN11OpenImageIO4v3_1L10scale_implIhhhEEbRNS0_8ImageBufERKS2_S5_NS0_3ROIEi.exit, %_ZN11OpenImageIO4v3_1L10scale_implIfhhEEbRNS0_8ImageBufERKS2_S5_NS0_3ROIEi.exit, %_ZN11OpenImageIO4v3_1L10scale_implIfffEEbRNS0_8ImageBufERKS2_S5_NS0_3ROIEi.exit, %bb.cg, %bb.bq, %bb.ba, %bb.ak, %bb.ch
  %.0 = phi i8 [ 0, %bb.ch ], [ 1, %_ZN11OpenImageIO4v3_1L10scale_implIfttEEbRNS0_8ImageBufERKS2_S5_NS0_3ROIEi.exit ], [ 0, %bb.ak ], [ 0, %bb.ba ], [ 1, %_ZN11OpenImageIO4v3_1L10scale_implIfffEEbRNS0_8ImageBufERKS2_S5_NS0_3ROIEi.exit ], [ 1, %_ZN11OpenImageIO4v3_1L10scale_implIfhhEEbRNS0_8ImageBufERKS2_S5_NS0_3ROIEi.exit ], [ 0, %bb.bq ], [ 1, %_ZN11OpenImageIO4v3_1L10scale_implIhhhEEbRNS0_8ImageBufERKS2_S5_NS0_3ROIEi.exit ], [ 1, %_ZN11OpenImageIO4v3_1L10scale_implIfN9Imath_3_14halfES3_EEbRNS0_8ImageBufERKS4_S7_NS0_3ROIEi.exit ], [ 0, %bb.cg ], [ 1, %_ZN11OpenImageIO4v3_1L10scale_implIN9Imath_3_14halfES3_S3_EEbRNS0_8ImageBufERKS4_S7_NS0_3ROIEi.exit ], [ 1, %_ZN11OpenImageIO4v3_1L10scale_implItttEEbRNS0_8ImageBufERKS2_S5_NS0_3ROIEi.exit ] ; 2 uses
  %.not152 = icmp eq ptr %.0136, %0
  br i1 %.not152, label %bb.cr, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %33 = trunc nuw i8 %.0 to i1
  br i1 %33, label %bb.ck, label %bb.cm

bb.ck:                                            ; preds = %bb.cj
  %i.gu = invoke i64 @_ZNK11OpenImageIO4v3_18ImageBuf9pixeltypeEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_112ImageBufAlgo5scaleERNS0_8ImageBufERKS2_S5_NS0_14ParamValueSpanENS0_3ROIEi:bb.a
  br label %bb.es

bb.es:                                            ; preds = %bb.ep, %bb.eo, %bb.el, %bb.ek, %bb.eh, %bb.eg, %_ZN11OpenImageIO4v3_1L10scale_implIfffEEbRNS0_8ImageBufERKS2_S5_NS0_3ROIEi.exit250, %bb.eq, %bb.em, %bb.ei, %bb.ee, %bb.er
  %.1 = phi i8 [ 0, %bb.er ], [ 1, %bb.eo ], [ 0, %bb.ee ], [ 0, %bb.ei ], [ 1, %_ZN11OpenImageIO4v3_1L10scale_implIfffEEbRNS0_8ImageBufERKS2_S5_NS0_3ROIEi.exit250 ], [ 1, %bb.eg ], [ 0, %bb.em ], [ 1, %bb.eh ], [ 1, %bb.ek ], [ 0, %bb.eq ], [ 1, %bb.el ], [ 1, %bb.ep ] ; 2 uses
  %.not = icmp eq ptr %.0139, %0
  br i1 %.not, label %bb.fb, label %bb.et

bb.et:                                            ; preds = %bb.es
  %34 = trunc nuw i8 %.1 to i1
  br i1 %34, label %bb.eu, label %bb.ew

bb.eu:                                            ; preds = %bb.et
  %i.kw = invoke i64 @_ZNK11OpenImageIO4v3_18ImageBuf9pixeltypeEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_112ImageBufAlgo5scaleERNS0_8ImageBufERKS2_S5_NS0_14ParamValueSpanENS0_3ROIEi:bb.a
          to label %bb.fg unwind label %bb.p

bb.fg:                                            ; preds = %bb.fb, %bb.cy, %bb.ff, %bb.d, %bb.cr
  %.2 = phi i8 [ %.0, %bb.cr ], [ 0, %bb.d ], [ %.1, %bb.fb ], [ 0, %bb.cy ], [ 0, %bb.ff ]
  %35 = trunc nuw i8 %.2 to i1
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %23) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #29
  ret i1 %35

bb.fh:                                            ; preds = %bb.fe, %bb.cu, %bb.p
  %.pn155.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn155.pn.pn.pn.pn.pn, %bb.cu ], [ %i.z, %bb.p ], [ %.pn145.pn.pn.pn.pn.pn, %bb.fe ]
end_hunk_2
begin_hunk_3_@_ZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE:bb.a
bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0208 = phi i64 [ %i.et, %bb.z ], [ %i.en, %bb.y ] ; 2 uses
  %.0204.in = phi i64 [ %i.eu, %bb.z ], [ %i.eo, %bb.y ]
  %.0.i.a = phi i32 [ 2, %bb.z ], [ 1, %bb.y ]    ; 2 uses
  %i.ey = icmp samesign ugt i32 %.0187, %.0.i.a
  br i1 %i.ey, label %.lr.ph.i, label %.thread268

.lr.ph.i:                                         ; preds = %bb.aa
  %6 = zext nneg i32 %.0.i.a to i64               ; 4 uses
  %i.ez = zext nneg i32 %i.ei to i64              ; 3 uses
  %i.fa = and i64 %.0208, 4294967295
  %i.fb = mul nuw nsw i64 %i.fa, 100              ; 3 uses
  %i.fc = lshr i64 %i.fb, 32                      ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ej, i64 %6
  %i.fe = shl nuw nsw i64 %i.fc, 1
  %i.ff = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.fe
  %i.fg = load i16, ptr %i.ff, align 2
  store i16 %i.fg, ptr %i.fd, align 1
  %indvars.iv.next.i = add nuw nsw i64 %6, 2      ; 2 uses
  %i.fh = icmp samesign ult i64 %indvars.iv.next.i, %i.ez
  br i1 %i.fh, label %bb.ab, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

end_hunk_3
begin_hunk_4_@_ZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE:bb.a
  %i.fn = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.fm
  %i.fo = load i16, ptr %i.fn, align 2
  store i16 %i.fo, ptr %i.fl, align 1
  %indvars.iv.next.i.1 = or disjoint i64 %6, 4    ; 2 uses
  %i.fp = icmp samesign ult i64 %indvars.iv.next.i.1, %i.ez
  br i1 %i.fp, label %bb.ac, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

end_hunk_4
begin_hunk_5_@_ZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE:bb.a
  %i.fv = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.fu
  %i.fw = load i16, ptr %i.fv, align 2
  store i16 %i.fw, ptr %i.ft, align 1
  %indvars.iv.next.i.2 = add nuw nsw i64 %6, 6    ; 2 uses
  %i.fx = icmp samesign ult i64 %indvars.iv.next.i.2, %i.ez
  br i1 %i.fx, label %bb.ad, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

end_hunk_5
begin_hunk_6_@_ZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE:bb.a
bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.3211 = phi i64 [ %i.hj, %bb.aj ], [ %i.hd, %bb.ai ] ; 2 uses
  %.2206.in = phi i64 [ %i.hk, %bb.aj ], [ %i.he, %bb.ai ]
  %.0.i143.a = phi i32 [ 2, %bb.aj ], [ 1, %bb.ai ] ; 2 uses
  %i.ho = icmp samesign ult i32 %.0.i143.a, %i.gv
  br i1 %i.ho, label %.lr.ph.i144.a, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread

.lr.ph.i144.a:                                    ; preds = %bb.ak
  %7 = zext nneg i32 %.0.i143.a to i64
  %i.hp = zext nneg i32 %i.gv to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph.i144.a
  %.4 = phi i64 [ %.3211, %.lr.ph.i144.a ], [ %i.hr, %bb.al ]
  %indvars.iv.i145 = phi i64 [ %7, %.lr.ph.i144.a ], [ %indvars.iv.next.i146, %bb.al ] ; 2 uses
  %i.hq = and i64 %.4, 4294967295
  %i.hr = mul nuw nsw i64 %i.hq, 100              ; 3 uses
  %i.hs = lshr i64 %i.hr, 32                      ; 3 uses
end_hunk_6
