inline.NumInlined: 66
inline.NumDeleted: 44
begin_hunk_0_@_ZN5cppgc8internal13NameTraitBase24GetNameFromTypeSignatureEPKc:bb.a
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.p, %bb.q
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %spec.select.i.i.i, ptr %i.ah, align 8, !alias.scope !8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %spec.select.i.i.i
  store i8 0, ptr %i.ai, align 1
  %i.aj = load i64, ptr %i.ah, align 8
  %i.ak = add i64 %i.aj, 1                        ; 2 uses
  %i.al = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ak) #11 ; 2 uses
  %i.am = load ptr, ptr %2, align 8
  %i.an = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.al, i64 noundef %i.ak, ptr noundef nonnull @.str.1, ptr noundef %i.am) #9 ; 0 uses
  %i.ao = load ptr, ptr %2, align 8               ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.w
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
end_hunk_0
