inline.NumInlined: 19
inline.NumDeleted: 4
begin_hunk_0_@_ZN13duckdb_brotli26BrotliCompressFragmentFastEPNS_18BrotliOnePassArenaEPKhmiPimPmPh:bb.a
  tail call fastcc void @_ZL31BrotliCompressFragmentFastImpl9PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6, ptr noundef %7)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  tail call fastcc void @_ZL32BrotliCompressFragmentFastImpl11PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6, ptr noundef %7)
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  tail call fastcc void @_ZL32BrotliCompressFragmentFastImpl13PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6, ptr noundef %7)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  tail call fastcc void @_ZL32BrotliCompressFragmentFastImpl15PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6, ptr noundef %7)
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f, %bb.e, %bb.d, %bb.c
  %i.e = load i64, ptr %6, align 8, !tbaa !7
  %i.f = sub i64 %i.e, %i.a
  %i.g = shl i64 %2, 3                            ; 2 uses
  %i.h = add i64 %i.g, 31
  %i.i = icmp ugt i64 %i.f, %i.h
  br i1 %i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.j = trunc i64 %i.a to i8
  %i.k = and i8 %i.j, 7
  %notmask.i.i = shl nsw i8 -1, %i.k
  %i.l = xor i8 %notmask.i.i, -1
  %i.m = lshr i64 %i.a, 3
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 %i.m ; 4 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !9
  %i.p = and i8 %i.o, %i.l
  store i8 %i.p, ptr %i.n, align 1, !tbaa !9
  store i64 %i.a, ptr %6, align 8, !tbaa !7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13)
  %i.q = load i8, ptr %i.n, align 1, !tbaa !9, !alias.scope !13, !noalias !10
  %i.r = zext i8 %i.q to i64
  store i64 %i.r, ptr %i.n, align 1, !noalias !10
  %i.s = add i64 %i.a, 1                          ; 3 uses
  store i64 %i.s, ptr %6, align 8, !tbaa !7, !alias.scope !10, !noalias !13
  %i.t = icmp ult i64 %2, 65537
  %i.u = icmp ult i64 %2, 1048577
  %spec.select.i.i = select i1 %i.u, i64 5, i64 6
  %.0.i.i = select i1 %i.t, i64 4, i64 %spec.select.i.i ; 2 uses
  %i.v = add nsw i64 %.0.i.i, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18)
  %i.w = lshr i64 %i.s, 3
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 %i.w ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !9, !alias.scope !18, !noalias !15
  %i.z = zext i8 %i.y to i64
  %i.aa = and i64 %i.s, 7
  %i.ab = shl nuw nsw i64 %i.v, %i.aa
  %i.ac = or i64 %i.ab, %i.z
  store i64 %i.ac, ptr %i.x, align 1, !noalias !15
  %i.ad = add i64 %i.a, 3                         ; 4 uses
  store i64 %i.ad, ptr %6, align 8, !tbaa !7, !alias.scope !15, !noalias !18
  %i.ae = shl nuw nsw i64 %.0.i.i, 2
  %i.af = add i64 %2, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %i.ag = lshr i64 %i.ad, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 %i.ag ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !9, !alias.scope !23, !noalias !20
  %i.aj = zext i8 %i.ai to i64
  %i.ak = and i64 %i.ad, 7
  %i.al = shl i64 %i.af, %i.ak
  %i.am = or i64 %i.al, %i.aj
  store i64 %i.am, ptr %i.ah, align 1, !noalias !20
  %i.an = add i64 %i.ad, %i.ae                    ; 4 uses
  store i64 %i.an, ptr %6, align 8, !tbaa !7, !alias.scope !20, !noalias !23
  %i.ao = lshr i64 %i.an, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 %i.ao ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !9, !alias.scope !25, !noalias !28
  %i.ar = zext i8 %i.aq to i64
  %i.as = and i64 %i.an, 7
  %i.at = shl nuw nsw i64 1, %i.as
  %i.au = or i64 %i.at, %i.ar
  store i64 %i.au, ptr %i.ap, align 1, !noalias !28
  %i.av = add i64 %i.an, 8
  %i.aw = and i64 %i.av, 4294967288               ; 2 uses
  store i64 %i.aw, ptr %6, align 8, !tbaa !7
  %i.ax = lshr exact i64 %i.aw, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 %i.ax
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ay, ptr align 1 %1, i64 %2, i1 false)
  %i.az = load i64, ptr %6, align 8, !tbaa !7
  %i.ba = add i64 %i.az, %i.g                     ; 2 uses
  store i64 %i.ba, ptr %6, align 8, !tbaa !7
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 %i.bb
  store i8 0, ptr %i.bc, align 1, !tbaa !9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = load i64, ptr %6, align 8, !tbaa !7, !alias.scope !30, !noalias !33
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.j
  %.sink75 = phi i64 [ %i.bd, %bb.j ], [ %i.a, %bb.a ] ; 4 uses
  %i.be = lshr i64 %.sink75, 3
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 %i.be ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !9, !noalias !35
  %i.bh = zext i8 %i.bg to i64
  %i.bi = and i64 %.sink75, 7
  %i.bj = shl nuw nsw i64 1, %i.bi
  %i.bk = or i64 %i.bj, %i.bh
  store i64 %i.bk, ptr %i.bf, align 1, !noalias !35
  %i.bl = add i64 %.sink75, 1                     ; 3 uses
  store i64 %i.bl, ptr %6, align 8, !tbaa !7, !noalias !35
  %i.bm = lshr i64 %i.bl, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 %i.bm ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !9, !noalias !35
  %i.bp = zext i8 %i.bo to i64
  %i.bq = and i64 %i.bl, 7
  %i.br = shl nuw nsw i64 1, %i.bq
  %i.bs = or i64 %i.br, %i.bp
  store i64 %i.bs, ptr %i.bn, align 1, !noalias !35
  %i.bt = add i64 %.sink75, 9
  %i.bu = and i64 %i.bt, 4294967288
  store i64 %i.bu, ptr %6, align 8, !tbaa !7
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.i
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @_ZL31BrotliCompressFragmentFastImpl9PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 1, 0) %2, i32 noundef %3, ptr noundef captures(none) %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 11 uses
  %i.e = tail call noundef i64 @llvm.umin.i64(i64 range(i64 1, 0) %2, i64 98304) ; 3 uses
  %i.f = load i64, ptr %5, align 8, !tbaa !7      ; 3 uses
  %i.g = add i64 %i.f, 3                          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.h = lshr i64 %i.f, 3
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 %i.h ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !9, !alias.scope !39, !noalias !36
  %i.k = zext i8 %i.j to i64
  store i64 %i.k, ptr %i.i, align 1, !noalias !36
  %i.l = add i64 %i.f, 1                          ; 3 uses
  store i64 %i.l, ptr %5, align 8, !tbaa !7, !alias.scope !36, !noalias !39
  %i.m = icmp ult i64 %2, 65537
  %.0.i52 = select i1 %i.m, i64 4, i64 5          ; 2 uses
  %i.n = add nsw i64 %.0.i52, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.o = lshr i64 %i.l, 3
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 %i.o ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !9, !alias.scope !44, !noalias !41
  %i.r = zext i8 %i.q to i64
  %i.s = and i64 %i.l, 7
  %i.t = shl nuw nsw i64 %i.n, %i.s
  %i.u = or i64 %i.t, %i.r
  store i64 %i.u, ptr %i.p, align 1, !noalias !41
  store i64 %i.g, ptr %5, align 8, !tbaa !7, !alias.scope !41, !noalias !44
  %i.v = shl nuw nsw i64 %.0.i52, 2
  %i.w = add nsw i64 %i.e, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %i.x = lshr i64 %i.g, 3
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !9, !alias.scope !49, !noalias !46
  %i.aa = zext i8 %i.z to i64
  %i.ab = and i64 %i.g, 7
  %i.ac = shl nuw nsw i64 %i.w, %i.ab
  %i.ad = or i64 %i.ac, %i.aa
  store i64 %i.ad, ptr %i.y, align 1, !noalias !46
  %i.ae = add i64 %i.g, %i.v                      ; 4 uses
  store i64 %i.ae, ptr %5, align 8, !tbaa !7, !alias.scope !46, !noalias !49
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.af = lshr i64 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 %i.af ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !9, !alias.scope !54, !noalias !51
  %i.ai = zext i8 %i.ah to i64
  store i64 %i.ai, ptr %i.ag, align 1, !noalias !51
  %i.aj = add i64 %i.ae, 1                        ; 2 uses
  store i64 %i.aj, ptr %5, align 8, !tbaa !7, !alias.scope !51, !noalias !54
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.ak = lshr i64 %i.aj, 3
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 %i.ak ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9, !alias.scope !59, !noalias !56
  %i.an = zext i8 %i.am to i64
  store i64 %i.an, ptr %i.al, align 1, !noalias !56
  %i.ao = add i64 %i.ae, 14
  store i64 %i.ao, ptr %5, align 8, !tbaa !7, !alias.scope !56, !noalias !59
  %i.ap = tail call fastcc noundef i64 @_ZL30BuildAndStoreLiteralPrefixCodePN13duckdb_brotli18BrotliOnePassArenaEPKhmPhPtPmS4_(ptr noundef %0, ptr noundef %1, i64 noundef %i.e, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2176 ; 4 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !61 ; 2 uses
  %i.as = icmp ugt i64 %i.ar, 7
  %.pre360 = load i64, ptr %5, align 8, !tbaa !7, !noalias !35 ; 2 uses
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1664
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.au = phi i64 [ %.pre360, %.lr.ph ], [ %i.bg, %bb.b ] ; 3 uses
  %.0347.i182 = phi i64 [ 0, %.lr.ph ], [ %i.bh, %bb.b ] ; 2 uses
  %i.av = lshr exact i64 %.0347.i182, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !9
  %i.ay = zext i8 %i.ax to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.az = lshr i64 %i.au, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 %i.az ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !9, !alias.scope !66, !noalias !63
  %i.bc = zext i8 %i.bb to i64
  %i.bd = and i64 %i.au, 7
  %i.be = shl nuw nsw i64 %i.ay, %i.bd
  %i.bf = or i64 %i.be, %i.bc
  store i64 %i.bf, ptr %i.ba, align 1, !noalias !63
  %i.bg = add i64 %i.au, 8                        ; 3 uses
  store i64 %i.bg, ptr %5, align 8, !tbaa !7, !alias.scope !63, !noalias !66
  %i.bh = add i64 %.0347.i182, 8                  ; 2 uses
  %i.bi = or disjoint i64 %i.bh, 7
  %i.bj = load i64, ptr %i.aq, align 8, !tbaa !61 ; 2 uses
  %i.bk = icmp ult i64 %i.bi, %i.bj
  br i1 %i.bk, label %bb.b, label %._crit_edge, !llvm.loop !68

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.bl = phi i64 [ %.pre360, %bb.a ], [ %i.bg, %bb.b ] ; 3 uses
  %.lcssa180 = phi i64 [ %i.ar, %bb.a ], [ %i.bj, %bb.b ] ; 2 uses
  %i.bm = and i64 %.lcssa180, 7
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 3 uses
  %i.bo = lshr i64 %.lcssa180, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !9
  %i.br = zext i8 %i.bq to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.bs = lshr i64 %i.bl, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !9, !alias.scope !73, !noalias !70
  %i.bv = zext i8 %i.bu to i64
  %i.bw = and i64 %i.bl, 7
  %i.bx = shl nuw nsw i64 %i.br, %i.bw
  %i.by = or i64 %i.bx, %i.bv
  store i64 %i.by, ptr %i.bt, align 1, !noalias !70
  %i.bz = add i64 %i.bl, %i.bm
  store i64 %i.bz, ptr %5, align 8, !tbaa !7, !alias.scope !70, !noalias !73
  %i.ca = ptrtoint ptr %1 to i64                  ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 831 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1022 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1404 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 830 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1020 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 829 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1018 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1396 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 8 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 807 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 974 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1308 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 6288 ; 3 uses
  br label %_ZL10UpdateBitsmjmPh.exit.outer

_ZL10UpdateBitsmjmPh.exit.outer:                  ; preds = %bb.bo, %._crit_edge
  %.0334.i.ph = phi i64 [ %i.axj, %bb.bo ], [ %i.ap, %._crit_edge ]
  %.0333.i.ph = phi i64 [ %i.awa, %bb.bo ], [ %i.g, %._crit_edge ] ; 3 uses
  %.0332.i.ph = phi i64 [ %i.avy, %bb.bo ], [ %i.e, %._crit_edge ] ; 2 uses
  %.0330.i.ph = phi ptr [ %.8.i, %bb.bo ], [ %1, %._crit_edge ] ; 5 uses
  %.0318.i.ph = phi i64 [ %.5323.i, %bb.bo ], [ %2, %._crit_edge ]
  %i.cr = ptrtoint ptr %.0330.i.ph to i64         ; 2 uses
  %i.cs = icmp ult i64 %.0334.i.ph, 981           ; 2 uses
  br label %_ZL10UpdateBitsmjmPh.exit

_ZL10UpdateBitsmjmPh.exit.loopexit:               ; preds = %bb.ax
  br label %_ZL10UpdateBitsmjmPh.exit, !llvm.loop !75

_ZL10UpdateBitsmjmPh.exit:                        ; preds = %_ZL10UpdateBitsmjmPh.exit.loopexit, %_ZL10UpdateBitsmjmPh.exit.outer
  %.0332.i = phi i64 [ %.0332.i.ph, %_ZL10UpdateBitsmjmPh.exit.outer ], [ %i.aio, %_ZL10UpdateBitsmjmPh.exit.loopexit ]
  %.0331.i = phi i64 [ %.0332.i.ph, %_ZL10UpdateBitsmjmPh.exit.outer ], [ %i.ain, %_ZL10UpdateBitsmjmPh.exit.loopexit ] ; 6 uses
  %.0324.i = phi ptr [ %.0330.i.ph, %_ZL10UpdateBitsmjmPh.exit.outer ], [ %.7.i, %_ZL10UpdateBitsmjmPh.exit.loopexit ] ; 2 uses
  %.0318.i = phi i64 [ %.0318.i.ph, %_ZL10UpdateBitsmjmPh.exit.outer ], [ %i.aim, %_ZL10UpdateBitsmjmPh.exit.loopexit ] ; 3 uses
  %.0.i = phi ptr [ %.0330.i.ph, %_ZL10UpdateBitsmjmPh.exit.outer ], [ %i.ct, %_ZL10UpdateBitsmjmPh.exit.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.c, ptr noundef nonnull align 16 dereferenceable(512) @_ZL13kCmdHistoSeed, i64 512, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i, i64 %.0331.i ; 14 uses
  %i.cu = icmp samesign ugt i64 %.0331.i, 15
  br i1 %i.cu, label %bb.c, label %.thread101, !prof !76

bb.c:                                             ; preds = %_ZL10UpdateBitsmjmPh.exit
  %i.cv = add nsw i64 %.0331.i, -5
  %i.cw = add i64 %.0318.i, -16
  %i.cx = tail call noundef i64 @llvm.umin.i64(i64 %i.cv, i64 range(i64 -15, -16) %i.cw)
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.cx ; 6 uses
  %i.cz = ptrtoint ptr %i.ct to i64
  %i.da = add i64 %i.cz, -5                       ; 2 uses
  br label %.thread74

.thread74:                                        ; preds = %.thread74.backedge, %bb.c
  %.0340.i = phi i32 [ -1, %bb.c ], [ %.0340.i.be, %.thread74.backedge ]
  %.0.i.pn = phi ptr [ %.0.i, %bb.c ], [ %.1325.i.be, %.thread74.backedge ]
  %.1325.i = phi ptr [ %.0324.i, %bb.c ], [ %.1325.i.be, %.thread74.backedge ] ; 8 uses
  %.0340.i.fr = freeze i32 %.0340.i               ; 4 uses
  %.0335.i = getelementptr inbounds nuw i8, ptr %.0.i.pn, i64 1 ; 3 uses
  %.0348.i.in.in.in = load i64, ptr %.0335.i, align 1
  %.0348.i.in.in = mul i64 %.0348.i.in.in.in, 8503243848024064
  %.0348.i.in = lshr i64 %.0348.i.in.in, 55       ; 2 uses
  %i.db = sext i32 %.0340.i.fr to i64
  %i.dc = sub nsw i64 0, %i.db
  %i.dd = icmp sgt i32 %.0340.i.fr, 0
  br i1 %i.dd, label %.split.us.preheader, label %.split, !prof !77

.split.us.preheader:                              ; preds = %.thread74
  %.0348.i = trunc nuw nsw i64 %.0348.i.in to i32
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %.loopexit.split.us205
  %.0359.i.us = phi ptr [ %i.di, %.loopexit.split.us205 ], [ %.0335.i, %.split.us.preheader ] ; 2 uses
  %.0353.i.us = phi i32 [ %i.dj, %.loopexit.split.us205 ], [ 32, %.split.us.preheader ] ; 2 uses
  %.1349.i.us = phi i32 [ %i.dm, %.loopexit.split.us205 ], [ %.0348.i, %.split.us.preheader ]
  %i.de = lshr i32 %.0353.i.us, 5
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %.0359.i.us, i64 %i.df ; 2 uses
  %i.dh = icmp ugt ptr %i.dg, %i.cy
  br i1 %i.dh, label %.thread101, label %.lr.ph186.us, !prof !78

.lr.ph186.us:                                     ; preds = %.split.us, %.critedge.backedge.us211
  %i.di = phi ptr [ %i.er, %.critedge.backedge.us211 ], [ %i.dg, %.split.us ] ; 4 uses
  %.in276 = phi i32 [ %i.dj, %.critedge.backedge.us211 ], [ %.0353.i.us, %.split.us ]
  %.2350.i184.us195 = phi i32 [ %i.dm, %.critedge.backedge.us211 ], [ %.1349.i.us, %.split.us ] ; 2 uses
  %.1360.i183.us196 = phi ptr [ %i.di, %.critedge.backedge.us211 ], [ %.0359.i.us, %.split.us ] ; 8 uses
  %i.dj = add i32 %.in276, 1                      ; 3 uses
  %.0.copyload.i41.us197 = load i64, ptr %i.di, align 1
  %i.dk = mul i64 %.0.copyload.i41.us197, 8503243848024064
  %i.dl = lshr i64 %i.dk, 55
  %i.dm = trunc nuw nsw i64 %i.dl to i32          ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %.1360.i183.us196, i64 %i.dc ; 3 uses
  %.0.copyload.i47.us198 = load i32, ptr %.1360.i183.us196, align 1
  %.0.copyload.i46.us199 = load i32, ptr %i.dn, align 1
  %i.do = icmp eq i32 %.0.copyload.i47.us198, %.0.copyload.i46.us199
  br i1 %i.do, label %_ZL7IsMatchPKhS0_.exit7.us200, label %_ZL7IsMatchPKhS0_.exit7.thread.us201

_ZL7IsMatchPKhS0_.exit7.us200:                    ; preds = %.lr.ph186.us
  %i.dp = getelementptr inbounds nuw i8, ptr %.1360.i183.us196, i64 4
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !9
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !9
  %i.dt = icmp eq i8 %i.dq, %i.ds
  br i1 %i.dt, label %bb.d, label %_ZL7IsMatchPKhS0_.exit7.thread.us201, !prof !77

_ZL7IsMatchPKhS0_.exit7.thread.us201:             ; preds = %_ZL7IsMatchPKhS0_.exit7.us200, %.lr.ph186.us
  %i.du = zext nneg i32 %.2350.i184.us195 to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.du ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !3
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds i8, ptr %1, i64 %i.dx ; 3 uses
  %i.dz = ptrtoint ptr %.1360.i183.us196 to i64   ; 2 uses
  %i.ea = sub i64 %i.dz, %i.ca
  %i.eb = trunc i64 %i.ea to i32
  store i32 %i.eb, ptr %i.dv, align 4, !tbaa !3
  %.0.copyload.i51.us202 = load i32, ptr %.1360.i183.us196, align 1
  %.0.copyload.i50.us203 = load i32, ptr %i.dy, align 1
  %i.ec = icmp eq i32 %.0.copyload.i51.us202, %.0.copyload.i50.us203
  br i1 %i.ec, label %_ZL7IsMatchPKhS0_.exit.us204, label %.critedge.backedge.us211

_ZL7IsMatchPKhS0_.exit.us204:                     ; preds = %_ZL7IsMatchPKhS0_.exit7.thread.us201
  %i.ed = getelementptr inbounds nuw i8, ptr %.1360.i183.us196, i64 4
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !9
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !9
  %.not277 = icmp eq i8 %i.ee, %i.eg
  br i1 %.not277, label %.loopexit.split.us205, label %.critedge.backedge.us211, !prof !79

bb.d:                                             ; preds = %_ZL7IsMatchPKhS0_.exit7.us200
  %i.eh = ptrtoint ptr %.1360.i183.us196 to i64   ; 2 uses
  %i.ei = sub i64 %i.eh, %i.ca
  %i.ej = trunc i64 %i.ei to i32
  %i.ek = zext nneg i32 %.2350.i184.us195 to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ek
  store i32 %i.ej, ptr %i.el, align 4, !tbaa !3
  br label %.loopexit.split.us205

.loopexit.split.us205:                            ; preds = %_ZL7IsMatchPKhS0_.exit.us204, %bb.d
  %.pre-phi = phi i64 [ %i.eh, %bb.d ], [ %i.dz, %_ZL7IsMatchPKhS0_.exit.us204 ] ; 2 uses
  %.4365.i65.us = phi ptr [ %i.dn, %bb.d ], [ %i.dy, %_ZL7IsMatchPKhS0_.exit.us204 ] ; 2 uses
  %i.em = ptrtoint ptr %.4365.i65.us to i64
  %i.en = sub i64 %.pre-phi, %i.em                ; 2 uses
  %i.eo = icmp sgt i64 %i.en, 262128
  br i1 %i.eo, label %.split.us, label %.split215.us

.critedge.backedge.us211:                         ; preds = %_ZL7IsMatchPKhS0_.exit.us204, %_ZL7IsMatchPKhS0_.exit7.thread.us201
  %i.ep = lshr i32 %i.dj, 5
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.eq ; 2 uses
  %i.es = icmp ugt ptr %i.er, %i.cy
  br i1 %i.es, label %.thread101, label %.lr.ph186.us, !prof !80, !llvm.loop !81

.split:                                           ; preds = %.thread74, %.loopexit.split.us
  %.0359.i = phi ptr [ %i.ex, %.loopexit.split.us ], [ %.0335.i, %.thread74 ] ; 2 uses
  %.0353.i = phi i32 [ %i.ey, %.loopexit.split.us ], [ 32, %.thread74 ] ; 2 uses
  %.1349.i = phi i64 [ %i.fa, %.loopexit.split.us ], [ %.0348.i.in, %.thread74 ]
  %i.et = lshr i32 %.0353.i, 5
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %.0359.i, i64 %i.eu ; 2 uses
  %i.ew = icmp ugt ptr %i.ev, %i.cy
  br i1 %i.ew, label %.thread101, label %.lr.ph186, !prof !78

.lr.ph186:                                        ; preds = %.split, %.critedge.backedge.us
  %i.ex = phi ptr [ %i.fp, %.critedge.backedge.us ], [ %i.ev, %.split ] ; 4 uses
  %.in = phi i32 [ %i.ey, %.critedge.backedge.us ], [ %.0353.i, %.split ]
  %.2350.i184.us = phi i64 [ %i.fa, %.critedge.backedge.us ], [ %.1349.i, %.split ]
  %.1360.i183.us = phi ptr [ %i.ex, %.critedge.backedge.us ], [ %.0359.i, %.split ] ; 4 uses
  %i.ey = add i32 %.in, 1                         ; 3 uses
  %.0.copyload.i41.us = load i64, ptr %i.ex, align 1
  %i.ez = mul i64 %.0.copyload.i41.us, 8503243848024064
  %i.fa = lshr i64 %i.ez, 55                      ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.2350.i184.us ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !3
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds i8, ptr %1, i64 %i.fd ; 4 uses
  %i.ff = ptrtoint ptr %.1360.i183.us to i64      ; 3 uses
  %i.fg = sub i64 %i.ff, %i.ca
  %i.fh = trunc i64 %i.fg to i32
  store i32 %i.fh, ptr %i.fb, align 4, !tbaa !3
  %.0.copyload.i51.us = load i32, ptr %.1360.i183.us, align 1
  %.0.copyload.i50.us = load i32, ptr %i.fe, align 1
  %i.fi = icmp eq i32 %.0.copyload.i51.us, %.0.copyload.i50.us
  br i1 %i.fi, label %_ZL7IsMatchPKhS0_.exit.us, label %.critedge.backedge.us

_ZL7IsMatchPKhS0_.exit.us:                        ; preds = %.lr.ph186
  %i.fj = getelementptr inbounds nuw i8, ptr %.1360.i183.us, i64 4
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !9
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !9
  %.not275 = icmp eq i8 %i.fk, %i.fm
  br i1 %.not275, label %.loopexit.split.us, label %.critedge.backedge.us, !prof !79

.critedge.backedge.us:                            ; preds = %_ZL7IsMatchPKhS0_.exit.us, %.lr.ph186
  %i.fn = lshr i32 %i.ey, 5
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.fo ; 2 uses
  %i.fq = icmp ugt ptr %i.fp, %i.cy
  br i1 %i.fq, label %.thread101, label %.lr.ph186, !prof !80, !llvm.loop !81

.loopexit.split.us:                               ; preds = %_ZL7IsMatchPKhS0_.exit.us
  %i.fr = ptrtoint ptr %i.fe to i64
end_hunk_0
begin_hunk_1_@_ZL31BrotliCompressFragmentFastImpl9PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh:bb.a
  %i.aux = load i16, ptr %i.auw, align 2, !tbaa !84
  %i.auy = zext i16 %i.aux to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  %i.auz = lshr i64 %.epil.init646, 3
  %i.ava = getelementptr inbounds nuw i8, ptr %6, i64 %i.auz ; 2 uses
  %i.avb = load i8, ptr %i.ava, align 1, !tbaa !9, !alias.scope !313, !noalias !310
  %i.avc = zext i8 %i.avb to i64
  %i.avd = and i64 %.epil.init646, 7
  %i.ave = shl nuw nsw i64 %i.auy, %i.avd
  %i.avf = or i64 %i.ave, %i.avc
  store i64 %i.avf, ptr %i.ava, align 1, !noalias !310
  %i.avg = add i64 %.epil.init646, %i.auv
  store i64 %i.avg, ptr %5, align 8, !tbaa !7, !alias.scope !310, !noalias !313
  br label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33

_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa: ; preds = %bb.bn
  %lcmp.mod638.not = icmp eq i64 %xtraiter635, 0
  br i1 %lcmp.mod638.not, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33, label %.epil.preheader630

.epil.preheader630:                               ; preds = %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30
  %.0.i34271.epil.init = phi i64 [ 0, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30 ], [ %i.aup, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa ]
  %.epil.init637 = phi i64 [ %.sink359, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30 ], [ %i.auo, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa ] ; 3 uses
  %lcmp.mod639 = trunc i64 %i.aky to i1
  tail call void @llvm.assume(i1 %lcmp.mod639)
  %i.avh = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34271.epil.init
  %i.avi = load i8, ptr %i.avh, align 1, !tbaa !9
  %i.avj = zext i8 %i.avi to i64                  ; 2 uses
  %i.avk = getelementptr inbounds nuw i8, ptr %0, i64 %i.avj
  %i.avl = load i8, ptr %i.avk, align 1, !tbaa !9
  %i.avm = zext i8 %i.avl to i64
  %i.avn = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.avj
  %i.avo = load i16, ptr %i.avn, align 2, !tbaa !84
  %i.avp = zext i16 %i.avo to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  %i.avq = lshr i64 %.epil.init637, 3
  %i.avr = getelementptr inbounds nuw i8, ptr %6, i64 %i.avq ; 2 uses
  %i.avs = load i8, ptr %i.avr, align 1, !tbaa !9, !alias.scope !342, !noalias !339
  %i.avt = zext i8 %i.avs to i64
  %i.avu = and i64 %.epil.init637, 7
  %i.avv = shl nuw nsw i64 %i.avp, %i.avu
  %i.avw = or i64 %i.avv, %i.avt
  store i64 %i.avw, ptr %i.avr, align 1, !noalias !339
  %i.avx = add i64 %.epil.init637, %i.avm
  store i64 %i.avx, ptr %5, align 8, !tbaa !7, !alias.scope !339, !noalias !342
  br label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33

_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33:           ; preds = %.epil.preheader630, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa, %.epil.preheader642, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa, %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27, %.thread74.thread118, %bb.bj, %bb.ay
  %.8.i = phi ptr [ %.us-phi220, %.thread74.thread118 ], [ %i.ct, %bb.ay ], [ %i.ct, %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27 ], [ %i.ct, %bb.bj ], [ %i.ct, %.epil.preheader642 ], [ %i.ct, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa ], [ %i.ct, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa ], [ %i.ct, %.epil.preheader630 ] ; 2 uses
  %.5323.i = phi i64 [ %i.lq, %.thread74.thread118 ], [ %i.aim, %bb.ay ], [ %i.aim, %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27 ], [ %i.aim, %bb.bj ], [ %i.aim, %.epil.preheader642 ], [ %i.aim, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa ], [ %i.aim, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa ], [ %i.aim, %.epil.preheader630 ] ; 4 uses
  %.not396.i = icmp eq i64 %.5323.i, 0
  br i1 %.not396.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33
  %i.avy = tail call noundef i64 @llvm.umin.i64(i64 %.5323.i, i64 98304) ; 3 uses
  %i.avz = load i64, ptr %5, align 8, !tbaa !7    ; 3 uses
  %i.awa = add i64 %i.avz, 3                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  %i.awb = lshr i64 %i.avz, 3
  %i.awc = getelementptr inbounds nuw i8, ptr %6, i64 %i.awb ; 2 uses
  %i.awd = load i8, ptr %i.awc, align 1, !tbaa !9, !alias.scope !351, !noalias !348
  %i.awe = zext i8 %i.awd to i64
  store i64 %i.awe, ptr %i.awc, align 1, !noalias !348
  %i.awf = add i64 %i.avz, 1                      ; 3 uses
  store i64 %i.awf, ptr %5, align 8, !tbaa !7, !alias.scope !348, !noalias !351
  %i.awg = icmp ult i64 %.5323.i, 65537
  %.0.i55 = select i1 %i.awg, i64 4, i64 5        ; 2 uses
  %i.awh = add nsw i64 %.0.i55, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  %i.awi = lshr i64 %i.awf, 3
  %i.awj = getelementptr inbounds nuw i8, ptr %6, i64 %i.awi ; 2 uses
  %i.awk = load i8, ptr %i.awj, align 1, !tbaa !9, !alias.scope !356, !noalias !353
  %i.awl = zext i8 %i.awk to i64
  %i.awm = and i64 %i.awf, 7
  %i.awn = shl nuw nsw i64 %i.awh, %i.awm
  %i.awo = or i64 %i.awn, %i.awl
  store i64 %i.awo, ptr %i.awj, align 1, !noalias !353
  store i64 %i.awa, ptr %5, align 8, !tbaa !7, !alias.scope !353, !noalias !356
  %i.awp = shl nuw nsw i64 %.0.i55, 2
  %i.awq = add nsw i64 %i.avy, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  %i.awr = lshr i64 %i.awa, 3
  %i.aws = getelementptr inbounds nuw i8, ptr %6, i64 %i.awr ; 2 uses
  %i.awt = load i8, ptr %i.aws, align 1, !tbaa !9, !alias.scope !361, !noalias !358
  %i.awu = zext i8 %i.awt to i64
  %i.awv = and i64 %i.awa, 7
  %i.aww = shl nuw nsw i64 %i.awq, %i.awv
  %i.awx = or i64 %i.aww, %i.awu
  store i64 %i.awx, ptr %i.aws, align 1, !noalias !358
  %i.awy = add i64 %i.awa, %i.awp                 ; 4 uses
  store i64 %i.awy, ptr %5, align 8, !tbaa !7, !alias.scope !358, !noalias !361
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  %i.awz = lshr i64 %i.awy, 3
  %i.axa = getelementptr inbounds nuw i8, ptr %6, i64 %i.awz ; 2 uses
  %i.axb = load i8, ptr %i.axa, align 1, !tbaa !9, !alias.scope !366, !noalias !363
  %i.axc = zext i8 %i.axb to i64
  store i64 %i.axc, ptr %i.axa, align 1, !noalias !363
  %i.axd = add i64 %i.awy, 1                      ; 2 uses
  store i64 %i.axd, ptr %5, align 8, !tbaa !7, !alias.scope !363, !noalias !366
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %i.axe = lshr i64 %i.axd, 3
  %i.axf = getelementptr inbounds nuw i8, ptr %6, i64 %i.axe ; 2 uses
  %i.axg = load i8, ptr %i.axf, align 1, !tbaa !9, !alias.scope !371, !noalias !368
  %i.axh = zext i8 %i.axg to i64
  store i64 %i.axh, ptr %i.axf, align 1, !noalias !368
  %i.axi = add i64 %i.awy, 14
  store i64 %i.axi, ptr %5, align 8, !tbaa !7, !alias.scope !368, !noalias !371
  %i.axj = tail call fastcc noundef i64 @_ZL30BuildAndStoreLiteralPrefixCodePN13duckdb_brotli18BrotliOnePassArenaEPKhmPhPtPmS4_(ptr noundef %0, ptr noundef %.8.i, i64 noundef %i.avy, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  tail call fastcc void @_ZL30BuildAndStoreCommandPrefixCodePN13duckdb_brotli18BrotliOnePassArenaEPmPh(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %6)
  br label %_ZL10UpdateBitsmjmPh.exit.outer

bb.bp:                                            ; preds = %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33
  %.not397.i = icmp eq i32 %3, 0
  br i1 %.not397.i, label %bb.bq, label %_ZL30BrotliCompressFragmentFastImplPN13duckdb_brotli18BrotliOnePassArenaEPKhmiPimPmPh.exit

bb.bq:                                            ; preds = %bb.bp
  store i8 0, ptr %i.bn, align 8, !tbaa !9
  store i64 0, ptr %i.aq, align 8, !tbaa !61
  tail call fastcc void @_ZL30BuildAndStoreCommandPrefixCodePN13duckdb_brotli18BrotliOnePassArenaEPmPh(ptr noundef %0, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.bn)
  br label %_ZL30BrotliCompressFragmentFastImplPN13duckdb_brotli18BrotliOnePassArenaEPKhmiPimPmPh.exit

_ZL30BrotliCompressFragmentFastImplPN13duckdb_brotli18BrotliOnePassArenaEPKhmiPimPmPh.exit: ; preds = %bb.bp, %bb.bq
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @_ZL32BrotliCompressFragmentFastImpl11PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 1, 0) %2, i32 noundef %3, ptr noundef captures(none) %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 11 uses
  %i.e = tail call noundef i64 @llvm.umin.i64(i64 range(i64 1, 0) %2, i64 98304) ; 3 uses
  %i.f = load i64, ptr %5, align 8, !tbaa !7      ; 3 uses
  %i.g = add i64 %i.f, 3                          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  %i.h = lshr i64 %i.f, 3
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 %i.h ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !9, !alias.scope !376, !noalias !373
  %i.k = zext i8 %i.j to i64
  store i64 %i.k, ptr %i.i, align 1, !noalias !373
  %i.l = add i64 %i.f, 1                          ; 3 uses
  store i64 %i.l, ptr %5, align 8, !tbaa !7, !alias.scope !373, !noalias !376
  %i.m = icmp ult i64 %2, 65537
  %.0.i52 = select i1 %i.m, i64 4, i64 5          ; 2 uses
  %i.n = add nsw i64 %.0.i52, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.o = lshr i64 %i.l, 3
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 %i.o ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !9, !alias.scope !381, !noalias !378
  %i.r = zext i8 %i.q to i64
  %i.s = and i64 %i.l, 7
  %i.t = shl nuw nsw i64 %i.n, %i.s
  %i.u = or i64 %i.t, %i.r
  store i64 %i.u, ptr %i.p, align 1, !noalias !378
  store i64 %i.g, ptr %5, align 8, !tbaa !7, !alias.scope !378, !noalias !381
  %i.v = shl nuw nsw i64 %.0.i52, 2
  %i.w = add nsw i64 %i.e, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386)
  %i.x = lshr i64 %i.g, 3
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !9, !alias.scope !386, !noalias !383
  %i.aa = zext i8 %i.z to i64
  %i.ab = and i64 %i.g, 7
  %i.ac = shl nuw nsw i64 %i.w, %i.ab
  %i.ad = or i64 %i.ac, %i.aa
  store i64 %i.ad, ptr %i.y, align 1, !noalias !383
  %i.ae = add i64 %i.g, %i.v                      ; 4 uses
  store i64 %i.ae, ptr %5, align 8, !tbaa !7, !alias.scope !383, !noalias !386
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  %i.af = lshr i64 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 %i.af ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !9, !alias.scope !391, !noalias !388
  %i.ai = zext i8 %i.ah to i64
  store i64 %i.ai, ptr %i.ag, align 1, !noalias !388
  %i.aj = add i64 %i.ae, 1                        ; 2 uses
  store i64 %i.aj, ptr %5, align 8, !tbaa !7, !alias.scope !388, !noalias !391
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  %i.ak = lshr i64 %i.aj, 3
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 %i.ak ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9, !alias.scope !396, !noalias !393
  %i.an = zext i8 %i.am to i64
  store i64 %i.an, ptr %i.al, align 1, !noalias !393
  %i.ao = add i64 %i.ae, 14
  store i64 %i.ao, ptr %5, align 8, !tbaa !7, !alias.scope !393, !noalias !396
  %i.ap = tail call fastcc noundef i64 @_ZL30BuildAndStoreLiteralPrefixCodePN13duckdb_brotli18BrotliOnePassArenaEPKhmPhPtPmS4_(ptr noundef %0, ptr noundef %1, i64 noundef %i.e, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2176 ; 4 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !61 ; 2 uses
  %i.as = icmp ugt i64 %i.ar, 7
  %.pre360 = load i64, ptr %5, align 8, !tbaa !7, !noalias !35 ; 2 uses
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1664
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.au = phi i64 [ %.pre360, %.lr.ph ], [ %i.bg, %bb.b ] ; 3 uses
  %.0347.i182 = phi i64 [ 0, %.lr.ph ], [ %i.bh, %bb.b ] ; 2 uses
  %i.av = lshr exact i64 %.0347.i182, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !9
  %i.ay = zext i8 %i.ax to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  %i.az = lshr i64 %i.au, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 %i.az ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !9, !alias.scope !401, !noalias !398
  %i.bc = zext i8 %i.bb to i64
  %i.bd = and i64 %i.au, 7
  %i.be = shl nuw nsw i64 %i.ay, %i.bd
  %i.bf = or i64 %i.be, %i.bc
  store i64 %i.bf, ptr %i.ba, align 1, !noalias !398
  %i.bg = add i64 %i.au, 8                        ; 3 uses
  store i64 %i.bg, ptr %5, align 8, !tbaa !7, !alias.scope !398, !noalias !401
  %i.bh = add i64 %.0347.i182, 8                  ; 2 uses
  %i.bi = or disjoint i64 %i.bh, 7
  %i.bj = load i64, ptr %i.aq, align 8, !tbaa !61 ; 2 uses
  %i.bk = icmp ult i64 %i.bi, %i.bj
  br i1 %i.bk, label %bb.b, label %._crit_edge, !llvm.loop !68

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.bl = phi i64 [ %.pre360, %bb.a ], [ %i.bg, %bb.b ] ; 3 uses
  %.lcssa180 = phi i64 [ %i.ar, %bb.a ], [ %i.bj, %bb.b ] ; 2 uses
  %i.bm = and i64 %.lcssa180, 7
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 3 uses
  %i.bo = lshr i64 %.lcssa180, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !9
  %i.br = zext i8 %i.bq to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  %i.bs = lshr i64 %i.bl, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !9, !alias.scope !406, !noalias !403
  %i.bv = zext i8 %i.bu to i64
  %i.bw = and i64 %i.bl, 7
  %i.bx = shl nuw nsw i64 %i.br, %i.bw
  %i.by = or i64 %i.bx, %i.bv
  store i64 %i.by, ptr %i.bt, align 1, !noalias !403
  %i.bz = add i64 %i.bl, %i.bm
  store i64 %i.bz, ptr %5, align 8, !tbaa !7, !alias.scope !403, !noalias !406
  %i.ca = ptrtoint ptr %1 to i64                  ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 831 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1022 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1404 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 830 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1020 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 829 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1018 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1396 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 8 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 807 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 974 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1308 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 6288 ; 3 uses
  br label %_ZL10UpdateBitsmjmPh.exit.outer

_ZL10UpdateBitsmjmPh.exit.outer:                  ; preds = %bb.bo, %._crit_edge
  %.0334.i.ph = phi i64 [ %i.axj, %bb.bo ], [ %i.ap, %._crit_edge ]
  %.0333.i.ph = phi i64 [ %i.awa, %bb.bo ], [ %i.g, %._crit_edge ] ; 3 uses
  %.0332.i.ph = phi i64 [ %i.avy, %bb.bo ], [ %i.e, %._crit_edge ] ; 2 uses
  %.0330.i.ph = phi ptr [ %.8.i, %bb.bo ], [ %1, %._crit_edge ] ; 5 uses
  %.0318.i.ph = phi i64 [ %.5323.i, %bb.bo ], [ %2, %._crit_edge ]
  %i.cr = ptrtoint ptr %.0330.i.ph to i64         ; 2 uses
  %i.cs = icmp ult i64 %.0334.i.ph, 981           ; 2 uses
  br label %_ZL10UpdateBitsmjmPh.exit

_ZL10UpdateBitsmjmPh.exit.loopexit:               ; preds = %bb.ax
  br label %_ZL10UpdateBitsmjmPh.exit, !llvm.loop !75

_ZL10UpdateBitsmjmPh.exit:                        ; preds = %_ZL10UpdateBitsmjmPh.exit.loopexit, %_ZL10UpdateBitsmjmPh.exit.outer
  %.0332.i = phi i64 [ %.0332.i.ph, %_ZL10UpdateBitsmjmPh.exit.outer ], [ %i.aio, %_ZL10UpdateBitsmjmPh.exit.loopexit ]
  %.0331.i = phi i64 [ %.0332.i.ph, %_ZL10UpdateBitsmjmPh.exit.outer ], [ %i.ain, %_ZL10UpdateBitsmjmPh.exit.loopexit ] ; 6 uses
  %.0324.i = phi ptr [ %.0330.i.ph, %_ZL10UpdateBitsmjmPh.exit.outer ], [ %.7.i, %_ZL10UpdateBitsmjmPh.exit.loopexit ] ; 2 uses
  %.0318.i = phi i64 [ %.0318.i.ph, %_ZL10UpdateBitsmjmPh.exit.outer ], [ %i.aim, %_ZL10UpdateBitsmjmPh.exit.loopexit ] ; 3 uses
  %.0.i = phi ptr [ %.0330.i.ph, %_ZL10UpdateBitsmjmPh.exit.outer ], [ %i.ct, %_ZL10UpdateBitsmjmPh.exit.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.c, ptr noundef nonnull align 16 dereferenceable(512) @_ZL13kCmdHistoSeed, i64 512, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i, i64 %.0331.i ; 14 uses
  %i.cu = icmp samesign ugt i64 %.0331.i, 15
  br i1 %i.cu, label %bb.c, label %.thread101, !prof !76

bb.c:                                             ; preds = %_ZL10UpdateBitsmjmPh.exit
  %i.cv = add nsw i64 %.0331.i, -5
  %i.cw = add i64 %.0318.i, -16
  %i.cx = tail call noundef i64 @llvm.umin.i64(i64 %i.cv, i64 range(i64 -15, -16) %i.cw)
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.cx ; 6 uses
  %i.cz = ptrtoint ptr %i.ct to i64
  %i.da = add i64 %i.cz, -5                       ; 2 uses
  br label %.thread74

.thread74:                                        ; preds = %.thread74.backedge, %bb.c
  %.0340.i = phi i32 [ -1, %bb.c ], [ %.0340.i.be, %.thread74.backedge ]
  %.0.i.pn = phi ptr [ %.0.i, %bb.c ], [ %.1325.i.be, %.thread74.backedge ]
  %.1325.i = phi ptr [ %.0324.i, %bb.c ], [ %.1325.i.be, %.thread74.backedge ] ; 8 uses
  %.0340.i.fr = freeze i32 %.0340.i               ; 4 uses
  %.0335.i = getelementptr inbounds nuw i8, ptr %.0.i.pn, i64 1 ; 3 uses
  %.0348.i.in.in.in = load i64, ptr %.0335.i, align 1
  %.0348.i.in.in = mul i64 %.0348.i.in.in.in, 8503243848024064
  %.0348.i.in = lshr i64 %.0348.i.in.in, 53       ; 2 uses
  %i.db = sext i32 %.0340.i.fr to i64
  %i.dc = sub nsw i64 0, %i.db
  %i.dd = icmp sgt i32 %.0340.i.fr, 0
  br i1 %i.dd, label %.split.us.preheader, label %.split, !prof !77

.split.us.preheader:                              ; preds = %.thread74
  %.0348.i = trunc nuw nsw i64 %.0348.i.in to i32
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %.loopexit.split.us205
  %.0359.i.us = phi ptr [ %i.di, %.loopexit.split.us205 ], [ %.0335.i, %.split.us.preheader ] ; 2 uses
  %.0353.i.us = phi i32 [ %i.dj, %.loopexit.split.us205 ], [ 32, %.split.us.preheader ] ; 2 uses
  %.1349.i.us = phi i32 [ %i.dm, %.loopexit.split.us205 ], [ %.0348.i, %.split.us.preheader ]
  %i.de = lshr i32 %.0353.i.us, 5
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %.0359.i.us, i64 %i.df ; 2 uses
  %i.dh = icmp ugt ptr %i.dg, %i.cy
  br i1 %i.dh, label %.thread101, label %.lr.ph186.us, !prof !78

.lr.ph186.us:                                     ; preds = %.split.us, %.critedge.backedge.us211
  %i.di = phi ptr [ %i.er, %.critedge.backedge.us211 ], [ %i.dg, %.split.us ] ; 4 uses
  %.in276 = phi i32 [ %i.dj, %.critedge.backedge.us211 ], [ %.0353.i.us, %.split.us ]
  %.2350.i184.us195 = phi i32 [ %i.dm, %.critedge.backedge.us211 ], [ %.1349.i.us, %.split.us ] ; 2 uses
  %.1360.i183.us196 = phi ptr [ %i.di, %.critedge.backedge.us211 ], [ %.0359.i.us, %.split.us ] ; 8 uses
  %i.dj = add i32 %.in276, 1                      ; 3 uses
  %.0.copyload.i41.us197 = load i64, ptr %i.di, align 1
  %i.dk = mul i64 %.0.copyload.i41.us197, 8503243848024064
  %i.dl = lshr i64 %i.dk, 53
  %i.dm = trunc nuw nsw i64 %i.dl to i32          ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %.1360.i183.us196, i64 %i.dc ; 3 uses
  %.0.copyload.i47.us198 = load i32, ptr %.1360.i183.us196, align 1
  %.0.copyload.i46.us199 = load i32, ptr %i.dn, align 1
  %i.do = icmp eq i32 %.0.copyload.i47.us198, %.0.copyload.i46.us199
  br i1 %i.do, label %_ZL7IsMatchPKhS0_.exit7.us200, label %_ZL7IsMatchPKhS0_.exit7.thread.us201

_ZL7IsMatchPKhS0_.exit7.us200:                    ; preds = %.lr.ph186.us
  %i.dp = getelementptr inbounds nuw i8, ptr %.1360.i183.us196, i64 4
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !9
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !9
  %i.dt = icmp eq i8 %i.dq, %i.ds
  br i1 %i.dt, label %bb.d, label %_ZL7IsMatchPKhS0_.exit7.thread.us201, !prof !77

_ZL7IsMatchPKhS0_.exit7.thread.us201:             ; preds = %_ZL7IsMatchPKhS0_.exit7.us200, %.lr.ph186.us
  %i.du = zext nneg i32 %.2350.i184.us195 to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.du ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !3
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds i8, ptr %1, i64 %i.dx ; 3 uses
  %i.dz = ptrtoint ptr %.1360.i183.us196 to i64   ; 2 uses
  %i.ea = sub i64 %i.dz, %i.ca
  %i.eb = trunc i64 %i.ea to i32
  store i32 %i.eb, ptr %i.dv, align 4, !tbaa !3
  %.0.copyload.i51.us202 = load i32, ptr %.1360.i183.us196, align 1
  %.0.copyload.i50.us203 = load i32, ptr %i.dy, align 1
  %i.ec = icmp eq i32 %.0.copyload.i51.us202, %.0.copyload.i50.us203
  br i1 %i.ec, label %_ZL7IsMatchPKhS0_.exit.us204, label %.critedge.backedge.us211

_ZL7IsMatchPKhS0_.exit.us204:                     ; preds = %_ZL7IsMatchPKhS0_.exit7.thread.us201
  %i.ed = getelementptr inbounds nuw i8, ptr %.1360.i183.us196, i64 4
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !9
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !9
  %.not277 = icmp eq i8 %i.ee, %i.eg
  br i1 %.not277, label %.loopexit.split.us205, label %.critedge.backedge.us211, !prof !79

bb.d:                                             ; preds = %_ZL7IsMatchPKhS0_.exit7.us200
  %i.eh = ptrtoint ptr %.1360.i183.us196 to i64   ; 2 uses
  %i.ei = sub i64 %i.eh, %i.ca
  %i.ej = trunc i64 %i.ei to i32
  %i.ek = zext nneg i32 %.2350.i184.us195 to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ek
  store i32 %i.ej, ptr %i.el, align 4, !tbaa !3
  br label %.loopexit.split.us205

.loopexit.split.us205:                            ; preds = %_ZL7IsMatchPKhS0_.exit.us204, %bb.d
  %.pre-phi = phi i64 [ %i.eh, %bb.d ], [ %i.dz, %_ZL7IsMatchPKhS0_.exit.us204 ] ; 2 uses
  %.4365.i65.us = phi ptr [ %i.dn, %bb.d ], [ %i.dy, %_ZL7IsMatchPKhS0_.exit.us204 ] ; 2 uses
  %i.em = ptrtoint ptr %.4365.i65.us to i64
  %i.en = sub i64 %.pre-phi, %i.em                ; 2 uses
  %i.eo = icmp sgt i64 %i.en, 262128
  br i1 %i.eo, label %.split.us, label %.split215.us

.critedge.backedge.us211:                         ; preds = %_ZL7IsMatchPKhS0_.exit.us204, %_ZL7IsMatchPKhS0_.exit7.thread.us201
  %i.ep = lshr i32 %i.dj, 5
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.eq ; 2 uses
  %i.es = icmp ugt ptr %i.er, %i.cy
  br i1 %i.es, label %.thread101, label %.lr.ph186.us, !prof !80, !llvm.loop !81

.split:                                           ; preds = %.thread74, %.loopexit.split.us
  %.0359.i = phi ptr [ %i.ex, %.loopexit.split.us ], [ %.0335.i, %.thread74 ] ; 2 uses
  %.0353.i = phi i32 [ %i.ey, %.loopexit.split.us ], [ 32, %.thread74 ] ; 2 uses
  %.1349.i = phi i64 [ %i.fa, %.loopexit.split.us ], [ %.0348.i.in, %.thread74 ]
  %i.et = lshr i32 %.0353.i, 5
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %.0359.i, i64 %i.eu ; 2 uses
  %i.ew = icmp ugt ptr %i.ev, %i.cy
  br i1 %i.ew, label %.thread101, label %.lr.ph186, !prof !78

.lr.ph186:                                        ; preds = %.split, %.critedge.backedge.us
  %i.ex = phi ptr [ %i.fp, %.critedge.backedge.us ], [ %i.ev, %.split ] ; 4 uses
  %.in = phi i32 [ %i.ey, %.critedge.backedge.us ], [ %.0353.i, %.split ]
  %.2350.i184.us = phi i64 [ %i.fa, %.critedge.backedge.us ], [ %.1349.i, %.split ]
  %.1360.i183.us = phi ptr [ %i.ex, %.critedge.backedge.us ], [ %.0359.i, %.split ] ; 4 uses
  %i.ey = add i32 %.in, 1                         ; 3 uses
  %.0.copyload.i41.us = load i64, ptr %i.ex, align 1
  %i.ez = mul i64 %.0.copyload.i41.us, 8503243848024064
  %i.fa = lshr i64 %i.ez, 53                      ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.2350.i184.us ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !3
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds i8, ptr %1, i64 %i.fd ; 4 uses
  %i.ff = ptrtoint ptr %.1360.i183.us to i64      ; 3 uses
  %i.fg = sub i64 %i.ff, %i.ca
  %i.fh = trunc i64 %i.fg to i32
  store i32 %i.fh, ptr %i.fb, align 4, !tbaa !3
  %.0.copyload.i51.us = load i32, ptr %.1360.i183.us, align 1
  %.0.copyload.i50.us = load i32, ptr %i.fe, align 1
  %i.fi = icmp eq i32 %.0.copyload.i51.us, %.0.copyload.i50.us
  br i1 %i.fi, label %_ZL7IsMatchPKhS0_.exit.us, label %.critedge.backedge.us

_ZL7IsMatchPKhS0_.exit.us:                        ; preds = %.lr.ph186
  %i.fj = getelementptr inbounds nuw i8, ptr %.1360.i183.us, i64 4
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !9
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !9
  %.not275 = icmp eq i8 %i.fk, %i.fm
  br i1 %.not275, label %.loopexit.split.us, label %.critedge.backedge.us, !prof !79

.critedge.backedge.us:                            ; preds = %_ZL7IsMatchPKhS0_.exit.us, %.lr.ph186
  %i.fn = lshr i32 %i.ey, 5
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.fo ; 2 uses
  %i.fq = icmp ugt ptr %i.fp, %i.cy
  br i1 %i.fq, label %.thread101, label %.lr.ph186, !prof !80, !llvm.loop !81

.loopexit.split.us:                               ; preds = %_ZL7IsMatchPKhS0_.exit.us
  %i.fr = ptrtoint ptr %i.fe to i64
end_hunk_1
begin_hunk_2_@_ZL32BrotliCompressFragmentFastImpl11PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh:bb.a
  %i.aux = load i16, ptr %i.auw, align 2, !tbaa !84
  %i.auy = zext i16 %i.aux to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !627)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  %i.auz = lshr i64 %.epil.init646, 3
  %i.ava = getelementptr inbounds nuw i8, ptr %6, i64 %i.auz ; 2 uses
  %i.avb = load i8, ptr %i.ava, align 1, !tbaa !9, !alias.scope !630, !noalias !627
  %i.avc = zext i8 %i.avb to i64
  %i.avd = and i64 %.epil.init646, 7
  %i.ave = shl nuw nsw i64 %i.auy, %i.avd
  %i.avf = or i64 %i.ave, %i.avc
  store i64 %i.avf, ptr %i.ava, align 1, !noalias !627
  %i.avg = add i64 %.epil.init646, %i.auv
  store i64 %i.avg, ptr %5, align 8, !tbaa !7, !alias.scope !627, !noalias !630
  br label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33

_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa: ; preds = %bb.bn
  %lcmp.mod638.not = icmp eq i64 %xtraiter635, 0
  br i1 %lcmp.mod638.not, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33, label %.epil.preheader630

.epil.preheader630:                               ; preds = %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30
  %.0.i34271.epil.init = phi i64 [ 0, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30 ], [ %i.aup, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa ]
  %.epil.init637 = phi i64 [ %.sink359, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30 ], [ %i.auo, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa ] ; 3 uses
  %lcmp.mod639 = trunc i64 %i.aky to i1
  tail call void @llvm.assume(i1 %lcmp.mod639)
  %i.avh = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34271.epil.init
  %i.avi = load i8, ptr %i.avh, align 1, !tbaa !9
  %i.avj = zext i8 %i.avi to i64                  ; 2 uses
  %i.avk = getelementptr inbounds nuw i8, ptr %0, i64 %i.avj
  %i.avl = load i8, ptr %i.avk, align 1, !tbaa !9
  %i.avm = zext i8 %i.avl to i64
  %i.avn = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.avj
  %i.avo = load i16, ptr %i.avn, align 2, !tbaa !84
  %i.avp = zext i16 %i.avo to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659)
  %i.avq = lshr i64 %.epil.init637, 3
  %i.avr = getelementptr inbounds nuw i8, ptr %6, i64 %i.avq ; 2 uses
  %i.avs = load i8, ptr %i.avr, align 1, !tbaa !9, !alias.scope !659, !noalias !656
  %i.avt = zext i8 %i.avs to i64
  %i.avu = and i64 %.epil.init637, 7
  %i.avv = shl nuw nsw i64 %i.avp, %i.avu
  %i.avw = or i64 %i.avv, %i.avt
  store i64 %i.avw, ptr %i.avr, align 1, !noalias !656
  %i.avx = add i64 %.epil.init637, %i.avm
  store i64 %i.avx, ptr %5, align 8, !tbaa !7, !alias.scope !656, !noalias !659
  br label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33

_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33:           ; preds = %.epil.preheader630, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa, %.epil.preheader642, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa, %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27, %.thread74.thread118, %bb.bj, %bb.ay
  %.8.i = phi ptr [ %.us-phi220, %.thread74.thread118 ], [ %i.ct, %bb.ay ], [ %i.ct, %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27 ], [ %i.ct, %bb.bj ], [ %i.ct, %.epil.preheader642 ], [ %i.ct, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa ], [ %i.ct, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa ], [ %i.ct, %.epil.preheader630 ] ; 2 uses
  %.5323.i = phi i64 [ %i.lq, %.thread74.thread118 ], [ %i.aim, %bb.ay ], [ %i.aim, %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27 ], [ %i.aim, %bb.bj ], [ %i.aim, %.epil.preheader642 ], [ %i.aim, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa ], [ %i.aim, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa ], [ %i.aim, %.epil.preheader630 ] ; 4 uses
  %.not396.i = icmp eq i64 %.5323.i, 0
  br i1 %.not396.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33
  %i.avy = tail call noundef i64 @llvm.umin.i64(i64 %.5323.i, i64 98304) ; 3 uses
  %i.avz = load i64, ptr %5, align 8, !tbaa !7    ; 3 uses
  %i.awa = add i64 %i.avz, 3                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !665)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !668)
  %i.awb = lshr i64 %i.avz, 3
  %i.awc = getelementptr inbounds nuw i8, ptr %6, i64 %i.awb ; 2 uses
  %i.awd = load i8, ptr %i.awc, align 1, !tbaa !9, !alias.scope !668, !noalias !665
  %i.awe = zext i8 %i.awd to i64
  store i64 %i.awe, ptr %i.awc, align 1, !noalias !665
  %i.awf = add i64 %i.avz, 1                      ; 3 uses
  store i64 %i.awf, ptr %5, align 8, !tbaa !7, !alias.scope !665, !noalias !668
  %i.awg = icmp ult i64 %.5323.i, 65537
  %.0.i55 = select i1 %i.awg, i64 4, i64 5        ; 2 uses
  %i.awh = add nsw i64 %.0.i55, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !673)
  %i.awi = lshr i64 %i.awf, 3
  %i.awj = getelementptr inbounds nuw i8, ptr %6, i64 %i.awi ; 2 uses
  %i.awk = load i8, ptr %i.awj, align 1, !tbaa !9, !alias.scope !673, !noalias !670
  %i.awl = zext i8 %i.awk to i64
  %i.awm = and i64 %i.awf, 7
  %i.awn = shl nuw nsw i64 %i.awh, %i.awm
  %i.awo = or i64 %i.awn, %i.awl
  store i64 %i.awo, ptr %i.awj, align 1, !noalias !670
  store i64 %i.awa, ptr %5, align 8, !tbaa !7, !alias.scope !670, !noalias !673
  %i.awp = shl nuw nsw i64 %.0.i55, 2
  %i.awq = add nsw i64 %i.avy, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !678)
  %i.awr = lshr i64 %i.awa, 3
  %i.aws = getelementptr inbounds nuw i8, ptr %6, i64 %i.awr ; 2 uses
  %i.awt = load i8, ptr %i.aws, align 1, !tbaa !9, !alias.scope !678, !noalias !675
  %i.awu = zext i8 %i.awt to i64
  %i.awv = and i64 %i.awa, 7
  %i.aww = shl nuw nsw i64 %i.awq, %i.awv
  %i.awx = or i64 %i.aww, %i.awu
  store i64 %i.awx, ptr %i.aws, align 1, !noalias !675
  %i.awy = add i64 %i.awa, %i.awp                 ; 4 uses
  store i64 %i.awy, ptr %5, align 8, !tbaa !7, !alias.scope !675, !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !680)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !683)
  %i.awz = lshr i64 %i.awy, 3
  %i.axa = getelementptr inbounds nuw i8, ptr %6, i64 %i.awz ; 2 uses
  %i.axb = load i8, ptr %i.axa, align 1, !tbaa !9, !alias.scope !683, !noalias !680
  %i.axc = zext i8 %i.axb to i64
  store i64 %i.axc, ptr %i.axa, align 1, !noalias !680
  %i.axd = add i64 %i.awy, 1                      ; 2 uses
  store i64 %i.axd, ptr %5, align 8, !tbaa !7, !alias.scope !680, !noalias !683
  tail call void @llvm.experimental.noalias.scope.decl(metadata !685)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !688)
  %i.axe = lshr i64 %i.axd, 3
  %i.axf = getelementptr inbounds nuw i8, ptr %6, i64 %i.axe ; 2 uses
  %i.axg = load i8, ptr %i.axf, align 1, !tbaa !9, !alias.scope !688, !noalias !685
  %i.axh = zext i8 %i.axg to i64
  store i64 %i.axh, ptr %i.axf, align 1, !noalias !685
  %i.axi = add i64 %i.awy, 14
  store i64 %i.axi, ptr %5, align 8, !tbaa !7, !alias.scope !685, !noalias !688
  %i.axj = tail call fastcc noundef i64 @_ZL30BuildAndStoreLiteralPrefixCodePN13duckdb_brotli18BrotliOnePassArenaEPKhmPhPtPmS4_(ptr noundef %0, ptr noundef %.8.i, i64 noundef %i.avy, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  tail call fastcc void @_ZL30BuildAndStoreCommandPrefixCodePN13duckdb_brotli18BrotliOnePassArenaEPmPh(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %6)
  br label %_ZL10UpdateBitsmjmPh.exit.outer

bb.bp:                                            ; preds = %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33
  %.not397.i = icmp eq i32 %3, 0
  br i1 %.not397.i, label %bb.bq, label %_ZL30BrotliCompressFragmentFastImplPN13duckdb_brotli18BrotliOnePassArenaEPKhmiPimPmPh.exit

bb.bq:                                            ; preds = %bb.bp
  store i8 0, ptr %i.bn, align 8, !tbaa !9
  store i64 0, ptr %i.aq, align 8, !tbaa !61
  tail call fastcc void @_ZL30BuildAndStoreCommandPrefixCodePN13duckdb_brotli18BrotliOnePassArenaEPmPh(ptr noundef %0, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.bn)
  br label %_ZL30BrotliCompressFragmentFastImplPN13duckdb_brotli18BrotliOnePassArenaEPKhmiPimPmPh.exit

_ZL30BrotliCompressFragmentFastImplPN13duckdb_brotli18BrotliOnePassArenaEPKhmiPimPmPh.exit: ; preds = %bb.bp, %bb.bq
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @_ZL32BrotliCompressFragmentFastImpl13PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 1, 0) %2, i32 noundef %3, ptr noundef captures(none) %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 11 uses
  %i.e = tail call noundef i64 @llvm.umin.i64(i64 range(i64 1, 0) %2, i64 98304) ; 3 uses
  %i.f = load i64, ptr %5, align 8, !tbaa !7      ; 3 uses
  %i.g = add i64 %i.f, 3                          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !693)
  %i.h = lshr i64 %i.f, 3
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 %i.h ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !9, !alias.scope !693, !noalias !690
  %i.k = zext i8 %i.j to i64
  store i64 %i.k, ptr %i.i, align 1, !noalias !690
  %i.l = add i64 %i.f, 1                          ; 3 uses
  store i64 %i.l, ptr %5, align 8, !tbaa !7, !alias.scope !690, !noalias !693
  %i.m = icmp ult i64 %2, 65537
  %.0.i52 = select i1 %i.m, i64 4, i64 5          ; 2 uses
  %i.n = add nsw i64 %.0.i52, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !695)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !698)
  %i.o = lshr i64 %i.l, 3
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 %i.o ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !9, !alias.scope !698, !noalias !695
  %i.r = zext i8 %i.q to i64
  %i.s = and i64 %i.l, 7
  %i.t = shl nuw nsw i64 %i.n, %i.s
  %i.u = or i64 %i.t, %i.r
  store i64 %i.u, ptr %i.p, align 1, !noalias !695
  store i64 %i.g, ptr %5, align 8, !tbaa !7, !alias.scope !695, !noalias !698
  %i.v = shl nuw nsw i64 %.0.i52, 2
  %i.w = add nsw i64 %i.e, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !700)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !703)
  %i.x = lshr i64 %i.g, 3
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !9, !alias.scope !703, !noalias !700
  %i.aa = zext i8 %i.z to i64
  %i.ab = and i64 %i.g, 7
  %i.ac = shl nuw nsw i64 %i.w, %i.ab
  %i.ad = or i64 %i.ac, %i.aa
  store i64 %i.ad, ptr %i.y, align 1, !noalias !700
  %i.ae = add i64 %i.g, %i.v                      ; 4 uses
  store i64 %i.ae, ptr %5, align 8, !tbaa !7, !alias.scope !700, !noalias !703
  tail call void @llvm.experimental.noalias.scope.decl(metadata !705)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !708)
  %i.af = lshr i64 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 %i.af ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !9, !alias.scope !708, !noalias !705
  %i.ai = zext i8 %i.ah to i64
  store i64 %i.ai, ptr %i.ag, align 1, !noalias !705
  %i.aj = add i64 %i.ae, 1                        ; 2 uses
  store i64 %i.aj, ptr %5, align 8, !tbaa !7, !alias.scope !705, !noalias !708
  tail call void @llvm.experimental.noalias.scope.decl(metadata !710)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !713)
  %i.ak = lshr i64 %i.aj, 3
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 %i.ak ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9, !alias.scope !713, !noalias !710
  %i.an = zext i8 %i.am to i64
  store i64 %i.an, ptr %i.al, align 1, !noalias !710
  %i.ao = add i64 %i.ae, 14
  store i64 %i.ao, ptr %5, align 8, !tbaa !7, !alias.scope !710, !noalias !713
  %i.ap = tail call fastcc noundef i64 @_ZL30BuildAndStoreLiteralPrefixCodePN13duckdb_brotli18BrotliOnePassArenaEPKhmPhPtPmS4_(ptr noundef %0, ptr noundef %1, i64 noundef %i.e, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2176 ; 4 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !61 ; 2 uses
  %i.as = icmp ugt i64 %i.ar, 7
  %.pre360 = load i64, ptr %5, align 8, !tbaa !7, !noalias !35 ; 2 uses
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1664
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.au = phi i64 [ %.pre360, %.lr.ph ], [ %i.bg, %bb.b ] ; 3 uses
  %.0347.i182 = phi i64 [ 0, %.lr.ph ], [ %i.bh, %bb.b ] ; 2 uses
  %i.av = lshr exact i64 %.0347.i182, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !9
  %i.ay = zext i8 %i.ax to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !715)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !718)
  %i.az = lshr i64 %i.au, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 %i.az ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !9, !alias.scope !718, !noalias !715
  %i.bc = zext i8 %i.bb to i64
  %i.bd = and i64 %i.au, 7
  %i.be = shl nuw nsw i64 %i.ay, %i.bd
  %i.bf = or i64 %i.be, %i.bc
  store i64 %i.bf, ptr %i.ba, align 1, !noalias !715
  %i.bg = add i64 %i.au, 8                        ; 3 uses
  store i64 %i.bg, ptr %5, align 8, !tbaa !7, !alias.scope !715, !noalias !718
  %i.bh = add i64 %.0347.i182, 8                  ; 2 uses
  %i.bi = or disjoint i64 %i.bh, 7
  %i.bj = load i64, ptr %i.aq, align 8, !tbaa !61 ; 2 uses
  %i.bk = icmp ult i64 %i.bi, %i.bj
  br i1 %i.bk, label %bb.b, label %._crit_edge, !llvm.loop !68

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.bl = phi i64 [ %.pre360, %bb.a ], [ %i.bg, %bb.b ] ; 3 uses
  %.lcssa180 = phi i64 [ %i.ar, %bb.a ], [ %i.bj, %bb.b ] ; 2 uses
  %i.bm = and i64 %.lcssa180, 7
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 3 uses
  %i.bo = lshr i64 %.lcssa180, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !9
  %i.br = zext i8 %i.bq to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !720)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !723)
  %i.bs = lshr i64 %i.bl, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !9, !alias.scope !723, !noalias !720
  %i.bv = zext i8 %i.bu to i64
  %i.bw = and i64 %i.bl, 7
  %i.bx = shl nuw nsw i64 %i.br, %i.bw
  %i.by = or i64 %i.bx, %i.bv
  store i64 %i.by, ptr %i.bt, align 1, !noalias !720
  %i.bz = add i64 %i.bl, %i.bm
  store i64 %i.bz, ptr %5, align 8, !tbaa !7, !alias.scope !720, !noalias !723
  %i.ca = ptrtoint ptr %1 to i64                  ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 831 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1022 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1404 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 830 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1020 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 829 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1018 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1396 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 8 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 807 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 974 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1308 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 6288 ; 3 uses
  br label %_ZL10UpdateBitsmjmPh.exit.outer

