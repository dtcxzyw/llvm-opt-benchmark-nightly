begin_hunk_0
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.b
  %i.f = zext nneg i32 %2 to i64                  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.g, align 8
  %i.h = shl nuw nsw i64 %i.f, 2
end_hunk_0
begin_hunk_1

.preheader:                                       ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit
  %.not35 = icmp samesign ugt i32 %2, 1
  br i1 %.not35, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

bb.d:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !1243

bb.e:                                             ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit
end_hunk_1
begin_hunk_2
          cleanup
  br label %bb.i

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.ao = load ptr, ptr %4, align 8, !tbaa !1236
  %i.ap = getelementptr [4 x i8], ptr %i.ao, i64 %indvars.iv ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3
end_hunk_2
