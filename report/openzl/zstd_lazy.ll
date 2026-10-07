Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/zstd_lazy?download=true
inline.NumInlined: 1316
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 126
loop-unroll.NumUnrolled: 169
begin_hunk_0_@ZSTD_compressBlock_greedy_dedicatedDictSearch_row:bb.a
ZSTD_hashPtrSalted.exit.us70.prol:                ; preds = %ZSTD_hashPtrSalted.exit.us70.preheader
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ay
  %.val22.us69.prol = load i64, ptr %i.dd, align 1, !tbaa !46
  %i.de = mul i64 %.val22.us69.prol, -3523014627193847808
  %i.df = xor i64 %i.de, %i.bl
  %i.dg = lshr i64 %i.df, %i.bn
  %i.dh = trunc i64 %i.dg to i32                  ; 2 uses
  %i.di = lshr i32 %i.dh, 8
  %i.dj = shl nuw nsw i32 %i.di, %i.p
  %i.dk = zext nneg i32 %i.dj to i64              ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.dk
  tail call void @llvm.prefetch.p0(ptr %i.dl, i32 0, i32 3, i32 1)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.dk
  tail call void @llvm.prefetch.p0(ptr %i.dm, i32 0, i32 3, i32 1)
  %i.dn = and i64 %i.ay, 7
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.dn
  store i32 %i.dh, ptr %i.do, align 4, !tbaa !45
  %indvars.iv.next124.prol = add nuw nsw i64 %i.ay, 1
  br label %ZSTD_hashPtrSalted.exit.us70.prol.loopexit

ZSTD_hashPtrSalted.exit.us70.prol.loopexit:       ; preds = %ZSTD_hashPtrSalted.exit.us70.prol, %ZSTD_hashPtrSalted.exit.us70.preheader
  %indvars.iv123.unr = phi i64 [ %i.ay, %ZSTD_hashPtrSalted.exit.us70.preheader ], [ %indvars.iv.next124.prol, %ZSTD_hashPtrSalted.exit.us70.prol ]
  %i.dp = add nsw i64 %wide.trip.count136, -1
  %i.dq = icmp eq i64 %i.dp, %i.ay
  br i1 %i.dq, label %ZSTD_row_fillHashCache.exit6, label %ZSTD_hashPtrSalted.exit.us70

ZSTD_hashPtrSalted.exit.preheader:                ; preds = %.lr.ph.split
  %i.dr = sub nsw i64 %wide.trip.count136, %i.ay
  %xtraiter209 = and i64 %i.dr, 1
  %lcmp.mod210.not = icmp eq i64 %xtraiter209, 0
  br i1 %lcmp.mod210.not, label %ZSTD_hashPtrSalted.exit.prol.loopexit, label %ZSTD_hashPtrSalted.exit.prol

ZSTD_hashPtrSalted.exit.prol:                     ; preds = %ZSTD_hashPtrSalted.exit.preheader
  %i.ds = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ay
  %.val18.prol = load i32, ptr %i.ds, align 1, !tbaa !45
  %i.dt = mul i32 %.val18.prol, -1640531535
  %i.du = xor i32 %i.dt, %i.bo
  %i.dv = lshr i32 %i.du, %i.bp                   ; 2 uses
  %i.dw = lshr i32 %i.dv, 8
  %i.dx = shl nuw nsw i32 %i.dw, %i.p
  %i.dy = zext nneg i32 %i.dx to i64              ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.dy
  tail call void @llvm.prefetch.p0(ptr %i.dz, i32 0, i32 3, i32 1)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.dy
  tail call void @llvm.prefetch.p0(ptr %i.ea, i32 0, i32 3, i32 1)
  %i.eb = and i64 %i.ay, 7
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.eb
  store i32 %i.dv, ptr %i.ec, align 4, !tbaa !45
  %indvars.iv.next129.prol = add nuw nsw i64 %i.ay, 1
  br label %ZSTD_hashPtrSalted.exit.prol.loopexit

ZSTD_hashPtrSalted.exit.prol.loopexit:            ; preds = %ZSTD_hashPtrSalted.exit.prol, %ZSTD_hashPtrSalted.exit.preheader
  %indvars.iv128.unr = phi i64 [ %i.ay, %ZSTD_hashPtrSalted.exit.preheader ], [ %indvars.iv.next129.prol, %ZSTD_hashPtrSalted.exit.prol ]
  %i.ed = add nsw i64 %wide.trip.count136, -1
  %i.ee = icmp eq i64 %i.ed, %i.ay
  br i1 %i.ee, label %ZSTD_row_fillHashCache.exit6, label %ZSTD_hashPtrSalted.exit

ZSTD_hashPtrSalted.exit.us70:                     ; preds = %ZSTD_hashPtrSalted.exit.us70.prol.loopexit, %ZSTD_hashPtrSalted.exit.us70
  %indvars.iv123 = phi i64 [ %indvars.iv.next124.1, %ZSTD_hashPtrSalted.exit.us70 ], [ %indvars.iv123.unr, %ZSTD_hashPtrSalted.exit.us70.prol.loopexit ] ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv123
  %.val22.us69 = load i64, ptr %i.ef, align 1, !tbaa !46
  %i.eg = mul i64 %.val22.us69, -3523014627193847808
  %i.eh = xor i64 %i.eg, %i.bl
  %i.ei = lshr i64 %i.eh, %i.bn
  %i.ej = trunc i64 %i.ei to i32                  ; 2 uses
  %i.ek = lshr i32 %i.ej, 8
  %i.el = shl nuw nsw i32 %i.ek, %i.p
  %i.em = zext nneg i32 %i.el to i64              ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.em
  tail call void @llvm.prefetch.p0(ptr %i.en, i32 0, i32 3, i32 1)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.em
  tail call void @llvm.prefetch.p0(ptr %i.eo, i32 0, i32 3, i32 1)
  %i.ep = and i64 %indvars.iv123, 7
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.ep
  store i32 %i.ej, ptr %i.eq, align 4, !tbaa !45
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next124
  %.val22.us69.1 = load i64, ptr %i.er, align 1, !tbaa !46
  %i.es = mul i64 %.val22.us69.1, -3523014627193847808
  %i.et = xor i64 %i.es, %i.bl
  %i.eu = lshr i64 %i.et, %i.bn
  %i.ev = trunc i64 %i.eu to i32                  ; 2 uses
  %i.ew = lshr i32 %i.ev, 8
  %i.ex = shl nuw nsw i32 %i.ew, %i.p
  %i.ey = zext nneg i32 %i.ex to i64              ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ey
  tail call void @llvm.prefetch.p0(ptr %i.ez, i32 0, i32 3, i32 1)
  %i.fa = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ey
  tail call void @llvm.prefetch.p0(ptr %i.fa, i32 0, i32 3, i32 1)
  %i.fb = and i64 %indvars.iv.next124, 7
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.fb
  store i32 %i.ev, ptr %i.fc, align 4, !tbaa !45
  %indvars.iv.next124.1 = add nuw nsw i64 %indvars.iv123, 2 ; 2 uses
  %exitcond127.not.1 = icmp eq i64 %indvars.iv.next124.1, %wide.trip.count136
  br i1 %exitcond127.not.1, label %ZSTD_row_fillHashCache.exit6, label %ZSTD_hashPtrSalted.exit.us70, !llvm.loop !5

ZSTD_hashPtrSalted.exit.us75:                     ; preds = %ZSTD_hashPtrSalted.exit.us75.prol.loopexit, %ZSTD_hashPtrSalted.exit.us75
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %ZSTD_hashPtrSalted.exit.us75 ], [ %indvars.iv.unr, %ZSTD_hashPtrSalted.exit.us75.prol.loopexit ] ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  %.val20.us74 = load i64, ptr %i.fd, align 1, !tbaa !46
  %i.fe = mul i64 %.val20.us74, -3523014627271114752
  %i.ff = xor i64 %i.fe, %i.bl
  %i.fg = lshr i64 %i.ff, %i.bn
  %i.fh = trunc i64 %i.fg to i32                  ; 2 uses
  %i.fi = lshr i32 %i.fh, 8
  %i.fj = shl nuw nsw i32 %i.fi, %i.p
  %i.fk = zext nneg i32 %i.fj to i64              ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.fk
  tail call void @llvm.prefetch.p0(ptr %i.fl, i32 0, i32 3, i32 1)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.fk
  tail call void @llvm.prefetch.p0(ptr %i.fm, i32 0, i32 3, i32 1)
  %i.fn = and i64 %indvars.iv, 7
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.fn
  store i32 %i.fh, ptr %i.fo, align 4, !tbaa !45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next
  %.val20.us74.1 = load i64, ptr %i.fp, align 1, !tbaa !46
  %i.fq = mul i64 %.val20.us74.1, -3523014627271114752
  %i.fr = xor i64 %i.fq, %i.bl
  %i.fs = lshr i64 %i.fr, %i.bn
  %i.ft = trunc i64 %i.fs to i32                  ; 2 uses
  %i.fu = lshr i32 %i.ft, 8
  %i.fv = shl nuw nsw i32 %i.fu, %i.p
  %i.fw = zext nneg i32 %i.fv to i64              ; 2 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.fw
  tail call void @llvm.prefetch.p0(ptr %i.fx, i32 0, i32 3, i32 1)
  %i.fy = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.fw
  tail call void @llvm.prefetch.p0(ptr %i.fy, i32 0, i32 3, i32 1)
  %i.fz = and i64 %indvars.iv.next, 7
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.fz
  store i32 %i.ft, ptr %i.ga, align 4, !tbaa !45
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count136
  br i1 %exitcond.not.1, label %ZSTD_row_fillHashCache.exit6, label %ZSTD_hashPtrSalted.exit.us75, !llvm.loop !5

ZSTD_hashPtrSalted.exit:                          ; preds = %ZSTD_hashPtrSalted.exit.prol.loopexit, %ZSTD_hashPtrSalted.exit
  %indvars.iv128 = phi i64 [ %indvars.iv.next129.1, %ZSTD_hashPtrSalted.exit ], [ %indvars.iv128.unr, %ZSTD_hashPtrSalted.exit.prol.loopexit ] ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv128
  %.val18 = load i32, ptr %i.gb, align 1, !tbaa !45
  %i.gc = mul i32 %.val18, -1640531535
  %i.gd = xor i32 %i.gc, %i.bo
  %i.ge = lshr i32 %i.gd, %i.bp                   ; 2 uses
  %i.gf = lshr i32 %i.ge, 8
  %i.gg = shl nuw nsw i32 %i.gf, %i.p
  %i.gh = zext nneg i32 %i.gg to i64              ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.gh
  tail call void @llvm.prefetch.p0(ptr %i.gi, i32 0, i32 3, i32 1)
  %i.gj = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.gh
  tail call void @llvm.prefetch.p0(ptr %i.gj, i32 0, i32 3, i32 1)
  %i.gk = and i64 %indvars.iv128, 7
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.gk
  store i32 %i.ge, ptr %i.gl, align 4, !tbaa !45
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next129
  %.val18.1 = load i32, ptr %i.gm, align 1, !tbaa !45
  %i.gn = mul i32 %.val18.1, -1640531535
  %i.go = xor i32 %i.gn, %i.bo
  %i.gp = lshr i32 %i.go, %i.bp                   ; 2 uses
  %i.gq = lshr i32 %i.gp, 8
  %i.gr = shl nuw nsw i32 %i.gq, %i.p
  %i.gs = zext nneg i32 %i.gr to i64              ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.gs
  tail call void @llvm.prefetch.p0(ptr %i.gt, i32 0, i32 3, i32 1)
  %i.gu = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.gs
  tail call void @llvm.prefetch.p0(ptr %i.gu, i32 0, i32 3, i32 1)
  %i.gv = and i64 %indvars.iv.next129, 7
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.gv
  store i32 %i.gp, ptr %i.gw, align 4, !tbaa !45
  %indvars.iv.next129.1 = add nuw nsw i64 %indvars.iv128, 2 ; 2 uses
  %exitcond132.not.1 = icmp eq i64 %indvars.iv.next129.1, %wide.trip.count136
  br i1 %exitcond132.not.1, label %ZSTD_row_fillHashCache.exit6, label %ZSTD_hashPtrSalted.exit, !llvm.loop !5

ZSTD_row_fillHashCache.exit6:                     ; preds = %ZSTD_hashPtrSalted.exit.us75.prol.loopexit, %ZSTD_hashPtrSalted.exit.us75, %ZSTD_hashPtrSalted.exit.us70.prol.loopexit, %ZSTD_hashPtrSalted.exit.us70, %ZSTD_hashPtrSalted.exit.prol.loopexit, %ZSTD_hashPtrSalted.exit, %ZSTD_row_prefetch.exit.us, %bb.c
  tail call void asm sideeffect ".p2align 5", "~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !58
  %i.gx = add nsw i64 %4, -16
  %i.gy = icmp sgt i64 %i.gx, %i.an
  br i1 %i.gy, label %.lr.ph108, label %ZSTD_compressBlock_lazy_generic.exit

.lr.ph108:                                        ; preds = %ZSTD_row_fillHashCache.exit6
  %i.gz = ptrtoint ptr %i.e to i64                ; 3 uses
  %i.ha = zext i32 %i.ae to i64
  %i.hb = sub nsw i64 0, %i.ha
  %invariant.gep = getelementptr i8, ptr %i.z, i64 %i.hb ; 2 uses
  %i.hc = getelementptr inbounds i8, ptr %i.b, i64 -32 ; 6 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 3 uses
  %i.hi = ptrtoint ptr %i.c to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.hk = icmp ugt i32 %i.n, 4
  %.not56 = icmp eq i32 %i.n, 5
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hm = getelementptr inbounds i8, ptr %i.b, i64 -7 ; 2 uses
  %i.hn = getelementptr inbounds i8, ptr %i.b, i64 -3
  %i.ho = getelementptr inbounds i8, ptr %i.b, i64 -1
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph108, %.critedge9.i
  %.0.i107 = phi ptr [ %i.ao, %.lr.ph108 ], [ %.7.i, %.critedge9.i ] ; 16 uses
  %.0410.i106 = phi ptr [ %3, %.lr.ph108 ], [ %.6416.i, %.critedge9.i ] ; 11 uses
  %.2472.i105 = phi i32 [ %i.s, %.lr.ph108 ], [ %.9479.i, %.critedge9.i ] ; 3 uses
  %.2482.i104 = phi i32 [ %i.q, %.lr.ph108 ], [ %.9489.i, %.critedge9.i ] ; 5 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.0.i107, i64 1 ; 3 uses
  %i.hq = ptrtoint ptr %.0.i107 to i64            ; 2 uses
  %i.hr = sub i64 %i.hq, %i.gz
  %i.hs = trunc i64 %i.hr to i32
  %reass.sub = sub i32 %i.hs, %.2482.i104
  %i.ht = add i32 %reass.sub, 1                   ; 4 uses
  %i.hu = icmp ult i32 %i.ht, %i.g                ; 2 uses
  %i.hv = sub i32 %i.ht, %i.ae
  %i.hw = zext i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.hw
  %i.hy = zext i32 %i.ht to i64
  %i.hz = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.hy
  %i.ia = select i1 %i.hu, ptr %i.hx, ptr %i.hz   ; 2 uses
  %i.ib = sub i32 %i.ht, %i.g
  %i.ic = icmp ugt i32 %i.ib, -4
  br i1 %i.ic, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val16 = load i32, ptr %i.ia, align 1, !tbaa !45
  %.val15 = load i32, ptr %i.hp, align 1, !tbaa !45
  %i.id = icmp eq i32 %.val16, %.val15
  br i1 %i.id, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ie = select i1 %i.hu, ptr %i.ab, ptr %i.b
  %i.if = getelementptr inbounds nuw i8, ptr %.0.i107, i64 5
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  %i.ih = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.if, ptr noundef nonnull %i.ig, ptr noundef %i.b, ptr noundef %i.ie, ptr noundef %i.i)
  %i.ii = add i64 %i.ih, 4
  br label %bb.ab

bb.k:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 999999999, ptr %i.a, align 8, !tbaa !46
  switch i32 %i.l, label %bb.t [
    i32 4, label %bb.l
    i32 5, label %bb.p
  ]

