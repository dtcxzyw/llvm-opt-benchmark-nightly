inline.NumInlined: 193
inline.NumDeleted: 142
begin_hunk_0_@_ZNK6icu_786number4impl24NumberRangeFormatterImpl11formatRangeERNS1_25UFormattedNumberRangeDataERNS1_10MicroPropsES6_R10UErrorCode:bb.a
  br label %bb.w

bb.w:                                             ; preds = %bb.q, %bb.u, %bb.v, %bb.r
  %.1149 = phi i32 [ %.0148, %bb.u ], [ %i.da, %bb.v ], [ %i.at, %bb.r ], [ %i.at, %bb.q ] ; 7 uses
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.dd = load i32, ptr %i.a, align 4
end_hunk_0
begin_hunk_1_@_ZNK6icu_786number4impl24NumberRangeFormatterImpl11formatRangeERNS1_25UFormattedNumberRangeDataERNS1_10MicroPropsES6_R10UErrorCode:bb.a
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZNK6icu_786number4impl24NumberRangeFormatterImpl22resolveModifierPluralsERKNS1_8ModifierES5_.exit
  %.0150 = phi i32 [ %i.dl, %_ZNK6icu_786number4impl24NumberRangeFormatterImpl22resolveModifierPluralsERKNS1_8ModifierES5_.exit ], [ %i.gc, %bb.aa ] ; 4 uses
  %.0146 = phi i32 [ %i.de, %_ZNK6icu_786number4impl24NumberRangeFormatterImpl22resolveModifierPluralsERKNS1_8ModifierES5_.exit ], [ %i.fp, %bb.aa ] ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.ge = load ptr, ptr %i.gd, align 8            ; 6 uses
  br i1 %.1, label %bb.ac, label %bb.af
end_hunk_1
begin_hunk_2_@_ZNK6icu_786number4impl24NumberRangeFormatterImpl11formatRangeERNS1_25UFormattedNumberRangeDataERNS1_10MicroPropsES6_R10UErrorCode:bb.a

bb.af:                                            ; preds = %bb.ab
  %i.ib = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ic = add nsw i32 %i.ib, %.0146
  %i.id = load ptr, ptr %i.ge, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %i.if = load ptr, ptr %i.ie, align 8
  %i.ig = call noundef i32 %i.if(ptr noundef nonnull align 8 dereferenceable(8) %i.ge, ptr noundef nonnull align 8 dereferenceable(136) %i.al, i32 noundef %i.ib, i32 noundef %i.ic, ptr noundef nonnull align 4 dereferenceable(4) %4) #11
  %i.ih = add nsw i32 %i.ig, %.0146               ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.ij = load ptr, ptr %i.ii, align 8            ; 2 uses
  %i.ik = load i32, ptr %i.a, align 4
  %i.il = add i32 %i.ih, %.1149
  %i.im = add i32 %i.il, %i.ik                    ; 2 uses
  %i.in = load i32, ptr %i.b, align 4
  %i.io = add i32 %i.in, %.0150
  %i.ip = add i32 %i.io, %i.im
  %i.iq = load ptr, ptr %i.ij, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %i.is = load ptr, ptr %i.ir, align 8
  %i.it = call noundef i32 %i.is(ptr noundef nonnull align 8 dereferenceable(8) %i.ij, ptr noundef nonnull align 8 dereferenceable(136) %i.al, i32 noundef %i.im, i32 noundef %i.ip, ptr noundef nonnull align 4 dereferenceable(4) %4) #11
  %i.iu = add nsw i32 %i.it, %.0150
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZNK6icu_786number4impl24NumberRangeFormatterImpl22resolveModifierPluralsERKNS1_8ModifierES5_.exit161
  %.1151 = phi i32 [ %.0150, %_ZNK6icu_786number4impl24NumberRangeFormatterImpl22resolveModifierPluralsERKNS1_8ModifierES5_.exit161 ], [ %i.iu, %bb.af ] ; 4 uses
  %.1147 = phi i32 [ %.0146, %_ZNK6icu_786number4impl24NumberRangeFormatterImpl22resolveModifierPluralsERKNS1_8ModifierES5_.exit161 ], [ %i.ih, %bb.af ] ; 5 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.iw = load ptr, ptr %i.iv, align 8            ; 6 uses
  br i1 %.0.shrunk, label %bb.ah, label %bb.ak
