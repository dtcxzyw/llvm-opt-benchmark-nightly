begin_hunk_0
  %i.ia = ptrtoint ptr %i.hz to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %.lr.ph.i.i, %bb.av
  %.041.i.i = phi i64 [ %i.hx, %.lr.ph.i.i ], [ %i.ig, %bb.av ]
  %.02840.i.i = phi ptr [ %i.hy, %.lr.ph.i.i ], [ %i.ie, %bb.av ]
  %i.ib = add i64 %.041.i.i, -25
  %i.ic = call ptr @memchr(ptr noundef %.02840.i.i, i32 noundef 69, i64 noundef %i.ib) #32 ; 4 uses
  %.not34.i.i = icmp eq ptr %i.ic, null
  br i1 %.not34.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

end_hunk_0
begin_hunk_1
  %.not33.i.i = icmp ult i64 %i.ig, 26
  br i1 %.not33.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread: ; preds = %bb.av, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %_ZNK4node16MaybeStackBufferIcLm1024EE8ToStringB5cxx11Ev.exit, %bb.au
  store i64 -1, ptr %i.e, align 8
  br label %bb.ax

end_hunk_1
begin_hunk_2
  %i.jw = ptrtoint ptr %i.jv to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i150

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i150:  ; preds = %.lr.ph.i.i149, %bb.bl
  %.041.i.i151 = phi i64 [ %i.jt, %.lr.ph.i.i149 ], [ %i.kc, %bb.bl ]
  %.02840.i.i152 = phi ptr [ %i.ju, %.lr.ph.i.i149 ], [ %i.ka, %bb.bl ]
  %i.jx = add i64 %.041.i.i151, -42
  %i.jy = call ptr @memchr(ptr noundef %.02840.i.i152, i32 noundef 78, i64 noundef %i.jx) #32 ; 4 uses
  %.not34.i.i154 = icmp eq ptr %i.jy, null
  br i1 %.not34.i.i154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit158.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i155

end_hunk_2
begin_hunk_3
  %.not33.i.i157 = icmp ult i64 %i.kc, 43
  br i1 %.not33.i.i157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit158.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i150, !llvm.loop !55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit158.thread: ; preds = %bb.bl, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i150, %_ZNK4node16MaybeStackBufferIcLm1024EE8ToStringB5cxx11Ev.exit145, %bb.bk
  store i64 -1, ptr %i.f, align 8
  br label %bb.bn

end_hunk_3
begin_hunk_4
  %i.iw = load i8, ptr %i.iq, align 1
  %i.ix = sext i8 %i.iw to i32
  %i.iy = ptrtoint ptr %i.iv to i64
  %invariant.op = sub i64 1, %i.ir
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a:   ; preds = %bb.ao, %.lr.ph.i.i
  %.041.i.i = phi i64 [ %i.is, %.lr.ph.i.i ], [ %i.jd, %bb.ao ]
  %.02840.i.i = phi ptr [ %i.iu, %.lr.ph.i.i ], [ %i.jb, %bb.ao ]
  %i.iz = add i64 %.041.i.i, %invariant.op        ; 2 uses
  %.not34.i.i.a = icmp eq i64 %i.iz, 0
  br i1 %.not34.i.i.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueEmE4typeESC_m.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a
  %47 = call ptr @memchr(ptr noundef %.02840.i.i, i32 noundef %i.ix, i64 noundef %i.iz) #32 ; 4 uses
  %.not34.i.i = icmp eq ptr %47, null
  br i1 %.not34.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueEmE4typeESC_m.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %47, ptr nonnull %i.iq, i64 %i.ir)
  %i.ja = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ja, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueEmE4typeESC_m.exit, label %bb.ao
end_hunk_4
begin_hunk_5
  %.not33.i.i = icmp ult i64 %i.jd, %i.ir
  br i1 %.not33.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueEmE4typeESC_m.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a, !llvm.loop !55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueEmE4typeESC_m.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a, %bb.ao, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.am, %bb.an
  store i64 -1, ptr %i.b, align 8
  br label %bb.ap

end_hunk_5
