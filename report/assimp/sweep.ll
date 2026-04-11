inline.NumInlined: 129
inline.NumDeleted: 49
begin_hunk_0_@_ZN3p2t5Sweep12FillBasinReqERNS_12SweepContextEPNS_4NodeE:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = load <2 x double>, ptr %i.ad, align 8   ; 2 uses
  %i.af = load <2 x double>, ptr %i.z, align 8
  %i.ag = fsub <2 x double> %i.af, %i.ae
end_hunk_0
begin_hunk_1_@_ZN3p2t5Sweep12FillBasinReqERNS_12SweepContextEPNS_4NodeE:bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = load <2 x double>, ptr %i.ar, align 8   ; 2 uses
  %i.at = load <2 x double>, ptr %i.an, align 8
  %i.au = fsub <2 x double> %i.at, %i.as
end_hunk_1
begin_hunk_2_@_ZN3p2t5Sweep12FillBasinReqERNS_12SweepContextEPNS_4NodeE:bb.a
  %i.bi = fcmp olt double %i.be, %i.bh            ; 2 uses
  %i.bj = select i1 %i.bi, ptr %i.bc, ptr %i.bf
  %. = select i1 %i.bi, ptr %i.s, ptr %i.w
  br label %.thread36

.thread36:                                        ; preds = %bb.f, %bb.d, %bb.g
  %.in.a = phi ptr [ %i.bj, %bb.g ], [ %i.aa, %bb.d ], [ %i.ao, %bb.f ]
  %.2 = phi ptr [ %., %bb.g ], [ %i.w, %bb.d ], [ %i.s, %bb.f ]
  %.in = getelementptr inbounds nuw i8, ptr %.in.a, i64 8
  %i.bk = load double, ptr %.in, align 8
  %i.bl = load i8, ptr %i.a, align 8, !range !6, !noundef !7
  %i.bm = trunc nuw i8 %i.bl to i1
  %..i = select i1 %i.bm, i64 24, i64 40
end_hunk_2