_ZL10UpdateBitsmjmPh.exit.outer:                  ; preds = %bb.bo, %._crit_edge
  %.0334.i.ph = phi i64 [ %i.axj, %bb.bo ], [ %i.ap, %._crit_edge ]
  %.0333.i.ph = phi i64 [ %i.awa, %bb.bo ], [ %i.g, %._crit_edge ] ; 3 uses
  %.0332.i.ph = phi i64 [ %i.avy, %bb.bo ], [ %i.e, %._crit_edge ] ; 2 uses
  %.0330.i.ph = phi ptr [ %.8.i, %bb.bo ], [ %1, %._crit_edge ] ; 5 uses
  %.0318.i.ph = phi i64 [ %.5323.i, %bb.bo ], [ %2, %._crit_edge ]
  %i.cr = ptrtoint ptr %.0330.i.ph to i64         ; 2 uses
  %i.cs = icmp ult i64 %.0334.i.ph, 981           ; 2 uses
  br label %_ZL10UpdateBitsmjmPh.exit

_ZL10UpdateBitsmjmPh.exit.loopexit:               ; preds = %bb.ax
  br label %_ZL10UpdateBitsmjmPh.exit, !llvm.loop !75

_ZL10UpdateBitsmjmPh.exit:                        ; preds = %_ZL10UpdateBitsmjmPh.exit.loopexit, %_ZL10UpdateBitsmjmPh.exit.outer
  %.0332.i = phi i64 [ %.0332.i.ph, %_ZL10UpdateBitsmjmPh.exit.outer ], [ %i.aio, %_ZL10UpdateBitsmjmPh.exit.loopexit ]
  %.0331.i = phi i64 [ %.0332.i.ph, %_ZL10UpdateBitsmjmPh.exit.outer ], [ %i.ain, %_ZL10UpdateBitsmjmPh.exit.loopexit ] ; 6 uses
  %.0324.i = phi ptr [ %.0330.i.ph, %_ZL10UpdateBitsmjmPh.exit.outer ], [ %.7.i, %_ZL10UpdateBitsmjmPh.exit.loopexit ] ; 2 uses
  %.0318.i = phi i64 [ %.0318.i.ph, %_ZL10UpdateBitsmjmPh.exit.outer ], [ %i.aim, %_ZL10UpdateBitsmjmPh.exit.loopexit ] ; 3 uses
  %.0.i = phi ptr [ %.0330.i.ph, %_ZL10UpdateBitsmjmPh.exit.outer ], [ %i.ct, %_ZL10UpdateBitsmjmPh.exit.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.c, ptr noundef nonnull align 16 dereferenceable(512) @_ZL13kCmdHistoSeed, i64 512, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i, i64 %.0331.i ; 14 uses
  %i.cu = icmp samesign ugt i64 %.0331.i, 15
  br i1 %i.cu, label %bb.c, label %.thread101, !prof !76

bb.c:                                             ; preds = %_ZL10UpdateBitsmjmPh.exit
  %i.cv = add nsw i64 %.0331.i, -5
  %i.cw = add i64 %.0318.i, -16
  %i.cx = tail call noundef i64 @llvm.umin.i64(i64 %i.cv, i64 range(i64 -15, -16) %i.cw)
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.cx ; 6 uses
  %i.cz = ptrtoint ptr %i.ct to i64
  %i.da = add i64 %i.cz, -5                       ; 2 uses
  br label %.thread74

.thread74:                                        ; preds = %.thread74.backedge, %bb.c
  %.0340.i = phi i32 [ -1, %bb.c ], [ %.0340.i.be, %.thread74.backedge ]
  %.0.i.pn = phi ptr [ %.0.i, %bb.c ], [ %.1325.i.be, %.thread74.backedge ]
  %.1325.i = phi ptr [ %.0324.i, %bb.c ], [ %.1325.i.be, %.thread74.backedge ] ; 8 uses
  %.0340.i.fr = freeze i32 %.0340.i               ; 4 uses
  %.0335.i = getelementptr inbounds nuw i8, ptr %.0.i.pn, i64 1 ; 3 uses
  %.0348.i.in.in.in = load i64, ptr %.0335.i, align 1
  %.0348.i.in.in = mul i64 %.0348.i.in.in.in, 8503243848024064
  %.0348.i.in = lshr i64 %.0348.i.in.in, 51       ; 2 uses
  %i.db = sext i32 %.0340.i.fr to i64
  %i.dc = sub nsw i64 0, %i.db
  %i.dd = icmp sgt i32 %.0340.i.fr, 0
  br i1 %i.dd, label %.split.us.preheader, label %.split, !prof !77

.split.us.preheader:                              ; preds = %.thread74
  %.0348.i = trunc nuw nsw i64 %.0348.i.in to i32
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %.loopexit.split.us205
  %.0359.i.us = phi ptr [ %i.di, %.loopexit.split.us205 ], [ %.0335.i, %.split.us.preheader ] ; 2 uses
  %.0353.i.us = phi i32 [ %i.dj, %.loopexit.split.us205 ], [ 32, %.split.us.preheader ] ; 2 uses
  %.1349.i.us = phi i32 [ %i.dm, %.loopexit.split.us205 ], [ %.0348.i, %.split.us.preheader ]
  %i.de = lshr i32 %.0353.i.us, 5
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %.0359.i.us, i64 %i.df ; 2 uses
  %i.dh = icmp ugt ptr %i.dg, %i.cy
  br i1 %i.dh, label %.thread101, label %.lr.ph186.us, !prof !78

.lr.ph186.us:                                     ; preds = %.split.us, %.critedge.backedge.us211
  %i.di = phi ptr [ %i.er, %.critedge.backedge.us211 ], [ %i.dg, %.split.us ] ; 4 uses
  %.in276 = phi i32 [ %i.dj, %.critedge.backedge.us211 ], [ %.0353.i.us, %.split.us ]
  %.2350.i184.us195 = phi i32 [ %i.dm, %.critedge.backedge.us211 ], [ %.1349.i.us, %.split.us ] ; 2 uses
  %.1360.i183.us196 = phi ptr [ %i.di, %.critedge.backedge.us211 ], [ %.0359.i.us, %.split.us ] ; 8 uses
  %i.dj = add i32 %.in276, 1                      ; 3 uses
  %.0.copyload.i41.us197 = load i64, ptr %i.di, align 1
  %i.dk = mul i64 %.0.copyload.i41.us197, 8503243848024064
  %i.dl = lshr i64 %i.dk, 51
  %i.dm = trunc nuw nsw i64 %i.dl to i32          ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %.1360.i183.us196, i64 %i.dc ; 3 uses
  %.0.copyload.i47.us198 = load i32, ptr %.1360.i183.us196, align 1
  %.0.copyload.i46.us199 = load i32, ptr %i.dn, align 1
  %i.do = icmp eq i32 %.0.copyload.i47.us198, %.0.copyload.i46.us199
  br i1 %i.do, label %_ZL7IsMatchPKhS0_.exit7.us200, label %_ZL7IsMatchPKhS0_.exit7.thread.us201

_ZL7IsMatchPKhS0_.exit7.us200:                    ; preds = %.lr.ph186.us
  %i.dp = getelementptr inbounds nuw i8, ptr %.1360.i183.us196, i64 4
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !9
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !9
  %i.dt = icmp eq i8 %i.dq, %i.ds
  br i1 %i.dt, label %bb.d, label %_ZL7IsMatchPKhS0_.exit7.thread.us201, !prof !77

_ZL7IsMatchPKhS0_.exit7.thread.us201:             ; preds = %_ZL7IsMatchPKhS0_.exit7.us200, %.lr.ph186.us
  %i.du = zext nneg i32 %.2350.i184.us195 to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.du ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !3
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds i8, ptr %1, i64 %i.dx ; 3 uses
  %i.dz = ptrtoint ptr %.1360.i183.us196 to i64   ; 2 uses
  %i.ea = sub i64 %i.dz, %i.ca
  %i.eb = trunc i64 %i.ea to i32
  store i32 %i.eb, ptr %i.dv, align 4, !tbaa !3
  %.0.copyload.i51.us202 = load i32, ptr %.1360.i183.us196, align 1
  %.0.copyload.i50.us203 = load i32, ptr %i.dy, align 1
  %i.ec = icmp eq i32 %.0.copyload.i51.us202, %.0.copyload.i50.us203
  br i1 %i.ec, label %_ZL7IsMatchPKhS0_.exit.us204, label %.critedge.backedge.us211

_ZL7IsMatchPKhS0_.exit.us204:                     ; preds = %_ZL7IsMatchPKhS0_.exit7.thread.us201
  %i.ed = getelementptr inbounds nuw i8, ptr %.1360.i183.us196, i64 4
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !9
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !9
  %.not277 = icmp eq i8 %i.ee, %i.eg
  br i1 %.not277, label %.loopexit.split.us205, label %.critedge.backedge.us211, !prof !79

bb.d:                                             ; preds = %_ZL7IsMatchPKhS0_.exit7.us200
  %i.eh = ptrtoint ptr %.1360.i183.us196 to i64   ; 2 uses
  %i.ei = sub i64 %i.eh, %i.ca
  %i.ej = trunc i64 %i.ei to i32
  %i.ek = zext nneg i32 %.2350.i184.us195 to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ek
  store i32 %i.ej, ptr %i.el, align 4, !tbaa !3
  br label %.loopexit.split.us205

.loopexit.split.us205:                            ; preds = %_ZL7IsMatchPKhS0_.exit.us204, %bb.d
  %.pre-phi = phi i64 [ %i.eh, %bb.d ], [ %i.dz, %_ZL7IsMatchPKhS0_.exit.us204 ] ; 2 uses
  %.4365.i65.us = phi ptr [ %i.dn, %bb.d ], [ %i.dy, %_ZL7IsMatchPKhS0_.exit.us204 ] ; 2 uses
  %i.em = ptrtoint ptr %.4365.i65.us to i64
  %i.en = sub i64 %.pre-phi, %i.em                ; 2 uses
  %i.eo = icmp sgt i64 %i.en, 262128
  br i1 %i.eo, label %.split.us, label %.split215.us

.critedge.backedge.us211:                         ; preds = %_ZL7IsMatchPKhS0_.exit.us204, %_ZL7IsMatchPKhS0_.exit7.thread.us201
  %i.ep = lshr i32 %i.dj, 5
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.eq ; 2 uses
  %i.es = icmp ugt ptr %i.er, %i.cy
  br i1 %i.es, label %.thread101, label %.lr.ph186.us, !prof !80, !llvm.loop !81

.split:                                           ; preds = %.thread74, %.loopexit.split.us
  %.0359.i = phi ptr [ %i.ex, %.loopexit.split.us ], [ %.0335.i, %.thread74 ] ; 2 uses
  %.0353.i = phi i32 [ %i.ey, %.loopexit.split.us ], [ 32, %.thread74 ] ; 2 uses
  %.1349.i = phi i64 [ %i.fa, %.loopexit.split.us ], [ %.0348.i.in, %.thread74 ]
  %i.et = lshr i32 %.0353.i, 5
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %.0359.i, i64 %i.eu ; 2 uses
  %i.ew = icmp ugt ptr %i.ev, %i.cy
  br i1 %i.ew, label %.thread101, label %.lr.ph186, !prof !78

.lr.ph186:                                        ; preds = %.split, %.critedge.backedge.us
  %i.ex = phi ptr [ %i.fp, %.critedge.backedge.us ], [ %i.ev, %.split ] ; 4 uses
  %.in = phi i32 [ %i.ey, %.critedge.backedge.us ], [ %.0353.i, %.split ]
  %.2350.i184.us = phi i64 [ %i.fa, %.critedge.backedge.us ], [ %.1349.i, %.split ]
  %.1360.i183.us = phi ptr [ %i.ex, %.critedge.backedge.us ], [ %.0359.i, %.split ] ; 4 uses
  %i.ey = add i32 %.in, 1                         ; 3 uses
  %.0.copyload.i41.us = load i64, ptr %i.ex, align 1
  %i.ez = mul i64 %.0.copyload.i41.us, 8503243848024064
  %i.fa = lshr i64 %i.ez, 51                      ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.2350.i184.us ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !3
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds i8, ptr %1, i64 %i.fd ; 4 uses
  %i.ff = ptrtoint ptr %.1360.i183.us to i64      ; 3 uses
  %i.fg = sub i64 %i.ff, %i.ca
  %i.fh = trunc i64 %i.fg to i32
  store i32 %i.fh, ptr %i.fb, align 4, !tbaa !3
  %.0.copyload.i51.us = load i32, ptr %.1360.i183.us, align 1
  %.0.copyload.i50.us = load i32, ptr %i.fe, align 1
  %i.fi = icmp eq i32 %.0.copyload.i51.us, %.0.copyload.i50.us
  br i1 %i.fi, label %_ZL7IsMatchPKhS0_.exit.us, label %.critedge.backedge.us

_ZL7IsMatchPKhS0_.exit.us:                        ; preds = %.lr.ph186
  %i.fj = getelementptr inbounds nuw i8, ptr %.1360.i183.us, i64 4
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !9
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !9
  %.not275 = icmp eq i8 %i.fk, %i.fm
  br i1 %.not275, label %.loopexit.split.us, label %.critedge.backedge.us, !prof !79

.critedge.backedge.us:                            ; preds = %_ZL7IsMatchPKhS0_.exit.us, %.lr.ph186
  %i.fn = lshr i32 %i.ey, 5
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.fo ; 2 uses
  %i.fq = icmp ugt ptr %i.fp, %i.cy
  br i1 %i.fq, label %.thread101, label %.lr.ph186, !prof !80, !llvm.loop !81

.loopexit.split.us:                               ; preds = %_ZL7IsMatchPKhS0_.exit.us
  %i.fr = ptrtoint ptr %i.fe to i64
end_hunk_2
begin_hunk_3_@_ZL32BrotliCompressFragmentFastImpl13PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh:bb.a
  %i.aux = load i16, ptr %i.auw, align 2, !tbaa !84
  %i.auy = zext i16 %i.aux to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !944)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !947)
  %i.auz = lshr i64 %.epil.init646, 3
  %i.ava = getelementptr inbounds nuw i8, ptr %6, i64 %i.auz ; 2 uses
  %i.avb = load i8, ptr %i.ava, align 1, !tbaa !9, !alias.scope !947, !noalias !944
  %i.avc = zext i8 %i.avb to i64
  %i.avd = and i64 %.epil.init646, 7
  %i.ave = shl nuw nsw i64 %i.auy, %i.avd
  %i.avf = or i64 %i.ave, %i.avc
  store i64 %i.avf, ptr %i.ava, align 1, !noalias !944
  %i.avg = add i64 %.epil.init646, %i.auv
  store i64 %i.avg, ptr %5, align 8, !tbaa !7, !alias.scope !944, !noalias !947
  br label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33

