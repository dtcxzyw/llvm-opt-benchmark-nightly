Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/compress_fragment?download=true
inline.NumInlined: 19
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 15
begin_hunk_0_@BrotliCompressFragmentFast:bb.a
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  tail call fastcc void @BrotliCompressFragmentFastImpl15(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6, ptr noundef %7)
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f, %bb.e, %bb.d, %bb.c
  %i.e = load i64, ptr %6, align 8, !tbaa !17
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
  %i.bh = add i64 %.0343.i181, 8                  ; 2 uses
  %7 = or disjoint i64 %i.bh, 7
  %i.bi = load i64, ptr %i.aq, align 8, !tbaa !21 ; 2 uses
  %i.bj = icmp ult i64 %7, %i.bi
  br i1 %i.bj, label %bb.b, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.bk = phi i64 [ %.pre359, %bb.a ], [ %i.bg, %bb.b ] ; 3 uses
  %.lcssa179 = phi i64 [ %i.ar, %bb.a ], [ %i.bi, %bb.b ] ; 2 uses
  %i.bl = and i64 %.lcssa179, 7
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 3 uses
  %i.bn = lshr i64 %.lcssa179, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !18
  %i.bq = zext i8 %i.bp to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  %i.br = lshr i64 %i.bk, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 %i.br ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !18, !alias.scope !260, !noalias !259
  %i.bu = zext i8 %i.bt to i64
  %i.bv = and i64 %i.bk, 7
  %i.bw = shl nuw nsw i64 %i.bq, %i.bv
  %i.bx = or i64 %i.bw, %i.bu
  store i64 %i.bx, ptr %i.bs, align 1, !noalias !259
  %i.by = add i64 %i.bk, %i.bl
  store i64 %i.by, ptr %5, align 8, !tbaa !17, !alias.scope !259, !noalias !260
  %i.bz = ptrtoint ptr %1 to i64                  ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 831 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1022 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1404 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 830 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1020 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 829 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1018 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1396 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 8 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 807 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 974 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1308 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 6288 ; 3 uses
  br label %UpdateBits.exit.outer

UpdateBits.exit.outer:                            ; preds = %bb.bo, %._crit_edge
  %.0360.i.ph = phi ptr [ %.8.i, %bb.bo ], [ %1, %._crit_edge ] ; 5 uses
  %.0358.i.ph = phi i64 [ %i.avu, %bb.bo ], [ %i.e, %._crit_edge ] ; 2 uses
  %.0356.i.ph = phi i64 [ %i.avw, %bb.bo ], [ %i.g, %._crit_edge ] ; 3 uses
  %.0355.i.ph = phi i64 [ %i.axf, %bb.bo ], [ %i.ap, %._crit_edge ]
  %.0318.i.ph = phi i64 [ %.5323.i, %bb.bo ], [ %2, %._crit_edge ]
  %i.cq = ptrtoint ptr %.0360.i.ph to i64         ; 2 uses
  %i.cr = icmp ult i64 %.0355.i.ph, 981           ; 2 uses
  br label %UpdateBits.exit

UpdateBits.exit.loopexit:                         ; preds = %bb.ax
  br label %UpdateBits.exit, !llvm.loop !1

