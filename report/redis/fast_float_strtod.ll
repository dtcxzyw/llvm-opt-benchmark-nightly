inline.NumInlined: 299
inline.NumDeleted: 99
begin_hunk_0_@_ZN10fast_float19from_chars_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE:bb.a
bb.h:                                             ; preds = %.lr.ph
  %i.s = mul i64 %.07897, 10
  %i.t = zext nneg i8 %i.p to i64
  %i.u = add i64 %i.s, -48
  %i.v = add i64 %i.u, %i.t                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.198, i64 1 ; 2 uses
  %.not112.i = icmp eq ptr %i.w, %1
  br i1 %.not112.i, label %.critedge.i, label %.lr.ph, !llvm.loop !17
end_hunk_0
begin_hunk_1_@_ZN10fast_float19from_chars_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE:bb.a
  %i.cz = mul nuw i64 %.381138, 10
  %i.da = load i8, ptr %.7139, align 1, !tbaa !13
  %i.db = sext i8 %i.da to i64
  %i.dc = add i64 %i.cz, -48
  %i.dd = add i64 %i.dc, %i.db                    ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.7139, i64 1 ; 3 uses
  %i.df = icmp ult i64 %i.dd, 1000000000000000000
  %i.dg = icmp ne ptr %i.de, %.1.lcssa.ph
end_hunk_1
begin_hunk_2_@_ZN10fast_float19from_chars_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE:bb.a
  %i.dk = mul nuw i64 %.482143, 10
  %i.dl = load i8, ptr %.8144, align 1, !tbaa !13
  %i.dm = sext i8 %i.dl to i64
  %i.dn = add i64 %i.dk, -48
  %i.do = add i64 %i.dn, %i.dm                    ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.8144, i64 1 ; 3 uses
  %i.dq = icmp ult i64 %i.do, 1000000000000000000
  %i.dr = icmp ne ptr %i.dp, %i.dj
end_hunk_2
begin_hunk_3_@_ZN10fast_float19from_chars_advancedIdcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_:bb.a
  %i.ca = lshr i64 %spec.select.i100.pn, %i.bz    ; 6 uses
  %i.cb = mul nsw i32 %i.ba, 217706
  %i.cc = ashr i32 %i.cb, 16
  %3 = add nsw i32 %i.cc, 1086
  %i.cd = sub nsw i32 %3, %i.ay
  %i.ce = add nsw i32 %i.cd, %i.by                ; 3 uses
  %i.cf = icmp slt i32 %i.ce, 1
  br i1 %i.cf, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit103
  %4 = sub nsw i32 1, %i.ce                       ; 2 uses
  %5 = icmp samesign ugt i32 %4, 63
  br i1 %5, label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit92, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cg = zext nneg i32 %4 to i64
  %i.ch = lshr i64 %i.ca, %i.cg                   ; 2 uses
  %i.ci = and i64 %i.ch, 1
end_hunk_3
begin_hunk_4_@_ZN10fast_float19from_chars_advancedIdcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_:bb.a
  %i.cv = and i64 %.sroa.0139.0, 1
  %i.cw = add nuw nsw i64 %i.cv, %.sroa.0139.0    ; 2 uses
  %i.cx = lshr i64 %i.cw, 1
  %.not22.i81 = icmp samesign ugt i64 %i.cw, 18014398509481983 ; 2 uses
  %6 = zext i1 %.not22.i81 to i32
  %spec.select167 = add nuw nsw i32 %i.ce, %6     ; 2 uses
  %i.cy = and i64 %i.cx, 9218868437227405311
  %.not23.i82 = icmp samesign ugt i32 %spec.select167, 2046 ; 2 uses
  %.not182 = select i1 %.not23.i82, i1 true, i1 %.not22.i81
  %spec.select175 = select i1 %.not182, i64 0, i64 %i.cy
  %spec.select176 = select i1 %.not23.i82, i32 2047, i32 %spec.select167
  br label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit92