end_hunk_2
begin_hunk_3_@_ZNK6icu_786number4impl24NumberRangeFormatterImpl11formatRangeERNS1_25UFormattedNumberRangeDataERNS1_10MicroPropsES6_R10UErrorCode:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.jv = load i32, ptr %i.a, align 4             ; 2 uses
  %i.jw = load i32, ptr %i.b, align 4
  %i.jx = add i32 %.1151, %.1149
  %i.jy = add i32 %i.jx, %.1147
  %i.jz = add i32 %i.jy, %i.jv
  %i.ka = add nsw i32 %i.jz, %i.jw
end_hunk_3
begin_hunk_4_@_ZNK6icu_786number4impl24NumberRangeFormatterImpl11formatRangeERNS1_25UFormattedNumberRangeDataERNS1_10MicroPropsES6_R10UErrorCode:bb.a
  %i.kr = load i32, ptr %i.b, align 4
  %i.ks = sub nsw i32 %i.kr, %i.kq
  store i32 %i.ks, ptr %i.b, align 4
  %.pre = add i32 %.1147, %.1149
  br label %bb.al

bb.ak:                                            ; preds = %bb.ag
  %i.kt = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ku = add nsw i32 %i.kt, %.1147
  %i.kv = load ptr, ptr %i.iw, align 8
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  %i.kx = load ptr, ptr %i.kw, align 8
  %i.ky = call noundef i32 %i.kx(ptr noundef nonnull align 8 dereferenceable(8) %i.iw, ptr noundef nonnull align 8 dereferenceable(136) %i.al, i32 noundef %i.kt, i32 noundef %i.ku, ptr noundef nonnull align 4 dereferenceable(4) %4) #11
  %i.kz = add nsw i32 %i.ky, %.1147               ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.lb = load ptr, ptr %i.la, align 8            ; 2 uses
  %i.lc = load i32, ptr %i.a, align 4
  %i.ld = add i32 %i.kz, %.1149                   ; 2 uses
  %i.le = add i32 %i.ld, %i.lc                    ; 2 uses
  %i.lf = load i32, ptr %i.b, align 4
  %i.lg = add i32 %i.lf, %.1151
  %i.lh = add i32 %i.lg, %i.le
  %i.li = load ptr, ptr %i.lb, align 8
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.lk = load ptr, ptr %i.lj, align 8
  %i.ll = call noundef i32 %i.lk(ptr noundef nonnull align 8 dereferenceable(8) %i.lb, ptr noundef nonnull align 8 dereferenceable(136) %i.al, i32 noundef %i.le, i32 noundef %i.lh, ptr noundef nonnull align 4 dereferenceable(4) %4) #11
  %i.lm = add nsw i32 %i.ll, %.1151
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZNK6icu_786number4impl24NumberRangeFormatterImpl22resolveModifierPluralsERKNS1_8ModifierES5_.exit163
  %.pre-phi = phi i32 [ %i.ld, %bb.ak ], [ %.pre, %_ZNK6icu_786number4impl24NumberRangeFormatterImpl22resolveModifierPluralsERKNS1_8ModifierES5_.exit163 ]
  %.2152 = phi i32 [ %i.lm, %bb.ak ], [ %.1151, %_ZNK6icu_786number4impl24NumberRangeFormatterImpl22resolveModifierPluralsERKNS1_8ModifierES5_.exit163 ]
  %.2 = phi i32 [ %i.kz, %bb.ak ], [ %.1147, %_ZNK6icu_786number4impl24NumberRangeFormatterImpl22resolveModifierPluralsERKNS1_8ModifierES5_.exit163 ]
  %i.ln = load i32, ptr %i.a, align 4
  call void @_ZN6icu_7831FormattedValueStringBuilderImpl14appendSpanInfoE14UFieldCategoryiiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(300) %1, i32 noundef 4098, i32 noundef 0, i32 noundef %i.ln, i32 noundef %.2, ptr noundef nonnull align 4 dereferenceable(4) %4) #11
  %i.lo = load i32, ptr %i.a, align 4
  %i.lp = add i32 %.pre-phi, %i.lo
  call void @_ZN6icu_7831FormattedValueStringBuilderImpl14appendSpanInfoE14UFieldCategoryiiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(300) %1, i32 noundef 4098, i32 noundef 1, i32 noundef %i.lp, i32 noundef %.2152, ptr noundef nonnull align 4 dereferenceable(4) %4) #11
  call void @_ZN6icu_7822FormattedStringBuilderD1Ev(ptr noundef nonnull align 8 dereferenceable(136) %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %bb.am
end_hunk_4