bb.l:                                             ; preds = %bb.k
  switch i32 %i.o, label %bb.o [
    i32 4, label %bb.m
    i32 5, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.ij = call fastcc i64 @ZSTD_RowFindBestMatch_dedicatedDictSearch_4_4(ptr noundef %0, ptr noundef %.0.i107, ptr noundef %i.b, ptr noundef nonnull %i.a)
  br label %ZSTD_searchMax.exit

bb.n:                                             ; preds = %bb.l
  %i.ik = call fastcc i64 @ZSTD_RowFindBestMatch_dedicatedDictSearch_4_5(ptr noundef %0, ptr noundef %.0.i107, ptr noundef %i.b, ptr noundef nonnull %i.a)
  br label %ZSTD_searchMax.exit

bb.o:                                             ; preds = %bb.l
  %i.il = call fastcc i64 @ZSTD_RowFindBestMatch_dedicatedDictSearch_4_6(ptr noundef %0, ptr noundef %.0.i107, ptr noundef %i.b, ptr noundef nonnull %i.a)
  br label %ZSTD_searchMax.exit

bb.p:                                             ; preds = %bb.k
  switch i32 %i.o, label %bb.s [
    i32 4, label %bb.q
    i32 5, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.im = call fastcc i64 @ZSTD_RowFindBestMatch_dedicatedDictSearch_5_4(ptr noundef %0, ptr noundef %.0.i107, ptr noundef %i.b, ptr noundef nonnull %i.a)
  br label %ZSTD_searchMax.exit

bb.r:                                             ; preds = %bb.p
  %i.in = call fastcc i64 @ZSTD_RowFindBestMatch_dedicatedDictSearch_5_5(ptr noundef %0, ptr noundef %.0.i107, ptr noundef %i.b, ptr noundef nonnull %i.a)
  br label %ZSTD_searchMax.exit

bb.s:                                             ; preds = %bb.p
  %i.io = call fastcc i64 @ZSTD_RowFindBestMatch_dedicatedDictSearch_5_6(ptr noundef %0, ptr noundef %.0.i107, ptr noundef %i.b, ptr noundef nonnull %i.a)
  br label %ZSTD_searchMax.exit

bb.t:                                             ; preds = %bb.k
  switch i32 %i.o, label %bb.w [
    i32 4, label %bb.u
    i32 5, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.ip = call fastcc i64 @ZSTD_RowFindBestMatch_dedicatedDictSearch_6_4(ptr noundef %0, ptr noundef %.0.i107, ptr noundef %i.b, ptr noundef nonnull %i.a)
  br label %ZSTD_searchMax.exit

bb.v:                                             ; preds = %bb.t
  %i.iq = call fastcc i64 @ZSTD_RowFindBestMatch_dedicatedDictSearch_6_5(ptr noundef %0, ptr noundef %.0.i107, ptr noundef %i.b, ptr noundef nonnull %i.a)
  br label %ZSTD_searchMax.exit

bb.w:                                             ; preds = %bb.t
  %i.ir = call fastcc i64 @ZSTD_RowFindBestMatch_dedicatedDictSearch_6_6(ptr noundef %0, ptr noundef %.0.i107, ptr noundef %i.b, ptr noundef nonnull %i.a)
  br label %ZSTD_searchMax.exit

ZSTD_searchMax.exit:                              ; preds = %bb.m, %bb.n, %bb.o, %bb.q, %bb.r, %bb.s, %bb.u, %bb.v, %bb.w
  %.0.i11 = phi i64 [ %i.im, %bb.q ], [ %i.in, %bb.r ], [ %i.io, %bb.s ], [ %i.ip, %bb.u ], [ %i.iq, %bb.v ], [ %i.ir, %bb.w ], [ %i.ij, %bb.m ], [ %i.ik, %bb.n ], [ %i.il, %bb.o ] ; 5 uses
  %.not = icmp eq i64 %.0.i11, 0                  ; 2 uses
  %i.is = load i64, ptr %i.a, align 8             ; 3 uses
  %.0430.i = select i1 %.not, i64 1, i64 %i.is    ; 3 uses
  %.0422.i = select i1 %.not, ptr %i.hp, ptr %.0.i107 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.it = icmp ult i64 %.0.i11, 4
  br i1 %i.it, label %bb.x, label %bb.y

bb.x:                                             ; preds = %ZSTD_searchMax.exit
  %i.iu = ptrtoint ptr %.0410.i106 to i64
  %i.iv = sub i64 %i.hq, %i.iu                    ; 2 uses
  %i.iw = lshr i64 %i.iv, 8
  %i.ix = getelementptr inbounds nuw i8, ptr %.0.i107, i64 %i.iw
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 1
  %i.iz = icmp ugt i64 %i.iv, 2047
  %i.ja = zext i1 %i.iz to i32
  store i32 %i.ja, ptr %i.ap, align 4, !tbaa !57
  br label %.critedge9.i

bb.y:                                             ; preds = %ZSTD_searchMax.exit
  %i.jb = icmp ugt i64 %i.is, 3
  br i1 %i.jb, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %5 = ptrtoint ptr %.0.i107 to i64
  %i.jc = add i64 %i.is, %i.gz
  %reass.sub112 = sub i64 %5, %i.jc
  %6 = add i64 %reass.sub112, -4294967293         ; 2 uses
  %i.jd = trunc i64 %6 to i32
  %i.je = icmp ugt i32 %i.g, %i.jd                ; 2 uses
  %i.jf = and i64 %6, 4294967295
  %i.jg = select i1 %i.je, ptr %i.aa, ptr %i.i    ; 2 uses
  %.v113 = select i1 %i.je, ptr %invariant.gep, ptr %i.e
  %i.jh = getelementptr i8, ptr %.v113, i64 %i.jf ; 2 uses
  %i.ji = icmp ugt ptr %.0.i107, %.0410.i106
  %i.jj = icmp ugt ptr %i.jh, %i.jg
  %or.cond534.i77 = select i1 %i.ji, i1 %i.jj, i1 false
  br i1 %or.cond534.i77, label %.lr.ph81, label %.critedge7.i

.lr.ph81:                                         ; preds = %bb.z, %bb.aa
  %.0409.i80 = phi ptr [ %i.jm, %bb.aa ], [ %i.jh, %bb.z ]
  %.17.i79 = phi ptr [ %i.jk, %bb.aa ], [ %.0422.i, %bb.z ] ; 2 uses
  %.21.i78 = phi i64 [ %i.jp, %bb.aa ], [ %.0.i11, %bb.z ] ; 2 uses
  %i.jk = getelementptr inbounds i8, ptr %.17.i79, i64 -1 ; 4 uses
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !53
  %i.jm = getelementptr inbounds i8, ptr %.0409.i80, i64 -1 ; 3 uses
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !53
  %i.jo = icmp eq i8 %i.jl, %i.jn
  br i1 %i.jo, label %bb.aa, label %.critedge7.i

bb.aa:                                            ; preds = %.lr.ph81
  %i.jp = add i64 %.21.i78, 1                     ; 2 uses
  %i.jq = icmp ugt ptr %i.jk, %.0410.i106
  %i.jr = icmp ugt ptr %i.jm, %i.jg
  %or.cond534.i = select i1 %i.jq, i1 %i.jr, i1 false
  br i1 %or.cond534.i, label %.lr.ph81, label %.critedge7.i, !llvm.loop !4

.critedge7.i:                                     ; preds = %bb.aa, %.lr.ph81, %bb.z
  %.21.i.lcssa = phi i64 [ %.0.i11, %bb.z ], [ %.21.i78, %.lr.ph81 ], [ %i.jp, %bb.aa ]
  %.17.i.lcssa = phi ptr [ %.0422.i, %bb.z ], [ %.17.i79, %.lr.ph81 ], [ %i.jk, %bb.aa ]
  %i.js = trunc i64 %.0430.i to i32
  %i.jt = add i32 %i.js, -3
  br label %bb.ab

bb.ab:                                            ; preds = %bb.j, %.critedge7.i, %bb.y
  %.3483.i = phi i32 [ %.2482.i104, %bb.j ], [ %i.jt, %.critedge7.i ], [ %.2482.i104, %bb.y ] ; 2 uses
  %.3473.i = phi i32 [ %.2472.i105, %bb.j ], [ %.2482.i104, %.critedge7.i ], [ %.2472.i105, %bb.y ] ; 2 uses
  %.23.i = phi i64 [ %i.ii, %bb.j ], [ %.21.i.lcssa, %.critedge7.i ], [ %.0.i11, %bb.y ] ; 2 uses
  %.15445.i = phi i64 [ 1, %bb.j ], [ %.0430.i, %.critedge7.i ], [ %.0430.i, %bb.y ]
  %.19.i = phi ptr [ %i.hp, %bb.j ], [ %.17.i.lcssa, %.critedge7.i ], [ %.0422.i, %bb.y ] ; 5 uses
  %i.ju = ptrtoint ptr %.19.i to i64              ; 4 uses
  %i.jv = ptrtoint ptr %.0410.i106 to i64         ; 2 uses
  %i.jw = sub i64 %i.ju, %i.jv                    ; 7 uses
  %i.jx = trunc i64 %.15445.i to i32
  %.not.i12 = icmp ugt ptr %.19.i, %i.hc
  %i.jy = load ptr, ptr %i.hd, align 8, !tbaa !63 ; 5 uses
  br i1 %.not.i12, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.0410.i.val = load <2 x i64>, ptr %.0410.i106, align 1, !tbaa !53
  store <2 x i64> %.0410.i.val, ptr %i.jy, align 1, !tbaa !53
  %i.jz = icmp ugt i64 %i.jw, 16
  %i.ka = load ptr, ptr %i.hd, align 8, !tbaa !63 ; 4 uses
  br i1 %i.jz, label %bb.ad, label %ZSTD_storeSeq.exit13.thread

ZSTD_storeSeq.exit13.thread:                      ; preds = %bb.ac
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.jw
  store ptr %i.kb, ptr %i.hd, align 8, !tbaa !63
  %.pre = load ptr, ptr %i.hg, align 8, !tbaa !64
  br label %bb.al

bb.ad:                                            ; preds = %bb.ac
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %i.kd = getelementptr inbounds nuw i8, ptr %.0410.i106, i64 16 ; 2 uses
  %i.ke = getelementptr i8, ptr %i.ka, i64 %i.jw
  %.val24 = load <2 x i64>, ptr %i.kd, align 1, !tbaa !53
  store <2 x i64> %.val24, ptr %i.kc, align 1, !tbaa !53
  %i.kf = icmp slt i64 %i.jw, 33
  br i1 %i.kf, label %ZSTD_storeSeq.exit13, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ka, i64 32
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %bb.ae
  %.pn.i = phi ptr [ %i.kd, %bb.ae ], [ %i.ki, %bb.af ] ; 2 uses
  %.1.i = phi ptr [ %i.kg, %bb.ae ], [ %i.kj, %bb.af ] ; 3 uses
  %.130.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %.130.i.val = load <2 x i64>, ptr %.130.i, align 1, !tbaa !53
  store <2 x i64> %.130.i.val, ptr %.1.i, align 1, !tbaa !53
  %i.kh = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.ki = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32 ; 2 uses
  %.val23 = load <2 x i64>, ptr %i.ki, align 1, !tbaa !53
  store <2 x i64> %.val23, ptr %i.kh, align 1, !tbaa !53
  %i.kj = getelementptr inbounds nuw i8, ptr %.1.i, i64 32 ; 2 uses
  %i.kk = icmp ult ptr %i.kj, %i.ke
  br i1 %i.kk, label %bb.af, label %ZSTD_storeSeq.exit13, !llvm.loop !2

bb.ag:                                            ; preds = %bb.ab
  %.not.i25 = icmp ugt ptr %.0410.i106, %i.hc
  br i1 %.not.i25, label %ZSTD_wildcopy.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.kl = sub i64 %i.he, %i.jv                    ; 2 uses
  %i.km = getelementptr inbounds i8, ptr %i.jy, i64 %i.kl ; 3 uses
  %.val19.i = load <2 x i64>, ptr %.0410.i106, align 1, !tbaa !53
  store <2 x i64> %.val19.i, ptr %i.jy, align 1, !tbaa !53
  %i.kn = icmp slt i64 %i.kl, 17
  br i1 %i.kn, label %ZSTD_wildcopy.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %bb.ai
  %.pn.i.i = phi ptr [ %.0410.i106, %bb.ai ], [ %i.kq, %bb.aj ] ; 2 uses
  %.1.i.i = phi ptr [ %i.ko, %bb.ai ], [ %i.kr, %bb.aj ] ; 3 uses
  %.130.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %.130.i.val.i = load <2 x i64>, ptr %.130.i.i, align 1, !tbaa !53
  store <2 x i64> %.130.i.val.i, ptr %.1.i.i, align 1, !tbaa !53
  %i.kp = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  %i.kq = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  %.val.i = load <2 x i64>, ptr %i.kq, align 1, !tbaa !53
  store <2 x i64> %.val.i, ptr %i.kp, align 1, !tbaa !53
  %i.kr = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32 ; 2 uses
  %i.ks = icmp ult ptr %i.kr, %i.km
  br i1 %i.ks, label %bb.aj, label %ZSTD_wildcopy.exit.i, !llvm.loop !2

ZSTD_wildcopy.exit.i:                             ; preds = %bb.aj, %bb.ah, %bb.ag
  %.014.i = phi ptr [ %.0410.i106, %bb.ag ], [ %i.hc, %bb.ah ], [ %i.hc, %bb.aj ] ; 7 uses
  %.0.i26 = phi ptr [ %i.jy, %bb.ag ], [ %i.km, %bb.ah ], [ %i.km, %bb.aj ] ; 6 uses
  %i.kt = icmp ult ptr %.014.i, %.19.i
  br i1 %i.kt, label %iter.check, label %ZSTD_storeSeq.exit13

iter.check:                                       ; preds = %ZSTD_wildcopy.exit.i
  %.014.i185 = ptrtoaddr ptr %.014.i to i64       ; 2 uses
  %.0.i26184 = ptrtoaddr ptr %.0.i26 to i64
  %i.ku = sub i64 %i.ju, %.014.i185               ; 7 uses
  %min.iters.check = icmp ult i64 %i.ku, 8
  %i.kv = sub i64 %.014.i185, %.0.i26184
  %diff.check = icmp ugt i64 %i.kv, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check186 = icmp ult i64 %i.ku, 32
  br i1 %min.iters.check186, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.kw = and i64 %i.ku, 24
  %n.vec = and i64 %i.ku, -32                     ; 5 uses
  %i.kx = getelementptr i8, ptr %.0.i26, i64 %n.vec
  %i.ky = getelementptr i8, ptr %.014.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0.i26, i64 %index ; 2 uses
  %next.gep187 = getelementptr i8, ptr %.014.i, i64 %index ; 2 uses
  %i.kz = getelementptr i8, ptr %next.gep187, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep187, align 1, !tbaa !53
  %wide.load188 = load <16 x i8>, ptr %i.kz, align 1, !tbaa !53
  %i.la = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !53
  store <16 x i8> %wide.load188, ptr %i.la, align 1, !tbaa !53
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.lb = icmp eq i64 %index.next, %n.vec
  br i1 %i.lb, label %middle.block, label %vector.body, !llvm.loop !112

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ku, %n.vec
  br i1 %cmp.n, label %ZSTD_storeSeq.exit13, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.kw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !67

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec190 = and i64 %i.ku, -8                   ; 4 uses
  %i.lc = getelementptr i8, ptr %.0.i26, i64 %n.vec190
  %i.ld = getelementptr i8, ptr %.014.i, i64 %n.vec190
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index191 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next195, %vec.epilog.vector.body ] ; 3 uses
  %next.gep192 = getelementptr i8, ptr %.0.i26, i64 %index191
  %next.gep193 = getelementptr i8, ptr %.014.i, i64 %index191
  %wide.load194 = load <8 x i8>, ptr %next.gep193, align 1, !tbaa !53
  store <8 x i8> %wide.load194, ptr %next.gep192, align 1, !tbaa !53
  %index.next195 = add nuw i64 %index191, 8       ; 2 uses
  %i.le = icmp eq i64 %index.next195, %n.vec190
  br i1 %i.le, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !113

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n196 = icmp eq i64 %i.ku, %n.vec190
  br i1 %cmp.n196, label %ZSTD_storeSeq.exit13, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.121.i.ph = phi ptr [ %.0.i26, %iter.check ], [ %i.kx, %vec.epilog.iter.check ], [ %i.lc, %vec.epilog.middle.block ] ; 2 uses
  %.11520.i.ph = phi ptr [ %.014.i, %iter.check ], [ %i.ky, %vec.epilog.iter.check ], [ %i.ld, %vec.epilog.middle.block ] ; 3 uses
  %.11520.i.ph211 = ptrtoaddr ptr %.11520.i.ph to i64 ; 2 uses
  %i.lf = sub i64 %i.ju, %.11520.i.ph211
  %xtraiter212 = and i64 %i.lf, 7                 ; 2 uses
  %lcmp.mod213.not = icmp eq i64 %xtraiter212, 0
  br i1 %lcmp.mod213.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.121.i.prol = phi ptr [ %i.li, %.lr.ph.i.prol ], [ %.121.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.11520.i.prol = phi ptr [ %i.lg, %.lr.ph.i.prol ], [ %.11520.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.lg = getelementptr inbounds nuw i8, ptr %.11520.i.prol, i64 1 ; 2 uses
  %i.lh = load i8, ptr %.11520.i.prol, align 1, !tbaa !53
  %i.li = getelementptr inbounds nuw i8, ptr %.121.i.prol, i64 1 ; 2 uses
  store i8 %i.lh, ptr %.121.i.prol, align 1, !tbaa !53
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter212
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !114

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.121.i.unr = phi ptr [ %.121.i.ph, %.lr.ph.i.preheader ], [ %i.li, %.lr.ph.i.prol ]
  %.11520.i.unr = phi ptr [ %.11520.i.ph, %.lr.ph.i.preheader ], [ %i.lg, %.lr.ph.i.prol ]
  %i.lj = sub i64 %.11520.i.ph211, %i.ju
  %i.lk = icmp ugt i64 %i.lj, -8
  br i1 %i.lk, label %ZSTD_storeSeq.exit13, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.121.i = phi ptr [ %i.mi, %.lr.ph.i ], [ %.121.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.11520.i = phi ptr [ %i.mg, %.lr.ph.i ], [ %.11520.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.11520.i, i64 1
  %i.lm = load i8, ptr %.11520.i, align 1, !tbaa !53
  %i.ln = getelementptr inbounds nuw i8, ptr %.121.i, i64 1
  store i8 %i.lm, ptr %.121.i, align 1, !tbaa !53
  %i.lo = getelementptr inbounds nuw i8, ptr %.11520.i, i64 2
  %i.lp = load i8, ptr %i.ll, align 1, !tbaa !53
  %i.lq = getelementptr inbounds nuw i8, ptr %.121.i, i64 2
  store i8 %i.lp, ptr %i.ln, align 1, !tbaa !53
  %i.lr = getelementptr inbounds nuw i8, ptr %.11520.i, i64 3
  %i.ls = load i8, ptr %i.lo, align 1, !tbaa !53
  %i.lt = getelementptr inbounds nuw i8, ptr %.121.i, i64 3
  store i8 %i.ls, ptr %i.lq, align 1, !tbaa !53
  %i.lu = getelementptr inbounds nuw i8, ptr %.11520.i, i64 4
  %i.lv = load i8, ptr %i.lr, align 1, !tbaa !53
  %i.lw = getelementptr inbounds nuw i8, ptr %.121.i, i64 4
  store i8 %i.lv, ptr %i.lt, align 1, !tbaa !53
  %i.lx = getelementptr inbounds nuw i8, ptr %.11520.i, i64 5
  %i.ly = load i8, ptr %i.lu, align 1, !tbaa !53
  %i.lz = getelementptr inbounds nuw i8, ptr %.121.i, i64 5
  store i8 %i.ly, ptr %i.lw, align 1, !tbaa !53
  %i.ma = getelementptr inbounds nuw i8, ptr %.11520.i, i64 6
end_hunk_0
begin_hunk_1_@ZSTD_HcFindBestMatch_dedicatedDictSearch_6:bb.a
  %i.fg = lshr i32 %i.ff, 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ah, i64 128
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !39 ; 3 uses
  %i.fj = zext nneg i32 %i.fg to i64              ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fj
  tail call void @llvm.prefetch.p0(ptr %i.fk, i32 0, i32 3, i32 1)
  %.not85 = icmp eq i32 %.0155.i.lcssa, 0
  br i1 %.not85, label %._crit_edge, label %.lr.ph70

.lr.ph70:                                         ; preds = %ZSTD_HcFindBestMatch.exit
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg45 = add i32 %i.q, 3
  %i.fm = add i32 %.neg45, %.neg84
  %wide.trip.count = zext nneg i32 %i.fd to i64
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph70, %.thread25
  %indvars.iv96 = phi i64 [ 0, %.lr.ph70 ], [ %indvars.iv.next97, %.thread25 ] ; 2 uses
  %.0100.i68 = phi i64 [ %.3154.i, %.lr.ph70 ], [ %.2102.i29, %.thread25 ] ; 4 uses
  %i.fn = getelementptr [4 x i8], ptr %i.aq, i64 %indvars.iv96
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !45 ; 3 uses
  %i.fp = zext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.fp ; 2 uses
  %.not.i5 = icmp eq i32 %i.fo, 0
  br i1 %.not.i5, label %ZSTD_dedicatedDictSearch_lazy_search.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.val6 = load i32, ptr %i.fq, align 1, !tbaa !45
  %.val = load i32, ptr %1, align 1, !tbaa !45
  %i.fr = icmp eq i32 %.val6, %.val
  br i1 %i.fr, label %bb.t, label %.thread25

bb.t:                                             ; preds = %bb.s
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  %i.ft = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.fl, ptr noundef nonnull %i.fs, ptr noundef %2, ptr noundef %i.ep, ptr noundef %i.m)
  %i.fu = add i64 %i.ft, 4                        ; 4 uses
  %i.fv = icmp ugt i64 %i.fu, %.0100.i68
  br i1 %i.fv, label %bb.u, label %.thread25

bb.u:                                             ; preds = %bb.t
  %i.fw = sub i32 %i.fm, %i.fo
  %i.fx = zext i32 %i.fw to i64
  store i64 %i.fx, ptr %3, align 8, !tbaa !46
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 %i.fu
  %.not = icmp eq ptr %i.fy, %2
  br i1 %.not, label %ZSTD_dedicatedDictSearch_lazy_search.exit, label %.thread25

.thread25:                                        ; preds = %bb.s, %bb.t, %bb.u
  %.2102.i29 = phi i64 [ %i.fu, %bb.u ], [ %.0100.i68, %bb.t ], [ %.0100.i68, %bb.s ] ; 2 uses
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next97, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.r, !llvm.loop !14

._crit_edge:                                      ; preds = %.thread25, %ZSTD_HcFindBestMatch.exit
  %.1104.i.lcssa = phi i32 [ 0, %ZSTD_HcFindBestMatch.exit ], [ %i.fd, %.thread25 ]
  %.0100.i.lcssa = phi i64 [ %.3154.i, %ZSTD_HcFindBestMatch.exit ], [ %.2102.i29, %.thread25 ] ; 2 uses
  %i.fz = and i32 %i.ff, 255
  %i.ga = sub i32 %.0155.i.lcssa, %.1104.i.lcssa
  %i.gb = tail call i32 @llvm.umin.i32(i32 %i.ga, i32 %i.fz) ; 4 uses
  %.not86 = icmp eq i32 %i.gb, 0
  br i1 %.not86, label %ZSTD_dedicatedDictSearch_lazy_search.exit, label %.lr.ph75.preheader

.lr.ph75.preheader:                               ; preds = %._crit_edge
  %wide.trip.count102 = zext nneg i32 %i.gb to i64 ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fj ; 9 uses
  %xtraiter131 = and i64 %wide.trip.count102, 7   ; 3 uses
  %i.gc = icmp samesign ult i32 %i.gb, 8
  br i1 %i.gc, label %.lr.ph75.epil.preheader, label %.lr.ph75.preheader.new

.lr.ph75.preheader.new:                           ; preds = %.lr.ph75.preheader
  %unroll_iter = and i64 %wide.trip.count102, 248
  br label %.lr.ph75

.lr.ph79.unr-lcssa:                               ; preds = %.lr.ph75
  %lcmp.mod132.not = icmp eq i64 %xtraiter131, 0
  br i1 %lcmp.mod132.not, label %.lr.ph79, label %.lr.ph75.epil.preheader

.lr.ph75.epil.preheader:                          ; preds = %.lr.ph79.unr-lcssa, %.lr.ph75.preheader
  %indvars.iv99.epil.init = phi i64 [ 0, %.lr.ph75.preheader ], [ %indvars.iv.next100.7, %.lr.ph79.unr-lcssa ]
  %lcmp.mod133 = icmp ne i64 %xtraiter131, 0
  tail call void @llvm.assume(i1 %lcmp.mod133)
  br label %.lr.ph75.epil

.lr.ph75.epil:                                    ; preds = %.lr.ph75.epil, %.lr.ph75.epil.preheader
  %indvars.iv99.epil = phi i64 [ %indvars.iv99.epil.init, %.lr.ph75.epil.preheader ], [ %indvars.iv.next100.epil, %.lr.ph75.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph75.epil.preheader ], [ %epil.iter.next, %.lr.ph75.epil ]
  %gep.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99.epil
  %i.gd = load i32, ptr %gep.epil, align 4, !tbaa !45
  %i.ge = zext i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ge
  tail call void @llvm.prefetch.p0(ptr %i.gf, i32 0, i32 3, i32 1)
  %indvars.iv.next100.epil = add nuw nsw i64 %indvars.iv99.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter131
  br i1 %epil.iter.cmp.not, label %.lr.ph79, label %.lr.ph75.epil, !llvm.loop !202

.lr.ph79:                                         ; preds = %.lr.ph75.epil, %.lr.ph79.unr-lcssa
  %.val7 = load i32, ptr %1, align 1, !tbaa !45
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg43 = add i32 %i.q, 3
  %i.gh = add i32 %.neg43, %.neg84
  %i.gi = lshr i32 %i.ff, 8
  %i.gj = zext nneg i32 %i.gi to i64
  br label %bb.v

.lr.ph75:                                         ; preds = %.lr.ph75, %.lr.ph75.preheader.new
  %indvars.iv99 = phi i64 [ 0, %.lr.ph75.preheader.new ], [ %indvars.iv.next100.7, %.lr.ph75 ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph75.preheader.new ], [ %niter.next.7, %.lr.ph75 ]
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %i.gk = load i32, ptr %gep, align 4, !tbaa !45
  %i.gl = zext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.gl
  tail call void @llvm.prefetch.p0(ptr %i.gm, i32 0, i32 3, i32 1)
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  %i.go = load i32, ptr %gep.1, align 4, !tbaa !45
  %i.gp = zext i32 %i.go to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.gp
  tail call void @llvm.prefetch.p0(ptr %i.gq, i32 0, i32 3, i32 1)
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gs = load i32, ptr %gep.2, align 4, !tbaa !45
  %i.gt = zext i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.gt
  tail call void @llvm.prefetch.p0(ptr %i.gu, i32 0, i32 3, i32 1)
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.3 = getelementptr inbounds nuw i8, ptr %i.gv, i64 12
  %i.gw = load i32, ptr %gep.3, align 4, !tbaa !45
  %i.gx = zext i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.gx
  tail call void @llvm.prefetch.p0(ptr %i.gy, i32 0, i32 3, i32 1)
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.4 = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.ha = load i32, ptr %gep.4, align 4, !tbaa !45
  %i.hb = zext i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.hb
  tail call void @llvm.prefetch.p0(ptr %i.hc, i32 0, i32 3, i32 1)
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.5 = getelementptr inbounds nuw i8, ptr %i.hd, i64 20
  %i.he = load i32, ptr %gep.5, align 4, !tbaa !45
  %i.hf = zext i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.hf
  tail call void @llvm.prefetch.p0(ptr %i.hg, i32 0, i32 3, i32 1)
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.6 = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  %i.hi = load i32, ptr %gep.6, align 4, !tbaa !45
  %i.hj = zext i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.hj
  tail call void @llvm.prefetch.p0(ptr %i.hk, i32 0, i32 3, i32 1)
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.7 = getelementptr inbounds nuw i8, ptr %i.hl, i64 28
  %i.hm = load i32, ptr %gep.7, align 4, !tbaa !45
  %i.hn = zext i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.hn
  tail call void @llvm.prefetch.p0(ptr %i.ho, i32 0, i32 3, i32 1)
  %indvars.iv.next100.7 = add nuw nsw i64 %indvars.iv99, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph79.unr-lcssa, label %.lr.ph75, !llvm.loop !15

bb.v:                                             ; preds = %.lr.ph79, %.thread35
  %indvars.iv104 = phi i64 [ %i.gj, %.lr.ph79 ], [ %indvars.iv.next105, %.thread35 ] ; 2 uses
  %.1.i78 = phi i32 [ 0, %.lr.ph79 ], [ %i.ic, %.thread35 ]
  %.3.i76 = phi i64 [ %.0100.i.lcssa, %.lr.ph79 ], [ %.5.i.ph, %.thread35 ] ; 3 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv104
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !45 ; 2 uses
  %i.hr = zext i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.hr ; 2 uses
  %.val8 = load i32, ptr %i.hs, align 1, !tbaa !45
  %i.ht = icmp eq i32 %.val8, %.val7
  br i1 %i.ht, label %bb.w, label %.thread35

bb.w:                                             ; preds = %bb.v
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  %i.hv = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.gg, ptr noundef nonnull %i.hu, ptr noundef %2, ptr noundef %i.ep, ptr noundef %i.m)
  %i.hw = add i64 %i.hv, 4                        ; 4 uses
  %i.hx = icmp ugt i64 %i.hw, %.3.i76
  br i1 %i.hx, label %bb.x, label %.thread35

bb.x:                                             ; preds = %bb.w
  %i.hy = sub i32 %i.gh, %i.hq
  %i.hz = zext i32 %i.hy to i64
  store i64 %i.hz, ptr %3, align 8, !tbaa !46
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 %i.hw
  %i.ib = icmp eq ptr %i.ia, %2
  br i1 %i.ib, label %ZSTD_dedicatedDictSearch_lazy_search.exit, label %.thread35

.thread35:                                        ; preds = %bb.v, %bb.x, %bb.w
  %.5.i.ph = phi i64 [ %i.hw, %bb.x ], [ %.3.i76, %bb.w ], [ %.3.i76, %bb.v ] ; 2 uses
  %i.ic = add nuw nsw i32 %.1.i78, 1              ; 2 uses
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1
  %exitcond106.not = icmp eq i32 %i.ic, %i.gb
  br i1 %exitcond106.not, label %ZSTD_dedicatedDictSearch_lazy_search.exit, label %bb.v, !llvm.loop !16

ZSTD_dedicatedDictSearch_lazy_search.exit:        ; preds = %bb.r, %bb.u, %.thread35, %bb.x, %._crit_edge
  %.2.i4 = phi i64 [ %.0100.i.lcssa, %._crit_edge ], [ %i.hw, %bb.x ], [ %.5.i.ph, %.thread35 ], [ %.0100.i68, %bb.r ], [ %i.fu, %bb.u ]
  ret i64 %.2.i4
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i64 @ZSTD_RowFindBestMatch_dedicatedDictSearch_4_4(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !51   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37   ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !54   ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n ; 2 uses
  %i.p = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %i.s = trunc i64 %i.r to i32                    ; 10 uses
  %i.t = load i32, ptr %i.i, align 8, !tbaa !83
  %i.u = shl nuw i32 1, %i.t                      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !81   ; 2 uses
  %i.x = sub i32 %i.s, %i.w
  %i.y = icmp ugt i32 %i.x, %i.u
  %i.z = sub i32 %i.s, %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !56
  %.not.i = icmp eq i32 %i.ab, 0
  %i.ac = select i1 %.not.i, i1 %i.y, i1 false
  %i.ad = select i1 %i.ac, i32 %i.z, i32 %i.w
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !84 ; 3 uses
  %..i = tail call i32 @llvm.umin.i32(i32 %i.af, i32 4)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !52 ; 2 uses
  %i.ai = shl nuw nsw i32 1, %..i                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !78 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 264
  %i.am = load i32, ptr %i.al, align 8, !tbaa !43
  %.val9 = load i32, ptr %1, align 1, !tbaa !45
  %i.an = mul i32 %.val9, -1640531535             ; 2 uses
  %i.ao = sub i32 34, %i.am
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = zext i32 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 2                ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 112 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !38
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ar
  tail call void @llvm.prefetch.p0(ptr %i.au, i32 0, i32 3, i32 1)
  %i.av = icmp ugt i32 %i.af, 4
  %i.aw = add i32 %i.af, -4
  %i.ax = shl nuw i32 1, %i.aw
  %i.ay = select i1 %i.av, i32 %i.ax, i32 0
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !57
  %.not274.i = icmp eq i32 %i.ba, 0
  br i1 %.not274.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !41 ; 5 uses
  %i.bd = sub i32 %i.s, %i.bc
  %i.be = icmp ugt i32 %i.bd, 384
  br i1 %i.be, label %bb.c, label %ZSTD_row_update_internal.exit.i, !prof !85

bb.c:                                             ; preds = %bb.b
  %i.bf = icmp ult i32 %i.bc, -96
  br i1 %i.bf, label %.lr.ph, label %ZSTD_row_update_internalImpl.exit.i

.lr.ph:                                           ; preds = %bb.c
  %i.bg = add nuw i32 %i.bc, 96
  %i.bh = sub i32 24, %i.h
  %i.bi = zext i32 %i.bc to i64
  %wide.trip.count = zext i32 %i.bg to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.bi, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.bj = load i64, ptr %i.ag, align 8, !tbaa !52
  %i.bk = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = trunc i64 %i.bj to i32
  %.val10 = load i32, ptr %i.bl, align 1, !tbaa !45
  %i.bn = mul i32 %.val10, -1640531535
  %i.bo = xor i32 %i.bn, %i.bm
  %i.bp = lshr i32 %i.bo, %i.bh                   ; 2 uses
  %i.bq = lshr i32 %i.bp, 4
  %i.br = and i32 %i.bq, 268435440
  %i.bs = zext nneg i32 %i.br to i64              ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bs
  tail call void @llvm.prefetch.p0(ptr %i.bt, i32 0, i32 3, i32 1)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bs
  tail call void @llvm.prefetch.p0(ptr %i.bu, i32 0, i32 3, i32 1)
  %i.bv = trunc nuw i64 %indvars.iv to i32
  %i.bw = and i64 %indvars.iv, 7
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !45 ; 2 uses
  store i32 %i.bp, ptr %i.bx, align 4, !tbaa !45
  %i.bz = lshr i32 %i.by, 4
  %i.ca = and i32 %i.bz, 268435440
  %i.cb = zext nneg i32 %i.ca to i64              ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cb ; 3 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !53
  %i.cf = add i8 %i.ce, 15
  %i.cg = and i8 %i.cf, 15                        ; 2 uses
  %i.ch = zext nneg i8 %i.cg to i32
  %i.ci = icmp eq i8 %i.cg, 0
  %i.cj = select i1 %i.ci, i32 15, i32 0
  %i.ck = add nuw nsw i32 %i.cj, %i.ch            ; 2 uses
  %i.cl = trunc nuw nsw i32 %i.ck to i8
  store i8 %i.cl, ptr %i.cd, align 1, !tbaa !53
  %i.cm = trunc i32 %i.by to i8
  %i.cn = zext nneg i32 %i.ck to i64              ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cn
  store i8 %i.cm, ptr %i.co, align 1, !tbaa !53
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.cn
  store i32 %i.bv, ptr %i.cp, align 4, !tbaa !45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %ZSTD_row_update_internalImpl.exit.i.loopexit, label %bb.d, !llvm.loop !0

ZSTD_row_update_internalImpl.exit.i.loopexit:     ; preds = %bb.d
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !38
  %.pre136 = load ptr, ptr %i.d, align 8, !tbaa !50
  %.pre137 = load i32, ptr %i.g, align 4, !tbaa !51
  br label %ZSTD_row_update_internalImpl.exit.i

ZSTD_row_update_internalImpl.exit.i:              ; preds = %ZSTD_row_update_internalImpl.exit.i.loopexit, %bb.c
  %i.cq = phi i32 [ %.pre137, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.h, %bb.c ] ; 4 uses
  %i.cr = phi ptr [ %.pre136, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.e, %bb.c ] ; 6 uses
  %i.cs = phi ptr [ %.pre, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.c, %bb.c ] ; 6 uses
  %i.ct = add i32 %i.s, -32                       ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.cv = zext i32 %i.ct to i64                   ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.cv ; 2 uses
  %i.cx = icmp ugt ptr %i.cw, %i.cu
  br i1 %i.cx, label %bb.f, label %bb.e

bb.e:                                             ; preds = %ZSTD_row_update_internalImpl.exit.i
  %i.cy = ptrtoint ptr %i.cu to i64
  %i.cz = ptrtoint ptr %i.cw to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = trunc i64 %i.da to i32
  %i.dc = add i32 %i.db, 1
  %i.dd = tail call i32 @llvm.umin.i32(i32 %i.dc, i32 8)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %ZSTD_row_update_internalImpl.exit.i
  %i.de = phi i32 [ %i.dd, %bb.e ], [ 0, %ZSTD_row_update_internalImpl.exit.i ] ; 3 uses
  %i.df = add i32 %i.de, %i.ct                    ; 2 uses
  %i.dg = icmp ult i32 %i.ct, %i.df
  br i1 %i.dg, label %.lr.ph62, label %ZSTD_row_update_internal.exit.i

.lr.ph62:                                         ; preds = %bb.f
  %i.dh = load i64, ptr %i.ag, align 8, !tbaa !52
  %i.di = trunc i64 %i.dh to i32                  ; 3 uses
  %i.dj = sub i32 24, %i.cq                       ; 3 uses
  %xtraiter = and i32 %i.de, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph62
  %i.dk = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.cv
  %.val11.prol = load i32, ptr %i.dk, align 1, !tbaa !45
  %i.dl = mul i32 %.val11.prol, -1640531535
  %i.dm = xor i32 %i.dl, %i.di
  %i.dn = lshr i32 %i.dm, %i.dj                   ; 2 uses
  %i.do = lshr i32 %i.dn, 4
  %i.dp = and i32 %i.do, 268435440
  %i.dq = zext nneg i32 %i.dp to i64              ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.dq
  tail call void @llvm.prefetch.p0(ptr %i.dr, i32 0, i32 3, i32 1)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.dq
  tail call void @llvm.prefetch.p0(ptr %i.ds, i32 0, i32 3, i32 1)
  %i.dt = and i64 %i.cv, 7
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dt
  store i32 %i.dn, ptr %i.du, align 4, !tbaa !45
  %indvars.iv.next112.prol = add nuw nsw i64 %i.cv, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph62
  %indvars.iv111.unr = phi i64 [ %i.cv, %.lr.ph62 ], [ %indvars.iv.next112.prol, %.prol.loopexit.unr-lcssa ]
  %i.dv = icmp eq i32 %i.de, 1
  br i1 %i.dv, label %ZSTD_row_update_internal.exit.i, label %.lr.ph62.new

.lr.ph62.new:                                     ; preds = %.prol.loopexit, %.lr.ph62.new
  %indvars.iv111 = phi i64 [ %indvars.iv.next112.1, %.lr.ph62.new ], [ %indvars.iv111.unr, %.prol.loopexit ] ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv111
  %.val11 = load i32, ptr %i.dw, align 1, !tbaa !45
  %i.dx = mul i32 %.val11, -1640531535
  %i.dy = xor i32 %i.dx, %i.di
  %i.dz = lshr i32 %i.dy, %i.dj                   ; 2 uses
  %i.ea = lshr i32 %i.dz, 4
  %i.eb = and i32 %i.ea, 268435440
  %i.ec = zext nneg i32 %i.eb to i64              ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.ec
end_hunk_1
begin_hunk_2_@ZSTD_RowFindBestMatch_dedicatedDictSearch_4_4:bb.a
  %i.lp = lshr i32 %i.lo, 8
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !39 ; 3 uses
  %i.ls = zext nneg i32 %i.lp to i64              ; 2 uses
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.ls
  tail call void @llvm.prefetch.p0(ptr %i.lt, i32 0, i32 3, i32 1)
  %.not103 = icmp eq i32 %i.lj, 0
  br i1 %.not103, label %._crit_edge88, label %.lr.ph87

.lr.ph87:                                         ; preds = %._crit_edge78
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg53 = add i32 %i.s, 3
  %i.lv = add i32 %.neg53, %.neg
  %wide.trip.count126 = zext nneg i32 %i.lm to i64
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph87, %.thread31
  %indvars.iv123 = phi i64 [ 0, %.lr.ph87 ], [ %indvars.iv.next124, %.thread31 ] ; 2 uses
  %.0100.i.i84 = phi i64 [ %.3261.i, %.lr.ph87 ], [ %.2102.i.i35, %.thread31 ] ; 4 uses
  %i.lw = getelementptr [4 x i8], ptr %i.kx, i64 %indvars.iv123
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !45 ; 3 uses
  %i.ly = zext i32 %i.lx to i64
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.ly ; 2 uses
  %.not.i.i = icmp eq i32 %i.lx, 0
  br i1 %.not.i.i, label %ZSTD_RowFindBestMatch.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.val6 = load i32, ptr %i.lz, align 1, !tbaa !45
  %.val5 = load i32, ptr %1, align 1, !tbaa !45
  %i.ma = icmp eq i32 %.val6, %.val5
  br i1 %i.ma, label %bb.ab, label %.thread31

bb.ab:                                            ; preds = %bb.aa
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lz, i64 4
  %i.mc = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.lu, ptr noundef nonnull %i.mb, ptr noundef %2, ptr noundef %i.kv, ptr noundef %i.o)
  %i.md = add i64 %i.mc, 4                        ; 4 uses
  %i.me = icmp ugt i64 %i.md, %.0100.i.i84
  br i1 %i.me, label %bb.ac, label %.thread31

bb.ac:                                            ; preds = %bb.ab
  %i.mf = sub i32 %i.lv, %i.lx
  %i.mg = zext i32 %i.mf to i64
  store i64 %i.mg, ptr %3, align 8, !tbaa !46
  %i.mh = getelementptr inbounds nuw i8, ptr %1, i64 %i.md
  %.not = icmp eq ptr %i.mh, %2
  br i1 %.not, label %ZSTD_RowFindBestMatch.exit, label %.thread31

.thread31:                                        ; preds = %bb.aa, %bb.ab, %bb.ac
  %.2102.i.i35 = phi i64 [ %i.md, %bb.ac ], [ %.0100.i.i84, %bb.ab ], [ %.0100.i.i84, %bb.aa ] ; 2 uses
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count126
  br i1 %exitcond127.not, label %._crit_edge88, label %bb.z, !llvm.loop !14

._crit_edge88:                                    ; preds = %.thread31, %._crit_edge78
  %.1104.i.i.lcssa = phi i32 [ 0, %._crit_edge78 ], [ %i.lm, %.thread31 ]
  %.0100.i.i.lcssa = phi i64 [ %.3261.i, %._crit_edge78 ], [ %.2102.i.i35, %.thread31 ] ; 2 uses
  %i.mi = and i32 %i.lo, 255
  %i.mj = sub i32 %i.lj, %.1104.i.i.lcssa
  %i.mk = tail call i32 @llvm.umin.i32(i32 %i.mj, i32 %i.mi) ; 4 uses
  %.not104 = icmp eq i32 %i.mk, 0
  br i1 %.not104, label %ZSTD_RowFindBestMatch.exit, label %.lr.ph93.preheader

.lr.ph93.preheader:                               ; preds = %._crit_edge88
  %wide.trip.count131 = zext nneg i32 %i.mk to i64 ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.ls ; 9 uses
  %xtraiter167 = and i64 %wide.trip.count131, 7   ; 3 uses
  %i.ml = icmp samesign ult i32 %i.mk, 8
  br i1 %i.ml, label %.lr.ph93.epil.preheader, label %.lr.ph93.preheader.new

.lr.ph93.preheader.new:                           ; preds = %.lr.ph93.preheader
  %unroll_iter = and i64 %wide.trip.count131, 248
  br label %.lr.ph93

.lr.ph97.unr-lcssa:                               ; preds = %.lr.ph93
  %lcmp.mod168.not = icmp eq i64 %xtraiter167, 0
  br i1 %lcmp.mod168.not, label %.lr.ph97, label %.lr.ph93.epil.preheader

.lr.ph93.epil.preheader:                          ; preds = %.lr.ph97.unr-lcssa, %.lr.ph93.preheader
  %indvars.iv128.epil.init = phi i64 [ 0, %.lr.ph93.preheader ], [ %indvars.iv.next129.7, %.lr.ph97.unr-lcssa ]
  %lcmp.mod169 = icmp ne i64 %xtraiter167, 0
  tail call void @llvm.assume(i1 %lcmp.mod169)
  br label %.lr.ph93.epil

.lr.ph93.epil:                                    ; preds = %.lr.ph93.epil, %.lr.ph93.epil.preheader
  %indvars.iv128.epil = phi i64 [ %indvars.iv128.epil.init, %.lr.ph93.epil.preheader ], [ %indvars.iv.next129.epil, %.lr.ph93.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph93.epil.preheader ], [ %epil.iter.next, %.lr.ph93.epil ]
  %gep.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128.epil
  %i.mm = load i32, ptr %gep.epil, align 4, !tbaa !45
  %i.mn = zext i32 %i.mm to i64
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.mn
  tail call void @llvm.prefetch.p0(ptr %i.mo, i32 0, i32 3, i32 1)
  %indvars.iv.next129.epil = add nuw nsw i64 %indvars.iv128.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter167
  br i1 %epil.iter.cmp.not, label %.lr.ph97, label %.lr.ph93.epil, !llvm.loop !203

.lr.ph97:                                         ; preds = %.lr.ph93.epil, %.lr.ph97.unr-lcssa
  %.val7 = load i32, ptr %1, align 1, !tbaa !45
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg51 = add i32 %i.s, 3
  %i.mq = add i32 %.neg51, %.neg
  %i.mr = lshr i32 %i.lo, 8
  %i.ms = zext nneg i32 %i.mr to i64
  br label %bb.ad

.lr.ph93:                                         ; preds = %.lr.ph93, %.lr.ph93.preheader.new
  %indvars.iv128 = phi i64 [ 0, %.lr.ph93.preheader.new ], [ %indvars.iv.next129.7, %.lr.ph93 ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph93.preheader.new ], [ %niter.next.7, %.lr.ph93 ]
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %i.mt = load i32, ptr %gep, align 4, !tbaa !45
  %i.mu = zext i32 %i.mt to i64
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.mu
  tail call void @llvm.prefetch.p0(ptr %i.mv, i32 0, i32 3, i32 1)
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.mw, i64 4
  %i.mx = load i32, ptr %gep.1, align 4, !tbaa !45
  %i.my = zext i32 %i.mx to i64
  %i.mz = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.my
  tail call void @llvm.prefetch.p0(ptr %i.mz, i32 0, i32 3, i32 1)
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  %i.nb = load i32, ptr %gep.2, align 4, !tbaa !45
  %i.nc = zext i32 %i.nb to i64
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.nc
  tail call void @llvm.prefetch.p0(ptr %i.nd, i32 0, i32 3, i32 1)
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %gep.3 = getelementptr inbounds nuw i8, ptr %i.ne, i64 12
  %i.nf = load i32, ptr %gep.3, align 4, !tbaa !45
  %i.ng = zext i32 %i.nf to i64
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.ng
  tail call void @llvm.prefetch.p0(ptr %i.nh, i32 0, i32 3, i32 1)
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %gep.4 = getelementptr inbounds nuw i8, ptr %i.ni, i64 16
  %i.nj = load i32, ptr %gep.4, align 4, !tbaa !45
  %i.nk = zext i32 %i.nj to i64
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.nk
  tail call void @llvm.prefetch.p0(ptr %i.nl, i32 0, i32 3, i32 1)
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %gep.5 = getelementptr inbounds nuw i8, ptr %i.nm, i64 20
  %i.nn = load i32, ptr %gep.5, align 4, !tbaa !45
  %i.no = zext i32 %i.nn to i64
  %i.np = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.no
  tail call void @llvm.prefetch.p0(ptr %i.np, i32 0, i32 3, i32 1)
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %gep.6 = getelementptr inbounds nuw i8, ptr %i.nq, i64 24
  %i.nr = load i32, ptr %gep.6, align 4, !tbaa !45
  %i.ns = zext i32 %i.nr to i64
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.ns
  tail call void @llvm.prefetch.p0(ptr %i.nt, i32 0, i32 3, i32 1)
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %gep.7 = getelementptr inbounds nuw i8, ptr %i.nu, i64 28
  %i.nv = load i32, ptr %gep.7, align 4, !tbaa !45
  %i.nw = zext i32 %i.nv to i64
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.nw
  tail call void @llvm.prefetch.p0(ptr %i.nx, i32 0, i32 3, i32 1)
  %indvars.iv.next129.7 = add nuw nsw i64 %indvars.iv128, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph97.unr-lcssa, label %.lr.ph93, !llvm.loop !15

bb.ad:                                            ; preds = %.lr.ph97, %.thread41
  %indvars.iv133 = phi i64 [ %i.ms, %.lr.ph97 ], [ %indvars.iv.next134, %.thread41 ] ; 2 uses
  %.1.i.i96 = phi i32 [ 0, %.lr.ph97 ], [ %i.ol, %.thread41 ]
  %.3.i.i94 = phi i64 [ %.0100.i.i.lcssa, %.lr.ph97 ], [ %.5.i.i.ph, %.thread41 ] ; 3 uses
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %indvars.iv133
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !45 ; 2 uses
  %i.oa = zext i32 %i.nz to i64
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.oa ; 2 uses
  %.val8 = load i32, ptr %i.ob, align 1, !tbaa !45
  %i.oc = icmp eq i32 %.val8, %.val7
  br i1 %i.oc, label %bb.ae, label %.thread41

bb.ae:                                            ; preds = %bb.ad
  %i.od = getelementptr inbounds nuw i8, ptr %i.ob, i64 4
  %i.oe = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.mp, ptr noundef nonnull %i.od, ptr noundef %2, ptr noundef %i.kv, ptr noundef %i.o)
  %i.of = add i64 %i.oe, 4                        ; 4 uses
  %i.og = icmp ugt i64 %i.of, %.3.i.i94
  br i1 %i.og, label %bb.af, label %.thread41

bb.af:                                            ; preds = %bb.ae
  %i.oh = sub i32 %i.mq, %i.nz
  %i.oi = zext i32 %i.oh to i64
  store i64 %i.oi, ptr %3, align 8, !tbaa !46
  %i.oj = getelementptr inbounds nuw i8, ptr %1, i64 %i.of
  %i.ok = icmp eq ptr %i.oj, %2
  br i1 %i.ok, label %ZSTD_RowFindBestMatch.exit, label %.thread41

.thread41:                                        ; preds = %bb.ad, %bb.af, %bb.ae
  %.5.i.i.ph = phi i64 [ %i.of, %bb.af ], [ %.3.i.i94, %bb.ae ], [ %.3.i.i94, %bb.ad ] ; 2 uses
  %i.ol = add nuw nsw i32 %.1.i.i96, 1            ; 2 uses
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1
  %exitcond135.not = icmp eq i32 %i.ol, %i.mk
  br i1 %exitcond135.not, label %ZSTD_RowFindBestMatch.exit, label %bb.ad, !llvm.loop !16

ZSTD_RowFindBestMatch.exit:                       ; preds = %bb.z, %bb.ac, %.thread41, %bb.af, %._crit_edge88
  %.2.i.i = phi i64 [ %.0100.i.i.lcssa, %._crit_edge88 ], [ %i.of, %bb.af ], [ %.5.i.i.ph, %.thread41 ], [ %.0100.i.i84, %bb.z ], [ %i.md, %bb.ac ]
  ret i64 %.2.i.i
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i64 @ZSTD_RowFindBestMatch_dedicatedDictSearch_4_5(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !51   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37   ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !54   ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n ; 2 uses
  %i.p = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %i.s = trunc i64 %i.r to i32                    ; 10 uses
  %i.t = load i32, ptr %i.i, align 8, !tbaa !83
  %i.u = shl nuw i32 1, %i.t                      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !81   ; 2 uses
  %i.x = sub i32 %i.s, %i.w
  %i.y = icmp ugt i32 %i.x, %i.u
  %i.z = sub i32 %i.s, %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !56
  %.not.i = icmp eq i32 %i.ab, 0
  %i.ac = select i1 %.not.i, i1 %i.y, i1 false
  %i.ad = select i1 %i.ac, i32 %i.z, i32 %i.w
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !84 ; 3 uses
  %..i = tail call i32 @llvm.umin.i32(i32 %i.af, i32 5)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !52 ; 2 uses
  %i.ai = shl nuw nsw i32 1, %..i                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !78 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 264
  %i.am = load i32, ptr %i.al, align 8, !tbaa !43
  %.val9 = load i32, ptr %1, align 1, !tbaa !45
  %i.an = mul i32 %.val9, -1640531535             ; 2 uses
  %i.ao = sub i32 34, %i.am
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = zext i32 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 2                ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 112 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !38
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ar
  tail call void @llvm.prefetch.p0(ptr %i.au, i32 0, i32 3, i32 1)
  %i.av = icmp ugt i32 %i.af, 5
  %i.aw = add i32 %i.af, -5
  %i.ax = shl nuw i32 1, %i.aw
  %i.ay = select i1 %i.av, i32 %i.ax, i32 0
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !57
  %.not274.i = icmp eq i32 %i.ba, 0
  br i1 %.not274.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !41 ; 5 uses
  %i.bd = sub i32 %i.s, %i.bc
  %i.be = icmp ugt i32 %i.bd, 384
  br i1 %i.be, label %bb.c, label %ZSTD_row_update_internal.exit.i, !prof !85

bb.c:                                             ; preds = %bb.b
  %i.bf = icmp ult i32 %i.bc, -96
  br i1 %i.bf, label %.lr.ph, label %ZSTD_row_update_internalImpl.exit.i

.lr.ph:                                           ; preds = %bb.c
  %i.bg = add nuw i32 %i.bc, 96
  %i.bh = sub i32 24, %i.h
  %i.bi = zext i32 %i.bc to i64
  %wide.trip.count = zext i32 %i.bg to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.bi, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.bj = load i64, ptr %i.ag, align 8, !tbaa !52
  %i.bk = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = trunc i64 %i.bj to i32
  %.val10 = load i32, ptr %i.bl, align 1, !tbaa !45
  %i.bn = mul i32 %.val10, -1640531535
  %i.bo = xor i32 %i.bn, %i.bm
  %i.bp = lshr i32 %i.bo, %i.bh                   ; 2 uses
  %i.bq = lshr i32 %i.bp, 3
  %i.br = and i32 %i.bq, 536870880
  %i.bs = zext nneg i32 %i.br to i64              ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bs ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.bt, i32 0, i32 3, i32 1)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bu, i32 0, i32 3, i32 1)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bs
  tail call void @llvm.prefetch.p0(ptr %i.bv, i32 0, i32 3, i32 1)
  %i.bw = trunc nuw i64 %indvars.iv to i32
  %i.bx = and i64 %indvars.iv, 7
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bx ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !45 ; 2 uses
  store i32 %i.bp, ptr %i.by, align 4, !tbaa !45
  %i.ca = lshr i32 %i.bz, 3
  %i.cb = and i32 %i.ca, 536870880
  %i.cc = zext nneg i32 %i.cb to i64              ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cc ; 3 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !53
  %i.cg = add i8 %i.cf, 31
  %i.ch = and i8 %i.cg, 31                        ; 2 uses
  %i.ci = zext nneg i8 %i.ch to i32
  %i.cj = icmp eq i8 %i.ch, 0
  %i.ck = select i1 %i.cj, i32 31, i32 0
  %i.cl = add nuw nsw i32 %i.ck, %i.ci            ; 2 uses
  %i.cm = trunc nuw nsw i32 %i.cl to i8
  store i8 %i.cm, ptr %i.ce, align 1, !tbaa !53
  %i.cn = trunc i32 %i.bz to i8
  %i.co = zext nneg i32 %i.cl to i64              ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.co
  store i8 %i.cn, ptr %i.cp, align 1, !tbaa !53
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.co
  store i32 %i.bw, ptr %i.cq, align 4, !tbaa !45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %ZSTD_row_update_internalImpl.exit.i.loopexit, label %bb.d, !llvm.loop !0

ZSTD_row_update_internalImpl.exit.i.loopexit:     ; preds = %bb.d
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !38
  %.pre139 = load ptr, ptr %i.d, align 8, !tbaa !50
  %.pre140 = load i32, ptr %i.g, align 4, !tbaa !51
  br label %ZSTD_row_update_internalImpl.exit.i

ZSTD_row_update_internalImpl.exit.i:              ; preds = %ZSTD_row_update_internalImpl.exit.i.loopexit, %bb.c
  %i.cr = phi i32 [ %.pre140, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.h, %bb.c ] ; 4 uses
  %i.cs = phi ptr [ %.pre139, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.e, %bb.c ] ; 6 uses
  %i.ct = phi ptr [ %.pre, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.c, %bb.c ] ; 6 uses
  %i.cu = add i32 %i.s, -32                       ; 6 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.cw = zext i32 %i.cu to i64                   ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.cw ; 2 uses
  %i.cy = icmp ugt ptr %i.cx, %i.cv
  br i1 %i.cy, label %bb.f, label %bb.e

bb.e:                                             ; preds = %ZSTD_row_update_internalImpl.exit.i
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = ptrtoint ptr %i.cx to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = trunc i64 %i.db to i32
  %i.dd = add i32 %i.dc, 1
  %i.de = tail call i32 @llvm.umin.i32(i32 %i.dd, i32 8)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %ZSTD_row_update_internalImpl.exit.i
  %i.df = phi i32 [ %i.de, %bb.e ], [ 0, %ZSTD_row_update_internalImpl.exit.i ] ; 3 uses
  %i.dg = add i32 %i.df, %i.cu                    ; 2 uses
  %i.dh = icmp ult i32 %i.cu, %i.dg
  br i1 %i.dh, label %.lr.ph62, label %ZSTD_row_update_internal.exit.i

.lr.ph62:                                         ; preds = %bb.f
  %i.di = load i64, ptr %i.ag, align 8, !tbaa !52
  %i.dj = trunc i64 %i.di to i32                  ; 3 uses
  %i.dk = sub i32 24, %i.cr                       ; 3 uses
  %xtraiter = and i32 %i.df, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph62
  %i.dl = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.cw
  %.val11.prol = load i32, ptr %i.dl, align 1, !tbaa !45
  %i.dm = mul i32 %.val11.prol, -1640531535
  %i.dn = xor i32 %i.dm, %i.dj
  %i.do = lshr i32 %i.dn, %i.dk                   ; 2 uses
  %i.dp = lshr i32 %i.do, 3
  %i.dq = and i32 %i.dp, 536870880
  %i.dr = zext nneg i32 %i.dq to i64              ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.dr ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ds, i32 0, i32 3, i32 1)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dt, i32 0, i32 3, i32 1)
  %i.du = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.dr
  tail call void @llvm.prefetch.p0(ptr %i.du, i32 0, i32 3, i32 1)
  %i.dv = and i64 %i.cw, 7
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dv
  store i32 %i.do, ptr %i.dw, align 4, !tbaa !45
  %indvars.iv.next112.prol = add nuw nsw i64 %i.cw, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph62
  %indvars.iv111.unr = phi i64 [ %i.cw, %.lr.ph62 ], [ %indvars.iv.next112.prol, %.prol.loopexit.unr-lcssa ]
  %i.dx = icmp eq i32 %i.df, 1
  br i1 %i.dx, label %ZSTD_row_update_internal.exit.i, label %.lr.ph62.new