UpdateBits.exit:                                  ; preds = %UpdateBits.exit.loopexit, %UpdateBits.exit.outer
  %.0360.i = phi ptr [ %.0360.i.ph, %UpdateBits.exit.outer ], [ %.7.i, %UpdateBits.exit.loopexit ] ; 2 uses
  %.0358.i = phi i64 [ %.0358.i.ph, %UpdateBits.exit.outer ], [ %i.aij, %UpdateBits.exit.loopexit ] ; 6 uses
  %.0357.i = phi i64 [ %.0358.i.ph, %UpdateBits.exit.outer ], [ %i.aik, %UpdateBits.exit.loopexit ]
  %.0318.i = phi i64 [ %.0318.i.ph, %UpdateBits.exit.outer ], [ %i.aii, %UpdateBits.exit.loopexit ] ; 3 uses
  %.0.i = phi ptr [ %.0360.i.ph, %UpdateBits.exit.outer ], [ %i.cs, %UpdateBits.exit.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.c, ptr noundef nonnull align 16 dereferenceable(512) @kCmdHistoSeed, i64 512, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i, i64 %.0358.i ; 14 uses
  %i.ct = icmp samesign ugt i64 %.0358.i, 15
  br i1 %i.ct, label %bb.c, label %.thread103, !prof !23

bb.c:                                             ; preds = %UpdateBits.exit
  %i.cu = add nsw i64 %.0358.i, -5
  %i.cv = add i64 %.0318.i, -16
  %i.cw = tail call i64 @llvm.umin.i64(i64 %i.cu, i64 range(i64 -15, -16) %i.cv)
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.cw ; 6 uses
  %i.cy = ptrtoint ptr %i.cs to i64
  %i.cz = add i64 %i.cy, -5                       ; 2 uses
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
  %i.da = sext i32 %.0344.i.fr to i64
  %i.db = sub nsw i64 0, %i.da
  %i.dc = icmp sgt i32 %.0344.i.fr, 0
  br i1 %i.dc, label %.split.us, label %.split, !prof !24

.split.us:                                        ; preds = %.thread76, %.loopexit.split.us206
  %.1339.i.us = phi i64 [ %i.dk, %.loopexit.split.us206 ], [ %.0338.i.in, %.thread76 ]
  %.0336.i.us = phi i32 [ %i.di, %.loopexit.split.us206 ], [ 32, %.thread76 ] ; 2 uses
  %.0334.i.us = phi ptr [ %i.dh, %.loopexit.split.us206 ], [ %.0350.i, %.thread76 ] ; 2 uses
  %i.dd = lshr i32 %.0336.i.us, 5
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %.0334.i.us, i64 %i.de ; 2 uses
  %i.dg = icmp ugt ptr %i.df, %i.cx
  br i1 %i.dg, label %.thread103, label %.lr.ph185.us, !prof !25

.lr.ph185.us:                                     ; preds = %.split.us, %.critedge.backedge.us205
  %i.dh = phi ptr [ %i.eg, %.critedge.backedge.us205 ], [ %i.df, %.split.us ] ; 4 uses
  %.in275 = phi i32 [ %i.di, %.critedge.backedge.us205 ], [ %.0336.i.us, %.split.us ]
  %.1335.i183.us195 = phi ptr [ %i.dh, %.critedge.backedge.us205 ], [ %.0334.i.us, %.split.us ] ; 8 uses
  %.2340.i182.us196 = phi i64 [ %i.dk, %.critedge.backedge.us205 ], [ %.1339.i.us, %.split.us ] ; 2 uses
  %i.di = add i32 %.in275, 1                      ; 3 uses
  %.0.copyload.i41.us197 = load i64, ptr %i.dh, align 1
  %i.dj = mul i64 %.0.copyload.i41.us197, 8503243848024064
  %i.dk = lshr i64 %i.dj, 55                      ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %.1335.i183.us195, i64 %i.db ; 3 uses
  %.0.copyload.i47.us198 = load i32, ptr %.1335.i183.us195, align 1
  %.0.copyload.i46.us199 = load i32, ptr %i.dl, align 1
  %i.dm = icmp eq i32 %.0.copyload.i47.us198, %.0.copyload.i46.us199
  br i1 %i.dm, label %IsMatch.exit7.us200, label %IsMatch.exit7.thread.us201

IsMatch.exit7.us200:                              ; preds = %.lr.ph185.us
  %i.dn = getelementptr inbounds nuw i8, ptr %.1335.i183.us195, i64 4
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !18
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !18
  %i.dr = icmp eq i8 %i.do, %i.dq
  br i1 %i.dr, label %bb.d, label %IsMatch.exit7.thread.us201, !prof !24

IsMatch.exit7.thread.us201:                       ; preds = %IsMatch.exit7.us200, %.lr.ph185.us
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.2340.i182.us196 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !26
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds i8, ptr %1, i64 %i.du ; 3 uses
  %i.dw = ptrtoint ptr %.1335.i183.us195 to i64   ; 2 uses
  %i.dx = sub i64 %i.dw, %i.bz
  %i.dy = trunc i64 %i.dx to i32
  store i32 %i.dy, ptr %i.ds, align 4, !tbaa !26
  %.0.copyload.i51.us202 = load i32, ptr %.1335.i183.us195, align 1
  %.0.copyload.i50.us203 = load i32, ptr %i.dv, align 1
  %i.dz = icmp eq i32 %.0.copyload.i51.us202, %.0.copyload.i50.us203
  br i1 %i.dz, label %IsMatch.exit.us204, label %.critedge.backedge.us205

IsMatch.exit.us204:                               ; preds = %IsMatch.exit7.thread.us201
  %i.ea = getelementptr inbounds nuw i8, ptr %.1335.i183.us195, i64 4
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !18
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !18
  %.not276 = icmp eq i8 %i.eb, %i.ed
  br i1 %.not276, label %.loopexit.split.us206, label %.critedge.backedge.us205, !prof !27

.critedge.backedge.us205:                         ; preds = %IsMatch.exit.us204, %IsMatch.exit7.thread.us201
  %i.ee = lshr i32 %i.di, 5
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.ef ; 2 uses
  %i.eh = icmp ugt ptr %i.eg, %i.cx
  br i1 %i.eh, label %.thread103, label %.lr.ph185.us, !prof !28, !llvm.loop !2

bb.d:                                             ; preds = %IsMatch.exit7.us200
  %i.ei = ptrtoint ptr %.1335.i183.us195 to i64   ; 2 uses
  %i.ej = sub i64 %i.ei, %i.bz
  %i.ek = trunc i64 %i.ej to i32
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.2340.i182.us196
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !26
  br label %.loopexit.split.us206

.loopexit.split.us206:                            ; preds = %IsMatch.exit.us204, %bb.d
  %.pre-phi = phi i64 [ %i.ei, %bb.d ], [ %i.dw, %IsMatch.exit.us204 ] ; 2 uses
  %.2330.i69.us = phi ptr [ %i.dl, %bb.d ], [ %i.dv, %IsMatch.exit.us204 ] ; 2 uses
  %i.em = ptrtoint ptr %.2330.i69.us to i64
  %i.en = sub i64 %.pre-phi, %i.em                ; 2 uses
  %i.eo = icmp sgt i64 %i.en, 262128
  br i1 %i.eo, label %.split.us, label %.split216.us

.split:                                           ; preds = %.thread76, %.loopexit.split.us
  %.1339.i = phi i64 [ %i.ew, %.loopexit.split.us ], [ %.0338.i.in, %.thread76 ]
  %.0336.i = phi i32 [ %i.eu, %.loopexit.split.us ], [ 32, %.thread76 ] ; 2 uses
  %.0334.i = phi ptr [ %i.et, %.loopexit.split.us ], [ %.0350.i, %.thread76 ] ; 2 uses
  %i.ep = lshr i32 %.0336.i, 5
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %.0334.i, i64 %i.eq ; 2 uses
  %i.es = icmp ugt ptr %i.er, %i.cx
  br i1 %i.es, label %.thread103, label %.lr.ph185, !prof !25

.lr.ph185:                                        ; preds = %.split, %.critedge.backedge.us
  %i.et = phi ptr [ %i.fl, %.critedge.backedge.us ], [ %i.er, %.split ] ; 4 uses
  %.in = phi i32 [ %i.eu, %.critedge.backedge.us ], [ %.0336.i, %.split ]
  %.1335.i183.us = phi ptr [ %i.et, %.critedge.backedge.us ], [ %.0334.i, %.split ] ; 4 uses
  %.2340.i182.us = phi i64 [ %i.ew, %.critedge.backedge.us ], [ %.1339.i, %.split ]
  %i.eu = add i32 %.in, 1                         ; 3 uses
  %.0.copyload.i41.us = load i64, ptr %i.et, align 1
  %i.ev = mul i64 %.0.copyload.i41.us, 8503243848024064
  %i.ew = lshr i64 %i.ev, 55                      ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.2340.i182.us ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !26
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds i8, ptr %1, i64 %i.ez ; 4 uses
  %i.fb = ptrtoint ptr %.1335.i183.us to i64      ; 3 uses
  %i.fc = sub i64 %i.fb, %i.bz
  %i.fd = trunc i64 %i.fc to i32
  store i32 %i.fd, ptr %i.ex, align 4, !tbaa !26
  %.0.copyload.i51.us = load i32, ptr %.1335.i183.us, align 1
  %.0.copyload.i50.us = load i32, ptr %i.fa, align 1
  %i.fe = icmp eq i32 %.0.copyload.i51.us, %.0.copyload.i50.us
  br i1 %i.fe, label %IsMatch.exit.us, label %.critedge.backedge.us
end_hunk_0
begin_hunk_1_@BrotliCompressFragmentFastImpl9:bb.a
  %i.ava = shl nuw nsw i64 %i.auu, %i.auz
  %i.avb = or i64 %i.ava, %i.auy
  store i64 %i.avb, ptr %i.auw, align 1, !noalias !349
  %i.avc = add i64 %.epil.init647, %i.aur
  store i64 %i.avc, ptr %5, align 8, !tbaa !17, !alias.scope !349, !noalias !350
  br label %EmitLiterals.exit33

EmitLiterals.exit33.loopexit560.unr-lcssa:        ; preds = %bb.bn
  %lcmp.mod639.not = icmp eq i64 %xtraiter636, 0
  br i1 %lcmp.mod639.not, label %EmitLiterals.exit33, label %.epil.preheader629

.epil.preheader629:                               ; preds = %EmitLiterals.exit33.loopexit560.unr-lcssa, %EmitLongInsertLen.exit30
  %.0.i34270.epil.init = phi i64 [ 0, %EmitLongInsertLen.exit30 ], [ %i.aul, %EmitLiterals.exit33.loopexit560.unr-lcssa ]
  %.epil.init638 = phi i64 [ %.sink358, %EmitLongInsertLen.exit30 ], [ %i.auk, %EmitLiterals.exit33.loopexit560.unr-lcssa ] ; 3 uses
  %lcmp.mod640 = trunc i64 %i.aku to i1
  tail call void @llvm.assume(i1 %lcmp.mod640)
  %i.avd = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34270.epil.init
  %i.ave = load i8, ptr %i.avd, align 1, !tbaa !18
  %i.avf = zext i8 %i.ave to i64                  ; 2 uses
  %i.avg = getelementptr inbounds nuw i8, ptr %0, i64 %i.avf
  %i.avh = load i8, ptr %i.avg, align 1, !tbaa !18
  %i.avi = zext i8 %i.avh to i64
  %i.avj = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.avf
  %i.avk = load i16, ptr %i.avj, align 2, !tbaa !30
  %i.avl = zext i16 %i.avk to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  %i.avm = lshr i64 %.epil.init638, 3
  %i.avn = getelementptr inbounds nuw i8, ptr %6, i64 %i.avm ; 2 uses
  %i.avo = load i8, ptr %i.avn, align 1, !tbaa !18, !alias.scope !362, !noalias !361
  %i.avp = zext i8 %i.avo to i64
  %i.avq = and i64 %.epil.init638, 7
  %i.avr = shl nuw nsw i64 %i.avl, %i.avq
  %i.avs = or i64 %i.avr, %i.avp
  store i64 %i.avs, ptr %i.avn, align 1, !noalias !361
  %i.avt = add i64 %.epil.init638, %i.avi
  store i64 %i.avt, ptr %5, align 8, !tbaa !17, !alias.scope !361, !noalias !362
  br label %EmitLiterals.exit33

EmitLiterals.exit33:                              ; preds = %.epil.preheader629, %EmitLiterals.exit33.loopexit560.unr-lcssa, %.epil.preheader643, %EmitLiterals.exit33.loopexit.unr-lcssa, %EmitInsertLen.exit27, %.thread76.thread118, %bb.bj, %bb.ay
  %.8.i = phi ptr [ %.us-phi221, %.thread76.thread118 ], [ %i.cs, %bb.ay ], [ %i.cs, %EmitInsertLen.exit27 ], [ %i.cs, %bb.bj ], [ %i.cs, %.epil.preheader643 ], [ %i.cs, %EmitLiterals.exit33.loopexit.unr-lcssa ], [ %i.cs, %EmitLiterals.exit33.loopexit560.unr-lcssa ], [ %i.cs, %.epil.preheader629 ] ; 2 uses
  %.5323.i = phi i64 [ %i.lm, %.thread76.thread118 ], [ %i.aii, %bb.ay ], [ %i.aii, %EmitInsertLen.exit27 ], [ %i.aii, %bb.bj ], [ %i.aii, %.epil.preheader643 ], [ %i.aii, %EmitLiterals.exit33.loopexit.unr-lcssa ], [ %i.aii, %EmitLiterals.exit33.loopexit560.unr-lcssa ], [ %i.aii, %.epil.preheader629 ] ; 4 uses
  %.not393.i = icmp eq i64 %.5323.i, 0
  br i1 %.not393.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %EmitLiterals.exit33
  %i.avu = tail call i64 @llvm.umin.i64(i64 %.5323.i, i64 98304) ; 3 uses
  %i.avv = load i64, ptr %5, align 8, !tbaa !17   ; 3 uses
  %i.avw = add i64 %i.avv, 3                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  %i.avx = lshr i64 %i.avv, 3
  %i.avy = getelementptr inbounds nuw i8, ptr %6, i64 %i.avx ; 2 uses
  %i.avz = load i8, ptr %i.avy, align 1, !tbaa !18, !alias.scope !366, !noalias !365
  %i.awa = zext i8 %i.avz to i64
  store i64 %i.awa, ptr %i.avy, align 1, !noalias !365
  %i.awb = add i64 %i.avv, 1                      ; 3 uses
  store i64 %i.awb, ptr %5, align 8, !tbaa !17, !alias.scope !365, !noalias !366
  %i.awc = icmp ult i64 %.5323.i, 65537
  %.0.i57 = select i1 %i.awc, i64 4, i64 5        ; 2 uses
  %i.awd = add nsw i64 %.0.i57, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  %i.awe = lshr i64 %i.awb, 3
  %i.awf = getelementptr inbounds nuw i8, ptr %6, i64 %i.awe ; 2 uses
  %i.awg = load i8, ptr %i.awf, align 1, !tbaa !18, !alias.scope !368, !noalias !367
  %i.awh = zext i8 %i.awg to i64
  %i.awi = and i64 %i.awb, 7
  %i.awj = shl nuw nsw i64 %i.awd, %i.awi
  %i.awk = or i64 %i.awj, %i.awh
  store i64 %i.awk, ptr %i.awf, align 1, !noalias !367
  store i64 %i.avw, ptr %5, align 8, !tbaa !17, !alias.scope !367, !noalias !368
  %i.awl = shl nuw nsw i64 %.0.i57, 2
  %i.awm = add nsw i64 %i.avu, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  %i.awn = lshr i64 %i.avw, 3
  %i.awo = getelementptr inbounds nuw i8, ptr %6, i64 %i.awn ; 2 uses
  %i.awp = load i8, ptr %i.awo, align 1, !tbaa !18, !alias.scope !370, !noalias !369
  %i.awq = zext i8 %i.awp to i64
  %i.awr = and i64 %i.avw, 7
  %i.aws = shl nuw nsw i64 %i.awm, %i.awr
  %i.awt = or i64 %i.aws, %i.awq
  store i64 %i.awt, ptr %i.awo, align 1, !noalias !369
  %i.awu = add i64 %i.avw, %i.awl                 ; 4 uses
  store i64 %i.awu, ptr %5, align 8, !tbaa !17, !alias.scope !369, !noalias !370
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.awv = lshr i64 %i.awu, 3
  %i.aww = getelementptr inbounds nuw i8, ptr %6, i64 %i.awv ; 2 uses
  %i.awx = load i8, ptr %i.aww, align 1, !tbaa !18, !alias.scope !372, !noalias !371
  %i.awy = zext i8 %i.awx to i64
  store i64 %i.awy, ptr %i.aww, align 1, !noalias !371
  %i.awz = add i64 %i.awu, 1                      ; 2 uses
  store i64 %i.awz, ptr %5, align 8, !tbaa !17, !alias.scope !371, !noalias !372
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  %i.axa = lshr i64 %i.awz, 3
  %i.axb = getelementptr inbounds nuw i8, ptr %6, i64 %i.axa ; 2 uses
  %i.axc = load i8, ptr %i.axb, align 1, !tbaa !18, !alias.scope !374, !noalias !373
  %i.axd = zext i8 %i.axc to i64
  store i64 %i.axd, ptr %i.axb, align 1, !noalias !373
  %i.axe = add i64 %i.awu, 14
  store i64 %i.axe, ptr %5, align 8, !tbaa !17, !alias.scope !373, !noalias !374
  %i.axf = tail call fastcc i64 @BuildAndStoreLiteralPrefixCode(ptr noundef %0, ptr noundef %.8.i, i64 noundef %i.avu, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  tail call fastcc void @BuildAndStoreCommandPrefixCode(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %6)
  br label %UpdateBits.exit.outer

bb.bp:                                            ; preds = %EmitLiterals.exit33
  %.not394.i = icmp eq i32 %3, 0
  br i1 %.not394.i, label %bb.bq, label %BrotliCompressFragmentFastImpl.exit

bb.bq:                                            ; preds = %bb.bp
  store i8 0, ptr %i.bm, align 8, !tbaa !18
  store i64 0, ptr %i.aq, align 8, !tbaa !21
  tail call fastcc void @BuildAndStoreCommandPrefixCode(ptr noundef %0, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.bm)
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
  %i.bh = add i64 %.0343.i181, 8                  ; 2 uses
  %7 = or disjoint i64 %i.bh, 7
  %i.bi = load i64, ptr %i.aq, align 8, !tbaa !21 ; 2 uses
  %i.bj = icmp ult i64 %7, %i.bi
  br i1 %i.bj, label %bb.b, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.bk = phi i64 [ %.pre359, %bb.a ], [ %i.bg, %bb.b ] ; 3 uses
  %.lcssa179 = phi i64 [ %i.ar, %bb.a ], [ %i.bi, %bb.b ] ; 2 uses
  %i.bl = and i64 %.lcssa179, 7
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 3 uses
  %i.bn = lshr i64 %.lcssa179, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !18
  %i.bq = zext i8 %i.bp to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !576)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !577)
  %i.br = lshr i64 %i.bk, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 %i.br ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !18, !alias.scope !577, !noalias !576
  %i.bu = zext i8 %i.bt to i64
  %i.bv = and i64 %i.bk, 7
  %i.bw = shl nuw nsw i64 %i.bq, %i.bv
  %i.bx = or i64 %i.bw, %i.bu
  store i64 %i.bx, ptr %i.bs, align 1, !noalias !576
  %i.by = add i64 %i.bk, %i.bl
  store i64 %i.by, ptr %5, align 8, !tbaa !17, !alias.scope !576, !noalias !577
  %i.bz = ptrtoint ptr %1 to i64                  ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 831 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1022 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1404 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 830 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1020 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 829 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1018 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1396 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 8 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 807 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 974 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1308 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 6288 ; 3 uses
  br label %UpdateBits.exit.outer

