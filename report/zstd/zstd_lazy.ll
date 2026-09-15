Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/zstd_lazy?download=true
inline.NumInlined: 1316
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 126
loop-unroll.NumUnrolled: 169
begin_hunk_0_@ZSTD_RowFindBestMatch_dedicatedDictSearch_6_6:bb.a
  %i.nr = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.nq
  tail call void @llvm.prefetch.p0(ptr %i.nr, i32 0, i32 3, i32 1)
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132
  %gep.6 = getelementptr inbounds nuw i8, ptr %i.ns, i64 24
  %i.nt = load i32, ptr %gep.6, align 4, !tbaa !42
  %i.nu = zext i32 %i.nt to i64
  %i.nv = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.nu
  tail call void @llvm.prefetch.p0(ptr %i.nv, i32 0, i32 3, i32 1)
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132
  %gep.7 = getelementptr inbounds nuw i8, ptr %i.nw, i64 28
  %i.nx = load i32, ptr %gep.7, align 4, !tbaa !42
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
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !42 ; 2 uses
  %i.oc = zext i32 %i.ob to i64
  %i.od = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.oc ; 2 uses
  %.val8 = load i32, ptr %i.od, align 1, !tbaa !42
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
  store i64 %i.ok, ptr %3, align 8, !tbaa !43
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

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ZSTD_DUBT_findBestMatch(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull captures(none) %3, i32 noundef range(i32 4, 7) %4, i32 noundef range(i32 0, 4) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.g = load i32, ptr %i.f, align 8, !tbaa !45   ; 3 uses
  switch i32 %4, label %bb.b [
    i32 6, label %bb.d
    i32 5, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %.val = load i32, ptr %1, align 1, !tbaa !42
  %i.h = mul i32 %.val, -1640531535
  %i.i = sub i32 32, %i.g
  %i.j = lshr i32 %i.h, %i.i
  %i.k = zext i32 %i.j to i64
  br label %ZSTD_hashPtr.exit

bb.c:                                             ; preds = %bb.a
  %.val228 = load i64, ptr %1, align 1, !tbaa !43
  %i.l = mul i64 %.val228, -3523014627271114752
  %i.m = sub i32 64, %i.g
  %i.n = zext nneg i32 %i.m to i64
  %i.o = lshr i64 %i.l, %i.n
  br label %ZSTD_hashPtr.exit

bb.d:                                             ; preds = %bb.a
  %.val229 = load i64, ptr %1, align 1, !tbaa !43
  %i.p = mul i64 %.val229, -3523014627193847808
  %i.q = sub i32 64, %i.g
  %i.r = zext nneg i32 %i.q to i64
  %i.s = lshr i64 %i.p, %i.r
  br label %ZSTD_hashPtr.exit

ZSTD_hashPtr.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i64 [ %i.k, %bb.b ], [ %i.s, %bb.d ], [ %i.o, %bb.c ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.0.i ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !34   ; 11 uses
  %i.w = ptrtoint ptr %1 to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = trunc i64 %i.y to i32                    ; 8 uses
  %i.aa = load i32, ptr %i.c, align 8, !tbaa !80
  %i.ab = getelementptr i8, ptr %0, i64 28        ; 3 uses
  %.val232 = load i32, ptr %i.ab, align 4, !tbaa !78 ; 2 uses
  %i.ac = getelementptr i8, ptr %0, i64 40
  %.val233 = load i32, ptr %i.ac, align 8, !tbaa !53
  %i.ad = shl nuw i32 1, %i.aa                    ; 2 uses
  %i.ae = sub i32 %i.z, %.val232
  %i.af = icmp ugt i32 %i.ae, %i.ad
  %i.ag = sub i32 %i.z, %i.ad
  %.not.i = icmp eq i32 %.val233, 0
  %i.ah = select i1 %.not.i, i1 %i.af, i1 false
  %i.ai = select i1 %i.ah, i32 %i.ag, i32 %.val232 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !36 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !46
  %i.an = add i32 %i.am, -1
  %notmask = shl nsw i32 -1, %i.an
  %i.ao = xor i32 %notmask, -1                    ; 5 uses
  %i.ap = tail call i32 @llvm.usub.sat.i32(i32 %i.z, i32 %i.ao) ; 2 uses
  %i.aq = tail call i32 @llvm.umax.i32(i32 %i.ap, i32 %i.ai) ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !81
  %i.at = shl nuw i32 1, %i.as                    ; 3 uses
  %.0213267 = load i32, ptr %i.t, align 4, !tbaa !42 ; 2 uses
  %i.au = icmp ugt i32 %.0213267, %i.aq
  br i1 %i.au, label %.lr.ph, label %.critedge226.._crit_edge_crit_edge

.lr.ph:                                           ; preds = %ZSTD_hashPtr.exit, %bb.e
  %.0213275 = phi i32 [ %.0213, %bb.e ], [ %.0213267, %ZSTD_hashPtr.exit ] ; 3 uses
  %.0204274 = phi i32 [ %.0213275, %bb.e ], [ 0, %ZSTD_hashPtr.exit ] ; 3 uses
  %.0205273 = phi i32 [ %i.ay, %bb.e ], [ %i.at, %ZSTD_hashPtr.exit ] ; 3 uses
  %.pn.pn.in.in = and i32 %.0213275, %i.ao
  %.pn.pn.in = shl nuw i32 %.pn.pn.in.in, 1
  %.pn.pn = zext i32 %.pn.pn.in to i64
  %.0212276 = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.pn.pn ; 3 uses
  %.0211277 = getelementptr inbounds nuw i8, ptr %.0212276, i64 4 ; 3 uses
  %i.av = load i32, ptr %.0211277, align 4, !tbaa !42
  %i.aw = icmp eq i32 %i.av, 1                    ; 2 uses
  %i.ax = icmp ugt i32 %.0205273, 1
  %or.cond3 = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %or.cond3, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.lr.ph
  store i32 %.0204274, ptr %.0211277, align 4, !tbaa !42
  %i.ay = add i32 %.0205273, -1                   ; 2 uses
  %.0213 = load i32, ptr %.0212276, align 4, !tbaa !42 ; 2 uses
  %i.az = icmp ugt i32 %.0213, %i.aq
  br i1 %i.az, label %.lr.ph, label %.lr.ph282, !llvm.loop !209

.critedge:                                        ; preds = %.lr.ph
  br i1 %i.aw, label %bb.f, label %.critedge226

bb.f:                                             ; preds = %.critedge
  store i32 0, ptr %.0211277, align 4, !tbaa !42
  store i32 0, ptr %.0212276, align 4, !tbaa !42
  br label %.critedge226

.critedge226:                                     ; preds = %bb.f, %.critedge
  %.not279 = icmp eq i32 %.0204274, 0
  br i1 %.not279, label %.critedge226.._crit_edge_crit_edge, label %.lr.ph282

.critedge226.._crit_edge_crit_edge:               ; preds = %ZSTD_hashPtr.exit, %.critedge226
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !77
  br label %._crit_edge

.lr.ph282:                                        ; preds = %bb.e, %.critedge226
  %.0204264353 = phi i32 [ %.0204274, %.critedge226 ], [ %.0213275, %bb.e ]
  %.0205266352 = phi i32 [ %.0205273, %.critedge226 ], [ %i.ay, %bb.e ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !77 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not123.i = icmp eq i32 %5, 1
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph282, %ZSTD_insertDUBT1.exit
  %.1206281 = phi i32 [ %.0205266352, %.lr.ph282 ], [ %i.er, %ZSTD_insertDUBT1.exit ] ; 3 uses
  %.1214280 = phi i32 [ %.0204264353, %.lr.ph282 ], [ %i.bi, %ZSTD_insertDUBT1.exit ] ; 6 uses
  %i.bd = and i32 %.1214280, %i.ao
  %i.be = shl nuw i32 %i.bd, 1
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !42 ; 2 uses
  %i.bj = load i32, ptr %i.al, align 4, !tbaa !46
  %i.bk = add i32 %i.bj, -1
  %notmask.i = shl nsw i32 -1, %i.bk
  %i.bl = xor i32 %notmask.i, -1                  ; 2 uses
  %i.bm = load i32, ptr %i.bc, align 8, !tbaa !51 ; 2 uses
  %.not.i234 = icmp ult i32 %.1214280, %i.bm      ; 3 uses
  %i.bn = zext i32 %.1214280 to i64
  %.v.i = select i1 %.not.i234, ptr %i.bb, ptr %i.v
  %i.bo = getelementptr inbounds nuw i8, ptr %.v.i, i64 %i.bn ; 3 uses
  %i.bp = zext i32 %i.bm to i64                   ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bp ; 2 uses
  %i.br = select i1 %.not.i234, ptr %i.bq, ptr %2 ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bp
  %i.bt = and i32 %.1214280, %i.bl
  %i.bu = shl nuw i32 %i.bt, 1
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.bv ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4 ; 2 uses
  %i.by = load i32, ptr %i.bw, align 4, !tbaa !42 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bz = load i32, ptr %i.ab, align 4, !tbaa !78 ; 2 uses
  %i.ca = load i32, ptr %i.c, align 8, !tbaa !80
  %i.cb = shl nuw i32 1, %i.ca                    ; 2 uses
  %i.cc = sub i32 %.1214280, %i.bz
  %i.cd = icmp ugt i32 %i.cc, %i.cb
  %i.ce = sub i32 %.1214280, %i.cb
  %i.cf = select i1 %i.cd, i32 %i.ce, i32 %i.bz   ; 2 uses
  %i.cg = icmp ne i32 %.1206281, 0
  %i.ch = icmp ugt i32 %i.by, %i.cf
  %i.ci = select i1 %i.cg, i1 %i.ch, i1 false
  br i1 %i.ci, label %.lr.ph.i, label %ZSTD_insertDUBT1.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.cj = getelementptr inbounds i8, ptr %i.br, i64 -7 ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %i.br, i64 -3
  %i.cl = getelementptr inbounds i8, ptr %i.br, i64 -1
  br label %bb.h

bb.h:                                             ; preds = %bb.ab, %.lr.ph.i
  %.0105145.i = phi i32 [ %i.by, %.lr.ph.i ], [ %.1.i, %bb.ab ] ; 5 uses
  %.0106144.i = phi ptr [ %i.bx, %.lr.ph.i ], [ %.1107.i, %bb.ab ] ; 4 uses
  %.0109143.i = phi ptr [ %i.bw, %.lr.ph.i ], [ %.1110.i, %bb.ab ] ; 4 uses
  %.0114142.i = phi i64 [ 0, %.lr.ph.i ], [ %.1115.i, %bb.ab ] ; 2 uses
  %.0117141.i = phi i64 [ 0, %.lr.ph.i ], [ %.1118.i, %bb.ab ] ; 2 uses
  %.0120140.i = phi i32 [ %.1206281, %.lr.ph.i ], [ %i.en, %bb.ab ]
  %i.cm = and i32 %.0105145.i, %i.bl
  %i.cn = shl nuw i32 %i.cm, 1
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.co ; 3 uses
  %i.cq = tail call i64 @llvm.umin.i64(i64 %.0117141.i, i64 %.0114142.i) ; 7 uses
  %i.cr = zext i32 %.0105145.i to i64             ; 5 uses
  br i1 %.not123.i, label %bb.i, label %.critedge.i

bb.i:                                             ; preds = %bb.h
  %i.cs = add i64 %i.cq, %i.cr                    ; 2 uses
  %.not124.i = icmp uge i64 %i.cs, %i.bp
  %or.cond.i = or i1 %.not.i234, %.not124.i
  br i1 %or.cond.i, label %bb.j, label %bb.v

bb.j:                                             ; preds = %bb.i
  %.not126.i = icmp ult i64 %i.cs, %i.bp
  %spec.select131.i = select i1 %.not126.i, ptr %i.bb, ptr %i.v
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.j, %bb.h
  %i.ct = phi ptr [ %spec.select131.i, %bb.j ], [ %i.v, %bb.h ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cr ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.cq ; 6 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cq ; 3 uses
  %i.cx = icmp ult ptr %i.cv, %i.cj
  br i1 %i.cx, label %bb.k, label %.loopexit.i.i

bb.k:                                             ; preds = %.critedge.i
  %.val60.i.i = load i64, ptr %i.cw, align 1, !tbaa !43 ; 2 uses
  %.val.i.i = load i64, ptr %i.cv, align 1, !tbaa !43 ; 2 uses
  %.not.i.i = icmp eq i64 %.val60.i.i, %.val.i.i
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cy = xor i64 %.val.i.i, %.val60.i.i
  %i.cz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.cy, i1 true)
  %i.da = lshr i64 %i.cz, 3
  br label %ZSTD_count.exit.i

.preheader.i.i:                                   ; preds = %bb.k, %bb.m
  %.pn.i.i = phi ptr [ %.049.i.i, %bb.m ], [ %i.cv, %bb.k ]
  %.pn67.i.i = phi ptr [ %.045.i.i, %bb.m ], [ %i.cw, %bb.k ]
  %.045.i.i = getelementptr inbounds nuw i8, ptr %.pn67.i.i, i64 8 ; 3 uses
  %.049.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 8 ; 5 uses
  %i.db = icmp ult ptr %.049.i.i, %i.cj
  br i1 %i.db, label %bb.m, label %.loopexit.i.i

bb.m:                                             ; preds = %.preheader.i.i
  %.045.val.i.i = load i64, ptr %.045.i.i, align 1, !tbaa !43 ; 2 uses
  %.049.val.i.i = load i64, ptr %.049.i.i, align 1, !tbaa !43 ; 2 uses
  %.not59.i.i = icmp eq i64 %.045.val.i.i, %.049.val.i.i
  br i1 %.not59.i.i, label %.preheader.i.i, label %.thread63.i.i

.thread63.i.i:                                    ; preds = %bb.m
  %i.dc = xor i64 %.049.val.i.i, %.045.val.i.i
  %i.dd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.dc, i1 true)
  %i.de = lshr i64 %i.dd, 3
  %i.df = getelementptr inbounds nuw i8, ptr %.049.i.i, i64 %i.de
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.cv to i64
  %i.di = sub i64 %i.dg, %i.dh
  br label %ZSTD_count.exit.i

.loopexit.i.i:                                    ; preds = %.preheader.i.i, %.critedge.i
  %.251.i.i = phi ptr [ %i.cv, %.critedge.i ], [ %.049.i.i, %.preheader.i.i ] ; 5 uses
  %.247.i.i = phi ptr [ %i.cw, %.critedge.i ], [ %.045.i.i, %.preheader.i.i ] ; 4 uses
  %i.dj = icmp ult ptr %.251.i.i, %i.ck
  br i1 %i.dj, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.loopexit.i.i
  %.247.val.i.i = load i32, ptr %.247.i.i, align 1, !tbaa !42
  %.251.val.i.i = load i32, ptr %.251.i.i, align 1, !tbaa !42
  %i.dk = icmp eq i32 %.247.val.i.i, %.251.val.i.i
  br i1 %i.dk, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dl = getelementptr inbounds nuw i8, ptr %.251.i.i, i64 4
  %i.dm = getelementptr inbounds nuw i8, ptr %.247.i.i, i64 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %.loopexit.i.i
  %.352.i.i = phi ptr [ %i.dl, %bb.o ], [ %.251.i.i, %bb.n ], [ %.251.i.i, %.loopexit.i.i ] ; 5 uses
  %.348.i.i = phi ptr [ %i.dm, %bb.o ], [ %.247.i.i, %bb.n ], [ %.247.i.i, %.loopexit.i.i ] ; 4 uses
  %i.dn = icmp ult ptr %.352.i.i, %i.cl
  br i1 %i.dn, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %.348.val.i.i = load i16, ptr %.348.i.i, align 1, !tbaa !57
  %.352.val.i.i = load i16, ptr %.352.i.i, align 1, !tbaa !57
  %i.do = icmp eq i16 %.348.val.i.i, %.352.val.i.i
  br i1 %i.do, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dp = getelementptr inbounds nuw i8, ptr %.352.i.i, i64 2
  %i.dq = getelementptr inbounds nuw i8, ptr %.348.i.i, i64 2
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.453.i.i = phi ptr [ %i.dp, %bb.r ], [ %.352.i.i, %bb.q ], [ %.352.i.i, %bb.p ] ; 4 uses
  %.4.i.i = phi ptr [ %i.dq, %bb.r ], [ %.348.i.i, %bb.q ], [ %.348.i.i, %bb.p ]
  %i.dr = icmp ult ptr %.453.i.i, %i.br
  br i1 %i.dr, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ds = load i8, ptr %.4.i.i, align 1, !tbaa !50
  %i.dt = load i8, ptr %.453.i.i, align 1, !tbaa !50
  %i.du = icmp eq i8 %i.ds, %i.dt
  %spec.select.idx.i.i = zext i1 %i.du to i64
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %.453.i.i, i64 %spec.select.idx.i.i
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.5.i.i = phi ptr [ %.453.i.i, %bb.s ], [ %spec.select.i.i, %bb.t ]
  %i.dv = ptrtoint ptr %.5.i.i to i64
  %i.dw = ptrtoint ptr %i.cv to i64
  %i.dx = sub i64 %i.dv, %i.dw
  br label %ZSTD_count.exit.i

ZSTD_count.exit.i:                                ; preds = %bb.u, %.thread63.i.i, %bb.l
  %.3.i.i = phi i64 [ %i.di, %.thread63.i.i ], [ %i.dx, %bb.u ], [ %i.da, %bb.l ]
  %i.dy = add i64 %.3.i.i, %i.cq
  br label %bb.w

bb.v:                                             ; preds = %bb.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.cr ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.cq
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.cq
  %i.ec = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.ea, ptr noundef nonnull %i.eb, ptr noundef %i.br, ptr noundef nonnull %i.bq, ptr noundef nonnull %i.bs)
  %i.ed = add i64 %i.ec, %i.cq                    ; 2 uses
  %i.ee = add i64 %i.ed, %i.cr
  %.not125.i = icmp ult i64 %i.ee, %i.bp
  %i.ef = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.cr
  %spec.select.i = select i1 %.not125.i, ptr %i.dz, ptr %i.ef
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %ZSTD_count.exit.i
  %.0113.i = phi ptr [ %i.cu, %ZSTD_count.exit.i ], [ %spec.select.i, %bb.v ]
  %.0104.i = phi i64 [ %i.dy, %ZSTD_count.exit.i ], [ %i.ed, %bb.v ] ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.0104.i ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.br
  br i1 %i.eh, label %ZSTD_insertDUBT1.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ei = getelementptr inbounds nuw i8, ptr %.0113.i, i64 %.0104.i
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !50
  %i.ek = load i8, ptr %i.eg, align 1, !tbaa !50
  %i.el = icmp ult i8 %i.ej, %i.ek
  %.not128.i = icmp ugt i32 %.0105145.i, %i.aq    ; 2 uses
  br i1 %i.el, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  store i32 %.0105145.i, ptr %.0109143.i, align 4, !tbaa !42
  br i1 %.not128.i, label %bb.z, label %ZSTD_insertDUBT1.exit

bb.z:                                             ; preds = %bb.y
  %i.em = getelementptr inbounds nuw i8, ptr %i.cp, i64 4 ; 2 uses
  br label %bb.ab

bb.aa:                                            ; preds = %bb.x
  store i32 %.0105145.i, ptr %.0106144.i, align 4, !tbaa !42
  br i1 %.not128.i, label %bb.ab, label %ZSTD_insertDUBT1.exit

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.1118.i = phi i64 [ %.0104.i, %bb.z ], [ %.0117141.i, %bb.aa ]
  %.1115.i = phi i64 [ %.0114142.i, %bb.z ], [ %.0104.i, %bb.aa ]
  %.1110.i = phi ptr [ %i.em, %bb.z ], [ %.0109143.i, %bb.aa ] ; 2 uses
  %.1107.i = phi ptr [ %.0106144.i, %bb.z ], [ %i.cp, %bb.aa ] ; 2 uses
  %.1.in.i = phi ptr [ %i.em, %bb.z ], [ %i.cp, %bb.aa ]
  %.1.i = load i32, ptr %.1.in.i, align 4, !tbaa !42 ; 2 uses
  %i.en = add i32 %.0120140.i, -1                 ; 2 uses
  %i.eo = icmp ne i32 %i.en, 0
  %i.ep = icmp ugt i32 %.1.i, %i.cf
  %i.eq = select i1 %i.eo, i1 %i.ep, i1 false
  br i1 %i.eq, label %bb.h, label %ZSTD_insertDUBT1.exit, !llvm.loop !210

ZSTD_insertDUBT1.exit:                            ; preds = %bb.w, %bb.y, %bb.aa, %bb.ab, %bb.g
  %.3112.i = phi ptr [ %i.bw, %bb.g ], [ %.1110.i, %bb.ab ], [ %.0109143.i, %bb.w ], [ %.0109143.i, %bb.aa ], [ %i.a, %bb.y ]
  %.3.i = phi ptr [ %i.bx, %bb.g ], [ %.1107.i, %bb.ab ], [ %.0106144.i, %bb.w ], [ %i.a, %bb.aa ], [ %.0106144.i, %bb.y ]
  store i32 0, ptr %.3.i, align 4, !tbaa !42
  store i32 0, ptr %.3112.i, align 4, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.er = add i32 %.1206281, 1
  %.not = icmp eq i32 %i.bi, 0
  br i1 %.not, label %._crit_edge, label %bb.g, !llvm.loop !211

._crit_edge:                                      ; preds = %ZSTD_insertDUBT1.exit, %.critedge226.._crit_edge_crit_edge
  %i.es = phi ptr [ %.pre, %.critedge226.._crit_edge_crit_edge ], [ %i.bb, %ZSTD_insertDUBT1.exit ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !51
  %i.ev = zext i32 %i.eu to i64                   ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ev
  %i.ey = and i32 %i.ao, %i.z
  %i.ez = shl nuw i32 %i.ey, 1
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.fa ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 4 ; 2 uses
  %i.fd = add i32 %i.z, 9                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.fe = load i32, ptr %i.t, align 4, !tbaa !42  ; 2 uses
  store i32 %i.z, ptr %i.t, align 4, !tbaa !42
  %i.ff = icmp ugt i32 %i.fe, %i.ai
  br i1 %i.ff, label %.lr.ph292, label %.thread

.lr.ph292:                                        ; preds = %._crit_edge
  %.not220 = icmp eq i32 %5, 1
  %i.fg = getelementptr inbounds i8, ptr %2, i64 -7 ; 2 uses
  %i.fh = getelementptr inbounds i8, ptr %2, i64 -3
  %i.fi = getelementptr inbounds i8, ptr %2, i64 -1
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph292, %bb.ay
  %.0184290 = phi i64 [ 0, %.lr.ph292 ], [ %.2, %bb.ay ] ; 4 uses
  %.0185289 = phi i32 [ %i.fd, %.lr.ph292 ], [ %.2187, %bb.ay ] ; 3 uses
  %.0190288 = phi ptr [ %i.fc, %.lr.ph292 ], [ %.1191, %bb.ay ] ; 4 uses
  %.0194287 = phi ptr [ %i.fb, %.lr.ph292 ], [ %.1195, %bb.ay ] ; 4 uses
  %.0198286 = phi i64 [ 0, %.lr.ph292 ], [ %.1199, %bb.ay ] ; 2 uses
end_hunk_0
