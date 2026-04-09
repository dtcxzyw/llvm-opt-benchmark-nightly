inline.NumInlined: 753
inline.NumDeleted: 205
begin_hunk_0_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree7AddDataILNS2_8EdgeTypeE0EEESt17basic_string_viewIcSt11char_traitsIcEES8_m:bb.a
  %i.t = icmp samesign ult i64 %.0.i.i, 513       ; 2 uses
  %.neg.i.i = select i1 %i.t, i64 -8, i64 -64
  %i.u = select i1 %i.t, i64 8, i64 64
  %i.v = add nsw i64 %.0.i.i, -1
  %i.w = add nuw nsw i64 %i.v, %i.u
  %i.x = and i64 %i.w, %.neg.i.i                  ; 3 uses
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #19 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree7NewLeafILNS2_8EdgeTypeE0EEEPS2_St17basic_string_viewIcSt11char_traitsIcEEm:bb.a
  %i.k = icmp samesign ult i64 %.0.i.i, 513       ; 2 uses
  %.neg.i.i = select i1 %i.k, i64 -8, i64 -64
  %i.l = select i1 %i.k, i64 8, i64 64
  %i.m = add nsw i64 %.0.i.i, -1
  %i.n = add nuw nsw i64 %i.m, %i.l
  %i.o = and i64 %i.n, %.neg.i.i                  ; 3 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #19 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree7AddDataILNS2_8EdgeTypeE1EEEPS2_S5_St17basic_string_viewIcSt11char_traitsIcEEm:bb.a
  %i.fi = icmp samesign ult i64 %.0.i.i.i, 513    ; 2 uses
  %.neg.i.i.i = select i1 %i.fi, i64 -8, i64 -64
  %i.fj = select i1 %i.fi, i64 8, i64 64
  %i.fk = add nsw i64 %.0.i.i.i, -1
  %i.fl = add nuw nsw i64 %i.fk, %i.fj
  %i.fm = and i64 %i.fl, %.neg.i.i.i              ; 3 uses
  %i.fn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fm) #19 ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree7AddDataILNS2_8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEES8_m:bb.a
  %i.w = icmp samesign ult i64 %.0.i.i, 513       ; 2 uses
  %.neg.i.i = select i1 %i.w, i64 -8, i64 -64
  %i.x = select i1 %i.w, i64 8, i64 64
  %i.y = add nsw i64 %.0.i.i, -1
  %i.z = add nuw nsw i64 %i.y, %i.x
  %i.aa = and i64 %i.z, %.neg.i.i                 ; 3 uses
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #19 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree7NewLeafILNS2_8EdgeTypeE1EEEPS2_St17basic_string_viewIcSt11char_traitsIcEEm:bb.a
  %i.k = icmp samesign ult i64 %.0.i.i, 513       ; 2 uses
  %.neg.i.i = select i1 %i.k, i64 -8, i64 -64
  %i.l = select i1 %i.k, i64 8, i64 64
  %i.m = add nsw i64 %.0.i.i, -1
  %i.n = add nuw nsw i64 %i.m, %i.l
  %i.o = and i64 %i.n, %.neg.i.i                  ; 3 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #19 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree5MergeILNS2_8EdgeTypeE1EEEPS2_S5_S5_:bb.a
.lr.ph.i49:                                       ; preds = %_ZN4absl12lts_2025051213cord_internal12CordRepBtree10AlignBeginEv.exit.i
  %i.eh = zext i8 %i.ef to i64                    ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16 ; 2 uses
  %3 = shl nuw nsw i64 %.pre-phi71, 3
  %i.ej = add nsw i64 %3, -8
  %4 = shl nuw nsw i64 %.pre-phi, 3
  %5 = sub nsw i64 %i.ej, %4                      ; 2 uses
  %6 = lshr exact i64 %5, 3
  %i.ek = add nuw nsw i64 %6, 1                   ; 2 uses
  %min.iters.check85 = icmp ult i64 %5, 120
  br i1 %min.iters.check85, label %scalar.ph84.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i49
end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree5MergeILNS2_8EdgeTypeE0EEEPS2_S5_S5_:bb.a

.lr.ph.i48:                                       ; preds = %_ZN4absl12lts_2025051213cord_internal12CordRepBtree8AlignEndEv.exit.i
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16 ; 2 uses
  %3 = shl nuw nsw i64 %.pre-phi68, 3
  %i.eg = add nsw i64 %3, -8
  %4 = shl nuw nsw i64 %.pre-phi, 3
  %5 = sub nsw i64 %i.eg, %4                      ; 2 uses
  %6 = lshr exact i64 %5, 3
  %i.eh = add nuw nsw i64 %6, 1                   ; 2 uses
  %min.iters.check = icmp ult i64 %5, 120
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i48
end_hunk_6
