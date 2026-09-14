Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/compress_fragment?download=true
inline.NumInlined: 19
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 15
begin_hunk_0_@BrotliCompressFragmentFast:bb.a
  %notmask.i.i = shl nsw i8 -1, %i.k
  %i.l = xor i8 %notmask.i.i, -1
  %i.m = lshr i64 %i.a, 3
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 %i.m ; 4 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !18
  %i.p = and i8 %i.o, %i.l
  store i8 %i.p, ptr %i.n, align 1, !tbaa !18
  store i64 %i.a, ptr %6, align 8, !tbaa !17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %i.q = load i8, ptr %i.n, align 1, !tbaa !18, !alias.scope !49, !noalias !48
  %i.r = zext i8 %i.q to i64
  store i64 %i.r, ptr %i.n, align 1, !noalias !48
  %i.s = add i64 %i.a, 1                          ; 3 uses
  store i64 %i.s, ptr %6, align 8, !tbaa !17, !alias.scope !48, !noalias !49
  %i.t = icmp ult i64 %2, 65537
  %i.u = icmp ult i64 %2, 1048577
  %spec.select.i.i = select i1 %i.u, i64 5, i64 6
  %.0.i.i = select i1 %i.t, i64 4, i64 %spec.select.i.i ; 2 uses
  %i.v = add nsw i64 %.0.i.i, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.w = lshr i64 %i.s, 3
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 %i.w ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !18, !alias.scope !51, !noalias !50
  %i.z = zext i8 %i.y to i64
  %i.aa = and i64 %i.s, 7
  %i.ab = shl nuw nsw i64 %i.v, %i.aa
  %i.ac = or i64 %i.ab, %i.z
  store i64 %i.ac, ptr %i.x, align 1, !noalias !50
  %i.ad = add i64 %i.a, 3                         ; 4 uses
  store i64 %i.ad, ptr %6, align 8, !tbaa !17, !alias.scope !50, !noalias !51
  %i.ae = shl nuw nsw i64 %.0.i.i, 2
  %i.af = add i64 %2, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.ag = lshr i64 %i.ad, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 %i.ag ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !18, !alias.scope !53, !noalias !52
  %i.aj = zext i8 %i.ai to i64
  %i.ak = and i64 %i.ad, 7
  %i.al = shl i64 %i.af, %i.ak
  %i.am = or i64 %i.al, %i.aj
  store i64 %i.am, ptr %i.ah, align 1, !noalias !52
  %i.an = add i64 %i.ad, %i.ae                    ; 4 uses
  store i64 %i.an, ptr %6, align 8, !tbaa !17, !alias.scope !52, !noalias !53
  %i.ao = lshr i64 %i.an, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 %i.ao ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !18, !alias.scope !54, !noalias !55
  %i.ar = zext i8 %i.aq to i64
  %i.as = and i64 %i.an, 7
  %i.at = shl nuw nsw i64 1, %i.as
  %i.au = or i64 %i.at, %i.ar
  store i64 %i.au, ptr %i.ap, align 1, !noalias !55
  %i.av = add i64 %i.an, 8
  %i.aw = and i64 %i.av, 4294967288               ; 2 uses
  store i64 %i.aw, ptr %6, align 8, !tbaa !17
  %i.ax = lshr exact i64 %i.aw, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 %i.ax
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ay, ptr align 1 %1, i64 %2, i1 false)
  %i.az = load i64, ptr %6, align 8, !tbaa !17
  %i.ba = add i64 %i.az, %i.g                     ; 2 uses
  store i64 %i.ba, ptr %6, align 8, !tbaa !17
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 %i.bb
  store i8 0, ptr %i.bc, align 1, !tbaa !18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = load i64, ptr %6, align 8, !tbaa !17, !alias.scope !56, !noalias !57
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.j
  %.sink75 = phi i64 [ %i.bd, %bb.j ], [ %i.a, %bb.a ] ; 4 uses
  %i.be = lshr i64 %.sink75, 3
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 %i.be ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !18, !noalias !19
  %i.bh = zext i8 %i.bg to i64
  %i.bi = and i64 %.sink75, 7
  %i.bj = shl nuw nsw i64 1, %i.bi
  %i.bk = or i64 %i.bj, %i.bh
  store i64 %i.bk, ptr %i.bf, align 1, !noalias !19
  %i.bl = add i64 %.sink75, 1                     ; 3 uses
  store i64 %i.bl, ptr %6, align 8, !tbaa !17, !noalias !19
  %i.bm = lshr i64 %i.bl, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 %i.bm ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !18, !noalias !19
  %i.bp = zext i8 %i.bo to i64
  %i.bq = and i64 %i.bl, 7
  %i.br = shl nuw nsw i64 1, %i.bq
  %i.bs = or i64 %i.br, %i.bp
  store i64 %i.bs, ptr %i.bn, align 1, !noalias !19
  %i.bt = add i64 %.sink75, 9
  %i.bu = and i64 %i.bt, 4294967288
  store i64 %i.bu, ptr %6, align 8, !tbaa !17
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.i
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @BrotliCompressFragmentFastImpl9(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 1, 0) %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 11 uses
  %i.e = tail call i64 @llvm.umin.i64(i64 range(i64 1, 0) %2, i64 98304) ; 3 uses
  %i.f = load i64, ptr %5, align 8, !tbaa !17     ; 3 uses
  %i.g = add i64 %i.f, 3                          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %i.h = lshr i64 %i.f, 3
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 %i.h ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !18, !alias.scope !248, !noalias !247
  %i.k = zext i8 %i.j to i64
  store i64 %i.k, ptr %i.i, align 1, !noalias !247
  %i.l = add i64 %i.f, 1                          ; 3 uses
  store i64 %i.l, ptr %5, align 8, !tbaa !17, !alias.scope !247, !noalias !248
  %i.m = icmp ult i64 %2, 65537
  %.0.i52 = select i1 %i.m, i64 4, i64 5          ; 2 uses
  %i.n = add nsw i64 %.0.i52, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %i.o = lshr i64 %i.l, 3
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 %i.o ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !18, !alias.scope !250, !noalias !249
  %i.r = zext i8 %i.q to i64
  %i.s = and i64 %i.l, 7
  %i.t = shl nuw nsw i64 %i.n, %i.s
  %i.u = or i64 %i.t, %i.r
  store i64 %i.u, ptr %i.p, align 1, !noalias !249
  store i64 %i.g, ptr %5, align 8, !tbaa !17, !alias.scope !249, !noalias !250
  %i.v = shl nuw nsw i64 %.0.i52, 2
  %i.w = add nsw i64 %i.e, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.x = lshr i64 %i.g, 3
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !18, !alias.scope !252, !noalias !251
  %i.aa = zext i8 %i.z to i64
  %i.ab = and i64 %i.g, 7
  %i.ac = shl nuw nsw i64 %i.w, %i.ab
  %i.ad = or i64 %i.ac, %i.aa
  store i64 %i.ad, ptr %i.y, align 1, !noalias !251
  %i.ae = add i64 %i.g, %i.v                      ; 4 uses
  store i64 %i.ae, ptr %5, align 8, !tbaa !17, !alias.scope !251, !noalias !252
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  %i.af = lshr i64 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 %i.af ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !18, !alias.scope !254, !noalias !253
  %i.ai = zext i8 %i.ah to i64
  store i64 %i.ai, ptr %i.ag, align 1, !noalias !253
  %i.aj = add i64 %i.ae, 1                        ; 2 uses
  store i64 %i.aj, ptr %5, align 8, !tbaa !17, !alias.scope !253, !noalias !254
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %i.ak = lshr i64 %i.aj, 3
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 %i.ak ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !18, !alias.scope !256, !noalias !255
  %i.an = zext i8 %i.am to i64
  store i64 %i.an, ptr %i.al, align 1, !noalias !255
  %i.ao = add i64 %i.ae, 14
  store i64 %i.ao, ptr %5, align 8, !tbaa !17, !alias.scope !255, !noalias !256
  %i.ap = tail call fastcc i64 @BuildAndStoreLiteralPrefixCode(ptr noundef %0, ptr noundef %1, i64 noundef %i.e, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2176 ; 4 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !21 ; 2 uses
  %i.as = icmp ugt i64 %i.ar, 7
  %.pre359 = load i64, ptr %5, align 8, !tbaa !17, !noalias !19 ; 2 uses
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1664
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.au = phi i64 [ %.pre359, %.lr.ph ], [ %i.bg, %bb.b ] ; 3 uses
  %.0343.i181 = phi i64 [ 0, %.lr.ph ], [ %i.bh, %bb.b ] ; 2 uses
  %i.av = lshr exact i64 %.0343.i181, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !18
  %i.ay = zext i8 %i.ax to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.az = lshr i64 %i.au, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 %i.az ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !18, !alias.scope !258, !noalias !257
  %i.bc = zext i8 %i.bb to i64
  %i.bd = and i64 %i.au, 7
  %i.be = shl nuw nsw i64 %i.ay, %i.bd
  %i.bf = or i64 %i.be, %i.bc
  store i64 %i.bf, ptr %i.ba, align 1, !noalias !257
  %i.bg = add i64 %i.au, 8                        ; 3 uses
  store i64 %i.bg, ptr %5, align 8, !tbaa !17, !alias.scope !257, !noalias !258
  %i.bh = add nuw i64 %.0343.i181, 8              ; 2 uses
  %i.bi = or disjoint i64 %i.bh, 7
  %i.bj = load i64, ptr %i.aq, align 8, !tbaa !21 ; 2 uses
  %i.bk = icmp ult i64 %i.bi, %i.bj
  br i1 %i.bk, label %bb.b, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.bl = phi i64 [ %.pre359, %bb.a ], [ %i.bg, %bb.b ] ; 3 uses
  %.lcssa179 = phi i64 [ %i.ar, %bb.a ], [ %i.bj, %bb.b ] ; 2 uses
  %i.bm = and i64 %.lcssa179, 7
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 3 uses
  %i.bo = lshr i64 %.lcssa179, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !18
  %i.br = zext i8 %i.bq to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  %i.bs = lshr i64 %i.bl, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !18, !alias.scope !260, !noalias !259
  %i.bv = zext i8 %i.bu to i64
  %i.bw = and i64 %i.bl, 7
  %i.bx = shl nuw nsw i64 %i.br, %i.bw
  %i.by = or i64 %i.bx, %i.bv
  store i64 %i.by, ptr %i.bt, align 1, !noalias !259
  %i.bz = add i64 %i.bl, %i.bm
  store i64 %i.bz, ptr %5, align 8, !tbaa !17, !alias.scope !259, !noalias !260
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
  %.0360.i.ph = phi ptr [ %.8.i, %bb.bo ], [ %1, %._crit_edge ] ; 5 uses
  %.0358.i.ph = phi i64 [ %i.avv, %bb.bo ], [ %i.e, %._crit_edge ] ; 2 uses
  %.0356.i.ph = phi i64 [ %i.avx, %bb.bo ], [ %i.g, %._crit_edge ] ; 3 uses
  %.0355.i.ph = phi i64 [ %i.axg, %bb.bo ], [ %i.ap, %._crit_edge ]
  %.0318.i.ph = phi i64 [ %.5323.i, %bb.bo ], [ %2, %._crit_edge ]
  %i.cr = ptrtoint ptr %.0360.i.ph to i64         ; 2 uses
  %i.cs = icmp ult i64 %.0355.i.ph, 981           ; 2 uses
  br label %UpdateBits.exit

UpdateBits.exit.loopexit:                         ; preds = %bb.ax
  br label %UpdateBits.exit, !llvm.loop !1

UpdateBits.exit:                                  ; preds = %UpdateBits.exit.loopexit, %UpdateBits.exit.outer
  %.0360.i = phi ptr [ %.0360.i.ph, %UpdateBits.exit.outer ], [ %.7.i, %UpdateBits.exit.loopexit ] ; 2 uses
  %.0358.i = phi i64 [ %.0358.i.ph, %UpdateBits.exit.outer ], [ %i.aik, %UpdateBits.exit.loopexit ] ; 6 uses
  %.0357.i = phi i64 [ %.0358.i.ph, %UpdateBits.exit.outer ], [ %i.ail, %UpdateBits.exit.loopexit ]
  %.0318.i = phi i64 [ %.0318.i.ph, %UpdateBits.exit.outer ], [ %i.aij, %UpdateBits.exit.loopexit ] ; 3 uses
  %.0.i = phi ptr [ %.0360.i.ph, %UpdateBits.exit.outer ], [ %i.ct, %UpdateBits.exit.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.c, ptr noundef nonnull align 16 dereferenceable(512) @kCmdHistoSeed, i64 512, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i, i64 %.0358.i ; 14 uses
  %i.cu = icmp samesign ugt i64 %.0358.i, 15
  br i1 %i.cu, label %bb.c, label %.thread103, !prof !23

bb.c:                                             ; preds = %UpdateBits.exit
  %i.cv = add nsw i64 %.0358.i, -5
  %i.cw = add i64 %.0318.i, -16
  %i.cx = tail call i64 @llvm.umin.i64(i64 %i.cv, i64 range(i64 -15, -16) %i.cw)
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.cx ; 6 uses
  %i.cz = ptrtoint ptr %i.ct to i64
  %i.da = add i64 %i.cz, -5                       ; 2 uses
  br label %.thread76

.thread76:                                        ; preds = %.thread76.backedge, %bb.c
  %.1361.i = phi ptr [ %.0360.i, %bb.c ], [ %.0.i.pn.be, %.thread76.backedge ] ; 8 uses
  %.0.i.pn = phi ptr [ %.0.i, %bb.c ], [ %.0.i.pn.be, %.thread76.backedge ]
  %.0344.i = phi i32 [ -1, %bb.c ], [ %.0344.i.be, %.thread76.backedge ]
  %.0344.i.fr = freeze i32 %.0344.i               ; 4 uses
  %.0350.i = getelementptr inbounds nuw i8, ptr %.0.i.pn, i64 1 ; 3 uses
  %.0338.i.in.in.in = load i64, ptr %.0350.i, align 1
  %.0338.i.in.in = mul i64 %.0338.i.in.in.in, 8503243848024064
  %.0338.i.in = lshr i64 %.0338.i.in.in, 55       ; 2 uses
  %i.db = sext i32 %.0344.i.fr to i64
  %i.dc = sub nsw i64 0, %i.db
  %i.dd = icmp sgt i32 %.0344.i.fr, 0
  br i1 %i.dd, label %.split.us, label %.split, !prof !24

.split.us:                                        ; preds = %.thread76, %.loopexit.split.us206
  %.1339.i.us = phi i64 [ %i.dl, %.loopexit.split.us206 ], [ %.0338.i.in, %.thread76 ]
  %.0336.i.us = phi i32 [ %i.dj, %.loopexit.split.us206 ], [ 32, %.thread76 ] ; 2 uses
  %.0334.i.us = phi ptr [ %i.di, %.loopexit.split.us206 ], [ %.0350.i, %.thread76 ] ; 2 uses
  %i.de = lshr i32 %.0336.i.us, 5
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %.0334.i.us, i64 %i.df ; 2 uses
  %i.dh = icmp ugt ptr %i.dg, %i.cy
  br i1 %i.dh, label %.thread103, label %.lr.ph185.us, !prof !25

.lr.ph185.us:                                     ; preds = %.split.us, %.critedge.backedge.us205
  %i.di = phi ptr [ %i.eh, %.critedge.backedge.us205 ], [ %i.dg, %.split.us ] ; 4 uses
  %.in275 = phi i32 [ %i.dj, %.critedge.backedge.us205 ], [ %.0336.i.us, %.split.us ]
  %.1335.i183.us195 = phi ptr [ %i.di, %.critedge.backedge.us205 ], [ %.0334.i.us, %.split.us ] ; 8 uses
  %.2340.i182.us196 = phi i64 [ %i.dl, %.critedge.backedge.us205 ], [ %.1339.i.us, %.split.us ] ; 2 uses
  %i.dj = add i32 %.in275, 1                      ; 3 uses
  %.0.copyload.i41.us197 = load i64, ptr %i.di, align 1
  %i.dk = mul i64 %.0.copyload.i41.us197, 8503243848024064
  %i.dl = lshr i64 %i.dk, 55                      ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %.1335.i183.us195, i64 %i.dc ; 3 uses
  %.0.copyload.i47.us198 = load i32, ptr %.1335.i183.us195, align 1
  %.0.copyload.i46.us199 = load i32, ptr %i.dm, align 1
  %i.dn = icmp eq i32 %.0.copyload.i47.us198, %.0.copyload.i46.us199
  br i1 %i.dn, label %IsMatch.exit7.us200, label %IsMatch.exit7.thread.us201

IsMatch.exit7.us200:                              ; preds = %.lr.ph185.us
  %i.do = getelementptr inbounds nuw i8, ptr %.1335.i183.us195, i64 4
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !18
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !18
  %i.ds = icmp eq i8 %i.dp, %i.dr
  br i1 %i.ds, label %bb.d, label %IsMatch.exit7.thread.us201, !prof !24

IsMatch.exit7.thread.us201:                       ; preds = %IsMatch.exit7.us200, %.lr.ph185.us
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.2340.i182.us196 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !26
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds i8, ptr %1, i64 %i.dv ; 3 uses
  %i.dx = ptrtoint ptr %.1335.i183.us195 to i64   ; 2 uses
  %i.dy = sub i64 %i.dx, %i.ca
  %i.dz = trunc i64 %i.dy to i32
  store i32 %i.dz, ptr %i.dt, align 4, !tbaa !26
  %.0.copyload.i51.us202 = load i32, ptr %.1335.i183.us195, align 1
  %.0.copyload.i50.us203 = load i32, ptr %i.dw, align 1
  %i.ea = icmp eq i32 %.0.copyload.i51.us202, %.0.copyload.i50.us203
  br i1 %i.ea, label %IsMatch.exit.us204, label %.critedge.backedge.us205

IsMatch.exit.us204:                               ; preds = %IsMatch.exit7.thread.us201
  %i.eb = getelementptr inbounds nuw i8, ptr %.1335.i183.us195, i64 4
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !18
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !18
  %.not276 = icmp eq i8 %i.ec, %i.ee
  br i1 %.not276, label %.loopexit.split.us206, label %.critedge.backedge.us205, !prof !27

.critedge.backedge.us205:                         ; preds = %IsMatch.exit.us204, %IsMatch.exit7.thread.us201
  %i.ef = lshr i32 %i.dj, 5
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.eg ; 2 uses
  %i.ei = icmp ugt ptr %i.eh, %i.cy
  br i1 %i.ei, label %.thread103, label %.lr.ph185.us, !prof !28, !llvm.loop !2

bb.d:                                             ; preds = %IsMatch.exit7.us200
  %i.ej = ptrtoint ptr %.1335.i183.us195 to i64   ; 2 uses
  %i.ek = sub i64 %i.ej, %i.ca
  %i.el = trunc i64 %i.ek to i32
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.2340.i182.us196
  store i32 %i.el, ptr %i.em, align 4, !tbaa !26
  br label %.loopexit.split.us206

.loopexit.split.us206:                            ; preds = %IsMatch.exit.us204, %bb.d
  %.pre-phi = phi i64 [ %i.ej, %bb.d ], [ %i.dx, %IsMatch.exit.us204 ] ; 2 uses
  %.2330.i69.us = phi ptr [ %i.dm, %bb.d ], [ %i.dw, %IsMatch.exit.us204 ] ; 2 uses
  %i.en = ptrtoint ptr %.2330.i69.us to i64
  %i.eo = sub i64 %.pre-phi, %i.en                ; 2 uses
  %i.ep = icmp sgt i64 %i.eo, 262128
  br i1 %i.ep, label %.split.us, label %.split216.us

.split:                                           ; preds = %.thread76, %.loopexit.split.us
  %.1339.i = phi i64 [ %i.ex, %.loopexit.split.us ], [ %.0338.i.in, %.thread76 ]
  %.0336.i = phi i32 [ %i.ev, %.loopexit.split.us ], [ 32, %.thread76 ] ; 2 uses
  %.0334.i = phi ptr [ %i.eu, %.loopexit.split.us ], [ %.0350.i, %.thread76 ] ; 2 uses
  %i.eq = lshr i32 %.0336.i, 5
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %.0334.i, i64 %i.er ; 2 uses
  %i.et = icmp ugt ptr %i.es, %i.cy
  br i1 %i.et, label %.thread103, label %.lr.ph185, !prof !25

.lr.ph185:                                        ; preds = %.split, %.critedge.backedge.us
  %i.eu = phi ptr [ %i.fm, %.critedge.backedge.us ], [ %i.es, %.split ] ; 4 uses
  %.in = phi i32 [ %i.ev, %.critedge.backedge.us ], [ %.0336.i, %.split ]
  %.1335.i183.us = phi ptr [ %i.eu, %.critedge.backedge.us ], [ %.0334.i, %.split ] ; 4 uses
  %.2340.i182.us = phi i64 [ %i.ex, %.critedge.backedge.us ], [ %.1339.i, %.split ]
  %i.ev = add i32 %.in, 1                         ; 3 uses
  %.0.copyload.i41.us = load i64, ptr %i.eu, align 1
  %i.ew = mul i64 %.0.copyload.i41.us, 8503243848024064
  %i.ex = lshr i64 %i.ew, 55                      ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.2340.i182.us ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !26
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds i8, ptr %1, i64 %i.fa ; 4 uses
  %i.fc = ptrtoint ptr %.1335.i183.us to i64      ; 3 uses
  %i.fd = sub i64 %i.fc, %i.ca
  %i.fe = trunc i64 %i.fd to i32
  store i32 %i.fe, ptr %i.ey, align 4, !tbaa !26
  %.0.copyload.i51.us = load i32, ptr %.1335.i183.us, align 1
  %.0.copyload.i50.us = load i32, ptr %i.fb, align 1
  %i.ff = icmp eq i32 %.0.copyload.i51.us, %.0.copyload.i50.us
end_hunk_0
begin_hunk_1_@BrotliCompressFragmentFastImpl9:bb.a
  %i.avf = load i8, ptr %i.ave, align 1, !tbaa !18
  %i.avg = zext i8 %i.avf to i64                  ; 2 uses
  %i.avh = getelementptr inbounds nuw i8, ptr %0, i64 %i.avg
  %i.avi = load i8, ptr %i.avh, align 1, !tbaa !18
  %i.avj = zext i8 %i.avi to i64
  %i.avk = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.avg
  %i.avl = load i16, ptr %i.avk, align 2, !tbaa !30
  %i.avm = zext i16 %i.avl to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  %i.avn = lshr i64 %.epil.init638, 3
  %i.avo = getelementptr inbounds nuw i8, ptr %6, i64 %i.avn ; 2 uses
  %i.avp = load i8, ptr %i.avo, align 1, !tbaa !18, !alias.scope !362, !noalias !361
  %i.avq = zext i8 %i.avp to i64
  %i.avr = and i64 %.epil.init638, 7
  %i.avs = shl nuw nsw i64 %i.avm, %i.avr
  %i.avt = or i64 %i.avs, %i.avq
  store i64 %i.avt, ptr %i.avo, align 1, !noalias !361
  %i.avu = add i64 %.epil.init638, %i.avj
  store i64 %i.avu, ptr %5, align 8, !tbaa !17, !alias.scope !361, !noalias !362
  br label %EmitLiterals.exit33

EmitLiterals.exit33:                              ; preds = %.epil.preheader629, %EmitLiterals.exit33.loopexit560.unr-lcssa, %.epil.preheader643, %EmitLiterals.exit33.loopexit.unr-lcssa, %EmitInsertLen.exit27, %.thread76.thread118, %bb.bj, %bb.ay
  %.8.i = phi ptr [ %.us-phi221, %.thread76.thread118 ], [ %i.ct, %bb.ay ], [ %i.ct, %EmitInsertLen.exit27 ], [ %i.ct, %bb.bj ], [ %i.ct, %.epil.preheader643 ], [ %i.ct, %EmitLiterals.exit33.loopexit.unr-lcssa ], [ %i.ct, %EmitLiterals.exit33.loopexit560.unr-lcssa ], [ %i.ct, %.epil.preheader629 ] ; 2 uses
  %.5323.i = phi i64 [ %i.ln, %.thread76.thread118 ], [ %i.aij, %bb.ay ], [ %i.aij, %EmitInsertLen.exit27 ], [ %i.aij, %bb.bj ], [ %i.aij, %.epil.preheader643 ], [ %i.aij, %EmitLiterals.exit33.loopexit.unr-lcssa ], [ %i.aij, %EmitLiterals.exit33.loopexit560.unr-lcssa ], [ %i.aij, %.epil.preheader629 ] ; 4 uses
  %.not393.i = icmp eq i64 %.5323.i, 0
  br i1 %.not393.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %EmitLiterals.exit33
  %i.avv = tail call i64 @llvm.umin.i64(i64 %.5323.i, i64 98304) ; 3 uses
  %i.avw = load i64, ptr %5, align 8, !tbaa !17   ; 3 uses
  %i.avx = add i64 %i.avw, 3                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  %i.avy = lshr i64 %i.avw, 3
  %i.avz = getelementptr inbounds nuw i8, ptr %6, i64 %i.avy ; 2 uses
  %i.awa = load i8, ptr %i.avz, align 1, !tbaa !18, !alias.scope !366, !noalias !365
  %i.awb = zext i8 %i.awa to i64
  store i64 %i.awb, ptr %i.avz, align 1, !noalias !365
  %i.awc = add i64 %i.avw, 1                      ; 3 uses
  store i64 %i.awc, ptr %5, align 8, !tbaa !17, !alias.scope !365, !noalias !366
  %i.awd = icmp ult i64 %.5323.i, 65537
  %.0.i57 = select i1 %i.awd, i64 4, i64 5        ; 2 uses
  %i.awe = add nsw i64 %.0.i57, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  %i.awf = lshr i64 %i.awc, 3
  %i.awg = getelementptr inbounds nuw i8, ptr %6, i64 %i.awf ; 2 uses
  %i.awh = load i8, ptr %i.awg, align 1, !tbaa !18, !alias.scope !368, !noalias !367
  %i.awi = zext i8 %i.awh to i64
  %i.awj = and i64 %i.awc, 7
  %i.awk = shl nuw nsw i64 %i.awe, %i.awj
  %i.awl = or i64 %i.awk, %i.awi
  store i64 %i.awl, ptr %i.awg, align 1, !noalias !367
  store i64 %i.avx, ptr %5, align 8, !tbaa !17, !alias.scope !367, !noalias !368
  %i.awm = shl nuw nsw i64 %.0.i57, 2
  %i.awn = add nsw i64 %i.avv, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  %i.awo = lshr i64 %i.avx, 3
  %i.awp = getelementptr inbounds nuw i8, ptr %6, i64 %i.awo ; 2 uses
  %i.awq = load i8, ptr %i.awp, align 1, !tbaa !18, !alias.scope !370, !noalias !369
  %i.awr = zext i8 %i.awq to i64
  %i.aws = and i64 %i.avx, 7
  %i.awt = shl nuw nsw i64 %i.awn, %i.aws
  %i.awu = or i64 %i.awt, %i.awr
  store i64 %i.awu, ptr %i.awp, align 1, !noalias !369
  %i.awv = add i64 %i.avx, %i.awm                 ; 4 uses
  store i64 %i.awv, ptr %5, align 8, !tbaa !17, !alias.scope !369, !noalias !370
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.aww = lshr i64 %i.awv, 3
  %i.awx = getelementptr inbounds nuw i8, ptr %6, i64 %i.aww ; 2 uses
  %i.awy = load i8, ptr %i.awx, align 1, !tbaa !18, !alias.scope !372, !noalias !371
  %i.awz = zext i8 %i.awy to i64
  store i64 %i.awz, ptr %i.awx, align 1, !noalias !371
  %i.axa = add i64 %i.awv, 1                      ; 2 uses
  store i64 %i.axa, ptr %5, align 8, !tbaa !17, !alias.scope !371, !noalias !372
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  %i.axb = lshr i64 %i.axa, 3
  %i.axc = getelementptr inbounds nuw i8, ptr %6, i64 %i.axb ; 2 uses
  %i.axd = load i8, ptr %i.axc, align 1, !tbaa !18, !alias.scope !374, !noalias !373
  %i.axe = zext i8 %i.axd to i64
  store i64 %i.axe, ptr %i.axc, align 1, !noalias !373
  %i.axf = add i64 %i.awv, 14
  store i64 %i.axf, ptr %5, align 8, !tbaa !17, !alias.scope !373, !noalias !374
  %i.axg = tail call fastcc i64 @BuildAndStoreLiteralPrefixCode(ptr noundef %0, ptr noundef %.8.i, i64 noundef %i.avv, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  tail call fastcc void @BuildAndStoreCommandPrefixCode(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %6)
  br label %UpdateBits.exit.outer

bb.bp:                                            ; preds = %EmitLiterals.exit33
  %.not394.i = icmp eq i32 %3, 0
  br i1 %.not394.i, label %bb.bq, label %BrotliCompressFragmentFastImpl.exit

bb.bq:                                            ; preds = %bb.bp
  store i8 0, ptr %i.bn, align 8, !tbaa !18
  store i64 0, ptr %i.aq, align 8, !tbaa !21
  tail call fastcc void @BuildAndStoreCommandPrefixCode(ptr noundef %0, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.bn)
  br label %BrotliCompressFragmentFastImpl.exit

BrotliCompressFragmentFastImpl.exit:              ; preds = %bb.bp, %bb.bq
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @BrotliCompressFragmentFastImpl11(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 1, 0) %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 11 uses
  %i.e = tail call i64 @llvm.umin.i64(i64 range(i64 1, 0) %2, i64 98304) ; 3 uses
  %i.f = load i64, ptr %5, align 8, !tbaa !17     ; 3 uses
  %i.g = add i64 %i.f, 3                          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !565)
  %i.h = lshr i64 %i.f, 3
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 %i.h ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !18, !alias.scope !565, !noalias !564
  %i.k = zext i8 %i.j to i64
  store i64 %i.k, ptr %i.i, align 1, !noalias !564
  %i.l = add i64 %i.f, 1                          ; 3 uses
  store i64 %i.l, ptr %5, align 8, !tbaa !17, !alias.scope !564, !noalias !565
  %i.m = icmp ult i64 %2, 65537
  %.0.i52 = select i1 %i.m, i64 4, i64 5          ; 2 uses
  %i.n = add nsw i64 %.0.i52, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !566)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !567)
  %i.o = lshr i64 %i.l, 3
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 %i.o ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !18, !alias.scope !567, !noalias !566
  %i.r = zext i8 %i.q to i64
  %i.s = and i64 %i.l, 7
  %i.t = shl nuw nsw i64 %i.n, %i.s
  %i.u = or i64 %i.t, %i.r
  store i64 %i.u, ptr %i.p, align 1, !noalias !566
  store i64 %i.g, ptr %5, align 8, !tbaa !17, !alias.scope !566, !noalias !567
  %i.v = shl nuw nsw i64 %.0.i52, 2
  %i.w = add nsw i64 %i.e, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !568)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !569)
  %i.x = lshr i64 %i.g, 3
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !18, !alias.scope !569, !noalias !568
  %i.aa = zext i8 %i.z to i64
  %i.ab = and i64 %i.g, 7
  %i.ac = shl nuw nsw i64 %i.w, %i.ab
  %i.ad = or i64 %i.ac, %i.aa
  store i64 %i.ad, ptr %i.y, align 1, !noalias !568
  %i.ae = add i64 %i.g, %i.v                      ; 4 uses
  store i64 %i.ae, ptr %5, align 8, !tbaa !17, !alias.scope !568, !noalias !569
  tail call void @llvm.experimental.noalias.scope.decl(metadata !570)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !571)
  %i.af = lshr i64 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 %i.af ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !18, !alias.scope !571, !noalias !570
  %i.ai = zext i8 %i.ah to i64
  store i64 %i.ai, ptr %i.ag, align 1, !noalias !570
  %i.aj = add i64 %i.ae, 1                        ; 2 uses
  store i64 %i.aj, ptr %5, align 8, !tbaa !17, !alias.scope !570, !noalias !571
  tail call void @llvm.experimental.noalias.scope.decl(metadata !572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !573)
  %i.ak = lshr i64 %i.aj, 3
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 %i.ak ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !18, !alias.scope !573, !noalias !572
  %i.an = zext i8 %i.am to i64
  store i64 %i.an, ptr %i.al, align 1, !noalias !572
  %i.ao = add i64 %i.ae, 14
  store i64 %i.ao, ptr %5, align 8, !tbaa !17, !alias.scope !572, !noalias !573
  %i.ap = tail call fastcc i64 @BuildAndStoreLiteralPrefixCode(ptr noundef %0, ptr noundef %1, i64 noundef %i.e, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2176 ; 4 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !21 ; 2 uses
  %i.as = icmp ugt i64 %i.ar, 7
  %.pre359 = load i64, ptr %5, align 8, !tbaa !17, !noalias !19 ; 2 uses
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1664
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.au = phi i64 [ %.pre359, %.lr.ph ], [ %i.bg, %bb.b ] ; 3 uses
  %.0343.i181 = phi i64 [ 0, %.lr.ph ], [ %i.bh, %bb.b ] ; 2 uses
  %i.av = lshr exact i64 %.0343.i181, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !18
  %i.ay = zext i8 %i.ax to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !575)
  %i.az = lshr i64 %i.au, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 %i.az ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !18, !alias.scope !575, !noalias !574
  %i.bc = zext i8 %i.bb to i64
  %i.bd = and i64 %i.au, 7
  %i.be = shl nuw nsw i64 %i.ay, %i.bd
  %i.bf = or i64 %i.be, %i.bc
  store i64 %i.bf, ptr %i.ba, align 1, !noalias !574
  %i.bg = add i64 %i.au, 8                        ; 3 uses
  store i64 %i.bg, ptr %5, align 8, !tbaa !17, !alias.scope !574, !noalias !575
  %i.bh = add nuw i64 %.0343.i181, 8              ; 2 uses
  %i.bi = or disjoint i64 %i.bh, 7
  %i.bj = load i64, ptr %i.aq, align 8, !tbaa !21 ; 2 uses
  %i.bk = icmp ult i64 %i.bi, %i.bj
  br i1 %i.bk, label %bb.b, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.bl = phi i64 [ %.pre359, %bb.a ], [ %i.bg, %bb.b ] ; 3 uses
  %.lcssa179 = phi i64 [ %i.ar, %bb.a ], [ %i.bj, %bb.b ] ; 2 uses
  %i.bm = and i64 %.lcssa179, 7
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 3 uses
  %i.bo = lshr i64 %.lcssa179, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !18
  %i.br = zext i8 %i.bq to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !576)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !577)
  %i.bs = lshr i64 %i.bl, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !18, !alias.scope !577, !noalias !576
  %i.bv = zext i8 %i.bu to i64
  %i.bw = and i64 %i.bl, 7
  %i.bx = shl nuw nsw i64 %i.br, %i.bw
  %i.by = or i64 %i.bx, %i.bv
  store i64 %i.by, ptr %i.bt, align 1, !noalias !576
  %i.bz = add i64 %i.bl, %i.bm
  store i64 %i.bz, ptr %5, align 8, !tbaa !17, !alias.scope !576, !noalias !577
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
  %.0360.i.ph = phi ptr [ %.8.i, %bb.bo ], [ %1, %._crit_edge ] ; 5 uses
  %.0358.i.ph = phi i64 [ %i.avv, %bb.bo ], [ %i.e, %._crit_edge ] ; 2 uses
  %.0356.i.ph = phi i64 [ %i.avx, %bb.bo ], [ %i.g, %._crit_edge ] ; 3 uses
  %.0355.i.ph = phi i64 [ %i.axg, %bb.bo ], [ %i.ap, %._crit_edge ]
  %.0318.i.ph = phi i64 [ %.5323.i, %bb.bo ], [ %2, %._crit_edge ]
  %i.cr = ptrtoint ptr %.0360.i.ph to i64         ; 2 uses
  %i.cs = icmp ult i64 %.0355.i.ph, 981           ; 2 uses
  br label %UpdateBits.exit

