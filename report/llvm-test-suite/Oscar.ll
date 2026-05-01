inline.NumInlined: 7
begin_hunk_0_@Exptab:bb.a
  %i.ag = getelementptr [8 x i8], ptr %1, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %i.ah, align 4, !tbaa !16
  %scevgep = getelementptr i8, ptr %1, i64 8      ; 2 uses
  %scevgep57 = getelementptr i8, ptr %1, i64 12
  %i.ai = add nsw i64 %i.af, 1
  %scevgep59 = getelementptr i8, ptr %1, i64 8    ; 2 uses
  %scevgep61 = getelementptr i8, ptr %1, i64 12
  %scevgep61.a = getelementptr i8, ptr %1, i64 12
  %scevgep63 = getelementptr i8, ptr %1, i64 12   ; 2 uses
  %scevgep67 = getelementptr i8, ptr %1, i64 16
  %scevgep69 = getelementptr i8, ptr %1, i64 12   ; 2 uses
  %scevgep71 = getelementptr i8, ptr %1, i64 16
  %scevgep73 = getelementptr i8, ptr %1, i64 16
  br label %bb.d
end_hunk_0
begin_hunk_1_@Exptab:bb.a
  %i.as = add nuw i64 %.neg, %smax
  %i.at = add i64 %i.as, %umin
  %i.au = shl i64 %i.at, 3                        ; 6 uses
  %scevgep58 = getelementptr i8, ptr %scevgep57, i64 %i.au ; 2 uses
  %scevgep62 = getelementptr i8, ptr %scevgep61, i64 %i.au
  %scevgep64 = getelementptr i8, ptr %scevgep61.a, i64 %i.au
  %scevgep68 = getelementptr i8, ptr %scevgep67, i64 %i.au ; 2 uses
  %scevgep72 = getelementptr i8, ptr %scevgep71, i64 %i.au
  %scevgep74 = getelementptr i8, ptr %scevgep73, i64 %i.au
  %bound0 = icmp ult ptr %scevgep, %scevgep62
  %bound1 = icmp ult ptr %scevgep59, %scevgep58
  %found.conflict = and i1 %bound0, %bound1
  %bound075 = icmp ult ptr %scevgep, %scevgep64
  %bound176 = icmp ult ptr %scevgep59, %scevgep58
  %found.conflict77 = and i1 %bound075, %bound176
  %conflict.rdx = or i1 %found.conflict, %found.conflict77
  %bound078 = icmp ult ptr %scevgep63, %scevgep72
  %bound179 = icmp ult ptr %scevgep69, %scevgep68
  %found.conflict80 = and i1 %bound078, %bound179
  %conflict.rdx81 = or i1 %conflict.rdx, %found.conflict80
  %bound082 = icmp ult ptr %scevgep63, %scevgep74
  %bound183 = icmp ult ptr %scevgep69, %scevgep68
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %conflict.rdx81, %found.conflict84
  br i1 %conflict.rdx85, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %smax89, 3                  ; 2 uses
end_hunk_1