_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa: ; preds = %bb.bn
  %lcmp.mod638.not = icmp eq i64 %xtraiter635, 0
  br i1 %lcmp.mod638.not, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33, label %.epil.preheader630

.epil.preheader630:                               ; preds = %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30
  %.0.i34271.epil.init = phi i64 [ 0, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30 ], [ %i.aup, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa ]
  %.epil.init637 = phi i64 [ %.sink359, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30 ], [ %i.auo, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa ] ; 3 uses
  %lcmp.mod639 = trunc i64 %i.aky to i1
  tail call void @llvm.assume(i1 %lcmp.mod639)
  %i.avh = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34271.epil.init
  %i.avi = load i8, ptr %i.avh, align 1, !tbaa !9
  %i.avj = zext i8 %i.avi to i64                  ; 2 uses
  %i.avk = getelementptr inbounds nuw i8, ptr %0, i64 %i.avj
  %i.avl = load i8, ptr %i.avk, align 1, !tbaa !9
  %i.avm = zext i8 %i.avl to i64
  %i.avn = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.avj
  %i.avo = load i16, ptr %i.avn, align 2, !tbaa !84
  %i.avp = zext i16 %i.avo to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !973)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !976)
  %i.avq = lshr i64 %.epil.init637, 3
  %i.avr = getelementptr inbounds nuw i8, ptr %6, i64 %i.avq ; 2 uses
  %i.avs = load i8, ptr %i.avr, align 1, !tbaa !9, !alias.scope !976, !noalias !973
  %i.avt = zext i8 %i.avs to i64
  %i.avu = and i64 %.epil.init637, 7
  %i.avv = shl nuw nsw i64 %i.avp, %i.avu
  %i.avw = or i64 %i.avv, %i.avt
  store i64 %i.avw, ptr %i.avr, align 1, !noalias !973
  %i.avx = add i64 %.epil.init637, %i.avm
  store i64 %i.avx, ptr %5, align 8, !tbaa !7, !alias.scope !973, !noalias !976
  br label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33

