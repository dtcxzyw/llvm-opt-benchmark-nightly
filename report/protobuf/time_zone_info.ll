inline.NumInlined: 1279
inline.NumDeleted: 547
begin_hunk_0_@_ZN4absl12lts_2025051213time_internal4cctz12TimeZoneInfo17ExtendTransitionsEv:bb.a
  %i.dl = add nsw i64 %i.dk, 401
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 89
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 90 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 113
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 114 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  br label %bb.u

end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051213time_internal4cctz12TimeZoneInfo17ExtendTransitionsEv:bb.a
  %i.ej = sext i16 %i.eh to i32
  %.lhs.trunc.i = add nsw i32 %.037, %i.ej
  %i.ek = srem i32 %.lhs.trunc.i, 7               ; 2 uses
  br i1 %i.dz, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.el = trunc nsw i32 %i.ek to i16
  %6 = add nsw i16 %i.el, 6
  %7 = load i8, ptr %i.do, align 2, !tbaa !33
  %8 = sext i8 %7 to i16
  %.lhs.trunc24.i = sub nsw i16 %6, %8
  %i.em = srem i16 %.lhs.trunc24.i, 7
  %i.en = xor i16 %i.em, -1
  %.neg.i = sext i16 %i.en to i64
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051213time_internal4cctz12TimeZoneInfo17ExtendTransitionsEv:bb.a

bb.z:                                             ; preds = %bb.x
  %i.ep = sext i8 %i.dy to i64
  %9 = load i8, ptr %i.do, align 2, !tbaa !33
  %i.eq = sext i8 %9 to i32
  %reass.sub.i = sub nsw i32 %i.eq, %i.ek
  %i.er = trunc nsw i32 %reass.sub.i to i16
  %.lhs.trunc26.i = add nsw i16 %i.er, 7
  %i.es = srem i16 %.lhs.trunc26.i, 7
  %.sext27.i = sext i16 %i.es to i64
  %i.et = mul nsw i64 %i.ep, 7
  %i.eu = add nsw i64 %i.et, -7
  %i.ev = add nsw i64 %i.eu, %i.ei
  %i.ew = add nsw i64 %i.ev, %.sext27.i
  br label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit

_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit: ; preds = %bb.u, %bb.v, %bb.w, %bb.y, %bb.z
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051213time_internal4cctz12TimeZoneInfo17ExtendTransitionsEv:bb.a
  %i.fp = sext i16 %i.fn to i32
  %.lhs.trunc.i52 = add nsw i32 %.037, %i.fp
  %i.fq = srem i32 %.lhs.trunc.i52, 7             ; 2 uses
  br i1 %i.ff, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fr = trunc nsw i32 %i.fq to i16
  %10 = add nsw i16 %i.fr, 6
  %11 = load i8, ptr %i.dq, align 2, !tbaa !33
  %12 = sext i8 %11 to i16
  %.lhs.trunc24.i57 = sub nsw i16 %10, %12
  %i.fs = srem i16 %.lhs.trunc24.i57, 7
  %i.ft = xor i16 %i.fs, -1
  %.neg.i58 = sext i16 %i.ft to i64
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2025051213time_internal4cctz12TimeZoneInfo17ExtendTransitionsEv:bb.a

bb.ae:                                            ; preds = %bb.ac
  %i.fv = sext i8 %i.fe to i64
  %13 = load i8, ptr %i.dq, align 2, !tbaa !33
  %i.fw = sext i8 %13 to i32
  %reass.sub.i53 = sub nsw i32 %i.fw, %i.fq
  %i.fx = trunc nsw i32 %reass.sub.i53 to i16
  %.lhs.trunc26.i54 = add nsw i16 %i.fx, 7
  %i.fy = srem i16 %.lhs.trunc26.i54, 7
  %.sext27.i55 = sext i16 %i.fy to i64
  %i.fz = mul nsw i64 %i.fv, 7
  %i.ga = add nsw i64 %i.fz, -7
  %i.gb = add nsw i64 %i.ga, %i.fo
  %i.gc = add nsw i64 %i.gb, %.sext27.i55
  br label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit62

_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit62: ; preds = %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit, %bb.aa, %bb.ab, %bb.ad, %bb.ae
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2025051213time_internal4cctz6detail11get_weekdayERKNS3_10civil_timeINS3_10second_tagEEE:bb.a
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !63
  %i.b = srem i64 %i.a, 400
  %1 = add nsw i64 %i.b, 2400
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !91    ; 2 uses
  %i.e = icmp slt i8 %i.d, 3
  %.neg = sext i1 %i.e to i64
  %i.f = add nsw i64 %1, %.neg                    ; 3 uses
  %i.g = lshr i64 %i.f, 2
  %.lhs.trunc = trunc nuw nsw i64 %i.f to i16     ; 2 uses
  %i.h = udiv i16 %.lhs.trunc, 100
end_hunk_5
begin_hunk_6_@_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo8MakeTimeERKNS2_6detail10civil_timeINS4_10second_tagEEE:bb.a
  %i.kp = shl i64 %.sroa.26.0.copyload.i, 24
  %i.kq = ashr i64 %i.kp, 56
  %.pn.i.i.i77 = mul i64 %i.km, 60
  %i.kr = add i64 %i.jz, -1
  %4 = add i64 %i.kr, %i.ko
  %5 = sub i64 %4, %i.kq
  %i.ks = add i64 %5, %.pn.i.i.i77
  store i64 %i.ks, ptr %i.jy, align 8, !tbaa !72, !alias.scope !181
  %i.kt = load i64, ptr %i.d, align 8, !tbaa !62, !noalias !181 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo8MakeTimeERKNS2_6detail10civil_timeINS4_10second_tagEEE:bb.a
  %i.uv = shl i64 %.sroa.26.0.copyload.i124, 24
  %i.uw = ashr i64 %i.uv, 56
  %.pn.i.i.i133 = mul i64 %i.us, 60
  %i.ux = add i64 %i.uf, -1
  %6 = add i64 %i.ux, %i.uu
  %7 = sub i64 %6, %i.uw
  %i.uy = add i64 %7, %.pn.i.i.i133
  store i64 %i.uy, ptr %i.ue, align 8, !tbaa !72, !alias.scope !199
  %i.uz = load i64, ptr %.2, align 8, !tbaa !62, !noalias !199 ; 2 uses
end_hunk_7