UpdateBits.exit.outer:                            ; preds = %bb.bo, %._crit_edge
  %.0360.i.ph = phi ptr [ %.8.i, %bb.bo ], [ %1, %._crit_edge ] ; 5 uses
  %.0358.i.ph = phi i64 [ %i.avu, %bb.bo ], [ %i.e, %._crit_edge ] ; 2 uses
  %.0356.i.ph = phi i64 [ %i.avw, %bb.bo ], [ %i.g, %._crit_edge ] ; 3 uses
  %.0355.i.ph = phi i64 [ %i.axf, %bb.bo ], [ %i.ap, %._crit_edge ]
  %.0318.i.ph = phi i64 [ %.5323.i, %bb.bo ], [ %2, %._crit_edge ]
  %i.cq = ptrtoint ptr %.0360.i.ph to i64         ; 2 uses
  %i.cr = icmp ult i64 %.0355.i.ph, 981           ; 2 uses
  br label %UpdateBits.exit

UpdateBits.exit.loopexit:                         ; preds = %bb.ax
  br label %UpdateBits.exit, !llvm.loop !1

UpdateBits.exit:                                  ; preds = %UpdateBits.exit.loopexit, %UpdateBits.exit.outer
  %.0360.i = phi ptr [ %.0360.i.ph, %UpdateBits.exit.outer ], [ %.7.i, %UpdateBits.exit.loopexit ] ; 2 uses
  %.0358.i = phi i64 [ %.0358.i.ph, %UpdateBits.exit.outer ], [ %i.aij, %UpdateBits.exit.loopexit ] ; 6 uses
  %.0357.i = phi i64 [ %.0358.i.ph, %UpdateBits.exit.outer ], [ %i.aik, %UpdateBits.exit.loopexit ]
  %.0318.i = phi i64 [ %.0318.i.ph, %UpdateBits.exit.outer ], [ %i.aii, %UpdateBits.exit.loopexit ] ; 3 uses
  %.0.i = phi ptr [ %.0360.i.ph, %UpdateBits.exit.outer ], [ %i.cs, %UpdateBits.exit.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.c, ptr noundef nonnull align 16 dereferenceable(512) @kCmdHistoSeed, i64 512, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i, i64 %.0358.i ; 14 uses
  %i.ct = icmp samesign ugt i64 %.0358.i, 15
  br i1 %i.ct, label %bb.c, label %.thread103, !prof !23

bb.c:                                             ; preds = %UpdateBits.exit
  %i.cu = add nsw i64 %.0358.i, -5
  %i.cv = add i64 %.0318.i, -16
  %i.cw = tail call i64 @llvm.umin.i64(i64 %i.cu, i64 range(i64 -15, -16) %i.cv)
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.cw ; 6 uses
  %i.cy = ptrtoint ptr %i.cs to i64
  %i.cz = add i64 %i.cy, -5                       ; 2 uses
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
  %i.da = sext i32 %.0344.i.fr to i64
  %i.db = sub nsw i64 0, %i.da
  %i.dc = icmp sgt i32 %.0344.i.fr, 0
  br i1 %i.dc, label %.split.us, label %.split, !prof !24

.split.us:                                        ; preds = %.thread76, %.loopexit.split.us206
  %.1339.i.us = phi i64 [ %i.dk, %.loopexit.split.us206 ], [ %.0338.i.in, %.thread76 ]
  %.0336.i.us = phi i32 [ %i.di, %.loopexit.split.us206 ], [ 32, %.thread76 ] ; 2 uses
  %.0334.i.us = phi ptr [ %i.dh, %.loopexit.split.us206 ], [ %.0350.i, %.thread76 ] ; 2 uses
  %i.dd = lshr i32 %.0336.i.us, 5
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %.0334.i.us, i64 %i.de ; 2 uses
  %i.dg = icmp ugt ptr %i.df, %i.cx
  br i1 %i.dg, label %.thread103, label %.lr.ph185.us, !prof !25

.lr.ph185.us:                                     ; preds = %.split.us, %.critedge.backedge.us205
  %i.dh = phi ptr [ %i.eg, %.critedge.backedge.us205 ], [ %i.df, %.split.us ] ; 4 uses
  %.in275 = phi i32 [ %i.di, %.critedge.backedge.us205 ], [ %.0336.i.us, %.split.us ]
  %.1335.i183.us195 = phi ptr [ %i.dh, %.critedge.backedge.us205 ], [ %.0334.i.us, %.split.us ] ; 8 uses
  %.2340.i182.us196 = phi i64 [ %i.dk, %.critedge.backedge.us205 ], [ %.1339.i.us, %.split.us ] ; 2 uses
  %i.di = add i32 %.in275, 1                      ; 3 uses
  %.0.copyload.i41.us197 = load i64, ptr %i.dh, align 1
  %i.dj = mul i64 %.0.copyload.i41.us197, 8503243848024064
  %i.dk = lshr i64 %i.dj, 53                      ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %.1335.i183.us195, i64 %i.db ; 3 uses
  %.0.copyload.i47.us198 = load i32, ptr %.1335.i183.us195, align 1
  %.0.copyload.i46.us199 = load i32, ptr %i.dl, align 1
  %i.dm = icmp eq i32 %.0.copyload.i47.us198, %.0.copyload.i46.us199
  br i1 %i.dm, label %IsMatch.exit7.us200, label %IsMatch.exit7.thread.us201

IsMatch.exit7.us200:                              ; preds = %.lr.ph185.us
  %i.dn = getelementptr inbounds nuw i8, ptr %.1335.i183.us195, i64 4
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !18
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !18
  %i.dr = icmp eq i8 %i.do, %i.dq
  br i1 %i.dr, label %bb.d, label %IsMatch.exit7.thread.us201, !prof !24

IsMatch.exit7.thread.us201:                       ; preds = %IsMatch.exit7.us200, %.lr.ph185.us
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.2340.i182.us196 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !26
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds i8, ptr %1, i64 %i.du ; 3 uses
  %i.dw = ptrtoint ptr %.1335.i183.us195 to i64   ; 2 uses
  %i.dx = sub i64 %i.dw, %i.bz
  %i.dy = trunc i64 %i.dx to i32
  store i32 %i.dy, ptr %i.ds, align 4, !tbaa !26
  %.0.copyload.i51.us202 = load i32, ptr %.1335.i183.us195, align 1
  %.0.copyload.i50.us203 = load i32, ptr %i.dv, align 1
  %i.dz = icmp eq i32 %.0.copyload.i51.us202, %.0.copyload.i50.us203
  br i1 %i.dz, label %IsMatch.exit.us204, label %.critedge.backedge.us205

IsMatch.exit.us204:                               ; preds = %IsMatch.exit7.thread.us201
  %i.ea = getelementptr inbounds nuw i8, ptr %.1335.i183.us195, i64 4
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !18
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !18
  %.not276 = icmp eq i8 %i.eb, %i.ed
  br i1 %.not276, label %.loopexit.split.us206, label %.critedge.backedge.us205, !prof !27

.critedge.backedge.us205:                         ; preds = %IsMatch.exit.us204, %IsMatch.exit7.thread.us201
  %i.ee = lshr i32 %i.di, 5
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.ef ; 2 uses
  %i.eh = icmp ugt ptr %i.eg, %i.cx
  br i1 %i.eh, label %.thread103, label %.lr.ph185.us, !prof !28, !llvm.loop !2

bb.d:                                             ; preds = %IsMatch.exit7.us200
  %i.ei = ptrtoint ptr %.1335.i183.us195 to i64   ; 2 uses
  %i.ej = sub i64 %i.ei, %i.bz
  %i.ek = trunc i64 %i.ej to i32
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.2340.i182.us196
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !26
  br label %.loopexit.split.us206

.loopexit.split.us206:                            ; preds = %IsMatch.exit.us204, %bb.d
  %.pre-phi = phi i64 [ %i.ei, %bb.d ], [ %i.dw, %IsMatch.exit.us204 ] ; 2 uses
  %.2330.i69.us = phi ptr [ %i.dl, %bb.d ], [ %i.dv, %IsMatch.exit.us204 ] ; 2 uses
  %i.em = ptrtoint ptr %.2330.i69.us to i64
  %i.en = sub i64 %.pre-phi, %i.em                ; 2 uses
  %i.eo = icmp sgt i64 %i.en, 262128
  br i1 %i.eo, label %.split.us, label %.split216.us

.split:                                           ; preds = %.thread76, %.loopexit.split.us
  %.1339.i = phi i64 [ %i.ew, %.loopexit.split.us ], [ %.0338.i.in, %.thread76 ]
  %.0336.i = phi i32 [ %i.eu, %.loopexit.split.us ], [ 32, %.thread76 ] ; 2 uses
  %.0334.i = phi ptr [ %i.et, %.loopexit.split.us ], [ %.0350.i, %.thread76 ] ; 2 uses
  %i.ep = lshr i32 %.0336.i, 5
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %.0334.i, i64 %i.eq ; 2 uses
  %i.es = icmp ugt ptr %i.er, %i.cx
  br i1 %i.es, label %.thread103, label %.lr.ph185, !prof !25

.lr.ph185:                                        ; preds = %.split, %.critedge.backedge.us
  %i.et = phi ptr [ %i.fl, %.critedge.backedge.us ], [ %i.er, %.split ] ; 4 uses
  %.in = phi i32 [ %i.eu, %.critedge.backedge.us ], [ %.0336.i, %.split ]
  %.1335.i183.us = phi ptr [ %i.et, %.critedge.backedge.us ], [ %.0334.i, %.split ] ; 4 uses
  %.2340.i182.us = phi i64 [ %i.ew, %.critedge.backedge.us ], [ %.1339.i, %.split ]
  %i.eu = add i32 %.in, 1                         ; 3 uses
  %.0.copyload.i41.us = load i64, ptr %i.et, align 1
  %i.ev = mul i64 %.0.copyload.i41.us, 8503243848024064
  %i.ew = lshr i64 %i.ev, 53                      ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.2340.i182.us ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !26
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds i8, ptr %1, i64 %i.ez ; 4 uses
  %i.fb = ptrtoint ptr %.1335.i183.us to i64      ; 3 uses
  %i.fc = sub i64 %i.fb, %i.bz
  %i.fd = trunc i64 %i.fc to i32
  store i32 %i.fd, ptr %i.ex, align 4, !tbaa !26
  %.0.copyload.i51.us = load i32, ptr %.1335.i183.us, align 1
  %.0.copyload.i50.us = load i32, ptr %i.fa, align 1
  %i.fe = icmp eq i32 %.0.copyload.i51.us, %.0.copyload.i50.us
  br i1 %i.fe, label %IsMatch.exit.us, label %.critedge.backedge.us
end_hunk_1
begin_hunk_2_@BrotliCompressFragmentFastImpl11:bb.a
  %i.ava = shl nuw nsw i64 %i.auu, %i.auz
  %i.avb = or i64 %i.ava, %i.auy
  store i64 %i.avb, ptr %i.auw, align 1, !noalias !666
  %i.avc = add i64 %.epil.init647, %i.aur
  store i64 %i.avc, ptr %5, align 8, !tbaa !17, !alias.scope !666, !noalias !667
  br label %EmitLiterals.exit33

EmitLiterals.exit33.loopexit560.unr-lcssa:        ; preds = %bb.bn
  %lcmp.mod639.not = icmp eq i64 %xtraiter636, 0
  br i1 %lcmp.mod639.not, label %EmitLiterals.exit33, label %.epil.preheader629

.epil.preheader629:                               ; preds = %EmitLiterals.exit33.loopexit560.unr-lcssa, %EmitLongInsertLen.exit30
  %.0.i34270.epil.init = phi i64 [ 0, %EmitLongInsertLen.exit30 ], [ %i.aul, %EmitLiterals.exit33.loopexit560.unr-lcssa ]
  %.epil.init638 = phi i64 [ %.sink358, %EmitLongInsertLen.exit30 ], [ %i.auk, %EmitLiterals.exit33.loopexit560.unr-lcssa ] ; 3 uses
  %lcmp.mod640 = trunc i64 %i.aku to i1
  tail call void @llvm.assume(i1 %lcmp.mod640)
  %i.avd = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34270.epil.init
  %i.ave = load i8, ptr %i.avd, align 1, !tbaa !18
  %i.avf = zext i8 %i.ave to i64                  ; 2 uses
  %i.avg = getelementptr inbounds nuw i8, ptr %0, i64 %i.avf
  %i.avh = load i8, ptr %i.avg, align 1, !tbaa !18
  %i.avi = zext i8 %i.avh to i64
  %i.avj = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.avf
  %i.avk = load i16, ptr %i.avj, align 2, !tbaa !30
  %i.avl = zext i16 %i.avk to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !679)
  %i.avm = lshr i64 %.epil.init638, 3
  %i.avn = getelementptr inbounds nuw i8, ptr %6, i64 %i.avm ; 2 uses
  %i.avo = load i8, ptr %i.avn, align 1, !tbaa !18, !alias.scope !679, !noalias !678
  %i.avp = zext i8 %i.avo to i64
  %i.avq = and i64 %.epil.init638, 7
  %i.avr = shl nuw nsw i64 %i.avl, %i.avq
  %i.avs = or i64 %i.avr, %i.avp
  store i64 %i.avs, ptr %i.avn, align 1, !noalias !678
  %i.avt = add i64 %.epil.init638, %i.avi
  store i64 %i.avt, ptr %5, align 8, !tbaa !17, !alias.scope !678, !noalias !679
  br label %EmitLiterals.exit33

