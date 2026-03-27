begin_hunk_0

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %.05564 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.bl, %.loopexit ] ; 2 uses
  %i.ah = mul i64 %.05564, %i.f                   ; 5 uses
  %i.ai = load ptr, ptr %i.b, align 8             ; 6 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.o
  %diff.check = icmp ult i64 %i.ak, 16
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %pred.store.continue81
  %index = phi i64 [ %index.next, %pred.store.continue81 ], [ 0, %.preheader ] ; 3 uses
  %2 = add i64 %index, %i.ah                      ; 2 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %2
  %wide.load = load <2 x double>, ptr %gep, align 8, !tbaa !9 ; 2 uses
  %i.al = tail call <2 x double> @llvm.round.v2f64(<2 x double> %wide.load) ; 3 uses
  %i.am = fsub <2 x double> %wide.load, %i.al
end_hunk_0
begin_hunk_1
  br i1 %i.ap, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %gep90 = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %2
  %i.aq = extractelement <2 x double> %i.al, i64 0
  store double %i.aq, ptr %gep90, align 8, !tbaa !9
  br label %pred.store.continue

pred.store.continue:                              ; preds = %vector.body, %pred.store.if
  %i.ar = extractelement <2 x i1> %i.ao, i64 1
  br i1 %i.ar, label %pred.store.if80, label %pred.store.continue81

end_hunk_1
begin_hunk_2
  store double %i.av, ptr %i.au, align 8, !tbaa !9
  br label %pred.store.continue81

pred.store.continue81:                            ; preds = %pred.store.continue, %pred.store.if80
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !130
end_hunk_2