UpdateBits.exit.loopexit:                         ; preds = %bb.ax
  br label %UpdateBits.exit, !llvm.loop !1

UpdateBits.exit:                                  ; preds = %UpdateBits.exit.loopexit, %UpdateBits.exit.outer
  %.0360.i = phi ptr [ %.0360.i.ph, %UpdateBits.exit.outer ], [ %.7.i, %UpdateBits.exit.loopexit ] ; 2 uses
  %.0358.i = phi i64 [ %.0358.i.ph, %UpdateBits.exit.outer ], [ %i.aik, %UpdateBits.exit.loopexit ] ; 6 uses
  %.0357.i = phi i64 [ %.0358.i.ph, %UpdateBits.exit.outer ], [ %i.ail, %UpdateBits.exit.loopexit ]
  %.0318.i = phi i64 [ %.0318.i.ph, %UpdateBits.exit.outer ], [ %i.aij, %UpdateBits.exit.loopexit ] ; 3 uses
  %.0.i = phi ptr [ %.0360.i.ph, %UpdateBits.exit.outer ], [ %i.ct, %UpdateBits.exit.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.c, ptr noundef nonnull align 16 dereferenceable(512) @kCmdHistoSeed, i64 512, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i, i64 %.0358.i ; 14 uses
  %i.cu = icmp samesign ugt i64 %.0358.i, 15
  br i1 %i.cu, label %bb.c, label %.thread103, !prof !23

bb.c:                                             ; preds = %UpdateBits.exit
  %i.cv = add nsw i64 %.0358.i, -5
  %i.cw = add i64 %.0318.i, -16
  %i.cx = tail call i64 @llvm.umin.i64(i64 %i.cv, i64 range(i64 -15, -16) %i.cw)
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.cx ; 6 uses
  %i.cz = ptrtoint ptr %i.ct to i64
  %i.da = add i64 %i.cz, -5                       ; 2 uses
  br label %.thread76

.thread76:                                        ; preds = %.thread76.backedge, %bb.c
  %.1361.i = phi ptr [ %.0360.i, %bb.c ], [ %.0.i.pn.be, %.thread76.backedge ] ; 8 uses
  %.0.i.pn = phi ptr [ %.0.i, %bb.c ], [ %.0.i.pn.be, %.thread76.backedge ]
  %.0344.i = phi i32 [ -1, %bb.c ], [ %.0344.i.be, %.thread76.backedge ]
  %.0344.i.fr = freeze i32 %.0344.i               ; 4 uses
  %.0350.i = getelementptr inbounds nuw i8, ptr %.0.i.pn, i64 1 ; 3 uses
  %.0338.i.in.in.in = load i64, ptr %.0350.i, align 1
  %.0338.i.in.in = mul i64 %.0338.i.in.in.in, 8503243848024064
  %.0338.i.in = lshr i64 %.0338.i.in.in, 53       ; 2 uses
  %i.db = sext i32 %.0344.i.fr to i64
  %i.dc = sub nsw i64 0, %i.db
  %i.dd = icmp sgt i32 %.0344.i.fr, 0
  br i1 %i.dd, label %.split.us, label %.split, !prof !24

.split.us:                                        ; preds = %.thread76, %.loopexit.split.us206
  %.1339.i.us = phi i64 [ %i.dl, %.loopexit.split.us206 ], [ %.0338.i.in, %.thread76 ]
  %.0336.i.us = phi i32 [ %i.dj, %.loopexit.split.us206 ], [ 32, %.thread76 ] ; 2 uses
  %.0334.i.us = phi ptr [ %i.di, %.loopexit.split.us206 ], [ %.0350.i, %.thread76 ] ; 2 uses
  %i.de = lshr i32 %.0336.i.us, 5
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %.0334.i.us, i64 %i.df ; 2 uses
  %i.dh = icmp ugt ptr %i.dg, %i.cy
  br i1 %i.dh, label %.thread103, label %.lr.ph185.us, !prof !25

.lr.ph185.us:                                     ; preds = %.split.us, %.critedge.backedge.us205
  %i.di = phi ptr [ %i.eh, %.critedge.backedge.us205 ], [ %i.dg, %.split.us ] ; 4 uses
  %.in275 = phi i32 [ %i.dj, %.critedge.backedge.us205 ], [ %.0336.i.us, %.split.us ]
  %.1335.i183.us195 = phi ptr [ %i.di, %.critedge.backedge.us205 ], [ %.0334.i.us, %.split.us ] ; 8 uses
  %.2340.i182.us196 = phi i64 [ %i.dl, %.critedge.backedge.us205 ], [ %.1339.i.us, %.split.us ] ; 2 uses
  %i.dj = add i32 %.in275, 1                      ; 3 uses
  %.0.copyload.i41.us197 = load i64, ptr %i.di, align 1
  %i.dk = mul i64 %.0.copyload.i41.us197, 8503243848024064
  %i.dl = lshr i64 %i.dk, 53                      ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %.1335.i183.us195, i64 %i.dc ; 3 uses
  %.0.copyload.i47.us198 = load i32, ptr %.1335.i183.us195, align 1
  %.0.copyload.i46.us199 = load i32, ptr %i.dm, align 1
  %i.dn = icmp eq i32 %.0.copyload.i47.us198, %.0.copyload.i46.us199
  br i1 %i.dn, label %IsMatch.exit7.us200, label %IsMatch.exit7.thread.us201

IsMatch.exit7.us200:                              ; preds = %.lr.ph185.us
  %i.do = getelementptr inbounds nuw i8, ptr %.1335.i183.us195, i64 4
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !18
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !18
  %i.ds = icmp eq i8 %i.dp, %i.dr
  br i1 %i.ds, label %bb.d, label %IsMatch.exit7.thread.us201, !prof !24

IsMatch.exit7.thread.us201:                       ; preds = %IsMatch.exit7.us200, %.lr.ph185.us
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.2340.i182.us196 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !26
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds i8, ptr %1, i64 %i.dv ; 3 uses
  %i.dx = ptrtoint ptr %.1335.i183.us195 to i64   ; 2 uses
  %i.dy = sub i64 %i.dx, %i.ca
  %i.dz = trunc i64 %i.dy to i32
  store i32 %i.dz, ptr %i.dt, align 4, !tbaa !26
  %.0.copyload.i51.us202 = load i32, ptr %.1335.i183.us195, align 1
  %.0.copyload.i50.us203 = load i32, ptr %i.dw, align 1
  %i.ea = icmp eq i32 %.0.copyload.i51.us202, %.0.copyload.i50.us203
  br i1 %i.ea, label %IsMatch.exit.us204, label %.critedge.backedge.us205

IsMatch.exit.us204:                               ; preds = %IsMatch.exit7.thread.us201
  %i.eb = getelementptr inbounds nuw i8, ptr %.1335.i183.us195, i64 4
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !18
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !18
  %.not276 = icmp eq i8 %i.ec, %i.ee
  br i1 %.not276, label %.loopexit.split.us206, label %.critedge.backedge.us205, !prof !27

.critedge.backedge.us205:                         ; preds = %IsMatch.exit.us204, %IsMatch.exit7.thread.us201
  %i.ef = lshr i32 %i.dj, 5
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.eg ; 2 uses
  %i.ei = icmp ugt ptr %i.eh, %i.cy
  br i1 %i.ei, label %.thread103, label %.lr.ph185.us, !prof !28, !llvm.loop !2

bb.d:                                             ; preds = %IsMatch.exit7.us200
  %i.ej = ptrtoint ptr %.1335.i183.us195 to i64   ; 2 uses
  %i.ek = sub i64 %i.ej, %i.ca
  %i.el = trunc i64 %i.ek to i32
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.2340.i182.us196
  store i32 %i.el, ptr %i.em, align 4, !tbaa !26
  br label %.loopexit.split.us206

.loopexit.split.us206:                            ; preds = %IsMatch.exit.us204, %bb.d
  %.pre-phi = phi i64 [ %i.ej, %bb.d ], [ %i.dx, %IsMatch.exit.us204 ] ; 2 uses
  %.2330.i69.us = phi ptr [ %i.dm, %bb.d ], [ %i.dw, %IsMatch.exit.us204 ] ; 2 uses
  %i.en = ptrtoint ptr %.2330.i69.us to i64
  %i.eo = sub i64 %.pre-phi, %i.en                ; 2 uses
  %i.ep = icmp sgt i64 %i.eo, 262128
  br i1 %i.ep, label %.split.us, label %.split216.us

.split:                                           ; preds = %.thread76, %.loopexit.split.us
  %.1339.i = phi i64 [ %i.ex, %.loopexit.split.us ], [ %.0338.i.in, %.thread76 ]
  %.0336.i = phi i32 [ %i.ev, %.loopexit.split.us ], [ 32, %.thread76 ] ; 2 uses
  %.0334.i = phi ptr [ %i.eu, %.loopexit.split.us ], [ %.0350.i, %.thread76 ] ; 2 uses
  %i.eq = lshr i32 %.0336.i, 5
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %.0334.i, i64 %i.er ; 2 uses
  %i.et = icmp ugt ptr %i.es, %i.cy
  br i1 %i.et, label %.thread103, label %.lr.ph185, !prof !25

.lr.ph185:                                        ; preds = %.split, %.critedge.backedge.us
  %i.eu = phi ptr [ %i.fm, %.critedge.backedge.us ], [ %i.es, %.split ] ; 4 uses
  %.in = phi i32 [ %i.ev, %.critedge.backedge.us ], [ %.0336.i, %.split ]
  %.1335.i183.us = phi ptr [ %i.eu, %.critedge.backedge.us ], [ %.0334.i, %.split ] ; 4 uses
  %.2340.i182.us = phi i64 [ %i.ex, %.critedge.backedge.us ], [ %.1339.i, %.split ]
  %i.ev = add i32 %.in, 1                         ; 3 uses
  %.0.copyload.i41.us = load i64, ptr %i.eu, align 1
  %i.ew = mul i64 %.0.copyload.i41.us, 8503243848024064
  %i.ex = lshr i64 %i.ew, 53                      ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.2340.i182.us ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !26
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds i8, ptr %1, i64 %i.fa ; 4 uses
  %i.fc = ptrtoint ptr %.1335.i183.us to i64      ; 3 uses
  %i.fd = sub i64 %i.fc, %i.ca
  %i.fe = trunc i64 %i.fd to i32
  store i32 %i.fe, ptr %i.ey, align 4, !tbaa !26
  %.0.copyload.i51.us = load i32, ptr %.1335.i183.us, align 1
  %.0.copyload.i50.us = load i32, ptr %i.fb, align 1
  %i.ff = icmp eq i32 %.0.copyload.i51.us, %.0.copyload.i50.us
end_hunk_1
begin_hunk_2_@BrotliCompressFragmentFastImpl11:bb.a
  %i.avf = load i8, ptr %i.ave, align 1, !tbaa !18
  %i.avg = zext i8 %i.avf to i64                  ; 2 uses
  %i.avh = getelementptr inbounds nuw i8, ptr %0, i64 %i.avg
  %i.avi = load i8, ptr %i.avh, align 1, !tbaa !18
  %i.avj = zext i8 %i.avi to i64
  %i.avk = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.avg
  %i.avl = load i16, ptr %i.avk, align 2, !tbaa !30
  %i.avm = zext i16 %i.avl to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !679)
  %i.avn = lshr i64 %.epil.init638, 3
  %i.avo = getelementptr inbounds nuw i8, ptr %6, i64 %i.avn ; 2 uses
  %i.avp = load i8, ptr %i.avo, align 1, !tbaa !18, !alias.scope !679, !noalias !678
  %i.avq = zext i8 %i.avp to i64
  %i.avr = and i64 %.epil.init638, 7
  %i.avs = shl nuw nsw i64 %i.avm, %i.avr
  %i.avt = or i64 %i.avs, %i.avq
  store i64 %i.avt, ptr %i.avo, align 1, !noalias !678
  %i.avu = add i64 %.epil.init638, %i.avj
  store i64 %i.avu, ptr %5, align 8, !tbaa !17, !alias.scope !678, !noalias !679
  br label %EmitLiterals.exit33

