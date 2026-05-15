inline.NumInlined: 19
inline.NumDeleted: 4
begin_hunk_0_@BrotliCompressFragmentFast:bb.a
  tail call fastcc void @BrotliCompressFragmentFastImpl9(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6, ptr noundef %7)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  tail call fastcc void @BrotliCompressFragmentFastImpl11(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6, ptr noundef %7)
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  tail call fastcc void @BrotliCompressFragmentFastImpl13(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6, ptr noundef %7)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  tail call fastcc void @BrotliCompressFragmentFastImpl15(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6, ptr noundef %7)
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f, %bb.e, %bb.d, %bb.c
  %i.e = load i64, ptr %6, align 8, !tbaa !9
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
  %i.o = load i8, ptr %i.n, align 1, !tbaa !11
  %i.p = and i8 %i.o, %i.l
  store i8 %i.p, ptr %i.n, align 1, !tbaa !11
  store i64 %i.a, ptr %6, align 8, !tbaa !9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  %i.q = load i8, ptr %i.n, align 1, !tbaa !11, !alias.scope !15, !noalias !12
  %i.r = zext i8 %i.q to i64
  store i64 %i.r, ptr %i.n, align 1, !noalias !12
  %i.s = add i64 %i.a, 1                          ; 3 uses
  store i64 %i.s, ptr %6, align 8, !tbaa !9, !alias.scope !12, !noalias !15
  %i.t = icmp ult i64 %2, 65537
  %i.u = icmp ult i64 %2, 1048577
  %spec.select.i.i = select i1 %i.u, i64 5, i64 6
  %.0.i.i = select i1 %i.t, i64 4, i64 %spec.select.i.i ; 2 uses
  %i.v = add nsw i64 %.0.i.i, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %i.w = lshr i64 %i.s, 3
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 %i.w ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !11, !alias.scope !20, !noalias !17
  %i.z = zext i8 %i.y to i64
  %i.aa = and i64 %i.s, 7
  %i.ab = shl nuw nsw i64 %i.v, %i.aa
  %i.ac = or i64 %i.ab, %i.z
  store i64 %i.ac, ptr %i.x, align 1, !noalias !17
  %i.ad = add i64 %i.a, 3                         ; 4 uses
  store i64 %i.ad, ptr %6, align 8, !tbaa !9, !alias.scope !17, !noalias !20
  %i.ae = shl nuw nsw i64 %.0.i.i, 2
  %i.af = add i64 %2, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  %i.ag = lshr i64 %i.ad, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 %i.ag ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !11, !alias.scope !25, !noalias !22
  %i.aj = zext i8 %i.ai to i64
  %i.ak = and i64 %i.ad, 7
  %i.al = shl i64 %i.af, %i.ak
  %i.am = or i64 %i.al, %i.aj
  store i64 %i.am, ptr %i.ah, align 1, !noalias !22
  %i.an = add i64 %i.ad, %i.ae                    ; 4 uses
  store i64 %i.an, ptr %6, align 8, !tbaa !9, !alias.scope !22, !noalias !25
  %i.ao = lshr i64 %i.an, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 %i.ao ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !11, !alias.scope !27, !noalias !30
  %i.ar = zext i8 %i.aq to i64
  %i.as = and i64 %i.an, 7
  %i.at = shl nuw nsw i64 1, %i.as
  %i.au = or i64 %i.at, %i.ar
  store i64 %i.au, ptr %i.ap, align 1, !noalias !30
  %i.av = add i64 %i.an, 8
  %i.aw = and i64 %i.av, 4294967288               ; 2 uses
  store i64 %i.aw, ptr %6, align 8, !tbaa !9
  %i.ax = lshr exact i64 %i.aw, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 %i.ax
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ay, ptr align 1 %1, i64 %2, i1 false)
  %i.az = load i64, ptr %6, align 8, !tbaa !9
  %i.ba = add i64 %i.az, %i.g                     ; 2 uses
  store i64 %i.ba, ptr %6, align 8, !tbaa !9
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 %i.bb
  store i8 0, ptr %i.bc, align 1, !tbaa !11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = load i64, ptr %6, align 8, !tbaa !9, !alias.scope !32, !noalias !35
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.j
  %.sink75 = phi i64 [ %i.bd, %bb.j ], [ %i.a, %bb.a ] ; 4 uses
  %i.be = lshr i64 %.sink75, 3
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 %i.be ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !11, !noalias !37
  %i.bh = zext i8 %i.bg to i64
  %i.bi = and i64 %.sink75, 7
  %i.bj = shl nuw nsw i64 1, %i.bi
  %i.bk = or i64 %i.bj, %i.bh
  store i64 %i.bk, ptr %i.bf, align 1, !noalias !37
  %i.bl = add i64 %.sink75, 1                     ; 3 uses
  store i64 %i.bl, ptr %6, align 8, !tbaa !9, !noalias !37
  %i.bm = lshr i64 %i.bl, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 %i.bm ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !11, !noalias !37
  %i.bp = zext i8 %i.bo to i64
  %i.bq = and i64 %i.bl, 7
  %i.br = shl nuw nsw i64 1, %i.bq
  %i.bs = or i64 %i.br, %i.bp
  store i64 %i.bs, ptr %i.bn, align 1, !noalias !37
  %i.bt = add i64 %.sink75, 9
  %i.bu = and i64 %i.bt, 4294967288
  store i64 %i.bu, ptr %6, align 8, !tbaa !9
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.i
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @BrotliCompressFragmentFastImpl9(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 1, 0) %2, i32 noundef %3, ptr noundef captures(none) %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 11 uses
  %i.e = tail call i64 @llvm.umin.i64(i64 range(i64 1, 0) %2, i64 98304) ; 3 uses
  %i.f = load i64, ptr %5, align 8, !tbaa !9      ; 3 uses
  %i.g = add i64 %i.f, 3                          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %i.h = lshr i64 %i.f, 3
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 %i.h ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !11, !alias.scope !41, !noalias !38
  %i.k = zext i8 %i.j to i64
  store i64 %i.k, ptr %i.i, align 1, !noalias !38
  %i.l = add i64 %i.f, 1                          ; 3 uses
  store i64 %i.l, ptr %5, align 8, !tbaa !9, !alias.scope !38, !noalias !41
  %i.m = icmp ult i64 %2, 65537
  %.0.i52 = select i1 %i.m, i64 4, i64 5          ; 2 uses
  %i.n = add nsw i64 %.0.i52, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.o = lshr i64 %i.l, 3
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 %i.o ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !11, !alias.scope !46, !noalias !43
  %i.r = zext i8 %i.q to i64
  %i.s = and i64 %i.l, 7
  %i.t = shl nuw nsw i64 %i.n, %i.s
  %i.u = or i64 %i.t, %i.r
  store i64 %i.u, ptr %i.p, align 1, !noalias !43
  store i64 %i.g, ptr %5, align 8, !tbaa !9, !alias.scope !43, !noalias !46
  %i.v = shl nuw nsw i64 %.0.i52, 2
  %i.w = add nsw i64 %i.e, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.x = lshr i64 %i.g, 3
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !11, !alias.scope !51, !noalias !48
  %i.aa = zext i8 %i.z to i64
  %i.ab = and i64 %i.g, 7
  %i.ac = shl nuw nsw i64 %i.w, %i.ab
  %i.ad = or i64 %i.ac, %i.aa
  store i64 %i.ad, ptr %i.y, align 1, !noalias !48
  %i.ae = add i64 %i.g, %i.v                      ; 4 uses
  store i64 %i.ae, ptr %5, align 8, !tbaa !9, !alias.scope !48, !noalias !51
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %i.af = lshr i64 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 %i.af ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !11, !alias.scope !56, !noalias !53
  %i.ai = zext i8 %i.ah to i64
  store i64 %i.ai, ptr %i.ag, align 1, !noalias !53
  %i.aj = add i64 %i.ae, 1                        ; 2 uses
  store i64 %i.aj, ptr %5, align 8, !tbaa !9, !alias.scope !53, !noalias !56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.ak = lshr i64 %i.aj, 3
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 %i.ak ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !11, !alias.scope !61, !noalias !58
  %i.an = zext i8 %i.am to i64
  store i64 %i.an, ptr %i.al, align 1, !noalias !58
  %i.ao = add i64 %i.ae, 14
  store i64 %i.ao, ptr %5, align 8, !tbaa !9, !alias.scope !58, !noalias !61
  %i.ap = tail call fastcc i64 @BuildAndStoreLiteralPrefixCode(ptr noundef %0, ptr noundef %1, i64 noundef %i.e, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2176 ; 4 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !63 ; 2 uses
  %i.as = icmp ugt i64 %i.ar, 7
  %.pre360 = load i64, ptr %5, align 8, !tbaa !9, !noalias !37 ; 2 uses
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1664
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.au = phi i64 [ %.pre360, %.lr.ph ], [ %i.bg, %bb.b ] ; 3 uses
  %.0347.i182 = phi i64 [ 0, %.lr.ph ], [ %i.bh, %bb.b ] ; 2 uses
  %i.av = lshr exact i64 %.0347.i182, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !11
  %i.ay = zext i8 %i.ax to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.az = lshr i64 %i.au, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 %i.az ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !11, !alias.scope !68, !noalias !65
  %i.bc = zext i8 %i.bb to i64
  %i.bd = and i64 %i.au, 7
  %i.be = shl nuw nsw i64 %i.ay, %i.bd
  %i.bf = or i64 %i.be, %i.bc
  store i64 %i.bf, ptr %i.ba, align 1, !noalias !65
  %i.bg = add i64 %i.au, 8                        ; 3 uses
  store i64 %i.bg, ptr %5, align 8, !tbaa !9, !alias.scope !65, !noalias !68
  %i.bh = add i64 %.0347.i182, 8                  ; 2 uses
  %i.bi = or disjoint i64 %i.bh, 7
  %i.bj = load i64, ptr %i.aq, align 8, !tbaa !63 ; 2 uses
  %i.bk = icmp ult i64 %i.bi, %i.bj
  br i1 %i.bk, label %bb.b, label %._crit_edge, !llvm.loop !70

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.bl = phi i64 [ %.pre360, %bb.a ], [ %i.bg, %bb.b ] ; 3 uses
  %.lcssa180 = phi i64 [ %i.ar, %bb.a ], [ %i.bj, %bb.b ] ; 2 uses
  %i.bm = and i64 %.lcssa180, 7
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 3 uses
  %i.bo = lshr i64 %.lcssa180, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !11
  %i.br = zext i8 %i.bq to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %i.bs = lshr i64 %i.bl, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !11, !alias.scope !75, !noalias !72
  %i.bv = zext i8 %i.bu to i64
  %i.bw = and i64 %i.bl, 7
  %i.bx = shl nuw nsw i64 %i.br, %i.bw
  %i.by = or i64 %i.bx, %i.bv
  store i64 %i.by, ptr %i.bt, align 1, !noalias !72
  %i.bz = add i64 %i.bl, %i.bm
  store i64 %i.bz, ptr %5, align 8, !tbaa !9, !alias.scope !72, !noalias !75
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
  br label %UpdateBits.exit.outer

UpdateBits.exit.outer:                            ; preds = %bb.bo, %._crit_edge
  %.0334.i.ph = phi i64 [ %i.axj, %bb.bo ], [ %i.ap, %._crit_edge ]
  %.0333.i.ph = phi i64 [ %i.awa, %bb.bo ], [ %i.g, %._crit_edge ] ; 3 uses
  %.0332.i.ph = phi i64 [ %i.avy, %bb.bo ], [ %i.e, %._crit_edge ] ; 2 uses
  %.0330.i.ph = phi ptr [ %.8.i, %bb.bo ], [ %1, %._crit_edge ] ; 5 uses
  %.0318.i.ph = phi i64 [ %.5323.i, %bb.bo ], [ %2, %._crit_edge ]
  %i.cr = ptrtoint ptr %.0330.i.ph to i64         ; 2 uses
  %i.cs = icmp ult i64 %.0334.i.ph, 981           ; 2 uses
  br label %UpdateBits.exit

UpdateBits.exit.loopexit:                         ; preds = %bb.ax
  br label %UpdateBits.exit, !llvm.loop !77

UpdateBits.exit:                                  ; preds = %UpdateBits.exit.loopexit, %UpdateBits.exit.outer
  %.0332.i = phi i64 [ %.0332.i.ph, %UpdateBits.exit.outer ], [ %i.aio, %UpdateBits.exit.loopexit ]
  %.0331.i = phi i64 [ %.0332.i.ph, %UpdateBits.exit.outer ], [ %i.ain, %UpdateBits.exit.loopexit ] ; 6 uses
  %.0324.i = phi ptr [ %.0330.i.ph, %UpdateBits.exit.outer ], [ %.7.i, %UpdateBits.exit.loopexit ] ; 2 uses
  %.0318.i = phi i64 [ %.0318.i.ph, %UpdateBits.exit.outer ], [ %i.aim, %UpdateBits.exit.loopexit ] ; 3 uses
  %.0.i = phi ptr [ %.0330.i.ph, %UpdateBits.exit.outer ], [ %i.ct, %UpdateBits.exit.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.c, ptr noundef nonnull align 16 dereferenceable(512) @kCmdHistoSeed, i64 512, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i, i64 %.0331.i ; 14 uses
  %i.cu = icmp samesign ugt i64 %.0331.i, 15
  br i1 %i.cu, label %bb.c, label %.thread101, !prof !78

bb.c:                                             ; preds = %UpdateBits.exit
  %i.cv = add nsw i64 %.0331.i, -5
  %i.cw = add i64 %.0318.i, -16
  %i.cx = tail call i64 @llvm.umin.i64(i64 %i.cv, i64 range(i64 -15, -16) %i.cw)
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
  br i1 %i.dd, label %.split.us.preheader, label %.split, !prof !79

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
  br i1 %i.dh, label %.thread101, label %.lr.ph186.us, !prof !80

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
  br i1 %i.do, label %IsMatch.exit7.us200, label %IsMatch.exit7.thread.us201

IsMatch.exit7.us200:                              ; preds = %.lr.ph186.us
  %i.dp = getelementptr inbounds nuw i8, ptr %.1360.i183.us196, i64 4
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !11
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !11
  %i.dt = icmp eq i8 %i.dq, %i.ds
  br i1 %i.dt, label %bb.d, label %IsMatch.exit7.thread.us201, !prof !79

IsMatch.exit7.thread.us201:                       ; preds = %IsMatch.exit7.us200, %.lr.ph186.us
  %i.du = zext nneg i32 %.2350.i184.us195 to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.du ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !5
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds i8, ptr %1, i64 %i.dx ; 3 uses
  %i.dz = ptrtoint ptr %.1360.i183.us196 to i64   ; 2 uses
  %i.ea = sub i64 %i.dz, %i.ca
  %i.eb = trunc i64 %i.ea to i32
  store i32 %i.eb, ptr %i.dv, align 4, !tbaa !5
  %.0.copyload.i51.us202 = load i32, ptr %.1360.i183.us196, align 1
  %.0.copyload.i50.us203 = load i32, ptr %i.dy, align 1
  %i.ec = icmp eq i32 %.0.copyload.i51.us202, %.0.copyload.i50.us203
  br i1 %i.ec, label %IsMatch.exit.us204, label %.critedge.backedge.us211

IsMatch.exit.us204:                               ; preds = %IsMatch.exit7.thread.us201
  %i.ed = getelementptr inbounds nuw i8, ptr %.1360.i183.us196, i64 4
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !11
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !11
  %.not277 = icmp eq i8 %i.ee, %i.eg
  br i1 %.not277, label %.loopexit.split.us205, label %.critedge.backedge.us211, !prof !81

bb.d:                                             ; preds = %IsMatch.exit7.us200
  %i.eh = ptrtoint ptr %.1360.i183.us196 to i64   ; 2 uses
  %i.ei = sub i64 %i.eh, %i.ca
  %i.ej = trunc i64 %i.ei to i32
  %i.ek = zext nneg i32 %.2350.i184.us195 to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ek
  store i32 %i.ej, ptr %i.el, align 4, !tbaa !5
  br label %.loopexit.split.us205

.loopexit.split.us205:                            ; preds = %IsMatch.exit.us204, %bb.d
  %.pre-phi = phi i64 [ %i.eh, %bb.d ], [ %i.dz, %IsMatch.exit.us204 ] ; 2 uses
  %.4365.i65.us = phi ptr [ %i.dn, %bb.d ], [ %i.dy, %IsMatch.exit.us204 ] ; 2 uses
  %i.em = ptrtoint ptr %.4365.i65.us to i64
  %i.en = sub i64 %.pre-phi, %i.em                ; 2 uses
  %i.eo = icmp sgt i64 %i.en, 262128
  br i1 %i.eo, label %.split.us, label %.split215.us

.critedge.backedge.us211:                         ; preds = %IsMatch.exit.us204, %IsMatch.exit7.thread.us201
  %i.ep = lshr i32 %i.dj, 5
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.eq ; 2 uses
  %i.es = icmp ugt ptr %i.er, %i.cy
  br i1 %i.es, label %.thread101, label %.lr.ph186.us, !prof !82, !llvm.loop !83

.split:                                           ; preds = %.thread74, %.loopexit.split.us
  %.0359.i = phi ptr [ %i.ex, %.loopexit.split.us ], [ %.0335.i, %.thread74 ] ; 2 uses
  %.0353.i = phi i32 [ %i.ey, %.loopexit.split.us ], [ 32, %.thread74 ] ; 2 uses
  %.1349.i = phi i64 [ %i.fa, %.loopexit.split.us ], [ %.0348.i.in, %.thread74 ]
  %i.et = lshr i32 %.0353.i, 5
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %.0359.i, i64 %i.eu ; 2 uses
  %i.ew = icmp ugt ptr %i.ev, %i.cy
  br i1 %i.ew, label %.thread101, label %.lr.ph186, !prof !80

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
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !5
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds i8, ptr %1, i64 %i.fd ; 4 uses
  %i.ff = ptrtoint ptr %.1360.i183.us to i64      ; 3 uses
  %i.fg = sub i64 %i.ff, %i.ca
  %i.fh = trunc i64 %i.fg to i32
  store i32 %i.fh, ptr %i.fb, align 4, !tbaa !5
  %.0.copyload.i51.us = load i32, ptr %.1360.i183.us, align 1
  %.0.copyload.i50.us = load i32, ptr %i.fe, align 1
  %i.fi = icmp eq i32 %.0.copyload.i51.us, %.0.copyload.i50.us
  br i1 %i.fi, label %IsMatch.exit.us, label %.critedge.backedge.us

IsMatch.exit.us:                                  ; preds = %.lr.ph186
  %i.fj = getelementptr inbounds nuw i8, ptr %.1360.i183.us, i64 4
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !11
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !11
  %.not275 = icmp eq i8 %i.fk, %i.fm
  br i1 %.not275, label %.loopexit.split.us, label %.critedge.backedge.us, !prof !81

.critedge.backedge.us:                            ; preds = %IsMatch.exit.us, %.lr.ph186
  %i.fn = lshr i32 %i.ey, 5
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.fo ; 2 uses
  %i.fq = icmp ugt ptr %i.fp, %i.cy
  br i1 %i.fq, label %.thread101, label %.lr.ph186, !prof !82, !llvm.loop !83

.loopexit.split.us:                               ; preds = %IsMatch.exit.us
  %i.fr = ptrtoint ptr %i.fe to i64
end_hunk_0
begin_hunk_1_@BrotliCompressFragmentFastImpl9:bb.a
  %i.aux = load i16, ptr %i.auw, align 2, !tbaa !86
  %i.auy = zext i16 %i.aux to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %i.auz = lshr i64 %.epil.init646, 3
  %i.ava = getelementptr inbounds nuw i8, ptr %6, i64 %i.auz ; 2 uses
  %i.avb = load i8, ptr %i.ava, align 1, !tbaa !11, !alias.scope !315, !noalias !312
  %i.avc = zext i8 %i.avb to i64
  %i.avd = and i64 %.epil.init646, 7
  %i.ave = shl nuw nsw i64 %i.auy, %i.avd
  %i.avf = or i64 %i.ave, %i.avc
  store i64 %i.avf, ptr %i.ava, align 1, !noalias !312
  %i.avg = add i64 %.epil.init646, %i.auv
  store i64 %i.avg, ptr %5, align 8, !tbaa !9, !alias.scope !312, !noalias !315
  br label %EmitLiterals.exit33

EmitLiterals.exit33.loopexit561.unr-lcssa:        ; preds = %bb.bn
  %lcmp.mod638.not = icmp eq i64 %xtraiter635, 0
  br i1 %lcmp.mod638.not, label %EmitLiterals.exit33, label %.epil.preheader630

.epil.preheader630:                               ; preds = %EmitLiterals.exit33.loopexit561.unr-lcssa, %EmitLongInsertLen.exit30
  %.0.i34271.epil.init = phi i64 [ 0, %EmitLongInsertLen.exit30 ], [ %i.aup, %EmitLiterals.exit33.loopexit561.unr-lcssa ]
  %.epil.init637 = phi i64 [ %.sink359, %EmitLongInsertLen.exit30 ], [ %i.auo, %EmitLiterals.exit33.loopexit561.unr-lcssa ] ; 3 uses
  %lcmp.mod639 = trunc i64 %i.aky to i1
  tail call void @llvm.assume(i1 %lcmp.mod639)
  %i.avh = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34271.epil.init
  %i.avi = load i8, ptr %i.avh, align 1, !tbaa !11
  %i.avj = zext i8 %i.avi to i64                  ; 2 uses
  %i.avk = getelementptr inbounds nuw i8, ptr %0, i64 %i.avj
  %i.avl = load i8, ptr %i.avk, align 1, !tbaa !11
  %i.avm = zext i8 %i.avl to i64
  %i.avn = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.avj
  %i.avo = load i16, ptr %i.avn, align 2, !tbaa !86
  %i.avp = zext i16 %i.avo to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !344)
  %i.avq = lshr i64 %.epil.init637, 3
  %i.avr = getelementptr inbounds nuw i8, ptr %6, i64 %i.avq ; 2 uses
  %i.avs = load i8, ptr %i.avr, align 1, !tbaa !11, !alias.scope !344, !noalias !341
  %i.avt = zext i8 %i.avs to i64
  %i.avu = and i64 %.epil.init637, 7
  %i.avv = shl nuw nsw i64 %i.avp, %i.avu
  %i.avw = or i64 %i.avv, %i.avt
  store i64 %i.avw, ptr %i.avr, align 1, !noalias !341
  %i.avx = add i64 %.epil.init637, %i.avm
  store i64 %i.avx, ptr %5, align 8, !tbaa !9, !alias.scope !341, !noalias !344
  br label %EmitLiterals.exit33

EmitLiterals.exit33:                              ; preds = %.epil.preheader630, %EmitLiterals.exit33.loopexit561.unr-lcssa, %.epil.preheader642, %EmitLiterals.exit33.loopexit.unr-lcssa, %EmitInsertLen.exit27, %.thread74.thread118, %bb.bj, %bb.ay
  %.8.i = phi ptr [ %.us-phi220, %.thread74.thread118 ], [ %i.ct, %bb.ay ], [ %i.ct, %EmitInsertLen.exit27 ], [ %i.ct, %bb.bj ], [ %i.ct, %.epil.preheader642 ], [ %i.ct, %EmitLiterals.exit33.loopexit.unr-lcssa ], [ %i.ct, %EmitLiterals.exit33.loopexit561.unr-lcssa ], [ %i.ct, %.epil.preheader630 ] ; 2 uses
  %.5323.i = phi i64 [ %i.lq, %.thread74.thread118 ], [ %i.aim, %bb.ay ], [ %i.aim, %EmitInsertLen.exit27 ], [ %i.aim, %bb.bj ], [ %i.aim, %.epil.preheader642 ], [ %i.aim, %EmitLiterals.exit33.loopexit.unr-lcssa ], [ %i.aim, %EmitLiterals.exit33.loopexit561.unr-lcssa ], [ %i.aim, %.epil.preheader630 ] ; 4 uses
  %.not396.i = icmp eq i64 %.5323.i, 0
  br i1 %.not396.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %EmitLiterals.exit33
  %i.avy = tail call i64 @llvm.umin.i64(i64 %.5323.i, i64 98304) ; 3 uses
  %i.avz = load i64, ptr %5, align 8, !tbaa !9    ; 3 uses
  %i.awa = add i64 %i.avz, 3                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  %i.awb = lshr i64 %i.avz, 3
  %i.awc = getelementptr inbounds nuw i8, ptr %6, i64 %i.awb ; 2 uses
  %i.awd = load i8, ptr %i.awc, align 1, !tbaa !11, !alias.scope !353, !noalias !350
  %i.awe = zext i8 %i.awd to i64
  store i64 %i.awe, ptr %i.awc, align 1, !noalias !350
  %i.awf = add i64 %i.avz, 1                      ; 3 uses
  store i64 %i.awf, ptr %5, align 8, !tbaa !9, !alias.scope !350, !noalias !353
  %i.awg = icmp ult i64 %.5323.i, 65537
  %.0.i55 = select i1 %i.awg, i64 4, i64 5        ; 2 uses
  %i.awh = add nsw i64 %.0.i55, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %i.awi = lshr i64 %i.awf, 3
  %i.awj = getelementptr inbounds nuw i8, ptr %6, i64 %i.awi ; 2 uses
  %i.awk = load i8, ptr %i.awj, align 1, !tbaa !11, !alias.scope !358, !noalias !355
  %i.awl = zext i8 %i.awk to i64
  %i.awm = and i64 %i.awf, 7
  %i.awn = shl nuw nsw i64 %i.awh, %i.awm
  %i.awo = or i64 %i.awn, %i.awl
  store i64 %i.awo, ptr %i.awj, align 1, !noalias !355
  store i64 %i.awa, ptr %5, align 8, !tbaa !9, !alias.scope !355, !noalias !358
  %i.awp = shl nuw nsw i64 %.0.i55, 2
  %i.awq = add nsw i64 %i.avy, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  %i.awr = lshr i64 %i.awa, 3
  %i.aws = getelementptr inbounds nuw i8, ptr %6, i64 %i.awr ; 2 uses
  %i.awt = load i8, ptr %i.aws, align 1, !tbaa !11, !alias.scope !363, !noalias !360
  %i.awu = zext i8 %i.awt to i64
  %i.awv = and i64 %i.awa, 7
  %i.aww = shl nuw nsw i64 %i.awq, %i.awv
  %i.awx = or i64 %i.aww, %i.awu
  store i64 %i.awx, ptr %i.aws, align 1, !noalias !360
  %i.awy = add i64 %i.awa, %i.awp                 ; 4 uses
  store i64 %i.awy, ptr %5, align 8, !tbaa !9, !alias.scope !360, !noalias !363
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  %i.awz = lshr i64 %i.awy, 3
  %i.axa = getelementptr inbounds nuw i8, ptr %6, i64 %i.awz ; 2 uses
  %i.axb = load i8, ptr %i.axa, align 1, !tbaa !11, !alias.scope !368, !noalias !365
  %i.axc = zext i8 %i.axb to i64
  store i64 %i.axc, ptr %i.axa, align 1, !noalias !365
  %i.axd = add i64 %i.awy, 1                      ; 2 uses
  store i64 %i.axd, ptr %5, align 8, !tbaa !9, !alias.scope !365, !noalias !368
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %i.axe = lshr i64 %i.axd, 3
  %i.axf = getelementptr inbounds nuw i8, ptr %6, i64 %i.axe ; 2 uses
  %i.axg = load i8, ptr %i.axf, align 1, !tbaa !11, !alias.scope !373, !noalias !370
  %i.axh = zext i8 %i.axg to i64
  store i64 %i.axh, ptr %i.axf, align 1, !noalias !370
  %i.axi = add i64 %i.awy, 14
  store i64 %i.axi, ptr %5, align 8, !tbaa !9, !alias.scope !370, !noalias !373
  %i.axj = tail call fastcc i64 @BuildAndStoreLiteralPrefixCode(ptr noundef %0, ptr noundef %.8.i, i64 noundef %i.avy, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  tail call fastcc void @BuildAndStoreCommandPrefixCode(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %6)
  br label %UpdateBits.exit.outer

bb.bp:                                            ; preds = %EmitLiterals.exit33
  %.not397.i = icmp eq i32 %3, 0
  br i1 %.not397.i, label %bb.bq, label %BrotliCompressFragmentFastImpl.exit

bb.bq:                                            ; preds = %bb.bp
  store i8 0, ptr %i.bn, align 8, !tbaa !11
  store i64 0, ptr %i.aq, align 8, !tbaa !63
  tail call fastcc void @BuildAndStoreCommandPrefixCode(ptr noundef %0, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.bn)
  br label %BrotliCompressFragmentFastImpl.exit

BrotliCompressFragmentFastImpl.exit:              ; preds = %bb.bp, %bb.bq
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @BrotliCompressFragmentFastImpl11(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 1, 0) %2, i32 noundef %3, ptr noundef captures(none) %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 11 uses
  %i.e = tail call i64 @llvm.umin.i64(i64 range(i64 1, 0) %2, i64 98304) ; 3 uses
  %i.f = load i64, ptr %5, align 8, !tbaa !9      ; 3 uses
  %i.g = add i64 %i.f, 3                          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  %i.h = lshr i64 %i.f, 3
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 %i.h ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !11, !alias.scope !378, !noalias !375
  %i.k = zext i8 %i.j to i64
  store i64 %i.k, ptr %i.i, align 1, !noalias !375
  %i.l = add i64 %i.f, 1                          ; 3 uses
  store i64 %i.l, ptr %5, align 8, !tbaa !9, !alias.scope !375, !noalias !378
  %i.m = icmp ult i64 %2, 65537
  %.0.i52 = select i1 %i.m, i64 4, i64 5          ; 2 uses
  %i.n = add nsw i64 %.0.i52, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  %i.o = lshr i64 %i.l, 3
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 %i.o ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !11, !alias.scope !383, !noalias !380
  %i.r = zext i8 %i.q to i64
  %i.s = and i64 %i.l, 7
  %i.t = shl nuw nsw i64 %i.n, %i.s
  %i.u = or i64 %i.t, %i.r
  store i64 %i.u, ptr %i.p, align 1, !noalias !380
  store i64 %i.g, ptr %5, align 8, !tbaa !9, !alias.scope !380, !noalias !383
  %i.v = shl nuw nsw i64 %.0.i52, 2
  %i.w = add nsw i64 %i.e, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  %i.x = lshr i64 %i.g, 3
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !11, !alias.scope !388, !noalias !385
  %i.aa = zext i8 %i.z to i64
  %i.ab = and i64 %i.g, 7
  %i.ac = shl nuw nsw i64 %i.w, %i.ab
  %i.ad = or i64 %i.ac, %i.aa
  store i64 %i.ad, ptr %i.y, align 1, !noalias !385
  %i.ae = add i64 %i.g, %i.v                      ; 4 uses
  store i64 %i.ae, ptr %5, align 8, !tbaa !9, !alias.scope !385, !noalias !388
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  %i.af = lshr i64 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 %i.af ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !11, !alias.scope !393, !noalias !390
  %i.ai = zext i8 %i.ah to i64
  store i64 %i.ai, ptr %i.ag, align 1, !noalias !390
  %i.aj = add i64 %i.ae, 1                        ; 2 uses
  store i64 %i.aj, ptr %5, align 8, !tbaa !9, !alias.scope !390, !noalias !393
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398)
  %i.ak = lshr i64 %i.aj, 3
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 %i.ak ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !11, !alias.scope !398, !noalias !395
  %i.an = zext i8 %i.am to i64
  store i64 %i.an, ptr %i.al, align 1, !noalias !395
  %i.ao = add i64 %i.ae, 14
  store i64 %i.ao, ptr %5, align 8, !tbaa !9, !alias.scope !395, !noalias !398
  %i.ap = tail call fastcc i64 @BuildAndStoreLiteralPrefixCode(ptr noundef %0, ptr noundef %1, i64 noundef %i.e, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2176 ; 4 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !63 ; 2 uses
  %i.as = icmp ugt i64 %i.ar, 7
  %.pre360 = load i64, ptr %5, align 8, !tbaa !9, !noalias !37 ; 2 uses
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1664
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.au = phi i64 [ %.pre360, %.lr.ph ], [ %i.bg, %bb.b ] ; 3 uses
  %.0347.i182 = phi i64 [ 0, %.lr.ph ], [ %i.bh, %bb.b ] ; 2 uses
  %i.av = lshr exact i64 %.0347.i182, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !11
  %i.ay = zext i8 %i.ax to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  %i.az = lshr i64 %i.au, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 %i.az ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !11, !alias.scope !403, !noalias !400
  %i.bc = zext i8 %i.bb to i64
  %i.bd = and i64 %i.au, 7
  %i.be = shl nuw nsw i64 %i.ay, %i.bd
  %i.bf = or i64 %i.be, %i.bc
  store i64 %i.bf, ptr %i.ba, align 1, !noalias !400
  %i.bg = add i64 %i.au, 8                        ; 3 uses
  store i64 %i.bg, ptr %5, align 8, !tbaa !9, !alias.scope !400, !noalias !403
  %i.bh = add i64 %.0347.i182, 8                  ; 2 uses
  %i.bi = or disjoint i64 %i.bh, 7
  %i.bj = load i64, ptr %i.aq, align 8, !tbaa !63 ; 2 uses
  %i.bk = icmp ult i64 %i.bi, %i.bj
  br i1 %i.bk, label %bb.b, label %._crit_edge, !llvm.loop !70

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.bl = phi i64 [ %.pre360, %bb.a ], [ %i.bg, %bb.b ] ; 3 uses
  %.lcssa180 = phi i64 [ %i.ar, %bb.a ], [ %i.bj, %bb.b ] ; 2 uses
  %i.bm = and i64 %.lcssa180, 7
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 3 uses
  %i.bo = lshr i64 %.lcssa180, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !11
  %i.br = zext i8 %i.bq to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  %i.bs = lshr i64 %i.bl, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !11, !alias.scope !408, !noalias !405
  %i.bv = zext i8 %i.bu to i64
  %i.bw = and i64 %i.bl, 7
  %i.bx = shl nuw nsw i64 %i.br, %i.bw
  %i.by = or i64 %i.bx, %i.bv
  store i64 %i.by, ptr %i.bt, align 1, !noalias !405
  %i.bz = add i64 %i.bl, %i.bm
  store i64 %i.bz, ptr %5, align 8, !tbaa !9, !alias.scope !405, !noalias !408
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
  br label %UpdateBits.exit.outer

UpdateBits.exit.outer:                            ; preds = %bb.bo, %._crit_edge
  %.0334.i.ph = phi i64 [ %i.axj, %bb.bo ], [ %i.ap, %._crit_edge ]
  %.0333.i.ph = phi i64 [ %i.awa, %bb.bo ], [ %i.g, %._crit_edge ] ; 3 uses
  %.0332.i.ph = phi i64 [ %i.avy, %bb.bo ], [ %i.e, %._crit_edge ] ; 2 uses
  %.0330.i.ph = phi ptr [ %.8.i, %bb.bo ], [ %1, %._crit_edge ] ; 5 uses
  %.0318.i.ph = phi i64 [ %.5323.i, %bb.bo ], [ %2, %._crit_edge ]
  %i.cr = ptrtoint ptr %.0330.i.ph to i64         ; 2 uses
  %i.cs = icmp ult i64 %.0334.i.ph, 981           ; 2 uses
  br label %UpdateBits.exit

UpdateBits.exit.loopexit:                         ; preds = %bb.ax
  br label %UpdateBits.exit, !llvm.loop !77

UpdateBits.exit:                                  ; preds = %UpdateBits.exit.loopexit, %UpdateBits.exit.outer
  %.0332.i = phi i64 [ %.0332.i.ph, %UpdateBits.exit.outer ], [ %i.aio, %UpdateBits.exit.loopexit ]
  %.0331.i = phi i64 [ %.0332.i.ph, %UpdateBits.exit.outer ], [ %i.ain, %UpdateBits.exit.loopexit ] ; 6 uses
  %.0324.i = phi ptr [ %.0330.i.ph, %UpdateBits.exit.outer ], [ %.7.i, %UpdateBits.exit.loopexit ] ; 2 uses
  %.0318.i = phi i64 [ %.0318.i.ph, %UpdateBits.exit.outer ], [ %i.aim, %UpdateBits.exit.loopexit ] ; 3 uses
  %.0.i = phi ptr [ %.0330.i.ph, %UpdateBits.exit.outer ], [ %i.ct, %UpdateBits.exit.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.c, ptr noundef nonnull align 16 dereferenceable(512) @kCmdHistoSeed, i64 512, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i, i64 %.0331.i ; 14 uses
  %i.cu = icmp samesign ugt i64 %.0331.i, 15
  br i1 %i.cu, label %bb.c, label %.thread101, !prof !78

bb.c:                                             ; preds = %UpdateBits.exit
  %i.cv = add nsw i64 %.0331.i, -5
  %i.cw = add i64 %.0318.i, -16
  %i.cx = tail call i64 @llvm.umin.i64(i64 %i.cv, i64 range(i64 -15, -16) %i.cw)
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
  br i1 %i.dd, label %.split.us.preheader, label %.split, !prof !79

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
  br i1 %i.dh, label %.thread101, label %.lr.ph186.us, !prof !80

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
  br i1 %i.do, label %IsMatch.exit7.us200, label %IsMatch.exit7.thread.us201

IsMatch.exit7.us200:                              ; preds = %.lr.ph186.us
  %i.dp = getelementptr inbounds nuw i8, ptr %.1360.i183.us196, i64 4
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !11
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !11
  %i.dt = icmp eq i8 %i.dq, %i.ds
  br i1 %i.dt, label %bb.d, label %IsMatch.exit7.thread.us201, !prof !79

IsMatch.exit7.thread.us201:                       ; preds = %IsMatch.exit7.us200, %.lr.ph186.us
  %i.du = zext nneg i32 %.2350.i184.us195 to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.du ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !5
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds i8, ptr %1, i64 %i.dx ; 3 uses
  %i.dz = ptrtoint ptr %.1360.i183.us196 to i64   ; 2 uses
  %i.ea = sub i64 %i.dz, %i.ca
  %i.eb = trunc i64 %i.ea to i32
  store i32 %i.eb, ptr %i.dv, align 4, !tbaa !5
  %.0.copyload.i51.us202 = load i32, ptr %.1360.i183.us196, align 1
  %.0.copyload.i50.us203 = load i32, ptr %i.dy, align 1
  %i.ec = icmp eq i32 %.0.copyload.i51.us202, %.0.copyload.i50.us203
  br i1 %i.ec, label %IsMatch.exit.us204, label %.critedge.backedge.us211

IsMatch.exit.us204:                               ; preds = %IsMatch.exit7.thread.us201
  %i.ed = getelementptr inbounds nuw i8, ptr %.1360.i183.us196, i64 4
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !11
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !11
  %.not277 = icmp eq i8 %i.ee, %i.eg
  br i1 %.not277, label %.loopexit.split.us205, label %.critedge.backedge.us211, !prof !81

bb.d:                                             ; preds = %IsMatch.exit7.us200
  %i.eh = ptrtoint ptr %.1360.i183.us196 to i64   ; 2 uses
  %i.ei = sub i64 %i.eh, %i.ca
  %i.ej = trunc i64 %i.ei to i32
  %i.ek = zext nneg i32 %.2350.i184.us195 to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ek
  store i32 %i.ej, ptr %i.el, align 4, !tbaa !5
  br label %.loopexit.split.us205

.loopexit.split.us205:                            ; preds = %IsMatch.exit.us204, %bb.d
  %.pre-phi = phi i64 [ %i.eh, %bb.d ], [ %i.dz, %IsMatch.exit.us204 ] ; 2 uses
  %.4365.i65.us = phi ptr [ %i.dn, %bb.d ], [ %i.dy, %IsMatch.exit.us204 ] ; 2 uses
  %i.em = ptrtoint ptr %.4365.i65.us to i64
  %i.en = sub i64 %.pre-phi, %i.em                ; 2 uses
  %i.eo = icmp sgt i64 %i.en, 262128
  br i1 %i.eo, label %.split.us, label %.split215.us

.critedge.backedge.us211:                         ; preds = %IsMatch.exit.us204, %IsMatch.exit7.thread.us201
  %i.ep = lshr i32 %i.dj, 5
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.eq ; 2 uses
  %i.es = icmp ugt ptr %i.er, %i.cy
  br i1 %i.es, label %.thread101, label %.lr.ph186.us, !prof !82, !llvm.loop !83

.split:                                           ; preds = %.thread74, %.loopexit.split.us
  %.0359.i = phi ptr [ %i.ex, %.loopexit.split.us ], [ %.0335.i, %.thread74 ] ; 2 uses
  %.0353.i = phi i32 [ %i.ey, %.loopexit.split.us ], [ 32, %.thread74 ] ; 2 uses
  %.1349.i = phi i64 [ %i.fa, %.loopexit.split.us ], [ %.0348.i.in, %.thread74 ]
  %i.et = lshr i32 %.0353.i, 5
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %.0359.i, i64 %i.eu ; 2 uses
  %i.ew = icmp ugt ptr %i.ev, %i.cy
  br i1 %i.ew, label %.thread101, label %.lr.ph186, !prof !80

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
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !5
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds i8, ptr %1, i64 %i.fd ; 4 uses
  %i.ff = ptrtoint ptr %.1360.i183.us to i64      ; 3 uses
  %i.fg = sub i64 %i.ff, %i.ca
  %i.fh = trunc i64 %i.fg to i32
  store i32 %i.fh, ptr %i.fb, align 4, !tbaa !5
  %.0.copyload.i51.us = load i32, ptr %.1360.i183.us, align 1
  %.0.copyload.i50.us = load i32, ptr %i.fe, align 1
  %i.fi = icmp eq i32 %.0.copyload.i51.us, %.0.copyload.i50.us
  br i1 %i.fi, label %IsMatch.exit.us, label %.critedge.backedge.us

IsMatch.exit.us:                                  ; preds = %.lr.ph186
  %i.fj = getelementptr inbounds nuw i8, ptr %.1360.i183.us, i64 4
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !11
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !11
  %.not275 = icmp eq i8 %i.fk, %i.fm
  br i1 %.not275, label %.loopexit.split.us, label %.critedge.backedge.us, !prof !81

.critedge.backedge.us:                            ; preds = %IsMatch.exit.us, %.lr.ph186
  %i.fn = lshr i32 %i.ey, 5
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.fo ; 2 uses
  %i.fq = icmp ugt ptr %i.fp, %i.cy
  br i1 %i.fq, label %.thread101, label %.lr.ph186, !prof !82, !llvm.loop !83

.loopexit.split.us:                               ; preds = %IsMatch.exit.us
  %i.fr = ptrtoint ptr %i.fe to i64
end_hunk_1
begin_hunk_2_@BrotliCompressFragmentFastImpl11:bb.a
  %i.aux = load i16, ptr %i.auw, align 2, !tbaa !86
  %i.auy = zext i16 %i.aux to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !629)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !632)
  %i.auz = lshr i64 %.epil.init646, 3
  %i.ava = getelementptr inbounds nuw i8, ptr %6, i64 %i.auz ; 2 uses
  %i.avb = load i8, ptr %i.ava, align 1, !tbaa !11, !alias.scope !632, !noalias !629
  %i.avc = zext i8 %i.avb to i64
  %i.avd = and i64 %.epil.init646, 7
  %i.ave = shl nuw nsw i64 %i.auy, %i.avd
  %i.avf = or i64 %i.ave, %i.avc
  store i64 %i.avf, ptr %i.ava, align 1, !noalias !629
  %i.avg = add i64 %.epil.init646, %i.auv
  store i64 %i.avg, ptr %5, align 8, !tbaa !9, !alias.scope !629, !noalias !632
  br label %EmitLiterals.exit33

EmitLiterals.exit33.loopexit561.unr-lcssa:        ; preds = %bb.bn
  %lcmp.mod638.not = icmp eq i64 %xtraiter635, 0
  br i1 %lcmp.mod638.not, label %EmitLiterals.exit33, label %.epil.preheader630

.epil.preheader630:                               ; preds = %EmitLiterals.exit33.loopexit561.unr-lcssa, %EmitLongInsertLen.exit30
  %.0.i34271.epil.init = phi i64 [ 0, %EmitLongInsertLen.exit30 ], [ %i.aup, %EmitLiterals.exit33.loopexit561.unr-lcssa ]
  %.epil.init637 = phi i64 [ %.sink359, %EmitLongInsertLen.exit30 ], [ %i.auo, %EmitLiterals.exit33.loopexit561.unr-lcssa ] ; 3 uses
  %lcmp.mod639 = trunc i64 %i.aky to i1
  tail call void @llvm.assume(i1 %lcmp.mod639)
  %i.avh = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34271.epil.init
  %i.avi = load i8, ptr %i.avh, align 1, !tbaa !11
  %i.avj = zext i8 %i.avi to i64                  ; 2 uses
  %i.avk = getelementptr inbounds nuw i8, ptr %0, i64 %i.avj
  %i.avl = load i8, ptr %i.avk, align 1, !tbaa !11
  %i.avm = zext i8 %i.avl to i64
  %i.avn = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.avj
  %i.avo = load i16, ptr %i.avn, align 2, !tbaa !86
  %i.avp = zext i16 %i.avo to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !661)
  %i.avq = lshr i64 %.epil.init637, 3
  %i.avr = getelementptr inbounds nuw i8, ptr %6, i64 %i.avq ; 2 uses
  %i.avs = load i8, ptr %i.avr, align 1, !tbaa !11, !alias.scope !661, !noalias !658
  %i.avt = zext i8 %i.avs to i64
  %i.avu = and i64 %.epil.init637, 7
  %i.avv = shl nuw nsw i64 %i.avp, %i.avu
  %i.avw = or i64 %i.avv, %i.avt
  store i64 %i.avw, ptr %i.avr, align 1, !noalias !658
  %i.avx = add i64 %.epil.init637, %i.avm
  store i64 %i.avx, ptr %5, align 8, !tbaa !9, !alias.scope !658, !noalias !661
  br label %EmitLiterals.exit33

