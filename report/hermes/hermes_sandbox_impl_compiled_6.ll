inline.NumInlined: 8639
inline.NumDeleted: 26
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3Aunescape0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  %.val2860 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %.val2860, i64 %i.aj
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  %.0.copyload.i2962 = load i32, ptr %i.aw, align 1 ; 25 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2962) #8, !srcloc !14
  %i.ax = and i32 %.0.copyload.i2962, 1073741824  ; 10 uses
  %.val2859 = load ptr, ptr %i.d, align 8, !tbaa !7
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3Aunescape0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
bb.dh:                                            ; preds = %bb.cv, %bb.cr, %bb.dg, %bb.cw, %bb.ct
  %.10 = phi i32 [ %.0.copyload.i2963, %bb.cr ], [ %i.nw, %bb.ct ], [ %i.qc, %bb.dg ], [ %i.nz, %bb.cv ], [ %i.ok, %bb.cw ]
  %i.qd = shl nuw i32 %.0.copyload.i2962, 1
  %i.qe = and i32 %i.qd, 2147483646
  %5 = and i32 %.0.copyload.i2962, 1073741823
  %i.qf = add i32 %i.mk, %5
  %6 = shl i32 %i.qf, 1
  %i.qg = add i32 %6, %.10
  %i.qh = zext i32 %i.qg to i64
  %.val2950 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.qi = getelementptr inbounds nuw i8, ptr %.val2950, i64 %i.qh
end_hunk_1
begin_hunk_2_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3Aunescape0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a

bb.gk:                                            ; preds = %bb.gc, %bb.fy, %bb.gj, %bb.gd, %bb.ga
  %.4 = phi i32 [ %.0.copyload.i2963, %bb.fy ], [ %i.aca, %bb.ga ], [ %i.ado, %bb.gj ], [ %i.acd, %bb.gc ], [ %i.aco, %bb.gd ]
  %i.adp = and i32 %.0.copyload.i2962, 1073741823 ; 2 uses
  %7 = add i32 %i.aao, %i.adp
  %8 = shl i32 %7, 1
  %i.adq = add i32 %8, %.4
  %i.adr = zext i32 %i.adq to i64
  %.val2945 = load ptr, ptr %i.d, align 8, !tbaa !7
end_hunk_2
begin_hunk_3_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3Aunescape0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a

bb.gy:                                            ; preds = %bb.gm, %bb.gx, %bb.gw, %bb.gv, %bb.go
  %.02573 = phi i32 [ %i.aem, %bb.go ], [ %i.afr, %bb.gx ], [ %i.afg, %bb.gv ], [ %i.afh, %bb.gw ], [ %.0.copyload.i2963, %bb.gm ]
  %9 = add i32 %.52591, %i.adp
  %10 = shl i32 %9, 1
  %i.afs = add i32 %10, %.02573
  %i.aft = zext i32 %i.afs to i64
  %.val2944 = load ptr, ptr %i.d, align 8, !tbaa !7
end_hunk_3
