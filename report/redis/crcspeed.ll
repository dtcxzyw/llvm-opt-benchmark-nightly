inline.NumInlined: 8
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 11
begin_hunk_0_@crcspeed64big_init:bb.a
  %i.f = load i64, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %i.g = and i64 %i.f, 255
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14
  %i.j = lshr i64 %i.f, 8
  %i.k = xor i64 %i.i, %i.j                       ; 3 uses
  %gep.i = getelementptr inbounds nuw i8, ptr %i.e, i64 2048
  store i64 %i.k, ptr %gep.i, align 8, !tbaa !14
  %i.l = and i64 %i.k, 255
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !14
  %i.o = lshr i64 %i.k, 8
  %i.p = xor i64 %i.n, %i.o                       ; 3 uses
  %gep.1.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4096
  store i64 %i.p, ptr %gep.1.i, align 8, !tbaa !14
  %i.q = and i64 %i.p, 255
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !14
  %i.t = lshr i64 %i.p, 8
  %i.u = xor i64 %i.s, %i.t                       ; 3 uses
  %gep.2.i = getelementptr inbounds nuw i8, ptr %i.e, i64 6144
  store i64 %i.u, ptr %gep.2.i, align 8, !tbaa !14
  %i.v = and i64 %i.u, 255
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !14
  %i.y = lshr i64 %i.u, 8
  %i.z = xor i64 %i.x, %i.y                       ; 3 uses
  %gep.3.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8192
  store i64 %i.z, ptr %gep.3.i, align 8, !tbaa !14
  %i.aa = and i64 %i.z, 255
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !14
  %i.ad = lshr i64 %i.z, 8
  %i.ae = xor i64 %i.ac, %i.ad                    ; 3 uses
  %gep.4.i = getelementptr inbounds nuw i8, ptr %i.e, i64 10240
  store i64 %i.ae, ptr %gep.4.i, align 8, !tbaa !14
  %i.af = and i64 %i.ae, 255
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !14
  %i.ai = lshr i64 %i.ae, 8
  %i.aj = xor i64 %i.ah, %i.ai                    ; 3 uses
  %gep.5.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12288
  store i64 %i.aj, ptr %gep.5.i, align 8, !tbaa !14
  %i.ak = and i64 %i.aj, 255
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !14
  %i.an = lshr i64 %i.aj, 8
  %i.ao = xor i64 %i.am, %i.an
  %gep.6.i = getelementptr inbounds nuw i8, ptr %i.e, i64 14336
  store i64 %i.ao, ptr %gep.6.i, align 8, !tbaa !14
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1 ; 2 uses
  %exitcond33.not.i = icmp eq i64 %indvars.iv.next31.i, 256
  br i1 %exitcond33.not.i, label %vector.body, label %.preheader.i, !llvm.loop !18

vector.body:                                      ; preds = %.preheader.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ap, align 8, !tbaa !14
  %wide.load19 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !14
  %i.ar = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load)
  %i.as = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load19)
  store <2 x i64> %i.ar, ptr %i.ap, align 8, !tbaa !14
  store <2 x i64> %i.as, ptr %i.aq, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, 256
  br i1 %i.at, label %crcspeed64little_init.exit, label %vector.body, !llvm.loop !24

crcspeed64little_init.exit:                       ; preds = %vector.body
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 2048
  br label %vector.body21

vector.body21:                                    ; preds = %vector.body21, %crcspeed64little_init.exit
  %index22 = phi i64 [ 0, %crcspeed64little_init.exit ], [ %index.next25, %vector.body21 ] ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index22 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %wide.load23 = load <2 x i64>, ptr %i.av, align 8, !tbaa !14
  %wide.load24 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !14
  %i.ax = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load23)
  %i.ay = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load24)
  store <2 x i64> %i.ax, ptr %i.av, align 8, !tbaa !14
  store <2 x i64> %i.ay, ptr %i.aw, align 8, !tbaa !14
  %index.next25 = add nuw i64 %index22, 4         ; 2 uses
  %i.az = icmp eq i64 %index.next25, 256
  br i1 %i.az, label %crcspeed64little_init.exit.1, label %vector.body21, !llvm.loop !27

crcspeed64little_init.exit.1:                     ; preds = %vector.body21
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 4096
  br label %vector.body28

vector.body28:                                    ; preds = %vector.body28, %crcspeed64little_init.exit.1
  %index29 = phi i64 [ 0, %crcspeed64little_init.exit.1 ], [ %index.next32, %vector.body28 ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %index29 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %wide.load30 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !14
  %wide.load31 = load <2 x i64>, ptr %i.bc, align 8, !tbaa !14
  %i.bd = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load30)
  %i.be = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load31)
  store <2 x i64> %i.bd, ptr %i.bb, align 8, !tbaa !14
  store <2 x i64> %i.be, ptr %i.bc, align 8, !tbaa !14
  %index.next32 = add nuw i64 %index29, 4         ; 2 uses
  %i.bf = icmp eq i64 %index.next32, 256
  br i1 %i.bf, label %crcspeed64little_init.exit.2, label %vector.body28, !llvm.loop !28

crcspeed64little_init.exit.2:                     ; preds = %vector.body28
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 6144
  br label %vector.body35

vector.body35:                                    ; preds = %vector.body35, %crcspeed64little_init.exit.2
  %index36 = phi i64 [ 0, %crcspeed64little_init.exit.2 ], [ %index.next39, %vector.body35 ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %index36 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %wide.load37 = load <2 x i64>, ptr %i.bh, align 8, !tbaa !14
  %wide.load38 = load <2 x i64>, ptr %i.bi, align 8, !tbaa !14
  %i.bj = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load37)
  %i.bk = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load38)
  store <2 x i64> %i.bj, ptr %i.bh, align 8, !tbaa !14
  store <2 x i64> %i.bk, ptr %i.bi, align 8, !tbaa !14
  %index.next39 = add nuw i64 %index36, 4         ; 2 uses
  %i.bl = icmp eq i64 %index.next39, 256
  br i1 %i.bl, label %crcspeed64little_init.exit.3, label %vector.body35, !llvm.loop !29

crcspeed64little_init.exit.3:                     ; preds = %vector.body35
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8192
  br label %vector.body42

vector.body42:                                    ; preds = %vector.body42, %crcspeed64little_init.exit.3
  %index43 = phi i64 [ 0, %crcspeed64little_init.exit.3 ], [ %index.next46, %vector.body42 ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %index43 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %wide.load44 = load <2 x i64>, ptr %i.bn, align 8, !tbaa !14
  %wide.load45 = load <2 x i64>, ptr %i.bo, align 8, !tbaa !14
  %i.bp = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load44)
  %i.bq = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load45)
  store <2 x i64> %i.bp, ptr %i.bn, align 8, !tbaa !14
  store <2 x i64> %i.bq, ptr %i.bo, align 8, !tbaa !14
  %index.next46 = add nuw i64 %index43, 4         ; 2 uses
  %i.br = icmp eq i64 %index.next46, 256
  br i1 %i.br, label %crcspeed64little_init.exit.4, label %vector.body42, !llvm.loop !30

crcspeed64little_init.exit.4:                     ; preds = %vector.body42
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 10240
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %crcspeed64little_init.exit.4
  %index50 = phi i64 [ 0, %crcspeed64little_init.exit.4 ], [ %index.next53, %vector.body49 ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %index50 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %wide.load51 = load <2 x i64>, ptr %i.bt, align 8, !tbaa !14
  %wide.load52 = load <2 x i64>, ptr %i.bu, align 8, !tbaa !14
  %i.bv = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load51)
  %i.bw = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load52)
  store <2 x i64> %i.bv, ptr %i.bt, align 8, !tbaa !14
  store <2 x i64> %i.bw, ptr %i.bu, align 8, !tbaa !14
  %index.next53 = add nuw i64 %index50, 4         ; 2 uses
  %i.bx = icmp eq i64 %index.next53, 256
  br i1 %i.bx, label %crcspeed64little_init.exit.5, label %vector.body49, !llvm.loop !31

crcspeed64little_init.exit.5:                     ; preds = %vector.body49
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 12288
  br label %vector.body56

vector.body56:                                    ; preds = %vector.body56, %crcspeed64little_init.exit.5
  %index57 = phi i64 [ 0, %crcspeed64little_init.exit.5 ], [ %index.next60, %vector.body56 ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %index57 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %wide.load58 = load <2 x i64>, ptr %i.bz, align 8, !tbaa !14
  %wide.load59 = load <2 x i64>, ptr %i.ca, align 8, !tbaa !14
  %i.cb = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load58)
  %i.cc = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load59)
  store <2 x i64> %i.cb, ptr %i.bz, align 8, !tbaa !14
  store <2 x i64> %i.cc, ptr %i.ca, align 8, !tbaa !14
  %index.next60 = add nuw i64 %index57, 4         ; 2 uses
  %i.cd = icmp eq i64 %index.next60, 256
  br i1 %i.cd, label %crcspeed64little_init.exit.6, label %vector.body56, !llvm.loop !32

crcspeed64little_init.exit.6:                     ; preds = %vector.body56
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 14336
  br label %vector.body63

vector.body63:                                    ; preds = %vector.body63, %crcspeed64little_init.exit.6
  %index64 = phi i64 [ 0, %crcspeed64little_init.exit.6 ], [ %index.next67, %vector.body63 ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index64 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 2 uses
  %wide.load65 = load <2 x i64>, ptr %i.cf, align 8, !tbaa !14
  %wide.load66 = load <2 x i64>, ptr %i.cg, align 8, !tbaa !14
  %i.ch = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load65)
  %i.ci = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load66)
  store <2 x i64> %i.ch, ptr %i.cf, align 8, !tbaa !14
  store <2 x i64> %i.ci, ptr %i.cg, align 8, !tbaa !14
  %index.next67 = add nuw i64 %index64, 4         ; 2 uses
  %i.cj = icmp eq i64 %index.next67, 256
  br i1 %i.cj, label %crcspeed64little_init.exit.7, label %vector.body63, !llvm.loop !33