EmitLiterals.exit33:                              ; preds = %.epil.preheader630, %EmitLiterals.exit33.loopexit561.unr-lcssa, %.epil.preheader642, %EmitLiterals.exit33.loopexit.unr-lcssa, %EmitInsertLen.exit27, %.thread74.thread118, %bb.bj, %bb.ay
  %.8.i = phi ptr [ %.us-phi220, %.thread74.thread118 ], [ %i.ct, %bb.ay ], [ %i.ct, %EmitInsertLen.exit27 ], [ %i.ct, %bb.bj ], [ %i.ct, %.epil.preheader642 ], [ %i.ct, %EmitLiterals.exit33.loopexit.unr-lcssa ], [ %i.ct, %EmitLiterals.exit33.loopexit561.unr-lcssa ], [ %i.ct, %.epil.preheader630 ] ; 2 uses
  %.5323.i = phi i64 [ %i.lq, %.thread74.thread118 ], [ %i.aim, %bb.ay ], [ %i.aim, %EmitInsertLen.exit27 ], [ %i.aim, %bb.bj ], [ %i.aim, %.epil.preheader642 ], [ %i.aim, %EmitLiterals.exit33.loopexit.unr-lcssa ], [ %i.aim, %EmitLiterals.exit33.loopexit561.unr-lcssa ], [ %i.aim, %.epil.preheader630 ] ; 4 uses
  %.not396.i = icmp eq i64 %.5323.i, 0
  br i1 %.not396.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %EmitLiterals.exit33
  %i.avy = tail call i64 @llvm.umin.i64(i64 %.5323.i, i64 98304) ; 3 uses
  %i.avz = load i64, ptr %5, align 8, !tbaa !9    ; 3 uses
  %i.awa = add i64 %i.avz, 3                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !667)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670)
  %i.awb = lshr i64 %i.avz, 3
  %i.awc = getelementptr inbounds nuw i8, ptr %6, i64 %i.awb ; 2 uses
  %i.awd = load i8, ptr %i.awc, align 1, !tbaa !11, !alias.scope !670, !noalias !667
  %i.awe = zext i8 %i.awd to i64
  store i64 %i.awe, ptr %i.awc, align 1, !noalias !667
  %i.awf = add i64 %i.avz, 1                      ; 3 uses
  store i64 %i.awf, ptr %5, align 8, !tbaa !9, !alias.scope !667, !noalias !670
  %i.awg = icmp ult i64 %.5323.i, 65537
  %.0.i55 = select i1 %i.awg, i64 4, i64 5        ; 2 uses
  %i.awh = add nsw i64 %.0.i55, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !675)
  %i.awi = lshr i64 %i.awf, 3
  %i.awj = getelementptr inbounds nuw i8, ptr %6, i64 %i.awi ; 2 uses
  %i.awk = load i8, ptr %i.awj, align 1, !tbaa !11, !alias.scope !675, !noalias !672
  %i.awl = zext i8 %i.awk to i64
  %i.awm = and i64 %i.awf, 7
  %i.awn = shl nuw nsw i64 %i.awh, %i.awm
  %i.awo = or i64 %i.awn, %i.awl
  store i64 %i.awo, ptr %i.awj, align 1, !noalias !672
  store i64 %i.awa, ptr %5, align 8, !tbaa !9, !alias.scope !672, !noalias !675
  %i.awp = shl nuw nsw i64 %.0.i55, 2
  %i.awq = add nsw i64 %i.avy, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !677)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !680)
  %i.awr = lshr i64 %i.awa, 3
  %i.aws = getelementptr inbounds nuw i8, ptr %6, i64 %i.awr ; 2 uses
  %i.awt = load i8, ptr %i.aws, align 1, !tbaa !11, !alias.scope !680, !noalias !677
  %i.awu = zext i8 %i.awt to i64
  %i.awv = and i64 %i.awa, 7
  %i.aww = shl nuw nsw i64 %i.awq, %i.awv
  %i.awx = or i64 %i.aww, %i.awu
  store i64 %i.awx, ptr %i.aws, align 1, !noalias !677
  %i.awy = add i64 %i.awa, %i.awp                 ; 4 uses
  store i64 %i.awy, ptr %5, align 8, !tbaa !9, !alias.scope !677, !noalias !680
  tail call void @llvm.experimental.noalias.scope.decl(metadata !682)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !685)
  %i.awz = lshr i64 %i.awy, 3
  %i.axa = getelementptr inbounds nuw i8, ptr %6, i64 %i.awz ; 2 uses
  %i.axb = load i8, ptr %i.axa, align 1, !tbaa !11, !alias.scope !685, !noalias !682
  %i.axc = zext i8 %i.axb to i64
  store i64 %i.axc, ptr %i.axa, align 1, !noalias !682
  %i.axd = add i64 %i.awy, 1                      ; 2 uses
  store i64 %i.axd, ptr %5, align 8, !tbaa !9, !alias.scope !682, !noalias !685
  tail call void @llvm.experimental.noalias.scope.decl(metadata !687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690)
  %i.axe = lshr i64 %i.axd, 3
  %i.axf = getelementptr inbounds nuw i8, ptr %6, i64 %i.axe ; 2 uses
  %i.axg = load i8, ptr %i.axf, align 1, !tbaa !11, !alias.scope !690, !noalias !687
  %i.axh = zext i8 %i.axg to i64
  store i64 %i.axh, ptr %i.axf, align 1, !noalias !687
  %i.axi = add i64 %i.awy, 14
  store i64 %i.axi, ptr %5, align 8, !tbaa !9, !alias.scope !687, !noalias !690
  %i.axj = tail call fastcc i64 @BuildAndStoreLiteralPrefixCode(ptr noundef %0, ptr noundef %.8.i, i64 noundef %i.avy, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  tail call fastcc void @BuildAndStoreCommandPrefixCode(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %6)
  br label %UpdateBits.exit.outer

bb.bp:                                            ; preds = %EmitLiterals.exit33
  %.not397.i = icmp eq i32 %3, 0
  br i1 %.not397.i, label %bb.bq, label %BrotliCompressFragmentFastImpl.exit

bb.bq:                                            ; preds = %bb.bp
  store i8 0, ptr %i.bn, align 8, !tbaa !11
  store i64 0, ptr %i.aq, align 8, !tbaa !63
  tail call fastcc void @BuildAndStoreCommandPrefixCode(ptr noundef %0, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.bn)
  br label %BrotliCompressFragmentFastImpl.exit

BrotliCompressFragmentFastImpl.exit:              ; preds = %bb.bp, %bb.bq
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @BrotliCompressFragmentFastImpl13(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 1, 0) %2, i32 noundef %3, ptr noundef captures(none) %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 11 uses
  %i.e = tail call i64 @llvm.umin.i64(i64 range(i64 1, 0) %2, i64 98304) ; 3 uses
  %i.f = load i64, ptr %5, align 8, !tbaa !9      ; 3 uses
  %i.g = add i64 %i.f, 3                          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !692)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !695)
  %i.h = lshr i64 %i.f, 3
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 %i.h ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !11, !alias.scope !695, !noalias !692
  %i.k = zext i8 %i.j to i64
  store i64 %i.k, ptr %i.i, align 1, !noalias !692
  %i.l = add i64 %i.f, 1                          ; 3 uses
  store i64 %i.l, ptr %5, align 8, !tbaa !9, !alias.scope !692, !noalias !695
  %i.m = icmp ult i64 %2, 65537
  %.0.i52 = select i1 %i.m, i64 4, i64 5          ; 2 uses
  %i.n = add nsw i64 %.0.i52, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !697)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !700)
  %i.o = lshr i64 %i.l, 3
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 %i.o ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !11, !alias.scope !700, !noalias !697
  %i.r = zext i8 %i.q to i64
  %i.s = and i64 %i.l, 7
  %i.t = shl nuw nsw i64 %i.n, %i.s
  %i.u = or i64 %i.t, %i.r
  store i64 %i.u, ptr %i.p, align 1, !noalias !697
  store i64 %i.g, ptr %5, align 8, !tbaa !9, !alias.scope !697, !noalias !700
  %i.v = shl nuw nsw i64 %.0.i52, 2
  %i.w = add nsw i64 %i.e, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !705)
  %i.x = lshr i64 %i.g, 3
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !11, !alias.scope !705, !noalias !702
  %i.aa = zext i8 %i.z to i64
  %i.ab = and i64 %i.g, 7
  %i.ac = shl nuw nsw i64 %i.w, %i.ab
  %i.ad = or i64 %i.ac, %i.aa
  store i64 %i.ad, ptr %i.y, align 1, !noalias !702
  %i.ae = add i64 %i.g, %i.v                      ; 4 uses
  store i64 %i.ae, ptr %5, align 8, !tbaa !9, !alias.scope !702, !noalias !705
  tail call void @llvm.experimental.noalias.scope.decl(metadata !707)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !710)
  %i.af = lshr i64 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 %i.af ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !11, !alias.scope !710, !noalias !707
  %i.ai = zext i8 %i.ah to i64
  store i64 %i.ai, ptr %i.ag, align 1, !noalias !707
  %i.aj = add i64 %i.ae, 1                        ; 2 uses
  store i64 %i.aj, ptr %5, align 8, !tbaa !9, !alias.scope !707, !noalias !710
  tail call void @llvm.experimental.noalias.scope.decl(metadata !712)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !715)
  %i.ak = lshr i64 %i.aj, 3
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 %i.ak ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !11, !alias.scope !715, !noalias !712
  %i.an = zext i8 %i.am to i64
  store i64 %i.an, ptr %i.al, align 1, !noalias !712
  %i.ao = add i64 %i.ae, 14
  store i64 %i.ao, ptr %5, align 8, !tbaa !9, !alias.scope !712, !noalias !715
  %i.ap = tail call fastcc i64 @BuildAndStoreLiteralPrefixCode(ptr noundef %0, ptr noundef %1, i64 noundef %i.e, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2176 ; 4 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !63 ; 2 uses
  %i.as = icmp ugt i64 %i.ar, 7
  %.pre360 = load i64, ptr %5, align 8, !tbaa !9, !noalias !37 ; 2 uses
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1664
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.au = phi i64 [ %.pre360, %.lr.ph ], [ %i.bg, %bb.b ] ; 3 uses
  %.0347.i182 = phi i64 [ 0, %.lr.ph ], [ %i.bh, %bb.b ] ; 2 uses
  %i.av = lshr exact i64 %.0347.i182, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !11
  %i.ay = zext i8 %i.ax to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !717)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !720)
  %i.az = lshr i64 %i.au, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 %i.az ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !11, !alias.scope !720, !noalias !717
  %i.bc = zext i8 %i.bb to i64
  %i.bd = and i64 %i.au, 7
  %i.be = shl nuw nsw i64 %i.ay, %i.bd
  %i.bf = or i64 %i.be, %i.bc
  store i64 %i.bf, ptr %i.ba, align 1, !noalias !717
  %i.bg = add i64 %i.au, 8                        ; 3 uses
  store i64 %i.bg, ptr %5, align 8, !tbaa !9, !alias.scope !717, !noalias !720
  %i.bh = add i64 %.0347.i182, 8                  ; 2 uses
  %i.bi = or disjoint i64 %i.bh, 7
  %i.bj = load i64, ptr %i.aq, align 8, !tbaa !63 ; 2 uses
  %i.bk = icmp ult i64 %i.bi, %i.bj
  br i1 %i.bk, label %bb.b, label %._crit_edge, !llvm.loop !70

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.bl = phi i64 [ %.pre360, %bb.a ], [ %i.bg, %bb.b ] ; 3 uses
  %.lcssa180 = phi i64 [ %i.ar, %bb.a ], [ %i.bj, %bb.b ] ; 2 uses
  %i.bm = and i64 %.lcssa180, 7
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 3 uses
  %i.bo = lshr i64 %.lcssa180, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !11
  %i.br = zext i8 %i.bq to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !722)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !725)
  %i.bs = lshr i64 %i.bl, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !11, !alias.scope !725, !noalias !722
  %i.bv = zext i8 %i.bu to i64
  %i.bw = and i64 %i.bl, 7
  %i.bx = shl nuw nsw i64 %i.br, %i.bw
  %i.by = or i64 %i.bx, %i.bv
  store i64 %i.by, ptr %i.bt, align 1, !noalias !722
  %i.bz = add i64 %i.bl, %i.bm
  store i64 %i.bz, ptr %5, align 8, !tbaa !9, !alias.scope !722, !noalias !725
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
  br label %UpdateBits.exit.outer

