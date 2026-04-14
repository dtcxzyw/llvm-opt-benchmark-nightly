inline.NumInlined: 42
inline.NumDeleted: 19
begin_hunk_0_@_ZN4absl12lts_2025051216strings_internal10ParseFloatILi10EEENS1_11ParsedFloatEPKcS5_NS0_12chars_formatE:bb.a
  %.2.lcssa79.i = phi ptr [ %.1.lcssa.i, %.critedge2.i ], [ %.260.i, %.lr.ph62.i ], [ %scevgep71.i, %bb.f ]
  %i.al = ptrtoint ptr %.2.lcssa79.i to i64
  %i.am = sub i64 %i.al, %.pre-phi                ; 2 uses
  %i.an = trunc i64 %i.am to i32                  ; 3 uses
  %sext = shl i64 %i.am, 32
  %i.ao = ashr exact i64 %sext, 32
  %i.ap = getelementptr inbounds i8, ptr %.0.lcssa, i64 %i.ao ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051216strings_internal10ParseFloatILi10EEENS1_11ParsedFloatEPKcS5_NS0_12chars_formatE:bb.a
  br i1 %i.aq, label %bb.ac, label %bb.g

bb.g:                                             ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS4_iPT0_Pb.exit
  %4 = tail call i32 @llvm.smin.i32(i32 %i.an, i32 19)
  %i.ar = sub nsw i32 19, %4                      ; 2 uses
  %i.as = tail call i32 @llvm.smax.i32(i32 %i.an, i32 19)
  %.083 = add nsw i32 %i.as, -19                  ; 4 uses
  %i.at = icmp ult ptr %i.ap, %2
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051216strings_internal10ParseFloatILi10EEENS1_11ParsedFloatEPKcS5_NS0_12chars_formatE:bb.a
  %.pre-phi172 = phi i64 [ %.pre171, %.critedge.i114.loopexit ], [ %i.be, %bb.k ], [ %.pre173, %.thread193 ] ; 3 uses
  %.038.lcssa.i115 = phi ptr [ %.038.lcssa.i115.ph, %.critedge.i114.loopexit ], [ %.1.lcssa, %bb.k ], [ %i.aw, %.thread193 ] ; 5 uses
  %i.bo = sub i64 %i.b, %.pre-phi172
  %i.bp = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.bq = icmp sgt i64 %i.bo, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %.038.lcssa.i115, i64 %i.bp
  %i.bs = select i1 %i.bq, ptr %i.br, ptr %2      ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051216strings_internal10ParseFloatILi10EEENS1_11ParsedFloatEPKcS5_NS0_12chars_formatE:bb.a
  %i.co = ashr exact i64 %sext157, 32
  %i.cp = getelementptr inbounds i8, ptr %.2202, i64 %i.co
  %i.cq = icmp slt i32 %i.cn, 50000000
  %.089. = tail call i32 @llvm.smin.i32(i32 %i.ar, i32 %i.cn)
  %.386 = sub nsw i32 %.285201, %.089.
  br i1 %i.cq, label %bb.o, label %bb.ac

end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2025051216strings_internal10ParseFloatILi16EEENS1_11ParsedFloatEPKcS5_NS0_12chars_formatE:bb.a
  %.2.lcssa80.i = phi ptr [ %.1.lcssa.i, %.critedge2.i ], [ %.260.i, %.lr.ph62.i ], [ %scevgep71.i, %bb.f ]
  %i.ao = ptrtoint ptr %.2.lcssa80.i to i64
  %i.ap = sub i64 %i.ao, %.pre-phi                ; 2 uses
  %i.aq = trunc i64 %i.ap to i32                  ; 3 uses
  %sext = shl i64 %i.ap, 32
  %i.ar = ashr exact i64 %sext, 32
  %i.as = getelementptr inbounds i8, ptr %.0.lcssa, i64 %i.ar ; 5 uses
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2025051216strings_internal10ParseFloatILi16EEENS1_11ParsedFloatEPKcS5_NS0_12chars_formatE:bb.a
  br i1 %i.at, label %bb.aa, label %bb.g

bb.g:                                             ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_113ConsumeDigitsILi16EmEEiPKcS4_iPT0_Pb.exit
  %4 = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 15)
  %i.au = sub nsw i32 15, %4                      ; 2 uses
  %i.av = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 15)
  %.081 = add nsw i32 %i.av, -15                  ; 4 uses
  %i.aw = icmp ult ptr %i.as, %2
end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2025051216strings_internal10ParseFloatILi16EEENS1_11ParsedFloatEPKcS5_NS0_12chars_formatE:bb.a
  %.pre-phi173 = phi i64 [ %.pre172, %.critedge.i112.loopexit ], [ %i.bh, %bb.k ], [ %.pre174, %.thread196 ] ; 3 uses
  %.038.lcssa.i113 = phi ptr [ %.038.lcssa.i113.ph, %.critedge.i112.loopexit ], [ %.1.lcssa, %bb.k ], [ %i.az, %.thread196 ] ; 5 uses
  %i.br = sub i64 %i.b, %.pre-phi173
  %i.bs = zext nneg i32 %i.au to i64              ; 2 uses
  %i.bt = icmp sgt i64 %i.br, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %.038.lcssa.i113, i64 %i.bs
  %i.bv = select i1 %i.bt, ptr %i.bu, ptr %2      ; 3 uses
end_hunk_6
begin_hunk_7_@_ZN4absl12lts_2025051216strings_internal10ParseFloatILi16EEENS1_11ParsedFloatEPKcS5_NS0_12chars_formatE:bb.a
  %i.cu = ashr exact i64 %sext158, 32
  %i.cv = getelementptr inbounds i8, ptr %.2205, i64 %i.cu
  %i.cw = icmp slt i32 %i.ct, 12500000
  %.087. = tail call i32 @llvm.smin.i32(i32 %i.au, i32 %i.ct)
  %.384 = sub nsw i32 %.283204, %.087.
  br i1 %i.cw, label %bb.o, label %bb.aa

end_hunk_7
begin_hunk_8_@llvm.memset.p0.i64
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_8