.lr.ph62.new:                                     ; preds = %.prol.loopexit, %.lr.ph62.new
  %indvars.iv111 = phi i64 [ %indvars.iv.next112.1, %.lr.ph62.new ], [ %indvars.iv111.unr, %.prol.loopexit ] ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv111
  %.val11 = load i32, ptr %i.dy, align 1, !tbaa !45
  %i.dz = mul i32 %.val11, -1640531535
  %i.ea = xor i32 %i.dz, %i.dj
  %i.eb = lshr i32 %i.ea, %i.dk                   ; 2 uses
end_hunk_2
begin_hunk_3_@ZSTD_RowFindBestMatch_dedicatedDictSearch_4_5:bb.a
  %i.lx = lshr i32 %i.lw, 8
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !39 ; 3 uses
  %i.ma = zext nneg i32 %i.lx to i64              ; 2 uses
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %i.ma
  tail call void @llvm.prefetch.p0(ptr %i.mb, i32 0, i32 3, i32 1)
  %.not103 = icmp eq i32 %i.lr, 0
  br i1 %.not103, label %._crit_edge88, label %.lr.ph87

.lr.ph87:                                         ; preds = %._crit_edge78
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg53 = add i32 %i.s, 3
  %i.md = add i32 %.neg53, %.neg
  %wide.trip.count129 = zext nneg i32 %i.lu to i64
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph87, %.thread31
  %indvars.iv126 = phi i64 [ 0, %.lr.ph87 ], [ %indvars.iv.next127, %.thread31 ] ; 2 uses
  %.0100.i.i84 = phi i64 [ %.3261.i, %.lr.ph87 ], [ %.2102.i.i35, %.thread31 ] ; 4 uses
  %i.me = getelementptr [4 x i8], ptr %i.lf, i64 %indvars.iv126
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !45 ; 3 uses
  %i.mg = zext i32 %i.mf to i64
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.mg ; 2 uses
  %.not.i.i = icmp eq i32 %i.mf, 0
  br i1 %.not.i.i, label %ZSTD_RowFindBestMatch.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.val6 = load i32, ptr %i.mh, align 1, !tbaa !45
  %.val5 = load i32, ptr %1, align 1, !tbaa !45
  %i.mi = icmp eq i32 %.val6, %.val5
  br i1 %i.mi, label %bb.ab, label %.thread31

bb.ab:                                            ; preds = %bb.aa
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mh, i64 4
  %i.mk = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.mc, ptr noundef nonnull %i.mj, ptr noundef %2, ptr noundef %i.ld, ptr noundef %i.o)
  %i.ml = add i64 %i.mk, 4                        ; 4 uses
  %i.mm = icmp ugt i64 %i.ml, %.0100.i.i84
  br i1 %i.mm, label %bb.ac, label %.thread31

bb.ac:                                            ; preds = %bb.ab
  %i.mn = sub i32 %i.md, %i.mf
  %i.mo = zext i32 %i.mn to i64
  store i64 %i.mo, ptr %3, align 8, !tbaa !46
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 %i.ml
  %.not = icmp eq ptr %i.mp, %2
  br i1 %.not, label %ZSTD_RowFindBestMatch.exit, label %.thread31

.thread31:                                        ; preds = %bb.aa, %bb.ab, %bb.ac
  %.2102.i.i35 = phi i64 [ %i.ml, %bb.ac ], [ %.0100.i.i84, %bb.ab ], [ %.0100.i.i84, %bb.aa ] ; 2 uses
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1 ; 2 uses
  %exitcond130.not = icmp eq i64 %indvars.iv.next127, %wide.trip.count129
  br i1 %exitcond130.not, label %._crit_edge88, label %bb.z, !llvm.loop !14

._crit_edge88:                                    ; preds = %.thread31, %._crit_edge78
  %.1104.i.i.lcssa = phi i32 [ 0, %._crit_edge78 ], [ %i.lu, %.thread31 ]
  %.0100.i.i.lcssa = phi i64 [ %.3261.i, %._crit_edge78 ], [ %.2102.i.i35, %.thread31 ] ; 2 uses
  %i.mq = and i32 %i.lw, 255
  %i.mr = sub i32 %i.lr, %.1104.i.i.lcssa
  %i.ms = tail call i32 @llvm.umin.i32(i32 %i.mr, i32 %i.mq) ; 4 uses
  %.not104 = icmp eq i32 %i.ms, 0
  br i1 %.not104, label %ZSTD_RowFindBestMatch.exit, label %.lr.ph93.preheader

.lr.ph93.preheader:                               ; preds = %._crit_edge88
  %wide.trip.count134 = zext nneg i32 %i.ms to i64 ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %i.ma ; 9 uses
  %xtraiter170 = and i64 %wide.trip.count134, 7   ; 3 uses
  %i.mt = icmp samesign ult i32 %i.ms, 8
  br i1 %i.mt, label %.lr.ph93.epil.preheader, label %.lr.ph93.preheader.new

.lr.ph93.preheader.new:                           ; preds = %.lr.ph93.preheader
  %unroll_iter = and i64 %wide.trip.count134, 248
  br label %.lr.ph93

.lr.ph97.unr-lcssa:                               ; preds = %.lr.ph93
  %lcmp.mod171.not = icmp eq i64 %xtraiter170, 0
  br i1 %lcmp.mod171.not, label %.lr.ph97, label %.lr.ph93.epil.preheader

.lr.ph93.epil.preheader:                          ; preds = %.lr.ph97.unr-lcssa, %.lr.ph93.preheader
  %indvars.iv131.epil.init = phi i64 [ 0, %.lr.ph93.preheader ], [ %indvars.iv.next132.7, %.lr.ph97.unr-lcssa ]
  %lcmp.mod172 = icmp ne i64 %xtraiter170, 0
  tail call void @llvm.assume(i1 %lcmp.mod172)
  br label %.lr.ph93.epil

.lr.ph93.epil:                                    ; preds = %.lr.ph93.epil, %.lr.ph93.epil.preheader
  %indvars.iv131.epil = phi i64 [ %indvars.iv131.epil.init, %.lr.ph93.epil.preheader ], [ %indvars.iv.next132.epil, %.lr.ph93.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph93.epil.preheader ], [ %epil.iter.next, %.lr.ph93.epil ]
  %gep.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131.epil
  %i.mu = load i32, ptr %gep.epil, align 4, !tbaa !45
  %i.mv = zext i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.mv
  tail call void @llvm.prefetch.p0(ptr %i.mw, i32 0, i32 3, i32 1)
  %indvars.iv.next132.epil = add nuw nsw i64 %indvars.iv131.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter170
  br i1 %epil.iter.cmp.not, label %.lr.ph97, label %.lr.ph93.epil, !llvm.loop !204

.lr.ph97:                                         ; preds = %.lr.ph93.epil, %.lr.ph97.unr-lcssa
  %.val7 = load i32, ptr %1, align 1, !tbaa !45
  %i.mx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg51 = add i32 %i.s, 3
  %i.my = add i32 %.neg51, %.neg
  %i.mz = lshr i32 %i.lw, 8
  %i.na = zext nneg i32 %i.mz to i64
  br label %bb.ad