EmitLiterals.exit33:                              ; preds = %.epil.preheader629, %EmitLiterals.exit33.loopexit560.unr-lcssa, %.epil.preheader643, %EmitLiterals.exit33.loopexit.unr-lcssa, %EmitInsertLen.exit27, %.thread76.thread118, %bb.bj, %bb.ay
  %.8.i = phi ptr [ %.us-phi221, %.thread76.thread118 ], [ %i.cs, %bb.ay ], [ %i.cs, %EmitInsertLen.exit27 ], [ %i.cs, %bb.bj ], [ %i.cs, %.epil.preheader643 ], [ %i.cs, %EmitLiterals.exit33.loopexit.unr-lcssa ], [ %i.cs, %EmitLiterals.exit33.loopexit560.unr-lcssa ], [ %i.cs, %.epil.preheader629 ] ; 2 uses
  %.5323.i = phi i64 [ %i.lm, %.thread76.thread118 ], [ %i.aii, %bb.ay ], [ %i.aii, %EmitInsertLen.exit27 ], [ %i.aii, %bb.bj ], [ %i.aii, %.epil.preheader643 ], [ %i.aii, %EmitLiterals.exit33.loopexit.unr-lcssa ], [ %i.aii, %EmitLiterals.exit33.loopexit560.unr-lcssa ], [ %i.aii, %.epil.preheader629 ] ; 4 uses
  %.not393.i = icmp eq i64 %.5323.i, 0
  br i1 %.not393.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %EmitLiterals.exit33
  %i.avu = tail call i64 @llvm.umin.i64(i64 %.5323.i, i64 98304) ; 3 uses
  %i.avv = load i64, ptr %5, align 8, !tbaa !17   ; 3 uses
  %i.avw = add i64 %i.avv, 3                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !682)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !683)
  %i.avx = lshr i64 %i.avv, 3
  %i.avy = getelementptr inbounds nuw i8, ptr %6, i64 %i.avx ; 2 uses
  %i.avz = load i8, ptr %i.avy, align 1, !tbaa !18, !alias.scope !683, !noalias !682
  %i.awa = zext i8 %i.avz to i64
  store i64 %i.awa, ptr %i.avy, align 1, !noalias !682
  %i.awb = add i64 %i.avv, 1                      ; 3 uses
  store i64 %i.awb, ptr %5, align 8, !tbaa !17, !alias.scope !682, !noalias !683
  %i.awc = icmp ult i64 %.5323.i, 65537
  %.0.i57 = select i1 %i.awc, i64 4, i64 5        ; 2 uses
  %i.awd = add nsw i64 %.0.i57, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !684)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !685)
  %i.awe = lshr i64 %i.awb, 3
  %i.awf = getelementptr inbounds nuw i8, ptr %6, i64 %i.awe ; 2 uses
  %i.awg = load i8, ptr %i.awf, align 1, !tbaa !18, !alias.scope !685, !noalias !684
  %i.awh = zext i8 %i.awg to i64
  %i.awi = and i64 %i.awb, 7
  %i.awj = shl nuw nsw i64 %i.awd, %i.awi
  %i.awk = or i64 %i.awj, %i.awh
  store i64 %i.awk, ptr %i.awf, align 1, !noalias !684
  store i64 %i.avw, ptr %5, align 8, !tbaa !17, !alias.scope !684, !noalias !685
  %i.awl = shl nuw nsw i64 %.0.i57, 2
  %i.awm = add nsw i64 %i.avu, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !687)
  %i.awn = lshr i64 %i.avw, 3
  %i.awo = getelementptr inbounds nuw i8, ptr %6, i64 %i.awn ; 2 uses
  %i.awp = load i8, ptr %i.awo, align 1, !tbaa !18, !alias.scope !687, !noalias !686
  %i.awq = zext i8 %i.awp to i64
  %i.awr = and i64 %i.avw, 7
  %i.aws = shl nuw nsw i64 %i.awm, %i.awr
  %i.awt = or i64 %i.aws, %i.awq
  store i64 %i.awt, ptr %i.awo, align 1, !noalias !686
  %i.awu = add i64 %i.avw, %i.awl                 ; 4 uses
  store i64 %i.awu, ptr %5, align 8, !tbaa !17, !alias.scope !686, !noalias !687
  tail call void @llvm.experimental.noalias.scope.decl(metadata !688)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !689)
  %i.awv = lshr i64 %i.awu, 3
  %i.aww = getelementptr inbounds nuw i8, ptr %6, i64 %i.awv ; 2 uses
  %i.awx = load i8, ptr %i.aww, align 1, !tbaa !18, !alias.scope !689, !noalias !688
  %i.awy = zext i8 %i.awx to i64
  store i64 %i.awy, ptr %i.aww, align 1, !noalias !688
  %i.awz = add i64 %i.awu, 1                      ; 2 uses
  store i64 %i.awz, ptr %5, align 8, !tbaa !17, !alias.scope !688, !noalias !689
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !691)
  %i.axa = lshr i64 %i.awz, 3
  %i.axb = getelementptr inbounds nuw i8, ptr %6, i64 %i.axa ; 2 uses
  %i.axc = load i8, ptr %i.axb, align 1, !tbaa !18, !alias.scope !691, !noalias !690
  %i.axd = zext i8 %i.axc to i64
  store i64 %i.axd, ptr %i.axb, align 1, !noalias !690
  %i.axe = add i64 %i.awu, 14
  store i64 %i.axe, ptr %5, align 8, !tbaa !17, !alias.scope !690, !noalias !691
  %i.axf = tail call fastcc i64 @BuildAndStoreLiteralPrefixCode(ptr noundef %0, ptr noundef %.8.i, i64 noundef %i.avu, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  tail call fastcc void @BuildAndStoreCommandPrefixCode(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %6)
  br label %UpdateBits.exit.outer

bb.bp:                                            ; preds = %EmitLiterals.exit33
  %.not394.i = icmp eq i32 %3, 0
  br i1 %.not394.i, label %bb.bq, label %BrotliCompressFragmentFastImpl.exit

bb.bq:                                            ; preds = %bb.bp
  store i8 0, ptr %i.bm, align 8, !tbaa !18
  store i64 0, ptr %i.aq, align 8, !tbaa !21
  tail call fastcc void @BuildAndStoreCommandPrefixCode(ptr noundef %0, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.bm)
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
  %i.bh = add i64 %.0343.i181, 8                  ; 2 uses
  %7 = or disjoint i64 %i.bh, 7
  %i.bi = load i64, ptr %i.aq, align 8, !tbaa !21 ; 2 uses
  %i.bj = icmp ult i64 %7, %i.bi
  br i1 %i.bj, label %bb.b, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.bk = phi i64 [ %.pre359, %bb.a ], [ %i.bg, %bb.b ] ; 3 uses
  %.lcssa179 = phi i64 [ %i.ar, %bb.a ], [ %i.bi, %bb.b ] ; 2 uses
  %i.bl = and i64 %.lcssa179, 7
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 3 uses
  %i.bn = lshr i64 %.lcssa179, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !18
  %i.bq = zext i8 %i.bp to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !893)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !894)
  %i.br = lshr i64 %i.bk, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 %i.br ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !18, !alias.scope !894, !noalias !893
  %i.bu = zext i8 %i.bt to i64
  %i.bv = and i64 %i.bk, 7
  %i.bw = shl nuw nsw i64 %i.bq, %i.bv
  %i.bx = or i64 %i.bw, %i.bu
  store i64 %i.bx, ptr %i.bs, align 1, !noalias !893
  %i.by = add i64 %i.bk, %i.bl
  store i64 %i.by, ptr %5, align 8, !tbaa !17, !alias.scope !893, !noalias !894
  %i.bz = ptrtoint ptr %1 to i64                  ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 831 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1022 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1404 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 830 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1020 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 829 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1018 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1396 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 8 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 807 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 974 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1308 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 6288 ; 3 uses
  br label %UpdateBits.exit.outer

