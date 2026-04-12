inline.NumInlined: 16806
inline.NumDeleted: 26
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AmathFround0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.0.copyload.i61 = load double, ptr %i.n, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i61) #8, !srcloc !37
  %i.o = fcmp uno double %.0.copyload.i61, 0.000000e+00 ; 2 uses
  br i1 %i.o, label %bb.c, label %bb.d, !prof !31

bb.c:                                             ; preds = %bb.b
  %i.p = bitcast double %.0.copyload.i61 to i64
  %i.q = or i64 %i.p, 9221120237041090560
  %i.r = bitcast i64 %i.q to double
  %5 = fptrunc double %i.r to float
  %6 = bitcast float %5 to i32
  %7 = or i32 %6, 2143289344
  %8 = bitcast i32 %7 to float
  br label %wasm_quietf.exit

bb.d:                                             ; preds = %bb.b
  %9 = fptrunc double %.0.copyload.i61 to float
  br label %wasm_quietf.exit

wasm_quietf.exit:                                 ; preds = %bb.d, %bb.c
  %.0.i62 = phi float [ %8, %bb.c ], [ %9, %bb.d ]
  %i.s = fpext float %.0.i62 to double
  %i.t = bitcast double %i.s to i64
  %i.u = select i1 %i.o, i64 9221120237041090560, i64 %i.t
  %i.v = zext i32 %1 to i64                       ; 2 uses
  %.val57 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %.val57, i64 %i.v
end_hunk_0