.lr.ph93:                                         ; preds = %.lr.ph93, %.lr.ph93.preheader.new
  %indvars.iv131 = phi i64 [ 0, %.lr.ph93.preheader.new ], [ %indvars.iv.next132.7, %.lr.ph93 ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph93.preheader.new ], [ %niter.next.7, %.lr.ph93 ]
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %i.nb = load i32, ptr %gep, align 4, !tbaa !45
  %i.nc = zext i32 %i.nb to i64
  %i.nd = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.nc
  tail call void @llvm.prefetch.p0(ptr %i.nd, i32 0, i32 3, i32 1)
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.ne, i64 4
  %i.nf = load i32, ptr %gep.1, align 4, !tbaa !45
  %i.ng = zext i32 %i.nf to i64
  %i.nh = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.ng
  tail call void @llvm.prefetch.p0(ptr %i.nh, i32 0, i32 3, i32 1)
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %i.nj = load i32, ptr %gep.2, align 4, !tbaa !45
  %i.nk = zext i32 %i.nj to i64
  %i.nl = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.nk
  tail call void @llvm.prefetch.p0(ptr %i.nl, i32 0, i32 3, i32 1)
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %gep.3 = getelementptr inbounds nuw i8, ptr %i.nm, i64 12
  %i.nn = load i32, ptr %gep.3, align 4, !tbaa !45
  %i.no = zext i32 %i.nn to i64
  %i.np = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.no
  tail call void @llvm.prefetch.p0(ptr %i.np, i32 0, i32 3, i32 1)
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %gep.4 = getelementptr inbounds nuw i8, ptr %i.nq, i64 16
  %i.nr = load i32, ptr %gep.4, align 4, !tbaa !45
  %i.ns = zext i32 %i.nr to i64
  %i.nt = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.ns
  tail call void @llvm.prefetch.p0(ptr %i.nt, i32 0, i32 3, i32 1)
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %gep.5 = getelementptr inbounds nuw i8, ptr %i.nu, i64 20
  %i.nv = load i32, ptr %gep.5, align 4, !tbaa !45
  %i.nw = zext i32 %i.nv to i64
  %i.nx = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.nw
  tail call void @llvm.prefetch.p0(ptr %i.nx, i32 0, i32 3, i32 1)
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %gep.6 = getelementptr inbounds nuw i8, ptr %i.ny, i64 24
  %i.nz = load i32, ptr %gep.6, align 4, !tbaa !45
  %i.oa = zext i32 %i.nz to i64
  %i.ob = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.oa
  tail call void @llvm.prefetch.p0(ptr %i.ob, i32 0, i32 3, i32 1)
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %gep.7 = getelementptr inbounds nuw i8, ptr %i.oc, i64 28
  %i.od = load i32, ptr %gep.7, align 4, !tbaa !45
  %i.oe = zext i32 %i.od to i64
  %i.of = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.oe
  tail call void @llvm.prefetch.p0(ptr %i.of, i32 0, i32 3, i32 1)
  %indvars.iv.next132.7 = add nuw nsw i64 %indvars.iv131, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph97.unr-lcssa, label %.lr.ph93, !llvm.loop !15

bb.ad:                                            ; preds = %.lr.ph97, %.thread41
  %indvars.iv136 = phi i64 [ %i.na, %.lr.ph97 ], [ %indvars.iv.next137, %.thread41 ] ; 2 uses
  %.1.i.i96 = phi i32 [ 0, %.lr.ph97 ], [ %i.ot, %.thread41 ]
  %.3.i.i94 = phi i64 [ %.0100.i.i.lcssa, %.lr.ph97 ], [ %.5.i.i.ph, %.thread41 ] ; 3 uses
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %indvars.iv136
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !45 ; 2 uses
  %i.oi = zext i32 %i.oh to i64
  %i.oj = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.oi ; 2 uses
  %.val8 = load i32, ptr %i.oj, align 1, !tbaa !45
  %i.ok = icmp eq i32 %.val8, %.val7
  br i1 %i.ok, label %bb.ae, label %.thread41

bb.ae:                                            ; preds = %bb.ad
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oj, i64 4
  %i.om = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.mx, ptr noundef nonnull %i.ol, ptr noundef %2, ptr noundef %i.ld, ptr noundef %i.o)
  %i.on = add i64 %i.om, 4                        ; 4 uses
  %i.oo = icmp ugt i64 %i.on, %.3.i.i94
  br i1 %i.oo, label %bb.af, label %.thread41

bb.af:                                            ; preds = %bb.ae
  %i.op = sub i32 %i.my, %i.oh
  %i.oq = zext i32 %i.op to i64
  store i64 %i.oq, ptr %3, align 8, !tbaa !46
  %i.or = getelementptr inbounds nuw i8, ptr %1, i64 %i.on
  %i.os = icmp eq ptr %i.or, %2
  br i1 %i.os, label %ZSTD_RowFindBestMatch.exit, label %.thread41

.thread41:                                        ; preds = %bb.ad, %bb.af, %bb.ae
  %.5.i.i.ph = phi i64 [ %i.on, %bb.af ], [ %.3.i.i94, %bb.ae ], [ %.3.i.i94, %bb.ad ] ; 2 uses
  %i.ot = add nuw nsw i32 %.1.i.i96, 1            ; 2 uses
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1
  %exitcond138.not = icmp eq i32 %i.ot, %i.ms
  br i1 %exitcond138.not, label %ZSTD_RowFindBestMatch.exit, label %bb.ad, !llvm.loop !16

ZSTD_RowFindBestMatch.exit:                       ; preds = %bb.z, %bb.ac, %.thread41, %bb.af, %._crit_edge88
  %.2.i.i = phi i64 [ %.0100.i.i.lcssa, %._crit_edge88 ], [ %i.on, %bb.af ], [ %.5.i.i.ph, %.thread41 ], [ %.0100.i.i84, %bb.z ], [ %i.ml, %bb.ac ]
  ret i64 %.2.i.i
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i64 @ZSTD_RowFindBestMatch_dedicatedDictSearch_4_6(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !51   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37   ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !54   ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n ; 2 uses
  %i.p = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %i.s = trunc i64 %i.r to i32                    ; 10 uses
  %i.t = load i32, ptr %i.i, align 8, !tbaa !83
  %i.u = shl nuw i32 1, %i.t                      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !81   ; 2 uses
  %i.x = sub i32 %i.s, %i.w
  %i.y = icmp ugt i32 %i.x, %i.u
  %i.z = sub i32 %i.s, %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !56
  %.not.i = icmp eq i32 %i.ab, 0
  %i.ac = select i1 %.not.i, i1 %i.y, i1 false
  %i.ad = select i1 %i.ac, i32 %i.z, i32 %i.w
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !84 ; 3 uses
  %..i = tail call i32 @llvm.umin.i32(i32 %i.af, i32 6)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !52 ; 2 uses
  %i.ai = shl nuw nsw i32 1, %..i                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !78 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 264
  %i.am = load i32, ptr %i.al, align 8, !tbaa !43
  %.val9 = load i32, ptr %1, align 1, !tbaa !45
  %i.an = mul i32 %.val9, -1640531535             ; 2 uses
  %i.ao = sub i32 34, %i.am
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = zext i32 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 2                ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 112 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !38
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ar
  tail call void @llvm.prefetch.p0(ptr %i.au, i32 0, i32 3, i32 1)
  %i.av = icmp ugt i32 %i.af, 6
  %i.aw = add i32 %i.af, -6
  %i.ax = shl nuw i32 1, %i.aw
  %i.ay = select i1 %i.av, i32 %i.ax, i32 0
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !57
  %.not274.i = icmp eq i32 %i.ba, 0
  br i1 %.not274.i, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !41 ; 5 uses
  %i.bd = sub i32 %i.s, %i.bc
  %i.be = icmp ugt i32 %i.bd, 384
  br i1 %i.be, label %bb.c, label %ZSTD_row_update_internal.exit.i, !prof !85

bb.c:                                             ; preds = %bb.b
  %i.bf = icmp ult i32 %i.bc, -96
  br i1 %i.bf, label %.lr.ph, label %ZSTD_row_update_internalImpl.exit.i

.lr.ph:                                           ; preds = %bb.c
  %i.bg = add nuw i32 %i.bc, 96
  %i.bh = sub i32 24, %i.h
  %i.bi = zext i32 %i.bc to i64
  %wide.trip.count = zext i32 %i.bg to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.bi, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.bj = load i64, ptr %i.ag, align 8, !tbaa !52
  %i.bk = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = trunc i64 %i.bj to i32
  %.val10 = load i32, ptr %i.bl, align 1, !tbaa !45
  %i.bn = mul i32 %.val10, -1640531535
  %i.bo = xor i32 %i.bn, %i.bm
  %i.bp = lshr i32 %i.bo, %i.bh                   ; 2 uses
  %i.bq = lshr i32 %i.bp, 2
  %i.br = and i32 %i.bq, 1073741760
  %i.bs = zext nneg i32 %i.br to i64              ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bs ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.bt, i32 0, i32 3, i32 1)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bu, i32 0, i32 3, i32 1)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bs ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.bv, i32 0, i32 3, i32 1)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bw, i32 0, i32 3, i32 1)
  %i.bx = trunc nuw i64 %indvars.iv to i32
  %i.by = and i64 %indvars.iv, 7
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.by ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !45 ; 2 uses
  store i32 %i.bp, ptr %i.bz, align 4, !tbaa !45
  %i.cb = lshr i32 %i.ca, 2
  %i.cc = and i32 %i.cb, 1073741760
  %i.cd = zext nneg i32 %i.cc to i64              ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cd ; 3 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !53
  %i.ch = add i8 %i.cg, 63
  %i.ci = and i8 %i.ch, 63                        ; 2 uses
  %i.cj = zext nneg i8 %i.ci to i32
  %i.ck = icmp eq i8 %i.ci, 0
  %i.cl = select i1 %i.ck, i32 63, i32 0
  %i.cm = add nuw nsw i32 %i.cl, %i.cj            ; 2 uses
  %i.cn = trunc nuw nsw i32 %i.cm to i8
  store i8 %i.cn, ptr %i.cf, align 1, !tbaa !53
  %i.co = trunc i32 %i.ca to i8
  %i.cp = zext nneg i32 %i.cm to i64              ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cp
  store i8 %i.co, ptr %i.cq, align 1, !tbaa !53
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cp
  store i32 %i.bx, ptr %i.cr, align 4, !tbaa !45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %ZSTD_row_update_internalImpl.exit.i.loopexit, label %bb.d, !llvm.loop !0

ZSTD_row_update_internalImpl.exit.i.loopexit:     ; preds = %bb.d
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !38
  %.pre140 = load ptr, ptr %i.d, align 8, !tbaa !50
  %.pre141 = load i32, ptr %i.g, align 4, !tbaa !51
  br label %ZSTD_row_update_internalImpl.exit.i

ZSTD_row_update_internalImpl.exit.i:              ; preds = %ZSTD_row_update_internalImpl.exit.i.loopexit, %bb.c
  %i.cs = phi i32 [ %.pre141, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.h, %bb.c ] ; 3 uses
  %i.ct = phi ptr [ %.pre140, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.e, %bb.c ] ; 3 uses
  %i.cu = phi ptr [ %.pre, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.c, %bb.c ] ; 3 uses
  %i.cv = add i32 %i.s, -32                       ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.cx = zext i32 %i.cv to i64                   ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.cx ; 2 uses
  %i.cz = icmp ugt ptr %i.cy, %i.cw
  br i1 %i.cz, label %bb.f, label %bb.e

bb.e:                                             ; preds = %ZSTD_row_update_internalImpl.exit.i
  %i.da = ptrtoint ptr %i.cw to i64
  %i.db = ptrtoint ptr %i.cy to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = trunc i64 %i.dc to i32
  %i.de = add i32 %i.dd, 1
  %i.df = tail call i32 @llvm.umin.i32(i32 %i.de, i32 8)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %ZSTD_row_update_internalImpl.exit.i
  %i.dg = phi i32 [ %i.df, %bb.e ], [ 0, %ZSTD_row_update_internalImpl.exit.i ]
  %i.dh = add i32 %i.dg, %i.cv                    ; 2 uses
  %i.di = icmp ult i32 %i.cv, %i.dh
  br i1 %i.di, label %.lr.ph62, label %ZSTD_row_update_internal.exit.i

.lr.ph62:                                         ; preds = %bb.f
  %i.dj = load i64, ptr %i.ag, align 8, !tbaa !52
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = sub i32 24, %i.cs
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph62, %bb.g
  %indvars.iv111 = phi i64 [ %i.cx, %.lr.ph62 ], [ %indvars.iv.next112, %bb.g ] ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv111
  %.val11 = load i32, ptr %i.dm, align 1, !tbaa !45
  %i.dn = mul i32 %.val11, -1640531535
  %i.do = xor i32 %i.dn, %i.dk
  %i.dp = lshr i32 %i.do, %i.dl                   ; 2 uses
  %i.dq = lshr i32 %i.dp, 2
  %i.dr = and i32 %i.dq, 1073741760
  %i.ds = zext nneg i32 %i.dr to i64              ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.ds ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.dt, i32 0, i32 3, i32 1)
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.du, i32 0, i32 3, i32 1)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.ds ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.dv, i32 0, i32 3, i32 1)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dw, i32 0, i32 3, i32 1)
  %i.dx = and i64 %indvars.iv111, 7
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dx
  store i32 %i.dp, ptr %i.dy, align 4, !tbaa !45
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next112 to i32
  %exitcond114.not = icmp eq i32 %i.dh, %lftr.wideiv
  br i1 %exitcond114.not, label %ZSTD_row_update_internal.exit.i, label %bb.g, !llvm.loop !5

ZSTD_row_update_internal.exit.i:                  ; preds = %bb.g, %bb.f, %bb.b
  %i.dz = phi i32 [ %i.h, %bb.b ], [ %i.cs, %bb.f ], [ %i.cs, %bb.g ]
  %i.ea = phi ptr [ %i.e, %bb.b ], [ %i.ct, %bb.f ], [ %i.ct, %bb.g ] ; 2 uses
  %i.eb = phi ptr [ %i.c, %bb.b ], [ %i.cu, %bb.f ], [ %i.cu, %bb.g ] ; 2 uses
  %.0.i284.i = phi i32 [ %i.bc, %bb.b ], [ %i.cv, %bb.f ], [ %i.cv, %bb.g ] ; 2 uses
  %i.ec = load ptr, ptr %i.j, align 8, !tbaa !37
  %i.ed = icmp ult i32 %.0.i284.i, %i.s
end_hunk_3
begin_hunk_4_@ZSTD_RowFindBestMatch_dedicatedDictSearch_4_6:bb.a
  %i.lq = lshr i32 %i.lp, 8
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !39 ; 3 uses
  %i.lt = zext nneg i32 %i.lq to i64              ; 2 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.lt
  tail call void @llvm.prefetch.p0(ptr %i.lu, i32 0, i32 3, i32 1)
  %.not103 = icmp eq i32 %i.lk, 0
  br i1 %.not103, label %._crit_edge88, label %.lr.ph87

.lr.ph87:                                         ; preds = %._crit_edge78
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg53 = add i32 %i.s, 3
  %i.lw = add i32 %.neg53, %.neg
  %wide.trip.count130 = zext nneg i32 %i.ln to i64
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph87, %.thread31
  %indvars.iv127 = phi i64 [ 0, %.lr.ph87 ], [ %indvars.iv.next128, %.thread31 ] ; 2 uses
  %.0100.i.i84 = phi i64 [ %.3261.i, %.lr.ph87 ], [ %.2102.i.i35, %.thread31 ] ; 4 uses
  %i.lx = getelementptr [4 x i8], ptr %i.ky, i64 %indvars.iv127
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !45 ; 3 uses
  %i.lz = zext i32 %i.ly to i64
  %i.ma = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.lz ; 2 uses
  %.not.i.i = icmp eq i32 %i.ly, 0
  br i1 %.not.i.i, label %ZSTD_RowFindBestMatch.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.val6 = load i32, ptr %i.ma, align 1, !tbaa !45
  %.val5 = load i32, ptr %1, align 1, !tbaa !45
  %i.mb = icmp eq i32 %.val6, %.val5
  br i1 %i.mb, label %bb.ac, label %.thread31

bb.ac:                                            ; preds = %bb.ab
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 4
  %i.md = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.lv, ptr noundef nonnull %i.mc, ptr noundef %2, ptr noundef %i.kw, ptr noundef %i.o)
  %i.me = add i64 %i.md, 4                        ; 4 uses
  %i.mf = icmp ugt i64 %i.me, %.0100.i.i84
  br i1 %i.mf, label %bb.ad, label %.thread31

bb.ad:                                            ; preds = %bb.ac
  %i.mg = sub i32 %i.lw, %i.ly
  %i.mh = zext i32 %i.mg to i64
  store i64 %i.mh, ptr %3, align 8, !tbaa !46
  %i.mi = getelementptr inbounds nuw i8, ptr %1, i64 %i.me
  %.not = icmp eq ptr %i.mi, %2
  br i1 %.not, label %ZSTD_RowFindBestMatch.exit, label %.thread31

.thread31:                                        ; preds = %bb.ab, %bb.ac, %bb.ad
  %.2102.i.i35 = phi i64 [ %i.me, %bb.ad ], [ %.0100.i.i84, %bb.ac ], [ %.0100.i.i84, %bb.ab ] ; 2 uses
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %exitcond131.not = icmp eq i64 %indvars.iv.next128, %wide.trip.count130
  br i1 %exitcond131.not, label %._crit_edge88, label %bb.aa, !llvm.loop !14

._crit_edge88:                                    ; preds = %.thread31, %._crit_edge78
  %.1104.i.i.lcssa = phi i32 [ 0, %._crit_edge78 ], [ %i.ln, %.thread31 ]
  %.0100.i.i.lcssa = phi i64 [ %.3261.i, %._crit_edge78 ], [ %.2102.i.i35, %.thread31 ] ; 2 uses
  %i.mj = and i32 %i.lp, 255
  %i.mk = sub i32 %i.lk, %.1104.i.i.lcssa
  %i.ml = tail call i32 @llvm.umin.i32(i32 %i.mk, i32 %i.mj) ; 4 uses
  %.not104 = icmp eq i32 %i.ml, 0
  br i1 %.not104, label %ZSTD_RowFindBestMatch.exit, label %.lr.ph93.preheader

.lr.ph93.preheader:                               ; preds = %._crit_edge88
  %wide.trip.count135 = zext nneg i32 %i.ml to i64 ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.lt ; 9 uses
  %xtraiter = and i64 %wide.trip.count135, 7      ; 3 uses
  %i.mm = icmp samesign ult i32 %i.ml, 8
  br i1 %i.mm, label %.lr.ph93.epil.preheader, label %.lr.ph93.preheader.new

.lr.ph93.preheader.new:                           ; preds = %.lr.ph93.preheader
  %unroll_iter = and i64 %wide.trip.count135, 248
  br label %.lr.ph93

.lr.ph97.unr-lcssa:                               ; preds = %.lr.ph93
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph97, label %.lr.ph93.epil.preheader

.lr.ph93.epil.preheader:                          ; preds = %.lr.ph97.unr-lcssa, %.lr.ph93.preheader
  %indvars.iv132.epil.init = phi i64 [ 0, %.lr.ph93.preheader ], [ %indvars.iv.next133.7, %.lr.ph97.unr-lcssa ]
  %lcmp.mod171 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod171)
  br label %.lr.ph93.epil

.lr.ph93.epil:                                    ; preds = %.lr.ph93.epil, %.lr.ph93.epil.preheader
  %indvars.iv132.epil = phi i64 [ %indvars.iv132.epil.init, %.lr.ph93.epil.preheader ], [ %indvars.iv.next133.epil, %.lr.ph93.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph93.epil.preheader ], [ %epil.iter.next, %.lr.ph93.epil ]
  %gep.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132.epil
  %i.mn = load i32, ptr %gep.epil, align 4, !tbaa !45
  %i.mo = zext i32 %i.mn to i64
  %i.mp = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.mo
  tail call void @llvm.prefetch.p0(ptr %i.mp, i32 0, i32 3, i32 1)
  %indvars.iv.next133.epil = add nuw nsw i64 %indvars.iv132.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph97, label %.lr.ph93.epil, !llvm.loop !205

.lr.ph97:                                         ; preds = %.lr.ph93.epil, %.lr.ph97.unr-lcssa
  %.val7 = load i32, ptr %1, align 1, !tbaa !45
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg51 = add i32 %i.s, 3
  %i.mr = add i32 %.neg51, %.neg
  %i.ms = lshr i32 %i.lp, 8
  %i.mt = zext nneg i32 %i.ms to i64
  br label %bb.ae

.lr.ph93:                                         ; preds = %.lr.ph93, %.lr.ph93.preheader.new
  %indvars.iv132 = phi i64 [ 0, %.lr.ph93.preheader.new ], [ %indvars.iv.next133.7, %.lr.ph93 ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph93.preheader.new ], [ %niter.next.7, %.lr.ph93 ]
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132
  %i.mu = load i32, ptr %gep, align 4, !tbaa !45
  %i.mv = zext i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.mv
  tail call void @llvm.prefetch.p0(ptr %i.mw, i32 0, i32 3, i32 1)
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.mx, i64 4
  %i.my = load i32, ptr %gep.1, align 4, !tbaa !45
  %i.mz = zext i32 %i.my to i64
  %i.na = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.mz
  tail call void @llvm.prefetch.p0(ptr %i.na, i32 0, i32 3, i32 1)
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.nc = load i32, ptr %gep.2, align 4, !tbaa !45
  %i.nd = zext i32 %i.nc to i64
  %i.ne = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.nd
  tail call void @llvm.prefetch.p0(ptr %i.ne, i32 0, i32 3, i32 1)
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132
  %gep.3 = getelementptr inbounds nuw i8, ptr %i.nf, i64 12
  %i.ng = load i32, ptr %gep.3, align 4, !tbaa !45
  %i.nh = zext i32 %i.ng to i64
  %i.ni = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.nh
  tail call void @llvm.prefetch.p0(ptr %i.ni, i32 0, i32 3, i32 1)
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132
  %gep.4 = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %i.nk = load i32, ptr %gep.4, align 4, !tbaa !45
  %i.nl = zext i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.nl
  tail call void @llvm.prefetch.p0(ptr %i.nm, i32 0, i32 3, i32 1)
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132
  %gep.5 = getelementptr inbounds nuw i8, ptr %i.nn, i64 20
  %i.no = load i32, ptr %gep.5, align 4, !tbaa !45
  %i.np = zext i32 %i.no to i64
  %i.nq = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.np
  tail call void @llvm.prefetch.p0(ptr %i.nq, i32 0, i32 3, i32 1)
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132
  %gep.6 = getelementptr inbounds nuw i8, ptr %i.nr, i64 24
  %i.ns = load i32, ptr %gep.6, align 4, !tbaa !45
  %i.nt = zext i32 %i.ns to i64
  %i.nu = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.nt
  tail call void @llvm.prefetch.p0(ptr %i.nu, i32 0, i32 3, i32 1)
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132
  %gep.7 = getelementptr inbounds nuw i8, ptr %i.nv, i64 28
  %i.nw = load i32, ptr %gep.7, align 4, !tbaa !45
  %i.nx = zext i32 %i.nw to i64
  %i.ny = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.nx
  tail call void @llvm.prefetch.p0(ptr %i.ny, i32 0, i32 3, i32 1)
  %indvars.iv.next133.7 = add nuw nsw i64 %indvars.iv132, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph97.unr-lcssa, label %.lr.ph93, !llvm.loop !15

bb.ae:                                            ; preds = %.lr.ph97, %.thread41
  %indvars.iv137 = phi i64 [ %i.mt, %.lr.ph97 ], [ %indvars.iv.next138, %.thread41 ] ; 2 uses
  %.1.i.i96 = phi i32 [ 0, %.lr.ph97 ], [ %i.om, %.thread41 ]
  %.3.i.i94 = phi i64 [ %.0100.i.i.lcssa, %.lr.ph97 ], [ %.5.i.i.ph, %.thread41 ] ; 3 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %indvars.iv137
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !45 ; 2 uses
  %i.ob = zext i32 %i.oa to i64
  %i.oc = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.ob ; 2 uses
  %.val8 = load i32, ptr %i.oc, align 1, !tbaa !45
  %i.od = icmp eq i32 %.val8, %.val7
  br i1 %i.od, label %bb.af, label %.thread41

bb.af:                                            ; preds = %bb.ae
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 4
  %i.of = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.mq, ptr noundef nonnull %i.oe, ptr noundef %2, ptr noundef %i.kw, ptr noundef %i.o)
  %i.og = add i64 %i.of, 4                        ; 4 uses
  %i.oh = icmp ugt i64 %i.og, %.3.i.i94
  br i1 %i.oh, label %bb.ag, label %.thread41

bb.ag:                                            ; preds = %bb.af
  %i.oi = sub i32 %i.mr, %i.oa
  %i.oj = zext i32 %i.oi to i64
  store i64 %i.oj, ptr %3, align 8, !tbaa !46
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 %i.og
  %i.ol = icmp eq ptr %i.ok, %2
  br i1 %i.ol, label %ZSTD_RowFindBestMatch.exit, label %.thread41

.thread41:                                        ; preds = %bb.ae, %bb.ag, %bb.af
  %.5.i.i.ph = phi i64 [ %i.og, %bb.ag ], [ %.3.i.i94, %bb.af ], [ %.3.i.i94, %bb.ae ] ; 2 uses
  %i.om = add nuw nsw i32 %.1.i.i96, 1            ; 2 uses
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1
  %exitcond139.not = icmp eq i32 %i.om, %i.ml
  br i1 %exitcond139.not, label %ZSTD_RowFindBestMatch.exit, label %bb.ae, !llvm.loop !16

