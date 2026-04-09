inline.NumInlined: 310
inline.NumDeleted: 143
begin_hunk_0_@_ZN6Assimp19ComputeMaterialHashEPK10aiMaterialb:bb.a
  br i1 %.not20, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 4 uses
  %i.i = load i32, ptr %i.e, align 8              ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.g
end_hunk_0
begin_hunk_1_@_ZN6Assimp19ComputeMaterialHashEPK10aiMaterialb:bb.a
bb.g:                                             ; preds = %bb.f, %bb.e
  %.056.i = phi i32 [ %i.l, %bb.f ], [ %i.i, %bb.e ] ; 3 uses
  %i.m = and i32 %.056.i, 3
  %i.n = lshr i32 %.056.i, 2                      ; 4 uses
  %.not60.i = icmp eq i32 %i.n, 0
  br i1 %.not60.i, label %._crit_edge.i, label %.lr.ph.i.preheader

end_hunk_1
begin_hunk_2_@_ZN6Assimp19ComputeMaterialHashEPK10aiMaterialb:bb.a
  %i.w = shl i32 %i.r, 16
  %i.x = xor i32 %i.v, %i.w
  %i.y = xor i32 %i.x, %i.r                       ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.aa = lshr i32 %i.y, 11
  %i.ab = add i32 %i.aa, %i.y                     ; 2 uses
  %i.ac = add nsw i32 %i.n, -1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa90.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.z, %.lr.ph.i.prol ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i.preheader ], [ %i.ab, %.lr.ph.i.prol ]
  %.05463.i.unr = phi ptr [ %i.h, %.lr.ph.i.preheader ], [ %i.z, %.lr.ph.i.prol ]
  %.05562.i.unr = phi i32 [ %.070, %.lr.ph.i.preheader ], [ %i.ab, %.lr.ph.i.prol ]
  %.15761.i.unr = phi i32 [ %i.n, %.lr.ph.i.preheader ], [ %i.ac, %.lr.ph.i.prol ]
  %i.ad = icmp eq i32 %i.n, 1
  br i1 %i.ad, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.05463.i = phi ptr [ %i.bb, %.lr.ph.i ], [ %.05463.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
end_hunk_2
begin_hunk_3_@_ZN6Assimp19ComputeMaterialHashEPK10aiMaterialb:bb.a
  %i.ay = shl i32 %i.at, 16
  %i.az = xor i32 %i.ax, %i.ay
  %i.ba = xor i32 %i.az, %i.at                    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.05463.i, i64 8 ; 2 uses
  %i.bc = lshr i32 %i.ba, 11
  %i.bd = add i32 %i.bc, %i.ba                    ; 2 uses
  %i.be = add nsw i32 %.15761.i, -2               ; 2 uses
  %.not.i.1 = icmp eq i32 %i.be, 0
  br i1 %.not.i.1, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !24

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.g
  %.055.lcssa.i = phi i32 [ %.070, %bb.g ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.bd, %.lr.ph.i ] ; 4 uses
  %.054.lcssa.i = phi ptr [ %i.h, %bb.g ], [ %.lcssa90.unr, %.lr.ph.i.prol.loopexit ], [ %i.bb, %.lr.ph.i ] ; 4 uses
  switch i32 %i.m, label %default.unreachable [
    i32 3, label %bb.h
    i32 2, label %bb.i
end_hunk_3
begin_hunk_4_@_ZN6Assimp19ComputeMaterialHashEPK10aiMaterialb:bb.a
  %i.cq = lshr i32 %i.cp, 6
  %i.cr = add i32 %i.cq, %i.cp                    ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.e, i64 1048
  %i.ct = load ptr, ptr %i.cs, align 8            ; 7 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %_Z13SuperFastHashPKcjj.exit33, label %bb.k

end_hunk_4
begin_hunk_5_@_ZN6Assimp19ComputeMaterialHashEPK10aiMaterialb:bb.a
bb.m:                                             ; preds = %bb.l, %bb.k
  %.056.i21 = phi i32 [ %i.cz, %bb.l ], [ %i.cw, %bb.k ] ; 3 uses
  %i.da = and i32 %.056.i21, 3
  %i.db = lshr i32 %.056.i21, 2                   ; 4 uses
  %.not60.i22 = icmp eq i32 %i.db, 0
  br i1 %.not60.i22, label %._crit_edge.i28, label %.lr.ph.i23.preheader

end_hunk_5
begin_hunk_6_@_ZN6Assimp19ComputeMaterialHashEPK10aiMaterialb:bb.a
  %i.dk = shl i32 %i.df, 16
  %i.dl = xor i32 %i.dj, %i.dk
  %i.dm = xor i32 %i.dl, %i.df                    ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ct, i64 4 ; 2 uses
  %i.do = lshr i32 %i.dm, 11
  %i.dp = add i32 %i.do, %i.dm                    ; 2 uses
  %i.dq = add nsw i32 %i.db, -1
  br label %.lr.ph.i23.prol.loopexit

.lr.ph.i23.prol.loopexit:                         ; preds = %.lr.ph.i23.prol, %.lr.ph.i23.preheader
  %.lcssa92.unr = phi ptr [ poison, %.lr.ph.i23.preheader ], [ %i.dn, %.lr.ph.i23.prol ]
  %.lcssa91.unr = phi i32 [ poison, %.lr.ph.i23.preheader ], [ %i.dp, %.lr.ph.i23.prol ]
  %.05463.i24.unr = phi ptr [ %i.ct, %.lr.ph.i23.preheader ], [ %i.dn, %.lr.ph.i23.prol ]
  %.05562.i25.unr = phi i32 [ %i.cr, %.lr.ph.i23.preheader ], [ %i.dp, %.lr.ph.i23.prol ]
  %.15761.i26.unr = phi i32 [ %i.db, %.lr.ph.i23.preheader ], [ %i.dq, %.lr.ph.i23.prol ]
  %i.dr = icmp eq i32 %i.db, 1
  br i1 %i.dr, label %._crit_edge.i28, label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.lr.ph.i23.prol.loopexit, %.lr.ph.i23
  %.05463.i24 = phi ptr [ %i.ep, %.lr.ph.i23 ], [ %.05463.i24.unr, %.lr.ph.i23.prol.loopexit ] ; 5 uses
end_hunk_6
begin_hunk_7_@_ZN6Assimp19ComputeMaterialHashEPK10aiMaterialb:bb.a
  %i.em = shl i32 %i.eh, 16
  %i.en = xor i32 %i.el, %i.em
  %i.eo = xor i32 %i.en, %i.eh                    ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.05463.i24, i64 8 ; 2 uses
  %i.eq = lshr i32 %i.eo, 11
  %i.er = add i32 %i.eq, %i.eo                    ; 2 uses
  %i.es = add nsw i32 %.15761.i26, -2             ; 2 uses
  %.not.i27.1 = icmp eq i32 %i.es, 0
  br i1 %.not.i27.1, label %._crit_edge.i28, label %.lr.ph.i23, !llvm.loop !24

._crit_edge.i28:                                  ; preds = %.lr.ph.i23.prol.loopexit, %.lr.ph.i23, %bb.m
  %.055.lcssa.i29 = phi i32 [ %i.cr, %bb.m ], [ %.lcssa91.unr, %.lr.ph.i23.prol.loopexit ], [ %i.er, %.lr.ph.i23 ] ; 4 uses
  %.054.lcssa.i30 = phi ptr [ %i.ct, %bb.m ], [ %.lcssa92.unr, %.lr.ph.i23.prol.loopexit ], [ %i.ep, %.lr.ph.i23 ] ; 4 uses
  switch i32 %i.da, label %default.unreachable [
    i32 3, label %bb.n
    i32 2, label %bb.o
end_hunk_7
begin_hunk_8_@_ZN6Assimp19ComputeMaterialHashEPK10aiMaterialb:bb.a
  ]

bb.n:                                             ; preds = %._crit_edge.i28
  %i.et = load i16, ptr %.054.lcssa.i30, align 1
  %i.eu = zext i16 %i.et to i32
  %i.ev = add i32 %.055.lcssa.i29, %i.eu          ; 2 uses
  %i.ew = shl i32 %i.ev, 16
  %i.ex = getelementptr inbounds nuw i8, ptr %.054.lcssa.i30, i64 2
  %i.ey = load i8, ptr %i.ex, align 1
  %i.ez = tail call i8 @llvm.abs.i8(i8 %i.ey, i1 false)
  %i.fa = zext i8 %i.ez to i32
end_hunk_8
begin_hunk_9_@_ZN6Assimp19ComputeMaterialHashEPK10aiMaterialb:bb.a
  br label %bb.q

bb.o:                                             ; preds = %._crit_edge.i28
  %i.fg = load i16, ptr %.054.lcssa.i30, align 1
  %i.fh = zext i16 %i.fg to i32
  %i.fi = add i32 %.055.lcssa.i29, %i.fh          ; 2 uses
  %i.fj = shl i32 %i.fi, 11
  %i.fk = xor i32 %i.fj, %i.fi                    ; 2 uses
  %i.fl = lshr i32 %i.fk, 17
end_hunk_9
begin_hunk_10_@_ZN6Assimp19ComputeMaterialHashEPK10aiMaterialb:bb.a
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.i28
  %i.fn = load i8, ptr %.054.lcssa.i30, align 1
  %i.fo = sext i8 %i.fn to i32
  %i.fp = add i32 %.055.lcssa.i29, %i.fo          ; 2 uses
  %i.fq = shl i32 %i.fp, 10
  %i.fr = xor i32 %i.fq, %i.fp                    ; 2 uses
  %i.fs = lshr i32 %i.fr, 1
end_hunk_10
begin_hunk_11_@_ZN6Assimp19ComputeMaterialHashEPK10aiMaterialb:bb.a
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %._crit_edge.i28
  %.1.i31 = phi i32 [ %.055.lcssa.i29, %._crit_edge.i28 ], [ %i.ff, %bb.n ], [ %i.fm, %bb.o ], [ %i.ft, %bb.p ] ; 2 uses
  %i.fu = shl i32 %.1.i31, 3
  %i.fv = xor i32 %i.fu, %.1.i31                  ; 2 uses
  %i.fw = lshr i32 %i.fv, 5
end_hunk_11