EmitLiterals.exit33:                              ; preds = %.epil.preheader629, %EmitLiterals.exit33.loopexit560.unr-lcssa, %.epil.preheader643, %EmitLiterals.exit33.loopexit.unr-lcssa, %EmitInsertLen.exit27, %.thread76.thread118, %bb.bj, %bb.ay
  %.8.i = phi ptr [ %.us-phi221, %.thread76.thread118 ], [ %i.ct, %bb.ay ], [ %i.ct, %EmitInsertLen.exit27 ], [ %i.ct, %bb.bj ], [ %i.ct, %.epil.preheader643 ], [ %i.ct, %EmitLiterals.exit33.loopexit.unr-lcssa ], [ %i.ct, %EmitLiterals.exit33.loopexit560.unr-lcssa ], [ %i.ct, %.epil.preheader629 ] ; 2 uses
  %.5323.i = phi i64 [ %i.ln, %.thread76.thread118 ], [ %i.aij, %bb.ay ], [ %i.aij, %EmitInsertLen.exit27 ], [ %i.aij, %bb.bj ], [ %i.aij, %.epil.preheader643 ], [ %i.aij, %EmitLiterals.exit33.loopexit.unr-lcssa ], [ %i.aij, %EmitLiterals.exit33.loopexit560.unr-lcssa ], [ %i.aij, %.epil.preheader629 ] ; 4 uses
  %.not393.i = icmp eq i64 %.5323.i, 0
  br i1 %.not393.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %EmitLiterals.exit33
  %i.avv = tail call i64 @llvm.umin.i64(i64 %.5323.i, i64 98304) ; 3 uses
  %i.avw = load i64, ptr %5, align 8, !tbaa !17   ; 3 uses
  %i.avx = add i64 %i.avw, 3                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !682)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !683)
  %i.avy = lshr i64 %i.avw, 3
  %i.avz = getelementptr inbounds nuw i8, ptr %6, i64 %i.avy ; 2 uses
  %i.awa = load i8, ptr %i.avz, align 1, !tbaa !18, !alias.scope !683, !noalias !682
  %i.awb = zext i8 %i.awa to i64
  store i64 %i.awb, ptr %i.avz, align 1, !noalias !682
  %i.awc = add i64 %i.avw, 1                      ; 3 uses
  store i64 %i.awc, ptr %5, align 8, !tbaa !17, !alias.scope !682, !noalias !683
  %i.awd = icmp ult i64 %.5323.i, 65537
  %.0.i57 = select i1 %i.awd, i64 4, i64 5        ; 2 uses
  %i.awe = add nsw i64 %.0.i57, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !684)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !685)
  %i.awf = lshr i64 %i.awc, 3
  %i.awg = getelementptr inbounds nuw i8, ptr %6, i64 %i.awf ; 2 uses
  %i.awh = load i8, ptr %i.awg, align 1, !tbaa !18, !alias.scope !685, !noalias !684
  %i.awi = zext i8 %i.awh to i64
  %i.awj = and i64 %i.awc, 7
  %i.awk = shl nuw nsw i64 %i.awe, %i.awj
  %i.awl = or i64 %i.awk, %i.awi
  store i64 %i.awl, ptr %i.awg, align 1, !noalias !684
  store i64 %i.avx, ptr %5, align 8, !tbaa !17, !alias.scope !684, !noalias !685
  %i.awm = shl nuw nsw i64 %.0.i57, 2
  %i.awn = add nsw i64 %i.avv, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !687)
  %i.awo = lshr i64 %i.avx, 3
  %i.awp = getelementptr inbounds nuw i8, ptr %6, i64 %i.awo ; 2 uses
  %i.awq = load i8, ptr %i.awp, align 1, !tbaa !18, !alias.scope !687, !noalias !686
  %i.awr = zext i8 %i.awq to i64
  %i.aws = and i64 %i.avx, 7
  %i.awt = shl nuw nsw i64 %i.awn, %i.aws
  %i.awu = or i64 %i.awt, %i.awr
  store i64 %i.awu, ptr %i.awp, align 1, !noalias !686
  %i.awv = add i64 %i.avx, %i.awm                 ; 4 uses
  store i64 %i.awv, ptr %5, align 8, !tbaa !17, !alias.scope !686, !noalias !687
  tail call void @llvm.experimental.noalias.scope.decl(metadata !688)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !689)
  %i.aww = lshr i64 %i.awv, 3
  %i.awx = getelementptr inbounds nuw i8, ptr %6, i64 %i.aww ; 2 uses
  %i.awy = load i8, ptr %i.awx, align 1, !tbaa !18, !alias.scope !689, !noalias !688
  %i.awz = zext i8 %i.awy to i64
  store i64 %i.awz, ptr %i.awx, align 1, !noalias !688
  %i.axa = add i64 %i.awv, 1                      ; 2 uses
  store i64 %i.axa, ptr %5, align 8, !tbaa !17, !alias.scope !688, !noalias !689
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !691)
  %i.axb = lshr i64 %i.axa, 3
  %i.axc = getelementptr inbounds nuw i8, ptr %6, i64 %i.axb ; 2 uses
  %i.axd = load i8, ptr %i.axc, align 1, !tbaa !18, !alias.scope !691, !noalias !690
  %i.axe = zext i8 %i.axd to i64
  store i64 %i.axe, ptr %i.axc, align 1, !noalias !690
  %i.axf = add i64 %i.awv, 14
  store i64 %i.axf, ptr %5, align 8, !tbaa !17, !alias.scope !690, !noalias !691
  %i.axg = tail call fastcc i64 @BuildAndStoreLiteralPrefixCode(ptr noundef %0, ptr noundef %.8.i, i64 noundef %i.avv, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  tail call fastcc void @BuildAndStoreCommandPrefixCode(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %6)
  br label %UpdateBits.exit.outer

bb.bp:                                            ; preds = %EmitLiterals.exit33
  %.not394.i = icmp eq i32 %3, 0
  br i1 %.not394.i, label %bb.bq, label %BrotliCompressFragmentFastImpl.exit

bb.bq:                                            ; preds = %bb.bp
  store i8 0, ptr %i.bn, align 8, !tbaa !18
  store i64 0, ptr %i.aq, align 8, !tbaa !21
  tail call fastcc void @BuildAndStoreCommandPrefixCode(ptr noundef %0, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.bn)
  br label %BrotliCompressFragmentFastImpl.exit

BrotliCompressFragmentFastImpl.exit:              ; preds = %bb.bp, %bb.bq
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @BrotliCompressFragmentFastImpl13(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 1, 0) %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 11 uses
  %i.e = tail call i64 @llvm.umin.i64(i64 range(i64 1, 0) %2, i64 98304) ; 3 uses
  %i.f = load i64, ptr %5, align 8, !tbaa !17     ; 3 uses
  %i.g = add i64 %i.f, 3                          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !881)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !882)
  %i.h = lshr i64 %i.f, 3
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 %i.h ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !18, !alias.scope !882, !noalias !881
  %i.k = zext i8 %i.j to i64
  store i64 %i.k, ptr %i.i, align 1, !noalias !881
  %i.l = add i64 %i.f, 1                          ; 3 uses
  store i64 %i.l, ptr %5, align 8, !tbaa !17, !alias.scope !881, !noalias !882
  %i.m = icmp ult i64 %2, 65537
  %.0.i52 = select i1 %i.m, i64 4, i64 5          ; 2 uses
  %i.n = add nsw i64 %.0.i52, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !883)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !884)
  %i.o = lshr i64 %i.l, 3
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 %i.o ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !18, !alias.scope !884, !noalias !883
  %i.r = zext i8 %i.q to i64
  %i.s = and i64 %i.l, 7
  %i.t = shl nuw nsw i64 %i.n, %i.s
  %i.u = or i64 %i.t, %i.r
  store i64 %i.u, ptr %i.p, align 1, !noalias !883
  store i64 %i.g, ptr %5, align 8, !tbaa !17, !alias.scope !883, !noalias !884
  %i.v = shl nuw nsw i64 %.0.i52, 2
  %i.w = add nsw i64 %i.e, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !885)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !886)
  %i.x = lshr i64 %i.g, 3
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !18, !alias.scope !886, !noalias !885
  %i.aa = zext i8 %i.z to i64
  %i.ab = and i64 %i.g, 7
  %i.ac = shl nuw nsw i64 %i.w, %i.ab
  %i.ad = or i64 %i.ac, %i.aa
  store i64 %i.ad, ptr %i.y, align 1, !noalias !885
  %i.ae = add i64 %i.g, %i.v                      ; 4 uses
  store i64 %i.ae, ptr %5, align 8, !tbaa !17, !alias.scope !885, !noalias !886
  tail call void @llvm.experimental.noalias.scope.decl(metadata !887)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !888)
  %i.af = lshr i64 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 %i.af ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !18, !alias.scope !888, !noalias !887
  %i.ai = zext i8 %i.ah to i64
  store i64 %i.ai, ptr %i.ag, align 1, !noalias !887
  %i.aj = add i64 %i.ae, 1                        ; 2 uses
  store i64 %i.aj, ptr %5, align 8, !tbaa !17, !alias.scope !887, !noalias !888
  tail call void @llvm.experimental.noalias.scope.decl(metadata !889)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !890)
  %i.ak = lshr i64 %i.aj, 3
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 %i.ak ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !18, !alias.scope !890, !noalias !889
  %i.an = zext i8 %i.am to i64
  store i64 %i.an, ptr %i.al, align 1, !noalias !889
  %i.ao = add i64 %i.ae, 14
  store i64 %i.ao, ptr %5, align 8, !tbaa !17, !alias.scope !889, !noalias !890
  %i.ap = tail call fastcc i64 @BuildAndStoreLiteralPrefixCode(ptr noundef %0, ptr noundef %1, i64 noundef %i.e, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2176 ; 4 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !21 ; 2 uses
  %i.as = icmp ugt i64 %i.ar, 7
  %.pre359 = load i64, ptr %5, align 8, !tbaa !17, !noalias !19 ; 2 uses
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1664
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.au = phi i64 [ %.pre359, %.lr.ph ], [ %i.bg, %bb.b ] ; 3 uses
  %.0343.i181 = phi i64 [ 0, %.lr.ph ], [ %i.bh, %bb.b ] ; 2 uses
  %i.av = lshr exact i64 %.0343.i181, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !18
  %i.ay = zext i8 %i.ax to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !891)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !892)
  %i.az = lshr i64 %i.au, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 %i.az ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !18, !alias.scope !892, !noalias !891
  %i.bc = zext i8 %i.bb to i64
  %i.bd = and i64 %i.au, 7
  %i.be = shl nuw nsw i64 %i.ay, %i.bd
  %i.bf = or i64 %i.be, %i.bc
  store i64 %i.bf, ptr %i.ba, align 1, !noalias !891
  %i.bg = add i64 %i.au, 8                        ; 3 uses
  store i64 %i.bg, ptr %5, align 8, !tbaa !17, !alias.scope !891, !noalias !892
  %i.bh = add nuw i64 %.0343.i181, 8              ; 2 uses
  %i.bi = or disjoint i64 %i.bh, 7
  %i.bj = load i64, ptr %i.aq, align 8, !tbaa !21 ; 2 uses
  %i.bk = icmp ult i64 %i.bi, %i.bj
  br i1 %i.bk, label %bb.b, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.bl = phi i64 [ %.pre359, %bb.a ], [ %i.bg, %bb.b ] ; 3 uses
  %.lcssa179 = phi i64 [ %i.ar, %bb.a ], [ %i.bj, %bb.b ] ; 2 uses
  %i.bm = and i64 %.lcssa179, 7
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 3 uses
  %i.bo = lshr i64 %.lcssa179, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !18
  %i.br = zext i8 %i.bq to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !893)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !894)
  %i.bs = lshr i64 %i.bl, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !18, !alias.scope !894, !noalias !893
  %i.bv = zext i8 %i.bu to i64
  %i.bw = and i64 %i.bl, 7
  %i.bx = shl nuw nsw i64 %i.br, %i.bw
  %i.by = or i64 %i.bx, %i.bv
  store i64 %i.by, ptr %i.bt, align 1, !noalias !893
  %i.bz = add i64 %i.bl, %i.bm
  store i64 %i.bz, ptr %5, align 8, !tbaa !17, !alias.scope !893, !noalias !894
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
  %.0360.i.ph = phi ptr [ %.8.i, %bb.bo ], [ %1, %._crit_edge ] ; 5 uses
  %.0358.i.ph = phi i64 [ %i.avv, %bb.bo ], [ %i.e, %._crit_edge ] ; 2 uses
  %.0356.i.ph = phi i64 [ %i.avx, %bb.bo ], [ %i.g, %._crit_edge ] ; 3 uses
  %.0355.i.ph = phi i64 [ %i.axg, %bb.bo ], [ %i.ap, %._crit_edge ]
  %.0318.i.ph = phi i64 [ %.5323.i, %bb.bo ], [ %2, %._crit_edge ]
  %i.cr = ptrtoint ptr %.0360.i.ph to i64         ; 2 uses
  %i.cs = icmp ult i64 %.0355.i.ph, 981           ; 2 uses
  br label %UpdateBits.exit