ZSTD_RowFindBestMatch.exit:                       ; preds = %bb.aa, %bb.ad, %.thread41, %bb.ag, %._crit_edge88
  %.2.i.i = phi i64 [ %.0100.i.i.lcssa, %._crit_edge88 ], [ %i.og, %bb.ag ], [ %.5.i.i.ph, %.thread41 ], [ %.0100.i.i84, %bb.aa ], [ %i.me, %bb.ad ]
  ret i64 %.2.i.i
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i64 @ZSTD_RowFindBestMatch_dedicatedDictSearch_5_4(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !51   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37   ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !54   ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n ; 2 uses
  %i.p = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %i.s = trunc i64 %i.r to i32                    ; 10 uses
  %i.t = load i32, ptr %i.i, align 8, !tbaa !83
  %i.u = shl nuw i32 1, %i.t                      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !81   ; 2 uses
  %i.x = sub i32 %i.s, %i.w
  %i.y = icmp ugt i32 %i.x, %i.u
  %i.z = sub i32 %i.s, %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !56
  %.not.i = icmp eq i32 %i.ab, 0
  %i.ac = select i1 %.not.i, i1 %i.y, i1 false
  %i.ad = select i1 %i.ac, i32 %i.z, i32 %i.w
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !84 ; 3 uses
  %..i = tail call i32 @llvm.umin.i32(i32 %i.af, i32 4)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !52 ; 2 uses
  %i.ai = shl nuw nsw i32 1, %..i                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !78 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 264
  %i.am = load i32, ptr %i.al, align 8, !tbaa !43
  %.val9 = load i64, ptr %1, align 1, !tbaa !46
  %i.an = mul i64 %.val9, -3523014627271114752    ; 2 uses
  %i.ao = sub i32 66, %i.am
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = lshr i64 %i.an, %i.ap
  %i.ar = shl i64 %i.aq, 2                        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 112 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !38
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ar
  tail call void @llvm.prefetch.p0(ptr %i.au, i32 0, i32 3, i32 1)
  %i.av = icmp ugt i32 %i.af, 4
  %i.aw = add i32 %i.af, -4
  %i.ax = shl nuw i32 1, %i.aw
  %i.ay = select i1 %i.av, i32 %i.ax, i32 0
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !57
  %.not274.i = icmp eq i32 %i.ba, 0
  br i1 %.not274.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !41 ; 5 uses
  %i.bd = sub i32 %i.s, %i.bc
  %i.be = icmp ugt i32 %i.bd, 384
  br i1 %i.be, label %bb.c, label %ZSTD_row_update_internal.exit.i, !prof !85

bb.c:                                             ; preds = %bb.b
  %i.bf = icmp ult i32 %i.bc, -96
  br i1 %i.bf, label %.lr.ph, label %ZSTD_row_update_internalImpl.exit.i

.lr.ph:                                           ; preds = %bb.c
  %i.bg = add nuw i32 %i.bc, 96
  %i.bh = sub i32 56, %i.h
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = zext i32 %i.bc to i64
  %wide.trip.count = zext i32 %i.bg to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.bj, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.bk = load i64, ptr %i.ag, align 8, !tbaa !52
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.val10 = load i64, ptr %i.bm, align 1, !tbaa !46
  %i.bn = mul i64 %.val10, -3523014627271114752
  %i.bo = xor i64 %i.bn, %i.bk
  %i.bp = lshr i64 %i.bo, %i.bi                   ; 2 uses
  %i.bq = trunc i64 %i.bp to i32
  %i.br = lshr i64 %i.bp, 4
  %i.bs = and i64 %i.br, 268435440                ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bs
  tail call void @llvm.prefetch.p0(ptr %i.bt, i32 0, i32 3, i32 1)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bs
  tail call void @llvm.prefetch.p0(ptr %i.bu, i32 0, i32 3, i32 1)
  %i.bv = trunc nuw i64 %indvars.iv to i32
  %i.bw = and i64 %indvars.iv, 7
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !45 ; 2 uses
  store i32 %i.bq, ptr %i.bx, align 4, !tbaa !45
  %i.bz = lshr i32 %i.by, 4
  %i.ca = and i32 %i.bz, 268435440
  %i.cb = zext nneg i32 %i.ca to i64              ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cb ; 3 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !53
  %i.cf = add i8 %i.ce, 15
  %i.cg = and i8 %i.cf, 15                        ; 2 uses
  %i.ch = zext nneg i8 %i.cg to i32
  %i.ci = icmp eq i8 %i.cg, 0
  %i.cj = select i1 %i.ci, i32 15, i32 0
  %i.ck = add nuw nsw i32 %i.cj, %i.ch            ; 2 uses
  %i.cl = trunc nuw nsw i32 %i.ck to i8
  store i8 %i.cl, ptr %i.cd, align 1, !tbaa !53
  %i.cm = trunc i32 %i.by to i8
  %i.cn = zext nneg i32 %i.ck to i64              ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cn
  store i8 %i.cm, ptr %i.co, align 1, !tbaa !53
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.cn
  store i32 %i.bv, ptr %i.cp, align 4, !tbaa !45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %ZSTD_row_update_internalImpl.exit.i.loopexit, label %bb.d, !llvm.loop !0

ZSTD_row_update_internalImpl.exit.i.loopexit:     ; preds = %bb.d
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !38
  %.pre136 = load ptr, ptr %i.d, align 8, !tbaa !50
  %.pre137 = load i32, ptr %i.g, align 4, !tbaa !51
  br label %ZSTD_row_update_internalImpl.exit.i

ZSTD_row_update_internalImpl.exit.i:              ; preds = %ZSTD_row_update_internalImpl.exit.i.loopexit, %bb.c
  %i.cq = phi i32 [ %.pre137, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.h, %bb.c ] ; 4 uses
  %i.cr = phi ptr [ %.pre136, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.e, %bb.c ] ; 6 uses
  %i.cs = phi ptr [ %.pre, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.c, %bb.c ] ; 6 uses
  %i.ct = add i32 %i.s, -32                       ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.cv = zext i32 %i.ct to i64                   ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.cv ; 2 uses
  %i.cx = icmp ugt ptr %i.cw, %i.cu
  br i1 %i.cx, label %bb.f, label %bb.e

bb.e:                                             ; preds = %ZSTD_row_update_internalImpl.exit.i
  %i.cy = ptrtoint ptr %i.cu to i64
  %i.cz = ptrtoint ptr %i.cw to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = trunc i64 %i.da to i32
  %i.dc = add i32 %i.db, 1
  %i.dd = tail call i32 @llvm.umin.i32(i32 %i.dc, i32 8)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %ZSTD_row_update_internalImpl.exit.i
  %i.de = phi i32 [ %i.dd, %bb.e ], [ 0, %ZSTD_row_update_internalImpl.exit.i ] ; 3 uses
  %i.df = add i32 %i.de, %i.ct                    ; 2 uses
  %i.dg = icmp ult i32 %i.ct, %i.df
  br i1 %i.dg, label %.lr.ph62, label %ZSTD_row_update_internal.exit.i

.lr.ph62:                                         ; preds = %bb.f
  %i.dh = load i64, ptr %i.ag, align 8, !tbaa !52 ; 3 uses
  %i.di = sub i32 56, %i.cq
  %i.dj = zext nneg i32 %i.di to i64              ; 3 uses
  %xtraiter = and i32 %i.de, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph62
  %i.dk = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.cv
  %.val11.prol = load i64, ptr %i.dk, align 1, !tbaa !46
  %i.dl = mul i64 %.val11.prol, -3523014627271114752
  %i.dm = xor i64 %i.dl, %i.dh
  %i.dn = lshr i64 %i.dm, %i.dj                   ; 2 uses
  %i.do = trunc i64 %i.dn to i32
  %i.dp = lshr i64 %i.dn, 4
  %i.dq = and i64 %i.dp, 268435440                ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.dq
  tail call void @llvm.prefetch.p0(ptr %i.dr, i32 0, i32 3, i32 1)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.dq
  tail call void @llvm.prefetch.p0(ptr %i.ds, i32 0, i32 3, i32 1)
  %i.dt = and i64 %i.cv, 7
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dt
  store i32 %i.do, ptr %i.du, align 4, !tbaa !45
  %indvars.iv.next112.prol = add nuw nsw i64 %i.cv, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph62
  %indvars.iv111.unr = phi i64 [ %i.cv, %.lr.ph62 ], [ %indvars.iv.next112.prol, %.prol.loopexit.unr-lcssa ]
  %i.dv = icmp eq i32 %i.de, 1
  br i1 %i.dv, label %ZSTD_row_update_internal.exit.i, label %.lr.ph62.new

.lr.ph62.new:                                     ; preds = %.prol.loopexit, %.lr.ph62.new
  %indvars.iv111 = phi i64 [ %indvars.iv.next112.1, %.lr.ph62.new ], [ %indvars.iv111.unr, %.prol.loopexit ] ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv111
  %.val11 = load i64, ptr %i.dw, align 1, !tbaa !46
  %i.dx = mul i64 %.val11, -3523014627271114752
  %i.dy = xor i64 %i.dx, %i.dh
  %i.dz = lshr i64 %i.dy, %i.dj                   ; 2 uses
  %i.ea = trunc i64 %i.dz to i32
  %i.eb = lshr i64 %i.dz, 4
  %i.ec = and i64 %i.eb, 268435440                ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.ec
end_hunk_4
begin_hunk_5_@ZSTD_RowFindBestMatch_dedicatedDictSearch_5_4:bb.a
  %i.lq = lshr i32 %i.lp, 8
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !39 ; 3 uses
  %i.lt = zext nneg i32 %i.lq to i64              ; 2 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.lt
  tail call void @llvm.prefetch.p0(ptr %i.lu, i32 0, i32 3, i32 1)
  %.not103 = icmp eq i32 %i.lk, 0
  br i1 %.not103, label %._crit_edge88, label %.lr.ph87

.lr.ph87:                                         ; preds = %._crit_edge78
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg53 = add i32 %i.s, 3
  %i.lw = add i32 %.neg53, %.neg
  %wide.trip.count126 = zext nneg i32 %i.ln to i64
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph87, %.thread31
  %indvars.iv123 = phi i64 [ 0, %.lr.ph87 ], [ %indvars.iv.next124, %.thread31 ] ; 2 uses
  %.0100.i.i84 = phi i64 [ %.3261.i, %.lr.ph87 ], [ %.2102.i.i35, %.thread31 ] ; 4 uses
  %i.lx = getelementptr [4 x i8], ptr %i.ky, i64 %indvars.iv123
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !45 ; 3 uses
  %i.lz = zext i32 %i.ly to i64
  %i.ma = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.lz ; 2 uses
  %.not.i.i = icmp eq i32 %i.ly, 0
  br i1 %.not.i.i, label %ZSTD_RowFindBestMatch.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.val6 = load i32, ptr %i.ma, align 1, !tbaa !45
  %.val5 = load i32, ptr %1, align 1, !tbaa !45
  %i.mb = icmp eq i32 %.val6, %.val5
  br i1 %i.mb, label %bb.ab, label %.thread31

bb.ab:                                            ; preds = %bb.aa
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 4
  %i.md = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.lv, ptr noundef nonnull %i.mc, ptr noundef %2, ptr noundef %i.kw, ptr noundef %i.o)
  %i.me = add i64 %i.md, 4                        ; 4 uses
  %i.mf = icmp ugt i64 %i.me, %.0100.i.i84
  br i1 %i.mf, label %bb.ac, label %.thread31

bb.ac:                                            ; preds = %bb.ab
  %i.mg = sub i32 %i.lw, %i.ly
  %i.mh = zext i32 %i.mg to i64
  store i64 %i.mh, ptr %3, align 8, !tbaa !46
  %i.mi = getelementptr inbounds nuw i8, ptr %1, i64 %i.me
  %.not = icmp eq ptr %i.mi, %2
  br i1 %.not, label %ZSTD_RowFindBestMatch.exit, label %.thread31

.thread31:                                        ; preds = %bb.aa, %bb.ab, %bb.ac
  %.2102.i.i35 = phi i64 [ %i.me, %bb.ac ], [ %.0100.i.i84, %bb.ab ], [ %.0100.i.i84, %bb.aa ] ; 2 uses
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count126
  br i1 %exitcond127.not, label %._crit_edge88, label %bb.z, !llvm.loop !14

._crit_edge88:                                    ; preds = %.thread31, %._crit_edge78
  %.1104.i.i.lcssa = phi i32 [ 0, %._crit_edge78 ], [ %i.ln, %.thread31 ]
  %.0100.i.i.lcssa = phi i64 [ %.3261.i, %._crit_edge78 ], [ %.2102.i.i35, %.thread31 ] ; 2 uses
  %i.mj = and i32 %i.lp, 255
  %i.mk = sub i32 %i.lk, %.1104.i.i.lcssa
  %i.ml = tail call i32 @llvm.umin.i32(i32 %i.mk, i32 %i.mj) ; 4 uses
  %.not104 = icmp eq i32 %i.ml, 0
  br i1 %.not104, label %ZSTD_RowFindBestMatch.exit, label %.lr.ph93.preheader

.lr.ph93.preheader:                               ; preds = %._crit_edge88
  %wide.trip.count131 = zext nneg i32 %i.ml to i64 ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.lt ; 9 uses
  %xtraiter167 = and i64 %wide.trip.count131, 7   ; 3 uses
  %i.mm = icmp samesign ult i32 %i.ml, 8
  br i1 %i.mm, label %.lr.ph93.epil.preheader, label %.lr.ph93.preheader.new

.lr.ph93.preheader.new:                           ; preds = %.lr.ph93.preheader
  %unroll_iter = and i64 %wide.trip.count131, 248
  br label %.lr.ph93

.lr.ph97.unr-lcssa:                               ; preds = %.lr.ph93
  %lcmp.mod168.not = icmp eq i64 %xtraiter167, 0
  br i1 %lcmp.mod168.not, label %.lr.ph97, label %.lr.ph93.epil.preheader

.lr.ph93.epil.preheader:                          ; preds = %.lr.ph97.unr-lcssa, %.lr.ph93.preheader
  %indvars.iv128.epil.init = phi i64 [ 0, %.lr.ph93.preheader ], [ %indvars.iv.next129.7, %.lr.ph97.unr-lcssa ]
  %lcmp.mod169 = icmp ne i64 %xtraiter167, 0
  tail call void @llvm.assume(i1 %lcmp.mod169)
  br label %.lr.ph93.epil

.lr.ph93.epil:                                    ; preds = %.lr.ph93.epil, %.lr.ph93.epil.preheader
  %indvars.iv128.epil = phi i64 [ %indvars.iv128.epil.init, %.lr.ph93.epil.preheader ], [ %indvars.iv.next129.epil, %.lr.ph93.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph93.epil.preheader ], [ %epil.iter.next, %.lr.ph93.epil ]
  %gep.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128.epil
  %i.mn = load i32, ptr %gep.epil, align 4, !tbaa !45
  %i.mo = zext i32 %i.mn to i64
  %i.mp = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.mo
  tail call void @llvm.prefetch.p0(ptr %i.mp, i32 0, i32 3, i32 1)
  %indvars.iv.next129.epil = add nuw nsw i64 %indvars.iv128.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter167
  br i1 %epil.iter.cmp.not, label %.lr.ph97, label %.lr.ph93.epil, !llvm.loop !206

.lr.ph97:                                         ; preds = %.lr.ph93.epil, %.lr.ph97.unr-lcssa
  %.val7 = load i32, ptr %1, align 1, !tbaa !45
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg51 = add i32 %i.s, 3
  %i.mr = add i32 %.neg51, %.neg
  %i.ms = lshr i32 %i.lp, 8
  %i.mt = zext nneg i32 %i.ms to i64
  br label %bb.ad

.lr.ph93:                                         ; preds = %.lr.ph93, %.lr.ph93.preheader.new
  %indvars.iv128 = phi i64 [ 0, %.lr.ph93.preheader.new ], [ %indvars.iv.next129.7, %.lr.ph93 ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph93.preheader.new ], [ %niter.next.7, %.lr.ph93 ]
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %i.mu = load i32, ptr %gep, align 4, !tbaa !45
  %i.mv = zext i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.mv
  tail call void @llvm.prefetch.p0(ptr %i.mw, i32 0, i32 3, i32 1)
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.mx, i64 4
  %i.my = load i32, ptr %gep.1, align 4, !tbaa !45
  %i.mz = zext i32 %i.my to i64
  %i.na = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.mz
  tail call void @llvm.prefetch.p0(ptr %i.na, i32 0, i32 3, i32 1)
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.nc = load i32, ptr %gep.2, align 4, !tbaa !45
  %i.nd = zext i32 %i.nc to i64
  %i.ne = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.nd
  tail call void @llvm.prefetch.p0(ptr %i.ne, i32 0, i32 3, i32 1)
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %gep.3 = getelementptr inbounds nuw i8, ptr %i.nf, i64 12
  %i.ng = load i32, ptr %gep.3, align 4, !tbaa !45
  %i.nh = zext i32 %i.ng to i64
  %i.ni = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.nh
  tail call void @llvm.prefetch.p0(ptr %i.ni, i32 0, i32 3, i32 1)
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %gep.4 = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %i.nk = load i32, ptr %gep.4, align 4, !tbaa !45
  %i.nl = zext i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.nl
  tail call void @llvm.prefetch.p0(ptr %i.nm, i32 0, i32 3, i32 1)
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %gep.5 = getelementptr inbounds nuw i8, ptr %i.nn, i64 20
  %i.no = load i32, ptr %gep.5, align 4, !tbaa !45
  %i.np = zext i32 %i.no to i64
  %i.nq = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.np
  tail call void @llvm.prefetch.p0(ptr %i.nq, i32 0, i32 3, i32 1)
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %gep.6 = getelementptr inbounds nuw i8, ptr %i.nr, i64 24
  %i.ns = load i32, ptr %gep.6, align 4, !tbaa !45
  %i.nt = zext i32 %i.ns to i64
  %i.nu = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.nt
  tail call void @llvm.prefetch.p0(ptr %i.nu, i32 0, i32 3, i32 1)
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %gep.7 = getelementptr inbounds nuw i8, ptr %i.nv, i64 28
  %i.nw = load i32, ptr %gep.7, align 4, !tbaa !45
  %i.nx = zext i32 %i.nw to i64
  %i.ny = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.nx
  tail call void @llvm.prefetch.p0(ptr %i.ny, i32 0, i32 3, i32 1)
  %indvars.iv.next129.7 = add nuw nsw i64 %indvars.iv128, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph97.unr-lcssa, label %.lr.ph93, !llvm.loop !15

bb.ad:                                            ; preds = %.lr.ph97, %.thread41
  %indvars.iv133 = phi i64 [ %i.mt, %.lr.ph97 ], [ %indvars.iv.next134, %.thread41 ] ; 2 uses
  %.1.i.i96 = phi i32 [ 0, %.lr.ph97 ], [ %i.om, %.thread41 ]
  %.3.i.i94 = phi i64 [ %.0100.i.i.lcssa, %.lr.ph97 ], [ %.5.i.i.ph, %.thread41 ] ; 3 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %indvars.iv133
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !45 ; 2 uses
  %i.ob = zext i32 %i.oa to i64
  %i.oc = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.ob ; 2 uses
  %.val8 = load i32, ptr %i.oc, align 1, !tbaa !45
  %i.od = icmp eq i32 %.val8, %.val7
  br i1 %i.od, label %bb.ae, label %.thread41

bb.ae:                                            ; preds = %bb.ad
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 4
  %i.of = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.mq, ptr noundef nonnull %i.oe, ptr noundef %2, ptr noundef %i.kw, ptr noundef %i.o)
  %i.og = add i64 %i.of, 4                        ; 4 uses
  %i.oh = icmp ugt i64 %i.og, %.3.i.i94
  br i1 %i.oh, label %bb.af, label %.thread41

bb.af:                                            ; preds = %bb.ae
  %i.oi = sub i32 %i.mr, %i.oa
  %i.oj = zext i32 %i.oi to i64
  store i64 %i.oj, ptr %3, align 8, !tbaa !46
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 %i.og
  %i.ol = icmp eq ptr %i.ok, %2
  br i1 %i.ol, label %ZSTD_RowFindBestMatch.exit, label %.thread41

.thread41:                                        ; preds = %bb.ad, %bb.af, %bb.ae
  %.5.i.i.ph = phi i64 [ %i.og, %bb.af ], [ %.3.i.i94, %bb.ae ], [ %.3.i.i94, %bb.ad ] ; 2 uses
  %i.om = add nuw nsw i32 %.1.i.i96, 1            ; 2 uses
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1
  %exitcond135.not = icmp eq i32 %i.om, %i.ml
  br i1 %exitcond135.not, label %ZSTD_RowFindBestMatch.exit, label %bb.ad, !llvm.loop !16

ZSTD_RowFindBestMatch.exit:                       ; preds = %bb.z, %bb.ac, %.thread41, %bb.af, %._crit_edge88
  %.2.i.i = phi i64 [ %.0100.i.i.lcssa, %._crit_edge88 ], [ %i.og, %bb.af ], [ %.5.i.i.ph, %.thread41 ], [ %.0100.i.i84, %bb.z ], [ %i.me, %bb.ac ]
  ret i64 %.2.i.i
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i64 @ZSTD_RowFindBestMatch_dedicatedDictSearch_5_5(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !51   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37   ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !54   ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n ; 2 uses
  %i.p = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %i.s = trunc i64 %i.r to i32                    ; 10 uses
  %i.t = load i32, ptr %i.i, align 8, !tbaa !83
  %i.u = shl nuw i32 1, %i.t                      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !81   ; 2 uses
  %i.x = sub i32 %i.s, %i.w
  %i.y = icmp ugt i32 %i.x, %i.u
  %i.z = sub i32 %i.s, %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !56
  %.not.i = icmp eq i32 %i.ab, 0
  %i.ac = select i1 %.not.i, i1 %i.y, i1 false
  %i.ad = select i1 %i.ac, i32 %i.z, i32 %i.w
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !84 ; 3 uses
  %..i = tail call i32 @llvm.umin.i32(i32 %i.af, i32 5)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !52 ; 2 uses
  %i.ai = shl nuw nsw i32 1, %..i                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !78 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 264
  %i.am = load i32, ptr %i.al, align 8, !tbaa !43
  %.val9 = load i64, ptr %1, align 1, !tbaa !46
  %i.an = mul i64 %.val9, -3523014627271114752    ; 2 uses
  %i.ao = sub i32 66, %i.am
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = lshr i64 %i.an, %i.ap
  %i.ar = shl i64 %i.aq, 2                        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 112 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !38
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ar
  tail call void @llvm.prefetch.p0(ptr %i.au, i32 0, i32 3, i32 1)
  %i.av = icmp ugt i32 %i.af, 5
  %i.aw = add i32 %i.af, -5
  %i.ax = shl nuw i32 1, %i.aw
  %i.ay = select i1 %i.av, i32 %i.ax, i32 0
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !57
  %.not274.i = icmp eq i32 %i.ba, 0
  br i1 %.not274.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !41 ; 5 uses
  %i.bd = sub i32 %i.s, %i.bc
  %i.be = icmp ugt i32 %i.bd, 384
  br i1 %i.be, label %bb.c, label %ZSTD_row_update_internal.exit.i, !prof !85

bb.c:                                             ; preds = %bb.b
  %i.bf = icmp ult i32 %i.bc, -96
  br i1 %i.bf, label %.lr.ph, label %ZSTD_row_update_internalImpl.exit.i

.lr.ph:                                           ; preds = %bb.c
  %i.bg = add nuw i32 %i.bc, 96
  %i.bh = sub i32 56, %i.h
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = zext i32 %i.bc to i64
  %wide.trip.count = zext i32 %i.bg to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.bj, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.bk = load i64, ptr %i.ag, align 8, !tbaa !52
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.val10 = load i64, ptr %i.bm, align 1, !tbaa !46
  %i.bn = mul i64 %.val10, -3523014627271114752
  %i.bo = xor i64 %i.bn, %i.bk
  %i.bp = lshr i64 %i.bo, %i.bi                   ; 2 uses
  %i.bq = trunc i64 %i.bp to i32
  %i.br = lshr i64 %i.bp, 3
  %i.bs = and i64 %i.br, 536870880                ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bs ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.bt, i32 0, i32 3, i32 1)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bu, i32 0, i32 3, i32 1)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bs
  tail call void @llvm.prefetch.p0(ptr %i.bv, i32 0, i32 3, i32 1)
  %i.bw = trunc nuw i64 %indvars.iv to i32
  %i.bx = and i64 %indvars.iv, 7
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bx ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !45 ; 2 uses
  store i32 %i.bq, ptr %i.by, align 4, !tbaa !45
  %i.ca = lshr i32 %i.bz, 3
  %i.cb = and i32 %i.ca, 536870880
  %i.cc = zext nneg i32 %i.cb to i64              ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cc ; 3 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !53
  %i.cg = add i8 %i.cf, 31
  %i.ch = and i8 %i.cg, 31                        ; 2 uses
  %i.ci = zext nneg i8 %i.ch to i32
  %i.cj = icmp eq i8 %i.ch, 0
  %i.ck = select i1 %i.cj, i32 31, i32 0
  %i.cl = add nuw nsw i32 %i.ck, %i.ci            ; 2 uses
  %i.cm = trunc nuw nsw i32 %i.cl to i8
  store i8 %i.cm, ptr %i.ce, align 1, !tbaa !53
  %i.cn = trunc i32 %i.bz to i8
  %i.co = zext nneg i32 %i.cl to i64              ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.co
  store i8 %i.cn, ptr %i.cp, align 1, !tbaa !53
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.co
  store i32 %i.bw, ptr %i.cq, align 4, !tbaa !45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %ZSTD_row_update_internalImpl.exit.i.loopexit, label %bb.d, !llvm.loop !0

ZSTD_row_update_internalImpl.exit.i.loopexit:     ; preds = %bb.d
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !38
  %.pre139 = load ptr, ptr %i.d, align 8, !tbaa !50
  %.pre140 = load i32, ptr %i.g, align 4, !tbaa !51
  br label %ZSTD_row_update_internalImpl.exit.i

ZSTD_row_update_internalImpl.exit.i:              ; preds = %ZSTD_row_update_internalImpl.exit.i.loopexit, %bb.c
  %i.cr = phi i32 [ %.pre140, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.h, %bb.c ] ; 4 uses
  %i.cs = phi ptr [ %.pre139, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.e, %bb.c ] ; 6 uses
  %i.ct = phi ptr [ %.pre, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.c, %bb.c ] ; 6 uses
  %i.cu = add i32 %i.s, -32                       ; 6 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.cw = zext i32 %i.cu to i64                   ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.cw ; 2 uses
  %i.cy = icmp ugt ptr %i.cx, %i.cv
  br i1 %i.cy, label %bb.f, label %bb.e

bb.e:                                             ; preds = %ZSTD_row_update_internalImpl.exit.i
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = ptrtoint ptr %i.cx to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = trunc i64 %i.db to i32
  %i.dd = add i32 %i.dc, 1
  %i.de = tail call i32 @llvm.umin.i32(i32 %i.dd, i32 8)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %ZSTD_row_update_internalImpl.exit.i
  %i.df = phi i32 [ %i.de, %bb.e ], [ 0, %ZSTD_row_update_internalImpl.exit.i ] ; 3 uses
  %i.dg = add i32 %i.df, %i.cu                    ; 2 uses
  %i.dh = icmp ult i32 %i.cu, %i.dg
  br i1 %i.dh, label %.lr.ph62, label %ZSTD_row_update_internal.exit.i

.lr.ph62:                                         ; preds = %bb.f
  %i.di = load i64, ptr %i.ag, align 8, !tbaa !52 ; 3 uses
  %i.dj = sub i32 56, %i.cr
  %i.dk = zext nneg i32 %i.dj to i64              ; 3 uses
  %xtraiter = and i32 %i.df, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph62
  %i.dl = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.cw
  %.val11.prol = load i64, ptr %i.dl, align 1, !tbaa !46
  %i.dm = mul i64 %.val11.prol, -3523014627271114752
  %i.dn = xor i64 %i.dm, %i.di
  %i.do = lshr i64 %i.dn, %i.dk                   ; 2 uses
  %i.dp = trunc i64 %i.do to i32
  %i.dq = lshr i64 %i.do, 3
  %i.dr = and i64 %i.dq, 536870880                ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.dr ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ds, i32 0, i32 3, i32 1)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dt, i32 0, i32 3, i32 1)
  %i.du = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.dr
  tail call void @llvm.prefetch.p0(ptr %i.du, i32 0, i32 3, i32 1)
  %i.dv = and i64 %i.cw, 7
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dv
  store i32 %i.dp, ptr %i.dw, align 4, !tbaa !45
  %indvars.iv.next112.prol = add nuw nsw i64 %i.cw, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph62
  %indvars.iv111.unr = phi i64 [ %i.cw, %.lr.ph62 ], [ %indvars.iv.next112.prol, %.prol.loopexit.unr-lcssa ]
  %i.dx = icmp eq i32 %i.df, 1
  br i1 %i.dx, label %ZSTD_row_update_internal.exit.i, label %.lr.ph62.new

.lr.ph62.new:                                     ; preds = %.prol.loopexit, %.lr.ph62.new
  %indvars.iv111 = phi i64 [ %indvars.iv.next112.1, %.lr.ph62.new ], [ %indvars.iv111.unr, %.prol.loopexit ] ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv111
  %.val11 = load i64, ptr %i.dy, align 1, !tbaa !46
  %i.dz = mul i64 %.val11, -3523014627271114752
  %i.ea = xor i64 %i.dz, %i.di
  %i.eb = lshr i64 %i.ea, %i.dk                   ; 2 uses
