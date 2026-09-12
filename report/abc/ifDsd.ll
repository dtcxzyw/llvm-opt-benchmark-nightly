Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ifDsd?download=true
inline.NumInlined: 897
inline.NumDeleted: 161
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 42
begin_hunk_0_@If_DsdManPrintDecs:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(60) %i.a, i8 0, i64 60, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(60) %i.b, i8 0, i64 60, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(60) %i.c, i8 0, i64 60, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1080) %i.d, i8 0, i64 1080, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34   ; 11 uses
  %.not163 = icmp slt i32 %i.f, 3
  br i1 %.not163, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.i = icmp samesign ult i32 %i.f, 7            ; 2 uses
  %i.j = add nsw i32 %i.f, -6                     ; 2 uses
  %i.k = shl nuw i32 1, %i.j                      ; 2 uses
  %i.l = sext i32 %i.k to i64
  %.idx.i.i = shl nsw i64 %i.l, 3                 ; 2 uses
  %smax56.i.i = tail call i32 @llvm.smax.i32(i32 %i.k, i32 1)
  %wide.trip.count57.i.i = zext nneg i32 %smax56.i.i to i64 ; 2 uses
  %.not48.i.i = icmp eq i32 %i.j, 31              ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.f to i64  ; 2 uses
  %i.m = add nuw i32 %i.f, 1
  %wide.trip.count196 = zext i32 %i.m to i64
  %exitcond55.not.i.us.2 = icmp eq i32 %i.f, 3
  %exitcond55.not.i.us.3 = icmp eq i32 %i.f, 4
  %exitcond55.not.i.us.4 = icmp eq i32 %i.f, 5
  %exitcond55.not.i142.2 = icmp eq i32 %i.f, 3
  %exitcond55.not.i142.3 = icmp eq i32 %i.f, 4
  %exitcond55.not.i142.4 = icmp eq i32 %i.f, 5
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge2
  %indvars.iv193 = phi i64 [ 3, %.preheader.lr.ph ], [ %indvars.iv.next194, %.critedge2 ] ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv193
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !75   ; 3 uses
  %i.p = getelementptr i8, ptr %i.o, i64 4
  %.val92 = load i32, ptr %i.p, align 4, !tbaa !35 ; 3 uses
  %i.q = icmp sgt i32 %.val92, 0
  br i1 %i.q, label %.lr.ph.i.lr.ph, label %.critedge2

