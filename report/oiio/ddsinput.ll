begin_hunk_0
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.o, %.lr.ph.i, %.lr.ph.i138, %bb.p
  %i.arq = phi i32 [ %i.aro, %bb.p ], [ %i.arn, %.lr.ph.i138 ], [ %i.aoh, %.lr.ph.i ], [ %i.amf, %bb.o ], [ %i.akb, %bb.n ] ; 2 uses
  %.sroa.501.1729744 = phi i64 [ 0, %bb.p ], [ %i.ari, %.lr.ph.i138 ], [ %i.aof, %.lr.ph.i ], [ %i.amc, %bb.o ], [ %i.akp, %bb.n ]
  %.sroa.0.1730742 = phi i64 [ %.sroa.0.1.ph, %bb.p ], [ %i.arh, %.lr.ph.i138 ], [ %i.aoe, %.lr.ph.i ], [ %i.amb, %bb.o ], [ %i.ako, %bb.n ]
  %i.arr = phi i1 [ false, %bb.p ], [ true, %.lr.ph.i138 ], [ true, %.lr.ph.i ], [ true, %bb.o ], [ true, %bb.n ] ; 4 uses
end_hunk_0
begin_hunk_1
  br label %.preheader861

bb.r:                                             ; preds = %bb.q
  br i1 %or.cond731740, label %.preheader861, label %.loopexit862..loopexit860_crit_edge

.preheader861:                                    ; preds = %.thread, %bb.r
  %i.asf = phi i32 [ %i.ase, %.thread ], [ %i.arq, %bb.r ] ; 3 uses
  %i.asg = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZ15bcdec_bc6h_halfE17actual_bits_count, i64 14), i64 %.1114732738
  %i.ash = load i8, ptr %i.asg, align 1, !tbaa !9
  %i.asi = sext i8 %i.ash to i32
end_hunk_1
begin_hunk_2
  store i32 %i.aub, ptr %i.aty, align 4, !tbaa !3
  br label %.loopexit862

.loopexit862:                                     ; preds = %bb.s, %.preheader861
  br i1 %or.cond731740, label %.preheader859, label %.loopexit862..loopexit860_crit_edge

.loopexit862..loopexit860_crit_edge:              ; preds = %bb.r, %.loopexit862
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr @_ZZ15bcdec_bc6h_halfE17actual_bits_count, i64 %.1114732738
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !9
  %.pre906 = sext i8 %.pre to i32                 ; 2 uses
end_hunk_2
begin_hunk_3
  store i32 %.0.i159, ptr %i.aup, align 4, !tbaa !3
  %i.auv = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.auw = load i32, ptr %i.auv, align 4, !tbaa !3
  %i.aux = add nsw i32 %i.asf, %i.auw             ; 2 uses
  %i.auy = and i32 %i.aux, %i.aug
  %i.auz = shl i32 %i.aux, %i.auh
  %i.ava = ashr exact i32 %i.auz, %i.auh
end_hunk_3
begin_hunk_4
  store i32 %.0.i159.1, ptr %i.avh, align 8, !tbaa !3
  %i.avn = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.avo = load i32, ptr %i.avn, align 8, !tbaa !3
  %i.avp = add nsw i32 %i.asf, %i.avo             ; 2 uses
  %i.avq = and i32 %i.avp, %i.aug
  %i.avr = shl i32 %i.avp, %i.auh
  %i.avs = ashr exact i32 %i.avr, %i.auh
end_hunk_4
begin_hunk_5
  store i32 %.0.i159.2, ptr %i.avz, align 4, !tbaa !3
  %i.awf = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %i.awg = load i32, ptr %i.awf, align 4, !tbaa !3
  %i.awh = add nsw i32 %i.asf, %i.awg             ; 2 uses
  %i.awi = and i32 %i.awh, %i.aug
  %i.awj = shl i32 %i.awh, %i.auh
  %i.awk = ashr exact i32 %i.awj, %i.auh
end_hunk_5