end_hunk_5
begin_hunk_6_@ZSTD_RowFindBestMatch_dedicatedDictSearch_5_5:bb.a
  %i.ly = lshr i32 %i.lx, 8
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !39 ; 3 uses
  %i.mb = zext nneg i32 %i.ly to i64              ; 2 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.mb
  tail call void @llvm.prefetch.p0(ptr %i.mc, i32 0, i32 3, i32 1)
  %.not103 = icmp eq i32 %i.ls, 0
  br i1 %.not103, label %._crit_edge88, label %.lr.ph87

.lr.ph87:                                         ; preds = %._crit_edge78
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg53 = add i32 %i.s, 3
  %i.me = add i32 %.neg53, %.neg
  %wide.trip.count129 = zext nneg i32 %i.lv to i64
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph87, %.thread31
  %indvars.iv126 = phi i64 [ 0, %.lr.ph87 ], [ %indvars.iv.next127, %.thread31 ] ; 2 uses
  %.0100.i.i84 = phi i64 [ %.3261.i, %.lr.ph87 ], [ %.2102.i.i35, %.thread31 ] ; 4 uses
  %i.mf = getelementptr [4 x i8], ptr %i.lg, i64 %indvars.iv126
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !45 ; 3 uses
  %i.mh = zext i32 %i.mg to i64
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.mh ; 2 uses
  %.not.i.i = icmp eq i32 %i.mg, 0
  br i1 %.not.i.i, label %ZSTD_RowFindBestMatch.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.val6 = load i32, ptr %i.mi, align 1, !tbaa !45
  %.val5 = load i32, ptr %1, align 1, !tbaa !45
  %i.mj = icmp eq i32 %.val6, %.val5
  br i1 %i.mj, label %bb.ab, label %.thread31

bb.ab:                                            ; preds = %bb.aa
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 4
  %i.ml = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.md, ptr noundef nonnull %i.mk, ptr noundef %2, ptr noundef %i.le, ptr noundef %i.o)
  %i.mm = add i64 %i.ml, 4                        ; 4 uses
  %i.mn = icmp ugt i64 %i.mm, %.0100.i.i84
  br i1 %i.mn, label %bb.ac, label %.thread31

bb.ac:                                            ; preds = %bb.ab
  %i.mo = sub i32 %i.me, %i.mg
  %i.mp = zext i32 %i.mo to i64
  store i64 %i.mp, ptr %3, align 8, !tbaa !46
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 %i.mm
  %.not = icmp eq ptr %i.mq, %2
  br i1 %.not, label %ZSTD_RowFindBestMatch.exit, label %.thread31

.thread31:                                        ; preds = %bb.aa, %bb.ab, %bb.ac
  %.2102.i.i35 = phi i64 [ %i.mm, %bb.ac ], [ %.0100.i.i84, %bb.ab ], [ %.0100.i.i84, %bb.aa ] ; 2 uses
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1 ; 2 uses
  %exitcond130.not = icmp eq i64 %indvars.iv.next127, %wide.trip.count129
  br i1 %exitcond130.not, label %._crit_edge88, label %bb.z, !llvm.loop !14

._crit_edge88:                                    ; preds = %.thread31, %._crit_edge78
  %.1104.i.i.lcssa = phi i32 [ 0, %._crit_edge78 ], [ %i.lv, %.thread31 ]
  %.0100.i.i.lcssa = phi i64 [ %.3261.i, %._crit_edge78 ], [ %.2102.i.i35, %.thread31 ] ; 2 uses
  %i.mr = and i32 %i.lx, 255
  %i.ms = sub i32 %i.ls, %.1104.i.i.lcssa
  %i.mt = tail call i32 @llvm.umin.i32(i32 %i.ms, i32 %i.mr) ; 4 uses
  %.not104 = icmp eq i32 %i.mt, 0
  br i1 %.not104, label %ZSTD_RowFindBestMatch.exit, label %.lr.ph93.preheader

.lr.ph93.preheader:                               ; preds = %._crit_edge88
  %wide.trip.count134 = zext nneg i32 %i.mt to i64 ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.mb ; 9 uses
  %xtraiter170 = and i64 %wide.trip.count134, 7   ; 3 uses
  %i.mu = icmp samesign ult i32 %i.mt, 8
  br i1 %i.mu, label %.lr.ph93.epil.preheader, label %.lr.ph93.preheader.new

.lr.ph93.preheader.new:                           ; preds = %.lr.ph93.preheader
  %unroll_iter = and i64 %wide.trip.count134, 248
  br label %.lr.ph93

.lr.ph97.unr-lcssa:                               ; preds = %.lr.ph93
  %lcmp.mod171.not = icmp eq i64 %xtraiter170, 0
  br i1 %lcmp.mod171.not, label %.lr.ph97, label %.lr.ph93.epil.preheader

.lr.ph93.epil.preheader:                          ; preds = %.lr.ph97.unr-lcssa, %.lr.ph93.preheader
  %indvars.iv131.epil.init = phi i64 [ 0, %.lr.ph93.preheader ], [ %indvars.iv.next132.7, %.lr.ph97.unr-lcssa ]
  %lcmp.mod172 = icmp ne i64 %xtraiter170, 0
  tail call void @llvm.assume(i1 %lcmp.mod172)
  br label %.lr.ph93.epil

.lr.ph93.epil:                                    ; preds = %.lr.ph93.epil, %.lr.ph93.epil.preheader
  %indvars.iv131.epil = phi i64 [ %indvars.iv131.epil.init, %.lr.ph93.epil.preheader ], [ %indvars.iv.next132.epil, %.lr.ph93.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph93.epil.preheader ], [ %epil.iter.next, %.lr.ph93.epil ]
  %gep.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131.epil
  %i.mv = load i32, ptr %gep.epil, align 4, !tbaa !45
  %i.mw = zext i32 %i.mv to i64
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.mw
  tail call void @llvm.prefetch.p0(ptr %i.mx, i32 0, i32 3, i32 1)
  %indvars.iv.next132.epil = add nuw nsw i64 %indvars.iv131.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter170
  br i1 %epil.iter.cmp.not, label %.lr.ph97, label %.lr.ph93.epil, !llvm.loop !207

.lr.ph97:                                         ; preds = %.lr.ph93.epil, %.lr.ph97.unr-lcssa
  %.val7 = load i32, ptr %1, align 1, !tbaa !45
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg51 = add i32 %i.s, 3
  %i.mz = add i32 %.neg51, %.neg
  %i.na = lshr i32 %i.lx, 8
  %i.nb = zext nneg i32 %i.na to i64
  br label %bb.ad

.lr.ph93:                                         ; preds = %.lr.ph93, %.lr.ph93.preheader.new
  %indvars.iv131 = phi i64 [ 0, %.lr.ph93.preheader.new ], [ %indvars.iv.next132.7, %.lr.ph93 ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph93.preheader.new ], [ %niter.next.7, %.lr.ph93 ]
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %i.nc = load i32, ptr %gep, align 4, !tbaa !45
  %i.nd = zext i32 %i.nc to i64
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.nd
  tail call void @llvm.prefetch.p0(ptr %i.ne, i32 0, i32 3, i32 1)
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.nf, i64 4
  %i.ng = load i32, ptr %gep.1, align 4, !tbaa !45
  %i.nh = zext i32 %i.ng to i64
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.nh
  tail call void @llvm.prefetch.p0(ptr %i.ni, i32 0, i32 3, i32 1)
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  %i.nk = load i32, ptr %gep.2, align 4, !tbaa !45
  %i.nl = zext i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.nl
  tail call void @llvm.prefetch.p0(ptr %i.nm, i32 0, i32 3, i32 1)
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %gep.3 = getelementptr inbounds nuw i8, ptr %i.nn, i64 12
  %i.no = load i32, ptr %gep.3, align 4, !tbaa !45
  %i.np = zext i32 %i.no to i64
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.np
  tail call void @llvm.prefetch.p0(ptr %i.nq, i32 0, i32 3, i32 1)
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %gep.4 = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %i.ns = load i32, ptr %gep.4, align 4, !tbaa !45
  %i.nt = zext i32 %i.ns to i64
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.nt
  tail call void @llvm.prefetch.p0(ptr %i.nu, i32 0, i32 3, i32 1)
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %gep.5 = getelementptr inbounds nuw i8, ptr %i.nv, i64 20
  %i.nw = load i32, ptr %gep.5, align 4, !tbaa !45
  %i.nx = zext i32 %i.nw to i64
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.nx
  tail call void @llvm.prefetch.p0(ptr %i.ny, i32 0, i32 3, i32 1)
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %gep.6 = getelementptr inbounds nuw i8, ptr %i.nz, i64 24
  %i.oa = load i32, ptr %gep.6, align 4, !tbaa !45
  %i.ob = zext i32 %i.oa to i64
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.ob
  tail call void @llvm.prefetch.p0(ptr %i.oc, i32 0, i32 3, i32 1)
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %gep.7 = getelementptr inbounds nuw i8, ptr %i.od, i64 28
  %i.oe = load i32, ptr %gep.7, align 4, !tbaa !45
  %i.of = zext i32 %i.oe to i64
  %i.og = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.of
  tail call void @llvm.prefetch.p0(ptr %i.og, i32 0, i32 3, i32 1)
  %indvars.iv.next132.7 = add nuw nsw i64 %indvars.iv131, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph97.unr-lcssa, label %.lr.ph93, !llvm.loop !15

bb.ad:                                            ; preds = %.lr.ph97, %.thread41
  %indvars.iv136 = phi i64 [ %i.nb, %.lr.ph97 ], [ %indvars.iv.next137, %.thread41 ] ; 2 uses
  %.1.i.i96 = phi i32 [ 0, %.lr.ph97 ], [ %i.ou, %.thread41 ]
  %.3.i.i94 = phi i64 [ %.0100.i.i.lcssa, %.lr.ph97 ], [ %.5.i.i.ph, %.thread41 ] ; 3 uses
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %indvars.iv136
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !45 ; 2 uses
  %i.oj = zext i32 %i.oi to i64
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.oj ; 2 uses
  %.val8 = load i32, ptr %i.ok, align 1, !tbaa !45
  %i.ol = icmp eq i32 %.val8, %.val7
  br i1 %i.ol, label %bb.ae, label %.thread41

bb.ae:                                            ; preds = %bb.ad
  %i.om = getelementptr inbounds nuw i8, ptr %i.ok, i64 4
  %i.on = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.my, ptr noundef nonnull %i.om, ptr noundef %2, ptr noundef %i.le, ptr noundef %i.o)
  %i.oo = add i64 %i.on, 4                        ; 4 uses
  %i.op = icmp ugt i64 %i.oo, %.3.i.i94
  br i1 %i.op, label %bb.af, label %.thread41

bb.af:                                            ; preds = %bb.ae
  %i.oq = sub i32 %i.mz, %i.oi
  %i.or = zext i32 %i.oq to i64
  store i64 %i.or, ptr %3, align 8, !tbaa !46
  %i.os = getelementptr inbounds nuw i8, ptr %1, i64 %i.oo
  %i.ot = icmp eq ptr %i.os, %2
  br i1 %i.ot, label %ZSTD_RowFindBestMatch.exit, label %.thread41

.thread41:                                        ; preds = %bb.ad, %bb.af, %bb.ae
  %.5.i.i.ph = phi i64 [ %i.oo, %bb.af ], [ %.3.i.i94, %bb.ae ], [ %.3.i.i94, %bb.ad ] ; 2 uses
  %i.ou = add nuw nsw i32 %.1.i.i96, 1            ; 2 uses
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1
  %exitcond138.not = icmp eq i32 %i.ou, %i.mt
  br i1 %exitcond138.not, label %ZSTD_RowFindBestMatch.exit, label %bb.ad, !llvm.loop !16

ZSTD_RowFindBestMatch.exit:                       ; preds = %bb.z, %bb.ac, %.thread41, %bb.af, %._crit_edge88
  %.2.i.i = phi i64 [ %.0100.i.i.lcssa, %._crit_edge88 ], [ %i.oo, %bb.af ], [ %.5.i.i.ph, %.thread41 ], [ %.0100.i.i84, %bb.z ], [ %i.mm, %bb.ac ]
  ret i64 %.2.i.i
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i64 @ZSTD_RowFindBestMatch_dedicatedDictSearch_5_6(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !51   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37   ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !54   ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n ; 2 uses
  %i.p = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %i.s = trunc i64 %i.r to i32                    ; 10 uses
  %i.t = load i32, ptr %i.i, align 8, !tbaa !83
  %i.u = shl nuw i32 1, %i.t                      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !81   ; 2 uses
  %i.x = sub i32 %i.s, %i.w
  %i.y = icmp ugt i32 %i.x, %i.u
  %i.z = sub i32 %i.s, %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !56
  %.not.i = icmp eq i32 %i.ab, 0
  %i.ac = select i1 %.not.i, i1 %i.y, i1 false
  %i.ad = select i1 %i.ac, i32 %i.z, i32 %i.w
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !84 ; 3 uses
  %..i = tail call i32 @llvm.umin.i32(i32 %i.af, i32 6)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !52 ; 2 uses
  %i.ai = shl nuw nsw i32 1, %..i                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !78 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 264
  %i.am = load i32, ptr %i.al, align 8, !tbaa !43
  %.val9 = load i64, ptr %1, align 1, !tbaa !46
  %i.an = mul i64 %.val9, -3523014627271114752    ; 2 uses
  %i.ao = sub i32 66, %i.am
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = lshr i64 %i.an, %i.ap
  %i.ar = shl i64 %i.aq, 2                        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 112 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !38
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ar
  tail call void @llvm.prefetch.p0(ptr %i.au, i32 0, i32 3, i32 1)
  %i.av = icmp ugt i32 %i.af, 6
  %i.aw = add i32 %i.af, -6
  %i.ax = shl nuw i32 1, %i.aw
  %i.ay = select i1 %i.av, i32 %i.ax, i32 0
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !57
  %.not274.i = icmp eq i32 %i.ba, 0
  br i1 %.not274.i, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !41 ; 5 uses
  %i.bd = sub i32 %i.s, %i.bc
  %i.be = icmp ugt i32 %i.bd, 384
  br i1 %i.be, label %bb.c, label %ZSTD_row_update_internal.exit.i, !prof !85

bb.c:                                             ; preds = %bb.b
  %i.bf = icmp ult i32 %i.bc, -96
  br i1 %i.bf, label %.lr.ph, label %ZSTD_row_update_internalImpl.exit.i

.lr.ph:                                           ; preds = %bb.c
  %i.bg = add nuw i32 %i.bc, 96
  %i.bh = sub i32 56, %i.h
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = zext i32 %i.bc to i64
  %wide.trip.count = zext i32 %i.bg to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.bj, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.bk = load i64, ptr %i.ag, align 8, !tbaa !52
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.val10 = load i64, ptr %i.bm, align 1, !tbaa !46
  %i.bn = mul i64 %.val10, -3523014627271114752
  %i.bo = xor i64 %i.bn, %i.bk
  %i.bp = lshr i64 %i.bo, %i.bi                   ; 2 uses
  %i.bq = trunc i64 %i.bp to i32
  %i.br = lshr i64 %i.bp, 2
  %i.bs = and i64 %i.br, 1073741760               ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bs ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.bt, i32 0, i32 3, i32 1)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bu, i32 0, i32 3, i32 1)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bs ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.bv, i32 0, i32 3, i32 1)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bw, i32 0, i32 3, i32 1)
  %i.bx = trunc nuw i64 %indvars.iv to i32
  %i.by = and i64 %indvars.iv, 7
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.by ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !45 ; 2 uses
  store i32 %i.bq, ptr %i.bz, align 4, !tbaa !45
  %i.cb = lshr i32 %i.ca, 2
  %i.cc = and i32 %i.cb, 1073741760
  %i.cd = zext nneg i32 %i.cc to i64              ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cd ; 3 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !53
  %i.ch = add i8 %i.cg, 63
  %i.ci = and i8 %i.ch, 63                        ; 2 uses
  %i.cj = zext nneg i8 %i.ci to i32
  %i.ck = icmp eq i8 %i.ci, 0
  %i.cl = select i1 %i.ck, i32 63, i32 0
  %i.cm = add nuw nsw i32 %i.cl, %i.cj            ; 2 uses
  %i.cn = trunc nuw nsw i32 %i.cm to i8
  store i8 %i.cn, ptr %i.cf, align 1, !tbaa !53
  %i.co = trunc i32 %i.ca to i8
  %i.cp = zext nneg i32 %i.cm to i64              ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cp
  store i8 %i.co, ptr %i.cq, align 1, !tbaa !53
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cp
  store i32 %i.bx, ptr %i.cr, align 4, !tbaa !45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %ZSTD_row_update_internalImpl.exit.i.loopexit, label %bb.d, !llvm.loop !0

ZSTD_row_update_internalImpl.exit.i.loopexit:     ; preds = %bb.d
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !38
  %.pre140 = load ptr, ptr %i.d, align 8, !tbaa !50
  %.pre141 = load i32, ptr %i.g, align 4, !tbaa !51
  br label %ZSTD_row_update_internalImpl.exit.i

ZSTD_row_update_internalImpl.exit.i:              ; preds = %ZSTD_row_update_internalImpl.exit.i.loopexit, %bb.c
  %i.cs = phi i32 [ %.pre141, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.h, %bb.c ] ; 3 uses
  %i.ct = phi ptr [ %.pre140, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.e, %bb.c ] ; 3 uses
  %i.cu = phi ptr [ %.pre, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.c, %bb.c ] ; 3 uses
  %i.cv = add i32 %i.s, -32                       ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.cx = zext i32 %i.cv to i64                   ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.cx ; 2 uses
  %i.cz = icmp ugt ptr %i.cy, %i.cw
  br i1 %i.cz, label %bb.f, label %bb.e

bb.e:                                             ; preds = %ZSTD_row_update_internalImpl.exit.i
  %i.da = ptrtoint ptr %i.cw to i64
  %i.db = ptrtoint ptr %i.cy to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = trunc i64 %i.dc to i32
  %i.de = add i32 %i.dd, 1
  %i.df = tail call i32 @llvm.umin.i32(i32 %i.de, i32 8)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %ZSTD_row_update_internalImpl.exit.i
  %i.dg = phi i32 [ %i.df, %bb.e ], [ 0, %ZSTD_row_update_internalImpl.exit.i ]
  %i.dh = add i32 %i.dg, %i.cv                    ; 2 uses
  %i.di = icmp ult i32 %i.cv, %i.dh
  br i1 %i.di, label %.lr.ph62, label %ZSTD_row_update_internal.exit.i

.lr.ph62:                                         ; preds = %bb.f
  %i.dj = load i64, ptr %i.ag, align 8, !tbaa !52
  %i.dk = sub i32 56, %i.cs
  %i.dl = zext nneg i32 %i.dk to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph62, %bb.g
  %indvars.iv111 = phi i64 [ %i.cx, %.lr.ph62 ], [ %indvars.iv.next112, %bb.g ] ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv111
  %.val11 = load i64, ptr %i.dm, align 1, !tbaa !46
  %i.dn = mul i64 %.val11, -3523014627271114752
  %i.do = xor i64 %i.dn, %i.dj
  %i.dp = lshr i64 %i.do, %i.dl                   ; 2 uses
  %i.dq = trunc i64 %i.dp to i32
  %i.dr = lshr i64 %i.dp, 2
  %i.ds = and i64 %i.dr, 1073741760               ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.ds ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.dt, i32 0, i32 3, i32 1)
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.du, i32 0, i32 3, i32 1)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.ds ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.dv, i32 0, i32 3, i32 1)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dw, i32 0, i32 3, i32 1)
  %i.dx = and i64 %indvars.iv111, 7
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dx
  store i32 %i.dq, ptr %i.dy, align 4, !tbaa !45
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next112 to i32
  %exitcond114.not = icmp eq i32 %i.dh, %lftr.wideiv
  br i1 %exitcond114.not, label %ZSTD_row_update_internal.exit.i, label %bb.g, !llvm.loop !5

ZSTD_row_update_internal.exit.i:                  ; preds = %bb.g, %bb.f, %bb.b
  %i.dz = phi i32 [ %i.h, %bb.b ], [ %i.cs, %bb.f ], [ %i.cs, %bb.g ]
  %i.ea = phi ptr [ %i.e, %bb.b ], [ %i.ct, %bb.f ], [ %i.ct, %bb.g ] ; 2 uses
  %i.eb = phi ptr [ %i.c, %bb.b ], [ %i.cu, %bb.f ], [ %i.cu, %bb.g ] ; 2 uses
  %.0.i284.i = phi i32 [ %i.bc, %bb.b ], [ %i.cv, %bb.f ], [ %i.cv, %bb.g ] ; 2 uses
  %i.ec = load ptr, ptr %i.j, align 8, !tbaa !37
  %i.ed = icmp ult i32 %.0.i284.i, %i.s
end_hunk_6
begin_hunk_7_@ZSTD_RowFindBestMatch_dedicatedDictSearch_5_6:bb.a
  %i.lr = lshr i32 %i.lq, 8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !39 ; 3 uses
  %i.lu = zext nneg i32 %i.lr to i64              ; 2 uses
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %i.lu
  tail call void @llvm.prefetch.p0(ptr %i.lv, i32 0, i32 3, i32 1)
  %.not103 = icmp eq i32 %i.ll, 0
  br i1 %.not103, label %._crit_edge88, label %.lr.ph87

.lr.ph87:                                         ; preds = %._crit_edge78
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg53 = add i32 %i.s, 3
  %i.lx = add i32 %.neg53, %.neg
  %wide.trip.count130 = zext nneg i32 %i.lo to i64
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph87, %.thread31
  %indvars.iv127 = phi i64 [ 0, %.lr.ph87 ], [ %indvars.iv.next128, %.thread31 ] ; 2 uses
  %.0100.i.i84 = phi i64 [ %.3261.i, %.lr.ph87 ], [ %.2102.i.i35, %.thread31 ] ; 4 uses
  %i.ly = getelementptr [4 x i8], ptr %i.kz, i64 %indvars.iv127
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !45 ; 3 uses
  %i.ma = zext i32 %i.lz to i64
  %i.mb = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.ma ; 2 uses
  %.not.i.i = icmp eq i32 %i.lz, 0
  br i1 %.not.i.i, label %ZSTD_RowFindBestMatch.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.val6 = load i32, ptr %i.mb, align 1, !tbaa !45
  %.val5 = load i32, ptr %1, align 1, !tbaa !45
  %i.mc = icmp eq i32 %.val6, %.val5
  br i1 %i.mc, label %bb.ac, label %.thread31

bb.ac:                                            ; preds = %bb.ab
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 4
  %i.me = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.lw, ptr noundef nonnull %i.md, ptr noundef %2, ptr noundef %i.kx, ptr noundef %i.o)
  %i.mf = add i64 %i.me, 4                        ; 4 uses
  %i.mg = icmp ugt i64 %i.mf, %.0100.i.i84
  br i1 %i.mg, label %bb.ad, label %.thread31

bb.ad:                                            ; preds = %bb.ac
  %i.mh = sub i32 %i.lx, %i.lz
  %i.mi = zext i32 %i.mh to i64
  store i64 %i.mi, ptr %3, align 8, !tbaa !46
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 %i.mf
  %.not = icmp eq ptr %i.mj, %2
  br i1 %.not, label %ZSTD_RowFindBestMatch.exit, label %.thread31

.thread31:                                        ; preds = %bb.ab, %bb.ac, %bb.ad
  %.2102.i.i35 = phi i64 [ %i.mf, %bb.ad ], [ %.0100.i.i84, %bb.ac ], [ %.0100.i.i84, %bb.ab ] ; 2 uses
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %exitcond131.not = icmp eq i64 %indvars.iv.next128, %wide.trip.count130
  br i1 %exitcond131.not, label %._crit_edge88, label %bb.aa, !llvm.loop !14

._crit_edge88:                                    ; preds = %.thread31, %._crit_edge78
  %.1104.i.i.lcssa = phi i32 [ 0, %._crit_edge78 ], [ %i.lo, %.thread31 ]
  %.0100.i.i.lcssa = phi i64 [ %.3261.i, %._crit_edge78 ], [ %.2102.i.i35, %.thread31 ] ; 2 uses
  %i.mk = and i32 %i.lq, 255
  %i.ml = sub i32 %i.ll, %.1104.i.i.lcssa
  %i.mm = tail call i32 @llvm.umin.i32(i32 %i.ml, i32 %i.mk) ; 4 uses
  %.not104 = icmp eq i32 %i.mm, 0
  br i1 %.not104, label %ZSTD_RowFindBestMatch.exit, label %.lr.ph93.preheader

.lr.ph93.preheader:                               ; preds = %._crit_edge88
  %wide.trip.count135 = zext nneg i32 %i.mm to i64 ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %i.lu ; 9 uses
  %xtraiter = and i64 %wide.trip.count135, 7      ; 3 uses
  %i.mn = icmp samesign ult i32 %i.mm, 8
  br i1 %i.mn, label %.lr.ph93.epil.preheader, label %.lr.ph93.preheader.new

.lr.ph93.preheader.new:                           ; preds = %.lr.ph93.preheader
  %unroll_iter = and i64 %wide.trip.count135, 248
  br label %.lr.ph93

.lr.ph97.unr-lcssa:                               ; preds = %.lr.ph93
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph97, label %.lr.ph93.epil.preheader

.lr.ph93.epil.preheader:                          ; preds = %.lr.ph97.unr-lcssa, %.lr.ph93.preheader
  %indvars.iv132.epil.init = phi i64 [ 0, %.lr.ph93.preheader ], [ %indvars.iv.next133.7, %.lr.ph97.unr-lcssa ]
  %lcmp.mod171 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod171)
  br label %.lr.ph93.epil

.lr.ph93.epil:                                    ; preds = %.lr.ph93.epil, %.lr.ph93.epil.preheader
  %indvars.iv132.epil = phi i64 [ %indvars.iv132.epil.init, %.lr.ph93.epil.preheader ], [ %indvars.iv.next133.epil, %.lr.ph93.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph93.epil.preheader ], [ %epil.iter.next, %.lr.ph93.epil ]
  %gep.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132.epil
  %i.mo = load i32, ptr %gep.epil, align 4, !tbaa !45
  %i.mp = zext i32 %i.mo to i64
  %i.mq = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.mp
  tail call void @llvm.prefetch.p0(ptr %i.mq, i32 0, i32 3, i32 1)
  %indvars.iv.next133.epil = add nuw nsw i64 %indvars.iv132.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph97, label %.lr.ph93.epil, !llvm.loop !208

.lr.ph97:                                         ; preds = %.lr.ph93.epil, %.lr.ph97.unr-lcssa
  %.val7 = load i32, ptr %1, align 1, !tbaa !45
  %i.mr = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg51 = add i32 %i.s, 3
  %i.ms = add i32 %.neg51, %.neg
  %i.mt = lshr i32 %i.lq, 8
  %i.mu = zext nneg i32 %i.mt to i64
  br label %bb.ae