.lr.ph.i.lr.ph:                                   ; preds = %.preheader
  %i.r = getelementptr i8, ptr %i.o, i64 8
  %.val94 = load ptr, ptr %i.r, align 8, !tbaa !38 ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv193
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !71   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !86   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !67   ; 2 uses
  %i.y = load i32, ptr %i.t, align 8, !tbaa !66   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !68  ; 2 uses
  %wide.trip.count186 = zext nneg i32 %.val92 to i64 ; 2 uses
  br i1 %i.i, label %.lr.ph.i.us, label %.lr.ph.i

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.lr.ph, %Abc_TtSupportSize.exit.loopexit.us
  %indvars.iv183 = phi i64 [ %indvars.iv.next184, %Abc_TtSupportSize.exit.loopexit.us ], [ 0, %.lr.ph.i.lr.ph ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.val94, i64 %indvars.iv183
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !39
  %i.ad = trunc nuw nsw i64 %indvars.iv183 to i32 ; 2 uses
  %i.ae = lshr i32 %i.ad, %i.x
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !62
  %i.ai = and i32 %i.aa, %i.ad
  %i.aj = mul nsw i32 %i.ai, %i.y
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !63 ; 12 uses
  %i.an = lshr i64 %i.am, 1
  %i.ao = xor i64 %i.an, %i.am
  %.fr = freeze i64 %i.ao
  %i.ap = and i64 %.fr, 6148914691236517205
  %.not17.us.i.us = icmp ne i64 %i.ap, 0
  %i.aq = zext i1 %.not17.us.i.us to i64
  %i.ar = lshr i64 %i.am, 2
  %i.as = xor i64 %i.ar, %i.am
  %.fr229 = freeze i64 %i.as
  %i.at = and i64 %.fr229, 3689348814741910323
  %.not17.us.i.us.1 = icmp ne i64 %i.at, 0
  %i.au = zext i1 %.not17.us.i.us.1 to i64
  %spec.select.i.us.1 = add nuw nsw i64 %i.aq, %i.au
  %i.av = lshr i64 %i.am, 4
  %i.aw = xor i64 %i.av, %i.am
  %.fr230 = freeze i64 %i.aw
  %i.ax = and i64 %.fr230, 1085102592571150095
  %.not17.us.i.us.2 = icmp ne i64 %i.ax, 0
  %i.ay = zext i1 %.not17.us.i.us.2 to i64
  %spec.select.i.us.2 = add nuw nsw i64 %spec.select.i.us.1, %i.ay ; 2 uses
  br i1 %exitcond55.not.i.us.2, label %Abc_TtSupportSize.exit.loopexit.us, label %Abc_TtHasVar.exit.us.i.us.3

Abc_TtHasVar.exit.us.i.us.3:                      ; preds = %.lr.ph.i.us
  %i.az = lshr i64 %i.am, 8
  %i.ba = xor i64 %i.az, %i.am
  %.fr231 = freeze i64 %i.ba
  %i.bb = and i64 %.fr231, 71777214294589695
  %.not17.us.i.us.3 = icmp ne i64 %i.bb, 0
  %i.bc = zext i1 %.not17.us.i.us.3 to i64
  %spec.select.i.us.3 = add nuw nsw i64 %spec.select.i.us.2, %i.bc ; 2 uses
  br i1 %exitcond55.not.i.us.3, label %Abc_TtSupportSize.exit.loopexit.us, label %Abc_TtHasVar.exit.us.i.us.4

Abc_TtHasVar.exit.us.i.us.4:                      ; preds = %Abc_TtHasVar.exit.us.i.us.3
  %i.bd = lshr i64 %i.am, 16
  %i.be = xor i64 %i.bd, %i.am
  %.fr232 = freeze i64 %i.be
  %i.bf = and i64 %.fr232, 281470681808895
  %.not17.us.i.us.4 = icmp ne i64 %i.bf, 0
  %i.bg = zext i1 %.not17.us.i.us.4 to i64
  %spec.select.i.us.4 = add nuw nsw i64 %spec.select.i.us.3, %i.bg ; 2 uses
  br i1 %exitcond55.not.i.us.4, label %Abc_TtSupportSize.exit.loopexit.us, label %Abc_TtHasVar.exit.us.i.us.5

Abc_TtHasVar.exit.us.i.us.5:                      ; preds = %Abc_TtHasVar.exit.us.i.us.4
  %i.bh = lshr i64 %i.am, 32
  %.masked = and i64 %i.am, 4294967295
  %i.bi = xor i64 %i.bh, %.masked
  %.fr.us.i.us.5 = freeze i64 %i.bi
  %.not17.us.i.us.5 = icmp ne i64 %.fr.us.i.us.5, 0
  %i.bj = zext i1 %.not17.us.i.us.5 to i64
  %spec.select.i.us.5 = add nuw nsw i64 %spec.select.i.us.4, %i.bj
  br label %Abc_TtSupportSize.exit.loopexit.us

Abc_TtSupportSize.exit.loopexit.us:               ; preds = %Abc_TtHasVar.exit.us.i.us.5, %Abc_TtHasVar.exit.us.i.us.4, %Abc_TtHasVar.exit.us.i.us.3, %.lr.ph.i.us
  %spec.select.i.us.lcssa = phi i64 [ %spec.select.i.us.5, %Abc_TtHasVar.exit.us.i.us.5 ], [ %spec.select.i.us.4, %Abc_TtHasVar.exit.us.i.us.4 ], [ %spec.select.i.us.2, %.lr.ph.i.us ], [ %spec.select.i.us.3, %Abc_TtHasVar.exit.us.i.us.3 ]
  %i.bk = and i64 %spec.select.i.us.lcssa, 4294967295
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bk ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !55
  %i.bn = getelementptr i8, ptr %i.ac, i64 4
  %.val98.us = load i32, ptr %i.bn, align 4, !tbaa !52
  %i.bo = tail call noundef i32 @llvm.smax.i32(i32 %i.bm, i32 %.val98.us)
  store i32 %i.bo, ptr %i.bl, align 4, !tbaa !55
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1 ; 2 uses
  %exitcond187.not = icmp eq i64 %indvars.iv.next184, %wide.trip.count186
  br i1 %exitcond187.not, label %.lr.ph.i100.lr.ph, label %.lr.ph.i.us, !llvm.loop !182

.lr.ph.i100.lr.ph:                                ; preds = %Abc_TtSupportSize.exit, %Abc_TtSupportSize.exit.loopexit.us
  %i.bp = getelementptr i8, ptr %i.o, i64 8
  %.val93 = load ptr, ptr %i.bp, align 8, !tbaa !38
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv193
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !71 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !86
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !67
  %i.bw = load i32, ptr %i.br, align 8, !tbaa !66
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !68
  %wide.trip.count191 = zext nneg i32 %.val92 to i64
  br label %.lr.ph.i100

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %Abc_TtSupportSize.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %Abc_TtSupportSize.exit ], [ 0, %.lr.ph.i.lr.ph ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.val94, i64 %indvars.iv
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !39
  %i.cb = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.cc = lshr i32 %i.cb, %i.x
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !62
  %i.cg = and i32 %i.aa, %i.cb
  %i.ch = mul nsw i32 %i.cg, %i.y
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.ci ; 3 uses
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 %.idx.i.i
  br i1 %.not48.i.i, label %Abc_TtSupportSize.exit, label %.lr.ph.split.split.split.i

.lr.ph.split.split.split.i:                       ; preds = %.lr.ph.i, %Abc_TtHasVar.exit.thread.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %Abc_TtHasVar.exit.thread.i ], [ 0, %.lr.ph.i ] ; 5 uses
  %.022.i = phi i32 [ %i.di, %Abc_TtHasVar.exit.thread.i ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.cl = icmp samesign ult i64 %indvars.iv.i, 6
  br i1 %i.cl, label %.lr.ph.i.i, label %.preheader.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.split.split.split.i
  %i.cm = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.cn = shl nuw nsw i32 1, %i.cm
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.i
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !63
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next54.i.i = add nuw nsw i64 %indvars.iv53.i.i, 1 ; 2 uses
  %exitcond58.not.i.i = icmp eq i64 %indvars.iv.next54.i.i, %wide.trip.count57.i.i
  br i1 %exitcond58.not.i.i, label %Abc_TtHasVar.exit.thread.i, label %bb.c, !llvm.loop !183

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i
  %indvars.iv53.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next54.i.i, %bb.b ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %indvars.iv53.i.i
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !63 ; 2 uses
  %i.ct = lshr i64 %i.cs, %i.co
  %i.cu = xor i64 %i.ct, %i.cs
  %i.cv = and i64 %i.cu, %i.cq
  %.not39.i.i = icmp eq i64 %i.cv, 0
  br i1 %.not39.i.i, label %bb.b, label %Abc_TtHasVar.exit.thread13.i

.preheader.lr.ph.i.i:                             ; preds = %.lr.ph.split.split.split.i
  %i.cw = add nsw i64 %indvars.iv.i, -6           ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 31
  %i.cy = trunc nsw i64 %i.cw to i32              ; 2 uses
  %i.cz = shl i32 2, %i.cy
  %i.da = sext i32 %i.cz to i64
  br i1 %i.cx, label %Abc_TtHasVar.exit.thread.i, label %.preheader.us.preheader.i.i

.preheader.us.preheader.i.i:                      ; preds = %.preheader.lr.ph.i.i
  %i.db = shl nuw i32 1, %i.cy                    ; 2 uses
  %2 = sext i32 %i.db to i64
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %i.db, i32 1)
  %wide.trip.count.i.i = zext nneg i32 %smax.i.i to i64
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %._crit_edge.us.i.i, %.preheader.us.preheader.i.i
  %.03343.us.i.i = phi ptr [ %i.df, %._crit_edge.us.i.i ], [ %i.cj, %.preheader.us.preheader.i.i ] ; 3 uses
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %.03343.us.i.i, i64 %2
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.us.i.i, label %bb.e, !llvm.loop !184

