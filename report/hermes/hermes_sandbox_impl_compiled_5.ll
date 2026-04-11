inline.NumInlined: 16806
inline.NumDeleted: 26
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AstringPrototypeSubstring0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
bb.k:                                             ; preds = %bb.i
  %i.bg = add nuw nsw i64 %i.bb, 32               ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val309, i64 %i.bg
  %.0.copyload.i340 = load double, ptr %i.bh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i340) #8, !srcloc !37
  %i.bi = and i32 %.0.copyload.i337, 2147483647
  %i.bj = uitofp nneg i32 %i.bi to double         ; 3 uses
  %i.bk = icmp ult i32 %.0.copyload.i338, 2
  br i1 %i.bk, label %bb.p, label %bb.l

end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AstringPrototypeSubstring0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.k, %bb.o
  %.0 = phi double [ %i.bj, %bb.k ], [ %i.bj, %bb.l ], [ %i.by, %bb.o ]
  %5 = insertelement <2 x double> poison, double %.0, i64 0
  %6 = insertelement <2 x double> %5, double %.0.copyload.i340, i64 1 ; 2 uses
  %7 = fcmp olt <2 x double> %6, zeroinitializer
  %8 = select <2 x i1> %7, <2 x double> zeroinitializer, <2 x double> %6 ; 2 uses
  %9 = insertelement <2 x double> poison, double %i.bj, i64 0
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %11 = fcmp ogt <2 x double> %8, %10
  %12 = select <2 x i1> %11, <2 x double> %10, <2 x double> %8 ; 3 uses
  %13 = extractelement <2 x double> %12, i64 1    ; 2 uses
  %14 = fcmp oge double %13, 0.000000e+00
  %15 = fcmp olt <2 x double> %12, splat (double 0x41F0000000000000) ; 2 uses
  %16 = extractelement <2 x i1> %15, i64 1
  %17 = and i1 %16, %14
  %18 = fptoui double %13 to i32
  %spec.select = select i1 %17, i32 %18, i32 0    ; 2 uses
  %19 = extractelement <2 x double> %12, i64 0    ; 2 uses
  %i.bz = fcmp oge double %19, 0.000000e+00
  %20 = extractelement <2 x i1> %15, i64 0
  %i.ca = and i1 %20, %i.bz
  %i.cb = fptoui double %19 to i32
  %.0298 = select i1 %i.ca, i32 %i.cb, i32 0      ; 2 uses
  %i.cc = tail call i32 @llvm.umin.i32(i32 %.0298, i32 %spec.select) ; 2 uses
  %i.cd = tail call i32 @llvm.umax.i32(i32 %.0298, i32 %spec.select)
end_hunk_1
