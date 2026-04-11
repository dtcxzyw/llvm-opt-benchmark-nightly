inline.NumInlined: 16806
inline.NumDeleted: 26
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AstringPrototypeSubstring0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
bb.k:                                             ; preds = %bb.i
  %i.bg = add nuw nsw i64 %i.bb, 32               ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val309, i64 %i.bg
  %.0.copyload.i340 = load double, ptr %i.bh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i340) #8, !srcloc !37
  %i.bi = and i32 %.0.copyload.i337, 2147483647
  %i.bj = uitofp nneg i32 %i.bi to double         ; 6 uses
  %i.bk = icmp ult i32 %.0.copyload.i338, 2
  br i1 %i.bk, label %bb.p, label %bb.l

end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AstringPrototypeSubstring0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.k, %bb.o
  %.0 = phi double [ %i.bj, %bb.k ], [ %i.bj, %bb.l ], [ %i.by, %bb.o ] ; 2 uses
  %5 = fcmp olt double %.0.copyload.i340, 0.000000e+00
  %6 = select i1 %5, double 0.000000e+00, double %.0.copyload.i340 ; 2 uses
  %7 = fcmp ogt double %6, %i.bj
  %8 = select i1 %7, double %i.bj, double %6      ; 3 uses
  %9 = fcmp olt double %8, 0x41F0000000000000
  %10 = fcmp oge double %8, 0.000000e+00
  %11 = and i1 %9, %10
  %12 = fptoui double %8 to i32
  %spec.select = select i1 %11, i32 %12, i32 0    ; 2 uses
  %13 = fcmp olt double %.0, 0.000000e+00
  %14 = select i1 %13, double 0.000000e+00, double %.0 ; 2 uses
  %15 = fcmp ogt double %14, %i.bj
  %16 = select i1 %15, double %i.bj, double %14   ; 3 uses
  %17 = fcmp olt double %16, 0x41F0000000000000
  %i.bz = fcmp oge double %16, 0.000000e+00
  %i.ca = and i1 %17, %i.bz
  %i.cb = fptoui double %16 to i32
  %.0298 = select i1 %i.ca, i32 %i.cb, i32 0      ; 2 uses
  %i.cc = tail call i32 @llvm.umin.i32(i32 %.0298, i32 %spec.select) ; 2 uses
  %i.cd = tail call i32 @llvm.umax.i32(i32 %.0298, i32 %spec.select)
end_hunk_1
