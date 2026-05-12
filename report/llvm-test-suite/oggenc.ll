inline.NumInlined: 676
inline.NumDeleted: 90
begin_hunk_0_@mdct_forward:bb.a
  %i.fb = shl i64 %i.ew, 4                        ; 2 uses
  %i.fc = getelementptr i8, ptr %1, i64 %i.fb
  %scevgep205 = getelementptr i8, ptr %i.fc, i64 16
  %3 = sub nuw nsw i64 -16, %i.fb
  %scevgep206 = getelementptr i8, ptr %.0118.lcssa, i64 %3
  %scevgep207 = getelementptr i8, ptr %.0118.lcssa, i64 -4
  %4 = sub nuw nsw i64 -8, %i.ex
  %scevgep208 = getelementptr i8, ptr %.0111.lcssa, i64 %4
  %bound0209 = icmp ult ptr %scevgep203, %scevgep205
  %bound1210 = icmp ult ptr %i.eg, %scevgep204
end_hunk_0
begin_hunk_1_@mdct_forward:bb.a
  %scevgep258 = getelementptr i8, ptr %1, i64 %i.jv
  %i.jw = getelementptr i8, ptr %1, i64 %i.jt
  %scevgep259 = getelementptr i8, ptr %i.jw, i64 -4
  %5 = sub nuw nsw i64 -8, %i.jn
  %scevgep260 = getelementptr i8, ptr %.1112.lcssa, i64 %5
  %bound0261 = icmp ult ptr %scevgep255, %scevgep257
  %bound1262 = icmp ult ptr %.1116.lcssa, %scevgep256
end_hunk_1
begin_hunk_2_@dradf4:bb.a
  %i.dd = sub nsw i64 -12, %i.da
  %scevgep390 = getelementptr i8, ptr %3, i64 %i.dd
  %scevgep392 = getelementptr i8, ptr %3, i64 -8
  %7 = sub nuw nsw i64 -8, %i.da
  %scevgep394 = getelementptr i8, ptr %3, i64 %7
  %scevgep396 = getelementptr i8, ptr %3, i64 -4
  %i.de = shl nsw i64 %i.cr, 2                    ; 7 uses
end_hunk_2