crcspeed64little_init.exit.7:                     ; preds = %vector.body63
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @crcspeed16big_init(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  tail call void @crcspeed16little_init(ptr noundef %0, ptr noundef %1)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(4096) %1, i8 0, i64 4096, i1 false), !tbaa !19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @set_crc64_cutoffs(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  store i64 %0, ptr @CRC64_DUAL_CUTOFF, align 8, !tbaa !14
  store i64 %1, ptr @CRC64_TRI_CUTOFF, align 8, !tbaa !14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @crcspeed64little(ptr nofree noundef readonly %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @CRC64_DUAL_CUTOFF, align 8, !tbaa !14 ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = icmp ne i64 %3, 0
  %i.d = ptrtoint ptr %2 to i64
  %i.e = and i64 %i.d, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = and i1 %i.c, %i.f
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 3 uses
  %i.i = load i8, ptr %2, align 1, !tbaa !13
  %.0168.tr = trunc i64 %1 to i8
  %.narrow = xor i8 %i.i, %.0168.tr
  %i.j = zext i8 %.narrow to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !14
  %i.m = lshr i64 %1, 8
  %i.n = xor i64 %i.l, %i.m                       ; 3 uses
  %i.o = add i64 %3, -1                           ; 2 uses
  %i.p = icmp ne i64 %i.o, 0
  %i.q = ptrtoint ptr %i.h to i64
  %i.r = and i64 %i.q, 7
  %i.s = icmp ne i64 %i.r, 0
  %i.t = select i1 %i.p, i1 %i.s, i1 false
  br i1 %i.t, label %.lr.ph.1, label %._crit_edge

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 3 uses
  %i.v = load i8, ptr %i.h, align 1, !tbaa !13
  %.0168.tr.1 = trunc i64 %i.n to i8
  %.narrow.1 = xor i8 %i.v, %.0168.tr.1
  %i.w = zext i8 %.narrow.1 to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !14
  %i.z = lshr i64 %i.n, 8
  %i.aa = xor i64 %i.y, %i.z                      ; 3 uses
  %i.ab = add i64 %3, -2                          ; 2 uses
  %i.ac = icmp ne i64 %i.ab, 0
  %i.ad = ptrtoint ptr %i.u to i64
  %i.ae = and i64 %i.ad, 7
  %i.af = icmp ne i64 %i.ae, 0
  %i.ag = select i1 %i.ac, i1 %i.af, i1 false
  br i1 %i.ag, label %.lr.ph.2, label %._crit_edge

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 3 ; 3 uses
  %i.ai = load i8, ptr %i.u, align 1, !tbaa !13
  %.0168.tr.2 = trunc i64 %i.aa to i8
  %.narrow.2 = xor i8 %i.ai, %.0168.tr.2
  %i.aj = zext i8 %.narrow.2 to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !14
  %i.am = lshr i64 %i.aa, 8
  %i.an = xor i64 %i.al, %i.am                    ; 3 uses
  %i.ao = add i64 %3, -3                          ; 2 uses
  %i.ap = icmp ne i64 %i.ao, 0
  %i.aq = ptrtoint ptr %i.ah to i64
  %i.ar = and i64 %i.aq, 7
  %i.as = icmp ne i64 %i.ar, 0
  %i.at = select i1 %i.ap, i1 %i.as, i1 false
  br i1 %i.at, label %.lr.ph.3, label %._crit_edge

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.av = load i8, ptr %i.ah, align 1, !tbaa !13
  %.0168.tr.3 = trunc i64 %i.an to i8
  %.narrow.3 = xor i8 %i.av, %.0168.tr.3
  %i.aw = zext i8 %.narrow.3 to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !14
  %i.az = lshr i64 %i.an, 8
  %i.ba = xor i64 %i.ay, %i.az                    ; 3 uses
  %i.bb = add i64 %3, -4                          ; 2 uses
  %i.bc = icmp ne i64 %i.bb, 0
  %i.bd = ptrtoint ptr %i.au to i64
  %i.be = and i64 %i.bd, 7
  %i.bf = icmp ne i64 %i.be, 0
  %i.bg = select i1 %i.bc, i1 %i.bf, i1 false
  br i1 %i.bg, label %.lr.ph.4, label %._crit_edge

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 5 ; 3 uses
  %i.bi = load i8, ptr %i.au, align 1, !tbaa !13
  %.0168.tr.4 = trunc i64 %i.ba to i8
  %.narrow.4 = xor i8 %i.bi, %.0168.tr.4
  %i.bj = zext i8 %.narrow.4 to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bj
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !14
  %i.bm = lshr i64 %i.ba, 8
  %i.bn = xor i64 %i.bl, %i.bm                    ; 3 uses
  %i.bo = add i64 %3, -5                          ; 2 uses
  %i.bp = icmp ne i64 %i.bo, 0
  %i.bq = ptrtoint ptr %i.bh to i64
  %i.br = and i64 %i.bq, 7
  %i.bs = icmp ne i64 %i.br, 0
  %i.bt = select i1 %i.bp, i1 %i.bs, i1 false
  br i1 %i.bt, label %.lr.ph.5, label %._crit_edge

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 3 uses
  %i.bv = load i8, ptr %i.bh, align 1, !tbaa !13
  %.0168.tr.5 = trunc i64 %i.bn to i8
  %.narrow.5 = xor i8 %i.bv, %.0168.tr.5
  %i.bw = zext i8 %.narrow.5 to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !14
  %i.bz = lshr i64 %i.bn, 8
  %i.ca = xor i64 %i.by, %i.bz                    ; 3 uses
  %i.cb = add i64 %3, -6                          ; 2 uses
  %i.cc = icmp ne i64 %i.cb, 0
  %i.cd = ptrtoint ptr %i.bu to i64
  %i.ce = and i64 %i.cd, 7
  %i.cf = icmp ne i64 %i.ce, 0
  %i.cg = select i1 %i.cc, i1 %i.cf, i1 false
  br i1 %i.cg, label %.lr.ph.6, label %._crit_edge

.lr.ph.6:                                         ; preds = %.lr.ph.5
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 7 ; 3 uses
  %i.ci = load i8, ptr %i.bu, align 1, !tbaa !13
  %.0168.tr.6 = trunc i64 %i.ca to i8
  %.narrow.6 = xor i8 %i.ci, %.0168.tr.6
  %i.cj = zext i8 %.narrow.6 to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !14
  %i.cm = lshr i64 %i.ca, 8
  %i.cn = xor i64 %i.cl, %i.cm                    ; 3 uses
  %i.co = add i64 %3, -7                          ; 2 uses
  %i.cp = icmp ne i64 %i.co, 0
  %i.cq = ptrtoint ptr %i.ch to i64
  %i.cr = and i64 %i.cq, 7
  %i.cs = icmp ne i64 %i.cr, 0
  %i.ct = select i1 %i.cp, i1 %i.cs, i1 false
  br i1 %i.ct, label %.lr.ph.7, label %._crit_edge

.lr.ph.7:                                         ; preds = %.lr.ph.6
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cv = load i8, ptr %i.ch, align 1, !tbaa !13
  %.0168.tr.7 = trunc i64 %i.cn to i8
  %.narrow.7 = xor i8 %i.cv, %.0168.tr.7
  %i.cw = zext i8 %.narrow.7 to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cw
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !14
  %i.cz = lshr i64 %i.cn, 8
  %i.da = xor i64 %i.cy, %i.cz
  %i.db = add i64 %3, -8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %.lr.ph.7, %.preheader
  %.0181.lcssa = phi ptr [ %2, %.preheader ], [ %i.h, %.lr.ph ], [ %i.u, %.lr.ph.1 ], [ %i.ah, %.lr.ph.2 ], [ %i.au, %.lr.ph.3 ], [ %i.bh, %.lr.ph.4 ], [ %i.bu, %.lr.ph.5 ], [ %i.ch, %.lr.ph.6 ], [ %i.cu, %.lr.ph.7 ] ; 9 uses
  %.0172.lcssa = phi i64 [ %3, %.preheader ], [ %i.o, %.lr.ph ], [ %i.ab, %.lr.ph.1 ], [ %i.ao, %.lr.ph.2 ], [ %i.bb, %.lr.ph.3 ], [ %i.bo, %.lr.ph.4 ], [ %i.cb, %.lr.ph.5 ], [ %i.co, %.lr.ph.6 ], [ %i.db, %.lr.ph.7 ] ; 10 uses
  %.0168.lcssa = phi i64 [ %1, %.preheader ], [ %i.n, %.lr.ph ], [ %i.aa, %.lr.ph.1 ], [ %i.an, %.lr.ph.2 ], [ %i.ba, %.lr.ph.3 ], [ %i.bn, %.lr.ph.4 ], [ %i.ca, %.lr.ph.5 ], [ %i.cn, %.lr.ph.6 ], [ %i.da, %.lr.ph.7 ] ; 5 uses
  %i.dc = load i64, ptr @CRC64_TRI_CUTOFF, align 8, !tbaa !14
  %i.dd = icmp ugt i64 %.0172.lcssa, %i.dc
  br i1 %i.dd, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.de = udiv i64 %.0172.lcssa, 3
  %i.df = and i64 %i.de, 9223372036854775800      ; 4 uses
  %i.dg = getelementptr i8, ptr %.0181.lcssa, i64 %i.df ; 4 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 %i.df  ; 3 uses
  %.not188209 = icmp eq i64 %i.df, 0
  br i1 %.not188209, label %._crit_edge219, label %.lr.ph218

.lr.ph218:                                        ; preds = %bb.b
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 14336 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 12288 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 10240 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8192 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 6144 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 4096 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 2048 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph218, %bb.c
  %.1216 = phi i64 [ %.0168.lcssa, %.lr.ph218 ], [ %i.fj, %bb.c ]
  %.0170215 = phi i64 [ 0, %.lr.ph218 ], [ %i.if, %bb.c ]
  %.0171214 = phi i64 [ 0, %.lr.ph218 ], [ %i.gu, %bb.c ]
  %.1173213 = phi i64 [ %i.df, %.lr.ph218 ], [ %i.dp, %bb.c ]
  %.0179212 = phi ptr [ %i.dh, %.lr.ph218 ], [ %i.dy, %bb.c ] ; 2 uses
  %.0180211 = phi ptr [ %i.dg, %.lr.ph218 ], [ %i.dv, %bb.c ] ; 2 uses
  %.1182210 = phi ptr [ %.0181.lcssa, %.lr.ph218 ], [ %i.ds, %bb.c ] ; 2 uses
  %i.dp = add i64 %.1173213, -8                   ; 2 uses
  %i.dq = load i64, ptr %.1182210, align 8, !tbaa !14
  %i.dr = xor i64 %i.dq, %.1216                   ; 8 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.1182210, i64 8
  %i.dt = load i64, ptr %.0180211, align 8, !tbaa !14
  %i.du = xor i64 %i.dt, %.0171214                ; 8 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.0180211, i64 8
  %i.dw = load i64, ptr %.0179212, align 8, !tbaa !14
  %i.dx = xor i64 %i.dw, %.0170215                ; 8 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.0179212, i64 8
  %i.dz = and i64 %i.dr, 255
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dz
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !14
  %i.ec = lshr i64 %i.dr, 8
  %i.ed = and i64 %i.ec, 255
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.ed
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !14
  %i.eg = xor i64 %i.ef, %i.eb
  %i.eh = lshr i64 %i.dr, 16
  %i.ei = and i64 %i.eh, 255
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.ei
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !14
  %i.el = xor i64 %i.eg, %i.ek
  %i.em = lshr i64 %i.dr, 24
  %i.en = and i64 %i.em, 255
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !14
  %i.eq = xor i64 %i.el, %i.ep
  %i.er = lshr i64 %i.dr, 32
  %i.es = and i64 %i.er, 255
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.es
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !14
  %i.ev = xor i64 %i.eq, %i.eu
  %i.ew = lshr i64 %i.dr, 40
  %i.ex = and i64 %i.ew, 255
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.ex
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !14
  %i.fa = xor i64 %i.ev, %i.ez
  %i.fb = lshr i64 %i.dr, 48
  %i.fc = and i64 %i.fb, 255
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.fc
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !14
  %i.ff = xor i64 %i.fa, %i.fe
  %i.fg = lshr i64 %i.dr, 56
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fg
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !14
  %i.fj = xor i64 %i.ff, %i.fi                    ; 2 uses
  %i.fk = and i64 %i.du, 255
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.fk
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !14
  %i.fn = lshr i64 %i.du, 8
  %i.fo = and i64 %i.fn, 255
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.fo
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !14
  %i.fr = xor i64 %i.fq, %i.fm
  %i.fs = lshr i64 %i.du, 16
  %i.ft = and i64 %i.fs, 255
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.ft
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !14
  %i.fw = xor i64 %i.fr, %i.fv
  %i.fx = lshr i64 %i.du, 24
  %i.fy = and i64 %i.fx, 255
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.fy
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !14
  %i.gb = xor i64 %i.fw, %i.ga
  %i.gc = lshr i64 %i.du, 32
  %i.gd = and i64 %i.gc, 255
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.gd
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !14
  %i.gg = xor i64 %i.gb, %i.gf
  %i.gh = lshr i64 %i.du, 40
  %i.gi = and i64 %i.gh, 255
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.gi
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !14
  %i.gl = xor i64 %i.gg, %i.gk
  %i.gm = lshr i64 %i.du, 48
  %i.gn = and i64 %i.gm, 255
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.gn
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !14
  %i.gq = xor i64 %i.gl, %i.gp
  %i.gr = lshr i64 %i.du, 56
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.gr
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !14
  %i.gu = xor i64 %i.gq, %i.gt                    ; 2 uses
  %i.gv = and i64 %i.dx, 255
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.gv
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !14
  %i.gy = lshr i64 %i.dx, 8
  %i.gz = and i64 %i.gy, 255
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.gz
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !14
  %i.hc = xor i64 %i.hb, %i.gx
  %i.hd = lshr i64 %i.dx, 16
  %i.he = and i64 %i.hd, 255
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.he
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !14
  %i.hh = xor i64 %i.hc, %i.hg
  %i.hi = lshr i64 %i.dx, 24
  %i.hj = and i64 %i.hi, 255
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.hj
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !14
  %i.hm = xor i64 %i.hh, %i.hl
  %i.hn = lshr i64 %i.dx, 32
  %i.ho = and i64 %i.hn, 255
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.ho
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !14
  %i.hr = xor i64 %i.hm, %i.hq
  %i.hs = lshr i64 %i.dx, 40
  %i.ht = and i64 %i.hs, 255
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.ht
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !14
  %i.hw = xor i64 %i.hr, %i.hv
  %i.hx = lshr i64 %i.dx, 48
  %i.hy = and i64 %i.hx, 255
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.hy
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !14
  %i.ib = xor i64 %i.hw, %i.ia
  %i.ic = lshr i64 %i.dx, 56
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ic
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !14
  %i.if = xor i64 %i.ib, %i.ie                    ; 2 uses
  %.not188 = icmp eq i64 %i.dp, 0
  br i1 %.not188, label %._crit_edge219.loopexit, label %bb.c, !llvm.loop !34

._crit_edge219.loopexit:                          ; preds = %bb.c
  %i.ig = urem i64 %.0172.lcssa, 24
  %i.ih = sub nuw i64 %.0172.lcssa, %i.ig
  %scevgep258 = getelementptr i8, ptr %.0181.lcssa, i64 %i.ih
  br label %._crit_edge219

._crit_edge219:                                   ; preds = %._crit_edge219.loopexit, %bb.b
  %.1182.lcssa = phi ptr [ %.0181.lcssa, %bb.b ], [ %i.dg, %._crit_edge219.loopexit ]
  %.0180.lcssa = phi ptr [ %i.dg, %bb.b ], [ %i.dh, %._crit_edge219.loopexit ]
  %.0179.lcssa = phi ptr [ %i.dh, %bb.b ], [ %scevgep258, %._crit_edge219.loopexit ]
  %.0171.lcssa = phi i64 [ 0, %bb.b ], [ %i.gu, %._crit_edge219.loopexit ]
  %.0170.lcssa = phi i64 [ 0, %bb.b ], [ %i.if, %._crit_edge219.loopexit ]
  %.1.lcssa = phi i64 [ %.0168.lcssa, %bb.b ], [ %i.fj, %._crit_edge219.loopexit ]
  %i.ii = ptrtoint ptr %.0180.lcssa to i64
  %i.ij = ptrtoint ptr %.1182.lcssa to i64
  %i.ik = sub i64 %i.ii, %i.ij                    ; 3 uses
  %i.il = tail call i64 @crc64_combine(i64 noundef %.1.lcssa, i64 noundef %.0171.lcssa, i64 noundef %i.ik, i64 noundef -7661587058870466123, i8 noundef zeroext 64) #7
  %i.im = tail call i64 @crc64_combine(i64 noundef %i.il, i64 noundef %.0170.lcssa, i64 noundef %i.ik, i64 noundef -7661587058870466123, i8 noundef zeroext 64) #7
  %.neg = mul i64 %i.ik, -3
  %i.in = add i64 %.neg, %.0172.lcssa
  br label %bb.g

bb.d:                                             ; preds = %._crit_edge
  %i.io = icmp ugt i64 %.0172.lcssa, %i.a
  br i1 %i.io, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ip = lshr i64 %.0172.lcssa, 1
  %i.iq = and i64 %i.ip, 9223372036854775800      ; 3 uses
  %i.ir = getelementptr i8, ptr %.0181.lcssa, i64 %i.iq ; 3 uses
  %.not196 = icmp eq i64 %i.iq, 0
  br i1 %.not196, label %._crit_edge204, label %.lr.ph203

.lr.ph203:                                        ; preds = %bb.e
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 14336 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 12288 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 10240 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 8192 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 6144 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 4096 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 2048 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph203, %bb.f
  %.0201 = phi i64 [ 0, %.lr.ph203 ], [ %i.mb, %bb.f ]
  %.2200 = phi i64 [ %.0168.lcssa, %.lr.ph203 ], [ %i.kq, %bb.f ]
  %.0169199 = phi ptr [ %i.ir, %.lr.ph203 ], [ %i.jf, %bb.f ] ; 2 uses
  %.2174198 = phi i64 [ %i.iq, %.lr.ph203 ], [ %i.iz, %bb.f ]
  %.2183197 = phi ptr [ %.0181.lcssa, %.lr.ph203 ], [ %i.jc, %bb.f ] ; 2 uses
  %i.iz = add i64 %.2174198, -8                   ; 2 uses
  %i.ja = load i64, ptr %.2183197, align 8, !tbaa !14
  %i.jb = xor i64 %i.ja, %.2200                   ; 8 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.2183197, i64 8
  %i.jd = load i64, ptr %.0169199, align 8, !tbaa !14
  %i.je = xor i64 %i.jd, %.0201                   ; 8 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.0169199, i64 8
  %i.jg = and i64 %i.jb, 255
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %i.jg
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !14
  %i.jj = lshr i64 %i.jb, 8
  %i.jk = and i64 %i.jj, 255
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %i.jk
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !14
  %i.jn = xor i64 %i.jm, %i.ji
  %i.jo = lshr i64 %i.jb, 16
  %i.jp = and i64 %i.jo, 255
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %i.jp
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !14
  %i.js = xor i64 %i.jn, %i.jr
  %i.jt = lshr i64 %i.jb, 24
  %i.ju = and i64 %i.jt, 255
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %i.ju
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !14
  %i.jx = xor i64 %i.js, %i.jw
  %i.jy = lshr i64 %i.jb, 32
  %i.jz = and i64 %i.jy, 255
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.jz
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !14
  %i.kc = xor i64 %i.jx, %i.kb
  %i.kd = lshr i64 %i.jb, 40
  %i.ke = and i64 %i.kd, 255
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %i.ke
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !14
  %i.kh = xor i64 %i.kc, %i.kg
  %i.ki = lshr i64 %i.jb, 48
  %i.kj = and i64 %i.ki, 255
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.kj
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !14
  %i.km = xor i64 %i.kh, %i.kl
  %i.kn = lshr i64 %i.jb, 56
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.kn
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !14
  %i.kq = xor i64 %i.km, %i.kp                    ; 2 uses
  %i.kr = and i64 %i.je, 255
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %i.kr
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !14
  %i.ku = lshr i64 %i.je, 8
  %i.kv = and i64 %i.ku, 255
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %i.kv
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !14
  %i.ky = xor i64 %i.kx, %i.kt
  %i.kz = lshr i64 %i.je, 16
  %i.la = and i64 %i.kz, 255
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %i.la
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !14
  %i.ld = xor i64 %i.ky, %i.lc
  %i.le = lshr i64 %i.je, 24
  %i.lf = and i64 %i.le, 255
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %i.lf
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !14
  %i.li = xor i64 %i.ld, %i.lh
  %i.lj = lshr i64 %i.je, 32
  %i.lk = and i64 %i.lj, 255
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.lk
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !14
  %i.ln = xor i64 %i.li, %i.lm
  %i.lo = lshr i64 %i.je, 40
  %i.lp = and i64 %i.lo, 255
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %i.lp
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !14
  %i.ls = xor i64 %i.ln, %i.lr
  %i.lt = lshr i64 %i.je, 48
  %i.lu = and i64 %i.lt, 255
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.lu
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !14
  %i.lx = xor i64 %i.ls, %i.lw
  %i.ly = lshr i64 %i.je, 56
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ly
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !14
  %i.mb = xor i64 %i.lx, %i.ma                    ; 2 uses
  %.not = icmp eq i64 %i.iz, 0
  br i1 %.not, label %._crit_edge204.loopexit, label %bb.f, !llvm.loop !35

._crit_edge204.loopexit:                          ; preds = %bb.f
  %i.mc = and i64 %.0172.lcssa, -16
  %scevgep = getelementptr i8, ptr %.0181.lcssa, i64 %i.mc
  br label %._crit_edge204

._crit_edge204:                                   ; preds = %._crit_edge204.loopexit, %bb.e
  %.2183.lcssa = phi ptr [ %.0181.lcssa, %bb.e ], [ %i.ir, %._crit_edge204.loopexit ]
  %.0169.lcssa = phi ptr [ %i.ir, %bb.e ], [ %scevgep, %._crit_edge204.loopexit ] ; 2 uses
  %.2.lcssa = phi i64 [ %.0168.lcssa, %bb.e ], [ %i.kq, %._crit_edge204.loopexit ]
  %.0.lcssa = phi i64 [ 0, %bb.e ], [ %i.mb, %._crit_edge204.loopexit ]
  %i.md = ptrtoint ptr %.0169.lcssa to i64
  %i.me = ptrtoint ptr %.2183.lcssa to i64
  %i.mf = sub i64 %i.md, %i.me                    ; 2 uses
  %i.mg = tail call i64 @crc64_combine(i64 noundef %.2.lcssa, i64 noundef %.0.lcssa, i64 noundef %i.mf, i64 noundef -7661587058870466123, i8 noundef zeroext 64) #7
  %i.mh = shl nsw i64 %i.mf, 1
  %i.mi = sub i64 %.0172.lcssa, %i.mh
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %._crit_edge204, %._crit_edge219
  %.3184 = phi ptr [ %.0179.lcssa, %._crit_edge219 ], [ %.0169.lcssa, %._crit_edge204 ], [ %.0181.lcssa, %bb.d ] ; 2 uses
  %.3175 = phi i64 [ %i.in, %._crit_edge219 ], [ %i.mi, %._crit_edge204 ], [ %.0172.lcssa, %bb.d ] ; 3 uses
  %.3 = phi i64 [ %i.im, %._crit_edge219 ], [ %i.mg, %._crit_edge204 ], [ %.0168.lcssa, %bb.d ] ; 2 uses
  %i.mj = icmp ugt i64 %.3175, 7
  br i1 %i.mj, label %.lr.ph230, label %.loopexit

.lr.ph230:                                        ; preds = %bb.g
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 14336
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 12288
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 10240
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 8192
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 6144
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 4096
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 2048
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph230, %bb.h
  %.4228 = phi i64 [ %.3, %.lr.ph230 ], [ %i.of, %bb.h ]
  %.4176227 = phi i64 [ %.3175, %.lr.ph230 ], [ %i.mr, %bb.h ]
  %.4185226 = phi ptr [ %.3184, %.lr.ph230 ], [ %i.mu, %bb.h ] ; 2 uses
  %i.mr = add i64 %.4176227, -8                   ; 3 uses
  %i.ms = load i64, ptr %.4185226, align 8, !tbaa !14
  %i.mt = xor i64 %i.ms, %.4228                   ; 8 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.4185226, i64 8 ; 2 uses
  %i.mv = and i64 %i.mt, 255
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.mk, i64 %i.mv
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !14
  %i.my = lshr i64 %i.mt, 8
  %i.mz = and i64 %i.my, 255
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %i.mz
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !14
  %i.nc = xor i64 %i.nb, %i.mx
  %i.nd = lshr i64 %i.mt, 16
  %i.ne = and i64 %i.nd, 255
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %i.ne
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !14
  %i.nh = xor i64 %i.nc, %i.ng
  %i.ni = lshr i64 %i.mt, 24
  %i.nj = and i64 %i.ni, 255
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %i.nj
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !14
  %i.nm = xor i64 %i.nh, %i.nl
  %i.nn = lshr i64 %i.mt, 32
  %i.no = and i64 %i.nn, 255
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %i.no
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !14
  %i.nr = xor i64 %i.nm, %i.nq
  %i.ns = lshr i64 %i.mt, 40
  %i.nt = and i64 %i.ns, 255
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %i.nt
  %i.nv = load i64, ptr %i.nu, align 8, !tbaa !14
  %i.nw = xor i64 %i.nr, %i.nv
  %i.nx = lshr i64 %i.mt, 48
  %i.ny = and i64 %i.nx, 255
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.mq, i64 %i.ny
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !14
  %i.ob = xor i64 %i.nw, %i.oa
  %i.oc = lshr i64 %i.mt, 56
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.oc
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !14
  %i.of = xor i64 %i.ob, %i.oe                    ; 2 uses
  %i.og = icmp ugt i64 %i.mr, 7
  br i1 %i.og, label %bb.h, label %.loopexit, !llvm.loop !36

.loopexit:                                        ; preds = %bb.h, %bb.g, %bb.a
  %.5186 = phi ptr [ %2, %bb.a ], [ %.3184, %bb.g ], [ %i.mu, %bb.h ] ; 3 uses
  %.5177 = phi i64 [ %3, %bb.a ], [ %.3175, %bb.g ], [ %i.mr, %bb.h ] ; 5 uses
  %.5 = phi i64 [ %1, %bb.a ], [ %.3, %bb.g ], [ %i.of, %bb.h ] ; 4 uses
  %.not189234 = icmp eq i64 %.5177, 0
  br i1 %.not189234, label %._crit_edge240, label %.lr.ph239.preheader

.lr.ph239.preheader:                              ; preds = %.loopexit
  %xtraiter = and i64 %.5177, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph239.prol.loopexit, label %.lr.ph239.prol

.lr.ph239.prol:                                   ; preds = %.lr.ph239.preheader
  %i.oh = getelementptr inbounds nuw i8, ptr %.5186, i64 1
  %i.oi = load i8, ptr %.5186, align 1, !tbaa !13
  %.6.tr.prol = trunc i64 %.5 to i8
  %.narrow190.prol = xor i8 %i.oi, %.6.tr.prol
  %i.oj = zext i8 %.narrow190.prol to i64
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.oj
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !14
  %i.om = lshr i64 %.5, 8
  %i.on = xor i64 %i.ol, %i.om                    ; 2 uses
  %i.oo = add nsw i64 %.5177, -1
  br label %.lr.ph239.prol.loopexit

.lr.ph239.prol.loopexit:                          ; preds = %.lr.ph239.prol, %.lr.ph239.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph239.preheader ], [ %i.on, %.lr.ph239.prol ]
  %.6237.unr = phi i64 [ %.5, %.lr.ph239.preheader ], [ %i.on, %.lr.ph239.prol ]
  %.6178236.unr = phi i64 [ %.5177, %.lr.ph239.preheader ], [ %i.oo, %.lr.ph239.prol ]
  %.6187235.unr = phi ptr [ %.5186, %.lr.ph239.preheader ], [ %i.oh, %.lr.ph239.prol ]
  %i.op = icmp eq i64 %.5177, 1
  br i1 %i.op, label %._crit_edge240, label %.lr.ph239

.lr.ph239:                                        ; preds = %.lr.ph239.prol.loopexit, %.lr.ph239
  %.6237 = phi i64 [ %i.pd, %.lr.ph239 ], [ %.6237.unr, %.lr.ph239.prol.loopexit ] ; 2 uses
  %.6178236 = phi i64 [ %i.pe, %.lr.ph239 ], [ %.6178236.unr, %.lr.ph239.prol.loopexit ]
  %.6187235 = phi ptr [ %i.ox, %.lr.ph239 ], [ %.6187235.unr, %.lr.ph239.prol.loopexit ] ; 3 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.6187235, i64 1
  %i.or = load i8, ptr %.6187235, align 1, !tbaa !13
  %.6.tr = trunc i64 %.6237 to i8
  %.narrow190 = xor i8 %i.or, %.6.tr
  %i.os = zext i8 %.narrow190 to i64
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.os
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !14
  %i.ov = lshr i64 %.6237, 8
  %i.ow = xor i64 %i.ou, %i.ov                    ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.6187235, i64 2
  %i.oy = load i8, ptr %i.oq, align 1, !tbaa !13
  %.6.tr.1 = trunc i64 %i.ow to i8
  %.narrow190.1 = xor i8 %i.oy, %.6.tr.1
  %i.oz = zext i8 %.narrow190.1 to i64
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.oz
  %i.pb = load i64, ptr %i.pa, align 8, !tbaa !14
  %i.pc = lshr i64 %i.ow, 8
  %i.pd = xor i64 %i.pb, %i.pc                    ; 2 uses
  %i.pe = add i64 %.6178236, -2                   ; 2 uses
  %.not189.1 = icmp eq i64 %i.pe, 0
  br i1 %.not189.1, label %._crit_edge240, label %.lr.ph239, !llvm.loop !37

._crit_edge240:                                   ; preds = %.lr.ph239.prol.loopexit, %.lr.ph239, %.loopexit
  %.6.lcssa = phi i64 [ %.5, %.loopexit ], [ %.lcssa.unr, %.lr.ph239.prol.loopexit ], [ %i.pd, %.lr.ph239 ]
  ret i64 %.6.lcssa
}