_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33:           ; preds = %.epil.preheader630, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa, %.epil.preheader642, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa, %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27, %.thread74.thread118, %bb.bj, %bb.ay
  %.8.i = phi ptr [ %.us-phi220, %.thread74.thread118 ], [ %i.ct, %bb.ay ], [ %i.ct, %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27 ], [ %i.ct, %bb.bj ], [ %i.ct, %.epil.preheader642 ], [ %i.ct, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa ], [ %i.ct, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa ], [ %i.ct, %.epil.preheader630 ] ; 2 uses
  %.5323.i = phi i64 [ %i.lq, %.thread74.thread118 ], [ %i.aim, %bb.ay ], [ %i.aim, %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27 ], [ %i.aim, %bb.bj ], [ %i.aim, %.epil.preheader642 ], [ %i.aim, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa ], [ %i.aim, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa ], [ %i.aim, %.epil.preheader630 ] ; 4 uses
  %.not396.i = icmp eq i64 %.5323.i, 0
  br i1 %.not396.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33
  %i.avy = tail call noundef i64 @llvm.umin.i64(i64 %.5323.i, i64 98304) ; 3 uses
  %i.avz = load i64, ptr %5, align 8, !tbaa !7    ; 3 uses
  %i.awa = add i64 %i.avz, 3                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !982)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !985)
  %i.awb = lshr i64 %i.avz, 3
  %i.awc = getelementptr inbounds nuw i8, ptr %6, i64 %i.awb ; 2 uses
  %i.awd = load i8, ptr %i.awc, align 1, !tbaa !9, !alias.scope !985, !noalias !982
  %i.awe = zext i8 %i.awd to i64
  store i64 %i.awe, ptr %i.awc, align 1, !noalias !982
  %i.awf = add i64 %i.avz, 1                      ; 3 uses
  store i64 %i.awf, ptr %5, align 8, !tbaa !7, !alias.scope !982, !noalias !985
  %i.awg = icmp ult i64 %.5323.i, 65537
  %.0.i55 = select i1 %i.awg, i64 4, i64 5        ; 2 uses
  %i.awh = add nsw i64 %.0.i55, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !987)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !990)
  %i.awi = lshr i64 %i.awf, 3
  %i.awj = getelementptr inbounds nuw i8, ptr %6, i64 %i.awi ; 2 uses
  %i.awk = load i8, ptr %i.awj, align 1, !tbaa !9, !alias.scope !990, !noalias !987
  %i.awl = zext i8 %i.awk to i64
  %i.awm = and i64 %i.awf, 7
  %i.awn = shl nuw nsw i64 %i.awh, %i.awm
  %i.awo = or i64 %i.awn, %i.awl
  store i64 %i.awo, ptr %i.awj, align 1, !noalias !987
  store i64 %i.awa, ptr %5, align 8, !tbaa !7, !alias.scope !987, !noalias !990
  %i.awp = shl nuw nsw i64 %.0.i55, 2
  %i.awq = add nsw i64 %i.avy, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !992)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !995)
  %i.awr = lshr i64 %i.awa, 3
  %i.aws = getelementptr inbounds nuw i8, ptr %6, i64 %i.awr ; 2 uses
  %i.awt = load i8, ptr %i.aws, align 1, !tbaa !9, !alias.scope !995, !noalias !992
  %i.awu = zext i8 %i.awt to i64
  %i.awv = and i64 %i.awa, 7
  %i.aww = shl nuw nsw i64 %i.awq, %i.awv
  %i.awx = or i64 %i.aww, %i.awu
  store i64 %i.awx, ptr %i.aws, align 1, !noalias !992
  %i.awy = add i64 %i.awa, %i.awp                 ; 4 uses
  store i64 %i.awy, ptr %5, align 8, !tbaa !7, !alias.scope !992, !noalias !995
  tail call void @llvm.experimental.noalias.scope.decl(metadata !997)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1000)
  %i.awz = lshr i64 %i.awy, 3
  %i.axa = getelementptr inbounds nuw i8, ptr %6, i64 %i.awz ; 2 uses
  %i.axb = load i8, ptr %i.axa, align 1, !tbaa !9, !alias.scope !1000, !noalias !997
  %i.axc = zext i8 %i.axb to i64
  store i64 %i.axc, ptr %i.axa, align 1, !noalias !997
  %i.axd = add i64 %i.awy, 1                      ; 2 uses
  store i64 %i.axd, ptr %5, align 8, !tbaa !7, !alias.scope !997, !noalias !1000
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  %i.axe = lshr i64 %i.axd, 3
  %i.axf = getelementptr inbounds nuw i8, ptr %6, i64 %i.axe ; 2 uses
  %i.axg = load i8, ptr %i.axf, align 1, !tbaa !9, !alias.scope !1005, !noalias !1002
  %i.axh = zext i8 %i.axg to i64
  store i64 %i.axh, ptr %i.axf, align 1, !noalias !1002
  %i.axi = add i64 %i.awy, 14
  store i64 %i.axi, ptr %5, align 8, !tbaa !7, !alias.scope !1002, !noalias !1005
  %i.axj = tail call fastcc noundef i64 @_ZL30BuildAndStoreLiteralPrefixCodePN13duckdb_brotli18BrotliOnePassArenaEPKhmPhPtPmS4_(ptr noundef %0, ptr noundef %.8.i, i64 noundef %i.avy, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  tail call fastcc void @_ZL30BuildAndStoreCommandPrefixCodePN13duckdb_brotli18BrotliOnePassArenaEPmPh(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %6)
  br label %_ZL10UpdateBitsmjmPh.exit.outer

bb.bp:                                            ; preds = %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33
  %.not397.i = icmp eq i32 %3, 0
  br i1 %.not397.i, label %bb.bq, label %_ZL30BrotliCompressFragmentFastImplPN13duckdb_brotli18BrotliOnePassArenaEPKhmiPimPmPh.exit

bb.bq:                                            ; preds = %bb.bp
  store i8 0, ptr %i.bn, align 8, !tbaa !9
  store i64 0, ptr %i.aq, align 8, !tbaa !61
  tail call fastcc void @_ZL30BuildAndStoreCommandPrefixCodePN13duckdb_brotli18BrotliOnePassArenaEPmPh(ptr noundef %0, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.bn)
  br label %_ZL30BrotliCompressFragmentFastImplPN13duckdb_brotli18BrotliOnePassArenaEPKhmiPimPmPh.exit

_ZL30BrotliCompressFragmentFastImplPN13duckdb_brotli18BrotliOnePassArenaEPKhmiPimPmPh.exit: ; preds = %bb.bp, %bb.bq
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @_ZL32BrotliCompressFragmentFastImpl15PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 1, 0) %2, i32 noundef %3, ptr noundef captures(none) %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 11 uses
  %i.e = tail call noundef i64 @llvm.umin.i64(i64 range(i64 1, 0) %2, i64 98304) ; 3 uses
  %i.f = load i64, ptr %5, align 8, !tbaa !7      ; 3 uses
  %i.g = add i64 %i.f, 3                          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1007)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1010)
  %i.h = lshr i64 %i.f, 3
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 %i.h ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !9, !alias.scope !1010, !noalias !1007
  %i.k = zext i8 %i.j to i64
  store i64 %i.k, ptr %i.i, align 1, !noalias !1007
  %i.l = add i64 %i.f, 1                          ; 3 uses
  store i64 %i.l, ptr %5, align 8, !tbaa !7, !alias.scope !1007, !noalias !1010
  %i.m = icmp ult i64 %2, 65537
  %.0.i52 = select i1 %i.m, i64 4, i64 5          ; 2 uses
  %i.n = add nsw i64 %.0.i52, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1012)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  %i.o = lshr i64 %i.l, 3
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 %i.o ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !9, !alias.scope !1015, !noalias !1012
  %i.r = zext i8 %i.q to i64
  %i.s = and i64 %i.l, 7
  %i.t = shl nuw nsw i64 %i.n, %i.s
  %i.u = or i64 %i.t, %i.r
  store i64 %i.u, ptr %i.p, align 1, !noalias !1012
  store i64 %i.g, ptr %5, align 8, !tbaa !7, !alias.scope !1012, !noalias !1015
  %i.v = shl nuw nsw i64 %.0.i52, 2
  %i.w = add nsw i64 %i.e, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1017)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1020)
  %i.x = lshr i64 %i.g, 3
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !9, !alias.scope !1020, !noalias !1017
  %i.aa = zext i8 %i.z to i64
  %i.ab = and i64 %i.g, 7
  %i.ac = shl nuw nsw i64 %i.w, %i.ab
  %i.ad = or i64 %i.ac, %i.aa
  store i64 %i.ad, ptr %i.y, align 1, !noalias !1017
  %i.ae = add i64 %i.g, %i.v                      ; 4 uses
  store i64 %i.ae, ptr %5, align 8, !tbaa !7, !alias.scope !1017, !noalias !1020
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1022)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1025)
  %i.af = lshr i64 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 %i.af ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !9, !alias.scope !1025, !noalias !1022
  %i.ai = zext i8 %i.ah to i64
  store i64 %i.ai, ptr %i.ag, align 1, !noalias !1022
  %i.aj = add i64 %i.ae, 1                        ; 2 uses
  store i64 %i.aj, ptr %5, align 8, !tbaa !7, !alias.scope !1022, !noalias !1025
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1027)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1030)
  %i.ak = lshr i64 %i.aj, 3
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 %i.ak ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9, !alias.scope !1030, !noalias !1027
  %i.an = zext i8 %i.am to i64
  store i64 %i.an, ptr %i.al, align 1, !noalias !1027
  %i.ao = add i64 %i.ae, 14
  store i64 %i.ao, ptr %5, align 8, !tbaa !7, !alias.scope !1027, !noalias !1030
  %i.ap = tail call fastcc noundef i64 @_ZL30BuildAndStoreLiteralPrefixCodePN13duckdb_brotli18BrotliOnePassArenaEPKhmPhPtPmS4_(ptr noundef %0, ptr noundef %1, i64 noundef %i.e, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2176 ; 4 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !61 ; 2 uses
  %i.as = icmp ugt i64 %i.ar, 7
  %.pre360 = load i64, ptr %5, align 8, !tbaa !7, !noalias !35 ; 2 uses
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1664
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.au = phi i64 [ %.pre360, %.lr.ph ], [ %i.bg, %bb.b ] ; 3 uses
  %.0347.i182 = phi i64 [ 0, %.lr.ph ], [ %i.bh, %bb.b ] ; 2 uses
  %i.av = lshr exact i64 %.0347.i182, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !9
  %i.ay = zext i8 %i.ax to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1035)
  %i.az = lshr i64 %i.au, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 %i.az ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !9, !alias.scope !1035, !noalias !1032
  %i.bc = zext i8 %i.bb to i64
  %i.bd = and i64 %i.au, 7
  %i.be = shl nuw nsw i64 %i.ay, %i.bd
  %i.bf = or i64 %i.be, %i.bc
  store i64 %i.bf, ptr %i.ba, align 1, !noalias !1032
  %i.bg = add i64 %i.au, 8                        ; 3 uses
  store i64 %i.bg, ptr %5, align 8, !tbaa !7, !alias.scope !1032, !noalias !1035
  %i.bh = add i64 %.0347.i182, 8                  ; 2 uses
  %i.bi = or disjoint i64 %i.bh, 7
  %i.bj = load i64, ptr %i.aq, align 8, !tbaa !61 ; 2 uses
  %i.bk = icmp ult i64 %i.bi, %i.bj
  br i1 %i.bk, label %bb.b, label %._crit_edge, !llvm.loop !68

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.bl = phi i64 [ %.pre360, %bb.a ], [ %i.bg, %bb.b ] ; 3 uses
  %.lcssa180 = phi i64 [ %i.ar, %bb.a ], [ %i.bj, %bb.b ] ; 2 uses
  %i.bm = and i64 %.lcssa180, 7
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 3 uses
  %i.bo = lshr i64 %.lcssa180, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !9
  %i.br = zext i8 %i.bq to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  %i.bs = lshr i64 %i.bl, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !9, !alias.scope !1040, !noalias !1037
  %i.bv = zext i8 %i.bu to i64
  %i.bw = and i64 %i.bl, 7
  %i.bx = shl nuw nsw i64 %i.br, %i.bw
  %i.by = or i64 %i.bx, %i.bv
  store i64 %i.by, ptr %i.bt, align 1, !noalias !1037
  %i.bz = add i64 %i.bl, %i.bm
  store i64 %i.bz, ptr %5, align 8, !tbaa !7, !alias.scope !1037, !noalias !1040
  %i.ca = ptrtoint ptr %1 to i64                  ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 831 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1022 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1404 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 830 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1020 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 829 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1018 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1396 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 8 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 807 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 974 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1308 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 6288 ; 3 uses
  br label %_ZL10UpdateBitsmjmPh.exit.outer