UpdateBits.exit.outer:                            ; preds = %bb.bo, %._crit_edge
  %.0334.i.ph = phi i64 [ %i.axj, %bb.bo ], [ %i.ap, %._crit_edge ]
  %.0333.i.ph = phi i64 [ %i.awa, %bb.bo ], [ %i.g, %._crit_edge ] ; 3 uses
  %.0332.i.ph = phi i64 [ %i.avy, %bb.bo ], [ %i.e, %._crit_edge ] ; 2 uses
  %.0330.i.ph = phi ptr [ %.8.i, %bb.bo ], [ %1, %._crit_edge ] ; 5 uses
  %.0318.i.ph = phi i64 [ %.5323.i, %bb.bo ], [ %2, %._crit_edge ]
  %i.cr = ptrtoint ptr %.0330.i.ph to i64         ; 2 uses
  %i.cs = icmp ult i64 %.0334.i.ph, 981           ; 2 uses
  br label %UpdateBits.exit

UpdateBits.exit.loopexit:                         ; preds = %bb.ax
  br label %UpdateBits.exit, !llvm.loop !77

UpdateBits.exit:                                  ; preds = %UpdateBits.exit.loopexit, %UpdateBits.exit.outer
  %.0332.i = phi i64 [ %.0332.i.ph, %UpdateBits.exit.outer ], [ %i.aio, %UpdateBits.exit.loopexit ]
  %.0331.i = phi i64 [ %.0332.i.ph, %UpdateBits.exit.outer ], [ %i.ain, %UpdateBits.exit.loopexit ] ; 6 uses
  %.0324.i = phi ptr [ %.0330.i.ph, %UpdateBits.exit.outer ], [ %.7.i, %UpdateBits.exit.loopexit ] ; 2 uses
  %.0318.i = phi i64 [ %.0318.i.ph, %UpdateBits.exit.outer ], [ %i.aim, %UpdateBits.exit.loopexit ] ; 3 uses
  %.0.i = phi ptr [ %.0330.i.ph, %UpdateBits.exit.outer ], [ %i.ct, %UpdateBits.exit.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.c, ptr noundef nonnull align 16 dereferenceable(512) @kCmdHistoSeed, i64 512, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i, i64 %.0331.i ; 14 uses
  %i.cu = icmp samesign ugt i64 %.0331.i, 15
  br i1 %i.cu, label %bb.c, label %.thread101, !prof !78

bb.c:                                             ; preds = %UpdateBits.exit
  %i.cv = add nsw i64 %.0331.i, -5
  %i.cw = add i64 %.0318.i, -16
  %i.cx = tail call i64 @llvm.umin.i64(i64 %i.cv, i64 range(i64 -15, -16) %i.cw)
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
  br i1 %i.dd, label %.split.us.preheader, label %.split, !prof !79

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
  br i1 %i.dh, label %.thread101, label %.lr.ph186.us, !prof !80

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
  br i1 %i.do, label %IsMatch.exit7.us200, label %IsMatch.exit7.thread.us201

IsMatch.exit7.us200:                              ; preds = %.lr.ph186.us
  %i.dp = getelementptr inbounds nuw i8, ptr %.1360.i183.us196, i64 4
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !11
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !11
  %i.dt = icmp eq i8 %i.dq, %i.ds
  br i1 %i.dt, label %bb.d, label %IsMatch.exit7.thread.us201, !prof !79

IsMatch.exit7.thread.us201:                       ; preds = %IsMatch.exit7.us200, %.lr.ph186.us
  %i.du = zext nneg i32 %.2350.i184.us195 to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.du ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !5
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds i8, ptr %1, i64 %i.dx ; 3 uses
  %i.dz = ptrtoint ptr %.1360.i183.us196 to i64   ; 2 uses
  %i.ea = sub i64 %i.dz, %i.ca
  %i.eb = trunc i64 %i.ea to i32
  store i32 %i.eb, ptr %i.dv, align 4, !tbaa !5
  %.0.copyload.i51.us202 = load i32, ptr %.1360.i183.us196, align 1
  %.0.copyload.i50.us203 = load i32, ptr %i.dy, align 1
  %i.ec = icmp eq i32 %.0.copyload.i51.us202, %.0.copyload.i50.us203
  br i1 %i.ec, label %IsMatch.exit.us204, label %.critedge.backedge.us211

IsMatch.exit.us204:                               ; preds = %IsMatch.exit7.thread.us201
  %i.ed = getelementptr inbounds nuw i8, ptr %.1360.i183.us196, i64 4
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !11
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !11
  %.not277 = icmp eq i8 %i.ee, %i.eg
  br i1 %.not277, label %.loopexit.split.us205, label %.critedge.backedge.us211, !prof !81

bb.d:                                             ; preds = %IsMatch.exit7.us200
  %i.eh = ptrtoint ptr %.1360.i183.us196 to i64   ; 2 uses
  %i.ei = sub i64 %i.eh, %i.ca
  %i.ej = trunc i64 %i.ei to i32
  %i.ek = zext nneg i32 %.2350.i184.us195 to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ek
  store i32 %i.ej, ptr %i.el, align 4, !tbaa !5
  br label %.loopexit.split.us205

.loopexit.split.us205:                            ; preds = %IsMatch.exit.us204, %bb.d
  %.pre-phi = phi i64 [ %i.eh, %bb.d ], [ %i.dz, %IsMatch.exit.us204 ] ; 2 uses
  %.4365.i65.us = phi ptr [ %i.dn, %bb.d ], [ %i.dy, %IsMatch.exit.us204 ] ; 2 uses
  %i.em = ptrtoint ptr %.4365.i65.us to i64
  %i.en = sub i64 %.pre-phi, %i.em                ; 2 uses
  %i.eo = icmp sgt i64 %i.en, 262128
  br i1 %i.eo, label %.split.us, label %.split215.us

.critedge.backedge.us211:                         ; preds = %IsMatch.exit.us204, %IsMatch.exit7.thread.us201
  %i.ep = lshr i32 %i.dj, 5
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.eq ; 2 uses
  %i.es = icmp ugt ptr %i.er, %i.cy
  br i1 %i.es, label %.thread101, label %.lr.ph186.us, !prof !82, !llvm.loop !83

.split:                                           ; preds = %.thread74, %.loopexit.split.us
  %.0359.i = phi ptr [ %i.ex, %.loopexit.split.us ], [ %.0335.i, %.thread74 ] ; 2 uses
  %.0353.i = phi i32 [ %i.ey, %.loopexit.split.us ], [ 32, %.thread74 ] ; 2 uses
  %.1349.i = phi i64 [ %i.fa, %.loopexit.split.us ], [ %.0348.i.in, %.thread74 ]
  %i.et = lshr i32 %.0353.i, 5
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %.0359.i, i64 %i.eu ; 2 uses
  %i.ew = icmp ugt ptr %i.ev, %i.cy
  br i1 %i.ew, label %.thread101, label %.lr.ph186, !prof !80

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
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !5
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds i8, ptr %1, i64 %i.fd ; 4 uses
  %i.ff = ptrtoint ptr %.1360.i183.us to i64      ; 3 uses
  %i.fg = sub i64 %i.ff, %i.ca
  %i.fh = trunc i64 %i.fg to i32
  store i32 %i.fh, ptr %i.fb, align 4, !tbaa !5
  %.0.copyload.i51.us = load i32, ptr %.1360.i183.us, align 1
  %.0.copyload.i50.us = load i32, ptr %i.fe, align 1
  %i.fi = icmp eq i32 %.0.copyload.i51.us, %.0.copyload.i50.us
  br i1 %i.fi, label %IsMatch.exit.us, label %.critedge.backedge.us

IsMatch.exit.us:                                  ; preds = %.lr.ph186
  %i.fj = getelementptr inbounds nuw i8, ptr %.1360.i183.us, i64 4
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !11
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !11
  %.not275 = icmp eq i8 %i.fk, %i.fm
  br i1 %.not275, label %.loopexit.split.us, label %.critedge.backedge.us, !prof !81

.critedge.backedge.us:                            ; preds = %IsMatch.exit.us, %.lr.ph186
  %i.fn = lshr i32 %i.ey, 5
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.fo ; 2 uses
  %i.fq = icmp ugt ptr %i.fp, %i.cy
  br i1 %i.fq, label %.thread101, label %.lr.ph186, !prof !82, !llvm.loop !83

.loopexit.split.us:                               ; preds = %IsMatch.exit.us
  %i.fr = ptrtoint ptr %i.fe to i64
end_hunk_2
begin_hunk_3_@BrotliCompressFragmentFastImpl13:bb.a
  %i.aux = load i16, ptr %i.auw, align 2, !tbaa !86
  %i.auy = zext i16 %i.aux to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !946)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !949)
  %i.auz = lshr i64 %.epil.init646, 3
  %i.ava = getelementptr inbounds nuw i8, ptr %6, i64 %i.auz ; 2 uses
  %i.avb = load i8, ptr %i.ava, align 1, !tbaa !11, !alias.scope !949, !noalias !946
  %i.avc = zext i8 %i.avb to i64
  %i.avd = and i64 %.epil.init646, 7
  %i.ave = shl nuw nsw i64 %i.auy, %i.avd
  %i.avf = or i64 %i.ave, %i.avc
  store i64 %i.avf, ptr %i.ava, align 1, !noalias !946
  %i.avg = add i64 %.epil.init646, %i.auv
  store i64 %i.avg, ptr %5, align 8, !tbaa !9, !alias.scope !946, !noalias !949
  br label %EmitLiterals.exit33

