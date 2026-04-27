inline.NumInlined: 16097
inline.NumDeleted: 33
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AgcStableHashHermesValue0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29:bb.a
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.01545 = phi i64 [ %.0.copyload.i1776, %bb.y ], [ %i.hi, %bb.z ] ; 10 uses
  %.val1654 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.hk = getelementptr inbounds nuw i8, ptr %.val1654, i64 %i.gw
  %.0.copyload.i1778 = load i32, ptr %i.hk, align 1 ; 5 uses
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AgcStableHashHermesValue0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29:bb.a
  %.0.copyload.i1784 = load i64, ptr %i.it, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1784) #7, !srcloc !21
  %i.iu = lshr i64 %.01545, 47
  %i.iv = xor i64 %i.iu, %.01545                  ; 3 uses
  %i.iw = xor i64 %.01545, -5435081209227447693   ; 3 uses
  %i.ix = mul i64 %i.iw, -7070675565921424023     ; 2 uses
  %i.iy = lshr i64 %i.ix, 47
end_hunk_1
begin_hunk_2_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AgcStableHashHermesValue0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29:bb.a
  %i.ji = mul i64 %.01545, -5435081209227447693
  %i.jj = xor i64 %i.iv, %i.ji
  %i.jk = mul i64 %i.jj, -7070675565921424023     ; 2 uses
  %3 = xor i64 %i.jk, %.01545
  %i.jl = lshr i64 %3, 47
  %i.jm = xor i64 %.01545, %i.jl
  %i.jn = xor i64 %i.jm, %i.jk
  %i.jo = mul i64 %i.jn, -7070675565921424023     ; 2 uses
  %i.jp = lshr i64 %i.jo, 47
  %i.jq = xor i64 %i.jp, %i.jo
  %i.jr = mul i64 %i.jq, -7070675565921424023     ; 2 uses
  %i.js = add i64 %i.jr, %i.jh
  %i.jt = add i64 %i.js, %.0.copyload.i1784       ; 3 uses
  %i.ju = add nuw nsw i64 %i.ir, 40               ; 2 uses
  %.val1717 = load ptr, ptr %i.d, align 8, !tbaa !7
end_hunk_2
begin_hunk_3_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3AsliceEquals0x28unsigned0x20int0x2C0x20unsigned0x20int0x2C0x20hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x20const0x2A0x290x20const:bb.a
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.am
  %.4 = phi i32 [ %i.ds, %bb.am ], [ %i.ef, %bb.aq ], [ %i.du, %bb.ao ], [ %i.dv, %bb.ap ] ; 2 uses
  %.val740 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.eg = getelementptr inbounds nuw i8, ptr %.val740, i64 %i.b
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
end_hunk_3
begin_hunk_4_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3AsliceEquals0x28unsigned0x20int0x2C0x20unsigned0x20int0x2C0x20hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x20const0x2A0x290x20const:bb.a

bb.az:                                            ; preds = %bb.ay
  %i.fe = shl i32 %2, 1
  %5 = add i32 %.4, %i.fe
  %i.ff = add i32 %3, %2
  %i.fg = shl i32 %i.ff, 1
  %i.fh = add i32 %.4, %i.fg
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bb, %bb.az
  %.2671 = phi i32 [ %.5, %bb.az ], [ %i.fp, %bb.bb ] ; 2 uses
  %.2667 = phi i32 [ %5, %bb.az ], [ %i.fq, %bb.bb ] ; 2 uses
  %i.fi = zext i32 %.2667 to i64
  %.val782 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.fj = getelementptr inbounds nuw i8, ptr %.val782, i64 %i.fi
end_hunk_4
begin_hunk_5_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3AsliceEquals0x28unsigned0x20int0x2C0x20unsigned0x20int0x2C0x20hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x20const0x2A0x290x20const:bb.a
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.bd
  %.6 = phi i32 [ %i.fx, %bb.bd ], [ %i.gk, %bb.bh ], [ %i.fz, %bb.bf ], [ %i.ga, %bb.bg ] ; 2 uses
  %.val733 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.gl = getelementptr inbounds nuw i8, ptr %.val733, i64 %i.b
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
end_hunk_5
begin_hunk_6_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3AsliceEquals0x28unsigned0x20int0x2C0x20unsigned0x20int0x2C0x20hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x20const0x2A0x290x20const:bb.a

bb.bq:                                            ; preds = %bb.bp
  %i.hj = shl i32 %2, 1
  %6 = add i32 %.6, %i.hj
  %i.hk = add i32 %3, %2
  %i.hl = shl i32 %i.hk, 1
  %i.hm = add i32 %.6, %i.hl
  br label %bb.br

bb.br:                                            ; preds = %bb.bs, %bb.bq
  %.3672 = phi i32 [ %.7, %bb.bq ], [ %i.hs, %bb.bs ] ; 2 uses
  %.3668 = phi i32 [ %6, %bb.bq ], [ %i.ht, %bb.bs ] ; 2 uses
  %i.hn = zext i32 %.3668 to i64
  %.val781 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ho = getelementptr inbounds nuw i8, ptr %.val781, i64 %i.hn
end_hunk_6
