begin_hunk_0
  %i.i = load i8, ptr %i.a, align 1
  %i.j = sext i8 %i.i to i32
  %i.k = ptrtoint ptr %i.h to i64
  %invariant.op = sub i64 1, %i.c
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a:   ; preds = %bb.d, %.lr.ph.i.i
  %.041.i.i = phi i64 [ %i.e, %.lr.ph.i.i ], [ %i.p, %bb.d ]
  %.02840.i.i = phi ptr [ %i.g, %.lr.ph.i.i ], [ %i.n, %bb.d ]
  %i.l = add i64 %.041.i.i, %invariant.op         ; 2 uses
  %.not34.i.i.a = icmp eq i64 %i.l, 0
  br i1 %.not34.i.i.a, label %._crit_edge, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a
  %3 = tail call ptr @memchr(ptr noundef %.02840.i.i, i32 noundef %i.j, i64 noundef %i.l) #19 ; 4 uses
  %.not34.i.i = icmp eq ptr %3, null
  br i1 %.not34.i.i, label %._crit_edge, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %3, ptr nonnull %i.a, i64 %i.c)
  %i.m = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit, label %bb.d
end_hunk_0
begin_hunk_1
  %i.al = load i8, ptr %i.ad, align 1
  %i.am = sext i8 %i.al to i32
  %i.an = ptrtoint ptr %i.aj to i64
  %invariant.op86 = sub i64 1, %i.ae
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i15

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i15:   ; preds = %bb.k, %.lr.ph.i.i14
  %.041.i.i16 = phi i64 [ %i.ai, %.lr.ph.i.i14 ], [ %i.av, %bb.k ]
  %.02840.i.i17 = phi ptr [ %i.ak, %.lr.ph.i.i14 ], [ %i.at, %bb.k ]
  %i.ao = add i64 %.041.i.i16, %invariant.op86    ; 2 uses
  %.not34.i.i19 = icmp eq i64 %i.ao, 0
  br i1 %.not34.i.i19, label %._crit_edge, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i19

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i19:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i15
  %4 = tail call ptr @memchr(ptr noundef %.02840.i.i17, i32 noundef %i.am, i64 noundef %i.ao) #19 ; 4 uses
  %.not34.i.i20 = icmp eq ptr %4, null
  br i1 %.not34.i.i20, label %._crit_edge, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i20

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i20: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i19
  %bcmp.i.i21 = tail call i32 @bcmp(ptr nonnull %4, ptr nonnull %i.ad, i64 %i.ae)
  %i.ap = icmp eq i32 %bcmp.i.i21, 0
  br i1 %i.ap, label %bb.j, label %bb.k
end_hunk_1
begin_hunk_2
  %.not = icmp eq i64 %.1.i.i12, -1
  br i1 %.not, label %._crit_edge, label %bb.e, !llvm.loop !19

._crit_edge:                                      ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.d, %bb.g, %bb.i, %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit23, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i15, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i19, %bb.k, %bb.c, %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit
  ret void
}

end_hunk_2
