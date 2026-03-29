begin_hunk_0
  store i32 %.pre, ptr %i.m, align 4
  br label %pred.store.continue

pred.store.continue:                              ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.preheader113, %pred.store.if
  %i.ai = extractelement <4 x i1> %i.ag, i64 1
  br i1 %i.ai, label %pred.store.if145, label %pred.store.continue146

end_hunk_0
begin_hunk_1
  store i32 %.pre, ptr %i.n, align 4
  br label %pred.store.continue146

pred.store.continue146:                           ; preds = %pred.store.continue, %pred.store.if145
  %i.aj = extractelement <4 x i1> %i.ag, i64 2
  br i1 %i.aj, label %pred.store.if147, label %pred.store.continue148

end_hunk_1
begin_hunk_2
  store i32 %.pre, ptr %i.o, align 4
  br label %pred.store.continue148

pred.store.continue148:                           ; preds = %pred.store.continue146, %pred.store.if147
  %i.ak = extractelement <4 x i1> %i.ag, i64 3
  br i1 %i.ak, label %pred.store.if149, label %pred.store.continue150

end_hunk_2
begin_hunk_3
  store i32 %.pre, ptr %i.p, align 4
  br label %pred.store.continue150

pred.store.continue150:                           ; preds = %pred.store.continue148, %pred.store.if149
  %i.al = icmp eq i64 %n.vec, 4
  br i1 %i.al, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit._crit_edge, label %vector.body.1

end_hunk_3
