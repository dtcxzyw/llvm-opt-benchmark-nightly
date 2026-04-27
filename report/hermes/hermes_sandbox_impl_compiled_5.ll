inline.NumInlined: 16806
inline.NumDeleted: 26
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AregExpPrototypeSymbolMatchAll0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  %.val1361 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gc = getelementptr inbounds nuw i8, ptr %.val1361, i64 %i.e
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %.0.copyload.i1443 = load i32, ptr %i.gd, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1443) #8, !srcloc !19
  %i.ge = and i32 %.0.copyload.i1443, 1073741824
  %.val1360 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gf = getelementptr inbounds nuw i8, ptr %.val1360, i64 %i.e
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 12
  %.0.copyload.i1444 = load i32, ptr %i.gg, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1444) #8, !srcloc !19
  %i.gh = icmp slt i32 %.0.copyload.i1443, 0
  %.not1284 = icmp eq i32 %i.ge, 0                ; 2 uses
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AregExpPrototypeSymbolMatchAll0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a

bb.bn:                                            ; preds = %bb.aw
  %i.ks = shl nuw nsw i32 %.0.copyload.i1443, 1
  %i.kt = add i32 %.0.copyload.i1444, %i.ks       ; 3 uses
  %.val1342 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ku = getelementptr inbounds nuw i8, ptr %.val1342, i64 %i.e
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 20
  %.0.copyload.i1471 = load i32, ptr %i.kv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1471) #8, !srcloc !19
  %i.kw = shl i32 %.0.copyload.i1471, 1
  %i.kx = add i32 %i.kw, %i.kt                    ; 2 uses
  %.not1283 = icmp ugt i32 %i.kx, %i.kt
  br i1 %.not1283, label %.preheader1494, label %.loopexit

end_hunk_1
begin_hunk_2_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AregExpPrototypeSymbolMatchAll0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1473) #8, !srcloc !19
  %i.lk = add i32 %.0.copyload.i1473, 12          ; 2 uses
  %i.ll = shl nuw i32 %.0.copyload.i1443, 1
  %i.lm = and i32 %i.ll, 2147483646               ; 3 uses
  %i.ln = add i32 %.31236, %i.lm                  ; 3 uses
  %.val1340 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lo = getelementptr inbounds nuw i8, ptr %.val1340, i64 %i.e
end_hunk_2
begin_hunk_3_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AregExpPrototypeSymbolMatchAll0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  %i.lt = add i32 %.0.copyload.i1473, 8           ; 2 uses
  %i.lu = and i32 %.0.copyload.i1475, 251658240
  %i.lv = zext i32 %i.lt to i64
  %5 = shl i32 %.0.copyload.i1474, 1
  %i.lw = add i32 %5, %i.lm
  br label %bb.br

bb.br:                                            ; preds = %bb.bu, %bb.bq
end_hunk_3
begin_hunk_4_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AregExpPrototypeSymbolMatchAll0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a

bb.bt:                                            ; preds = %bb.br, %.fold.split1294, %bb.bs
  %.41237 = phi i32 [ %i.lk, %bb.br ], [ %i.mg, %bb.bs ], [ %i.lt, %.fold.split1294 ]
  %i.mh = add i32 %i.lw, %.41237
  %.not1282 = icmp ugt i32 %i.mh, %.41244
  br i1 %.not1282, label %bb.bu, label %.loopexit.loopexit1573

end_hunk_4
begin_hunk_5_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AregExpPrototypeSymbolMatchAll0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1481) #8, !srcloc !22
  %i.mu = icmp slt i8 %.0.copyload.i1481, 0
  %i.mv = select i1 %i.mu, i32 %.0.copyload.i1480, i32 %i.lk
  %6 = shl i32 %.0.copyload.i1474, 1
  %i.mw = add i32 %6, %i.lm
  %i.mx = add i32 %i.mw, %i.mv                    ; 2 uses
  %.not1280 = icmp ult i32 %i.ln, %i.mx
  br i1 %.not1280, label %.preheader1497, label %.loopexit

end_hunk_5
