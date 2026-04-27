inline.NumInlined: 2668
inline.NumDeleted: 624
begin_hunk_0_@_ZNK3dpx14IndustryHeader8UserBitsEPc:_ZN3fmt3v1212vformat_to_nIPcJETnNSt9enable_ifIXsr6detail18is_output_iteratorIT_cEE5valueEiE4typeELi0EEENS0_18format_to_n_resultIS4_EES4_mNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZNK3dpx14IndustryHeader12TCFromStringEPKc(ptr nonnull readnone align 4 captures(none) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZN11OpenImageIO4v3_17Strutil11safe_strlenEPKcm(ptr noundef %1, i64 noundef 12) #30
  %.not = icmp eq i64 %i.a, 11
end_hunk_0
begin_hunk_1_@_ZNK3dpx14IndustryHeader12TCFromStringEPKc:bb.a
  br i1 %or.cond.7, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.preheader.7
  %2 = shl i8 %i.t, 4
  %3 = zext i8 %2 to i32
  %4 = and i8 %i.q, 15
  %i.y = zext nneg i8 %4 to i32
  %i.z = shl nuw nsw i32 %i.y, 8
  %5 = and i8 %i.n, 15
  %i.aa = zext nneg i8 %5 to i32
  %i.ab = shl nuw nsw i32 %i.aa, 12
  %6 = and i8 %i.k, 15
  %i.ac = zext nneg i8 %6 to i32
  %i.ad = shl nuw nsw i32 %i.ac, 16
  %7 = and i8 %i.h, 15
  %i.ae = zext nneg i8 %7 to i32
  %i.af = shl nuw nsw i32 %i.ae, 20
  %8 = and i8 %i.e, 15
  %i.ag = zext nneg i8 %8 to i32
  %i.ah = shl nuw nsw i32 %i.ag, 24
  %9 = and i8 %i.b, 15
  %i.ai = zext nneg i8 %9 to i32
  %i.aj = shl nuw i32 %i.ai, 28
  %i.ak = or disjoint i32 %i.ah, %i.aj
  %i.al = or disjoint i32 %i.af, %i.ak
  %i.am = or disjoint i32 %i.ad, %i.al
  %i.an = or disjoint i32 %i.ab, %i.am
  %i.ao = or disjoint i32 %i.z, %i.an
  %i.ap = or i32 %i.ao, %3
  %i.aq = and i8 %i.w, 15
  %i.ar = zext nneg i8 %i.aq to i32
  %i.as = or i32 %i.ap, %i.ar
end_hunk_1
begin_hunk_2_@_ZN3fmt3v126detail6bigint12assign_pow10Ei:bb.a

bb.d:                                             ; preds = %bb.a
  %i.l = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %1, i1 true)
  %2 = xor i32 %i.l, 31
  %3 = shl nuw i32 1, %2
  %i.m = load ptr, ptr %0, align 8, !tbaa !346
  store i32 5, ptr %i.m, align 4, !tbaa !3
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
end_hunk_2
begin_hunk_3_@_ZN3fmt3v126detail6bigint12assign_pow10Ei:bb.a
  store i64 %i.t, ptr %i.u, align 8, !tbaa !356
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  store i32 0, ptr %i.v, align 8, !tbaa !348
  %.019 = ashr i32 %3, 1                          ; 2 uses
  %.not20 = icmp eq i32 %.019, 0
  br i1 %.not20, label %._crit_edge, label %.lr.ph

end_hunk_3