UpdateBits.exit.loopexit:                         ; preds = %bb.ax
  br label %UpdateBits.exit, !llvm.loop !1

UpdateBits.exit:                                  ; preds = %UpdateBits.exit.loopexit, %UpdateBits.exit.outer
  %.0360.i = phi ptr [ %.0360.i.ph, %UpdateBits.exit.outer ], [ %.7.i, %UpdateBits.exit.loopexit ] ; 2 uses
  %.0358.i = phi i64 [ %.0358.i.ph, %UpdateBits.exit.outer ], [ %i.aik, %UpdateBits.exit.loopexit ] ; 6 uses
  %.0357.i = phi i64 [ %.0358.i.ph, %UpdateBits.exit.outer ], [ %i.ail, %UpdateBits.exit.loopexit ]
  %.0318.i = phi i64 [ %.0318.i.ph, %UpdateBits.exit.outer ], [ %i.aij, %UpdateBits.exit.loopexit ] ; 3 uses
  %.0.i = phi ptr [ %.0360.i.ph, %UpdateBits.exit.outer ], [ %i.ct, %UpdateBits.exit.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.c, ptr noundef nonnull align 16 dereferenceable(512) @kCmdHistoSeed, i64 512, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i, i64 %.0358.i ; 14 uses
  %i.cu = icmp samesign ugt i64 %.0358.i, 15
  br i1 %i.cu, label %bb.c, label %.thread103, !prof !23

bb.c:                                             ; preds = %UpdateBits.exit
  %i.cv = add nsw i64 %.0358.i, -5
  %i.cw = add i64 %.0318.i, -16
  %i.cx = tail call i64 @llvm.umin.i64(i64 %i.cv, i64 range(i64 -15, -16) %i.cw)
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.cx ; 6 uses
  %i.cz = ptrtoint ptr %i.ct to i64
  %i.da = add i64 %i.cz, -5                       ; 2 uses
  br label %.thread76

.thread76:                                        ; preds = %.thread76.backedge, %bb.c
  %.1361.i = phi ptr [ %.0360.i, %bb.c ], [ %.0.i.pn.be, %.thread76.backedge ] ; 8 uses
  %.0.i.pn = phi ptr [ %.0.i, %bb.c ], [ %.0.i.pn.be, %.thread76.backedge ]
  %.0344.i = phi i32 [ -1, %bb.c ], [ %.0344.i.be, %.thread76.backedge ]
  %.0344.i.fr = freeze i32 %.0344.i               ; 4 uses
  %.0350.i = getelementptr inbounds nuw i8, ptr %.0.i.pn, i64 1 ; 3 uses
  %.0338.i.in.in.in = load i64, ptr %.0350.i, align 1
  %.0338.i.in.in = mul i64 %.0338.i.in.in.in, 8503243848024064
  %.0338.i.in = lshr i64 %.0338.i.in.in, 51       ; 2 uses
  %i.db = sext i32 %.0344.i.fr to i64
  %i.dc = sub nsw i64 0, %i.db
  %i.dd = icmp sgt i32 %.0344.i.fr, 0
  br i1 %i.dd, label %.split.us, label %.split, !prof !24

.split.us:                                        ; preds = %.thread76, %.loopexit.split.us206
  %.1339.i.us = phi i64 [ %i.dl, %.loopexit.split.us206 ], [ %.0338.i.in, %.thread76 ]
  %.0336.i.us = phi i32 [ %i.dj, %.loopexit.split.us206 ], [ 32, %.thread76 ] ; 2 uses
  %.0334.i.us = phi ptr [ %i.di, %.loopexit.split.us206 ], [ %.0350.i, %.thread76 ] ; 2 uses
  %i.de = lshr i32 %.0336.i.us, 5
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %.0334.i.us, i64 %i.df ; 2 uses
  %i.dh = icmp ugt ptr %i.dg, %i.cy
  br i1 %i.dh, label %.thread103, label %.lr.ph185.us, !prof !25

.lr.ph185.us:                                     ; preds = %.split.us, %.critedge.backedge.us205
  %i.di = phi ptr [ %i.eh, %.critedge.backedge.us205 ], [ %i.dg, %.split.us ] ; 4 uses
  %.in275 = phi i32 [ %i.dj, %.critedge.backedge.us205 ], [ %.0336.i.us, %.split.us ]
  %.1335.i183.us195 = phi ptr [ %i.di, %.critedge.backedge.us205 ], [ %.0334.i.us, %.split.us ] ; 8 uses
  %.2340.i182.us196 = phi i64 [ %i.dl, %.critedge.backedge.us205 ], [ %.1339.i.us, %.split.us ] ; 2 uses
  %i.dj = add i32 %.in275, 1                      ; 3 uses
  %.0.copyload.i41.us197 = load i64, ptr %i.di, align 1
  %i.dk = mul i64 %.0.copyload.i41.us197, 8503243848024064
  %i.dl = lshr i64 %i.dk, 51                      ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %.1335.i183.us195, i64 %i.dc ; 3 uses
  %.0.copyload.i47.us198 = load i32, ptr %.1335.i183.us195, align 1
  %.0.copyload.i46.us199 = load i32, ptr %i.dm, align 1
  %i.dn = icmp eq i32 %.0.copyload.i47.us198, %.0.copyload.i46.us199
  br i1 %i.dn, label %IsMatch.exit7.us200, label %IsMatch.exit7.thread.us201

IsMatch.exit7.us200:                              ; preds = %.lr.ph185.us
  %i.do = getelementptr inbounds nuw i8, ptr %.1335.i183.us195, i64 4
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !18
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !18
  %i.ds = icmp eq i8 %i.dp, %i.dr
  br i1 %i.ds, label %bb.d, label %IsMatch.exit7.thread.us201, !prof !24

IsMatch.exit7.thread.us201:                       ; preds = %IsMatch.exit7.us200, %.lr.ph185.us
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.2340.i182.us196 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !26
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds i8, ptr %1, i64 %i.dv ; 3 uses
  %i.dx = ptrtoint ptr %.1335.i183.us195 to i64   ; 2 uses
  %i.dy = sub i64 %i.dx, %i.ca
  %i.dz = trunc i64 %i.dy to i32
  store i32 %i.dz, ptr %i.dt, align 4, !tbaa !26
  %.0.copyload.i51.us202 = load i32, ptr %.1335.i183.us195, align 1
  %.0.copyload.i50.us203 = load i32, ptr %i.dw, align 1
  %i.ea = icmp eq i32 %.0.copyload.i51.us202, %.0.copyload.i50.us203
  br i1 %i.ea, label %IsMatch.exit.us204, label %.critedge.backedge.us205

IsMatch.exit.us204:                               ; preds = %IsMatch.exit7.thread.us201
  %i.eb = getelementptr inbounds nuw i8, ptr %.1335.i183.us195, i64 4
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !18
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !18
  %.not276 = icmp eq i8 %i.ec, %i.ee
  br i1 %.not276, label %.loopexit.split.us206, label %.critedge.backedge.us205, !prof !27

.critedge.backedge.us205:                         ; preds = %IsMatch.exit.us204, %IsMatch.exit7.thread.us201
  %i.ef = lshr i32 %i.dj, 5
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.eg ; 2 uses
  %i.ei = icmp ugt ptr %i.eh, %i.cy
  br i1 %i.ei, label %.thread103, label %.lr.ph185.us, !prof !28, !llvm.loop !2

bb.d:                                             ; preds = %IsMatch.exit7.us200
  %i.ej = ptrtoint ptr %.1335.i183.us195 to i64   ; 2 uses
  %i.ek = sub i64 %i.ej, %i.ca
  %i.el = trunc i64 %i.ek to i32
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.2340.i182.us196
  store i32 %i.el, ptr %i.em, align 4, !tbaa !26
  br label %.loopexit.split.us206

.loopexit.split.us206:                            ; preds = %IsMatch.exit.us204, %bb.d
  %.pre-phi = phi i64 [ %i.ej, %bb.d ], [ %i.dx, %IsMatch.exit.us204 ] ; 2 uses
  %.2330.i69.us = phi ptr [ %i.dm, %bb.d ], [ %i.dw, %IsMatch.exit.us204 ] ; 2 uses
  %i.en = ptrtoint ptr %.2330.i69.us to i64
  %i.eo = sub i64 %.pre-phi, %i.en                ; 2 uses
  %i.ep = icmp sgt i64 %i.eo, 262128
  br i1 %i.ep, label %.split.us, label %.split216.us

.split:                                           ; preds = %.thread76, %.loopexit.split.us
  %.1339.i = phi i64 [ %i.ex, %.loopexit.split.us ], [ %.0338.i.in, %.thread76 ]
  %.0336.i = phi i32 [ %i.ev, %.loopexit.split.us ], [ 32, %.thread76 ] ; 2 uses
  %.0334.i = phi ptr [ %i.eu, %.loopexit.split.us ], [ %.0350.i, %.thread76 ] ; 2 uses
  %i.eq = lshr i32 %.0336.i, 5
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %.0334.i, i64 %i.er ; 2 uses
  %i.et = icmp ugt ptr %i.es, %i.cy
  br i1 %i.et, label %.thread103, label %.lr.ph185, !prof !25

.lr.ph185:                                        ; preds = %.split, %.critedge.backedge.us
  %i.eu = phi ptr [ %i.fm, %.critedge.backedge.us ], [ %i.es, %.split ] ; 4 uses
  %.in = phi i32 [ %i.ev, %.critedge.backedge.us ], [ %.0336.i, %.split ]
  %.1335.i183.us = phi ptr [ %i.eu, %.critedge.backedge.us ], [ %.0334.i, %.split ] ; 4 uses
  %.2340.i182.us = phi i64 [ %i.ex, %.critedge.backedge.us ], [ %.1339.i, %.split ]
  %i.ev = add i32 %.in, 1                         ; 3 uses
  %.0.copyload.i41.us = load i64, ptr %i.eu, align 1
  %i.ew = mul i64 %.0.copyload.i41.us, 8503243848024064
  %i.ex = lshr i64 %i.ew, 51                      ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.2340.i182.us ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !26
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds i8, ptr %1, i64 %i.fa ; 4 uses
  %i.fc = ptrtoint ptr %.1335.i183.us to i64      ; 3 uses
  %i.fd = sub i64 %i.fc, %i.ca
  %i.fe = trunc i64 %i.fd to i32
  store i32 %i.fe, ptr %i.ey, align 4, !tbaa !26
  %.0.copyload.i51.us = load i32, ptr %.1335.i183.us, align 1
  %.0.copyload.i50.us = load i32, ptr %i.fb, align 1
  %i.ff = icmp eq i32 %.0.copyload.i51.us, %.0.copyload.i50.us
end_hunk_2
begin_hunk_3_@BrotliCompressFragmentFastImpl13:bb.a
  %i.avf = load i8, ptr %i.ave, align 1, !tbaa !18
  %i.avg = zext i8 %i.avf to i64                  ; 2 uses
  %i.avh = getelementptr inbounds nuw i8, ptr %0, i64 %i.avg
  %i.avi = load i8, ptr %i.avh, align 1, !tbaa !18
  %i.avj = zext i8 %i.avi to i64
  %i.avk = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.avg
  %i.avl = load i16, ptr %i.avk, align 2, !tbaa !30
  %i.avm = zext i16 %i.avl to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !995)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !996)
  %i.avn = lshr i64 %.epil.init638, 3
  %i.avo = getelementptr inbounds nuw i8, ptr %6, i64 %i.avn ; 2 uses
  %i.avp = load i8, ptr %i.avo, align 1, !tbaa !18, !alias.scope !996, !noalias !995
  %i.avq = zext i8 %i.avp to i64
  %i.avr = and i64 %.epil.init638, 7
  %i.avs = shl nuw nsw i64 %i.avm, %i.avr
  %i.avt = or i64 %i.avs, %i.avq
  store i64 %i.avt, ptr %i.avo, align 1, !noalias !995
  %i.avu = add i64 %.epil.init638, %i.avj
  store i64 %i.avu, ptr %5, align 8, !tbaa !17, !alias.scope !995, !noalias !996
  br label %EmitLiterals.exit33