_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit92: ; preds = %bb.v, %bb.r, %bb.q, %bb.p, %bb.s
end_hunk_4
begin_hunk_5_@_ZN10fast_float19from_chars_advancedIdcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_:bb.a
  %i.ei = lshr i64 %spec.select.i105.pn, %i.eh    ; 6 uses
  %i.ej = mul nsw i32 %i.di, 217706
  %i.ek = ashr i32 %i.ej, 16
  %7 = add nsw i32 %i.ek, 1086
  %i.el = sub nsw i32 %7, %i.dg
  %i.em = add nsw i32 %i.el, %i.eg                ; 3 uses
  %i.en = icmp slt i32 %i.em, 1
  br i1 %i.en, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %_ZN10fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit108
  %8 = sub nsw i32 1, %i.em                       ; 2 uses
  %9 = icmp samesign ugt i32 %8, 63
  br i1 %9, label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eo = zext nneg i32 %8 to i64
  %i.ep = lshr i64 %i.ei, %i.eo                   ; 2 uses
  %i.eq = and i64 %i.ep, 1
  %i.er = add nuw nsw i64 %i.eq, %i.ep            ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN10fast_float19from_chars_advancedIdcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_:bb.a
  %i.fd = and i64 %.sroa.0132.0, 1
  %i.fe = add nuw nsw i64 %i.fd, %.sroa.0132.0    ; 2 uses
  %i.ff = lshr i64 %i.fe, 1
  %.not22.i = icmp samesign ugt i64 %i.fe, 18014398509481983 ; 2 uses
  %10 = zext i1 %.not22.i to i32
  %spec.select173 = add nuw nsw i32 %i.em, %10    ; 2 uses
  %i.fg = and i64 %i.ff, 9218868437227405311
  %.not23.i = icmp samesign ugt i32 %spec.select173, 2046 ; 2 uses
  %.not185 = select i1 %.not23.i, i1 true, i1 %.not22.i
  %spec.select177 = select i1 %.not185, i64 0, i64 %i.fg
  %spec.select178 = select i1 %.not23.i, i32 2047, i32 %spec.select173
  br label %_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit

_ZN10fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit: ; preds = %bb.ac, %bb.y, %bb.x, %bb.w, %bb.z
end_hunk_6
begin_hunk_7_@_ZN10fast_float19from_chars_advancedIdcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %2, i8 0, i64 504, i1 false)
  call void @_ZN10fast_float14parse_mantissaIcEEvRNS_6bigintERNS_22parsed_number_string_tIT_EEmRm(ptr noundef nonnull align 8 dereferenceable(504) %2, ptr noundef nonnull align 8 dereferenceable(68) %0, i64 noundef 769, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #11
  %11 = add nsw i32 %.2.i.lcssa.i, 1
  %i.hg = load i64, ptr %i.a, align 8, !tbaa !25
  %i.hh = trunc i64 %i.hg to i32
  %i.hi = sub i32 %11, %i.hh                      ; 3 uses
  %i.hj = icmp sgt i32 %i.hi, -1
  br i1 %i.hj, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZN10fast_float19scientific_exponentIcEEiRNS_22parsed_number_string_tIT_EE.exit.i
  %i.hk = call { i64, i32 } @_ZN10fast_float19positive_digit_compIdEENS_17adjusted_mantissaERNS_6bigintEi(ptr noundef nonnull align 8 dereferenceable(504) %2, i32 noundef %i.hi) #11
  br label %_ZN10fast_float10digit_compIdcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit

bb.ai:                                            ; preds = %_ZN10fast_float19scientific_exponentIcEEiRNS_22parsed_number_string_tIT_EE.exit.i
  %i.hl = add nsw i32 %i.gr, 1075
  %i.hm = call { i64, i32 } @_ZN10fast_float19negative_digit_compIdEENS_17adjusted_mantissaERNS_6bigintES1_i(ptr noundef nonnull align 8 dereferenceable(504) %2, i64 %i.go, i32 %i.hl, i32 noundef %i.hi) #11
  br label %_ZN10fast_float10digit_compIdcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit

_ZN10fast_float10digit_compIdcEENS_17adjusted_mantissaERNS_22parsed_number_string_tIT0_EES1_.exit: ; preds = %bb.ah, %bb.ai
end_hunk_7
begin_hunk_8_@_ZN10fast_float14parse_mantissaIcEEvRNS_6bigintERNS_22parsed_number_string_tIT_EEmRm:bb.a
  %i.bf = mul i64 %.2261349, 10
  %i.bg = load i8, ptr %.2350, align 1, !tbaa !13
  %i.bh = sext i8 %i.bg to i64
  %i.bi = add i64 %i.bf, -48
  %i.bj = add i64 %i.bi, %i.bh                    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.2350, i64 1 ; 3 uses
  %i.bl = add nuw nsw i64 %.2268348, 1            ; 2 uses
  %i.bm = add nuw i64 %i.be, 1                    ; 4 uses
end_hunk_8
begin_hunk_9_@_ZN10fast_float14parse_mantissaIcEEvRNS_6bigintERNS_22parsed_number_string_tIT_EEmRm:bb.a
  %i.kr = mul i64 %.5264407, 10
  %i.ks = load i8, ptr %.6408, align 1, !tbaa !13
  %i.kt = sext i8 %i.ks to i64
  %i.ku = add i64 %i.kr, -48
  %i.kv = add i64 %i.ku, %i.kt                    ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.6408, i64 1 ; 3 uses
  %i.kx = add nuw nsw i64 %.5271406, 1            ; 2 uses
  %i.ky = add nuw i64 %i.kq, 1                    ; 4 uses
end_hunk_9