.lr.ph93:                                         ; preds = %.lr.ph93, %.lr.ph93.preheader.new
  %indvars.iv132 = phi i64 [ 0, %.lr.ph93.preheader.new ], [ %indvars.iv.next133.7, %.lr.ph93 ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph93.preheader.new ], [ %niter.next.7, %.lr.ph93 ]
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132
  %i.mv = load i32, ptr %gep, align 4, !tbaa !45
  %i.mw = zext i32 %i.mv to i64
  %i.mx = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.mw
  tail call void @llvm.prefetch.p0(ptr %i.mx, i32 0, i32 3, i32 1)
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.my, i64 4
  %i.mz = load i32, ptr %gep.1, align 4, !tbaa !45
  %i.na = zext i32 %i.mz to i64
  %i.nb = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.na
  tail call void @llvm.prefetch.p0(ptr %i.nb, i32 0, i32 3, i32 1)
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  %i.nd = load i32, ptr %gep.2, align 4, !tbaa !45
  %i.ne = zext i32 %i.nd to i64
  %i.nf = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.ne
  tail call void @llvm.prefetch.p0(ptr %i.nf, i32 0, i32 3, i32 1)
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132
  %gep.3 = getelementptr inbounds nuw i8, ptr %i.ng, i64 12
  %i.nh = load i32, ptr %gep.3, align 4, !tbaa !45
  %i.ni = zext i32 %i.nh to i64
  %i.nj = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.ni
  tail call void @llvm.prefetch.p0(ptr %i.nj, i32 0, i32 3, i32 1)
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132
  %gep.4 = getelementptr inbounds nuw i8, ptr %i.nk, i64 16
  %i.nl = load i32, ptr %gep.4, align 4, !tbaa !45
  %i.nm = zext i32 %i.nl to i64
  %i.nn = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.nm
  tail call void @llvm.prefetch.p0(ptr %i.nn, i32 0, i32 3, i32 1)
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132
  %gep.5 = getelementptr inbounds nuw i8, ptr %i.no, i64 20
  %i.np = load i32, ptr %gep.5, align 4, !tbaa !45
  %i.nq = zext i32 %i.np to i64
  %i.nr = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.nq
  tail call void @llvm.prefetch.p0(ptr %i.nr, i32 0, i32 3, i32 1)
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132
  %gep.6 = getelementptr inbounds nuw i8, ptr %i.ns, i64 24
  %i.nt = load i32, ptr %gep.6, align 4, !tbaa !45
  %i.nu = zext i32 %i.nt to i64
  %i.nv = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.nu
  tail call void @llvm.prefetch.p0(ptr %i.nv, i32 0, i32 3, i32 1)
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132
  %gep.7 = getelementptr inbounds nuw i8, ptr %i.nw, i64 28
  %i.nx = load i32, ptr %gep.7, align 4, !tbaa !45
  %i.ny = zext i32 %i.nx to i64
  %i.nz = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.ny
  tail call void @llvm.prefetch.p0(ptr %i.nz, i32 0, i32 3, i32 1)
  %indvars.iv.next133.7 = add nuw nsw i64 %indvars.iv132, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph97.unr-lcssa, label %.lr.ph93, !llvm.loop !15

bb.ae:                                            ; preds = %.lr.ph97, %.thread41
  %indvars.iv137 = phi i64 [ %i.mu, %.lr.ph97 ], [ %indvars.iv.next138, %.thread41 ] ; 2 uses
  %.1.i.i96 = phi i32 [ 0, %.lr.ph97 ], [ %i.on, %.thread41 ]
  %.3.i.i94 = phi i64 [ %.0100.i.i.lcssa, %.lr.ph97 ], [ %.5.i.i.ph, %.thread41 ] ; 3 uses
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %indvars.iv137
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !45 ; 2 uses
  %i.oc = zext i32 %i.ob to i64
  %i.od = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.oc ; 2 uses
  %.val8 = load i32, ptr %i.od, align 1, !tbaa !45
  %i.oe = icmp eq i32 %.val8, %.val7
  br i1 %i.oe, label %bb.af, label %.thread41

bb.af:                                            ; preds = %bb.ae
  %i.of = getelementptr inbounds nuw i8, ptr %i.od, i64 4
  %i.og = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.mr, ptr noundef nonnull %i.of, ptr noundef %2, ptr noundef %i.kx, ptr noundef %i.o)
  %i.oh = add i64 %i.og, 4                        ; 4 uses
  %i.oi = icmp ugt i64 %i.oh, %.3.i.i94
  br i1 %i.oi, label %bb.ag, label %.thread41

bb.ag:                                            ; preds = %bb.af
  %i.oj = sub i32 %i.ms, %i.ob
  %i.ok = zext i32 %i.oj to i64
  store i64 %i.ok, ptr %3, align 8, !tbaa !46
  %i.ol = getelementptr inbounds nuw i8, ptr %1, i64 %i.oh
  %i.om = icmp eq ptr %i.ol, %2
  br i1 %i.om, label %ZSTD_RowFindBestMatch.exit, label %.thread41

.thread41:                                        ; preds = %bb.ae, %bb.ag, %bb.af
  %.5.i.i.ph = phi i64 [ %i.oh, %bb.ag ], [ %.3.i.i94, %bb.af ], [ %.3.i.i94, %bb.ae ] ; 2 uses
  %i.on = add nuw nsw i32 %.1.i.i96, 1            ; 2 uses
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1
  %exitcond139.not = icmp eq i32 %i.on, %i.mm
  br i1 %exitcond139.not, label %ZSTD_RowFindBestMatch.exit, label %bb.ae, !llvm.loop !16

ZSTD_RowFindBestMatch.exit:                       ; preds = %bb.aa, %bb.ad, %.thread41, %bb.ag, %._crit_edge88
  %.2.i.i = phi i64 [ %.0100.i.i.lcssa, %._crit_edge88 ], [ %i.oh, %bb.ag ], [ %.5.i.i.ph, %.thread41 ], [ %.0100.i.i84, %bb.aa ], [ %i.mf, %bb.ad ]
  ret i64 %.2.i.i
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i64 @ZSTD_RowFindBestMatch_dedicatedDictSearch_6_4(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !51   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37   ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !54   ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n ; 2 uses
  %i.p = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %i.s = trunc i64 %i.r to i32                    ; 10 uses
  %i.t = load i32, ptr %i.i, align 8, !tbaa !83
  %i.u = shl nuw i32 1, %i.t                      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !81   ; 2 uses
  %i.x = sub i32 %i.s, %i.w
  %i.y = icmp ugt i32 %i.x, %i.u
  %i.z = sub i32 %i.s, %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !56
  %.not.i = icmp eq i32 %i.ab, 0
  %i.ac = select i1 %.not.i, i1 %i.y, i1 false
  %i.ad = select i1 %i.ac, i32 %i.z, i32 %i.w
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !84 ; 3 uses
  %..i = tail call i32 @llvm.umin.i32(i32 %i.af, i32 4)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !52 ; 2 uses
  %i.ai = shl nuw nsw i32 1, %..i                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !78 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 264
  %i.am = load i32, ptr %i.al, align 8, !tbaa !43
  %.val9 = load i64, ptr %1, align 1, !tbaa !46
  %i.an = mul i64 %.val9, -3523014627193847808    ; 2 uses
  %i.ao = sub i32 66, %i.am
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = lshr i64 %i.an, %i.ap
  %i.ar = shl i64 %i.aq, 2                        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 112 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !38
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ar
  tail call void @llvm.prefetch.p0(ptr %i.au, i32 0, i32 3, i32 1)
  %i.av = icmp ugt i32 %i.af, 4
  %i.aw = add i32 %i.af, -4
  %i.ax = shl nuw i32 1, %i.aw
  %i.ay = select i1 %i.av, i32 %i.ax, i32 0
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !57
  %.not274.i = icmp eq i32 %i.ba, 0
  br i1 %.not274.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !41 ; 5 uses
  %i.bd = sub i32 %i.s, %i.bc
  %i.be = icmp ugt i32 %i.bd, 384
  br i1 %i.be, label %bb.c, label %ZSTD_row_update_internal.exit.i, !prof !85

bb.c:                                             ; preds = %bb.b
  %i.bf = icmp ult i32 %i.bc, -96
  br i1 %i.bf, label %.lr.ph, label %ZSTD_row_update_internalImpl.exit.i

.lr.ph:                                           ; preds = %bb.c
  %i.bg = add nuw i32 %i.bc, 96
  %i.bh = sub i32 56, %i.h
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = zext i32 %i.bc to i64
  %wide.trip.count = zext i32 %i.bg to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.bj, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.bk = load i64, ptr %i.ag, align 8, !tbaa !52
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.val10 = load i64, ptr %i.bm, align 1, !tbaa !46
  %i.bn = mul i64 %.val10, -3523014627193847808
  %i.bo = xor i64 %i.bn, %i.bk
  %i.bp = lshr i64 %i.bo, %i.bi                   ; 2 uses
  %i.bq = trunc i64 %i.bp to i32
  %i.br = lshr i64 %i.bp, 4
  %i.bs = and i64 %i.br, 268435440                ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bs
  tail call void @llvm.prefetch.p0(ptr %i.bt, i32 0, i32 3, i32 1)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bs
  tail call void @llvm.prefetch.p0(ptr %i.bu, i32 0, i32 3, i32 1)
  %i.bv = trunc nuw i64 %indvars.iv to i32
  %i.bw = and i64 %indvars.iv, 7
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !45 ; 2 uses
  store i32 %i.bq, ptr %i.bx, align 4, !tbaa !45
  %i.bz = lshr i32 %i.by, 4
  %i.ca = and i32 %i.bz, 268435440
  %i.cb = zext nneg i32 %i.ca to i64              ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cb ; 3 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !53
  %i.cf = add i8 %i.ce, 15
  %i.cg = and i8 %i.cf, 15                        ; 2 uses
  %i.ch = zext nneg i8 %i.cg to i32
  %i.ci = icmp eq i8 %i.cg, 0
  %i.cj = select i1 %i.ci, i32 15, i32 0
  %i.ck = add nuw nsw i32 %i.cj, %i.ch            ; 2 uses
  %i.cl = trunc nuw nsw i32 %i.ck to i8
  store i8 %i.cl, ptr %i.cd, align 1, !tbaa !53
  %i.cm = trunc i32 %i.by to i8
  %i.cn = zext nneg i32 %i.ck to i64              ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cn
  store i8 %i.cm, ptr %i.co, align 1, !tbaa !53
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.cn
  store i32 %i.bv, ptr %i.cp, align 4, !tbaa !45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %ZSTD_row_update_internalImpl.exit.i.loopexit, label %bb.d, !llvm.loop !0

ZSTD_row_update_internalImpl.exit.i.loopexit:     ; preds = %bb.d
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !38
  %.pre136 = load ptr, ptr %i.d, align 8, !tbaa !50
  %.pre137 = load i32, ptr %i.g, align 4, !tbaa !51
  br label %ZSTD_row_update_internalImpl.exit.i

ZSTD_row_update_internalImpl.exit.i:              ; preds = %ZSTD_row_update_internalImpl.exit.i.loopexit, %bb.c
  %i.cq = phi i32 [ %.pre137, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.h, %bb.c ] ; 4 uses
  %i.cr = phi ptr [ %.pre136, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.e, %bb.c ] ; 6 uses
  %i.cs = phi ptr [ %.pre, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.c, %bb.c ] ; 6 uses
  %i.ct = add i32 %i.s, -32                       ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.cv = zext i32 %i.ct to i64                   ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.cv ; 2 uses
  %i.cx = icmp ugt ptr %i.cw, %i.cu
  br i1 %i.cx, label %bb.f, label %bb.e

bb.e:                                             ; preds = %ZSTD_row_update_internalImpl.exit.i
  %i.cy = ptrtoint ptr %i.cu to i64
  %i.cz = ptrtoint ptr %i.cw to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = trunc i64 %i.da to i32
  %i.dc = add i32 %i.db, 1
  %i.dd = tail call i32 @llvm.umin.i32(i32 %i.dc, i32 8)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %ZSTD_row_update_internalImpl.exit.i
  %i.de = phi i32 [ %i.dd, %bb.e ], [ 0, %ZSTD_row_update_internalImpl.exit.i ] ; 3 uses
  %i.df = add i32 %i.de, %i.ct                    ; 2 uses
  %i.dg = icmp ult i32 %i.ct, %i.df
  br i1 %i.dg, label %.lr.ph62, label %ZSTD_row_update_internal.exit.i

.lr.ph62:                                         ; preds = %bb.f
  %i.dh = load i64, ptr %i.ag, align 8, !tbaa !52 ; 3 uses
  %i.di = sub i32 56, %i.cq
  %i.dj = zext nneg i32 %i.di to i64              ; 3 uses
  %xtraiter = and i32 %i.de, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph62
  %i.dk = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.cv
  %.val11.prol = load i64, ptr %i.dk, align 1, !tbaa !46
  %i.dl = mul i64 %.val11.prol, -3523014627193847808
  %i.dm = xor i64 %i.dl, %i.dh
  %i.dn = lshr i64 %i.dm, %i.dj                   ; 2 uses
  %i.do = trunc i64 %i.dn to i32
  %i.dp = lshr i64 %i.dn, 4
  %i.dq = and i64 %i.dp, 268435440                ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.dq
  tail call void @llvm.prefetch.p0(ptr %i.dr, i32 0, i32 3, i32 1)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.dq
  tail call void @llvm.prefetch.p0(ptr %i.ds, i32 0, i32 3, i32 1)
  %i.dt = and i64 %i.cv, 7
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dt
  store i32 %i.do, ptr %i.du, align 4, !tbaa !45
  %indvars.iv.next112.prol = add nuw nsw i64 %i.cv, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph62
  %indvars.iv111.unr = phi i64 [ %i.cv, %.lr.ph62 ], [ %indvars.iv.next112.prol, %.prol.loopexit.unr-lcssa ]
  %i.dv = icmp eq i32 %i.de, 1
  br i1 %i.dv, label %ZSTD_row_update_internal.exit.i, label %.lr.ph62.new

.lr.ph62.new:                                     ; preds = %.prol.loopexit, %.lr.ph62.new
  %indvars.iv111 = phi i64 [ %indvars.iv.next112.1, %.lr.ph62.new ], [ %indvars.iv111.unr, %.prol.loopexit ] ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv111
  %.val11 = load i64, ptr %i.dw, align 1, !tbaa !46
  %i.dx = mul i64 %.val11, -3523014627193847808
  %i.dy = xor i64 %i.dx, %i.dh
  %i.dz = lshr i64 %i.dy, %i.dj                   ; 2 uses
  %i.ea = trunc i64 %i.dz to i32
  %i.eb = lshr i64 %i.dz, 4
  %i.ec = and i64 %i.eb, 268435440                ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.ec
end_hunk_7
begin_hunk_8_@ZSTD_RowFindBestMatch_dedicatedDictSearch_6_4:bb.a
  %i.lq = lshr i32 %i.lp, 8
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !39 ; 3 uses
  %i.lt = zext nneg i32 %i.lq to i64              ; 2 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.lt
  tail call void @llvm.prefetch.p0(ptr %i.lu, i32 0, i32 3, i32 1)
  %.not103 = icmp eq i32 %i.lk, 0
  br i1 %.not103, label %._crit_edge88, label %.lr.ph87

.lr.ph87:                                         ; preds = %._crit_edge78
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg53 = add i32 %i.s, 3
  %i.lw = add i32 %.neg53, %.neg
  %wide.trip.count126 = zext nneg i32 %i.ln to i64
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph87, %.thread31
  %indvars.iv123 = phi i64 [ 0, %.lr.ph87 ], [ %indvars.iv.next124, %.thread31 ] ; 2 uses
  %.0100.i.i84 = phi i64 [ %.3261.i, %.lr.ph87 ], [ %.2102.i.i35, %.thread31 ] ; 4 uses
  %i.lx = getelementptr [4 x i8], ptr %i.ky, i64 %indvars.iv123
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !45 ; 3 uses
  %i.lz = zext i32 %i.ly to i64
  %i.ma = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.lz ; 2 uses
  %.not.i.i = icmp eq i32 %i.ly, 0
  br i1 %.not.i.i, label %ZSTD_RowFindBestMatch.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.val6 = load i32, ptr %i.ma, align 1, !tbaa !45
  %.val5 = load i32, ptr %1, align 1, !tbaa !45
  %i.mb = icmp eq i32 %.val6, %.val5
  br i1 %i.mb, label %bb.ab, label %.thread31

bb.ab:                                            ; preds = %bb.aa
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 4
  %i.md = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.lv, ptr noundef nonnull %i.mc, ptr noundef %2, ptr noundef %i.kw, ptr noundef %i.o)
  %i.me = add i64 %i.md, 4                        ; 4 uses
  %i.mf = icmp ugt i64 %i.me, %.0100.i.i84
  br i1 %i.mf, label %bb.ac, label %.thread31

bb.ac:                                            ; preds = %bb.ab
  %i.mg = sub i32 %i.lw, %i.ly
  %i.mh = zext i32 %i.mg to i64
  store i64 %i.mh, ptr %3, align 8, !tbaa !46
  %i.mi = getelementptr inbounds nuw i8, ptr %1, i64 %i.me
  %.not = icmp eq ptr %i.mi, %2
  br i1 %.not, label %ZSTD_RowFindBestMatch.exit, label %.thread31

.thread31:                                        ; preds = %bb.aa, %bb.ab, %bb.ac
  %.2102.i.i35 = phi i64 [ %i.me, %bb.ac ], [ %.0100.i.i84, %bb.ab ], [ %.0100.i.i84, %bb.aa ] ; 2 uses
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count126
  br i1 %exitcond127.not, label %._crit_edge88, label %bb.z, !llvm.loop !14

._crit_edge88:                                    ; preds = %.thread31, %._crit_edge78
  %.1104.i.i.lcssa = phi i32 [ 0, %._crit_edge78 ], [ %i.ln, %.thread31 ]
  %.0100.i.i.lcssa = phi i64 [ %.3261.i, %._crit_edge78 ], [ %.2102.i.i35, %.thread31 ] ; 2 uses
  %i.mj = and i32 %i.lp, 255
  %i.mk = sub i32 %i.lk, %.1104.i.i.lcssa
  %i.ml = tail call i32 @llvm.umin.i32(i32 %i.mk, i32 %i.mj) ; 4 uses
  %.not104 = icmp eq i32 %i.ml, 0
  br i1 %.not104, label %ZSTD_RowFindBestMatch.exit, label %.lr.ph93.preheader

.lr.ph93.preheader:                               ; preds = %._crit_edge88
  %wide.trip.count131 = zext nneg i32 %i.ml to i64 ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.lt ; 9 uses
  %xtraiter167 = and i64 %wide.trip.count131, 7   ; 3 uses
  %i.mm = icmp samesign ult i32 %i.ml, 8
  br i1 %i.mm, label %.lr.ph93.epil.preheader, label %.lr.ph93.preheader.new

.lr.ph93.preheader.new:                           ; preds = %.lr.ph93.preheader
  %unroll_iter = and i64 %wide.trip.count131, 248
  br label %.lr.ph93

.lr.ph97.unr-lcssa:                               ; preds = %.lr.ph93
  %lcmp.mod168.not = icmp eq i64 %xtraiter167, 0
  br i1 %lcmp.mod168.not, label %.lr.ph97, label %.lr.ph93.epil.preheader

.lr.ph93.epil.preheader:                          ; preds = %.lr.ph97.unr-lcssa, %.lr.ph93.preheader
  %indvars.iv128.epil.init = phi i64 [ 0, %.lr.ph93.preheader ], [ %indvars.iv.next129.7, %.lr.ph97.unr-lcssa ]
  %lcmp.mod169 = icmp ne i64 %xtraiter167, 0
  tail call void @llvm.assume(i1 %lcmp.mod169)
  br label %.lr.ph93.epil

.lr.ph93.epil:                                    ; preds = %.lr.ph93.epil, %.lr.ph93.epil.preheader
  %indvars.iv128.epil = phi i64 [ %indvars.iv128.epil.init, %.lr.ph93.epil.preheader ], [ %indvars.iv.next129.epil, %.lr.ph93.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph93.epil.preheader ], [ %epil.iter.next, %.lr.ph93.epil ]
  %gep.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128.epil
  %i.mn = load i32, ptr %gep.epil, align 4, !tbaa !45
  %i.mo = zext i32 %i.mn to i64
  %i.mp = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.mo
  tail call void @llvm.prefetch.p0(ptr %i.mp, i32 0, i32 3, i32 1)
  %indvars.iv.next129.epil = add nuw nsw i64 %indvars.iv128.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter167
  br i1 %epil.iter.cmp.not, label %.lr.ph97, label %.lr.ph93.epil, !llvm.loop !209

.lr.ph97:                                         ; preds = %.lr.ph93.epil, %.lr.ph97.unr-lcssa
  %.val7 = load i32, ptr %1, align 1, !tbaa !45
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg51 = add i32 %i.s, 3
  %i.mr = add i32 %.neg51, %.neg
  %i.ms = lshr i32 %i.lp, 8
  %i.mt = zext nneg i32 %i.ms to i64
  br label %bb.ad

.lr.ph93:                                         ; preds = %.lr.ph93, %.lr.ph93.preheader.new
  %indvars.iv128 = phi i64 [ 0, %.lr.ph93.preheader.new ], [ %indvars.iv.next129.7, %.lr.ph93 ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph93.preheader.new ], [ %niter.next.7, %.lr.ph93 ]
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %i.mu = load i32, ptr %gep, align 4, !tbaa !45
  %i.mv = zext i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.mv
  tail call void @llvm.prefetch.p0(ptr %i.mw, i32 0, i32 3, i32 1)
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.mx, i64 4
  %i.my = load i32, ptr %gep.1, align 4, !tbaa !45
  %i.mz = zext i32 %i.my to i64
  %i.na = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.mz
  tail call void @llvm.prefetch.p0(ptr %i.na, i32 0, i32 3, i32 1)
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.nc = load i32, ptr %gep.2, align 4, !tbaa !45
  %i.nd = zext i32 %i.nc to i64
  %i.ne = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.nd
  tail call void @llvm.prefetch.p0(ptr %i.ne, i32 0, i32 3, i32 1)
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %gep.3 = getelementptr inbounds nuw i8, ptr %i.nf, i64 12
  %i.ng = load i32, ptr %gep.3, align 4, !tbaa !45
  %i.nh = zext i32 %i.ng to i64
  %i.ni = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.nh
  tail call void @llvm.prefetch.p0(ptr %i.ni, i32 0, i32 3, i32 1)
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %gep.4 = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %i.nk = load i32, ptr %gep.4, align 4, !tbaa !45
  %i.nl = zext i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.nl
  tail call void @llvm.prefetch.p0(ptr %i.nm, i32 0, i32 3, i32 1)
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %gep.5 = getelementptr inbounds nuw i8, ptr %i.nn, i64 20
  %i.no = load i32, ptr %gep.5, align 4, !tbaa !45
  %i.np = zext i32 %i.no to i64
  %i.nq = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.np
  tail call void @llvm.prefetch.p0(ptr %i.nq, i32 0, i32 3, i32 1)
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %gep.6 = getelementptr inbounds nuw i8, ptr %i.nr, i64 24
  %i.ns = load i32, ptr %gep.6, align 4, !tbaa !45
  %i.nt = zext i32 %i.ns to i64
  %i.nu = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.nt
  tail call void @llvm.prefetch.p0(ptr %i.nu, i32 0, i32 3, i32 1)
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %gep.7 = getelementptr inbounds nuw i8, ptr %i.nv, i64 28
  %i.nw = load i32, ptr %gep.7, align 4, !tbaa !45
  %i.nx = zext i32 %i.nw to i64
  %i.ny = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.nx
  tail call void @llvm.prefetch.p0(ptr %i.ny, i32 0, i32 3, i32 1)
  %indvars.iv.next129.7 = add nuw nsw i64 %indvars.iv128, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph97.unr-lcssa, label %.lr.ph93, !llvm.loop !15

bb.ad:                                            ; preds = %.lr.ph97, %.thread41
  %indvars.iv133 = phi i64 [ %i.mt, %.lr.ph97 ], [ %indvars.iv.next134, %.thread41 ] ; 2 uses
  %.1.i.i96 = phi i32 [ 0, %.lr.ph97 ], [ %i.om, %.thread41 ]
  %.3.i.i94 = phi i64 [ %.0100.i.i.lcssa, %.lr.ph97 ], [ %.5.i.i.ph, %.thread41 ] ; 3 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %indvars.iv133
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !45 ; 2 uses
  %i.ob = zext i32 %i.oa to i64
  %i.oc = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.ob ; 2 uses
  %.val8 = load i32, ptr %i.oc, align 1, !tbaa !45
  %i.od = icmp eq i32 %.val8, %.val7
  br i1 %i.od, label %bb.ae, label %.thread41

bb.ae:                                            ; preds = %bb.ad
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 4
  %i.of = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.mq, ptr noundef nonnull %i.oe, ptr noundef %2, ptr noundef %i.kw, ptr noundef %i.o)
  %i.og = add i64 %i.of, 4                        ; 4 uses
  %i.oh = icmp ugt i64 %i.og, %.3.i.i94
  br i1 %i.oh, label %bb.af, label %.thread41

bb.af:                                            ; preds = %bb.ae
  %i.oi = sub i32 %i.mr, %i.oa
  %i.oj = zext i32 %i.oi to i64
  store i64 %i.oj, ptr %3, align 8, !tbaa !46
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 %i.og
  %i.ol = icmp eq ptr %i.ok, %2
  br i1 %i.ol, label %ZSTD_RowFindBestMatch.exit, label %.thread41

.thread41:                                        ; preds = %bb.ad, %bb.af, %bb.ae
  %.5.i.i.ph = phi i64 [ %i.og, %bb.af ], [ %.3.i.i94, %bb.ae ], [ %.3.i.i94, %bb.ad ] ; 2 uses
  %i.om = add nuw nsw i32 %.1.i.i96, 1            ; 2 uses
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1
  %exitcond135.not = icmp eq i32 %i.om, %i.ml
  br i1 %exitcond135.not, label %ZSTD_RowFindBestMatch.exit, label %bb.ad, !llvm.loop !16