bb.e:                                             ; preds = %bb.d, %.preheader.us.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.us.i.i ], [ %indvars.iv.next.i.i, %bb.d ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.03343.us.i.i, i64 %indvars.iv.i.i
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !63
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %i.de = load i64, ptr %gep.i.i, align 8, !tbaa !63
  %.not.us.i.i = icmp eq i64 %i.dd, %i.de
  br i1 %.not.us.i.i, label %bb.d, label %Abc_TtHasVar.exit.thread13.i

._crit_edge.us.i.i:                               ; preds = %bb.d
  %i.df = getelementptr inbounds [8 x i8], ptr %.03343.us.i.i, i64 %i.da ; 2 uses
  %i.dg = icmp ult ptr %i.df, %i.ck
  br i1 %i.dg, label %.preheader.us.i.i, label %Abc_TtHasVar.exit.thread.i, !llvm.loop !185

Abc_TtHasVar.exit.thread13.i:                     ; preds = %bb.c, %bb.e
  %i.dh = add nsw i32 %.022.i, 1
  br label %Abc_TtHasVar.exit.thread.i

Abc_TtHasVar.exit.thread.i:                       ; preds = %._crit_edge.us.i.i, %bb.b, %Abc_TtHasVar.exit.thread13.i, %.preheader.lr.ph.i.i
  %i.di = phi i32 [ %i.dh, %Abc_TtHasVar.exit.thread13.i ], [ %.022.i, %bb.b ], [ %.022.i, %.preheader.lr.ph.i.i ], [ %.022.i, %._crit_edge.us.i.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Abc_TtSupportSize.exit.loopexit, label %.lr.ph.split.split.split.i, !llvm.loop !186

Abc_TtSupportSize.exit.loopexit:                  ; preds = %Abc_TtHasVar.exit.thread.i
  %i.dj = sext i32 %i.di to i64
  br label %Abc_TtSupportSize.exit

Abc_TtSupportSize.exit:                           ; preds = %Abc_TtSupportSize.exit.loopexit, %.lr.ph.i
  %.0.lcssa.i = phi i64 [ 0, %.lr.ph.i ], [ %i.dj, %Abc_TtSupportSize.exit.loopexit ]
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.0.lcssa.i ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !55
  %i.dm = getelementptr i8, ptr %i.ca, i64 4
  %.val98 = load i32, ptr %i.dm, align 4, !tbaa !52
  %i.dn = tail call noundef i32 @llvm.smax.i32(i32 %i.dl, i32 %.val98)
  store i32 %i.dn, ptr %i.dk, align 4, !tbaa !55
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count186
  br i1 %exitcond.not, label %.lr.ph.i100.lr.ph, label %.lr.ph.i, !llvm.loop !182

.lr.ph.i100:                                      ; preds = %.lr.ph.i100.lr.ph, %Abc_TtSupportSize.exit143
  %indvars.iv188 = phi i64 [ 0, %.lr.ph.i100.lr.ph ], [ %indvars.iv.next189, %Abc_TtSupportSize.exit143 ] ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.val93, i64 %indvars.iv188
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !39
  %i.dq = trunc nuw nsw i64 %indvars.iv188 to i32 ; 2 uses
  %i.dr = lshr i32 %i.dq, %i.bv
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.ds
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !62
  %i.dv = and i32 %i.by, %i.dq
  %i.dw = mul nsw i32 %i.dv, %i.bw
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.du, i64 %i.dx ; 4 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 %.idx.i.i
  br i1 %i.i, label %.lr.ph.split.us.i133, label %.lr.ph.split.i104

.lr.ph.split.us.i133:                             ; preds = %.lr.ph.i100
  %i.ea = load i64, ptr %i.dy, align 8, !tbaa !63 ; 12 uses
  %i.eb = lshr i64 %i.ea, 1
  %i.ec = xor i64 %i.eb, %i.ea
  %.fr233 = freeze i64 %i.ec
  %i.ed = and i64 %.fr233, 6148914691236517205
  %.not17.us.i139 = icmp ne i64 %i.ed, 0
  %i.ee = zext i1 %.not17.us.i139 to i32
  %i.ef = lshr i64 %i.ea, 2
  %i.eg = xor i64 %i.ef, %i.ea
  %.fr234 = freeze i64 %i.eg
  %i.eh = and i64 %.fr234, 3689348814741910323
  %.not17.us.i139.1 = icmp ne i64 %i.eh, 0
  %i.ei = zext i1 %.not17.us.i139.1 to i32
  %spec.select.i140.1 = add nuw nsw i32 %i.ee, %i.ei
  %i.ej = lshr i64 %i.ea, 4
  %i.ek = xor i64 %i.ej, %i.ea
  %.fr235 = freeze i64 %i.ek
  %i.el = and i64 %.fr235, 1085102592571150095
  %.not17.us.i139.2 = icmp ne i64 %i.el, 0
  %i.em = zext i1 %.not17.us.i139.2 to i32
  %spec.select.i140.2 = add nuw nsw i32 %spec.select.i140.1, %i.em ; 2 uses
  br i1 %exitcond55.not.i142.2, label %Abc_TtSupportSize.exit143, label %Abc_TtHasVar.exit.us.i135.3

Abc_TtHasVar.exit.us.i135.3:                      ; preds = %.lr.ph.split.us.i133
  %i.en = lshr i64 %i.ea, 8
  %i.eo = xor i64 %i.en, %i.ea
  %.fr236 = freeze i64 %i.eo
  %i.ep = and i64 %.fr236, 71777214294589695
  %.not17.us.i139.3 = icmp ne i64 %i.ep, 0
  %i.eq = zext i1 %.not17.us.i139.3 to i32
  %spec.select.i140.3 = add nuw nsw i32 %spec.select.i140.2, %i.eq ; 2 uses
  br i1 %exitcond55.not.i142.3, label %Abc_TtSupportSize.exit143, label %Abc_TtHasVar.exit.us.i135.4

Abc_TtHasVar.exit.us.i135.4:                      ; preds = %Abc_TtHasVar.exit.us.i135.3
  %i.er = lshr i64 %i.ea, 16
  %i.es = xor i64 %i.er, %i.ea
  %.fr237 = freeze i64 %i.es
  %i.et = and i64 %.fr237, 281470681808895
  %.not17.us.i139.4 = icmp ne i64 %i.et, 0
  %i.eu = zext i1 %.not17.us.i139.4 to i32
  %spec.select.i140.4 = add nuw nsw i32 %spec.select.i140.3, %i.eu ; 2 uses
  br i1 %exitcond55.not.i142.4, label %Abc_TtSupportSize.exit143, label %Abc_TtHasVar.exit.us.i135.5

Abc_TtHasVar.exit.us.i135.5:                      ; preds = %Abc_TtHasVar.exit.us.i135.4
  %i.ev = lshr i64 %i.ea, 32
  %.masked238 = and i64 %i.ea, 4294967295
  %i.ew = xor i64 %i.ev, %.masked238
  %.fr.us.i138.5 = freeze i64 %i.ew
  %.not17.us.i139.5 = icmp ne i64 %.fr.us.i138.5, 0
  %i.ex = zext i1 %.not17.us.i139.5 to i32
  %spec.select.i140.5 = add nuw nsw i32 %spec.select.i140.4, %i.ex
  br label %Abc_TtSupportSize.exit143

.lr.ph.split.i104:                                ; preds = %.lr.ph.i100
  br i1 %.not48.i.i, label %Abc_TtSupportSize.exit143, label %.lr.ph.split.split.split.i108

.lr.ph.split.split.split.i108:                    ; preds = %.lr.ph.split.i104, %Abc_TtHasVar.exit.thread.i122
  %indvars.iv.i109 = phi i64 [ %indvars.iv.next.i123, %Abc_TtHasVar.exit.thread.i122 ], [ 0, %.lr.ph.split.i104 ] ; 5 uses
  %.022.i110 = phi i32 [ %i.fv, %Abc_TtHasVar.exit.thread.i122 ], [ 0, %.lr.ph.split.i104 ] ; 4 uses
  %i.ey = icmp samesign ult i64 %indvars.iv.i109, 6
  br i1 %i.ey, label %.lr.ph.i.i128, label %.preheader.lr.ph.i.i111

.lr.ph.i.i128:                                    ; preds = %.lr.ph.split.split.split.i108
  %i.ez = trunc nuw nsw i64 %indvars.iv.i109 to i32
  %i.fa = shl nuw nsw i32 1, %i.ez
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.i109
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !63
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next54.i.i131 = add nuw nsw i64 %indvars.iv53.i.i129, 1 ; 2 uses
  %exitcond58.not.i.i132 = icmp eq i64 %indvars.iv.next54.i.i131, %wide.trip.count57.i.i
  br i1 %exitcond58.not.i.i132, label %Abc_TtHasVar.exit.thread.i122, label %bb.g, !llvm.loop !183

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i128
  %indvars.iv53.i.i129 = phi i64 [ 0, %.lr.ph.i.i128 ], [ %indvars.iv.next54.i.i131, %bb.f ] ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv53.i.i129
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !63 ; 2 uses
  %i.fg = lshr i64 %i.ff, %i.fb
  %i.fh = xor i64 %i.fg, %i.ff
  %i.fi = and i64 %i.fh, %i.fd
  %.not39.i.i130 = icmp eq i64 %i.fi, 0
  br i1 %.not39.i.i130, label %bb.f, label %Abc_TtHasVar.exit.thread13.i121

.preheader.lr.ph.i.i111:                          ; preds = %.lr.ph.split.split.split.i108
  %i.fj = add nsw i64 %indvars.iv.i109, -6        ; 2 uses
  %i.fk = icmp eq i64 %i.fj, 31
  %i.fl = trunc nsw i64 %i.fj to i32              ; 2 uses
  %i.fm = shl i32 2, %i.fl
  %i.fn = sext i32 %i.fm to i64
  br i1 %i.fk, label %Abc_TtHasVar.exit.thread.i122, label %.preheader.us.preheader.i.i112

.preheader.us.preheader.i.i112:                   ; preds = %.preheader.lr.ph.i.i111
  %i.fo = shl nuw i32 1, %i.fl                    ; 2 uses
  %3 = sext i32 %i.fo to i64
  %smax.i.i113 = tail call i32 @llvm.smax.i32(i32 %i.fo, i32 1)
  %wide.trip.count.i.i114 = zext nneg i32 %smax.i.i113 to i64
  br label %.preheader.us.i.i115

.preheader.us.i.i115:                             ; preds = %._crit_edge.us.i.i127, %.preheader.us.preheader.i.i112
  %.03343.us.i.i116 = phi ptr [ %i.fs, %._crit_edge.us.i.i127 ], [ %i.dy, %.preheader.us.preheader.i.i112 ] ; 3 uses
  %invariant.gep.i.i117 = getelementptr [8 x i8], ptr %.03343.us.i.i116, i64 %3
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next.i.i125 = add nuw nsw i64 %indvars.iv.i.i118, 1 ; 2 uses
  %exitcond.not.i.i126 = icmp eq i64 %indvars.iv.next.i.i125, %wide.trip.count.i.i114
  br i1 %exitcond.not.i.i126, label %._crit_edge.us.i.i127, label %bb.i, !llvm.loop !184

bb.i:                                             ; preds = %bb.h, %.preheader.us.i.i115
  %indvars.iv.i.i118 = phi i64 [ 0, %.preheader.us.i.i115 ], [ %indvars.iv.next.i.i125, %bb.h ] ; 3 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %.03343.us.i.i116, i64 %indvars.iv.i.i118
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !63
  %gep.i.i119 = getelementptr [8 x i8], ptr %invariant.gep.i.i117, i64 %indvars.iv.i.i118
  %i.fr = load i64, ptr %gep.i.i119, align 8, !tbaa !63
  %.not.us.i.i120 = icmp eq i64 %i.fq, %i.fr
  br i1 %.not.us.i.i120, label %bb.h, label %Abc_TtHasVar.exit.thread13.i121

._crit_edge.us.i.i127:                            ; preds = %bb.h
  %i.fs = getelementptr inbounds [8 x i8], ptr %.03343.us.i.i116, i64 %i.fn ; 2 uses
  %i.ft = icmp ult ptr %i.fs, %i.dz
  br i1 %i.ft, label %.preheader.us.i.i115, label %Abc_TtHasVar.exit.thread.i122, !llvm.loop !185

Abc_TtHasVar.exit.thread13.i121:                  ; preds = %bb.g, %bb.i
  %i.fu = add nsw i32 %.022.i110, 1
  br label %Abc_TtHasVar.exit.thread.i122

Abc_TtHasVar.exit.thread.i122:                    ; preds = %._crit_edge.us.i.i127, %bb.f, %Abc_TtHasVar.exit.thread13.i121, %.preheader.lr.ph.i.i111
  %i.fv = phi i32 [ %i.fu, %Abc_TtHasVar.exit.thread13.i121 ], [ %.022.i110, %bb.f ], [ %.022.i110, %.preheader.lr.ph.i.i111 ], [ %.022.i110, %._crit_edge.us.i.i127 ] ; 2 uses
  %indvars.iv.next.i123 = add nuw nsw i64 %indvars.iv.i109, 1 ; 2 uses
  %exitcond.not.i124 = icmp eq i64 %indvars.iv.next.i123, %wide.trip.count.i
  br i1 %exitcond.not.i124, label %Abc_TtSupportSize.exit143, label %.lr.ph.split.split.split.i108, !llvm.loop !186

Abc_TtSupportSize.exit143:                        ; preds = %Abc_TtHasVar.exit.thread.i122, %.lr.ph.split.us.i133, %Abc_TtHasVar.exit.us.i135.3, %Abc_TtHasVar.exit.us.i135.4, %Abc_TtHasVar.exit.us.i135.5, %.lr.ph.split.i104
  %.0.lcssa.i99 = phi i32 [ %spec.select.i140.3, %Abc_TtHasVar.exit.us.i135.3 ], [ 0, %.lr.ph.split.i104 ], [ %spec.select.i140.5, %Abc_TtHasVar.exit.us.i135.5 ], [ %spec.select.i140.4, %Abc_TtHasVar.exit.us.i135.4 ], [ %spec.select.i140.2, %.lr.ph.split.us.i133 ], [ %i.fv, %Abc_TtHasVar.exit.thread.i122 ]
  %i.fw = sext i32 %.0.lcssa.i99 to i64           ; 3 uses
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.fw ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !55
  %i.fz = add nsw i32 %i.fy, 1
  store i32 %i.fz, ptr %i.fx, align 4, !tbaa !55
  %i.ga = getelementptr i8, ptr %i.dp, i64 4
  %.val96 = load i32, ptr %i.ga, align 4, !tbaa !52 ; 2 uses
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.fw ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !55
  %i.gd = add nsw i32 %i.gc, %.val96
  store i32 %i.gd, ptr %i.gb, align 4, !tbaa !55
  %i.ge = getelementptr inbounds [72 x i8], ptr %i.d, i64 %i.fw
  %i.gf = tail call noundef i32 @llvm.smin.i32(i32 %.val96, i32 17)
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.ge, i64 %i.gg ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !55
  %i.gj = add nsw i32 %i.gi, 1
  store i32 %i.gj, ptr %i.gh, align 4, !tbaa !55
  %indvars.iv.next189 = add nuw nsw i64 %indvars.iv188, 1 ; 2 uses
  %exitcond192.not = icmp eq i64 %indvars.iv.next189, %wide.trip.count191
  br i1 %exitcond192.not, label %.critedge2, label %.lr.ph.i100, !llvm.loop !187

.critedge2:                                       ; preds = %Abc_TtSupportSize.exit143, %.preheader
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 1 ; 2 uses
  %exitcond197.not = icmp eq i64 %indvars.iv.next194, %wide.trip.count196
  br i1 %exitcond197.not, label %._crit_edge, label %.preheader, !llvm.loop !188

._crit_edge:                                      ; preds = %.critedge2, %bb.a
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.19, i64 6, i64 1, ptr %0) ; 0 uses
  %fwrite80 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 8, i64 1, ptr %0) ; 0 uses
  %i.gk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef 0) #40 ; 0 uses
  %i.gl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef 1) #40 ; 0 uses
  %i.gm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef 2) #40 ; 0 uses
  %i.gn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef 3) #40 ; 0 uses
  %i.go = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef 4) #40 ; 0 uses
  %i.gp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef 5) #40 ; 0 uses
  %i.gq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef 6) #40 ; 0 uses
  %i.gr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef 7) #40 ; 0 uses
  %i.gs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef 8) #40 ; 0 uses
  %i.gt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef 9) #40 ; 0 uses
  %i.gu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef 10) #40 ; 0 uses
  %i.gv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef 11) #40 ; 0 uses
  %i.gw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef 12) #40 ; 0 uses
  %i.gx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef 13) #40 ; 0 uses
  %i.gy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef 14) #40 ; 0 uses
  %i.gz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef 15) #40 ; 0 uses
  %i.ha = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef 16) #40 ; 0 uses
  %fwrite81 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 2, i64 1, ptr %0) ; 0 uses
  %fwrite82 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 6, i64 1, ptr %0) ; 0 uses
  %fwrite83 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 8, i64 1, ptr %0) ; 0 uses
  %fwrite84 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 8, i64 1, ptr %0) ; 0 uses
  %fputc = tail call i32 @fputc(i32 10, ptr %0)   ; 0 uses
  %i.hb = load i32, ptr %i.e, align 8, !tbaa !34
  %.not86168 = icmp slt i32 %i.hb, 0
  br i1 %.not86168, label %._crit_edge171, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge, %.lr.ph
  %indvars.iv203 = phi i64 [ %indvars.iv.next204, %.lr.ph ], [ 0, %._crit_edge ] ; 7 uses
  %i.hc = trunc nuw nsw i64 %indvars.iv203 to i32
  %i.hd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, i32 noundef %i.hc) #40 ; 0 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv203
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !55 ; 2 uses
  %i.hg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef %i.hf) #40 ; 0 uses
  %i.hh = getelementptr inbounds nuw [72 x i8], ptr %i.d, i64 %indvars.iv203 ; 18 uses
  %i.hi = tail call noundef i32 @llvm.smax.i32(i32 %i.hf, i32 1)
  %i.hj = uitofp nneg i32 %i.hi to double         ; 19 uses
  %i.hk = load i32, ptr %i.hh, align 8, !tbaa !55
  %i.hl = sitofp i32 %i.hk to double
  %i.hm = fmul nnan double %i.hl, 1.000000e+02
  %i.hn = fdiv double %i.hm, %i.hj
  %i.ho = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, double noundef %i.hn) #40 ; 0 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !55
  %i.hr = sitofp i32 %i.hq to double
  %i.hs = fmul nnan double %i.hr, 1.000000e+02
  %i.ht = fdiv double %i.hs, %i.hj
  %i.hu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, double noundef %i.ht) #40 ; 0 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !55
  %i.hx = sitofp i32 %i.hw to double
  %i.hy = fmul nnan double %i.hx, 1.000000e+02
  %i.hz = fdiv double %i.hy, %i.hj
  %i.ia = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, double noundef %i.hz) #40 ; 0 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hh, i64 12
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !55
  %i.id = sitofp i32 %i.ic to double
  %i.ie = fmul nnan double %i.id, 1.000000e+02
  %i.if = fdiv double %i.ie, %i.hj
  %i.ig = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, double noundef %i.if) #40 ; 0 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !55
  %i.ij = sitofp i32 %i.ii to double
  %i.ik = fmul nnan double %i.ij, 1.000000e+02
  %i.il = fdiv double %i.ik, %i.hj
  %i.im = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, double noundef %i.il) #40 ; 0 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.hh, i64 20
  %i.io = load i32, ptr %i.in, align 4, !tbaa !55
  %i.ip = sitofp i32 %i.io to double
  %i.iq = fmul nnan double %i.ip, 1.000000e+02
  %i.ir = fdiv double %i.iq, %i.hj
  %i.is = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, double noundef %i.ir) #40 ; 0 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !55
  %i.iv = sitofp i32 %i.iu to double
  %i.iw = fmul nnan double %i.iv, 1.000000e+02
  %i.ix = fdiv double %i.iw, %i.hj
  %i.iy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, double noundef %i.ix) #40 ; 0 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hh, i64 28
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !55
  %i.jb = sitofp i32 %i.ja to double
  %i.jc = fmul nnan double %i.jb, 1.000000e+02
  %i.jd = fdiv double %i.jc, %i.hj
  %i.je = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, double noundef %i.jd) #40 ; 0 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.hh, i64 32
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !55
  %i.jh = sitofp i32 %i.jg to double
  %i.ji = fmul nnan double %i.jh, 1.000000e+02
  %i.jj = fdiv double %i.ji, %i.hj
  %i.jk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, double noundef %i.jj) #40 ; 0 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.hh, i64 36
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !55
  %i.jn = sitofp i32 %i.jm to double
  %i.jo = fmul nnan double %i.jn, 1.000000e+02
  %i.jp = fdiv double %i.jo, %i.hj
  %i.jq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, double noundef %i.jp) #40 ; 0 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.hh, i64 40
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !55
  %i.jt = sitofp i32 %i.js to double
  %i.ju = fmul nnan double %i.jt, 1.000000e+02
  %i.jv = fdiv double %i.ju, %i.hj
  %i.jw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, double noundef %i.jv) #40 ; 0 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.hh, i64 44
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !55
  %i.jz = sitofp i32 %i.jy to double
  %i.ka = fmul nnan double %i.jz, 1.000000e+02
  %i.kb = fdiv double %i.ka, %i.hj
  %i.kc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, double noundef %i.kb) #40 ; 0 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.hh, i64 48
  %i.ke = load i32, ptr %i.kd, align 8, !tbaa !55
  %i.kf = sitofp i32 %i.ke to double
  %i.kg = fmul nnan double %i.kf, 1.000000e+02
  %i.kh = fdiv double %i.kg, %i.hj
  %i.ki = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, double noundef %i.kh) #40 ; 0 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.hh, i64 52
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !55
  %i.kl = sitofp i32 %i.kk to double
  %i.km = fmul nnan double %i.kl, 1.000000e+02
  %i.kn = fdiv double %i.km, %i.hj
  %i.ko = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, double noundef %i.kn) #40 ; 0 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.hh, i64 56
  %i.kq = load i32, ptr %i.kp, align 8, !tbaa !55
  %i.kr = sitofp i32 %i.kq to double
  %i.ks = fmul nnan double %i.kr, 1.000000e+02
  %i.kt = fdiv double %i.ks, %i.hj
  %i.ku = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, double noundef %i.kt) #40 ; 0 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.hh, i64 60
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !55
  %i.kx = sitofp i32 %i.kw to double
  %i.ky = fmul nnan double %i.kx, 1.000000e+02
  %i.kz = fdiv double %i.ky, %i.hj
  %i.la = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, double noundef %i.kz) #40 ; 0 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.hh, i64 64
end_hunk_0