EmitLiterals.exit33.loopexit561.unr-lcssa:        ; preds = %bb.bn
  %lcmp.mod638.not = icmp eq i64 %xtraiter635, 0
  br i1 %lcmp.mod638.not, label %EmitLiterals.exit33, label %.epil.preheader630

.epil.preheader630:                               ; preds = %EmitLiterals.exit33.loopexit561.unr-lcssa, %EmitLongInsertLen.exit30
  %.0.i34271.epil.init = phi i64 [ 0, %EmitLongInsertLen.exit30 ], [ %i.aup, %EmitLiterals.exit33.loopexit561.unr-lcssa ]
  %.epil.init637 = phi i64 [ %.sink359, %EmitLongInsertLen.exit30 ], [ %i.auo, %EmitLiterals.exit33.loopexit561.unr-lcssa ] ; 3 uses
  %lcmp.mod639 = trunc i64 %i.aky to i1
  tail call void @llvm.assume(i1 %lcmp.mod639)
  %i.avh = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34271.epil.init
  %i.avi = load i8, ptr %i.avh, align 1, !tbaa !11
  %i.avj = zext i8 %i.avi to i64                  ; 2 uses
  %i.avk = getelementptr inbounds nuw i8, ptr %0, i64 %i.avj
  %i.avl = load i8, ptr %i.avk, align 1, !tbaa !11
  %i.avm = zext i8 %i.avl to i64
  %i.avn = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.avj
  %i.avo = load i16, ptr %i.avn, align 2, !tbaa !86
  %i.avp = zext i16 %i.avo to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !975)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !978)
  %i.avq = lshr i64 %.epil.init637, 3
  %i.avr = getelementptr inbounds nuw i8, ptr %6, i64 %i.avq ; 2 uses
  %i.avs = load i8, ptr %i.avr, align 1, !tbaa !11, !alias.scope !978, !noalias !975
  %i.avt = zext i8 %i.avs to i64
  %i.avu = and i64 %.epil.init637, 7
  %i.avv = shl nuw nsw i64 %i.avp, %i.avu
  %i.avw = or i64 %i.avv, %i.avt
  store i64 %i.avw, ptr %i.avr, align 1, !noalias !975
  %i.avx = add i64 %.epil.init637, %i.avm
  store i64 %i.avx, ptr %5, align 8, !tbaa !9, !alias.scope !975, !noalias !978
  br label %EmitLiterals.exit33