UpdateBits.exit.outer:                            ; preds = %bb.bo, %._crit_edge
  %.0360.i.ph = phi ptr [ %.8.i, %bb.bo ], [ %1, %._crit_edge ] ; 5 uses
  %.0358.i.ph = phi i64 [ %i.avu, %bb.bo ], [ %i.e, %._crit_edge ] ; 2 uses
  %.0356.i.ph = phi i64 [ %i.avw, %bb.bo ], [ %i.g, %._crit_edge ] ; 3 uses
  %.0355.i.ph = phi i64 [ %i.axf, %bb.bo ], [ %i.ap, %._crit_edge ]
  %.0318.i.ph = phi i64 [ %.5323.i, %bb.bo ], [ %2, %._crit_edge ]
  %i.cq = ptrtoint ptr %.0360.i.ph to i64         ; 2 uses
  %i.cr = icmp ult i64 %.0355.i.ph, 981           ; 2 uses
  br label %UpdateBits.exit

UpdateBits.exit.loopexit:                         ; preds = %bb.ax
  br label %UpdateBits.exit, !llvm.loop !1

UpdateBits.exit:                                  ; preds = %UpdateBits.exit.loopexit, %UpdateBits.exit.outer
  %.0360.i = phi ptr [ %.0360.i.ph, %UpdateBits.exit.outer ], [ %.7.i, %UpdateBits.exit.loopexit ] ; 2 uses
  %.0358.i = phi i64 [ %.0358.i.ph, %UpdateBits.exit.outer ], [ %i.aij, %UpdateBits.exit.loopexit ] ; 6 uses
  %.0357.i = phi i64 [ %.0358.i.ph, %UpdateBits.exit.outer ], [ %i.aik, %UpdateBits.exit.loopexit ]
  %.0318.i = phi i64 [ %.0318.i.ph, %UpdateBits.exit.outer ], [ %i.aii, %UpdateBits.exit.loopexit ] ; 3 uses
  %.0.i = phi ptr [ %.0360.i.ph, %UpdateBits.exit.outer ], [ %i.cs, %UpdateBits.exit.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.c, ptr noundef nonnull align 16 dereferenceable(512) @kCmdHistoSeed, i64 512, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i, i64 %.0358.i ; 14 uses
  %i.ct = icmp samesign ugt i64 %.0358.i, 15
  br i1 %i.ct, label %bb.c, label %.thread103, !prof !23

bb.c:                                             ; preds = %UpdateBits.exit
  %i.cu = add nsw i64 %.0358.i, -5
  %i.cv = add i64 %.0318.i, -16
  %i.cw = tail call i64 @llvm.umin.i64(i64 %i.cu, i64 range(i64 -15, -16) %i.cv)
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.cw ; 6 uses
  %i.cy = ptrtoint ptr %i.cs to i64
  %i.cz = add i64 %i.cy, -5                       ; 2 uses
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
  %i.da = sext i32 %.0344.i.fr to i64
  %i.db = sub nsw i64 0, %i.da
  %i.dc = icmp sgt i32 %.0344.i.fr, 0
  br i1 %i.dc, label %.split.us, label %.split, !prof !24

.split.us:                                        ; preds = %.thread76, %.loopexit.split.us206
  %.1339.i.us = phi i64 [ %i.dk, %.loopexit.split.us206 ], [ %.0338.i.in, %.thread76 ]
  %.0336.i.us = phi i32 [ %i.di, %.loopexit.split.us206 ], [ 32, %.thread76 ] ; 2 uses
  %.0334.i.us = phi ptr [ %i.dh, %.loopexit.split.us206 ], [ %.0350.i, %.thread76 ] ; 2 uses
  %i.dd = lshr i32 %.0336.i.us, 5
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %.0334.i.us, i64 %i.de ; 2 uses
  %i.dg = icmp ugt ptr %i.df, %i.cx
  br i1 %i.dg, label %.thread103, label %.lr.ph185.us, !prof !25

.lr.ph185.us:                                     ; preds = %.split.us, %.critedge.backedge.us205
  %i.dh = phi ptr [ %i.eg, %.critedge.backedge.us205 ], [ %i.df, %.split.us ] ; 4 uses
  %.in275 = phi i32 [ %i.di, %.critedge.backedge.us205 ], [ %.0336.i.us, %.split.us ]
  %.1335.i183.us195 = phi ptr [ %i.dh, %.critedge.backedge.us205 ], [ %.0334.i.us, %.split.us ] ; 8 uses
  %.2340.i182.us196 = phi i64 [ %i.dk, %.critedge.backedge.us205 ], [ %.1339.i.us, %.split.us ] ; 2 uses
  %i.di = add i32 %.in275, 1                      ; 3 uses
  %.0.copyload.i41.us197 = load i64, ptr %i.dh, align 1
  %i.dj = mul i64 %.0.copyload.i41.us197, 8503243848024064
  %i.dk = lshr i64 %i.dj, 51                      ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %.1335.i183.us195, i64 %i.db ; 3 uses
  %.0.copyload.i47.us198 = load i32, ptr %.1335.i183.us195, align 1
  %.0.copyload.i46.us199 = load i32, ptr %i.dl, align 1
  %i.dm = icmp eq i32 %.0.copyload.i47.us198, %.0.copyload.i46.us199
  br i1 %i.dm, label %IsMatch.exit7.us200, label %IsMatch.exit7.thread.us201

IsMatch.exit7.us200:                              ; preds = %.lr.ph185.us
  %i.dn = getelementptr inbounds nuw i8, ptr %.1335.i183.us195, i64 4
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !18
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !18
  %i.dr = icmp eq i8 %i.do, %i.dq
  br i1 %i.dr, label %bb.d, label %IsMatch.exit7.thread.us201, !prof !24

IsMatch.exit7.thread.us201:                       ; preds = %IsMatch.exit7.us200, %.lr.ph185.us
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.2340.i182.us196 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !26
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds i8, ptr %1, i64 %i.du ; 3 uses
  %i.dw = ptrtoint ptr %.1335.i183.us195 to i64   ; 2 uses
  %i.dx = sub i64 %i.dw, %i.bz
  %i.dy = trunc i64 %i.dx to i32
  store i32 %i.dy, ptr %i.ds, align 4, !tbaa !26
  %.0.copyload.i51.us202 = load i32, ptr %.1335.i183.us195, align 1
  %.0.copyload.i50.us203 = load i32, ptr %i.dv, align 1
  %i.dz = icmp eq i32 %.0.copyload.i51.us202, %.0.copyload.i50.us203
  br i1 %i.dz, label %IsMatch.exit.us204, label %.critedge.backedge.us205

IsMatch.exit.us204:                               ; preds = %IsMatch.exit7.thread.us201
  %i.ea = getelementptr inbounds nuw i8, ptr %.1335.i183.us195, i64 4
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !18
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !18
  %.not276 = icmp eq i8 %i.eb, %i.ed
  br i1 %.not276, label %.loopexit.split.us206, label %.critedge.backedge.us205, !prof !27

.critedge.backedge.us205:                         ; preds = %IsMatch.exit.us204, %IsMatch.exit7.thread.us201
  %i.ee = lshr i32 %i.di, 5
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.ef ; 2 uses
  %i.eh = icmp ugt ptr %i.eg, %i.cx
  br i1 %i.eh, label %.thread103, label %.lr.ph185.us, !prof !28, !llvm.loop !2

bb.d:                                             ; preds = %IsMatch.exit7.us200
  %i.ei = ptrtoint ptr %.1335.i183.us195 to i64   ; 2 uses
  %i.ej = sub i64 %i.ei, %i.bz
  %i.ek = trunc i64 %i.ej to i32
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.2340.i182.us196
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !26
  br label %.loopexit.split.us206

.loopexit.split.us206:                            ; preds = %IsMatch.exit.us204, %bb.d
  %.pre-phi = phi i64 [ %i.ei, %bb.d ], [ %i.dw, %IsMatch.exit.us204 ] ; 2 uses
  %.2330.i69.us = phi ptr [ %i.dl, %bb.d ], [ %i.dv, %IsMatch.exit.us204 ] ; 2 uses
  %i.em = ptrtoint ptr %.2330.i69.us to i64
  %i.en = sub i64 %.pre-phi, %i.em                ; 2 uses
  %i.eo = icmp sgt i64 %i.en, 262128
  br i1 %i.eo, label %.split.us, label %.split216.us

.split:                                           ; preds = %.thread76, %.loopexit.split.us
  %.1339.i = phi i64 [ %i.ew, %.loopexit.split.us ], [ %.0338.i.in, %.thread76 ]
  %.0336.i = phi i32 [ %i.eu, %.loopexit.split.us ], [ 32, %.thread76 ] ; 2 uses
  %.0334.i = phi ptr [ %i.et, %.loopexit.split.us ], [ %.0350.i, %.thread76 ] ; 2 uses
  %i.ep = lshr i32 %.0336.i, 5
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %.0334.i, i64 %i.eq ; 2 uses
  %i.es = icmp ugt ptr %i.er, %i.cx
  br i1 %i.es, label %.thread103, label %.lr.ph185, !prof !25

.lr.ph185:                                        ; preds = %.split, %.critedge.backedge.us
  %i.et = phi ptr [ %i.fl, %.critedge.backedge.us ], [ %i.er, %.split ] ; 4 uses
  %.in = phi i32 [ %i.eu, %.critedge.backedge.us ], [ %.0336.i, %.split ]
  %.1335.i183.us = phi ptr [ %i.et, %.critedge.backedge.us ], [ %.0334.i, %.split ] ; 4 uses
  %.2340.i182.us = phi i64 [ %i.ew, %.critedge.backedge.us ], [ %.1339.i, %.split ]
  %i.eu = add i32 %.in, 1                         ; 3 uses
  %.0.copyload.i41.us = load i64, ptr %i.et, align 1
  %i.ev = mul i64 %.0.copyload.i41.us, 8503243848024064
  %i.ew = lshr i64 %i.ev, 51                      ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.2340.i182.us ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !26
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds i8, ptr %1, i64 %i.ez ; 4 uses
  %i.fb = ptrtoint ptr %.1335.i183.us to i64      ; 3 uses
  %i.fc = sub i64 %i.fb, %i.bz
  %i.fd = trunc i64 %i.fc to i32
  store i32 %i.fd, ptr %i.ex, align 4, !tbaa !26
  %.0.copyload.i51.us = load i32, ptr %.1335.i183.us, align 1
  %.0.copyload.i50.us = load i32, ptr %i.fa, align 1
  %i.fe = icmp eq i32 %.0.copyload.i51.us, %.0.copyload.i50.us
  br i1 %i.fe, label %IsMatch.exit.us, label %.critedge.backedge.us
end_hunk_2
begin_hunk_3_@BrotliCompressFragmentFastImpl13:bb.a
  %i.ava = shl nuw nsw i64 %i.auu, %i.auz
  %i.avb = or i64 %i.ava, %i.auy
  store i64 %i.avb, ptr %i.auw, align 1, !noalias !983
  %i.avc = add i64 %.epil.init647, %i.aur
  store i64 %i.avc, ptr %5, align 8, !tbaa !17, !alias.scope !983, !noalias !984
  br label %EmitLiterals.exit33

EmitLiterals.exit33.loopexit560.unr-lcssa:        ; preds = %bb.bn
  %lcmp.mod639.not = icmp eq i64 %xtraiter636, 0
  br i1 %lcmp.mod639.not, label %EmitLiterals.exit33, label %.epil.preheader629

.epil.preheader629:                               ; preds = %EmitLiterals.exit33.loopexit560.unr-lcssa, %EmitLongInsertLen.exit30
  %.0.i34270.epil.init = phi i64 [ 0, %EmitLongInsertLen.exit30 ], [ %i.aul, %EmitLiterals.exit33.loopexit560.unr-lcssa ]
  %.epil.init638 = phi i64 [ %.sink358, %EmitLongInsertLen.exit30 ], [ %i.auk, %EmitLiterals.exit33.loopexit560.unr-lcssa ] ; 3 uses
  %lcmp.mod640 = trunc i64 %i.aku to i1
  tail call void @llvm.assume(i1 %lcmp.mod640)
  %i.avd = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34270.epil.init
  %i.ave = load i8, ptr %i.avd, align 1, !tbaa !18
  %i.avf = zext i8 %i.ave to i64                  ; 2 uses
  %i.avg = getelementptr inbounds nuw i8, ptr %0, i64 %i.avf
  %i.avh = load i8, ptr %i.avg, align 1, !tbaa !18
  %i.avi = zext i8 %i.avh to i64
  %i.avj = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.avf
  %i.avk = load i16, ptr %i.avj, align 2, !tbaa !30
  %i.avl = zext i16 %i.avk to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !995)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !996)
  %i.avm = lshr i64 %.epil.init638, 3
  %i.avn = getelementptr inbounds nuw i8, ptr %6, i64 %i.avm ; 2 uses
  %i.avo = load i8, ptr %i.avn, align 1, !tbaa !18, !alias.scope !996, !noalias !995
  %i.avp = zext i8 %i.avo to i64
  %i.avq = and i64 %.epil.init638, 7
  %i.avr = shl nuw nsw i64 %i.avl, %i.avq
  %i.avs = or i64 %i.avr, %i.avp
  store i64 %i.avs, ptr %i.avn, align 1, !noalias !995
  %i.avt = add i64 %.epil.init638, %i.avi
  store i64 %i.avt, ptr %5, align 8, !tbaa !17, !alias.scope !995, !noalias !996
  br label %EmitLiterals.exit33

