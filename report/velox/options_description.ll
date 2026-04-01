begin_hunk_0
  %i.be = load i8, ptr %i.ay, align 1, !tbaa !16
  %i.bf = sext i8 %i.be to i32
  %i.bg = ptrtoint ptr %i.bd to i64
  %invariant.op = sub i64 1, %i.az
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a:   ; preds = %bb.ab, %.lr.ph.i.i
  %.041.i.i = phi i64 [ %i.ba, %.lr.ph.i.i ], [ %i.bn, %bb.ab ]
  %.02840.i.i = phi ptr [ %i.bc, %.lr.ph.i.i ], [ %i.bl, %bb.ab ]
  %i.bh = add i64 %.041.i.i, %invariant.op        ; 2 uses
  %.not34.i.i.a = icmp eq i64 %i.bh, 0
  br i1 %.not34.i.i.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a
  %9 = call ptr @memchr(ptr noundef %.02840.i.i, i32 noundef %i.bf, i64 noundef %i.bh) #33 ; 4 uses
  %.not34.i.i = icmp eq ptr %9, null
  br i1 %.not34.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %9, ptr nonnull %i.ay, i64 %i.az)
  %i.bi = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.bi, label %bb.aa, label %bb.ab
end_hunk_0
begin_hunk_1
  %.not33.i.i = icmp ult i64 %i.bn, %i.az
  br i1 %.not33.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a, !llvm.loop !58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.ab, %bb.x, %bb.y, %bb.z, %bb.aa
  %.1.i.i = phi i32 [ 2, %bb.x ], [ 0, %bb.y ], [ %i.bk, %bb.aa ], [ 0, %bb.z ], [ 0, %bb.ab ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a ]
  %i.bo = icmp eq ptr %i.ay, %i.u
  br i1 %i.bo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

end_hunk_1
begin_hunk_2

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.r, %bb.q
  %i.bw = phi i64 [ %i.ai, %bb.q ], [ %.pr.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ai, %bb.r ] ; 7 uses
  %.1 = phi i32 [ %.0121, %bb.q ], [ %.1.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 0, %bb.r ] ; 8 uses
  %i.bx = load i64, ptr %i.w, align 8, !tbaa !13  ; 6 uses
  %i.by = icmp eq i64 %i.bw, %i.bx
  br i1 %i.by, label %bb.ad, label %.thread91
end_hunk_2
begin_hunk_3
  %i.ch = load i8, ptr %i.cd, align 1, !tbaa !16
  %i.ci = sext i8 %i.ch to i32
  %i.cj = ptrtoint ptr %i.cg to i64
  %invariant.op183 = sub i64 1, %i.bx
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i41

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i41:   ; preds = %bb.ah, %.lr.ph.i.i40
  %.041.i.i42 = phi i64 [ %i.bw, %.lr.ph.i.i40 ], [ %i.co, %bb.ah ]
  %.02840.i.i43 = phi ptr [ %i.cf, %.lr.ph.i.i40 ], [ %i.cm, %bb.ah ]
  %i.ck = add i64 %.041.i.i42, %invariant.op183   ; 2 uses
  %.not34.i.i45 = icmp eq i64 %i.ck, 0
  br i1 %.not34.i.i45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit49.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i45

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i45:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i41
  %10 = call ptr @memchr(ptr noundef %.02840.i.i43, i32 noundef %i.ci, i64 noundef %i.ck) #33 ; 4 uses
  %.not34.i.i46 = icmp eq ptr %10, null
  br i1 %.not34.i.i46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit49.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i46

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i46: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i45
  %bcmp.i.i47 = call i32 @bcmp(ptr nonnull %10, ptr nonnull %i.cd, i64 %i.bx)
  %i.cl = icmp eq i32 %bcmp.i.i47, 0
  br i1 %i.cl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit49, label %bb.ah
end_hunk_3
begin_hunk_4
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit49.thread98: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit49
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit49.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit49.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i45, %bb.ah, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i41, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.ad, %bb.ag, %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit49.thread98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit49, %.thread91, %bb.p
  %cond = phi i1 [ %i.cc, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ true, %bb.p ], [ true, %.thread91 ], [ false, %bb.ad ], [ true, %bb.af ], [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit49 ], [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit49.thread98 ], [ true, %bb.ag ], [ true, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i41 ], [ true, %bb.ah ], [ true, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i45 ]
  %.3 = phi i32 [ %.mux109, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %.0121, %bb.p ], [ %.1, %.thread91 ], [ 1, %bb.ad ], [ %.1, %bb.af ], [ %.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit49 ], [ 2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit49.thread98 ], [ %.1, %bb.ag ], [ %.1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i41 ], [ %.1, %bb.ah ], [ %.1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i45 ] ; 3 uses
  %i.cq = load ptr, ptr %6, align 8, !tbaa !28    ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.s
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
end_hunk_4