EmitLiterals.exit33:                              ; preds = %.epil.preheader630, %EmitLiterals.exit33.loopexit561.unr-lcssa, %.epil.preheader642, %EmitLiterals.exit33.loopexit.unr-lcssa, %EmitInsertLen.exit27, %.thread74.thread118, %bb.bj, %bb.ay
  %.8.i = phi ptr [ %.us-phi220, %.thread74.thread118 ], [ %i.ct, %bb.ay ], [ %i.ct, %EmitInsertLen.exit27 ], [ %i.ct, %bb.bj ], [ %i.ct, %.epil.preheader642 ], [ %i.ct, %EmitLiterals.exit33.loopexit.unr-lcssa ], [ %i.ct, %EmitLiterals.exit33.loopexit561.unr-lcssa ], [ %i.ct, %.epil.preheader630 ] ; 2 uses
  %.5323.i = phi i64 [ %i.lq, %.thread74.thread118 ], [ %i.aim, %bb.ay ], [ %i.aim, %EmitInsertLen.exit27 ], [ %i.aim, %bb.bj ], [ %i.aim, %.epil.preheader642 ], [ %i.aim, %EmitLiterals.exit33.loopexit.unr-lcssa ], [ %i.aim, %EmitLiterals.exit33.loopexit561.unr-lcssa ], [ %i.aim, %.epil.preheader630 ] ; 4 uses
  %.not396.i = icmp eq i64 %.5323.i, 0
  br i1 %.not396.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %EmitLiterals.exit33
  %i.avy = tail call i64 @llvm.umin.i64(i64 %.5323.i, i64 98304) ; 3 uses
  %i.avz = load i64, ptr %5, align 8, !tbaa !9    ; 3 uses
  %i.awa = add i64 %i.avz, 3                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !984)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !987)
  %i.awb = lshr i64 %i.avz, 3
  %i.awc = getelementptr inbounds nuw i8, ptr %6, i64 %i.awb ; 2 uses
  %i.awd = load i8, ptr %i.awc, align 1, !tbaa !11, !alias.scope !987, !noalias !984
  %i.awe = zext i8 %i.awd to i64
  store i64 %i.awe, ptr %i.awc, align 1, !noalias !984
  %i.awf = add i64 %i.avz, 1                      ; 3 uses
  store i64 %i.awf, ptr %5, align 8, !tbaa !9, !alias.scope !984, !noalias !987
  %i.awg = icmp ult i64 %.5323.i, 65537
  %.0.i55 = select i1 %i.awg, i64 4, i64 5        ; 2 uses
  %i.awh = add nsw i64 %.0.i55, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !989)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !992)
  %i.awi = lshr i64 %i.awf, 3
  %i.awj = getelementptr inbounds nuw i8, ptr %6, i64 %i.awi ; 2 uses
  %i.awk = load i8, ptr %i.awj, align 1, !tbaa !11, !alias.scope !992, !noalias !989
  %i.awl = zext i8 %i.awk to i64
  %i.awm = and i64 %i.awf, 7
  %i.awn = shl nuw nsw i64 %i.awh, %i.awm
  %i.awo = or i64 %i.awn, %i.awl
  store i64 %i.awo, ptr %i.awj, align 1, !noalias !989
  store i64 %i.awa, ptr %5, align 8, !tbaa !9, !alias.scope !989, !noalias !992
  %i.awp = shl nuw nsw i64 %.0.i55, 2
  %i.awq = add nsw i64 %i.avy, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !994)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !997)
  %i.awr = lshr i64 %i.awa, 3
  %i.aws = getelementptr inbounds nuw i8, ptr %6, i64 %i.awr ; 2 uses
  %i.awt = load i8, ptr %i.aws, align 1, !tbaa !11, !alias.scope !997, !noalias !994
  %i.awu = zext i8 %i.awt to i64
  %i.awv = and i64 %i.awa, 7
  %i.aww = shl nuw nsw i64 %i.awq, %i.awv
  %i.awx = or i64 %i.aww, %i.awu
  store i64 %i.awx, ptr %i.aws, align 1, !noalias !994
  %i.awy = add i64 %i.awa, %i.awp                 ; 4 uses
  store i64 %i.awy, ptr %5, align 8, !tbaa !9, !alias.scope !994, !noalias !997
  tail call void @llvm.experimental.noalias.scope.decl(metadata !999)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  %i.awz = lshr i64 %i.awy, 3
  %i.axa = getelementptr inbounds nuw i8, ptr %6, i64 %i.awz ; 2 uses
  %i.axb = load i8, ptr %i.axa, align 1, !tbaa !11, !alias.scope !1002, !noalias !999
  %i.axc = zext i8 %i.axb to i64
  store i64 %i.axc, ptr %i.axa, align 1, !noalias !999
  %i.axd = add i64 %i.awy, 1                      ; 2 uses
  store i64 %i.axd, ptr %5, align 8, !tbaa !9, !alias.scope !999, !noalias !1002
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1004)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1007)
  %i.axe = lshr i64 %i.axd, 3
  %i.axf = getelementptr inbounds nuw i8, ptr %6, i64 %i.axe ; 2 uses
  %i.axg = load i8, ptr %i.axf, align 1, !tbaa !11, !alias.scope !1007, !noalias !1004
  %i.axh = zext i8 %i.axg to i64
  store i64 %i.axh, ptr %i.axf, align 1, !noalias !1004
  %i.axi = add i64 %i.awy, 14
  store i64 %i.axi, ptr %5, align 8, !tbaa !9, !alias.scope !1004, !noalias !1007
  %i.axj = tail call fastcc i64 @BuildAndStoreLiteralPrefixCode(ptr noundef %0, ptr noundef %.8.i, i64 noundef %i.avy, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  tail call fastcc void @BuildAndStoreCommandPrefixCode(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %6)
  br label %UpdateBits.exit.outer

bb.bp:                                            ; preds = %EmitLiterals.exit33
  %.not397.i = icmp eq i32 %3, 0
  br i1 %.not397.i, label %bb.bq, label %BrotliCompressFragmentFastImpl.exit

bb.bq:                                            ; preds = %bb.bp
  store i8 0, ptr %i.bn, align 8, !tbaa !11
  store i64 0, ptr %i.aq, align 8, !tbaa !63
  tail call fastcc void @BuildAndStoreCommandPrefixCode(ptr noundef %0, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.bn)
  br label %BrotliCompressFragmentFastImpl.exit

BrotliCompressFragmentFastImpl.exit:              ; preds = %bb.bp, %bb.bq
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @BrotliCompressFragmentFastImpl15(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 1, 0) %2, i32 noundef %3, ptr noundef captures(none) %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 11 uses
  %i.e = tail call i64 @llvm.umin.i64(i64 range(i64 1, 0) %2, i64 98304) ; 3 uses
  %i.f = load i64, ptr %5, align 8, !tbaa !9      ; 3 uses
  %i.g = add i64 %i.f, 3                          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1009)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1012)
  %i.h = lshr i64 %i.f, 3
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 %i.h ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !11, !alias.scope !1012, !noalias !1009
  %i.k = zext i8 %i.j to i64
  store i64 %i.k, ptr %i.i, align 1, !noalias !1009
  %i.l = add i64 %i.f, 1                          ; 3 uses
  store i64 %i.l, ptr %5, align 8, !tbaa !9, !alias.scope !1009, !noalias !1012
  %i.m = icmp ult i64 %2, 65537
  %.0.i52 = select i1 %i.m, i64 4, i64 5          ; 2 uses
  %i.n = add nsw i64 %.0.i52, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1014)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1017)
  %i.o = lshr i64 %i.l, 3
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 %i.o ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !11, !alias.scope !1017, !noalias !1014
  %i.r = zext i8 %i.q to i64
  %i.s = and i64 %i.l, 7
  %i.t = shl nuw nsw i64 %i.n, %i.s
  %i.u = or i64 %i.t, %i.r
  store i64 %i.u, ptr %i.p, align 1, !noalias !1014
  store i64 %i.g, ptr %5, align 8, !tbaa !9, !alias.scope !1014, !noalias !1017
  %i.v = shl nuw nsw i64 %.0.i52, 2
  %i.w = add nsw i64 %i.e, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1019)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1022)
  %i.x = lshr i64 %i.g, 3
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !11, !alias.scope !1022, !noalias !1019
  %i.aa = zext i8 %i.z to i64
  %i.ab = and i64 %i.g, 7
  %i.ac = shl nuw nsw i64 %i.w, %i.ab
  %i.ad = or i64 %i.ac, %i.aa
  store i64 %i.ad, ptr %i.y, align 1, !noalias !1019
  %i.ae = add i64 %i.g, %i.v                      ; 4 uses
  store i64 %i.ae, ptr %5, align 8, !tbaa !9, !alias.scope !1019, !noalias !1022
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1024)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1027)
  %i.af = lshr i64 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 %i.af ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !11, !alias.scope !1027, !noalias !1024
  %i.ai = zext i8 %i.ah to i64
  store i64 %i.ai, ptr %i.ag, align 1, !noalias !1024
  %i.aj = add i64 %i.ae, 1                        ; 2 uses
  store i64 %i.aj, ptr %5, align 8, !tbaa !9, !alias.scope !1024, !noalias !1027
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1029)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  %i.ak = lshr i64 %i.aj, 3
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 %i.ak ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !11, !alias.scope !1032, !noalias !1029
  %i.an = zext i8 %i.am to i64
  store i64 %i.an, ptr %i.al, align 1, !noalias !1029
  %i.ao = add i64 %i.ae, 14
  store i64 %i.ao, ptr %5, align 8, !tbaa !9, !alias.scope !1029, !noalias !1032
  %i.ap = tail call fastcc i64 @BuildAndStoreLiteralPrefixCode(ptr noundef %0, ptr noundef %1, i64 noundef %i.e, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2176 ; 4 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !63 ; 2 uses
  %i.as = icmp ugt i64 %i.ar, 7
  %.pre360 = load i64, ptr %5, align 8, !tbaa !9, !noalias !37 ; 2 uses
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1664
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.au = phi i64 [ %.pre360, %.lr.ph ], [ %i.bg, %bb.b ] ; 3 uses
  %.0347.i182 = phi i64 [ 0, %.lr.ph ], [ %i.bh, %bb.b ] ; 2 uses
  %i.av = lshr exact i64 %.0347.i182, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !11
  %i.ay = zext i8 %i.ax to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  %i.az = lshr i64 %i.au, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 %i.az ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !11, !alias.scope !1037, !noalias !1034
  %i.bc = zext i8 %i.bb to i64
  %i.bd = and i64 %i.au, 7
  %i.be = shl nuw nsw i64 %i.ay, %i.bd
  %i.bf = or i64 %i.be, %i.bc
  store i64 %i.bf, ptr %i.ba, align 1, !noalias !1034
  %i.bg = add i64 %i.au, 8                        ; 3 uses
  store i64 %i.bg, ptr %5, align 8, !tbaa !9, !alias.scope !1034, !noalias !1037
  %i.bh = add i64 %.0347.i182, 8                  ; 2 uses
  %i.bi = or disjoint i64 %i.bh, 7
  %i.bj = load i64, ptr %i.aq, align 8, !tbaa !63 ; 2 uses
  %i.bk = icmp ult i64 %i.bi, %i.bj
  br i1 %i.bk, label %bb.b, label %._crit_edge, !llvm.loop !70

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.bl = phi i64 [ %.pre360, %bb.a ], [ %i.bg, %bb.b ] ; 3 uses
  %.lcssa180 = phi i64 [ %i.ar, %bb.a ], [ %i.bj, %bb.b ] ; 2 uses
  %i.bm = and i64 %.lcssa180, 7
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 3 uses
  %i.bo = lshr i64 %.lcssa180, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !11
  %i.br = zext i8 %i.bq to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1039)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  %i.bs = lshr i64 %i.bl, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !11, !alias.scope !1042, !noalias !1039
  %i.bv = zext i8 %i.bu to i64
  %i.bw = and i64 %i.bl, 7
  %i.bx = shl nuw nsw i64 %i.br, %i.bw
  %i.by = or i64 %i.bx, %i.bv
  store i64 %i.by, ptr %i.bt, align 1, !noalias !1039
  %i.bz = add i64 %i.bl, %i.bm
  store i64 %i.bz, ptr %5, align 8, !tbaa !9, !alias.scope !1039, !noalias !1042
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
  br label %UpdateBits.exit.outer