EmitLiterals.exit33:                              ; preds = %.epil.preheader629, %EmitLiterals.exit33.loopexit560.unr-lcssa, %.epil.preheader643, %EmitLiterals.exit33.loopexit.unr-lcssa, %EmitInsertLen.exit27, %.thread76.thread118, %bb.bj, %bb.ay
  %.8.i = phi ptr [ %.us-phi221, %.thread76.thread118 ], [ %i.cs, %bb.ay ], [ %i.cs, %EmitInsertLen.exit27 ], [ %i.cs, %bb.bj ], [ %i.cs, %.epil.preheader643 ], [ %i.cs, %EmitLiterals.exit33.loopexit.unr-lcssa ], [ %i.cs, %EmitLiterals.exit33.loopexit560.unr-lcssa ], [ %i.cs, %.epil.preheader629 ] ; 2 uses
  %.5323.i = phi i64 [ %i.lm, %.thread76.thread118 ], [ %i.aii, %bb.ay ], [ %i.aii, %EmitInsertLen.exit27 ], [ %i.aii, %bb.bj ], [ %i.aii, %.epil.preheader643 ], [ %i.aii, %EmitLiterals.exit33.loopexit.unr-lcssa ], [ %i.aii, %EmitLiterals.exit33.loopexit560.unr-lcssa ], [ %i.aii, %.epil.preheader629 ] ; 4 uses
  %.not393.i = icmp eq i64 %.5323.i, 0
  br i1 %.not393.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %EmitLiterals.exit33
  %i.avu = tail call i64 @llvm.umin.i64(i64 %.5323.i, i64 98304) ; 3 uses
  %i.avv = load i64, ptr %5, align 8, !tbaa !17   ; 3 uses
  %i.avw = add i64 %i.avv, 3                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !999)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1000)
  %i.avx = lshr i64 %i.avv, 3
  %i.avy = getelementptr inbounds nuw i8, ptr %6, i64 %i.avx ; 2 uses
  %i.avz = load i8, ptr %i.avy, align 1, !tbaa !18, !alias.scope !1000, !noalias !999
  %i.awa = zext i8 %i.avz to i64
  store i64 %i.awa, ptr %i.avy, align 1, !noalias !999
  %i.awb = add i64 %i.avv, 1                      ; 3 uses
  store i64 %i.awb, ptr %5, align 8, !tbaa !17, !alias.scope !999, !noalias !1000
  %i.awc = icmp ult i64 %.5323.i, 65537
  %.0.i57 = select i1 %i.awc, i64 4, i64 5        ; 2 uses
  %i.awd = add nsw i64 %.0.i57, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  %i.awe = lshr i64 %i.awb, 3
  %i.awf = getelementptr inbounds nuw i8, ptr %6, i64 %i.awe ; 2 uses
  %i.awg = load i8, ptr %i.awf, align 1, !tbaa !18, !alias.scope !1002, !noalias !1001
  %i.awh = zext i8 %i.awg to i64
  %i.awi = and i64 %i.awb, 7
  %i.awj = shl nuw nsw i64 %i.awd, %i.awi
  %i.awk = or i64 %i.awj, %i.awh
  store i64 %i.awk, ptr %i.awf, align 1, !noalias !1001
  store i64 %i.avw, ptr %5, align 8, !tbaa !17, !alias.scope !1001, !noalias !1002
  %i.awl = shl nuw nsw i64 %.0.i57, 2
  %i.awm = add nsw i64 %i.avu, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1003)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1004)
  %i.awn = lshr i64 %i.avw, 3
  %i.awo = getelementptr inbounds nuw i8, ptr %6, i64 %i.awn ; 2 uses
  %i.awp = load i8, ptr %i.awo, align 1, !tbaa !18, !alias.scope !1004, !noalias !1003
  %i.awq = zext i8 %i.awp to i64
  %i.awr = and i64 %i.avw, 7
  %i.aws = shl nuw nsw i64 %i.awm, %i.awr
  %i.awt = or i64 %i.aws, %i.awq
  store i64 %i.awt, ptr %i.awo, align 1, !noalias !1003
  %i.awu = add i64 %i.avw, %i.awl                 ; 4 uses
  store i64 %i.awu, ptr %5, align 8, !tbaa !17, !alias.scope !1003, !noalias !1004
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1006)
  %i.awv = lshr i64 %i.awu, 3
  %i.aww = getelementptr inbounds nuw i8, ptr %6, i64 %i.awv ; 2 uses
  %i.awx = load i8, ptr %i.aww, align 1, !tbaa !18, !alias.scope !1006, !noalias !1005
  %i.awy = zext i8 %i.awx to i64
  store i64 %i.awy, ptr %i.aww, align 1, !noalias !1005
  %i.awz = add i64 %i.awu, 1                      ; 2 uses
  store i64 %i.awz, ptr %5, align 8, !tbaa !17, !alias.scope !1005, !noalias !1006
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1007)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1008)
  %i.axa = lshr i64 %i.awz, 3
  %i.axb = getelementptr inbounds nuw i8, ptr %6, i64 %i.axa ; 2 uses
  %i.axc = load i8, ptr %i.axb, align 1, !tbaa !18, !alias.scope !1008, !noalias !1007
  %i.axd = zext i8 %i.axc to i64
  store i64 %i.axd, ptr %i.axb, align 1, !noalias !1007
  %i.axe = add i64 %i.awu, 14
  store i64 %i.axe, ptr %5, align 8, !tbaa !17, !alias.scope !1007, !noalias !1008
  %i.axf = tail call fastcc i64 @BuildAndStoreLiteralPrefixCode(ptr noundef %0, ptr noundef %.8.i, i64 noundef %i.avu, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  tail call fastcc void @BuildAndStoreCommandPrefixCode(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %6)
  br label %UpdateBits.exit.outer

bb.bp:                                            ; preds = %EmitLiterals.exit33
  %.not394.i = icmp eq i32 %3, 0
  br i1 %.not394.i, label %bb.bq, label %BrotliCompressFragmentFastImpl.exit

bb.bq:                                            ; preds = %bb.bp
  store i8 0, ptr %i.bm, align 8, !tbaa !18
  store i64 0, ptr %i.aq, align 8, !tbaa !21
  tail call fastcc void @BuildAndStoreCommandPrefixCode(ptr noundef %0, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.bm)
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
  %i.bh = add i64 %.0343.i181, 8                  ; 2 uses
  %7 = or disjoint i64 %i.bh, 7
  %i.bi = load i64, ptr %i.aq, align 8, !tbaa !21 ; 2 uses
  %i.bj = icmp ult i64 %7, %i.bi
  br i1 %i.bj, label %bb.b, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.bk = phi i64 [ %.pre359, %bb.a ], [ %i.bg, %bb.b ] ; 3 uses
  %.lcssa179 = phi i64 [ %i.ar, %bb.a ], [ %i.bi, %bb.b ] ; 2 uses
  %i.bl = and i64 %.lcssa179, 7
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 3 uses
  %i.bn = lshr i64 %.lcssa179, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !18
  %i.bq = zext i8 %i.bp to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  %i.br = lshr i64 %i.bk, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 %i.br ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !18, !alias.scope !1211, !noalias !1210
  %i.bu = zext i8 %i.bt to i64
  %i.bv = and i64 %i.bk, 7
  %i.bw = shl nuw nsw i64 %i.bq, %i.bv
  %i.bx = or i64 %i.bw, %i.bu
  store i64 %i.bx, ptr %i.bs, align 1, !noalias !1210
  %i.by = add i64 %i.bk, %i.bl
  store i64 %i.by, ptr %5, align 8, !tbaa !17, !alias.scope !1210, !noalias !1211
  %i.bz = ptrtoint ptr %1 to i64                  ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 831 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1022 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1404 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 830 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1020 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 829 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1018 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1396 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 8 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 807 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 974 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1308 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 6288 ; 3 uses
  br label %UpdateBits.exit.outer

UpdateBits.exit.outer:                            ; preds = %bb.bo, %._crit_edge
  %.0360.i.ph = phi ptr [ %.8.i, %bb.bo ], [ %1, %._crit_edge ] ; 5 uses
  %.0358.i.ph = phi i64 [ %i.avu, %bb.bo ], [ %i.e, %._crit_edge ] ; 2 uses
  %.0356.i.ph = phi i64 [ %i.avw, %bb.bo ], [ %i.g, %._crit_edge ] ; 3 uses
  %.0355.i.ph = phi i64 [ %i.axf, %bb.bo ], [ %i.ap, %._crit_edge ]
  %.0318.i.ph = phi i64 [ %.5323.i, %bb.bo ], [ %2, %._crit_edge ]
  %i.cq = ptrtoint ptr %.0360.i.ph to i64         ; 2 uses
  %i.cr = icmp ult i64 %.0355.i.ph, 981           ; 2 uses
  br label %UpdateBits.exit

UpdateBits.exit.loopexit:                         ; preds = %bb.ax
  br label %UpdateBits.exit, !llvm.loop !1

UpdateBits.exit:                                  ; preds = %UpdateBits.exit.loopexit, %UpdateBits.exit.outer
  %.0360.i = phi ptr [ %.0360.i.ph, %UpdateBits.exit.outer ], [ %.7.i, %UpdateBits.exit.loopexit ] ; 2 uses
  %.0358.i = phi i64 [ %.0358.i.ph, %UpdateBits.exit.outer ], [ %i.aij, %UpdateBits.exit.loopexit ] ; 6 uses
  %.0357.i = phi i64 [ %.0358.i.ph, %UpdateBits.exit.outer ], [ %i.aik, %UpdateBits.exit.loopexit ]
  %.0318.i = phi i64 [ %.0318.i.ph, %UpdateBits.exit.outer ], [ %i.aii, %UpdateBits.exit.loopexit ] ; 3 uses
  %.0.i = phi ptr [ %.0360.i.ph, %UpdateBits.exit.outer ], [ %i.cs, %UpdateBits.exit.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.c, ptr noundef nonnull align 16 dereferenceable(512) @kCmdHistoSeed, i64 512, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i, i64 %.0358.i ; 14 uses
  %i.ct = icmp samesign ugt i64 %.0358.i, 15
  br i1 %i.ct, label %bb.c, label %.thread103, !prof !23

bb.c:                                             ; preds = %UpdateBits.exit
  %i.cu = add nsw i64 %.0358.i, -5
  %i.cv = add i64 %.0318.i, -16
  %i.cw = tail call i64 @llvm.umin.i64(i64 %i.cu, i64 range(i64 -15, -16) %i.cv)
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.cw ; 6 uses
  %i.cy = ptrtoint ptr %i.cs to i64
  %i.cz = add i64 %i.cy, -5                       ; 2 uses
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
  %i.da = sext i32 %.0344.i.fr to i64
  %i.db = sub nsw i64 0, %i.da
  %i.dc = icmp sgt i32 %.0344.i.fr, 0
  br i1 %i.dc, label %.split.us, label %.split, !prof !24

.split.us:                                        ; preds = %.thread76, %.loopexit.split.us206
  %.1339.i.us = phi i64 [ %i.dk, %.loopexit.split.us206 ], [ %.0338.i.in, %.thread76 ]
  %.0336.i.us = phi i32 [ %i.di, %.loopexit.split.us206 ], [ 32, %.thread76 ] ; 2 uses
  %.0334.i.us = phi ptr [ %i.dh, %.loopexit.split.us206 ], [ %.0350.i, %.thread76 ] ; 2 uses
  %i.dd = lshr i32 %.0336.i.us, 5
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %.0334.i.us, i64 %i.de ; 2 uses
  %i.dg = icmp ugt ptr %i.df, %i.cx
  br i1 %i.dg, label %.thread103, label %.lr.ph185.us, !prof !25

.lr.ph185.us:                                     ; preds = %.split.us, %.critedge.backedge.us205
  %i.dh = phi ptr [ %i.eg, %.critedge.backedge.us205 ], [ %i.df, %.split.us ] ; 4 uses
  %.in275 = phi i32 [ %i.di, %.critedge.backedge.us205 ], [ %.0336.i.us, %.split.us ]
  %.1335.i183.us195 = phi ptr [ %i.dh, %.critedge.backedge.us205 ], [ %.0334.i.us, %.split.us ] ; 8 uses
  %.2340.i182.us196 = phi i64 [ %i.dk, %.critedge.backedge.us205 ], [ %.1339.i.us, %.split.us ] ; 2 uses
  %i.di = add i32 %.in275, 1                      ; 3 uses
  %.0.copyload.i41.us197 = load i64, ptr %i.dh, align 1
  %i.dj = mul i64 %.0.copyload.i41.us197, 8503243848024064
  %i.dk = lshr i64 %i.dj, 49                      ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %.1335.i183.us195, i64 %i.db ; 3 uses
  %.0.copyload.i47.us198 = load i32, ptr %.1335.i183.us195, align 1
  %.0.copyload.i46.us199 = load i32, ptr %i.dl, align 1
  %i.dm = icmp eq i32 %.0.copyload.i47.us198, %.0.copyload.i46.us199
  br i1 %i.dm, label %IsMatch.exit7.us200, label %IsMatch.exit7.thread.us201

IsMatch.exit7.us200:                              ; preds = %.lr.ph185.us
  %i.dn = getelementptr inbounds nuw i8, ptr %.1335.i183.us195, i64 4
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !18
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !18
  %i.dr = icmp eq i8 %i.do, %i.dq
  br i1 %i.dr, label %bb.d, label %IsMatch.exit7.thread.us201, !prof !24

IsMatch.exit7.thread.us201:                       ; preds = %IsMatch.exit7.us200, %.lr.ph185.us
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.2340.i182.us196 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !26
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds i8, ptr %1, i64 %i.du ; 3 uses
  %i.dw = ptrtoint ptr %.1335.i183.us195 to i64   ; 2 uses
  %i.dx = sub i64 %i.dw, %i.bz
  %i.dy = trunc i64 %i.dx to i32
  store i32 %i.dy, ptr %i.ds, align 4, !tbaa !26
  %.0.copyload.i51.us202 = load i32, ptr %.1335.i183.us195, align 1
  %.0.copyload.i50.us203 = load i32, ptr %i.dv, align 1
  %i.dz = icmp eq i32 %.0.copyload.i51.us202, %.0.copyload.i50.us203
  br i1 %i.dz, label %IsMatch.exit.us204, label %.critedge.backedge.us205

IsMatch.exit.us204:                               ; preds = %IsMatch.exit7.thread.us201
  %i.ea = getelementptr inbounds nuw i8, ptr %.1335.i183.us195, i64 4
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !18
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !18
  %.not276 = icmp eq i8 %i.eb, %i.ed
  br i1 %.not276, label %.loopexit.split.us206, label %.critedge.backedge.us205, !prof !27

.critedge.backedge.us205:                         ; preds = %IsMatch.exit.us204, %IsMatch.exit7.thread.us201
  %i.ee = lshr i32 %i.di, 5
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.ef ; 2 uses
  %i.eh = icmp ugt ptr %i.eg, %i.cx
  br i1 %i.eh, label %.thread103, label %.lr.ph185.us, !prof !28, !llvm.loop !2

bb.d:                                             ; preds = %IsMatch.exit7.us200
  %i.ei = ptrtoint ptr %.1335.i183.us195 to i64   ; 2 uses
  %i.ej = sub i64 %i.ei, %i.bz
  %i.ek = trunc i64 %i.ej to i32
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.2340.i182.us196
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !26
  br label %.loopexit.split.us206

.loopexit.split.us206:                            ; preds = %IsMatch.exit.us204, %bb.d
  %.pre-phi = phi i64 [ %i.ei, %bb.d ], [ %i.dw, %IsMatch.exit.us204 ] ; 2 uses
  %.2330.i69.us = phi ptr [ %i.dl, %bb.d ], [ %i.dv, %IsMatch.exit.us204 ] ; 2 uses
  %i.em = ptrtoint ptr %.2330.i69.us to i64
  %i.en = sub i64 %.pre-phi, %i.em                ; 2 uses
  %i.eo = icmp sgt i64 %i.en, 262128
  br i1 %i.eo, label %.split.us, label %.split216.us

.split:                                           ; preds = %.thread76, %.loopexit.split.us
  %.1339.i = phi i64 [ %i.ew, %.loopexit.split.us ], [ %.0338.i.in, %.thread76 ]
  %.0336.i = phi i32 [ %i.eu, %.loopexit.split.us ], [ 32, %.thread76 ] ; 2 uses
  %.0334.i = phi ptr [ %i.et, %.loopexit.split.us ], [ %.0350.i, %.thread76 ] ; 2 uses
  %i.ep = lshr i32 %.0336.i, 5
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %.0334.i, i64 %i.eq ; 2 uses
  %i.es = icmp ugt ptr %i.er, %i.cx
  br i1 %i.es, label %.thread103, label %.lr.ph185, !prof !25

.lr.ph185:                                        ; preds = %.split, %.critedge.backedge.us
  %i.et = phi ptr [ %i.fl, %.critedge.backedge.us ], [ %i.er, %.split ] ; 4 uses
  %.in = phi i32 [ %i.eu, %.critedge.backedge.us ], [ %.0336.i, %.split ]
  %.1335.i183.us = phi ptr [ %i.et, %.critedge.backedge.us ], [ %.0334.i, %.split ] ; 4 uses
  %.2340.i182.us = phi i64 [ %i.ew, %.critedge.backedge.us ], [ %.1339.i, %.split ]
  %i.eu = add i32 %.in, 1                         ; 3 uses
  %.0.copyload.i41.us = load i64, ptr %i.et, align 1
  %i.ev = mul i64 %.0.copyload.i41.us, 8503243848024064
  %i.ew = lshr i64 %i.ev, 49                      ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.2340.i182.us ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !26
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds i8, ptr %1, i64 %i.ez ; 4 uses
  %i.fb = ptrtoint ptr %.1335.i183.us to i64      ; 3 uses
  %i.fc = sub i64 %i.fb, %i.bz
  %i.fd = trunc i64 %i.fc to i32
  store i32 %i.fd, ptr %i.ex, align 4, !tbaa !26
  %.0.copyload.i51.us = load i32, ptr %.1335.i183.us, align 1
  %.0.copyload.i50.us = load i32, ptr %i.fa, align 1
  %i.fe = icmp eq i32 %.0.copyload.i51.us, %.0.copyload.i50.us
  br i1 %i.fe, label %IsMatch.exit.us, label %.critedge.backedge.us
end_hunk_3