ZSTD_RowFindBestMatch.exit:                       ; preds = %bb.z, %bb.ac, %.thread41, %bb.af, %._crit_edge88
  %.2.i.i = phi i64 [ %.0100.i.i.lcssa, %._crit_edge88 ], [ %i.og, %bb.af ], [ %.5.i.i.ph, %.thread41 ], [ %.0100.i.i84, %bb.z ], [ %i.me, %bb.ac ]
  ret i64 %.2.i.i
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i64 @ZSTD_RowFindBestMatch_dedicatedDictSearch_6_5(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !51   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37   ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !54   ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n ; 2 uses
  %i.p = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %i.s = trunc i64 %i.r to i32                    ; 10 uses
  %i.t = load i32, ptr %i.i, align 8, !tbaa !83
  %i.u = shl nuw i32 1, %i.t                      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !81   ; 2 uses
  %i.x = sub i32 %i.s, %i.w
  %i.y = icmp ugt i32 %i.x, %i.u
  %i.z = sub i32 %i.s, %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !56
  %.not.i = icmp eq i32 %i.ab, 0
  %i.ac = select i1 %.not.i, i1 %i.y, i1 false
  %i.ad = select i1 %i.ac, i32 %i.z, i32 %i.w
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !84 ; 3 uses
  %..i = tail call i32 @llvm.umin.i32(i32 %i.af, i32 5)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !52 ; 2 uses
  %i.ai = shl nuw nsw i32 1, %..i                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !78 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 264
  %i.am = load i32, ptr %i.al, align 8, !tbaa !43
  %.val9 = load i64, ptr %1, align 1, !tbaa !46
  %i.an = mul i64 %.val9, -3523014627193847808    ; 2 uses
  %i.ao = sub i32 66, %i.am
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = lshr i64 %i.an, %i.ap
  %i.ar = shl i64 %i.aq, 2                        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 112 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !38
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ar
  tail call void @llvm.prefetch.p0(ptr %i.au, i32 0, i32 3, i32 1)
  %i.av = icmp ugt i32 %i.af, 5
  %i.aw = add i32 %i.af, -5
  %i.ax = shl nuw i32 1, %i.aw
  %i.ay = select i1 %i.av, i32 %i.ax, i32 0
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !57
  %.not274.i = icmp eq i32 %i.ba, 0
  br i1 %.not274.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !41 ; 5 uses
  %i.bd = sub i32 %i.s, %i.bc
  %i.be = icmp ugt i32 %i.bd, 384
  br i1 %i.be, label %bb.c, label %ZSTD_row_update_internal.exit.i, !prof !85

bb.c:                                             ; preds = %bb.b
  %i.bf = icmp ult i32 %i.bc, -96
  br i1 %i.bf, label %.lr.ph, label %ZSTD_row_update_internalImpl.exit.i

.lr.ph:                                           ; preds = %bb.c
  %i.bg = add nuw i32 %i.bc, 96
  %i.bh = sub i32 56, %i.h
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = zext i32 %i.bc to i64
  %wide.trip.count = zext i32 %i.bg to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.bj, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.bk = load i64, ptr %i.ag, align 8, !tbaa !52
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.val10 = load i64, ptr %i.bm, align 1, !tbaa !46
  %i.bn = mul i64 %.val10, -3523014627193847808
  %i.bo = xor i64 %i.bn, %i.bk
  %i.bp = lshr i64 %i.bo, %i.bi                   ; 2 uses
  %i.bq = trunc i64 %i.bp to i32
  %i.br = lshr i64 %i.bp, 3
  %i.bs = and i64 %i.br, 536870880                ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bs ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.bt, i32 0, i32 3, i32 1)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bu, i32 0, i32 3, i32 1)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bs
  tail call void @llvm.prefetch.p0(ptr %i.bv, i32 0, i32 3, i32 1)
  %i.bw = trunc nuw i64 %indvars.iv to i32
  %i.bx = and i64 %indvars.iv, 7
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bx ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !45 ; 2 uses
  store i32 %i.bq, ptr %i.by, align 4, !tbaa !45
  %i.ca = lshr i32 %i.bz, 3
  %i.cb = and i32 %i.ca, 536870880
  %i.cc = zext nneg i32 %i.cb to i64              ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cc ; 3 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !53
  %i.cg = add i8 %i.cf, 31
  %i.ch = and i8 %i.cg, 31                        ; 2 uses
  %i.ci = zext nneg i8 %i.ch to i32
  %i.cj = icmp eq i8 %i.ch, 0
  %i.ck = select i1 %i.cj, i32 31, i32 0
  %i.cl = add nuw nsw i32 %i.ck, %i.ci            ; 2 uses
  %i.cm = trunc nuw nsw i32 %i.cl to i8
  store i8 %i.cm, ptr %i.ce, align 1, !tbaa !53
  %i.cn = trunc i32 %i.bz to i8
  %i.co = zext nneg i32 %i.cl to i64              ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.co
  store i8 %i.cn, ptr %i.cp, align 1, !tbaa !53
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.co
  store i32 %i.bw, ptr %i.cq, align 4, !tbaa !45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %ZSTD_row_update_internalImpl.exit.i.loopexit, label %bb.d, !llvm.loop !0

ZSTD_row_update_internalImpl.exit.i.loopexit:     ; preds = %bb.d
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !38
  %.pre139 = load ptr, ptr %i.d, align 8, !tbaa !50
  %.pre140 = load i32, ptr %i.g, align 4, !tbaa !51
  br label %ZSTD_row_update_internalImpl.exit.i

ZSTD_row_update_internalImpl.exit.i:              ; preds = %ZSTD_row_update_internalImpl.exit.i.loopexit, %bb.c
  %i.cr = phi i32 [ %.pre140, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.h, %bb.c ] ; 4 uses
  %i.cs = phi ptr [ %.pre139, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.e, %bb.c ] ; 6 uses
  %i.ct = phi ptr [ %.pre, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.c, %bb.c ] ; 6 uses
  %i.cu = add i32 %i.s, -32                       ; 6 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.cw = zext i32 %i.cu to i64                   ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.cw ; 2 uses
  %i.cy = icmp ugt ptr %i.cx, %i.cv
  br i1 %i.cy, label %bb.f, label %bb.e

bb.e:                                             ; preds = %ZSTD_row_update_internalImpl.exit.i
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = ptrtoint ptr %i.cx to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = trunc i64 %i.db to i32
  %i.dd = add i32 %i.dc, 1
  %i.de = tail call i32 @llvm.umin.i32(i32 %i.dd, i32 8)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %ZSTD_row_update_internalImpl.exit.i
  %i.df = phi i32 [ %i.de, %bb.e ], [ 0, %ZSTD_row_update_internalImpl.exit.i ] ; 3 uses
  %i.dg = add i32 %i.df, %i.cu                    ; 2 uses
  %i.dh = icmp ult i32 %i.cu, %i.dg
  br i1 %i.dh, label %.lr.ph62, label %ZSTD_row_update_internal.exit.i

.lr.ph62:                                         ; preds = %bb.f
  %i.di = load i64, ptr %i.ag, align 8, !tbaa !52 ; 3 uses
  %i.dj = sub i32 56, %i.cr
  %i.dk = zext nneg i32 %i.dj to i64              ; 3 uses
  %xtraiter = and i32 %i.df, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph62
  %i.dl = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.cw
  %.val11.prol = load i64, ptr %i.dl, align 1, !tbaa !46
  %i.dm = mul i64 %.val11.prol, -3523014627193847808
  %i.dn = xor i64 %i.dm, %i.di
  %i.do = lshr i64 %i.dn, %i.dk                   ; 2 uses
  %i.dp = trunc i64 %i.do to i32
  %i.dq = lshr i64 %i.do, 3
  %i.dr = and i64 %i.dq, 536870880                ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.dr ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ds, i32 0, i32 3, i32 1)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dt, i32 0, i32 3, i32 1)
  %i.du = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.dr
  tail call void @llvm.prefetch.p0(ptr %i.du, i32 0, i32 3, i32 1)
  %i.dv = and i64 %i.cw, 7
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dv
  store i32 %i.dp, ptr %i.dw, align 4, !tbaa !45
  %indvars.iv.next112.prol = add nuw nsw i64 %i.cw, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph62
  %indvars.iv111.unr = phi i64 [ %i.cw, %.lr.ph62 ], [ %indvars.iv.next112.prol, %.prol.loopexit.unr-lcssa ]
  %i.dx = icmp eq i32 %i.df, 1
  br i1 %i.dx, label %ZSTD_row_update_internal.exit.i, label %.lr.ph62.new

.lr.ph62.new:                                     ; preds = %.prol.loopexit, %.lr.ph62.new
  %indvars.iv111 = phi i64 [ %indvars.iv.next112.1, %.lr.ph62.new ], [ %indvars.iv111.unr, %.prol.loopexit ] ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv111
  %.val11 = load i64, ptr %i.dy, align 1, !tbaa !46
  %i.dz = mul i64 %.val11, -3523014627193847808
  %i.ea = xor i64 %i.dz, %i.di
  %i.eb = lshr i64 %i.ea, %i.dk                   ; 2 uses
end_hunk_8
begin_hunk_9_@ZSTD_RowFindBestMatch_dedicatedDictSearch_6_5:bb.a
  %i.ly = lshr i32 %i.lx, 8
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !39 ; 3 uses
  %i.mb = zext nneg i32 %i.ly to i64              ; 2 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.mb
  tail call void @llvm.prefetch.p0(ptr %i.mc, i32 0, i32 3, i32 1)
  %.not103 = icmp eq i32 %i.ls, 0
  br i1 %.not103, label %._crit_edge88, label %.lr.ph87

.lr.ph87:                                         ; preds = %._crit_edge78
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg53 = add i32 %i.s, 3
  %i.me = add i32 %.neg53, %.neg
  %wide.trip.count129 = zext nneg i32 %i.lv to i64
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph87, %.thread31
  %indvars.iv126 = phi i64 [ 0, %.lr.ph87 ], [ %indvars.iv.next127, %.thread31 ] ; 2 uses
  %.0100.i.i84 = phi i64 [ %.3261.i, %.lr.ph87 ], [ %.2102.i.i35, %.thread31 ] ; 4 uses
  %i.mf = getelementptr [4 x i8], ptr %i.lg, i64 %indvars.iv126
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !45 ; 3 uses
  %i.mh = zext i32 %i.mg to i64
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.mh ; 2 uses
  %.not.i.i = icmp eq i32 %i.mg, 0
  br i1 %.not.i.i, label %ZSTD_RowFindBestMatch.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.val6 = load i32, ptr %i.mi, align 1, !tbaa !45
  %.val5 = load i32, ptr %1, align 1, !tbaa !45
  %i.mj = icmp eq i32 %.val6, %.val5
  br i1 %i.mj, label %bb.ab, label %.thread31

bb.ab:                                            ; preds = %bb.aa
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 4
  %i.ml = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.md, ptr noundef nonnull %i.mk, ptr noundef %2, ptr noundef %i.le, ptr noundef %i.o)
  %i.mm = add i64 %i.ml, 4                        ; 4 uses
  %i.mn = icmp ugt i64 %i.mm, %.0100.i.i84
  br i1 %i.mn, label %bb.ac, label %.thread31

bb.ac:                                            ; preds = %bb.ab
  %i.mo = sub i32 %i.me, %i.mg
  %i.mp = zext i32 %i.mo to i64
  store i64 %i.mp, ptr %3, align 8, !tbaa !46
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 %i.mm
  %.not = icmp eq ptr %i.mq, %2
  br i1 %.not, label %ZSTD_RowFindBestMatch.exit, label %.thread31

.thread31:                                        ; preds = %bb.aa, %bb.ab, %bb.ac
  %.2102.i.i35 = phi i64 [ %i.mm, %bb.ac ], [ %.0100.i.i84, %bb.ab ], [ %.0100.i.i84, %bb.aa ] ; 2 uses
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1 ; 2 uses
  %exitcond130.not = icmp eq i64 %indvars.iv.next127, %wide.trip.count129
  br i1 %exitcond130.not, label %._crit_edge88, label %bb.z, !llvm.loop !14

._crit_edge88:                                    ; preds = %.thread31, %._crit_edge78
  %.1104.i.i.lcssa = phi i32 [ 0, %._crit_edge78 ], [ %i.lv, %.thread31 ]
  %.0100.i.i.lcssa = phi i64 [ %.3261.i, %._crit_edge78 ], [ %.2102.i.i35, %.thread31 ] ; 2 uses
  %i.mr = and i32 %i.lx, 255
  %i.ms = sub i32 %i.ls, %.1104.i.i.lcssa
  %i.mt = tail call i32 @llvm.umin.i32(i32 %i.ms, i32 %i.mr) ; 4 uses
  %.not104 = icmp eq i32 %i.mt, 0
  br i1 %.not104, label %ZSTD_RowFindBestMatch.exit, label %.lr.ph93.preheader

.lr.ph93.preheader:                               ; preds = %._crit_edge88
  %wide.trip.count134 = zext nneg i32 %i.mt to i64 ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.mb ; 9 uses
  %xtraiter170 = and i64 %wide.trip.count134, 7   ; 3 uses
  %i.mu = icmp samesign ult i32 %i.mt, 8
  br i1 %i.mu, label %.lr.ph93.epil.preheader, label %.lr.ph93.preheader.new

.lr.ph93.preheader.new:                           ; preds = %.lr.ph93.preheader
  %unroll_iter = and i64 %wide.trip.count134, 248
  br label %.lr.ph93

.lr.ph97.unr-lcssa:                               ; preds = %.lr.ph93
  %lcmp.mod171.not = icmp eq i64 %xtraiter170, 0
  br i1 %lcmp.mod171.not, label %.lr.ph97, label %.lr.ph93.epil.preheader

.lr.ph93.epil.preheader:                          ; preds = %.lr.ph97.unr-lcssa, %.lr.ph93.preheader
  %indvars.iv131.epil.init = phi i64 [ 0, %.lr.ph93.preheader ], [ %indvars.iv.next132.7, %.lr.ph97.unr-lcssa ]
  %lcmp.mod172 = icmp ne i64 %xtraiter170, 0
  tail call void @llvm.assume(i1 %lcmp.mod172)
  br label %.lr.ph93.epil

.lr.ph93.epil:                                    ; preds = %.lr.ph93.epil, %.lr.ph93.epil.preheader
  %indvars.iv131.epil = phi i64 [ %indvars.iv131.epil.init, %.lr.ph93.epil.preheader ], [ %indvars.iv.next132.epil, %.lr.ph93.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph93.epil.preheader ], [ %epil.iter.next, %.lr.ph93.epil ]
  %gep.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131.epil
  %i.mv = load i32, ptr %gep.epil, align 4, !tbaa !45
  %i.mw = zext i32 %i.mv to i64
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.mw
  tail call void @llvm.prefetch.p0(ptr %i.mx, i32 0, i32 3, i32 1)
  %indvars.iv.next132.epil = add nuw nsw i64 %indvars.iv131.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter170
  br i1 %epil.iter.cmp.not, label %.lr.ph97, label %.lr.ph93.epil, !llvm.loop !210

.lr.ph97:                                         ; preds = %.lr.ph93.epil, %.lr.ph97.unr-lcssa
  %.val7 = load i32, ptr %1, align 1, !tbaa !45
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg51 = add i32 %i.s, 3
  %i.mz = add i32 %.neg51, %.neg
  %i.na = lshr i32 %i.lx, 8
  %i.nb = zext nneg i32 %i.na to i64
  br label %bb.ad

.lr.ph93:                                         ; preds = %.lr.ph93, %.lr.ph93.preheader.new
  %indvars.iv131 = phi i64 [ 0, %.lr.ph93.preheader.new ], [ %indvars.iv.next132.7, %.lr.ph93 ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph93.preheader.new ], [ %niter.next.7, %.lr.ph93 ]
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %i.nc = load i32, ptr %gep, align 4, !tbaa !45
  %i.nd = zext i32 %i.nc to i64
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.nd
  tail call void @llvm.prefetch.p0(ptr %i.ne, i32 0, i32 3, i32 1)
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.nf, i64 4
  %i.ng = load i32, ptr %gep.1, align 4, !tbaa !45
  %i.nh = zext i32 %i.ng to i64
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.nh
  tail call void @llvm.prefetch.p0(ptr %i.ni, i32 0, i32 3, i32 1)
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  %i.nk = load i32, ptr %gep.2, align 4, !tbaa !45
  %i.nl = zext i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.nl
  tail call void @llvm.prefetch.p0(ptr %i.nm, i32 0, i32 3, i32 1)
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %gep.3 = getelementptr inbounds nuw i8, ptr %i.nn, i64 12
  %i.no = load i32, ptr %gep.3, align 4, !tbaa !45
  %i.np = zext i32 %i.no to i64
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.np
  tail call void @llvm.prefetch.p0(ptr %i.nq, i32 0, i32 3, i32 1)
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %gep.4 = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %i.ns = load i32, ptr %gep.4, align 4, !tbaa !45
  %i.nt = zext i32 %i.ns to i64
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.nt
  tail call void @llvm.prefetch.p0(ptr %i.nu, i32 0, i32 3, i32 1)
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %gep.5 = getelementptr inbounds nuw i8, ptr %i.nv, i64 20
  %i.nw = load i32, ptr %gep.5, align 4, !tbaa !45
  %i.nx = zext i32 %i.nw to i64
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.nx
  tail call void @llvm.prefetch.p0(ptr %i.ny, i32 0, i32 3, i32 1)
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %gep.6 = getelementptr inbounds nuw i8, ptr %i.nz, i64 24
  %i.oa = load i32, ptr %gep.6, align 4, !tbaa !45
  %i.ob = zext i32 %i.oa to i64
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.ob
  tail call void @llvm.prefetch.p0(ptr %i.oc, i32 0, i32 3, i32 1)
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %gep.7 = getelementptr inbounds nuw i8, ptr %i.od, i64 28
  %i.oe = load i32, ptr %gep.7, align 4, !tbaa !45
  %i.of = zext i32 %i.oe to i64
  %i.og = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.of
  tail call void @llvm.prefetch.p0(ptr %i.og, i32 0, i32 3, i32 1)
  %indvars.iv.next132.7 = add nuw nsw i64 %indvars.iv131, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph97.unr-lcssa, label %.lr.ph93, !llvm.loop !15

bb.ad:                                            ; preds = %.lr.ph97, %.thread41
  %indvars.iv136 = phi i64 [ %i.nb, %.lr.ph97 ], [ %indvars.iv.next137, %.thread41 ] ; 2 uses
  %.1.i.i96 = phi i32 [ 0, %.lr.ph97 ], [ %i.ou, %.thread41 ]
  %.3.i.i94 = phi i64 [ %.0100.i.i.lcssa, %.lr.ph97 ], [ %.5.i.i.ph, %.thread41 ] ; 3 uses
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %indvars.iv136
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !45 ; 2 uses
  %i.oj = zext i32 %i.oi to i64
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.oj ; 2 uses
  %.val8 = load i32, ptr %i.ok, align 1, !tbaa !45
  %i.ol = icmp eq i32 %.val8, %.val7
  br i1 %i.ol, label %bb.ae, label %.thread41

bb.ae:                                            ; preds = %bb.ad
  %i.om = getelementptr inbounds nuw i8, ptr %i.ok, i64 4
  %i.on = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.my, ptr noundef nonnull %i.om, ptr noundef %2, ptr noundef %i.le, ptr noundef %i.o)
  %i.oo = add i64 %i.on, 4                        ; 4 uses
  %i.op = icmp ugt i64 %i.oo, %.3.i.i94
  br i1 %i.op, label %bb.af, label %.thread41

bb.af:                                            ; preds = %bb.ae
  %i.oq = sub i32 %i.mz, %i.oi
  %i.or = zext i32 %i.oq to i64
  store i64 %i.or, ptr %3, align 8, !tbaa !46
  %i.os = getelementptr inbounds nuw i8, ptr %1, i64 %i.oo
  %i.ot = icmp eq ptr %i.os, %2
  br i1 %i.ot, label %ZSTD_RowFindBestMatch.exit, label %.thread41

.thread41:                                        ; preds = %bb.ad, %bb.af, %bb.ae
  %.5.i.i.ph = phi i64 [ %i.oo, %bb.af ], [ %.3.i.i94, %bb.ae ], [ %.3.i.i94, %bb.ad ] ; 2 uses
  %i.ou = add nuw nsw i32 %.1.i.i96, 1            ; 2 uses
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1
  %exitcond138.not = icmp eq i32 %i.ou, %i.mt
  br i1 %exitcond138.not, label %ZSTD_RowFindBestMatch.exit, label %bb.ad, !llvm.loop !16

ZSTD_RowFindBestMatch.exit:                       ; preds = %bb.z, %bb.ac, %.thread41, %bb.af, %._crit_edge88
  %.2.i.i = phi i64 [ %.0100.i.i.lcssa, %._crit_edge88 ], [ %i.oo, %bb.af ], [ %.5.i.i.ph, %.thread41 ], [ %.0100.i.i84, %bb.z ], [ %i.mm, %bb.ac ]
  ret i64 %.2.i.i
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i64 @ZSTD_RowFindBestMatch_dedicatedDictSearch_6_6(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !51   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37   ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !54   ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n ; 2 uses
  %i.p = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %i.s = trunc i64 %i.r to i32                    ; 10 uses
  %i.t = load i32, ptr %i.i, align 8, !tbaa !83
  %i.u = shl nuw i32 1, %i.t                      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !81   ; 2 uses
  %i.x = sub i32 %i.s, %i.w
  %i.y = icmp ugt i32 %i.x, %i.u
  %i.z = sub i32 %i.s, %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !56
  %.not.i = icmp eq i32 %i.ab, 0
  %i.ac = select i1 %.not.i, i1 %i.y, i1 false
  %i.ad = select i1 %i.ac, i32 %i.z, i32 %i.w
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !84 ; 3 uses
  %..i = tail call i32 @llvm.umin.i32(i32 %i.af, i32 6)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !52 ; 2 uses
  %i.ai = shl nuw nsw i32 1, %..i                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !78 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 264
  %i.am = load i32, ptr %i.al, align 8, !tbaa !43
  %.val9 = load i64, ptr %1, align 1, !tbaa !46
  %i.an = mul i64 %.val9, -3523014627193847808    ; 2 uses
  %i.ao = sub i32 66, %i.am
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = lshr i64 %i.an, %i.ap
  %i.ar = shl i64 %i.aq, 2                        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 112 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !38
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ar
  tail call void @llvm.prefetch.p0(ptr %i.au, i32 0, i32 3, i32 1)
  %i.av = icmp ugt i32 %i.af, 6
  %i.aw = add i32 %i.af, -6
  %i.ax = shl nuw i32 1, %i.aw
  %i.ay = select i1 %i.av, i32 %i.ax, i32 0
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !57
  %.not274.i = icmp eq i32 %i.ba, 0
  br i1 %.not274.i, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !41 ; 5 uses
  %i.bd = sub i32 %i.s, %i.bc
  %i.be = icmp ugt i32 %i.bd, 384
  br i1 %i.be, label %bb.c, label %ZSTD_row_update_internal.exit.i, !prof !85

bb.c:                                             ; preds = %bb.b
  %i.bf = icmp ult i32 %i.bc, -96
  br i1 %i.bf, label %.lr.ph, label %ZSTD_row_update_internalImpl.exit.i

.lr.ph:                                           ; preds = %bb.c
  %i.bg = add nuw i32 %i.bc, 96
  %i.bh = sub i32 56, %i.h
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = zext i32 %i.bc to i64
  %wide.trip.count = zext i32 %i.bg to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.bj, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.bk = load i64, ptr %i.ag, align 8, !tbaa !52
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.val10 = load i64, ptr %i.bm, align 1, !tbaa !46
  %i.bn = mul i64 %.val10, -3523014627193847808
  %i.bo = xor i64 %i.bn, %i.bk
  %i.bp = lshr i64 %i.bo, %i.bi                   ; 2 uses
  %i.bq = trunc i64 %i.bp to i32
  %i.br = lshr i64 %i.bp, 2
  %i.bs = and i64 %i.br, 1073741760               ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bs ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.bt, i32 0, i32 3, i32 1)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bu, i32 0, i32 3, i32 1)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bs ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.bv, i32 0, i32 3, i32 1)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bw, i32 0, i32 3, i32 1)
  %i.bx = trunc nuw i64 %indvars.iv to i32
  %i.by = and i64 %indvars.iv, 7
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.by ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !45 ; 2 uses
  store i32 %i.bq, ptr %i.bz, align 4, !tbaa !45
  %i.cb = lshr i32 %i.ca, 2
  %i.cc = and i32 %i.cb, 1073741760
  %i.cd = zext nneg i32 %i.cc to i64              ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cd ; 3 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !53
  %i.ch = add i8 %i.cg, 63
  %i.ci = and i8 %i.ch, 63                        ; 2 uses
  %i.cj = zext nneg i8 %i.ci to i32
  %i.ck = icmp eq i8 %i.ci, 0
  %i.cl = select i1 %i.ck, i32 63, i32 0
  %i.cm = add nuw nsw i32 %i.cl, %i.cj            ; 2 uses
  %i.cn = trunc nuw nsw i32 %i.cm to i8
  store i8 %i.cn, ptr %i.cf, align 1, !tbaa !53
  %i.co = trunc i32 %i.ca to i8
  %i.cp = zext nneg i32 %i.cm to i64              ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cp
  store i8 %i.co, ptr %i.cq, align 1, !tbaa !53
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cp
  store i32 %i.bx, ptr %i.cr, align 4, !tbaa !45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %ZSTD_row_update_internalImpl.exit.i.loopexit, label %bb.d, !llvm.loop !0

ZSTD_row_update_internalImpl.exit.i.loopexit:     ; preds = %bb.d
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !38
  %.pre140 = load ptr, ptr %i.d, align 8, !tbaa !50
  %.pre141 = load i32, ptr %i.g, align 4, !tbaa !51
  br label %ZSTD_row_update_internalImpl.exit.i

ZSTD_row_update_internalImpl.exit.i:              ; preds = %ZSTD_row_update_internalImpl.exit.i.loopexit, %bb.c
  %i.cs = phi i32 [ %.pre141, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.h, %bb.c ] ; 3 uses
  %i.ct = phi ptr [ %.pre140, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.e, %bb.c ] ; 3 uses
  %i.cu = phi ptr [ %.pre, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.c, %bb.c ] ; 3 uses
  %i.cv = add i32 %i.s, -32                       ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.cx = zext i32 %i.cv to i64                   ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.cx ; 2 uses
  %i.cz = icmp ugt ptr %i.cy, %i.cw
  br i1 %i.cz, label %bb.f, label %bb.e

bb.e:                                             ; preds = %ZSTD_row_update_internalImpl.exit.i
  %i.da = ptrtoint ptr %i.cw to i64
  %i.db = ptrtoint ptr %i.cy to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = trunc i64 %i.dc to i32
  %i.de = add i32 %i.dd, 1
  %i.df = tail call i32 @llvm.umin.i32(i32 %i.de, i32 8)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %ZSTD_row_update_internalImpl.exit.i
  %i.dg = phi i32 [ %i.df, %bb.e ], [ 0, %ZSTD_row_update_internalImpl.exit.i ]
  %i.dh = add i32 %i.dg, %i.cv                    ; 2 uses
  %i.di = icmp ult i32 %i.cv, %i.dh
  br i1 %i.di, label %.lr.ph62, label %ZSTD_row_update_internal.exit.i

.lr.ph62:                                         ; preds = %bb.f
  %i.dj = load i64, ptr %i.ag, align 8, !tbaa !52
  %i.dk = sub i32 56, %i.cs
  %i.dl = zext nneg i32 %i.dk to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph62, %bb.g
  %indvars.iv111 = phi i64 [ %i.cx, %.lr.ph62 ], [ %indvars.iv.next112, %bb.g ] ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv111
  %.val11 = load i64, ptr %i.dm, align 1, !tbaa !46
  %i.dn = mul i64 %.val11, -3523014627193847808
  %i.do = xor i64 %i.dn, %i.dj
  %i.dp = lshr i64 %i.do, %i.dl                   ; 2 uses
  %i.dq = trunc i64 %i.dp to i32
  %i.dr = lshr i64 %i.dp, 2
  %i.ds = and i64 %i.dr, 1073741760               ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.ds ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.dt, i32 0, i32 3, i32 1)
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.du, i32 0, i32 3, i32 1)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.ds ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.dv, i32 0, i32 3, i32 1)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dw, i32 0, i32 3, i32 1)
  %i.dx = and i64 %indvars.iv111, 7
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dx
  store i32 %i.dq, ptr %i.dy, align 4, !tbaa !45
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next112 to i32
  %exitcond114.not = icmp eq i32 %i.dh, %lftr.wideiv
  br i1 %exitcond114.not, label %ZSTD_row_update_internal.exit.i, label %bb.g, !llvm.loop !5

ZSTD_row_update_internal.exit.i:                  ; preds = %bb.g, %bb.f, %bb.b
  %i.dz = phi i32 [ %i.h, %bb.b ], [ %i.cs, %bb.f ], [ %i.cs, %bb.g ]
  %i.ea = phi ptr [ %i.e, %bb.b ], [ %i.ct, %bb.f ], [ %i.ct, %bb.g ] ; 2 uses
  %i.eb = phi ptr [ %i.c, %bb.b ], [ %i.cu, %bb.f ], [ %i.cu, %bb.g ] ; 2 uses
  %.0.i284.i = phi i32 [ %i.bc, %bb.b ], [ %i.cv, %bb.f ], [ %i.cv, %bb.g ] ; 2 uses
  %i.ec = load ptr, ptr %i.j, align 8, !tbaa !37
  %i.ed = icmp ult i32 %.0.i284.i, %i.s
end_hunk_9