UpdateBits.exit.outer:                            ; preds = %bb.bo, %._crit_edge
  %.0334.i.ph = phi i64 [ %i.axj, %bb.bo ], [ %i.ap, %._crit_edge ]
  %.0333.i.ph = phi i64 [ %i.awa, %bb.bo ], [ %i.g, %._crit_edge ] ; 3 uses
  %.0332.i.ph = phi i64 [ %i.avy, %bb.bo ], [ %i.e, %._crit_edge ] ; 2 uses
  %.0330.i.ph = phi ptr [ %.8.i, %bb.bo ], [ %1, %._crit_edge ] ; 5 uses
  %.0318.i.ph = phi i64 [ %.5323.i, %bb.bo ], [ %2, %._crit_edge ]
  %i.cr = ptrtoint ptr %.0330.i.ph to i64         ; 2 uses
  %i.cs = icmp ult i64 %.0334.i.ph, 981           ; 2 uses
  br label %UpdateBits.exit

UpdateBits.exit.loopexit:                         ; preds = %bb.ax
  br label %UpdateBits.exit, !llvm.loop !77

UpdateBits.exit:                                  ; preds = %UpdateBits.exit.loopexit, %UpdateBits.exit.outer
  %.0332.i = phi i64 [ %.0332.i.ph, %UpdateBits.exit.outer ], [ %i.aio, %UpdateBits.exit.loopexit ]
  %.0331.i = phi i64 [ %.0332.i.ph, %UpdateBits.exit.outer ], [ %i.ain, %UpdateBits.exit.loopexit ] ; 6 uses
  %.0324.i = phi ptr [ %.0330.i.ph, %UpdateBits.exit.outer ], [ %.7.i, %UpdateBits.exit.loopexit ] ; 2 uses
  %.0318.i = phi i64 [ %.0318.i.ph, %UpdateBits.exit.outer ], [ %i.aim, %UpdateBits.exit.loopexit ] ; 3 uses
  %.0.i = phi ptr [ %.0330.i.ph, %UpdateBits.exit.outer ], [ %i.ct, %UpdateBits.exit.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.c, ptr noundef nonnull align 16 dereferenceable(512) @kCmdHistoSeed, i64 512, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i, i64 %.0331.i ; 14 uses
  %i.cu = icmp samesign ugt i64 %.0331.i, 15
  br i1 %i.cu, label %bb.c, label %.thread101, !prof !78

bb.c:                                             ; preds = %UpdateBits.exit
  %i.cv = add nsw i64 %.0331.i, -5
  %i.cw = add i64 %.0318.i, -16
  %i.cx = tail call i64 @llvm.umin.i64(i64 %i.cv, i64 range(i64 -15, -16) %i.cw)
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
  br i1 %i.dd, label %.split.us.preheader, label %.split, !prof !79

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
  br i1 %i.dh, label %.thread101, label %.lr.ph186.us, !prof !80

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
  br i1 %i.do, label %IsMatch.exit7.us200, label %IsMatch.exit7.thread.us201

IsMatch.exit7.us200:                              ; preds = %.lr.ph186.us
  %i.dp = getelementptr inbounds nuw i8, ptr %.1360.i183.us196, i64 4
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !11
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !11
  %i.dt = icmp eq i8 %i.dq, %i.ds
  br i1 %i.dt, label %bb.d, label %IsMatch.exit7.thread.us201, !prof !79

IsMatch.exit7.thread.us201:                       ; preds = %IsMatch.exit7.us200, %.lr.ph186.us
  %i.du = zext nneg i32 %.2350.i184.us195 to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.du ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !5
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds i8, ptr %1, i64 %i.dx ; 3 uses
  %i.dz = ptrtoint ptr %.1360.i183.us196 to i64   ; 2 uses
  %i.ea = sub i64 %i.dz, %i.ca
  %i.eb = trunc i64 %i.ea to i32
  store i32 %i.eb, ptr %i.dv, align 4, !tbaa !5
  %.0.copyload.i51.us202 = load i32, ptr %.1360.i183.us196, align 1
  %.0.copyload.i50.us203 = load i32, ptr %i.dy, align 1
  %i.ec = icmp eq i32 %.0.copyload.i51.us202, %.0.copyload.i50.us203
  br i1 %i.ec, label %IsMatch.exit.us204, label %.critedge.backedge.us211

IsMatch.exit.us204:                               ; preds = %IsMatch.exit7.thread.us201
  %i.ed = getelementptr inbounds nuw i8, ptr %.1360.i183.us196, i64 4
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !11
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !11
  %.not277 = icmp eq i8 %i.ee, %i.eg
  br i1 %.not277, label %.loopexit.split.us205, label %.critedge.backedge.us211, !prof !81

bb.d:                                             ; preds = %IsMatch.exit7.us200
  %i.eh = ptrtoint ptr %.1360.i183.us196 to i64   ; 2 uses
  %i.ei = sub i64 %i.eh, %i.ca
  %i.ej = trunc i64 %i.ei to i32
  %i.ek = zext nneg i32 %.2350.i184.us195 to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ek
  store i32 %i.ej, ptr %i.el, align 4, !tbaa !5
  br label %.loopexit.split.us205

.loopexit.split.us205:                            ; preds = %IsMatch.exit.us204, %bb.d
  %.pre-phi = phi i64 [ %i.eh, %bb.d ], [ %i.dz, %IsMatch.exit.us204 ] ; 2 uses
  %.4365.i65.us = phi ptr [ %i.dn, %bb.d ], [ %i.dy, %IsMatch.exit.us204 ] ; 2 uses
  %i.em = ptrtoint ptr %.4365.i65.us to i64
  %i.en = sub i64 %.pre-phi, %i.em                ; 2 uses
  %i.eo = icmp sgt i64 %i.en, 262128
  br i1 %i.eo, label %.split.us, label %.split215.us

.critedge.backedge.us211:                         ; preds = %IsMatch.exit.us204, %IsMatch.exit7.thread.us201
  %i.ep = lshr i32 %i.dj, 5
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.eq ; 2 uses
  %i.es = icmp ugt ptr %i.er, %i.cy
  br i1 %i.es, label %.thread101, label %.lr.ph186.us, !prof !82, !llvm.loop !83

.split:                                           ; preds = %.thread74, %.loopexit.split.us
  %.0359.i = phi ptr [ %i.ex, %.loopexit.split.us ], [ %.0335.i, %.thread74 ] ; 2 uses
  %.0353.i = phi i32 [ %i.ey, %.loopexit.split.us ], [ 32, %.thread74 ] ; 2 uses
  %.1349.i = phi i64 [ %i.fa, %.loopexit.split.us ], [ %.0348.i.in, %.thread74 ]
  %i.et = lshr i32 %.0353.i, 5
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %.0359.i, i64 %i.eu ; 2 uses
  %i.ew = icmp ugt ptr %i.ev, %i.cy
  br i1 %i.ew, label %.thread101, label %.lr.ph186, !prof !80

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
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !5
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds i8, ptr %1, i64 %i.fd ; 4 uses
  %i.ff = ptrtoint ptr %.1360.i183.us to i64      ; 3 uses
  %i.fg = sub i64 %i.ff, %i.ca
  %i.fh = trunc i64 %i.fg to i32
  store i32 %i.fh, ptr %i.fb, align 4, !tbaa !5
  %.0.copyload.i51.us = load i32, ptr %.1360.i183.us, align 1
  %.0.copyload.i50.us = load i32, ptr %i.fe, align 1
  %i.fi = icmp eq i32 %.0.copyload.i51.us, %.0.copyload.i50.us
  br i1 %i.fi, label %IsMatch.exit.us, label %.critedge.backedge.us

IsMatch.exit.us:                                  ; preds = %.lr.ph186
  %i.fj = getelementptr inbounds nuw i8, ptr %.1360.i183.us, i64 4
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !11
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !11
  %.not275 = icmp eq i8 %i.fk, %i.fm
  br i1 %.not275, label %.loopexit.split.us, label %.critedge.backedge.us, !prof !81

.critedge.backedge.us:                            ; preds = %IsMatch.exit.us, %.lr.ph186
  %i.fn = lshr i32 %i.ey, 5
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.fo ; 2 uses
  %i.fq = icmp ugt ptr %i.fp, %i.cy
  br i1 %i.fq, label %.thread101, label %.lr.ph186, !prof !82, !llvm.loop !83

.loopexit.split.us:                               ; preds = %IsMatch.exit.us
  %i.fr = ptrtoint ptr %i.fe to i64
end_hunk_3
begin_hunk_4_@BuildAndStoreCommandPrefixCode:bb.a
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !11
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 810
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !11
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 7456
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !11
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 818
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !11
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 7584
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !11
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 826
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !11
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 7776
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !11
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 811
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !11
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 7464
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !11
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 819
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !11
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 7592
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !11
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 827
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !11
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 7784
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !11
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 812
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !11
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 7472
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !11
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 820
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !11
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 7600
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !11
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 828
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !11
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 7792
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !11
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 813
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !11
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 7480
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !11
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 821
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !11
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 7608
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !11
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 829
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !11
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 7800
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !11
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 814
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !11
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 7488
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !11
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 822
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !11
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 7616
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !11
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 830
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !11
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 7808
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !11
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 815
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !11
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 7496
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !11
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 823
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !11
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 7624
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !11
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 831
  %i.df = load i8, ptr %i.de, align 1, !tbaa !11
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 7816
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !11
  tail call void @BrotliStoreHuffmanTree(ptr noundef nonnull %i.d, i64 noundef 704, ptr noundef nonnull %i.f, ptr noundef %1, ptr noundef %2) #11
  tail call void @BrotliStoreHuffmanTree(ptr noundef nonnull %i.h, i64 noundef 64, ptr noundef nonnull %i.f, ptr noundef %1, ptr noundef %2) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare hidden void @BrotliBuildAndStoreHuffmanTreeFast(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @log2(double noundef) local_unnamed_addr #8

declare hidden void @BrotliCreateHuffmanTree(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare hidden void @BrotliConvertBitDepthsToSymbols(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

declare hidden void @BrotliStoreHuffmanTree(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

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

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!13}
!13 = distinct !{!13, !14, !"BrotliWriteBits: argument 0"}
!14 = distinct !{!14, !"BrotliWriteBits"}
!15 = !{!16}
!16 = distinct !{!16, !14, !"BrotliWriteBits: argument 1"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"BrotliWriteBits: argument 0"}
!19 = distinct !{!19, !"BrotliWriteBits"}
!20 = !{!21}
!21 = distinct !{!21, !19, !"BrotliWriteBits: argument 1"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"BrotliWriteBits: argument 0"}
!24 = distinct !{!24, !"BrotliWriteBits"}
!25 = !{!26}
!26 = distinct !{!26, !24, !"BrotliWriteBits: argument 1"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"BrotliWriteBits: argument 1"}
!29 = distinct !{!29, !"BrotliWriteBits"}
!30 = !{!31}
!31 = distinct !{!31, !29, !"BrotliWriteBits: argument 0"}
!32 = !{!33}
!33 = distinct !{!33, !34, !"BrotliWriteBits: argument 0"}
!34 = distinct !{!34, !"BrotliWriteBits"}
!35 = !{!36}
!36 = distinct !{!36, !34, !"BrotliWriteBits: argument 1"}
!37 = !{}
!38 = !{!39}
!39 = distinct !{!39, !40, !"BrotliWriteBits: argument 0"}
!40 = distinct !{!40, !"BrotliWriteBits"}
!41 = !{!42}
!42 = distinct !{!42, !40, !"BrotliWriteBits: argument 1"}
!43 = !{!44}
!44 = distinct !{!44, !45, !"BrotliWriteBits: argument 0"}
!45 = distinct !{!45, !"BrotliWriteBits"}
!46 = !{!47}
!47 = distinct !{!47, !45, !"BrotliWriteBits: argument 1"}
!48 = !{!49}
!49 = distinct !{!49, !50, !"BrotliWriteBits: argument 0"}
!50 = distinct !{!50, !"BrotliWriteBits"}
!51 = !{!52}
!52 = distinct !{!52, !50, !"BrotliWriteBits: argument 1"}
!53 = !{!54}
!54 = distinct !{!54, !55, !"BrotliWriteBits: argument 0"}
!55 = distinct !{!55, !"BrotliWriteBits"}
!56 = !{!57}
!57 = distinct !{!57, !55, !"BrotliWriteBits: argument 1"}
!58 = !{!59}
!59 = distinct !{!59, !60, !"BrotliWriteBits: argument 0"}
!60 = distinct !{!60, !"BrotliWriteBits"}
!61 = !{!62}
!62 = distinct !{!62, !60, !"BrotliWriteBits: argument 1"}
!63 = !{!64, !10, i64 2176}
!64 = !{!"BrotliOnePassArena", !7, i64 0, !7, i64 256, !7, i64 768, !7, i64 896, !7, i64 1152, !7, i64 1664, !10, i64 2176, !7, i64 2184, !7, i64 6288, !7, i64 7312, !7, i64 8016}
!65 = !{!66}
!66 = distinct !{!66, !67, !"BrotliWriteBits: argument 0"}
!67 = distinct !{!67, !"BrotliWriteBits"}
!68 = !{!69}
!69 = distinct !{!69, !67, !"BrotliWriteBits: argument 1"}
!70 = distinct !{!70, !71}
!71 = !{!"llvm.loop.mustprogress"}
!72 = !{!73}
!73 = distinct !{!73, !74, !"BrotliWriteBits: argument 0"}
!74 = distinct !{!74, !"BrotliWriteBits"}
!75 = !{!76}
!76 = distinct !{!76, !74, !"BrotliWriteBits: argument 1"}
!77 = distinct !{!77, !71}
!78 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!79 = !{!"branch_weights", i32 2146410443, i32 1073205}
!80 = !{!"branch_weights", i32 1, i32 127}
!81 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!82 = !{!"branch_weights", i32 127, i32 255873}
!83 = distinct !{!83, !71}
!84 = distinct !{!84, !71}
!85 = distinct !{!85, !71}
!86 = !{!87, !87, i64 0}
!87 = !{!"short", !7, i64 0}
!88 = !{!89}
!89 = distinct !{!89, !90, !"BrotliWriteBits: argument 0"}
!90 = distinct !{!90, !"BrotliWriteBits"}
!91 = !{!92}
!92 = distinct !{!92, !90, !"BrotliWriteBits: argument 1"}
!93 = !{!94}
!94 = distinct !{!94, !95, !"BrotliWriteBits: argument 0"}
!95 = distinct !{!95, !"BrotliWriteBits"}
!96 = !{!97}
!97 = distinct !{!97, !95, !"BrotliWriteBits: argument 1"}
!98 = !{!99}
!99 = distinct !{!99, !100, !"BrotliWriteBits: argument 0"}
!100 = distinct !{!100, !"BrotliWriteBits"}
!101 = !{!102}
!102 = distinct !{!102, !100, !"BrotliWriteBits: argument 1"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"BrotliWriteBits: argument 0"}
!105 = distinct !{!105, !"BrotliWriteBits"}
!106 = !{!107}
!107 = distinct !{!107, !105, !"BrotliWriteBits: argument 1"}
!108 = !{!109}
!109 = distinct !{!109, !110, !"BrotliWriteBits: argument 0"}
!110 = distinct !{!110, !"BrotliWriteBits"}
!111 = !{!112}
!112 = distinct !{!112, !110, !"BrotliWriteBits: argument 1"}
!113 = !{!114}
!114 = distinct !{!114, !115, !"BrotliWriteBits: argument 0"}
!115 = distinct !{!115, !"BrotliWriteBits"}
!116 = !{!117}
!117 = distinct !{!117, !115, !"BrotliWriteBits: argument 1"}
!118 = !{!119}
!119 = distinct !{!119, !120, !"BrotliWriteBits: argument 0"}
!120 = distinct !{!120, !"BrotliWriteBits"}
!121 = !{!122}
!122 = distinct !{!122, !120, !"BrotliWriteBits: argument 1"}
!123 = !{!124}
!124 = distinct !{!124, !125, !"BrotliWriteBits: argument 0"}
!125 = distinct !{!125, !"BrotliWriteBits"}
!126 = !{!127}
!127 = distinct !{!127, !125, !"BrotliWriteBits: argument 1"}
!128 = !{!129}
!129 = distinct !{!129, !130, !"BrotliWriteBits: argument 0"}
!130 = distinct !{!130, !"BrotliWriteBits"}
!131 = !{!132}
!132 = distinct !{!132, !130, !"BrotliWriteBits: argument 1"}
!133 = !{!134}
!134 = distinct !{!134, !135, !"BrotliWriteBits: argument 0"}
!135 = distinct !{!135, !"BrotliWriteBits"}
!136 = !{!137}
!137 = distinct !{!137, !135, !"BrotliWriteBits: argument 1"}
!138 = !{!139}
!139 = distinct !{!139, !140, !"BrotliWriteBits: argument 0"}
!140 = distinct !{!140, !"BrotliWriteBits"}
!141 = !{!142}
!142 = distinct !{!142, !140, !"BrotliWriteBits: argument 1"}
!143 = !{!144}
!144 = distinct !{!144, !145, !"BrotliWriteBits: argument 0"}
!145 = distinct !{!145, !"BrotliWriteBits"}
!146 = !{!147}
!147 = distinct !{!147, !145, !"BrotliWriteBits: argument 1"}
!148 = !{!149}
!149 = distinct !{!149, !145, !"BrotliWriteBits: argument 0:It1"}
!150 = !{!151}
!151 = distinct !{!151, !145, !"BrotliWriteBits: argument 1:It1"}
!152 = distinct !{!152, !71}
!153 = !{!154}
!154 = distinct !{!154, !155, !"BrotliWriteBits: argument 0"}
!155 = distinct !{!155, !"BrotliWriteBits"}
!156 = !{!157}
!157 = distinct !{!157, !155, !"BrotliWriteBits: argument 1"}
!158 = !{!159}
!159 = distinct !{!159, !160, !"BrotliWriteBits: argument 0"}
!160 = distinct !{!160, !"BrotliWriteBits"}
!161 = !{!162}
!162 = distinct !{!162, !160, !"BrotliWriteBits: argument 1"}
!163 = !{!164}
!164 = distinct !{!164, !165, !"BrotliWriteBits: argument 1"}
!165 = distinct !{!165, !"BrotliWriteBits"}
!166 = !{!167}
!167 = distinct !{!167, !165, !"BrotliWriteBits: argument 0"}
!168 = !{!169}
!169 = distinct !{!169, !170, !"BrotliWriteBits: argument 0"}
!170 = distinct !{!170, !"BrotliWriteBits"}
!171 = !{!172}
!172 = distinct !{!172, !170, !"BrotliWriteBits: argument 1"}
!173 = !{!174}
!174 = distinct !{!174, !175, !"BrotliWriteBits: argument 0"}
!175 = distinct !{!175, !"BrotliWriteBits"}
!176 = !{!177}
!177 = distinct !{!177, !175, !"BrotliWriteBits: argument 1"}
!178 = !{!179}
!179 = distinct !{!179, !180, !"BrotliWriteBits: argument 0"}
!180 = distinct !{!180, !"BrotliWriteBits"}
!181 = !{!182}
!182 = distinct !{!182, !180, !"BrotliWriteBits: argument 1"}
!183 = !{!184}
!184 = distinct !{!184, !185, !"BrotliWriteBits: argument 0"}
!185 = distinct !{!185, !"BrotliWriteBits"}
!186 = !{!187}
!187 = distinct !{!187, !185, !"BrotliWriteBits: argument 1"}
!188 = !{!189}
!189 = distinct !{!189, !190, !"BrotliWriteBits: argument 0"}
!190 = distinct !{!190, !"BrotliWriteBits"}
!191 = !{!192}
!192 = distinct !{!192, !190, !"BrotliWriteBits: argument 1"}
!193 = !{!194}
!194 = distinct !{!194, !195, !"BrotliWriteBits: argument 0"}
!195 = distinct !{!195, !"BrotliWriteBits"}
!196 = !{!197}
!197 = distinct !{!197, !195, !"BrotliWriteBits: argument 1"}
!198 = !{!199}
!199 = distinct !{!199, !200, !"BrotliWriteBits: argument 0"}
!200 = distinct !{!200, !"BrotliWriteBits"}
!201 = !{!202}
!202 = distinct !{!202, !200, !"BrotliWriteBits: argument 1"}
!203 = !{!204}
!204 = distinct !{!204, !205, !"BrotliWriteBits: argument 0"}
!205 = distinct !{!205, !"BrotliWriteBits"}
!206 = !{!207}
!207 = distinct !{!207, !205, !"BrotliWriteBits: argument 1"}
!208 = !{!209}
!209 = distinct !{!209, !210, !"BrotliWriteBits: argument 0"}
!210 = distinct !{!210, !"BrotliWriteBits"}
!211 = !{!212}
!212 = distinct !{!212, !210, !"BrotliWriteBits: argument 1"}
!213 = !{!214}
!214 = distinct !{!214, !215, !"BrotliWriteBits: argument 0"}
!215 = distinct !{!215, !"BrotliWriteBits"}
!216 = !{!217}
!217 = distinct !{!217, !215, !"BrotliWriteBits: argument 1"}
!218 = !{!219}
!219 = distinct !{!219, !220, !"BrotliWriteBits: argument 0"}
!220 = distinct !{!220, !"BrotliWriteBits"}
!221 = !{!222}
!222 = distinct !{!222, !220, !"BrotliWriteBits: argument 1"}
!223 = !{!224}
!224 = distinct !{!224, !225, !"BrotliWriteBits: argument 0"}
!225 = distinct !{!225, !"BrotliWriteBits"}
!226 = !{!227}
!227 = distinct !{!227, !225, !"BrotliWriteBits: argument 1"}
!228 = !{!229}
!229 = distinct !{!229, !230, !"BrotliWriteBits: argument 0"}
!230 = distinct !{!230, !"BrotliWriteBits"}
!231 = !{!232}
!232 = distinct !{!232, !230, !"BrotliWriteBits: argument 1"}
!233 = !{!234}
!234 = distinct !{!234, !235, !"BrotliWriteBits: argument 0"}
!235 = distinct !{!235, !"BrotliWriteBits"}
!236 = !{!237}
!237 = distinct !{!237, !235, !"BrotliWriteBits: argument 1"}
!238 = !{!239}
!239 = distinct !{!239, !240, !"BrotliWriteBits: argument 0"}
!240 = distinct !{!240, !"BrotliWriteBits"}
!241 = !{!242}
!242 = distinct !{!242, !240, !"BrotliWriteBits: argument 1"}
!243 = !{!244}
!244 = distinct !{!244, !245, !"BrotliWriteBits: argument 0"}
!245 = distinct !{!245, !"BrotliWriteBits"}
!246 = !{!247}
!247 = distinct !{!247, !245, !"BrotliWriteBits: argument 1"}
!248 = !{!249}
!249 = distinct !{!249, !250, !"BrotliWriteBits: argument 0"}
!250 = distinct !{!250, !"BrotliWriteBits"}
!251 = !{!252}
!252 = distinct !{!252, !250, !"BrotliWriteBits: argument 1"}
!253 = !{!254}
!254 = distinct !{!254, !255, !"BrotliWriteBits: argument 0"}
!255 = distinct !{!255, !"BrotliWriteBits"}
!256 = !{!257}
!257 = distinct !{!257, !255, !"BrotliWriteBits: argument 1"}
!258 = !{!259}
!259 = distinct !{!259, !260, !"BrotliWriteBits: argument 0"}
!260 = distinct !{!260, !"BrotliWriteBits"}
!261 = !{!262}
!262 = distinct !{!262, !260, !"BrotliWriteBits: argument 1"}
!263 = !{!264}
!264 = distinct !{!264, !265, !"BrotliWriteBits: argument 0"}
!265 = distinct !{!265, !"BrotliWriteBits"}
!266 = !{!267}
!267 = distinct !{!267, !265, !"BrotliWriteBits: argument 1"}
!268 = !{!269}
!269 = distinct !{!269, !270, !"BrotliWriteBits: argument 0"}
!270 = distinct !{!270, !"BrotliWriteBits"}
!271 = !{!272}
!272 = distinct !{!272, !270, !"BrotliWriteBits: argument 1"}
!273 = distinct !{!273, !71}
!274 = !{!275, !275, i64 0}
!275 = !{!"double", !7, i64 0}
!276 = distinct !{!276, !71}
!277 = !{!278}
!278 = distinct !{!278, !279, !"BrotliWriteBits: argument 0"}
!279 = distinct !{!279, !"BrotliWriteBits"}
!280 = !{!281}
!281 = distinct !{!281, !279, !"BrotliWriteBits: argument 1"}
!282 = !{!283}
!283 = distinct !{!283, !284, !"BrotliWriteBits: argument 0"}
!284 = distinct !{!284, !"BrotliWriteBits"}
!285 = !{!286}
!286 = distinct !{!286, !284, !"BrotliWriteBits: argument 1"}
!287 = !{!288}
!288 = distinct !{!288, !289, !"BrotliWriteBits: argument 0"}
!289 = distinct !{!289, !"BrotliWriteBits"}
!290 = !{!291}
!291 = distinct !{!291, !289, !"BrotliWriteBits: argument 1"}
!292 = !{!293}
!293 = distinct !{!293, !294, !"BrotliWriteBits: argument 0"}
!294 = distinct !{!294, !"BrotliWriteBits"}
!295 = !{!296}
!296 = distinct !{!296, !294, !"BrotliWriteBits: argument 1"}
!297 = !{!298}
!298 = distinct !{!298, !299, !"BrotliWriteBits: argument 0"}
!299 = distinct !{!299, !"BrotliWriteBits"}
!300 = !{!301}
!301 = distinct !{!301, !299, !"BrotliWriteBits: argument 1"}
!302 = !{!303}
!303 = distinct !{!303, !304, !"BrotliWriteBits: argument 0"}
!304 = distinct !{!304, !"BrotliWriteBits"}
!305 = !{!306}
!306 = distinct !{!306, !304, !"BrotliWriteBits: argument 1"}
!307 = !{!308}
!308 = distinct !{!308, !309, !"BrotliWriteBits: argument 0"}
!309 = distinct !{!309, !"BrotliWriteBits"}
!310 = !{!311}
!311 = distinct !{!311, !309, !"BrotliWriteBits: argument 1"}
!312 = !{!313}
!313 = distinct !{!313, !314, !"BrotliWriteBits: argument 0"}
!314 = distinct !{!314, !"BrotliWriteBits"}
!315 = !{!316}
!316 = distinct !{!316, !314, !"BrotliWriteBits: argument 1"}
!317 = !{!318}
!318 = distinct !{!318, !314, !"BrotliWriteBits: argument 0:It1"}
!319 = !{!320}
!320 = distinct !{!320, !314, !"BrotliWriteBits: argument 1:It1"}
!321 = !{!322}
!322 = distinct !{!322, !323, !"BrotliWriteBits: argument 0"}
!323 = distinct !{!323, !"BrotliWriteBits"}
!324 = !{!325}
!325 = distinct !{!325, !323, !"BrotliWriteBits: argument 1"}
!326 = !{!327}
!327 = distinct !{!327, !328, !"BrotliWriteBits: argument 1"}
!328 = distinct !{!328, !"BrotliWriteBits"}
!329 = !{!330}
!330 = distinct !{!330, !328, !"BrotliWriteBits: argument 0"}
!331 = !{!332}
!332 = distinct !{!332, !333, !"BrotliWriteBits: argument 0"}
!333 = distinct !{!333, !"BrotliWriteBits"}
!334 = !{!335}
!335 = distinct !{!335, !333, !"BrotliWriteBits: argument 1"}
!336 = !{!337}
!337 = distinct !{!337, !338, !"BrotliWriteBits: argument 1"}
!338 = distinct !{!338, !"BrotliWriteBits"}
!339 = !{!340}
!340 = distinct !{!340, !338, !"BrotliWriteBits: argument 0"}
!341 = !{!342}
!342 = distinct !{!342, !343, !"BrotliWriteBits: argument 0"}
!343 = distinct !{!343, !"BrotliWriteBits"}
!344 = !{!345}
!345 = distinct !{!345, !343, !"BrotliWriteBits: argument 1"}
!346 = !{!347}
!347 = distinct !{!347, !343, !"BrotliWriteBits: argument 0:It1"}
!348 = !{!349}
!349 = distinct !{!349, !343, !"BrotliWriteBits: argument 1:It1"}
!350 = !{!351}
!351 = distinct !{!351, !352, !"BrotliWriteBits: argument 0"}
!352 = distinct !{!352, !"BrotliWriteBits"}
!353 = !{!354}
!354 = distinct !{!354, !352, !"BrotliWriteBits: argument 1"}
!355 = !{!356}
!356 = distinct !{!356, !357, !"BrotliWriteBits: argument 0"}
!357 = distinct !{!357, !"BrotliWriteBits"}
!358 = !{!359}
!359 = distinct !{!359, !357, !"BrotliWriteBits: argument 1"}
!360 = !{!361}
!361 = distinct !{!361, !362, !"BrotliWriteBits: argument 0"}
!362 = distinct !{!362, !"BrotliWriteBits"}
!363 = !{!364}
!364 = distinct !{!364, !362, !"BrotliWriteBits: argument 1"}
!365 = !{!366}
!366 = distinct !{!366, !367, !"BrotliWriteBits: argument 0"}
!367 = distinct !{!367, !"BrotliWriteBits"}
!368 = !{!369}
!369 = distinct !{!369, !367, !"BrotliWriteBits: argument 1"}
!370 = !{!371}
!371 = distinct !{!371, !372, !"BrotliWriteBits: argument 0"}
!372 = distinct !{!372, !"BrotliWriteBits"}
!373 = !{!374}
!374 = distinct !{!374, !372, !"BrotliWriteBits: argument 1"}
!375 = !{!376}
!376 = distinct !{!376, !377, !"BrotliWriteBits: argument 0"}
!377 = distinct !{!377, !"BrotliWriteBits"}
!378 = !{!379}
!379 = distinct !{!379, !377, !"BrotliWriteBits: argument 1"}
!380 = !{!381}
!381 = distinct !{!381, !382, !"BrotliWriteBits: argument 0"}
!382 = distinct !{!382, !"BrotliWriteBits"}
!383 = !{!384}
!384 = distinct !{!384, !382, !"BrotliWriteBits: argument 1"}
!385 = !{!386}
!386 = distinct !{!386, !387, !"BrotliWriteBits: argument 0"}
!387 = distinct !{!387, !"BrotliWriteBits"}
!388 = !{!389}
!389 = distinct !{!389, !387, !"BrotliWriteBits: argument 1"}
!390 = !{!391}
!391 = distinct !{!391, !392, !"BrotliWriteBits: argument 0"}
!392 = distinct !{!392, !"BrotliWriteBits"}
!393 = !{!394}
!394 = distinct !{!394, !392, !"BrotliWriteBits: argument 1"}
!395 = !{!396}
!396 = distinct !{!396, !397, !"BrotliWriteBits: argument 0"}
!397 = distinct !{!397, !"BrotliWriteBits"}
!398 = !{!399}
!399 = distinct !{!399, !397, !"BrotliWriteBits: argument 1"}
!400 = !{!401}
!401 = distinct !{!401, !402, !"BrotliWriteBits: argument 0"}
!402 = distinct !{!402, !"BrotliWriteBits"}
!403 = !{!404}
!404 = distinct !{!404, !402, !"BrotliWriteBits: argument 1"}
!405 = !{!406}
!406 = distinct !{!406, !407, !"BrotliWriteBits: argument 0"}
!407 = distinct !{!407, !"BrotliWriteBits"}
!408 = !{!409}
!409 = distinct !{!409, !407, !"BrotliWriteBits: argument 1"}
!410 = !{!411}
!411 = distinct !{!411, !412, !"BrotliWriteBits: argument 0"}
!412 = distinct !{!412, !"BrotliWriteBits"}
!413 = !{!414}
!414 = distinct !{!414, !412, !"BrotliWriteBits: argument 1"}
!415 = !{!416}
!416 = distinct !{!416, !417, !"BrotliWriteBits: argument 0"}
!417 = distinct !{!417, !"BrotliWriteBits"}
!418 = !{!419}
!419 = distinct !{!419, !417, !"BrotliWriteBits: argument 1"}
!420 = !{!421}
!421 = distinct !{!421, !422, !"BrotliWriteBits: argument 0"}
!422 = distinct !{!422, !"BrotliWriteBits"}
!423 = !{!424}
!424 = distinct !{!424, !422, !"BrotliWriteBits: argument 1"}
!425 = !{!426}
!426 = distinct !{!426, !427, !"BrotliWriteBits: argument 0"}
!427 = distinct !{!427, !"BrotliWriteBits"}
!428 = !{!429}
!429 = distinct !{!429, !427, !"BrotliWriteBits: argument 1"}
!430 = !{!431}
!431 = distinct !{!431, !432, !"BrotliWriteBits: argument 0"}
!432 = distinct !{!432, !"BrotliWriteBits"}
!433 = !{!434}
!434 = distinct !{!434, !432, !"BrotliWriteBits: argument 1"}
!435 = !{!436}
!436 = distinct !{!436, !437, !"BrotliWriteBits: argument 0"}
!437 = distinct !{!437, !"BrotliWriteBits"}
!438 = !{!439}
!439 = distinct !{!439, !437, !"BrotliWriteBits: argument 1"}
!440 = !{!441}
!441 = distinct !{!441, !442, !"BrotliWriteBits: argument 0"}
!442 = distinct !{!442, !"BrotliWriteBits"}
!443 = !{!444}
!444 = distinct !{!444, !442, !"BrotliWriteBits: argument 1"}
!445 = !{!446}
!446 = distinct !{!446, !447, !"BrotliWriteBits: argument 0"}
!447 = distinct !{!447, !"BrotliWriteBits"}
!448 = !{!449}
!449 = distinct !{!449, !447, !"BrotliWriteBits: argument 1"}
!450 = !{!451}
!451 = distinct !{!451, !452, !"BrotliWriteBits: argument 0"}
!452 = distinct !{!452, !"BrotliWriteBits"}
!453 = !{!454}
!454 = distinct !{!454, !452, !"BrotliWriteBits: argument 1"}
!455 = !{!456}
!456 = distinct !{!456, !457, !"BrotliWriteBits: argument 0"}
!457 = distinct !{!457, !"BrotliWriteBits"}
!458 = !{!459}
!459 = distinct !{!459, !457, !"BrotliWriteBits: argument 1"}
!460 = !{!461}
!461 = distinct !{!461, !462, !"BrotliWriteBits: argument 0"}
!462 = distinct !{!462, !"BrotliWriteBits"}
!463 = !{!464}
!464 = distinct !{!464, !462, !"BrotliWriteBits: argument 1"}
!465 = !{!466}
!466 = distinct !{!466, !467, !"BrotliWriteBits: argument 0"}
!467 = distinct !{!467, !"BrotliWriteBits"}
!468 = !{!469}
!469 = distinct !{!469, !467, !"BrotliWriteBits: argument 1"}
!470 = !{!471}
!471 = distinct !{!471, !467, !"BrotliWriteBits: argument 0:It1"}
!472 = !{!473}
!473 = distinct !{!473, !467, !"BrotliWriteBits: argument 1:It1"}
!474 = !{!475}
!475 = distinct !{!475, !476, !"BrotliWriteBits: argument 0"}
!476 = distinct !{!476, !"BrotliWriteBits"}
end_hunk_4
begin_hunk_5_@llvm.vector.reduce.add.v2i64
!1148 = !{!1149}
!1149 = distinct !{!1149, !1150, !"BrotliWriteBits: argument 0"}
!1150 = distinct !{!1150, !"BrotliWriteBits"}
!1151 = !{!1152}
!1152 = distinct !{!1152, !1150, !"BrotliWriteBits: argument 1"}
!1153 = !{!1154}
!1154 = distinct !{!1154, !1155, !"BrotliWriteBits: argument 0"}
!1155 = distinct !{!1155, !"BrotliWriteBits"}
!1156 = !{!1157}
!1157 = distinct !{!1157, !1155, !"BrotliWriteBits: argument 1"}
!1158 = !{!1159}
!1159 = distinct !{!1159, !1160, !"BrotliWriteBits: argument 0"}
!1160 = distinct !{!1160, !"BrotliWriteBits"}
!1161 = !{!1162}
!1162 = distinct !{!1162, !1160, !"BrotliWriteBits: argument 1"}
!1163 = !{!1164}
!1164 = distinct !{!1164, !1165, !"BrotliWriteBits: argument 0"}
!1165 = distinct !{!1165, !"BrotliWriteBits"}
!1166 = !{!1167}
!1167 = distinct !{!1167, !1165, !"BrotliWriteBits: argument 1"}
!1168 = !{!1169}
!1169 = distinct !{!1169, !1170, !"BrotliWriteBits: argument 0"}
!1170 = distinct !{!1170, !"BrotliWriteBits"}
!1171 = !{!1172}
!1172 = distinct !{!1172, !1170, !"BrotliWriteBits: argument 1"}
!1173 = !{!1174}
!1174 = distinct !{!1174, !1175, !"BrotliWriteBits: argument 0"}
!1175 = distinct !{!1175, !"BrotliWriteBits"}
!1176 = !{!1177}
!1177 = distinct !{!1177, !1175, !"BrotliWriteBits: argument 1"}
!1178 = !{!1179}
!1179 = distinct !{!1179, !1180, !"BrotliWriteBits: argument 0"}
!1180 = distinct !{!1180, !"BrotliWriteBits"}
!1181 = !{!1182}
!1182 = distinct !{!1182, !1180, !"BrotliWriteBits: argument 1"}
!1183 = !{!1184}
!1184 = distinct !{!1184, !1185, !"BrotliWriteBits: argument 0"}
!1185 = distinct !{!1185, !"BrotliWriteBits"}
!1186 = !{!1187}
!1187 = distinct !{!1187, !1185, !"BrotliWriteBits: argument 1"}
!1188 = !{!1189}
!1189 = distinct !{!1189, !1190, !"BrotliWriteBits: argument 0"}
!1190 = distinct !{!1190, !"BrotliWriteBits"}
!1191 = !{!1192}
!1192 = distinct !{!1192, !1190, !"BrotliWriteBits: argument 1"}
!1193 = !{!1194}
!1194 = distinct !{!1194, !1195, !"BrotliWriteBits: argument 0"}
!1195 = distinct !{!1195, !"BrotliWriteBits"}
!1196 = !{!1197}
!1197 = distinct !{!1197, !1195, !"BrotliWriteBits: argument 1"}
!1198 = !{!1199}
!1199 = distinct !{!1199, !1200, !"BrotliWriteBits: argument 0"}
!1200 = distinct !{!1200, !"BrotliWriteBits"}
!1201 = !{!1202}
!1202 = distinct !{!1202, !1200, !"BrotliWriteBits: argument 1"}
!1203 = !{!1204}
!1204 = distinct !{!1204, !1205, !"BrotliWriteBits: argument 0"}
!1205 = distinct !{!1205, !"BrotliWriteBits"}
!1206 = !{!1207}
!1207 = distinct !{!1207, !1205, !"BrotliWriteBits: argument 1"}
!1208 = !{!1209}
!1209 = distinct !{!1209, !1210, !"BrotliWriteBits: argument 0"}
!1210 = distinct !{!1210, !"BrotliWriteBits"}
!1211 = !{!1212}
!1212 = distinct !{!1212, !1210, !"BrotliWriteBits: argument 1"}
!1213 = !{!1214}
!1214 = distinct !{!1214, !1215, !"BrotliWriteBits: argument 0"}
!1215 = distinct !{!1215, !"BrotliWriteBits"}
!1216 = !{!1217}
!1217 = distinct !{!1217, !1215, !"BrotliWriteBits: argument 1"}
!1218 = !{!1219}
!1219 = distinct !{!1219, !1220, !"BrotliWriteBits: argument 0"}
!1220 = distinct !{!1220, !"BrotliWriteBits"}
!1221 = !{!1222}
!1222 = distinct !{!1222, !1220, !"BrotliWriteBits: argument 1"}
!1223 = !{!1224}
!1224 = distinct !{!1224, !1225, !"BrotliWriteBits: argument 0"}
!1225 = distinct !{!1225, !"BrotliWriteBits"}
!1226 = !{!1227}
!1227 = distinct !{!1227, !1225, !"BrotliWriteBits: argument 1"}
!1228 = !{!1229}
!1229 = distinct !{!1229, !1230, !"BrotliWriteBits: argument 0"}
!1230 = distinct !{!1230, !"BrotliWriteBits"}
!1231 = !{!1232}
!1232 = distinct !{!1232, !1230, !"BrotliWriteBits: argument 1"}
!1233 = !{!1234}
!1234 = distinct !{!1234, !1235, !"BrotliWriteBits: argument 0"}
!1235 = distinct !{!1235, !"BrotliWriteBits"}
!1236 = !{!1237}
!1237 = distinct !{!1237, !1235, !"BrotliWriteBits: argument 1"}
!1238 = !{!1239}
!1239 = distinct !{!1239, !1240, !"BrotliWriteBits: argument 0"}
!1240 = distinct !{!1240, !"BrotliWriteBits"}
!1241 = !{!1242}
!1242 = distinct !{!1242, !1240, !"BrotliWriteBits: argument 1"}
!1243 = !{!1244}
!1244 = distinct !{!1244, !1245, !"BrotliWriteBits: argument 0"}
!1245 = distinct !{!1245, !"BrotliWriteBits"}
!1246 = !{!1247}
!1247 = distinct !{!1247, !1245, !"BrotliWriteBits: argument 1"}
!1248 = !{!1249}
!1249 = distinct !{!1249, !1250, !"BrotliWriteBits: argument 0"}
!1250 = distinct !{!1250, !"BrotliWriteBits"}
!1251 = !{!1252}
!1252 = distinct !{!1252, !1250, !"BrotliWriteBits: argument 1"}
!1253 = !{!1254}
!1254 = distinct !{!1254, !1255, !"BrotliWriteBits: argument 0"}
!1255 = distinct !{!1255, !"BrotliWriteBits"}
!1256 = !{!1257}
!1257 = distinct !{!1257, !1255, !"BrotliWriteBits: argument 1"}
!1258 = !{!1259}
!1259 = distinct !{!1259, !1260, !"BrotliWriteBits: argument 0"}
!1260 = distinct !{!1260, !"BrotliWriteBits"}
!1261 = !{!1262}
!1262 = distinct !{!1262, !1260, !"BrotliWriteBits: argument 1"}
!1263 = !{!1264}
!1264 = distinct !{!1264, !1265, !"BrotliWriteBits: argument 0"}
!1265 = distinct !{!1265, !"BrotliWriteBits"}
!1266 = !{!1267}
!1267 = distinct !{!1267, !1265, !"BrotliWriteBits: argument 1"}
!1268 = !{!1269}
!1269 = distinct !{!1269, !1265, !"BrotliWriteBits: argument 0:It1"}
!1270 = !{!1271}
!1271 = distinct !{!1271, !1265, !"BrotliWriteBits: argument 1:It1"}
!1272 = !{!1273}
!1273 = distinct !{!1273, !1274, !"BrotliWriteBits: argument 0"}
!1274 = distinct !{!1274, !"BrotliWriteBits"}
!1275 = !{!1276}
!1276 = distinct !{!1276, !1274, !"BrotliWriteBits: argument 1"}
!1277 = !{!1278}
!1278 = distinct !{!1278, !1279, !"BrotliWriteBits: argument 1"}
!1279 = distinct !{!1279, !"BrotliWriteBits"}
!1280 = !{!1281}
!1281 = distinct !{!1281, !1279, !"BrotliWriteBits: argument 0"}
!1282 = !{!1283}
!1283 = distinct !{!1283, !1284, !"BrotliWriteBits: argument 0"}
!1284 = distinct !{!1284, !"BrotliWriteBits"}
!1285 = !{!1286}
!1286 = distinct !{!1286, !1284, !"BrotliWriteBits: argument 1"}
!1287 = !{!1288}
!1288 = distinct !{!1288, !1289, !"BrotliWriteBits: argument 1"}
!1289 = distinct !{!1289, !"BrotliWriteBits"}
!1290 = !{!1291}
!1291 = distinct !{!1291, !1289, !"BrotliWriteBits: argument 0"}
!1292 = !{!1293}
!1293 = distinct !{!1293, !1294, !"BrotliWriteBits: argument 0"}
!1294 = distinct !{!1294, !"BrotliWriteBits"}
!1295 = !{!1296}
!1296 = distinct !{!1296, !1294, !"BrotliWriteBits: argument 1"}
!1297 = !{!1298}
!1298 = distinct !{!1298, !1294, !"BrotliWriteBits: argument 0:It1"}
!1299 = !{!1300}
!1300 = distinct !{!1300, !1294, !"BrotliWriteBits: argument 1:It1"}
!1301 = !{!1302}
!1302 = distinct !{!1302, !1303, !"BrotliWriteBits: argument 0"}
!1303 = distinct !{!1303, !"BrotliWriteBits"}
!1304 = !{!1305}
!1305 = distinct !{!1305, !1303, !"BrotliWriteBits: argument 1"}
!1306 = !{!1307}
!1307 = distinct !{!1307, !1308, !"BrotliWriteBits: argument 0"}
!1308 = distinct !{!1308, !"BrotliWriteBits"}
!1309 = !{!1310}
!1310 = distinct !{!1310, !1308, !"BrotliWriteBits: argument 1"}
!1311 = !{!1312}
!1312 = distinct !{!1312, !1313, !"BrotliWriteBits: argument 0"}
!1313 = distinct !{!1313, !"BrotliWriteBits"}
!1314 = !{!1315}
!1315 = distinct !{!1315, !1313, !"BrotliWriteBits: argument 1"}
!1316 = !{!1317}
!1317 = distinct !{!1317, !1318, !"BrotliWriteBits: argument 0"}
!1318 = distinct !{!1318, !"BrotliWriteBits"}
!1319 = !{!1320}
!1320 = distinct !{!1320, !1318, !"BrotliWriteBits: argument 1"}
!1321 = !{!1322}
!1322 = distinct !{!1322, !1323, !"BrotliWriteBits: argument 0"}
!1323 = distinct !{!1323, !"BrotliWriteBits"}
!1324 = !{!1325}
!1325 = distinct !{!1325, !1323, !"BrotliWriteBits: argument 1"}
!1326 = !{!1327}
!1327 = distinct !{!1327, !1328, !"BrotliWriteBits: argument 0"}
!1328 = distinct !{!1328, !"BrotliWriteBits"}
!1329 = !{!1330}
!1330 = distinct !{!1330, !1328, !"BrotliWriteBits: argument 1"}
!1331 = !{!1332}
!1332 = distinct !{!1332, !1333, !"BrotliWriteBits: argument 0"}
!1333 = distinct !{!1333, !"BrotliWriteBits"}
!1334 = !{!1335}
!1335 = distinct !{!1335, !1333, !"BrotliWriteBits: argument 1"}
!1336 = !{!1337}
!1337 = distinct !{!1337, !1338, !"BrotliWriteBits: argument 0"}
!1338 = distinct !{!1338, !"BrotliWriteBits"}
!1339 = !{!1340}
!1340 = distinct !{!1340, !1338, !"BrotliWriteBits: argument 1"}
!1341 = !{!1342}
!1342 = distinct !{!1342, !1343, !"BrotliWriteBits: argument 1"}
!1343 = distinct !{!1343, !"BrotliWriteBits"}
!1344 = !{!1345}
!1345 = distinct !{!1345, !1343, !"BrotliWriteBits: argument 0"}
!1346 = distinct !{!1346, !1347}
!1347 = !{!"llvm.loop.unroll.disable"}
!1348 = distinct !{!1348, !71, !1349, !1350}
!1349 = !{!"llvm.loop.isvectorized", i32 1}
!1350 = !{!"llvm.loop.unroll.runtime.disable"}
!1351 = distinct !{!1351, !71}
!1352 = distinct !{!1352, !71}
!1353 = distinct !{!1353, !71, !1349, !1350}
!1354 = distinct !{!1354, !71}
end_hunk_5