_ZL10UpdateBitsmjmPh.exit.outer:                  ; preds = %bb.bo, %._crit_edge
  %.0334.i.ph = phi i64 [ %i.axj, %bb.bo ], [ %i.ap, %._crit_edge ]
  %.0333.i.ph = phi i64 [ %i.awa, %bb.bo ], [ %i.g, %._crit_edge ] ; 3 uses
  %.0332.i.ph = phi i64 [ %i.avy, %bb.bo ], [ %i.e, %._crit_edge ] ; 2 uses
  %.0330.i.ph = phi ptr [ %.8.i, %bb.bo ], [ %1, %._crit_edge ] ; 5 uses
  %.0318.i.ph = phi i64 [ %.5323.i, %bb.bo ], [ %2, %._crit_edge ]
  %i.cr = ptrtoint ptr %.0330.i.ph to i64         ; 2 uses
  %i.cs = icmp ult i64 %.0334.i.ph, 981           ; 2 uses
  br label %_ZL10UpdateBitsmjmPh.exit

_ZL10UpdateBitsmjmPh.exit.loopexit:               ; preds = %bb.ax
  br label %_ZL10UpdateBitsmjmPh.exit, !llvm.loop !75

_ZL10UpdateBitsmjmPh.exit:                        ; preds = %_ZL10UpdateBitsmjmPh.exit.loopexit, %_ZL10UpdateBitsmjmPh.exit.outer
  %.0332.i = phi i64 [ %.0332.i.ph, %_ZL10UpdateBitsmjmPh.exit.outer ], [ %i.aio, %_ZL10UpdateBitsmjmPh.exit.loopexit ]
  %.0331.i = phi i64 [ %.0332.i.ph, %_ZL10UpdateBitsmjmPh.exit.outer ], [ %i.ain, %_ZL10UpdateBitsmjmPh.exit.loopexit ] ; 6 uses
  %.0324.i = phi ptr [ %.0330.i.ph, %_ZL10UpdateBitsmjmPh.exit.outer ], [ %.7.i, %_ZL10UpdateBitsmjmPh.exit.loopexit ] ; 2 uses
  %.0318.i = phi i64 [ %.0318.i.ph, %_ZL10UpdateBitsmjmPh.exit.outer ], [ %i.aim, %_ZL10UpdateBitsmjmPh.exit.loopexit ] ; 3 uses
  %.0.i = phi ptr [ %.0330.i.ph, %_ZL10UpdateBitsmjmPh.exit.outer ], [ %i.ct, %_ZL10UpdateBitsmjmPh.exit.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.c, ptr noundef nonnull align 16 dereferenceable(512) @_ZL13kCmdHistoSeed, i64 512, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i, i64 %.0331.i ; 14 uses
  %i.cu = icmp samesign ugt i64 %.0331.i, 15
  br i1 %i.cu, label %bb.c, label %.thread101, !prof !76

bb.c:                                             ; preds = %_ZL10UpdateBitsmjmPh.exit
  %i.cv = add nsw i64 %.0331.i, -5
  %i.cw = add i64 %.0318.i, -16
  %i.cx = tail call noundef i64 @llvm.umin.i64(i64 %i.cv, i64 range(i64 -15, -16) %i.cw)
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.cx ; 6 uses
  %i.cz = ptrtoint ptr %i.ct to i64
  %i.da = add i64 %i.cz, -5                       ; 2 uses
  br label %.thread74

.thread74:                                        ; preds = %.thread74.backedge, %bb.c
  %.0340.i = phi i32 [ -1, %bb.c ], [ %.0340.i.be, %.thread74.backedge ]
  %.0.i.pn = phi ptr [ %.0.i, %bb.c ], [ %.1325.i.be, %.thread74.backedge ]
  %.1325.i = phi ptr [ %.0324.i, %bb.c ], [ %.1325.i.be, %.thread74.backedge ] ; 8 uses
  %.0340.i.fr = freeze i32 %.0340.i               ; 4 uses
  %.0335.i = getelementptr inbounds nuw i8, ptr %.0.i.pn, i64 1 ; 3 uses
  %.0348.i.in.in.in = load i64, ptr %.0335.i, align 1
  %.0348.i.in.in = mul i64 %.0348.i.in.in.in, 8503243848024064
  %.0348.i.in = lshr i64 %.0348.i.in.in, 49       ; 2 uses
  %i.db = sext i32 %.0340.i.fr to i64
  %i.dc = sub nsw i64 0, %i.db
  %i.dd = icmp sgt i32 %.0340.i.fr, 0
  br i1 %i.dd, label %.split.us.preheader, label %.split, !prof !77

.split.us.preheader:                              ; preds = %.thread74
  %.0348.i = trunc nuw nsw i64 %.0348.i.in to i32
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %.loopexit.split.us205
  %.0359.i.us = phi ptr [ %i.di, %.loopexit.split.us205 ], [ %.0335.i, %.split.us.preheader ] ; 2 uses
  %.0353.i.us = phi i32 [ %i.dj, %.loopexit.split.us205 ], [ 32, %.split.us.preheader ] ; 2 uses
  %.1349.i.us = phi i32 [ %i.dm, %.loopexit.split.us205 ], [ %.0348.i, %.split.us.preheader ]
  %i.de = lshr i32 %.0353.i.us, 5
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %.0359.i.us, i64 %i.df ; 2 uses
  %i.dh = icmp ugt ptr %i.dg, %i.cy
  br i1 %i.dh, label %.thread101, label %.lr.ph186.us, !prof !78

.lr.ph186.us:                                     ; preds = %.split.us, %.critedge.backedge.us211
  %i.di = phi ptr [ %i.er, %.critedge.backedge.us211 ], [ %i.dg, %.split.us ] ; 4 uses
  %.in276 = phi i32 [ %i.dj, %.critedge.backedge.us211 ], [ %.0353.i.us, %.split.us ]
  %.2350.i184.us195 = phi i32 [ %i.dm, %.critedge.backedge.us211 ], [ %.1349.i.us, %.split.us ] ; 2 uses
  %.1360.i183.us196 = phi ptr [ %i.di, %.critedge.backedge.us211 ], [ %.0359.i.us, %.split.us ] ; 8 uses
  %i.dj = add i32 %.in276, 1                      ; 3 uses
  %.0.copyload.i41.us197 = load i64, ptr %i.di, align 1
  %i.dk = mul i64 %.0.copyload.i41.us197, 8503243848024064
  %i.dl = lshr i64 %i.dk, 49
  %i.dm = trunc nuw nsw i64 %i.dl to i32          ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %.1360.i183.us196, i64 %i.dc ; 3 uses
  %.0.copyload.i47.us198 = load i32, ptr %.1360.i183.us196, align 1
  %.0.copyload.i46.us199 = load i32, ptr %i.dn, align 1
  %i.do = icmp eq i32 %.0.copyload.i47.us198, %.0.copyload.i46.us199
  br i1 %i.do, label %_ZL7IsMatchPKhS0_.exit7.us200, label %_ZL7IsMatchPKhS0_.exit7.thread.us201

_ZL7IsMatchPKhS0_.exit7.us200:                    ; preds = %.lr.ph186.us
  %i.dp = getelementptr inbounds nuw i8, ptr %.1360.i183.us196, i64 4
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !9
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !9
  %i.dt = icmp eq i8 %i.dq, %i.ds
  br i1 %i.dt, label %bb.d, label %_ZL7IsMatchPKhS0_.exit7.thread.us201, !prof !77

_ZL7IsMatchPKhS0_.exit7.thread.us201:             ; preds = %_ZL7IsMatchPKhS0_.exit7.us200, %.lr.ph186.us
  %i.du = zext nneg i32 %.2350.i184.us195 to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.du ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !3
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds i8, ptr %1, i64 %i.dx ; 3 uses
  %i.dz = ptrtoint ptr %.1360.i183.us196 to i64   ; 2 uses
  %i.ea = sub i64 %i.dz, %i.ca
  %i.eb = trunc i64 %i.ea to i32
  store i32 %i.eb, ptr %i.dv, align 4, !tbaa !3
  %.0.copyload.i51.us202 = load i32, ptr %.1360.i183.us196, align 1
  %.0.copyload.i50.us203 = load i32, ptr %i.dy, align 1
  %i.ec = icmp eq i32 %.0.copyload.i51.us202, %.0.copyload.i50.us203
  br i1 %i.ec, label %_ZL7IsMatchPKhS0_.exit.us204, label %.critedge.backedge.us211

_ZL7IsMatchPKhS0_.exit.us204:                     ; preds = %_ZL7IsMatchPKhS0_.exit7.thread.us201
  %i.ed = getelementptr inbounds nuw i8, ptr %.1360.i183.us196, i64 4
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !9
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !9
  %.not277 = icmp eq i8 %i.ee, %i.eg
  br i1 %.not277, label %.loopexit.split.us205, label %.critedge.backedge.us211, !prof !79

bb.d:                                             ; preds = %_ZL7IsMatchPKhS0_.exit7.us200
  %i.eh = ptrtoint ptr %.1360.i183.us196 to i64   ; 2 uses
  %i.ei = sub i64 %i.eh, %i.ca
  %i.ej = trunc i64 %i.ei to i32
  %i.ek = zext nneg i32 %.2350.i184.us195 to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ek
  store i32 %i.ej, ptr %i.el, align 4, !tbaa !3
  br label %.loopexit.split.us205

.loopexit.split.us205:                            ; preds = %_ZL7IsMatchPKhS0_.exit.us204, %bb.d
  %.pre-phi = phi i64 [ %i.eh, %bb.d ], [ %i.dz, %_ZL7IsMatchPKhS0_.exit.us204 ] ; 2 uses
  %.4365.i65.us = phi ptr [ %i.dn, %bb.d ], [ %i.dy, %_ZL7IsMatchPKhS0_.exit.us204 ] ; 2 uses
  %i.em = ptrtoint ptr %.4365.i65.us to i64
  %i.en = sub i64 %.pre-phi, %i.em                ; 2 uses
  %i.eo = icmp sgt i64 %i.en, 262128
  br i1 %i.eo, label %.split.us, label %.split215.us

.critedge.backedge.us211:                         ; preds = %_ZL7IsMatchPKhS0_.exit.us204, %_ZL7IsMatchPKhS0_.exit7.thread.us201
  %i.ep = lshr i32 %i.dj, 5
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.eq ; 2 uses
  %i.es = icmp ugt ptr %i.er, %i.cy
  br i1 %i.es, label %.thread101, label %.lr.ph186.us, !prof !80, !llvm.loop !81

.split:                                           ; preds = %.thread74, %.loopexit.split.us
  %.0359.i = phi ptr [ %i.ex, %.loopexit.split.us ], [ %.0335.i, %.thread74 ] ; 2 uses
  %.0353.i = phi i32 [ %i.ey, %.loopexit.split.us ], [ 32, %.thread74 ] ; 2 uses
  %.1349.i = phi i64 [ %i.fa, %.loopexit.split.us ], [ %.0348.i.in, %.thread74 ]
  %i.et = lshr i32 %.0353.i, 5
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %.0359.i, i64 %i.eu ; 2 uses
  %i.ew = icmp ugt ptr %i.ev, %i.cy
  br i1 %i.ew, label %.thread101, label %.lr.ph186, !prof !78

.lr.ph186:                                        ; preds = %.split, %.critedge.backedge.us
  %i.ex = phi ptr [ %i.fp, %.critedge.backedge.us ], [ %i.ev, %.split ] ; 4 uses
  %.in = phi i32 [ %i.ey, %.critedge.backedge.us ], [ %.0353.i, %.split ]
  %.2350.i184.us = phi i64 [ %i.fa, %.critedge.backedge.us ], [ %.1349.i, %.split ]
  %.1360.i183.us = phi ptr [ %i.ex, %.critedge.backedge.us ], [ %.0359.i, %.split ] ; 4 uses
  %i.ey = add i32 %.in, 1                         ; 3 uses
  %.0.copyload.i41.us = load i64, ptr %i.ex, align 1
  %i.ez = mul i64 %.0.copyload.i41.us, 8503243848024064
  %i.fa = lshr i64 %i.ez, 49                      ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.2350.i184.us ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !3
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds i8, ptr %1, i64 %i.fd ; 4 uses
  %i.ff = ptrtoint ptr %.1360.i183.us to i64      ; 3 uses
  %i.fg = sub i64 %i.ff, %i.ca
  %i.fh = trunc i64 %i.fg to i32
  store i32 %i.fh, ptr %i.fb, align 4, !tbaa !3
  %.0.copyload.i51.us = load i32, ptr %.1360.i183.us, align 1
  %.0.copyload.i50.us = load i32, ptr %i.fe, align 1
  %i.fi = icmp eq i32 %.0.copyload.i51.us, %.0.copyload.i50.us
  br i1 %i.fi, label %_ZL7IsMatchPKhS0_.exit.us, label %.critedge.backedge.us

_ZL7IsMatchPKhS0_.exit.us:                        ; preds = %.lr.ph186
  %i.fj = getelementptr inbounds nuw i8, ptr %.1360.i183.us, i64 4
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !9
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !9
  %.not275 = icmp eq i8 %i.fk, %i.fm
  br i1 %.not275, label %.loopexit.split.us, label %.critedge.backedge.us, !prof !79

.critedge.backedge.us:                            ; preds = %_ZL7IsMatchPKhS0_.exit.us, %.lr.ph186
  %i.fn = lshr i32 %i.ey, 5
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.fo ; 2 uses
  %i.fq = icmp ugt ptr %i.fp, %i.cy
  br i1 %i.fq, label %.thread101, label %.lr.ph186, !prof !80, !llvm.loop !81

.loopexit.split.us:                               ; preds = %_ZL7IsMatchPKhS0_.exit.us
  %i.fr = ptrtoint ptr %i.fe to i64
end_hunk_3
begin_hunk_4_@_ZL30BuildAndStoreCommandPrefixCodePN13duckdb_brotli18BrotliOnePassArenaEPmPh:bb.a
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !9
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 7768
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !9
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 810
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !9
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 7456
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !9
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 818
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !9
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 7584
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !9
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 826
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !9
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 7776
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !9
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 811
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !9
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 7464
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !9
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 819
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !9
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 7592
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !9
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 827
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !9
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 7784
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !9
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 812
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !9
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 7472
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !9
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 820
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !9
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 7600
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !9
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 828
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !9
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 7792
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !9
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 813
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !9
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 7480
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !9
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 821
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !9
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 7608
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !9
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 829
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !9
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 7800
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !9
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 814
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !9
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 7488
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !9
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 822
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !9
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 7616
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !9
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 830
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !9
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 7808
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !9
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 815
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !9
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 7496
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !9
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 823
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !9
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 7624
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !9
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 831
  %i.df = load i8, ptr %i.de, align 1, !tbaa !9
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 7816
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !9
  tail call void @_ZN13duckdb_brotli22BrotliStoreHuffmanTreeEPKhmPNS_11HuffmanTreeEPmPh(ptr noundef nonnull %i.d, i64 noundef 704, ptr noundef nonnull %i.f, ptr noundef %1, ptr noundef %2)
  tail call void @_ZN13duckdb_brotli22BrotliStoreHuffmanTreeEPKhmPNS_11HuffmanTreeEPmPh(ptr noundef nonnull %i.h, i64 noundef 64, ptr noundef nonnull %i.f, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @_ZN13duckdb_brotli34BrotliBuildAndStoreHuffmanTreeFastEPNS_11HuffmanTreeEPKjmmPhPtPmS4_(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @log2(double noundef) local_unnamed_addr #8

declare void @_ZN13duckdb_brotli23BrotliCreateHuffmanTreeEPKjmiPNS_11HuffmanTreeEPh(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @_ZN13duckdb_brotli31BrotliConvertBitDepthsToSymbolsEPKhmPt(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

declare void @_ZN13duckdb_brotli22BrotliStoreHuffmanTreeEPKhmPNS_11HuffmanTreeEPmPh(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umin.v2i32(<2 x i32>, <2 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !5, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!12 = distinct !{!12, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!13 = !{!14}
!14 = distinct !{!14, !12, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!17 = distinct !{!17, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!18 = !{!19}
!19 = distinct !{!19, !17, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!22 = distinct !{!22, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!23 = !{!24}
!24 = distinct !{!24, !22, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!27 = distinct !{!27, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!28 = !{!29}
!29 = distinct !{!29, !27, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!32 = distinct !{!32, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!33 = !{!34}
!34 = distinct !{!34, !32, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!35 = !{}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!38 = distinct !{!38, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!39 = !{!40}
!40 = distinct !{!40, !38, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!43 = distinct !{!43, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!44 = !{!45}
!45 = distinct !{!45, !43, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!48 = distinct !{!48, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!49 = !{!50}
!50 = distinct !{!50, !48, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!53 = distinct !{!53, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!54 = !{!55}
!55 = distinct !{!55, !53, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!58 = distinct !{!58, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!59 = !{!60}
!60 = distinct !{!60, !58, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!61 = !{!62, !8, i64 2176}
!62 = !{!"_ZTSN13duckdb_brotli18BrotliOnePassArenaE", !5, i64 0, !5, i64 256, !5, i64 768, !5, i64 896, !5, i64 1152, !5, i64 1664, !8, i64 2176, !5, i64 2184, !5, i64 6288, !5, i64 7312, !5, i64 8016}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!65 = distinct !{!65, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!66 = !{!67}
!67 = distinct !{!67, !65, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!68 = distinct !{!68, !69}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!72 = distinct !{!72, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!73 = !{!74}
!74 = distinct !{!74, !72, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!75 = distinct !{!75, !69}
!76 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!77 = !{!"branch_weights", i32 2146410443, i32 1073205}
!78 = !{!"branch_weights", i32 1, i32 127}
!79 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!80 = !{!"branch_weights", i32 127, i32 255873}
!81 = distinct !{!81, !69}
!82 = distinct !{!82, !69}
!83 = distinct !{!83, !69}
!84 = !{!85, !85, i64 0}
!85 = !{!"short", !5, i64 0}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!88 = distinct !{!88, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!89 = !{!90}
!90 = distinct !{!90, !88, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!93 = distinct !{!93, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!94 = !{!95}
!95 = distinct !{!95, !93, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!98 = distinct !{!98, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!99 = !{!100}
!100 = distinct !{!100, !98, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!103 = distinct !{!103, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!104 = !{!105}
!105 = distinct !{!105, !103, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!108 = distinct !{!108, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!109 = !{!110}
!110 = distinct !{!110, !108, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!113 = distinct !{!113, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!114 = !{!115}
!115 = distinct !{!115, !113, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!118 = distinct !{!118, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!119 = !{!120}
!120 = distinct !{!120, !118, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!123 = distinct !{!123, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!124 = !{!125}
!125 = distinct !{!125, !123, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!128 = distinct !{!128, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!129 = !{!130}
!130 = distinct !{!130, !128, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!133 = distinct !{!133, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!134 = !{!135}
!135 = distinct !{!135, !133, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!136 = !{!137}
!137 = distinct !{!137, !138, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!138 = distinct !{!138, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!139 = !{!140}
!140 = distinct !{!140, !138, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!143 = distinct !{!143, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!144 = !{!145}
!145 = distinct !{!145, !143, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!146 = !{!147}
!147 = distinct !{!147, !143, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0:It1"}
!148 = !{!149}
!149 = distinct !{!149, !143, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1:It1"}
!150 = distinct !{!150, !69}
!151 = !{!152}
!152 = distinct !{!152, !153, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!153 = distinct !{!153, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!154 = !{!155}
!155 = distinct !{!155, !153, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!158 = distinct !{!158, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!159 = !{!160}
!160 = distinct !{!160, !158, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!163 = distinct !{!163, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!164 = !{!165}
!165 = distinct !{!165, !163, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!166 = !{!167}
!167 = distinct !{!167, !168, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!168 = distinct !{!168, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!169 = !{!170}
!170 = distinct !{!170, !168, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!171 = !{!172}
!172 = distinct !{!172, !173, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!173 = distinct !{!173, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!174 = !{!175}
!175 = distinct !{!175, !173, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!176 = !{!177}
!177 = distinct !{!177, !178, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!178 = distinct !{!178, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!179 = !{!180}
!180 = distinct !{!180, !178, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!181 = !{!182}
!182 = distinct !{!182, !183, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!183 = distinct !{!183, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!184 = !{!185}
!185 = distinct !{!185, !183, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!186 = !{!187}
!187 = distinct !{!187, !188, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!188 = distinct !{!188, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!189 = !{!190}
!190 = distinct !{!190, !188, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!191 = !{!192}
!192 = distinct !{!192, !193, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!193 = distinct !{!193, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!194 = !{!195}
!195 = distinct !{!195, !193, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!196 = !{!197}
!197 = distinct !{!197, !198, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!198 = distinct !{!198, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!199 = !{!200}
!200 = distinct !{!200, !198, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!201 = !{!202}
!202 = distinct !{!202, !203, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!203 = distinct !{!203, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!204 = !{!205}
!205 = distinct !{!205, !203, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!206 = !{!207}
!207 = distinct !{!207, !208, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!208 = distinct !{!208, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!209 = !{!210}
!210 = distinct !{!210, !208, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!211 = !{!212}
!212 = distinct !{!212, !213, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!213 = distinct !{!213, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!214 = !{!215}
!215 = distinct !{!215, !213, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!216 = !{!217}
!217 = distinct !{!217, !218, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!218 = distinct !{!218, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!219 = !{!220}
!220 = distinct !{!220, !218, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!221 = !{!222}
!222 = distinct !{!222, !223, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!223 = distinct !{!223, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!224 = !{!225}
!225 = distinct !{!225, !223, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!226 = !{!227}
!227 = distinct !{!227, !228, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!228 = distinct !{!228, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!229 = !{!230}
!230 = distinct !{!230, !228, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!231 = !{!232}
!232 = distinct !{!232, !233, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!233 = distinct !{!233, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!234 = !{!235}
!235 = distinct !{!235, !233, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!236 = !{!237}
!237 = distinct !{!237, !238, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!238 = distinct !{!238, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!239 = !{!240}
!240 = distinct !{!240, !238, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!241 = !{!242}
!242 = distinct !{!242, !243, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!243 = distinct !{!243, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!244 = !{!245}
!245 = distinct !{!245, !243, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!246 = !{!247}
!247 = distinct !{!247, !248, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!248 = distinct !{!248, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!249 = !{!250}
!250 = distinct !{!250, !248, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!251 = !{!252}
!252 = distinct !{!252, !253, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!253 = distinct !{!253, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!254 = !{!255}
!255 = distinct !{!255, !253, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!256 = !{!257}
!257 = distinct !{!257, !258, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!258 = distinct !{!258, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!259 = !{!260}
!260 = distinct !{!260, !258, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!261 = !{!262}
!262 = distinct !{!262, !263, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!263 = distinct !{!263, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!264 = !{!265}
!265 = distinct !{!265, !263, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!266 = !{!267}
!267 = distinct !{!267, !268, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!268 = distinct !{!268, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!269 = !{!270}
!270 = distinct !{!270, !268, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!271 = distinct !{!271, !69}
!272 = !{!273, !273, i64 0}
!273 = !{!"double", !5, i64 0}
!274 = distinct !{!274, !69}
!275 = !{!276}
!276 = distinct !{!276, !277, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!277 = distinct !{!277, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!278 = !{!279}
!279 = distinct !{!279, !277, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!280 = !{!281}
!281 = distinct !{!281, !282, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!282 = distinct !{!282, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!283 = !{!284}
!284 = distinct !{!284, !282, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!285 = !{!286}
!286 = distinct !{!286, !287, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!287 = distinct !{!287, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!288 = !{!289}
!289 = distinct !{!289, !287, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!290 = !{!291}
!291 = distinct !{!291, !292, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!292 = distinct !{!292, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!293 = !{!294}
!294 = distinct !{!294, !292, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!295 = !{!296}
!296 = distinct !{!296, !297, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!297 = distinct !{!297, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!298 = !{!299}
!299 = distinct !{!299, !297, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!300 = !{!301}
!301 = distinct !{!301, !302, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!302 = distinct !{!302, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!303 = !{!304}
!304 = distinct !{!304, !302, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!305 = !{!306}
!306 = distinct !{!306, !307, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!307 = distinct !{!307, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!308 = !{!309}
!309 = distinct !{!309, !307, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!310 = !{!311}
!311 = distinct !{!311, !312, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!312 = distinct !{!312, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!313 = !{!314}
!314 = distinct !{!314, !312, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!315 = !{!316}
!316 = distinct !{!316, !312, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0:It1"}
!317 = !{!318}
!318 = distinct !{!318, !312, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1:It1"}
!319 = !{!320}
!320 = distinct !{!320, !321, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!321 = distinct !{!321, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!322 = !{!323}
!323 = distinct !{!323, !321, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!324 = !{!325}
!325 = distinct !{!325, !326, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!326 = distinct !{!326, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!327 = !{!328}
!328 = distinct !{!328, !326, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!329 = !{!330}
!330 = distinct !{!330, !331, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!331 = distinct !{!331, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!332 = !{!333}
!333 = distinct !{!333, !331, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!334 = !{!335}
!335 = distinct !{!335, !336, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!336 = distinct !{!336, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!337 = !{!338}
!338 = distinct !{!338, !336, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!339 = !{!340}
!340 = distinct !{!340, !341, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!341 = distinct !{!341, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!342 = !{!343}
!343 = distinct !{!343, !341, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!344 = !{!345}
!345 = distinct !{!345, !341, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0:It1"}
!346 = !{!347}
!347 = distinct !{!347, !341, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1:It1"}
!348 = !{!349}
!349 = distinct !{!349, !350, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!350 = distinct !{!350, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!351 = !{!352}
!352 = distinct !{!352, !350, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!353 = !{!354}
!354 = distinct !{!354, !355, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!355 = distinct !{!355, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!356 = !{!357}
!357 = distinct !{!357, !355, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!358 = !{!359}
!359 = distinct !{!359, !360, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!360 = distinct !{!360, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!361 = !{!362}
!362 = distinct !{!362, !360, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!363 = !{!364}
!364 = distinct !{!364, !365, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!365 = distinct !{!365, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!366 = !{!367}
!367 = distinct !{!367, !365, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!368 = !{!369}
!369 = distinct !{!369, !370, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!370 = distinct !{!370, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!371 = !{!372}
!372 = distinct !{!372, !370, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!373 = !{!374}
!374 = distinct !{!374, !375, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!375 = distinct !{!375, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!376 = !{!377}
!377 = distinct !{!377, !375, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!378 = !{!379}
!379 = distinct !{!379, !380, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!380 = distinct !{!380, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!381 = !{!382}
!382 = distinct !{!382, !380, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!383 = !{!384}
!384 = distinct !{!384, !385, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!385 = distinct !{!385, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!386 = !{!387}
!387 = distinct !{!387, !385, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!388 = !{!389}
!389 = distinct !{!389, !390, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!390 = distinct !{!390, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!391 = !{!392}
!392 = distinct !{!392, !390, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!393 = !{!394}
!394 = distinct !{!394, !395, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!395 = distinct !{!395, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!396 = !{!397}
!397 = distinct !{!397, !395, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!398 = !{!399}
!399 = distinct !{!399, !400, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!400 = distinct !{!400, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!401 = !{!402}
!402 = distinct !{!402, !400, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!403 = !{!404}
!404 = distinct !{!404, !405, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!405 = distinct !{!405, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!406 = !{!407}
!407 = distinct !{!407, !405, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!408 = !{!409}
!409 = distinct !{!409, !410, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!410 = distinct !{!410, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!411 = !{!412}
!412 = distinct !{!412, !410, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!413 = !{!414}
!414 = distinct !{!414, !415, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!415 = distinct !{!415, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!416 = !{!417}
!417 = distinct !{!417, !415, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!418 = !{!419}
!419 = distinct !{!419, !420, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!420 = distinct !{!420, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!421 = !{!422}
!422 = distinct !{!422, !420, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!423 = !{!424}
!424 = distinct !{!424, !425, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!425 = distinct !{!425, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!426 = !{!427}
!427 = distinct !{!427, !425, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!428 = !{!429}
!429 = distinct !{!429, !430, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!430 = distinct !{!430, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!431 = !{!432}
!432 = distinct !{!432, !430, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!433 = !{!434}
!434 = distinct !{!434, !435, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!435 = distinct !{!435, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!436 = !{!437}
!437 = distinct !{!437, !435, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!438 = !{!439}
!439 = distinct !{!439, !440, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!440 = distinct !{!440, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!441 = !{!442}
!442 = distinct !{!442, !440, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!443 = !{!444}
!444 = distinct !{!444, !445, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!445 = distinct !{!445, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!446 = !{!447}
!447 = distinct !{!447, !445, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!448 = !{!449}
!449 = distinct !{!449, !450, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!450 = distinct !{!450, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!451 = !{!452}
!452 = distinct !{!452, !450, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!453 = !{!454}
!454 = distinct !{!454, !455, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!455 = distinct !{!455, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!456 = !{!457}
!457 = distinct !{!457, !455, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!458 = !{!459}
!459 = distinct !{!459, !460, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!460 = distinct !{!460, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!461 = !{!462}
!462 = distinct !{!462, !460, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!463 = !{!464}
!464 = distinct !{!464, !465, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!465 = distinct !{!465, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!466 = !{!467}
!467 = distinct !{!467, !465, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!468 = !{!469}
!469 = distinct !{!469, !465, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0:It1"}
!470 = !{!471}
!471 = distinct !{!471, !465, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1:It1"}
!472 = !{!473}
!473 = distinct !{!473, !474, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!474 = distinct !{!474, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
end_hunk_4
begin_hunk_5_@llvm.vector.reduce.add.v2i64
!1146 = !{!1147}
!1147 = distinct !{!1147, !1148, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!1148 = distinct !{!1148, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!1149 = !{!1150}
!1150 = distinct !{!1150, !1148, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!1151 = !{!1152}
!1152 = distinct !{!1152, !1153, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!1153 = distinct !{!1153, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!1154 = !{!1155}
!1155 = distinct !{!1155, !1153, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!1156 = !{!1157}
!1157 = distinct !{!1157, !1158, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!1158 = distinct !{!1158, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!1159 = !{!1160}
!1160 = distinct !{!1160, !1158, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!1161 = !{!1162}
!1162 = distinct !{!1162, !1163, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!1163 = distinct !{!1163, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!1164 = !{!1165}
!1165 = distinct !{!1165, !1163, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!1166 = !{!1167}
!1167 = distinct !{!1167, !1168, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!1168 = distinct !{!1168, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!1169 = !{!1170}
!1170 = distinct !{!1170, !1168, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!1171 = !{!1172}
!1172 = distinct !{!1172, !1173, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!1173 = distinct !{!1173, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!1174 = !{!1175}
!1175 = distinct !{!1175, !1173, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!1176 = !{!1177}
!1177 = distinct !{!1177, !1178, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!1178 = distinct !{!1178, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!1179 = !{!1180}
!1180 = distinct !{!1180, !1178, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!1181 = !{!1182}
!1182 = distinct !{!1182, !1183, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!1183 = distinct !{!1183, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!1184 = !{!1185}
!1185 = distinct !{!1185, !1183, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!1186 = !{!1187}
!1187 = distinct !{!1187, !1188, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!1188 = distinct !{!1188, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!1189 = !{!1190}
!1190 = distinct !{!1190, !1188, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!1191 = !{!1192}
!1192 = distinct !{!1192, !1193, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!1193 = distinct !{!1193, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!1194 = !{!1195}
!1195 = distinct !{!1195, !1193, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!1196 = !{!1197}
!1197 = distinct !{!1197, !1198, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!1198 = distinct !{!1198, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!1199 = !{!1200}
!1200 = distinct !{!1200, !1198, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!1201 = !{!1202}
!1202 = distinct !{!1202, !1203, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!1203 = distinct !{!1203, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!1204 = !{!1205}
!1205 = distinct !{!1205, !1203, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!1206 = !{!1207}
!1207 = distinct !{!1207, !1208, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!1208 = distinct !{!1208, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!1209 = !{!1210}
!1210 = distinct !{!1210, !1208, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!1211 = !{!1212}
!1212 = distinct !{!1212, !1213, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!1213 = distinct !{!1213, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!1214 = !{!1215}
!1215 = distinct !{!1215, !1213, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!1216 = !{!1217}
!1217 = distinct !{!1217, !1218, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!1218 = distinct !{!1218, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!1219 = !{!1220}
!1220 = distinct !{!1220, !1218, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!1221 = !{!1222}
!1222 = distinct !{!1222, !1223, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!1223 = distinct !{!1223, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!1224 = !{!1225}
!1225 = distinct !{!1225, !1223, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!1226 = !{!1227}
!1227 = distinct !{!1227, !1228, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!1228 = distinct !{!1228, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!1229 = !{!1230}
!1230 = distinct !{!1230, !1228, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!1231 = !{!1232}
!1232 = distinct !{!1232, !1233, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!1233 = distinct !{!1233, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!1234 = !{!1235}
!1235 = distinct !{!1235, !1233, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!1236 = !{!1237}
!1237 = distinct !{!1237, !1238, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!1238 = distinct !{!1238, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!1239 = !{!1240}
!1240 = distinct !{!1240, !1238, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!1241 = !{!1242}
!1242 = distinct !{!1242, !1243, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!1243 = distinct !{!1243, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!1244 = !{!1245}
!1245 = distinct !{!1245, !1243, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!1246 = !{!1247}
!1247 = distinct !{!1247, !1248, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!1248 = distinct !{!1248, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!1249 = !{!1250}
!1250 = distinct !{!1250, !1248, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!1251 = !{!1252}
!1252 = distinct !{!1252, !1253, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!1253 = distinct !{!1253, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!1254 = !{!1255}
!1255 = distinct !{!1255, !1253, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!1256 = !{!1257}
!1257 = distinct !{!1257, !1258, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!1258 = distinct !{!1258, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!1259 = !{!1260}
!1260 = distinct !{!1260, !1258, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!1261 = !{!1262}
!1262 = distinct !{!1262, !1263, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!1263 = distinct !{!1263, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!1264 = !{!1265}
!1265 = distinct !{!1265, !1263, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!1266 = !{!1267}
!1267 = distinct !{!1267, !1263, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0:It1"}
!1268 = !{!1269}
!1269 = distinct !{!1269, !1263, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1:It1"}
!1270 = !{!1271}
!1271 = distinct !{!1271, !1272, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!1272 = distinct !{!1272, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!1273 = !{!1274}
!1274 = distinct !{!1274, !1272, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!1275 = !{!1276}
!1276 = distinct !{!1276, !1277, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!1277 = distinct !{!1277, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!1278 = !{!1279}
!1279 = distinct !{!1279, !1277, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!1280 = !{!1281}
!1281 = distinct !{!1281, !1282, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!1282 = distinct !{!1282, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!1283 = !{!1284}
!1284 = distinct !{!1284, !1282, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!1285 = !{!1286}
!1286 = distinct !{!1286, !1287, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!1287 = distinct !{!1287, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!1288 = !{!1289}
!1289 = distinct !{!1289, !1287, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!1290 = !{!1291}
!1291 = distinct !{!1291, !1292, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!1292 = distinct !{!1292, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!1293 = !{!1294}
!1294 = distinct !{!1294, !1292, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!1295 = !{!1296}
!1296 = distinct !{!1296, !1292, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0:It1"}
!1297 = !{!1298}
!1298 = distinct !{!1298, !1292, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1:It1"}
!1299 = !{!1300}
!1300 = distinct !{!1300, !1301, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!1301 = distinct !{!1301, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!1302 = !{!1303}
!1303 = distinct !{!1303, !1301, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!1304 = !{!1305}
!1305 = distinct !{!1305, !1306, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!1306 = distinct !{!1306, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!1307 = !{!1308}
!1308 = distinct !{!1308, !1306, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!1309 = !{!1310}
!1310 = distinct !{!1310, !1311, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!1311 = distinct !{!1311, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!1312 = !{!1313}
!1313 = distinct !{!1313, !1311, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!1314 = !{!1315}
!1315 = distinct !{!1315, !1316, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!1316 = distinct !{!1316, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!1317 = !{!1318}
!1318 = distinct !{!1318, !1316, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!1319 = !{!1320}
!1320 = distinct !{!1320, !1321, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!1321 = distinct !{!1321, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!1322 = !{!1323}
!1323 = distinct !{!1323, !1321, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!1324 = !{!1325}
!1325 = distinct !{!1325, !1326, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!1326 = distinct !{!1326, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!1327 = !{!1328}
!1328 = distinct !{!1328, !1326, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!1329 = !{!1330}
!1330 = distinct !{!1330, !1331, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!1331 = distinct !{!1331, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!1332 = !{!1333}
!1333 = distinct !{!1333, !1331, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!1334 = !{!1335}
!1335 = distinct !{!1335, !1336, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!1336 = distinct !{!1336, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!1337 = !{!1338}
!1338 = distinct !{!1338, !1336, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!1339 = !{!1340}
!1340 = distinct !{!1340, !1341, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 1"}
!1341 = distinct !{!1341, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh"}
!1342 = !{!1343}
!1343 = distinct !{!1343, !1341, !"_ZN13duckdb_brotliL15BrotliWriteBitsEmmPmPh: argument 0"}
!1344 = distinct !{!1344, !1345}
!1345 = !{!"llvm.loop.unroll.disable"}
!1346 = distinct !{!1346, !69, !1347, !1348}
!1347 = !{!"llvm.loop.isvectorized", i32 1}
!1348 = !{!"llvm.loop.unroll.runtime.disable"}
!1349 = distinct !{!1349, !69}
!1350 = distinct !{!1350, !69}
!1351 = distinct !{!1351, !69, !1347, !1348}
!1352 = distinct !{!1352, !69}
end_hunk_5