EmitLiterals.exit33:                              ; preds = %.epil.preheader629, %EmitLiterals.exit33.loopexit560.unr-lcssa, %.epil.preheader643, %EmitLiterals.exit33.loopexit.unr-lcssa, %EmitInsertLen.exit27, %.thread76.thread118, %bb.bj, %bb.ay
  %.8.i = phi ptr [ %.us-phi221, %.thread76.thread118 ], [ %i.ct, %bb.ay ], [ %i.ct, %EmitInsertLen.exit27 ], [ %i.ct, %bb.bj ], [ %i.ct, %.epil.preheader643 ], [ %i.ct, %EmitLiterals.exit33.loopexit.unr-lcssa ], [ %i.ct, %EmitLiterals.exit33.loopexit560.unr-lcssa ], [ %i.ct, %.epil.preheader629 ] ; 2 uses
  %.5323.i = phi i64 [ %i.ln, %.thread76.thread118 ], [ %i.aij, %bb.ay ], [ %i.aij, %EmitInsertLen.exit27 ], [ %i.aij, %bb.bj ], [ %i.aij, %.epil.preheader643 ], [ %i.aij, %EmitLiterals.exit33.loopexit.unr-lcssa ], [ %i.aij, %EmitLiterals.exit33.loopexit560.unr-lcssa ], [ %i.aij, %.epil.preheader629 ] ; 4 uses
  %.not393.i = icmp eq i64 %.5323.i, 0
  br i1 %.not393.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %EmitLiterals.exit33
  %i.avv = tail call i64 @llvm.umin.i64(i64 %.5323.i, i64 98304) ; 3 uses
  %i.avw = load i64, ptr %5, align 8, !tbaa !17   ; 3 uses
  %i.avx = add i64 %i.avw, 3                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !999)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1000)
  %i.avy = lshr i64 %i.avw, 3
  %i.avz = getelementptr inbounds nuw i8, ptr %6, i64 %i.avy ; 2 uses
  %i.awa = load i8, ptr %i.avz, align 1, !tbaa !18, !alias.scope !1000, !noalias !999
  %i.awb = zext i8 %i.awa to i64
  store i64 %i.awb, ptr %i.avz, align 1, !noalias !999
  %i.awc = add i64 %i.avw, 1                      ; 3 uses
  store i64 %i.awc, ptr %5, align 8, !tbaa !17, !alias.scope !999, !noalias !1000
  %i.awd = icmp ult i64 %.5323.i, 65537
  %.0.i57 = select i1 %i.awd, i64 4, i64 5        ; 2 uses
  %i.awe = add nsw i64 %.0.i57, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  %i.awf = lshr i64 %i.awc, 3
  %i.awg = getelementptr inbounds nuw i8, ptr %6, i64 %i.awf ; 2 uses
  %i.awh = load i8, ptr %i.awg, align 1, !tbaa !18, !alias.scope !1002, !noalias !1001
  %i.awi = zext i8 %i.awh to i64
  %i.awj = and i64 %i.awc, 7
  %i.awk = shl nuw nsw i64 %i.awe, %i.awj
  %i.awl = or i64 %i.awk, %i.awi
  store i64 %i.awl, ptr %i.awg, align 1, !noalias !1001
  store i64 %i.avx, ptr %5, align 8, !tbaa !17, !alias.scope !1001, !noalias !1002
  %i.awm = shl nuw nsw i64 %.0.i57, 2
  %i.awn = add nsw i64 %i.avv, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1003)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1004)
  %i.awo = lshr i64 %i.avx, 3
  %i.awp = getelementptr inbounds nuw i8, ptr %6, i64 %i.awo ; 2 uses
  %i.awq = load i8, ptr %i.awp, align 1, !tbaa !18, !alias.scope !1004, !noalias !1003
  %i.awr = zext i8 %i.awq to i64
  %i.aws = and i64 %i.avx, 7
  %i.awt = shl nuw nsw i64 %i.awn, %i.aws
  %i.awu = or i64 %i.awt, %i.awr
  store i64 %i.awu, ptr %i.awp, align 1, !noalias !1003
  %i.awv = add i64 %i.avx, %i.awm                 ; 4 uses
  store i64 %i.awv, ptr %5, align 8, !tbaa !17, !alias.scope !1003, !noalias !1004
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1006)
  %i.aww = lshr i64 %i.awv, 3
  %i.awx = getelementptr inbounds nuw i8, ptr %6, i64 %i.aww ; 2 uses
  %i.awy = load i8, ptr %i.awx, align 1, !tbaa !18, !alias.scope !1006, !noalias !1005
  %i.awz = zext i8 %i.awy to i64
  store i64 %i.awz, ptr %i.awx, align 1, !noalias !1005
  %i.axa = add i64 %i.awv, 1                      ; 2 uses
  store i64 %i.axa, ptr %5, align 8, !tbaa !17, !alias.scope !1005, !noalias !1006
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1007)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1008)
  %i.axb = lshr i64 %i.axa, 3
  %i.axc = getelementptr inbounds nuw i8, ptr %6, i64 %i.axb ; 2 uses
  %i.axd = load i8, ptr %i.axc, align 1, !tbaa !18, !alias.scope !1008, !noalias !1007
  %i.axe = zext i8 %i.axd to i64
  store i64 %i.axe, ptr %i.axc, align 1, !noalias !1007
  %i.axf = add i64 %i.awv, 14
  store i64 %i.axf, ptr %5, align 8, !tbaa !17, !alias.scope !1007, !noalias !1008
  %i.axg = tail call fastcc i64 @BuildAndStoreLiteralPrefixCode(ptr noundef %0, ptr noundef %.8.i, i64 noundef %i.avv, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  tail call fastcc void @BuildAndStoreCommandPrefixCode(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %6)
  br label %UpdateBits.exit.outer

bb.bp:                                            ; preds = %EmitLiterals.exit33
  %.not394.i = icmp eq i32 %3, 0
  br i1 %.not394.i, label %bb.bq, label %BrotliCompressFragmentFastImpl.exit

bb.bq:                                            ; preds = %bb.bp
  store i8 0, ptr %i.bn, align 8, !tbaa !18
  store i64 0, ptr %i.aq, align 8, !tbaa !21
  tail call fastcc void @BuildAndStoreCommandPrefixCode(ptr noundef %0, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.bn)
  br label %BrotliCompressFragmentFastImpl.exit

BrotliCompressFragmentFastImpl.exit:              ; preds = %bb.bp, %bb.bq
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @BrotliCompressFragmentFastImpl15(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 1, 0) %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 11 uses
  %i.e = tail call i64 @llvm.umin.i64(i64 range(i64 1, 0) %2, i64 98304) ; 3 uses
  %i.f = load i64, ptr %5, align 8, !tbaa !17     ; 3 uses
  %i.g = add i64 %i.f, 3                          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  %i.h = lshr i64 %i.f, 3
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 %i.h ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !18, !alias.scope !1199, !noalias !1198
  %i.k = zext i8 %i.j to i64
  store i64 %i.k, ptr %i.i, align 1, !noalias !1198
  %i.l = add i64 %i.f, 1                          ; 3 uses
  store i64 %i.l, ptr %5, align 8, !tbaa !17, !alias.scope !1198, !noalias !1199
  %i.m = icmp ult i64 %2, 65537
  %.0.i52 = select i1 %i.m, i64 4, i64 5          ; 2 uses
  %i.n = add nsw i64 %.0.i52, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  %i.o = lshr i64 %i.l, 3
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 %i.o ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !18, !alias.scope !1201, !noalias !1200
  %i.r = zext i8 %i.q to i64
  %i.s = and i64 %i.l, 7
  %i.t = shl nuw nsw i64 %i.n, %i.s
  %i.u = or i64 %i.t, %i.r
  store i64 %i.u, ptr %i.p, align 1, !noalias !1200
  store i64 %i.g, ptr %5, align 8, !tbaa !17, !alias.scope !1200, !noalias !1201
  %i.v = shl nuw nsw i64 %.0.i52, 2
  %i.w = add nsw i64 %i.e, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  %i.x = lshr i64 %i.g, 3
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !18, !alias.scope !1203, !noalias !1202
  %i.aa = zext i8 %i.z to i64
  %i.ab = and i64 %i.g, 7
  %i.ac = shl nuw nsw i64 %i.w, %i.ab
  %i.ad = or i64 %i.ac, %i.aa
  store i64 %i.ad, ptr %i.y, align 1, !noalias !1202
  %i.ae = add i64 %i.g, %i.v                      ; 4 uses
  store i64 %i.ae, ptr %5, align 8, !tbaa !17, !alias.scope !1202, !noalias !1203
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  %i.af = lshr i64 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 %i.af ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !18, !alias.scope !1205, !noalias !1204
  %i.ai = zext i8 %i.ah to i64
  store i64 %i.ai, ptr %i.ag, align 1, !noalias !1204
  %i.aj = add i64 %i.ae, 1                        ; 2 uses
  store i64 %i.aj, ptr %5, align 8, !tbaa !17, !alias.scope !1204, !noalias !1205
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  %i.ak = lshr i64 %i.aj, 3
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 %i.ak ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !18, !alias.scope !1207, !noalias !1206
  %i.an = zext i8 %i.am to i64
  store i64 %i.an, ptr %i.al, align 1, !noalias !1206
  %i.ao = add i64 %i.ae, 14
  store i64 %i.ao, ptr %5, align 8, !tbaa !17, !alias.scope !1206, !noalias !1207
  %i.ap = tail call fastcc i64 @BuildAndStoreLiteralPrefixCode(ptr noundef %0, ptr noundef %1, i64 noundef %i.e, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2176 ; 4 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !21 ; 2 uses
  %i.as = icmp ugt i64 %i.ar, 7
  %.pre359 = load i64, ptr %5, align 8, !tbaa !17, !noalias !19 ; 2 uses
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1664
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.au = phi i64 [ %.pre359, %.lr.ph ], [ %i.bg, %bb.b ] ; 3 uses
  %.0343.i181 = phi i64 [ 0, %.lr.ph ], [ %i.bh, %bb.b ] ; 2 uses
  %i.av = lshr exact i64 %.0343.i181, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !18
  %i.ay = zext i8 %i.ax to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1209)
  %i.az = lshr i64 %i.au, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 %i.az ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !18, !alias.scope !1209, !noalias !1208
  %i.bc = zext i8 %i.bb to i64
  %i.bd = and i64 %i.au, 7
  %i.be = shl nuw nsw i64 %i.ay, %i.bd
  %i.bf = or i64 %i.be, %i.bc
  store i64 %i.bf, ptr %i.ba, align 1, !noalias !1208
  %i.bg = add i64 %i.au, 8                        ; 3 uses
  store i64 %i.bg, ptr %5, align 8, !tbaa !17, !alias.scope !1208, !noalias !1209
  %i.bh = add nuw i64 %.0343.i181, 8              ; 2 uses
  %i.bi = or disjoint i64 %i.bh, 7
  %i.bj = load i64, ptr %i.aq, align 8, !tbaa !21 ; 2 uses
  %i.bk = icmp ult i64 %i.bi, %i.bj
  br i1 %i.bk, label %bb.b, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.bl = phi i64 [ %.pre359, %bb.a ], [ %i.bg, %bb.b ] ; 3 uses
  %.lcssa179 = phi i64 [ %i.ar, %bb.a ], [ %i.bj, %bb.b ] ; 2 uses
  %i.bm = and i64 %.lcssa179, 7
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 3 uses
  %i.bo = lshr i64 %.lcssa179, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !18
  %i.br = zext i8 %i.bq to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  %i.bs = lshr i64 %i.bl, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !18, !alias.scope !1211, !noalias !1210
  %i.bv = zext i8 %i.bu to i64
  %i.bw = and i64 %i.bl, 7
  %i.bx = shl nuw nsw i64 %i.br, %i.bw
  %i.by = or i64 %i.bx, %i.bv
  store i64 %i.by, ptr %i.bt, align 1, !noalias !1210
  %i.bz = add i64 %i.bl, %i.bm
  store i64 %i.bz, ptr %5, align 8, !tbaa !17, !alias.scope !1210, !noalias !1211
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
  %.0360.i.ph = phi ptr [ %.8.i, %bb.bo ], [ %1, %._crit_edge ] ; 5 uses
  %.0358.i.ph = phi i64 [ %i.avv, %bb.bo ], [ %i.e, %._crit_edge ] ; 2 uses
  %.0356.i.ph = phi i64 [ %i.avx, %bb.bo ], [ %i.g, %._crit_edge ] ; 3 uses
  %.0355.i.ph = phi i64 [ %i.axg, %bb.bo ], [ %i.ap, %._crit_edge ]
  %.0318.i.ph = phi i64 [ %.5323.i, %bb.bo ], [ %2, %._crit_edge ]
  %i.cr = ptrtoint ptr %.0360.i.ph to i64         ; 2 uses
  %i.cs = icmp ult i64 %.0355.i.ph, 981           ; 2 uses
  br label %UpdateBits.exit

UpdateBits.exit.loopexit:                         ; preds = %bb.ax
  br label %UpdateBits.exit, !llvm.loop !1

UpdateBits.exit:                                  ; preds = %UpdateBits.exit.loopexit, %UpdateBits.exit.outer
  %.0360.i = phi ptr [ %.0360.i.ph, %UpdateBits.exit.outer ], [ %.7.i, %UpdateBits.exit.loopexit ] ; 2 uses
  %.0358.i = phi i64 [ %.0358.i.ph, %UpdateBits.exit.outer ], [ %i.aik, %UpdateBits.exit.loopexit ] ; 6 uses
  %.0357.i = phi i64 [ %.0358.i.ph, %UpdateBits.exit.outer ], [ %i.ail, %UpdateBits.exit.loopexit ]
  %.0318.i = phi i64 [ %.0318.i.ph, %UpdateBits.exit.outer ], [ %i.aij, %UpdateBits.exit.loopexit ] ; 3 uses
  %.0.i = phi ptr [ %.0360.i.ph, %UpdateBits.exit.outer ], [ %i.ct, %UpdateBits.exit.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.c, ptr noundef nonnull align 16 dereferenceable(512) @kCmdHistoSeed, i64 512, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i, i64 %.0358.i ; 14 uses
  %i.cu = icmp samesign ugt i64 %.0358.i, 15
  br i1 %i.cu, label %bb.c, label %.thread103, !prof !23

bb.c:                                             ; preds = %UpdateBits.exit
  %i.cv = add nsw i64 %.0358.i, -5
  %i.cw = add i64 %.0318.i, -16
  %i.cx = tail call i64 @llvm.umin.i64(i64 %i.cv, i64 range(i64 -15, -16) %i.cw)
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.cx ; 6 uses
  %i.cz = ptrtoint ptr %i.ct to i64
  %i.da = add i64 %i.cz, -5                       ; 2 uses
  br label %.thread76

.thread76:                                        ; preds = %.thread76.backedge, %bb.c
  %.1361.i = phi ptr [ %.0360.i, %bb.c ], [ %.0.i.pn.be, %.thread76.backedge ] ; 8 uses
  %.0.i.pn = phi ptr [ %.0.i, %bb.c ], [ %.0.i.pn.be, %.thread76.backedge ]
  %.0344.i = phi i32 [ -1, %bb.c ], [ %.0344.i.be, %.thread76.backedge ]
  %.0344.i.fr = freeze i32 %.0344.i               ; 4 uses
  %.0350.i = getelementptr inbounds nuw i8, ptr %.0.i.pn, i64 1 ; 3 uses
  %.0338.i.in.in.in = load i64, ptr %.0350.i, align 1
  %.0338.i.in.in = mul i64 %.0338.i.in.in.in, 8503243848024064
  %.0338.i.in = lshr i64 %.0338.i.in.in, 49       ; 2 uses
  %i.db = sext i32 %.0344.i.fr to i64
  %i.dc = sub nsw i64 0, %i.db
  %i.dd = icmp sgt i32 %.0344.i.fr, 0
  br i1 %i.dd, label %.split.us, label %.split, !prof !24

.split.us:                                        ; preds = %.thread76, %.loopexit.split.us206
  %.1339.i.us = phi i64 [ %i.dl, %.loopexit.split.us206 ], [ %.0338.i.in, %.thread76 ]
  %.0336.i.us = phi i32 [ %i.dj, %.loopexit.split.us206 ], [ 32, %.thread76 ] ; 2 uses
  %.0334.i.us = phi ptr [ %i.di, %.loopexit.split.us206 ], [ %.0350.i, %.thread76 ] ; 2 uses
  %i.de = lshr i32 %.0336.i.us, 5
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %.0334.i.us, i64 %i.df ; 2 uses
  %i.dh = icmp ugt ptr %i.dg, %i.cy
  br i1 %i.dh, label %.thread103, label %.lr.ph185.us, !prof !25

.lr.ph185.us:                                     ; preds = %.split.us, %.critedge.backedge.us205
  %i.di = phi ptr [ %i.eh, %.critedge.backedge.us205 ], [ %i.dg, %.split.us ] ; 4 uses
  %.in275 = phi i32 [ %i.dj, %.critedge.backedge.us205 ], [ %.0336.i.us, %.split.us ]
  %.1335.i183.us195 = phi ptr [ %i.di, %.critedge.backedge.us205 ], [ %.0334.i.us, %.split.us ] ; 8 uses
  %.2340.i182.us196 = phi i64 [ %i.dl, %.critedge.backedge.us205 ], [ %.1339.i.us, %.split.us ] ; 2 uses
  %i.dj = add i32 %.in275, 1                      ; 3 uses
  %.0.copyload.i41.us197 = load i64, ptr %i.di, align 1
  %i.dk = mul i64 %.0.copyload.i41.us197, 8503243848024064
  %i.dl = lshr i64 %i.dk, 49                      ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %.1335.i183.us195, i64 %i.dc ; 3 uses
  %.0.copyload.i47.us198 = load i32, ptr %.1335.i183.us195, align 1
  %.0.copyload.i46.us199 = load i32, ptr %i.dm, align 1
  %i.dn = icmp eq i32 %.0.copyload.i47.us198, %.0.copyload.i46.us199
  br i1 %i.dn, label %IsMatch.exit7.us200, label %IsMatch.exit7.thread.us201

IsMatch.exit7.us200:                              ; preds = %.lr.ph185.us
  %i.do = getelementptr inbounds nuw i8, ptr %.1335.i183.us195, i64 4
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !18
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !18
  %i.ds = icmp eq i8 %i.dp, %i.dr
  br i1 %i.ds, label %bb.d, label %IsMatch.exit7.thread.us201, !prof !24

IsMatch.exit7.thread.us201:                       ; preds = %IsMatch.exit7.us200, %.lr.ph185.us
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.2340.i182.us196 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !26
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds i8, ptr %1, i64 %i.dv ; 3 uses
  %i.dx = ptrtoint ptr %.1335.i183.us195 to i64   ; 2 uses
  %i.dy = sub i64 %i.dx, %i.ca
  %i.dz = trunc i64 %i.dy to i32
  store i32 %i.dz, ptr %i.dt, align 4, !tbaa !26
  %.0.copyload.i51.us202 = load i32, ptr %.1335.i183.us195, align 1
  %.0.copyload.i50.us203 = load i32, ptr %i.dw, align 1
  %i.ea = icmp eq i32 %.0.copyload.i51.us202, %.0.copyload.i50.us203
  br i1 %i.ea, label %IsMatch.exit.us204, label %.critedge.backedge.us205

IsMatch.exit.us204:                               ; preds = %IsMatch.exit7.thread.us201
  %i.eb = getelementptr inbounds nuw i8, ptr %.1335.i183.us195, i64 4
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !18
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !18
  %.not276 = icmp eq i8 %i.ec, %i.ee
  br i1 %.not276, label %.loopexit.split.us206, label %.critedge.backedge.us205, !prof !27

.critedge.backedge.us205:                         ; preds = %IsMatch.exit.us204, %IsMatch.exit7.thread.us201
  %i.ef = lshr i32 %i.dj, 5
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.eg ; 2 uses
  %i.ei = icmp ugt ptr %i.eh, %i.cy
  br i1 %i.ei, label %.thread103, label %.lr.ph185.us, !prof !28, !llvm.loop !2

bb.d:                                             ; preds = %IsMatch.exit7.us200
  %i.ej = ptrtoint ptr %.1335.i183.us195 to i64   ; 2 uses
  %i.ek = sub i64 %i.ej, %i.ca
  %i.el = trunc i64 %i.ek to i32
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.2340.i182.us196
  store i32 %i.el, ptr %i.em, align 4, !tbaa !26
  br label %.loopexit.split.us206

.loopexit.split.us206:                            ; preds = %IsMatch.exit.us204, %bb.d
  %.pre-phi = phi i64 [ %i.ej, %bb.d ], [ %i.dx, %IsMatch.exit.us204 ] ; 2 uses
  %.2330.i69.us = phi ptr [ %i.dm, %bb.d ], [ %i.dw, %IsMatch.exit.us204 ] ; 2 uses
  %i.en = ptrtoint ptr %.2330.i69.us to i64
  %i.eo = sub i64 %.pre-phi, %i.en                ; 2 uses
  %i.ep = icmp sgt i64 %i.eo, 262128
  br i1 %i.ep, label %.split.us, label %.split216.us

.split:                                           ; preds = %.thread76, %.loopexit.split.us
  %.1339.i = phi i64 [ %i.ex, %.loopexit.split.us ], [ %.0338.i.in, %.thread76 ]
  %.0336.i = phi i32 [ %i.ev, %.loopexit.split.us ], [ 32, %.thread76 ] ; 2 uses
  %.0334.i = phi ptr [ %i.eu, %.loopexit.split.us ], [ %.0350.i, %.thread76 ] ; 2 uses
  %i.eq = lshr i32 %.0336.i, 5
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %.0334.i, i64 %i.er ; 2 uses
  %i.et = icmp ugt ptr %i.es, %i.cy
  br i1 %i.et, label %.thread103, label %.lr.ph185, !prof !25

.lr.ph185:                                        ; preds = %.split, %.critedge.backedge.us
  %i.eu = phi ptr [ %i.fm, %.critedge.backedge.us ], [ %i.es, %.split ] ; 4 uses
  %.in = phi i32 [ %i.ev, %.critedge.backedge.us ], [ %.0336.i, %.split ]
  %.1335.i183.us = phi ptr [ %i.eu, %.critedge.backedge.us ], [ %.0334.i, %.split ] ; 4 uses
  %.2340.i182.us = phi i64 [ %i.ex, %.critedge.backedge.us ], [ %.1339.i, %.split ]
  %i.ev = add i32 %.in, 1                         ; 3 uses
  %.0.copyload.i41.us = load i64, ptr %i.eu, align 1
  %i.ew = mul i64 %.0.copyload.i41.us, 8503243848024064
  %i.ex = lshr i64 %i.ew, 49                      ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.2340.i182.us ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !26
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds i8, ptr %1, i64 %i.fa ; 4 uses
  %i.fc = ptrtoint ptr %.1335.i183.us to i64      ; 3 uses
  %i.fd = sub i64 %i.fc, %i.ca
  %i.fe = trunc i64 %i.fd to i32
  store i32 %i.fe, ptr %i.ey, align 4, !tbaa !26
  %.0.copyload.i51.us = load i32, ptr %.1335.i183.us, align 1
  %.0.copyload.i50.us = load i32, ptr %i.fb, align 1
  %i.ff = icmp eq i32 %.0.copyload.i51.us, %.0.copyload.i50.us
end_hunk_3
