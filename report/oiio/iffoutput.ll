begin_hunk_0
  %.sroa.speculated1418 = call i32 @llvm.umin.i32(i32 %i.et, i32 %i.ez)
  %i.fa = add i32 %.sroa.speculated1418, -1       ; 21 uses
  %i.fb = load i32, ptr %i.au, align 8, !tbaa !69
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.fb, i32 %i.eq)
  %i.fc = add i32 %.sroa.speculated, -1           ; 15 uses
  %i.fd = sub i32 %i.fa, %i.ey
  %i.fe = add i32 %i.fd, 1                        ; 2 uses
  %i.ff = sub i32 %i.fc, %i.ep
  %30 = add i32 %i.ff, 1                          ; 2 uses
  %i.fg = load i8, ptr %i.aa, align 1, !tbaa !73
  %.not472 = icmp eq i8 %i.fg, 0
  br i1 %.not472, label %bb.fa, label %bb.f
end_hunk_0
begin_hunk_1
  br label %.body

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.fu = mul i32 %30, %i.fe                      ; 8 uses
  %i.fv = zext i32 %i.fu to i64                   ; 6 uses
  %i.fw = load i8, ptr %i.w, align 8, !tbaa !76
  %i.fx = lshr i8 %i.fw, 3
end_hunk_1
begin_hunk_2
  br i1 %i.ang, label %bb.fe, label %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit

bb.fe:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i795
  %i.anq = mul i32 %30, %i.fe                     ; 5 uses
  %i.anr = zext i32 %i.anq to i64                 ; 3 uses
  %i.ans = load i8, ptr %i.ae, align 8, !tbaa !78
  %.not.i800 = icmp eq i8 %i.ans, 0               ; 2 uses
end_hunk_2
