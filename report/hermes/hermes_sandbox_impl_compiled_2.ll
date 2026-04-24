inline.NumInlined: 21302
inline.NumDeleted: 19
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Aparser0x3A0x3Adetail0x3A0x3AJSParserImpl0x3A0x3AparsePropertyAssignment0x28bool0x29:bb.a
  %.not3260 = phi i1 [ false, %bb.cs ], [ true, %bb.ca ], [ false, %bb.bk ], [ false, %bb.cf ], [ false, %bb.cq ]
  %.9 = phi i32 [ %.3.sink, %bb.cs ], [ %.0.copyload.i3947, %bb.ca ], [ %.4, %bb.bk ], [ %.7, %bb.cf ], [ %.0.copyload.i3977, %bb.cq ] ; 2 uses
  %.03211.shrunk = phi i1 [ false, %bb.cs ], [ %i.ady, %bb.ca ], [ false, %bb.bk ], [ false, %bb.cf ], [ %i.akj, %bb.cq ] ; 2 uses
  %.13210.a = phi i32 [ 0, %bb.cs ], [ 1, %bb.ca ], [ 0, %bb.bk ], [ 0, %bb.cf ], [ 0, %bb.cq ] ; 2 uses
  %.03207.shrunk = phi i1 [ false, %bb.cs ], [ %i.wd, %bb.ca ], [ %i.wd, %bb.bk ], [ false, %bb.cf ], [ false, %bb.cq ] ; 2 uses
  %.13206.shrunk = phi i1 [ false, %bb.cs ], [ %i.aeh, %bb.ca ], [ false, %bb.bk ], [ false, %bb.cf ], [ %i.akt, %bb.cq ]
  %.03211 = zext i1 %.03211.shrunk to i32
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Aparser0x3A0x3Adetail0x3A0x3AJSParserImpl0x3A0x3AparsePropertyAssignment0x28bool0x29:bb.a
  %.0.copyload.i3992 = load i8, ptr %i.aob, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3992) #7, !srcloc !20
  %.val3285 = load ptr, ptr %i.d, align 8, !tbaa !18
  %4 = trunc nuw nsw i32 %.13210.a to i8
  %i.aoc = getelementptr inbounds nuw i8, ptr %.val3285, i64 %i.aoa
  store i8 %4, ptr %i.aoc, align 1
  %.not3263 = icmp eq i32 %.0.copyload.i3980, 53
  br i1 %.not3263, label %bb.de, label %bb.dd

end_hunk_1
begin_hunk_2_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AtoString0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3APseudoHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x2C0x20unsigned0x20char0x29:bb.a
  %.12807 = phi i32 [ %i.iq, %bb.bi ], [ %i.ip, %bb.bk ], [ %i.lp, %bb.bj ] ; 3 uses
  %i.lr = phi i1 [ false, %bb.bi ], [ false, %bb.bk ], [ true, %bb.bj ]
  %.not2879 = phi i1 [ false, %bb.bi ], [ true, %bb.bk ], [ false, %bb.bj ] ; 4 uses
  %.12797.a = phi i32 [ 2, %bb.bi ], [ 0, %bb.bk ], [ 1, %bb.bj ] ; 11 uses
  %i.ls = add nsw i32 %.12797.a, %.12807          ; 2 uses
  %.not2870 = icmp eq i32 %i.ls, 0
  br i1 %.not2870, label %.loopexit3233, label %bb.bm
end_hunk_2
begin_hunk_3_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AtoString0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3APseudoHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x2C0x20unsigned0x20char0x29:bb.a
  %i.pn = sub nsw i32 0, %i.nn
  %i.po = and i32 %i.nn, 31
  %i.pp = and i32 %i.pn, 31
  %wide.trip.count = zext nneg i32 %.12797.a to i64
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.ci
end_hunk_3
begin_hunk_4_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AtoString0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3APseudoHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x2C0x20unsigned0x20char0x29:bb.a
  store i32 %i.pv, ptr %i.pw, align 1
  %indvars.iv.next3301 = add nuw nsw i64 %indvars.iv3300, 1 ; 2 uses
  %i.px = lshr i32 %.0.copyload.i3154, %i.pp
  %exitcond = icmp eq i64 %indvars.iv.next3301, %wide.trip.count
  br i1 %exitcond, label %.loopexit3229, label %bb.ci

.loopexit3229:                                    ; preds = %bb.ci, %.loopexit3231, %bb.cb
end_hunk_4
begin_hunk_5_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AtoString0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3APseudoHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x2C0x20unsigned0x20char0x29:bb.a
  %i.qc = shl nuw nsw i32 %.12797.a, 2
  %i.qd = add i32 %i.lb, -8
  %i.qe = add i32 %i.qd, %i.qc
  %5 = zext i32 %i.qe to i64                      ; 2 uses
  %i.qf = zext nneg i32 %.12797.a to i64          ; 2 uses
  %i.qg = zext i32 %.32809 to i64
  br label %bb.cj

end_hunk_5
begin_hunk_6_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AtoString0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3APseudoHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x2C0x20unsigned0x20char0x29:bb.a

bb.cm:                                            ; preds = %bb.cl
  %.val3108 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qu = getelementptr inbounds nuw i8, ptr %.val3108, i64 %5
  %.0.copyload.i3157 = load i32, ptr %i.qu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3157) #7, !srcloc !40
  %i.qv = zext i32 %.0.copyload.i3157 to i64
end_hunk_6
begin_hunk_7_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AtoString0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3APseudoHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x2C0x20unsigned0x20char0x29:bb.a

bb.cp:                                            ; preds = %bb.co
  %.val3106 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rh = getelementptr inbounds nuw i8, ptr %.val3106, i64 %5
  %.0.copyload.i3159 = load i32, ptr %i.rh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3159) #7, !srcloc !40
  %i.ri = zext i32 %.0.copyload.i3159 to i64
end_hunk_7
begin_hunk_8_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AtoString0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3APseudoHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x2C0x20unsigned0x20char0x29:bb.a
  %i.sl = sub nsw i64 %i.sj, %i.sk                ; 2 uses
  %i.sm = and i64 %i.sl, 4294967295               ; 2 uses
  %indvars.iv.next3307 = add nuw nsw i64 %indvars.iv3306, 1 ; 2 uses
  %.not2884 = icmp eq i64 %indvars.iv.next3307, %i.qf
  br i1 %.not2884, label %bb.cs, label %.preheader3223

bb.cs:                                            ; preds = %.preheader3223
end_hunk_8
begin_hunk_9_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AtoString0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3APseudoHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x2C0x20unsigned0x20char0x29:bb.a
  %i.tp = select i1 %i.to, i32 %.62793, i32 0
  %.22761 = select i1 %.not2886, i32 1, i32 %i.tp ; 2 uses
  %indvars.iv.next3311 = add nuw nsw i64 %indvars.iv3310, 1 ; 2 uses
  %.not2887 = icmp eq i64 %indvars.iv.next3311, %i.qf
  br i1 %.not2887, label %bb.cv, label %bb.cu

bb.cv:                                            ; preds = %bb.cu
end_hunk_9
