inline.NumInlined: 720
inline.NumDeleted: 28
begin_hunk_0_@LZ4MID_compress:bb.a
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !33   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 262172
  %i.v = load i32, ptr %i.u, align 4, !tbaa !34   ; 6 uses
  %.not = icmp ne i32 %6, 0                       ; 2 uses
  br i1 %.not, label %bb.b, label %select_searchDict_function.exit

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@LZ4HC_compress_optimal:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 262172
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 262160
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 262176 ; 6 uses
  %.not.i.i760 = icmp ne i32 %10, 0               ; 5 uses
  %i.x = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 6 uses
  %i.y = getelementptr inbounds i8, ptr %i.j, i64 -6 ; 6 uses
  %i.z = ptrtoint ptr %i.l to i64                 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %11 = icmp ne i32 %9, 0                         ; 3 uses
  %.not412 = icmp eq i32 %8, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 3
end_hunk_1
begin_hunk_2_@LZ4HC_compress_optimal:bb.a
  %i.es = add nsw i32 %.0314.i.i6962679, -1       ; 5 uses
  %i.et = sub i32 %i.bt, %.0323.i.i6942677        ; 3 uses
  %i.eu = icmp ult i32 %i.et, 8
  %or.cond445.i.i761 = and i1 %.not.i.i760, %i.eu
  br i1 %or.cond445.i.i761, label %bb.aw, label %bb.d

bb.d:                                             ; preds = %.lr.ph2681
end_hunk_2
begin_hunk_3_@LZ4HC_compress_optimal:bb.a
  %.sroa.2313.0.insert.ext.i.i708 = zext nneg i32 %.22.i.i707 to i64
  %i.to = add nsw i32 %.22.i.i707, -19
  %i.tp = icmp ult i32 %i.to, 18
  %or.cond.i720 = and i1 %.not.i.i760, %i.tp
  %.sroa.03.sroa.4.0.insert.shift.i722 = select i1 %or.cond.i720, i64 18, i64 %.sroa.2313.0.insert.ext.i.i708 ; 13 uses
  %.sroa.0162.4.extract.trunc = trunc nuw nsw i64 %.sroa.03.sroa.4.0.insert.shift.i722 to i32 ; 3 uses
  %i.tq = icmp samesign ugt i64 %.sroa.03.sroa.4.0.insert.shift.i722, %spec.store.select
end_hunk_3
begin_hunk_4_@LZ4HC_compress_optimal:bb.a
  %i.acq = add nsw i32 %.0314.i.i4632720, -1      ; 5 uses
  %i.acr = sub i32 %i.aad, %.0323.i.i4612718      ; 3 uses
  %i.acs = icmp ult i32 %i.acr, 8
  %or.cond445.i.i528 = and i1 %.not.i.i760, %i.acs
  br i1 %or.cond445.i.i528, label %bb.fc, label %bb.dj

bb.dj:                                            ; preds = %.lr.ph2722
end_hunk_4
begin_hunk_5_@LZ4HC_compress_optimal:bb.a
  %i.aua = add nsw i32 %.0314.i.i2761, -1         ; 5 uses
  %i.aub = sub i32 %i.arn, %.0323.i.i2759         ; 3 uses
  %i.auc = icmp ult i32 %i.aub, 8
  %or.cond445.i.i = and i1 %.not.i.i760, %i.auc
  br i1 %or.cond445.i.i, label %bb.ir, label %bb.gy

bb.gy:                                            ; preds = %.lr.ph2763
end_hunk_5
begin_hunk_6_@LZ4HC_compress_optimal:bb.a
  %.sroa.2313.0.insert.ext.i.i = zext i32 %.22.i.i.sink2552 to i64
  %i.bis = add i32 %.22.i.i.sink2552, -19
  %i.bit = icmp ult i32 %i.bis, 18
  %or.cond.i454 = and i1 %.not.i.i760, %i.bit
  %i.biu = shl nuw i64 %.sroa.2313.0.insert.ext.i.i, 32
  %.sroa.03.sroa.4.0.insert.shift.i = select i1 %or.cond.i454, i64 77309411328, i64 %i.biu ; 4 uses
  %.sroa.0104.4.extract.shift = lshr exact i64 %.sroa.03.sroa.4.0.insert.shift.i, 32 ; 4 uses
end_hunk_6
