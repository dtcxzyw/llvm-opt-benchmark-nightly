begin_hunk_0
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 8
  %i.sn = load ptr, ptr %i.sl, align 8, !tbaa !48
  %i.so = load ptr, ptr %i.sm, align 8, !tbaa !48
  %i.sp = sext i32 %i.pp to i64                   ; 11 uses
  %wide.trip.count105.i = zext nneg i32 %i.pr to i64
  %wide.trip.count100.i = sext i32 %i.pt to i64   ; 5 uses
  %i.sq = shl nsw i64 %i.sp, 1
  %i.sr = add nsw i64 %i.sq, -2                   ; 2 uses
  %2 = shl nsw i64 %wide.trip.count100.i, 1       ; 2 uses
  %i.ss = shl nsw i64 %i.sp, 1
  %3 = add nsw i64 %i.ss, -2                      ; 2 uses
  %i.st = sub nsw i64 %wide.trip.count100.i, %i.sp ; 2 uses
  %i.su = xor i64 %i.sp, -1
  %i.sv = add nsw i64 %i.su, %wide.trip.count100.i ; 2 uses
end_hunk_0
begin_hunk_1
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %i.so, i64 %indvars.iv102.i
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !44 ; 14 uses
  %scevgep = getelementptr i8, ptr %i.ta, i64 %i.sr
  %scevgep469 = getelementptr i8, ptr %i.ta, i64 %2
  %scevgep470 = getelementptr i8, ptr %i.tc, i64 %i.sr
  %scevgep471 = getelementptr i8, ptr %i.tc, i64 %2
  %bound0 = icmp ult ptr %scevgep, %scevgep471
  %bound1 = icmp ult ptr %scevgep470, %scevgep469
  %found.conflict = and i1 %bound0, %bound1
end_hunk_1
begin_hunk_2
  br i1 %exitcond101.not.i.lver.orig.1, label %._crit_edge.us72.i, label %.ph.lver.orig, !llvm.loop !161

.ph:                                              ; preds = %.lver.check
  %scevgep473 = getelementptr i8, ptr %i.ta, i64 %3
  %load_initial = load i16, ptr %scevgep473, align 2 ; 5 uses
  %scevgep474 = getelementptr i8, ptr %i.tc, i64 %3
  %load_initial475 = load i16, ptr %scevgep474, align 2 ; 5 uses
  br i1 %lcmp.mod503.not, label %.prol.loopexit501, label %.prol.preheader500

end_hunk_2