declare i64 @crc64_combine(i64 noundef, i64 noundef, i64 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local zeroext i16 @crcspeed16little(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp ne i64 %3, 0
  %i.b = ptrtoint ptr %2 to i64
  %i.c = and i64 %i.b, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = and i1 %i.a, %i.d
  br i1 %i.e, label %.lr.ph, label %.preheader42

.preheader42:                                     ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %.lr.ph.7, %bb.a
  %.039.lcssa = phi i64 [ %3, %bb.a ], [ %i.x, %.lr.ph ], [ %i.an, %.lr.ph.1 ], [ %i.bd, %.lr.ph.2 ], [ %i.bt, %.lr.ph.3 ], [ %i.cj, %.lr.ph.4 ], [ %i.cz, %.lr.ph.5 ], [ %i.dp, %.lr.ph.6 ], [ %i.ef, %.lr.ph.7 ] ; 3 uses
  %.036.lcssa = phi ptr [ %2, %bb.a ], [ %i.o, %.lr.ph ], [ %i.ae, %.lr.ph.1 ], [ %i.au, %.lr.ph.2 ], [ %i.bk, %.lr.ph.3 ], [ %i.ca, %.lr.ph.4 ], [ %i.cq, %.lr.ph.5 ], [ %i.dg, %.lr.ph.6 ], [ %i.dw, %.lr.ph.7 ] ; 2 uses
  %.0.lcssa = phi i16 [ %1, %bb.a ], [ %i.w, %.lr.ph ], [ %i.am, %.lr.ph.1 ], [ %i.bc, %.lr.ph.2 ], [ %i.bs, %.lr.ph.3 ], [ %i.ci, %.lr.ph.4 ], [ %i.cy, %.lr.ph.5 ], [ %i.do, %.lr.ph.6 ], [ %i.ee, %.lr.ph.7 ] ; 2 uses
  %i.f = icmp ugt i64 %.039.lcssa, 7
  br i1 %i.f, label %.lr.ph51, label %.preheader

.lr.ph51:                                         ; preds = %.preheader42
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3584
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3072
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2560
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1536
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 512
  br label %bb.b

.lr.ph:                                           ; preds = %bb.a
  %i.n = lshr i16 %1, 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 3 uses
  %i.p = load i8, ptr %2, align 1, !tbaa !13
  %i.q = zext i8 %i.p to i16
  %i.r = xor i16 %i.n, %i.q
  %i.s = zext nneg i16 %i.r to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !19   ; 2 uses
  %i.v = shl i16 %1, 8
  %i.w = xor i16 %i.u, %i.v                       ; 2 uses
  %i.x = add i64 %3, -1                           ; 2 uses
  %i.y = icmp ne i64 %i.x, 0
  %i.z = ptrtoint ptr %i.o to i64
  %i.aa = and i64 %i.z, 7
  %i.ab = icmp ne i64 %i.aa, 0
  %i.ac = select i1 %i.y, i1 %i.ab, i1 false
  br i1 %i.ac, label %.lr.ph.1, label %.preheader42

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.ad = lshr i16 %i.w, 8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 3 uses
  %i.af = load i8, ptr %i.o, align 1, !tbaa !13
  %i.ag = zext i8 %i.af to i16
  %i.ah = xor i16 %i.ad, %i.ag
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !19 ; 2 uses
  %i.al = shl i16 %i.u, 8
  %i.am = xor i16 %i.ak, %i.al                    ; 2 uses
  %i.an = add i64 %3, -2                          ; 2 uses
  %i.ao = icmp ne i64 %i.an, 0
  %i.ap = ptrtoint ptr %i.ae to i64
  %i.aq = and i64 %i.ap, 7
  %i.ar = icmp ne i64 %i.aq, 0
  %i.as = select i1 %i.ao, i1 %i.ar, i1 false
  br i1 %i.as, label %.lr.ph.2, label %.preheader42

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.at = lshr i16 %i.am, 8
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 3 ; 3 uses
  %i.av = load i8, ptr %i.ae, align 1, !tbaa !13
  %i.aw = zext i8 %i.av to i16
  %i.ax = xor i16 %i.at, %i.aw
  %i.ay = zext nneg i16 %i.ax to i64
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !19 ; 2 uses
  %i.bb = shl i16 %i.ak, 8
  %i.bc = xor i16 %i.ba, %i.bb                    ; 2 uses
  %i.bd = add i64 %3, -3                          ; 2 uses
  %i.be = icmp ne i64 %i.bd, 0
  %i.bf = ptrtoint ptr %i.au to i64
  %i.bg = and i64 %i.bf, 7
  %i.bh = icmp ne i64 %i.bg, 0
  %i.bi = select i1 %i.be, i1 %i.bh, i1 false
  br i1 %i.bi, label %.lr.ph.3, label %.preheader42

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.bj = lshr i16 %i.bc, 8
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.bl = load i8, ptr %i.au, align 1, !tbaa !13
  %i.bm = zext i8 %i.bl to i16
  %i.bn = xor i16 %i.bj, %i.bm
  %i.bo = zext nneg i16 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !19 ; 2 uses
  %i.br = shl i16 %i.ba, 8
  %i.bs = xor i16 %i.bq, %i.br                    ; 2 uses
  %i.bt = add i64 %3, -4                          ; 2 uses
  %i.bu = icmp ne i64 %i.bt, 0
  %i.bv = ptrtoint ptr %i.bk to i64
  %i.bw = and i64 %i.bv, 7
  %i.bx = icmp ne i64 %i.bw, 0
  %i.by = select i1 %i.bu, i1 %i.bx, i1 false
  br i1 %i.by, label %.lr.ph.4, label %.preheader42

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %i.bz = lshr i16 %i.bs, 8
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 5 ; 3 uses
  %i.cb = load i8, ptr %i.bk, align 1, !tbaa !13
  %i.cc = zext i8 %i.cb to i16
  %i.cd = xor i16 %i.bz, %i.cc
  %i.ce = zext nneg i16 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ce
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !19 ; 2 uses
  %i.ch = shl i16 %i.bq, 8
  %i.ci = xor i16 %i.cg, %i.ch                    ; 2 uses
  %i.cj = add i64 %3, -5                          ; 2 uses
  %i.ck = icmp ne i64 %i.cj, 0
  %i.cl = ptrtoint ptr %i.ca to i64
  %i.cm = and i64 %i.cl, 7
  %i.cn = icmp ne i64 %i.cm, 0
  %i.co = select i1 %i.ck, i1 %i.cn, i1 false
  br i1 %i.co, label %.lr.ph.5, label %.preheader42

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %i.cp = lshr i16 %i.ci, 8
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 3 uses
  %i.cr = load i8, ptr %i.ca, align 1, !tbaa !13
  %i.cs = zext i8 %i.cr to i16
  %i.ct = xor i16 %i.cp, %i.cs
  %i.cu = zext nneg i16 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !19 ; 2 uses
  %i.cx = shl i16 %i.cg, 8
  %i.cy = xor i16 %i.cw, %i.cx                    ; 2 uses
  %i.cz = add i64 %3, -6                          ; 2 uses
  %i.da = icmp ne i64 %i.cz, 0
  %i.db = ptrtoint ptr %i.cq to i64
  %i.dc = and i64 %i.db, 7
  %i.dd = icmp ne i64 %i.dc, 0
  %i.de = select i1 %i.da, i1 %i.dd, i1 false
  br i1 %i.de, label %.lr.ph.6, label %.preheader42

.lr.ph.6:                                         ; preds = %.lr.ph.5
  %i.df = lshr i16 %i.cy, 8
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 7 ; 3 uses
  %i.dh = load i8, ptr %i.cq, align 1, !tbaa !13
  %i.di = zext i8 %i.dh to i16
  %i.dj = xor i16 %i.df, %i.di
  %i.dk = zext nneg i16 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dk
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !19 ; 2 uses
  %i.dn = shl i16 %i.cw, 8
  %i.do = xor i16 %i.dm, %i.dn                    ; 2 uses
  %i.dp = add i64 %3, -7                          ; 2 uses
  %i.dq = icmp ne i64 %i.dp, 0
  %i.dr = ptrtoint ptr %i.dg to i64
  %i.ds = and i64 %i.dr, 7
  %i.dt = icmp ne i64 %i.ds, 0
  %i.du = select i1 %i.dq, i1 %i.dt, i1 false
  br i1 %i.du, label %.lr.ph.7, label %.preheader42

.lr.ph.7:                                         ; preds = %.lr.ph.6
  %i.dv = lshr i16 %i.do, 8
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dx = load i8, ptr %i.dg, align 1, !tbaa !13
  %i.dy = zext i8 %i.dx to i16
  %i.dz = xor i16 %i.dv, %i.dy
  %i.ea = zext nneg i16 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ea
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !19
  %i.ed = shl i16 %i.dm, 8
  %i.ee = xor i16 %i.ec, %i.ed
  %i.ef = add i64 %3, -8
  br label %.preheader42

.preheader:                                       ; preds = %bb.b, %.preheader42
  %.140.lcssa = phi i64 [ %.039.lcssa, %.preheader42 ], [ %i.ga, %bb.b ] ; 7 uses
  %.137.lcssa = phi ptr [ %.036.lcssa, %.preheader42 ], [ %i.fz, %bb.b ] ; 7 uses
  %.1.lcssa = phi i16 [ %.0.lcssa, %.preheader42 ], [ %i.fy, %bb.b ] ; 3 uses
  %.not55 = icmp eq i64 %.140.lcssa, 0
  br i1 %.not55, label %._crit_edge, label %.lr.ph59

bb.b:                                             ; preds = %.lr.ph51, %bb.b
  %.150 = phi i16 [ %.0.lcssa, %.lr.ph51 ], [ %i.fy, %bb.b ]
  %.13749 = phi ptr [ %.036.lcssa, %.lr.ph51 ], [ %i.fz, %bb.b ] ; 2 uses
  %.14048 = phi i64 [ %.039.lcssa, %.lr.ph51 ], [ %i.ga, %bb.b ]
  %i.eg = load i64, ptr %.13749, align 8, !tbaa !14 ; 8 uses
  %i.eh = and i64 %i.eg, 255
  %i.ei = zext i16 %.150 to i32                   ; 2 uses
  %i.ej = lshr i32 %i.ei, 8
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = xor i64 %i.eh, %i.ek
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.el
  %i.en = load i16, ptr %i.em, align 2, !tbaa !19
  %i.eo = lshr i64 %i.eg, 8
  %i.ep = and i64 %i.eo, 255
  %i.eq = and i32 %i.ei, 255
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = xor i64 %i.ep, %i.er
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.es
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !19
  %i.ev = xor i16 %i.eu, %i.en
  %i.ew = lshr i64 %i.eg, 16
  %i.ex = and i64 %i.ew, 255
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.ex
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !19
  %i.fa = xor i16 %i.ev, %i.ez
  %i.fb = lshr i64 %i.eg, 24
  %i.fc = and i64 %i.fb, 255
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.fc
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !19
  %i.ff = xor i16 %i.fa, %i.fe
  %i.fg = lshr i64 %i.eg, 32
  %i.fh = and i64 %i.fg, 255
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.fh
  %i.fj = load i16, ptr %i.fi, align 2, !tbaa !19
  %i.fk = xor i16 %i.ff, %i.fj
  %i.fl = lshr i64 %i.eg, 40
  %i.fm = and i64 %i.fl, 255
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.fm
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !19
  %i.fp = xor i16 %i.fk, %i.fo
  %i.fq = lshr i64 %i.eg, 48
  %i.fr = and i64 %i.fq, 255
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.fr
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !19
  %i.fu = xor i16 %i.fp, %i.ft
  %i.fv = lshr i64 %i.eg, 56
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.fv
  %i.fx = load i16, ptr %i.fw, align 2, !tbaa !19
  %i.fy = xor i16 %i.fu, %i.fx                    ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.13749, i64 8 ; 2 uses
  %i.ga = add i64 %.14048, -8                     ; 3 uses
  %i.gb = icmp ugt i64 %i.ga, 7
  br i1 %i.gb, label %bb.b, label %.preheader, !llvm.loop !38

.lr.ph59:                                         ; preds = %.preheader
  %i.gc = lshr i16 %.1.lcssa, 8
  %i.gd = load i8, ptr %.137.lcssa, align 1, !tbaa !13
  %i.ge = zext i8 %i.gd to i16
  %i.gf = xor i16 %i.gc, %i.ge
  %i.gg = zext nneg i16 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.gg
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !19 ; 2 uses
  %i.gj = shl i16 %.1.lcssa, 8
  %i.gk = xor i16 %i.gi, %i.gj                    ; 2 uses
  %.not = icmp eq i64 %.140.lcssa, 1
  br i1 %.not, label %._crit_edge, label %.lr.ph59.1

.lr.ph59.1:                                       ; preds = %.lr.ph59
  %i.gl = getelementptr inbounds nuw i8, ptr %.137.lcssa, i64 1
  %i.gm = lshr i16 %i.gk, 8
  %i.gn = load i8, ptr %i.gl, align 1, !tbaa !13
  %i.go = zext i8 %i.gn to i16
  %i.gp = xor i16 %i.gm, %i.go
  %i.gq = zext nneg i16 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.gq
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !19 ; 2 uses
  %i.gt = shl i16 %i.gi, 8
  %i.gu = xor i16 %i.gs, %i.gt                    ; 2 uses
  %.not.1 = icmp eq i64 %.140.lcssa, 2
  br i1 %.not.1, label %._crit_edge, label %.lr.ph59.2

.lr.ph59.2:                                       ; preds = %.lr.ph59.1
  %i.gv = getelementptr inbounds nuw i8, ptr %.137.lcssa, i64 2
  %i.gw = lshr i16 %i.gu, 8
  %i.gx = load i8, ptr %i.gv, align 1, !tbaa !13
  %i.gy = zext i8 %i.gx to i16
  %i.gz = xor i16 %i.gw, %i.gy
  %i.ha = zext nneg i16 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ha
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !19 ; 2 uses
  %i.hd = shl i16 %i.gs, 8
  %i.he = xor i16 %i.hc, %i.hd                    ; 2 uses
  %.not.2 = icmp eq i64 %.140.lcssa, 3
  br i1 %.not.2, label %._crit_edge, label %.lr.ph59.3

.lr.ph59.3:                                       ; preds = %.lr.ph59.2
  %i.hf = getelementptr inbounds nuw i8, ptr %.137.lcssa, i64 3
  %i.hg = lshr i16 %i.he, 8
  %i.hh = load i8, ptr %i.hf, align 1, !tbaa !13
  %i.hi = zext i8 %i.hh to i16
  %i.hj = xor i16 %i.hg, %i.hi
  %i.hk = zext nneg i16 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.hk
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !19 ; 2 uses
  %i.hn = shl i16 %i.hc, 8
  %i.ho = xor i16 %i.hm, %i.hn                    ; 2 uses
  %.not.3 = icmp eq i64 %.140.lcssa, 4
  br i1 %.not.3, label %._crit_edge, label %.lr.ph59.4

.lr.ph59.4:                                       ; preds = %.lr.ph59.3
  %i.hp = getelementptr inbounds nuw i8, ptr %.137.lcssa, i64 4
  %i.hq = lshr i16 %i.ho, 8
  %i.hr = load i8, ptr %i.hp, align 1, !tbaa !13
  %i.hs = zext i8 %i.hr to i16
  %i.ht = xor i16 %i.hq, %i.hs
  %i.hu = zext nneg i16 %i.ht to i64
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.hu
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !19 ; 2 uses
  %i.hx = shl i16 %i.hm, 8
  %i.hy = xor i16 %i.hw, %i.hx                    ; 2 uses
  %.not.4 = icmp eq i64 %.140.lcssa, 5
  br i1 %.not.4, label %._crit_edge, label %.lr.ph59.5

.lr.ph59.5:                                       ; preds = %.lr.ph59.4
  %i.hz = getelementptr inbounds nuw i8, ptr %.137.lcssa, i64 5
  %i.ia = lshr i16 %i.hy, 8
  %i.ib = load i8, ptr %i.hz, align 1, !tbaa !13
  %i.ic = zext i8 %i.ib to i16
  %i.id = xor i16 %i.ia, %i.ic
  %i.ie = zext nneg i16 %i.id to i64
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ie
  %i.ig = load i16, ptr %i.if, align 2, !tbaa !19 ; 2 uses
  %i.ih = shl i16 %i.hw, 8
  %i.ii = xor i16 %i.ig, %i.ih                    ; 2 uses
  %.not.5 = icmp eq i64 %.140.lcssa, 6
  br i1 %.not.5, label %._crit_edge, label %.lr.ph59.6

.lr.ph59.6:                                       ; preds = %.lr.ph59.5
  %i.ij = getelementptr inbounds nuw i8, ptr %.137.lcssa, i64 6
  %i.ik = lshr i16 %i.ii, 8
  %i.il = load i8, ptr %i.ij, align 1, !tbaa !13
  %i.im = zext i8 %i.il to i16
  %i.in = xor i16 %i.ik, %i.im
  %i.io = zext nneg i16 %i.in to i64
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.io
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !19
  %i.ir = shl i16 %i.ig, 8
  %i.is = xor i16 %i.iq, %i.ir
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph59, %.lr.ph59.1, %.lr.ph59.2, %.lr.ph59.3, %.lr.ph59.4, %.lr.ph59.5, %.lr.ph59.6, %.preheader
  %.2.lcssa = phi i16 [ %.1.lcssa, %.preheader ], [ %i.gk, %.lr.ph59 ], [ %i.gu, %.lr.ph59.1 ], [ %i.he, %.lr.ph59.2 ], [ %i.ho, %.lr.ph59.3 ], [ %i.hy, %.lr.ph59.4 ], [ %i.ii, %.lr.ph59.5 ], [ %i.is, %.lr.ph59.6 ]
  ret i16 %.2.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local noundef i64 @crcspeed64big(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noundef i64 @llvm.bswap.i64(i64 %1) ; 3 uses
  %i.b = icmp ne i64 %3, 0
  %i.c = ptrtoint ptr %2 to i64
  %i.d = and i64 %i.c, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = and i1 %i.b, %i.e
  br i1 %i.f, label %.lr.ph, label %.preheader42

.preheader42:                                     ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %.lr.ph.7, %bb.a
  %.039.lcssa = phi i64 [ %i.a, %bb.a ], [ %i.w, %.lr.ph ], [ %i.al, %.lr.ph.1 ], [ %i.ba, %.lr.ph.2 ], [ %i.bp, %.lr.ph.3 ], [ %i.ce, %.lr.ph.4 ], [ %i.ct, %.lr.ph.5 ], [ %i.di, %.lr.ph.6 ], [ %i.dx, %.lr.ph.7 ] ; 2 uses
  %.036.lcssa = phi i64 [ %3, %bb.a ], [ %i.x, %.lr.ph ], [ %i.am, %.lr.ph.1 ], [ %i.bb, %.lr.ph.2 ], [ %i.bq, %.lr.ph.3 ], [ %i.cf, %.lr.ph.4 ], [ %i.cu, %.lr.ph.5 ], [ %i.dj, %.lr.ph.6 ], [ %i.dy, %.lr.ph.7 ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %.lr.ph ], [ %i.ae, %.lr.ph.1 ], [ %i.at, %.lr.ph.2 ], [ %i.bi, %.lr.ph.3 ], [ %i.bx, %.lr.ph.4 ], [ %i.cm, %.lr.ph.5 ], [ %i.db, %.lr.ph.6 ], [ %i.dq, %.lr.ph.7 ] ; 2 uses
  %i.g = icmp ugt i64 %.036.lcssa, 7
  br i1 %i.g, label %.lr.ph51, label %.preheader

.lr.ph51:                                         ; preds = %.preheader42
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4096
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 6144
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8192
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 10240
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12288
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 14336
  br label %bb.b

.lr.ph:                                           ; preds = %bb.a
  %i.o = lshr i64 %i.a, 56
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 3 uses
  %i.q = load i8, ptr %2, align 1, !tbaa !13
  %i.r = zext i8 %i.q to i64
  %i.s = xor i64 %i.o, %i.r
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8, !tbaa !14
  %i.v = shl i64 %i.a, 8
  %i.w = xor i64 %i.u, %i.v                       ; 3 uses
  %i.x = add i64 %3, -1                           ; 2 uses
  %i.y = icmp ne i64 %i.x, 0
  %i.z = ptrtoint ptr %i.p to i64
  %i.aa = and i64 %i.z, 7
  %i.ab = icmp ne i64 %i.aa, 0
  %i.ac = select i1 %i.y, i1 %i.ab, i1 false
  br i1 %i.ac, label %.lr.ph.1, label %.preheader42

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.ad = lshr i64 %i.w, 56
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 3 uses
  %i.af = load i8, ptr %i.p, align 1, !tbaa !13
  %i.ag = zext i8 %i.af to i64
  %i.ah = xor i64 %i.ad, %i.ag
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !14
  %i.ak = shl i64 %i.w, 8
  %i.al = xor i64 %i.aj, %i.ak                    ; 3 uses
  %i.am = add i64 %3, -2                          ; 2 uses
  %i.an = icmp ne i64 %i.am, 0
  %i.ao = ptrtoint ptr %i.ae to i64
  %i.ap = and i64 %i.ao, 7
  %i.aq = icmp ne i64 %i.ap, 0
  %i.ar = select i1 %i.an, i1 %i.aq, i1 false
  br i1 %i.ar, label %.lr.ph.2, label %.preheader42

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.as = lshr i64 %i.al, 56
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 3 ; 3 uses
  %i.au = load i8, ptr %i.ae, align 1, !tbaa !13
  %i.av = zext i8 %i.au to i64
  %i.aw = xor i64 %i.as, %i.av
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !14
  %i.az = shl i64 %i.al, 8
  %i.ba = xor i64 %i.ay, %i.az                    ; 3 uses
  %i.bb = add i64 %3, -3                          ; 2 uses
  %i.bc = icmp ne i64 %i.bb, 0
  %i.bd = ptrtoint ptr %i.at to i64
  %i.be = and i64 %i.bd, 7
  %i.bf = icmp ne i64 %i.be, 0
  %i.bg = select i1 %i.bc, i1 %i.bf, i1 false
  br i1 %i.bg, label %.lr.ph.3, label %.preheader42

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.bh = lshr i64 %i.ba, 56
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.bj = load i8, ptr %i.at, align 1, !tbaa !13
  %i.bk = zext i8 %i.bj to i64
  %i.bl = xor i64 %i.bh, %i.bk
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !14
  %i.bo = shl i64 %i.ba, 8
  %i.bp = xor i64 %i.bn, %i.bo                    ; 3 uses
  %i.bq = add i64 %3, -4                          ; 2 uses
  %i.br = icmp ne i64 %i.bq, 0
  %i.bs = ptrtoint ptr %i.bi to i64
  %i.bt = and i64 %i.bs, 7
  %i.bu = icmp ne i64 %i.bt, 0
  %i.bv = select i1 %i.br, i1 %i.bu, i1 false
  br i1 %i.bv, label %.lr.ph.4, label %.preheader42

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %i.bw = lshr i64 %i.bp, 56
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 5 ; 3 uses
  %i.by = load i8, ptr %i.bi, align 1, !tbaa !13
  %i.bz = zext i8 %i.by to i64
  %i.ca = xor i64 %i.bw, %i.bz
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !14
  %i.cd = shl i64 %i.bp, 8
  %i.ce = xor i64 %i.cc, %i.cd                    ; 3 uses
  %i.cf = add i64 %3, -5                          ; 2 uses
  %i.cg = icmp ne i64 %i.cf, 0
  %i.ch = ptrtoint ptr %i.bx to i64
  %i.ci = and i64 %i.ch, 7
  %i.cj = icmp ne i64 %i.ci, 0
  %i.ck = select i1 %i.cg, i1 %i.cj, i1 false
  br i1 %i.ck, label %.lr.ph.5, label %.preheader42

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %i.cl = lshr i64 %i.ce, 56
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 3 uses
  %i.cn = load i8, ptr %i.bx, align 1, !tbaa !13
  %i.co = zext i8 %i.cn to i64
  %i.cp = xor i64 %i.cl, %i.co
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cp
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !14
  %i.cs = shl i64 %i.ce, 8
  %i.ct = xor i64 %i.cr, %i.cs                    ; 3 uses
  %i.cu = add i64 %3, -6                          ; 2 uses
  %i.cv = icmp ne i64 %i.cu, 0
  %i.cw = ptrtoint ptr %i.cm to i64
  %i.cx = and i64 %i.cw, 7
  %i.cy = icmp ne i64 %i.cx, 0
  %i.cz = select i1 %i.cv, i1 %i.cy, i1 false
  br i1 %i.cz, label %.lr.ph.6, label %.preheader42

.lr.ph.6:                                         ; preds = %.lr.ph.5
  %i.da = lshr i64 %i.ct, 56
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 7 ; 3 uses
  %i.dc = load i8, ptr %i.cm, align 1, !tbaa !13
  %i.dd = zext i8 %i.dc to i64
  %i.de = xor i64 %i.da, %i.dd
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !14
  %i.dh = shl i64 %i.ct, 8
  %i.di = xor i64 %i.dg, %i.dh                    ; 3 uses
  %i.dj = add i64 %3, -7                          ; 2 uses
  %i.dk = icmp ne i64 %i.dj, 0
  %i.dl = ptrtoint ptr %i.db to i64
  %i.dm = and i64 %i.dl, 7
  %i.dn = icmp ne i64 %i.dm, 0
  %i.do = select i1 %i.dk, i1 %i.dn, i1 false
  br i1 %i.do, label %.lr.ph.7, label %.preheader42

.lr.ph.7:                                         ; preds = %.lr.ph.6
  %i.dp = lshr i64 %i.di, 56
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dr = load i8, ptr %i.db, align 1, !tbaa !13
  %i.ds = zext i8 %i.dr to i64
  %i.dt = xor i64 %i.dp, %i.ds
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dt
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !14
  %i.dw = shl i64 %i.di, 8
  %i.dx = xor i64 %i.dv, %i.dw
  %i.dy = add i64 %3, -8
  br label %.preheader42

.preheader:                                       ; preds = %bb.b, %.preheader42
  %.140.lcssa = phi i64 [ %.039.lcssa, %.preheader42 ], [ %i.fw, %bb.b ] ; 4 uses
  %.137.lcssa = phi i64 [ %.036.lcssa, %.preheader42 ], [ %i.fy, %bb.b ] ; 5 uses
  %.1.lcssa = phi ptr [ %.0.lcssa, %.preheader42 ], [ %i.fx, %bb.b ] ; 3 uses
  %.not55 = icmp eq i64 %.137.lcssa, 0
  br i1 %.not55, label %._crit_edge, label %.lr.ph59.preheader

.lr.ph59.preheader:                               ; preds = %.preheader
  %xtraiter = and i64 %.137.lcssa, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph59.prol.loopexit, label %.lr.ph59.prol

.lr.ph59.prol:                                    ; preds = %.lr.ph59.preheader
  %i.dz = lshr i64 %.140.lcssa, 56
  %i.ea = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 1
  %i.eb = load i8, ptr %.1.lcssa, align 1, !tbaa !13
  %i.ec = zext i8 %i.eb to i64
  %i.ed = xor i64 %i.dz, %i.ec
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ed
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !14
  %i.eg = shl i64 %.140.lcssa, 8
  %i.eh = xor i64 %i.ef, %i.eg                    ; 2 uses
  %i.ei = add nsw i64 %.137.lcssa, -1
  br label %.lr.ph59.prol.loopexit

.lr.ph59.prol.loopexit:                           ; preds = %.lr.ph59.prol, %.lr.ph59.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph59.preheader ], [ %i.eh, %.lr.ph59.prol ]
  %.258.unr = phi ptr [ %.1.lcssa, %.lr.ph59.preheader ], [ %i.ea, %.lr.ph59.prol ]
  %.23857.unr = phi i64 [ %.137.lcssa, %.lr.ph59.preheader ], [ %i.ei, %.lr.ph59.prol ]
  %.24156.unr = phi i64 [ %.140.lcssa, %.lr.ph59.preheader ], [ %i.eh, %.lr.ph59.prol ]
  %i.ej = icmp eq i64 %.137.lcssa, 1
  br i1 %i.ej, label %._crit_edge, label %.lr.ph59

bb.b:                                             ; preds = %.lr.ph51, %bb.b
  %.150 = phi ptr [ %.0.lcssa, %.lr.ph51 ], [ %i.fx, %bb.b ] ; 2 uses
  %.13749 = phi i64 [ %.036.lcssa, %.lr.ph51 ], [ %i.fy, %bb.b ]
  %.14048 = phi i64 [ %.039.lcssa, %.lr.ph51 ], [ %i.fw, %bb.b ]
  %i.ek = load i64, ptr %.150, align 8, !tbaa !14
  %i.el = xor i64 %i.ek, %.14048                  ; 8 uses
  %i.em = and i64 %i.el, 255
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.em
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !14
  %i.ep = lshr i64 %i.el, 8
  %i.eq = and i64 %i.ep, 255
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.eq
  %i.es = load i64, ptr %i.er, align 8, !tbaa !14
  %i.et = xor i64 %i.es, %i.eo
  %i.eu = lshr i64 %i.el, 16
  %i.ev = and i64 %i.eu, 255
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ev
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !14
  %i.ey = xor i64 %i.et, %i.ex
  %i.ez = lshr i64 %i.el, 24
  %i.fa = and i64 %i.ez, 255
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.fa
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !14
  %i.fd = xor i64 %i.ey, %i.fc
  %i.fe = lshr i64 %i.el, 32
  %i.ff = and i64 %i.fe, 255
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ff
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !14
  %i.fi = xor i64 %i.fd, %i.fh
  %i.fj = lshr i64 %i.el, 40
  %i.fk = and i64 %i.fj, 255
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.fk
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !14
  %i.fn = xor i64 %i.fi, %i.fm
  %i.fo = lshr i64 %i.el, 48
  %i.fp = and i64 %i.fo, 255
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.fp
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !14
  %i.fs = xor i64 %i.fn, %i.fr
  %i.ft = lshr i64 %i.el, 56
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ft
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !14
  %i.fw = xor i64 %i.fs, %i.fv                    ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.150, i64 8 ; 2 uses
  %i.fy = add i64 %.13749, -8                     ; 3 uses
  %i.fz = icmp ugt i64 %i.fy, 7
  br i1 %i.fz, label %bb.b, label %.preheader, !llvm.loop !39

.lr.ph59:                                         ; preds = %.lr.ph59.prol.loopexit, %.lr.ph59
  %.258 = phi ptr [ %i.gk, %.lr.ph59 ], [ %.258.unr, %.lr.ph59.prol.loopexit ] ; 3 uses
  %.23857 = phi i64 [ %i.gs, %.lr.ph59 ], [ %.23857.unr, %.lr.ph59.prol.loopexit ]
  %.24156 = phi i64 [ %i.gr, %.lr.ph59 ], [ %.24156.unr, %.lr.ph59.prol.loopexit ] ; 2 uses
  %i.ga = lshr i64 %.24156, 56
  %i.gb = getelementptr inbounds nuw i8, ptr %.258, i64 1
  %i.gc = load i8, ptr %.258, align 1, !tbaa !13
  %i.gd = zext i8 %i.gc to i64
  %i.ge = xor i64 %i.ga, %i.gd
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ge
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !14
  %i.gh = shl i64 %.24156, 8
  %i.gi = xor i64 %i.gg, %i.gh                    ; 2 uses
  %i.gj = lshr i64 %i.gi, 56
  %i.gk = getelementptr inbounds nuw i8, ptr %.258, i64 2
  %i.gl = load i8, ptr %i.gb, align 1, !tbaa !13
  %i.gm = zext i8 %i.gl to i64
  %i.gn = xor i64 %i.gj, %i.gm
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.gn
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !14
  %i.gq = shl i64 %i.gi, 8
  %i.gr = xor i64 %i.gp, %i.gq                    ; 2 uses
  %i.gs = add nsw i64 %.23857, -2                 ; 2 uses
  %.not.1 = icmp eq i64 %i.gs, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph59, !llvm.loop !40

._crit_edge:                                      ; preds = %.lr.ph59.prol.loopexit, %.lr.ph59, %.preheader
  %.241.lcssa = phi i64 [ %.140.lcssa, %.preheader ], [ %.lcssa.unr, %.lr.ph59.prol.loopexit ], [ %i.gr, %.lr.ph59 ]
  %i.gt = tail call noundef i64 @llvm.bswap.i64(i64 %.241.lcssa)
  ret i64 %i.gt
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local noundef zeroext i16 @crcspeed16big(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = zext i16 %1 to i64
  %i.b = tail call noundef i64 @llvm.bswap.i64(i64 %i.a) ; 4 uses
  %i.c = icmp ne i64 %3, 0
  %i.d = ptrtoint ptr %2 to i64
  %i.e = and i64 %i.d, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = and i1 %i.c, %i.f
  br i1 %i.g, label %.lr.ph, label %.preheader46

.preheader46:                                     ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %.lr.ph.7, %bb.a
  %.041.lcssa = phi ptr [ %2, %bb.a ], [ %i.q, %.lr.ph ], [ %i.af, %.lr.ph.1 ], [ %i.au, %.lr.ph.2 ], [ %i.bi, %.lr.ph.3 ], [ %i.bw, %.lr.ph.4 ], [ %i.ck, %.lr.ph.5 ], [ %i.cy, %.lr.ph.6 ], [ %i.dm, %.lr.ph.7 ]
  %.038.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.x, %.lr.ph ], [ %i.an, %.lr.ph.1 ], [ %i.bb, %.lr.ph.2 ], [ %i.bp, %.lr.ph.3 ], [ %i.cd, %.lr.ph.4 ], [ %i.cr, %.lr.ph.5 ], [ %i.df, %.lr.ph.6 ], [ %i.dt, %.lr.ph.7 ] ; 2 uses
  %.0.lcssa = phi i64 [ %3, %bb.a ], [ %i.y, %.lr.ph ], [ %i.ao, %.lr.ph.1 ], [ %i.bc, %.lr.ph.2 ], [ %i.bq, %.lr.ph.3 ], [ %i.ce, %.lr.ph.4 ], [ %i.cs, %.lr.ph.5 ], [ %i.dg, %.lr.ph.6 ], [ %i.du, %.lr.ph.7 ] ; 3 uses
  %i.h = icmp ugt i64 %.0.lcssa, 7
  br i1 %i.h, label %.lr.ph55, label %.preheader

.lr.ph55:                                         ; preds = %.preheader46
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1536
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2560
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3072
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3584
  br label %bb.b

.lr.ph:                                           ; preds = %bb.a
  %i.p = lshr exact i64 %i.b, 48
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 3 uses
  %i.r = load i8, ptr %2, align 1, !tbaa !13
  %.tr44 = trunc i64 %i.p to i8
  %.narrow45 = xor i8 %i.r, %.tr44
  %i.s = zext i8 %.narrow45 to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !19
  %i.v = zext i16 %i.u to i64
  %i.w = lshr exact i64 %i.b, 8
  %i.x = or disjoint i64 %i.w, %i.v               ; 2 uses
  %i.y = add i64 %3, -1                           ; 2 uses
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = ptrtoint ptr %i.q to i64
  %i.ab = and i64 %i.aa, 7
  %i.ac = icmp ne i64 %i.ab, 0
  %i.ad = select i1 %i.z, i1 %i.ac, i1 false
  br i1 %i.ad, label %.lr.ph.1, label %.preheader46

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.ae = lshr i64 %i.b, 56
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 3 uses
  %i.ag = load i8, ptr %i.q, align 1, !tbaa !13
  %i.ah = zext i8 %i.ag to i64
  %i.ai = xor i64 %i.ae, %i.ah
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !19
  %i.al = zext i16 %i.ak to i64
  %i.am = lshr i64 %i.x, 8
  %i.an = xor i64 %i.am, %i.al                    ; 2 uses
  %i.ao = add i64 %3, -2                          ; 2 uses
  %i.ap = icmp ne i64 %i.ao, 0
  %i.aq = ptrtoint ptr %i.af to i64
  %i.ar = and i64 %i.aq, 7
  %i.as = icmp ne i64 %i.ar, 0
  %i.at = select i1 %i.ap, i1 %i.as, i1 false
  br i1 %i.at, label %.lr.ph.2, label %.preheader46

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 3 ; 3 uses
  %i.av = load i8, ptr %i.af, align 1, !tbaa !13
  %i.aw = zext i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aw
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !19
  %i.az = zext i16 %i.ay to i64
  %i.ba = lshr i64 %i.an, 8
  %i.bb = xor i64 %i.ba, %i.az                    ; 2 uses
  %i.bc = add i64 %3, -3                          ; 2 uses
  %i.bd = icmp ne i64 %i.bc, 0
  %i.be = ptrtoint ptr %i.au to i64
  %i.bf = and i64 %i.be, 7
  %i.bg = icmp ne i64 %i.bf, 0
  %i.bh = select i1 %i.bd, i1 %i.bg, i1 false
  br i1 %i.bh, label %.lr.ph.3, label %.preheader46

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.bj = load i8, ptr %i.au, align 1, !tbaa !13
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !19
  %i.bn = zext i16 %i.bm to i64
  %i.bo = lshr i64 %i.bb, 8
  %i.bp = xor i64 %i.bo, %i.bn                    ; 2 uses
  %i.bq = add i64 %3, -4                          ; 2 uses
  %i.br = icmp ne i64 %i.bq, 0
  %i.bs = ptrtoint ptr %i.bi to i64
  %i.bt = and i64 %i.bs, 7
  %i.bu = icmp ne i64 %i.bt, 0
  %i.bv = select i1 %i.br, i1 %i.bu, i1 false
  br i1 %i.bv, label %.lr.ph.4, label %.preheader46

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 5 ; 3 uses
  %i.bx = load i8, ptr %i.bi, align 1, !tbaa !13
  %i.by = zext i8 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !19
  %i.cb = zext i16 %i.ca to i64
  %i.cc = lshr i64 %i.bp, 8
  %i.cd = xor i64 %i.cc, %i.cb                    ; 2 uses
  %i.ce = add i64 %3, -5                          ; 2 uses
  %i.cf = icmp ne i64 %i.ce, 0
  %i.cg = ptrtoint ptr %i.bw to i64
  %i.ch = and i64 %i.cg, 7
  %i.ci = icmp ne i64 %i.ch, 0
  %i.cj = select i1 %i.cf, i1 %i.ci, i1 false
  br i1 %i.cj, label %.lr.ph.5, label %.preheader46

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 3 uses
  %i.cl = load i8, ptr %i.bw, align 1, !tbaa !13
  %i.cm = zext i8 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cm
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !19
  %i.cp = zext i16 %i.co to i64
  %i.cq = lshr i64 %i.cd, 8
  %i.cr = xor i64 %i.cq, %i.cp                    ; 2 uses
  %i.cs = add i64 %3, -6                          ; 2 uses
  %i.ct = icmp ne i64 %i.cs, 0
  %i.cu = ptrtoint ptr %i.ck to i64
  %i.cv = and i64 %i.cu, 7
  %i.cw = icmp ne i64 %i.cv, 0
  %i.cx = select i1 %i.ct, i1 %i.cw, i1 false
  br i1 %i.cx, label %.lr.ph.6, label %.preheader46

.lr.ph.6:                                         ; preds = %.lr.ph.5
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 7 ; 3 uses
  %i.cz = load i8, ptr %i.ck, align 1, !tbaa !13
  %i.da = zext i8 %i.cz to i64
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.da
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !19
  %i.dd = zext i16 %i.dc to i64
  %i.de = lshr i64 %i.cr, 8
  %i.df = xor i64 %i.de, %i.dd                    ; 2 uses
  %i.dg = add i64 %3, -7                          ; 2 uses
  %i.dh = icmp ne i64 %i.dg, 0
  %i.di = ptrtoint ptr %i.cy to i64
  %i.dj = and i64 %i.di, 7
  %i.dk = icmp ne i64 %i.dj, 0
  %i.dl = select i1 %i.dh, i1 %i.dk, i1 false
  br i1 %i.dl, label %.lr.ph.7, label %.preheader46

.lr.ph.7:                                         ; preds = %.lr.ph.6
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dn = load i8, ptr %i.cy, align 1, !tbaa !13
  %i.do = zext i8 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.do
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !19
  %i.dr = zext i16 %i.dq to i64
  %i.ds = lshr i64 %i.df, 8
  %i.dt = xor i64 %i.ds, %i.dr
  %i.du = add i64 %3, -8
  br label %.preheader46

.preheader:                                       ; preds = %bb.b, %.preheader46
  %.139.lcssa = phi i64 [ %.038.lcssa, %.preheader46 ], [ %i.fn, %bb.b ] ; 2 uses
  %.1.lcssa = phi i64 [ %.0.lcssa, %.preheader46 ], [ %i.fp, %bb.b ] ; 4 uses
  %.not59 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not59, label %._crit_edge, label %.lr.ph63.prol

.lr.ph63.prol:                                    ; preds = %.preheader, %.lr.ph63.prol
  %.262.prol = phi i64 [ %i.dw, %.lr.ph63.prol ], [ %.1.lcssa, %.preheader ]
  %.24061.prol = phi i64 [ %i.dv, %.lr.ph63.prol ], [ %.139.lcssa, %.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph63.prol ], [ 0, %.preheader ]
  %i.dv = lshr i64 %.24061.prol, 8                ; 2 uses
  %i.dw = add nsw i64 %.262.prol, -1              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %.1.lcssa
  br i1 %prol.iter.cmp.not, label %.lr.ph63.prol.loopexit, label %.lr.ph63.prol, !llvm.loop !41

.lr.ph63.prol.loopexit:                           ; preds = %.lr.ph63.prol
  %i.dx = icmp ult i64 %.1.lcssa, 8
  br i1 %i.dx, label %._crit_edge, label %.lr.ph63

bb.b:                                             ; preds = %.lr.ph55, %bb.b
  %.154 = phi i64 [ %.0.lcssa, %.lr.ph55 ], [ %i.fp, %bb.b ]
  %.13953 = phi i64 [ %.038.lcssa, %.lr.ph55 ], [ %i.fn, %bb.b ] ; 2 uses
  %.14252 = phi ptr [ %.041.lcssa, %.lr.ph55 ], [ %i.fo, %bb.b ] ; 2 uses
  %i.dy = load i64, ptr %.14252, align 8, !tbaa !14 ; 8 uses
  %i.dz = lshr i64 %.13953, 48
  %i.ea = xor i64 %i.dy, %i.dz
  %i.eb = and i64 %i.ea, 255
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.eb
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !19
  %i.ee = lshr i64 %i.dy, 8
  %i.ef = xor i64 %i.ee, %.13953
  %i.eg = and i64 %i.ef, 255
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.eg
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !19
  %i.ej = xor i16 %i.ei, %i.ed
  %i.ek = lshr i64 %i.dy, 16
  %i.el = and i64 %i.ek, 255
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.el
  %i.en = load i16, ptr %i.em, align 2, !tbaa !19
  %i.eo = xor i16 %i.ej, %i.en
  %i.ep = lshr i64 %i.dy, 24
  %i.eq = and i64 %i.ep, 255
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.eq
  %i.es = load i16, ptr %i.er, align 2, !tbaa !19
  %i.et = xor i16 %i.eo, %i.es
  %i.eu = lshr i64 %i.dy, 32
  %i.ev = and i64 %i.eu, 255
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.ev
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !19
  %i.ey = xor i16 %i.et, %i.ex
  %i.ez = lshr i64 %i.dy, 40
  %i.fa = and i64 %i.ez, 255
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.fa
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !19
  %i.fd = xor i16 %i.ey, %i.fc
  %i.fe = lshr i64 %i.dy, 48
  %i.ff = and i64 %i.fe, 255
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.ff
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !19
  %i.fi = xor i16 %i.fd, %i.fh
  %i.fj = lshr i64 %i.dy, 56
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.fj
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !19
  %i.fm = xor i16 %i.fi, %i.fl
  %i.fn = zext i16 %i.fm to i64                   ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.14252, i64 8
  %i.fp = add i64 %.154, -8                       ; 3 uses
  %i.fq = icmp ugt i64 %i.fp, 7
  br i1 %i.fq, label %bb.b, label %.preheader, !llvm.loop !43

.lr.ph63:                                         ; preds = %.lr.ph63.prol.loopexit, %.lr.ph63
  %.262 = phi i64 [ %i.fr, %.lr.ph63 ], [ %i.dw, %.lr.ph63.prol.loopexit ]
  %i.fr = add nsw i64 %.262, -8                   ; 2 uses
  %.not.7 = icmp eq i64 %i.fr, 0
  br i1 %.not.7, label %._crit_edge, label %.lr.ph63, !llvm.loop !44

._crit_edge:                                      ; preds = %.lr.ph63.prol.loopexit, %.lr.ph63, %.preheader
  %.240.lcssa = phi i64 [ %.139.lcssa, %.preheader ], [ %i.dv, %.lr.ph63.prol.loopexit ], [ 0, %.lr.ph63 ]
  %i.fs = tail call noundef i64 @llvm.bswap.i64(i64 %.240.lcssa)
  %i.ft = trunc i64 %i.fs to i16
  ret i16 %i.ft
}

; Function Attrs: nounwind uwtable
define dso_local i64 @crcspeed64native(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @crcspeed64little(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  ret i64 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local zeroext i16 @crcspeed16native(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext %1, ptr nofree noundef readonly %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call zeroext i16 @crcspeed16little(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, i64 noundef %3)
  ret i16 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local void @crcspeed64native_init(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = trunc i64 %indvars.iv.i to i8
  store i8 %i.b, ptr %i.a, align 1, !tbaa !13
  %i.c = call i64 %0(i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef 1) #7, !inline_history !23
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  store i64 %i.c, ptr %i.d, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.b, !llvm.loop !16

.preheader.i:                                     ; preds = %bb.b, %.preheader.i
  %indvars.iv30.i = phi i64 [ %indvars.iv.next31.i, %.preheader.i ], [ 0, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv30.i ; 8 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %i.g = and i64 %i.f, 255
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14
  %i.j = lshr i64 %i.f, 8
  %i.k = xor i64 %i.i, %i.j                       ; 3 uses
  %gep.i = getelementptr inbounds nuw i8, ptr %i.e, i64 2048
  store i64 %i.k, ptr %gep.i, align 8, !tbaa !14
  %i.l = and i64 %i.k, 255
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !14
  %i.o = lshr i64 %i.k, 8
  %i.p = xor i64 %i.n, %i.o                       ; 3 uses
  %gep.1.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4096
  store i64 %i.p, ptr %gep.1.i, align 8, !tbaa !14
  %i.q = and i64 %i.p, 255
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !14
  %i.t = lshr i64 %i.p, 8
  %i.u = xor i64 %i.s, %i.t                       ; 3 uses
  %gep.2.i = getelementptr inbounds nuw i8, ptr %i.e, i64 6144
  store i64 %i.u, ptr %gep.2.i, align 8, !tbaa !14
  %i.v = and i64 %i.u, 255
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !14
  %i.y = lshr i64 %i.u, 8
  %i.z = xor i64 %i.x, %i.y                       ; 3 uses
  %gep.3.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8192
  store i64 %i.z, ptr %gep.3.i, align 8, !tbaa !14
  %i.aa = and i64 %i.z, 255
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !14
  %i.ad = lshr i64 %i.z, 8
  %i.ae = xor i64 %i.ac, %i.ad                    ; 3 uses
  %gep.4.i = getelementptr inbounds nuw i8, ptr %i.e, i64 10240
  store i64 %i.ae, ptr %gep.4.i, align 8, !tbaa !14
  %i.af = and i64 %i.ae, 255
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !14
  %i.ai = lshr i64 %i.ae, 8
  %i.aj = xor i64 %i.ah, %i.ai                    ; 3 uses
  %gep.5.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12288
  store i64 %i.aj, ptr %gep.5.i, align 8, !tbaa !14
  %i.ak = and i64 %i.aj, 255
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !14
  %i.an = lshr i64 %i.aj, 8
  %i.ao = xor i64 %i.am, %i.an
  %gep.6.i = getelementptr inbounds nuw i8, ptr %i.e, i64 14336
  store i64 %i.ao, ptr %gep.6.i, align 8, !tbaa !14
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1 ; 2 uses
  %exitcond33.not.i = icmp eq i64 %indvars.iv.next31.i, 256
  br i1 %exitcond33.not.i, label %crcspeed64little_init.exit, label %.preheader.i, !llvm.loop !18

crcspeed64little_init.exit:                       ; preds = %.preheader.i
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @crcspeed16native_init(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  tail call void @crcspeed16little_init(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.bswap.v2i64(<2 x i64>) #5

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!11, !11, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !11, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = !{!20, !20, i64 0}
!20 = !{!"short", !11, i64 0}
!21 = distinct !{!21, !17}
!22 = distinct !{!22, !17}
!23 = !{ptr @crcspeed64little_init}
!24 = distinct !{!24, !17, !25, !26}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = distinct !{!27, !17, !25, !26}
!28 = distinct !{!28, !17, !25, !26}
!29 = distinct !{!29, !17, !25, !26}
!30 = distinct !{!30, !17, !25, !26}
!31 = distinct !{!31, !17, !25, !26}
!32 = distinct !{!32, !17, !25, !26}
!33 = distinct !{!33, !17, !25, !26}
!34 = distinct !{!34, !17}
!35 = distinct !{!35, !17}
!36 = distinct !{!36, !17}
!37 = distinct !{!37, !17}
!38 = distinct !{!38, !17}
!39 = distinct !{!39, !17}
!40 = distinct !{!40, !17}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = distinct !{!43, !17}
!44 = distinct !{!44, !17}
end_hunk_0
