inline.NumInlined: 24
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZL35BrotliCompressFragmentTwoPassImpl16PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a

bb.b:                                             ; preds = %.lr.ph283, %bb.ba
  %.0.i282 = phi ptr [ %1, %.lr.ph283 ], [ %i.e, %bb.ba ] ; 6 uses
  %.037.i281 = phi i64 [ %2, %.lr.ph283 ], [ %i.rs, %bb.ba ] ; 6 uses
  %i.d = tail call noundef i64 @llvm.umin.i64(i64 range(i64 1, 0) %.037.i281, i64 131072) ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i282, i64 %i.d ; 4 uses
  %i.f = icmp ugt i64 %.037.i281, 15
  br i1 %i.f, label %bb.c, label %.thread124, !prof !40

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i64 %i.d, -6
  %i.h = add i64 %.037.i281, -16
  %i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.g, i64 range(i64 -15, -16) %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i282, i64 %i.i ; 6 uses
  %i.k = ptrtoint ptr %i.e to i64
  %.neg134 = add i64 %i.k, -6                     ; 2 uses
  br label %_ZL7IsMatchPKhS0_m.exit13.thread

_ZL7IsMatchPKhS0_m.exit13.thread:                 ; preds = %_ZL7IsMatchPKhS0_m.exit13.thread.backedge, %bb.c
  %.189 = phi ptr [ %3, %bb.c ], [ %.189.be, %_ZL7IsMatchPKhS0_m.exit13.thread.backedge ] ; 11 uses
  %.1 = phi ptr [ %4, %bb.c ], [ %i.ev, %_ZL7IsMatchPKhS0_m.exit13.thread.backedge ] ; 6 uses
  %.0276.i = phi i32 [ -1, %bb.c ], [ %.0276.i.be, %_ZL7IsMatchPKhS0_m.exit13.thread.backedge ]
  %.0273.i = phi ptr [ %.0.i282, %bb.c ], [ %.0273.i.be, %_ZL7IsMatchPKhS0_m.exit13.thread.backedge ] ; 7 uses
  %.0276.i.fr = freeze i32 %.0276.i               ; 4 uses
  %.0.i9 = getelementptr inbounds nuw i8, ptr %.0273.i, i64 1 ; 3 uses
  %.0281.i.in.in.in = load i64, ptr %.0.i9, align 1
  %.0281.i.in.in = mul i64 %.0281.i.in.in.in, 33215796281344
  %.0281.i.in = lshr i64 %.0281.i.in.in, 48       ; 2 uses
  %i.l = sext i32 %.0276.i.fr to i64
  %i.m = sub nsw i64 0, %i.l
  %i.n = icmp sgt i32 %.0276.i.fr, 0
  br i1 %i.n, label %.split.us, label %.split, !prof !409

.split.us:                                        ; preds = %_ZL7IsMatchPKhS0_m.exit13.thread, %.loopexit.split.us206
  %.0287.i.us = phi ptr [ %i.s, %.loopexit.split.us206 ], [ %.0.i9, %_ZL7IsMatchPKhS0_m.exit13.thread ] ; 2 uses
  %.0285.i.us = phi i32 [ %i.t, %.loopexit.split.us206 ], [ 32, %_ZL7IsMatchPKhS0_m.exit13.thread ] ; 2 uses
  %.1282.i.us = phi i64 [ %i.v, %.loopexit.split.us206 ], [ %.0281.i.in, %_ZL7IsMatchPKhS0_m.exit13.thread ]
  %i.o = lshr i32 %.0285.i.us, 5
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %.0287.i.us, i64 %i.p ; 2 uses
  %i.r = icmp ugt ptr %i.q, %i.j
  br i1 %i.r, label %.thread124, label %.lr.ph.us, !prof !410

.lr.ph.us:                                        ; preds = %.split.us, %.backedge.us212
  %i.s = phi ptr [ %i.bi, %.backedge.us212 ], [ %i.q, %.split.us ] ; 4 uses
  %.in285 = phi i32 [ %i.t, %.backedge.us212 ], [ %.0285.i.us, %.split.us ]
  %.2283.i181.us195 = phi i64 [ %i.v, %.backedge.us212 ], [ %.1282.i.us, %.split.us ] ; 2 uses
  %.1288.i180.us196 = phi ptr [ %i.s, %.backedge.us212 ], [ %.0287.i.us, %.split.us ] ; 10 uses
  %i.t = add i32 %.in285, 1                       ; 3 uses
  %.0.copyload.i41.us197 = load i64, ptr %i.s, align 1
  %i.u = mul i64 %.0.copyload.i41.us197, 33215796281344
  %i.v = lshr i64 %i.u, 48                        ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.1288.i180.us196, i64 %i.m ; 4 uses
  %.0.copyload.i50.us198 = load i32, ptr %.1288.i180.us196, align 1
  %.0.copyload.i49.us199 = load i32, ptr %i.w, align 1
  %i.x = icmp eq i32 %.0.copyload.i50.us198, %.0.copyload.i49.us199
  br i1 %i.x, label %bb.d, label %_ZL7IsMatchPKhS0_m.exit15.thread.us201

bb.d:                                             ; preds = %.lr.ph.us
  %i.y = getelementptr inbounds nuw i8, ptr %.1288.i180.us196, i64 4
  %i.z = load i8, ptr %i.y, align 1, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !9
  %i.ac = icmp eq i8 %i.z, %i.ab
  br i1 %i.ac, label %_ZL7IsMatchPKhS0_m.exit15.us200, label %_ZL7IsMatchPKhS0_m.exit15.thread.us201

_ZL7IsMatchPKhS0_m.exit15.us200:                  ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.1288.i180.us196, i64 5
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !9
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 5
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !9
  %i.ah = icmp eq i8 %i.ae, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZL7IsMatchPKhS0_m.exit15.thread.us201, !prof !409

_ZL7IsMatchPKhS0_m.exit15.thread.us201:           ; preds = %_ZL7IsMatchPKhS0_m.exit15.us200, %bb.d, %.lr.ph.us
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.2283.i181.us195 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %1, i64 %i.ak ; 4 uses
  %i.am = ptrtoint ptr %.1288.i180.us196 to i64   ; 2 uses
  %i.an = sub i64 %i.am, %i.a
  %i.ao = trunc i64 %i.an to i32
  store i32 %i.ao, ptr %i.ai, align 4, !tbaa !3
  %.0.copyload.i54.us202 = load i32, ptr %.1288.i180.us196, align 1
  %.0.copyload.i53.us203 = load i32, ptr %i.al, align 1
  %i.ap = icmp eq i32 %.0.copyload.i54.us202, %.0.copyload.i53.us203
  br i1 %i.ap, label %bb.e, label %.backedge.us212

bb.e:                                             ; preds = %_ZL7IsMatchPKhS0_m.exit15.thread.us201
  %i.aq = getelementptr inbounds nuw i8, ptr %.1288.i180.us196, i64 4
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !9
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.at = load i8, ptr %i.as, align 1, !tbaa !9
  %i.au = icmp eq i8 %i.ar, %i.at
  br i1 %i.au, label %_ZL7IsMatchPKhS0_m.exit.us205, label %.backedge.us212

_ZL7IsMatchPKhS0_m.exit.us205:                    ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %.1288.i180.us196, i64 5
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !9
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 5
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !9
  %.not286 = icmp eq i8 %i.aw, %i.ay
  br i1 %.not286, label %.loopexit.split.us206, label %.backedge.us212, !prof !41

bb.f:                                             ; preds = %_ZL7IsMatchPKhS0_m.exit15.us200
  %i.az = ptrtoint ptr %.1288.i180.us196 to i64   ; 2 uses
  %i.ba = sub i64 %i.az, %i.a
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.2283.i181.us195
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !3
  br label %.loopexit.split.us206

.loopexit.split.us206:                            ; preds = %_ZL7IsMatchPKhS0_m.exit.us205, %bb.f
  %.pre-phi = phi i64 [ %i.az, %bb.f ], [ %i.am, %_ZL7IsMatchPKhS0_m.exit.us205 ] ; 2 uses
  %.3292.i102.us = phi ptr [ %i.w, %bb.f ], [ %i.al, %_ZL7IsMatchPKhS0_m.exit.us205 ] ; 2 uses
  %i.bd = ptrtoint ptr %.3292.i102.us to i64
  %i.be = sub i64 %.pre-phi, %i.bd                ; 2 uses
  %i.bf = icmp sgt i64 %i.be, 262128
  br i1 %i.bf, label %.split.us, label %.split218.us

.backedge.us212:                                  ; preds = %_ZL7IsMatchPKhS0_m.exit15.thread.us201, %bb.e, %_ZL7IsMatchPKhS0_m.exit.us205
  %i.bg = lshr i32 %i.t, 5
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.bh ; 2 uses
  %i.bj = icmp ugt ptr %i.bi, %i.j
  br i1 %i.bj, label %.thread124, label %.lr.ph.us, !prof !411, !llvm.loop !43

.split:                                           ; preds = %_ZL7IsMatchPKhS0_m.exit13.thread, %.loopexit.split.us
  %.0287.i = phi ptr [ %i.bo, %.loopexit.split.us ], [ %.0.i9, %_ZL7IsMatchPKhS0_m.exit13.thread ] ; 2 uses
  %.0285.i = phi i32 [ %i.bp, %.loopexit.split.us ], [ 32, %_ZL7IsMatchPKhS0_m.exit13.thread ] ; 2 uses
  %.1282.i = phi i64 [ %i.br, %.loopexit.split.us ], [ %.0281.i.in, %_ZL7IsMatchPKhS0_m.exit13.thread ]
  %i.bk = lshr i32 %.0285.i, 5
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %.0287.i, i64 %i.bl ; 2 uses
  %i.bn = icmp ugt ptr %i.bm, %i.j
  br i1 %i.bn, label %.thread124, label %.lr.ph, !prof !410

.lr.ph:                                           ; preds = %.split, %.backedge.us
  %i.bo = phi ptr [ %i.cl, %.backedge.us ], [ %i.bm, %.split ] ; 4 uses
  %.in = phi i32 [ %i.bp, %.backedge.us ], [ %.0285.i, %.split ]
  %.2283.i181.us = phi i64 [ %i.br, %.backedge.us ], [ %.1282.i, %.split ]
  %.1288.i180.us = phi ptr [ %i.bo, %.backedge.us ], [ %.0287.i, %.split ] ; 5 uses
  %i.bp = add i32 %.in, 1                         ; 3 uses
  %.0.copyload.i41.us = load i64, ptr %i.bo, align 1
  %i.bq = mul i64 %.0.copyload.i41.us, 33215796281344
  %i.br = lshr i64 %i.bq, 48                      ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.2283.i181.us ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !3
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds i8, ptr %1, i64 %i.bu ; 5 uses
  %i.bw = ptrtoint ptr %.1288.i180.us to i64      ; 3 uses
  %i.bx = sub i64 %i.bw, %i.a
  %i.by = trunc i64 %i.bx to i32
  store i32 %i.by, ptr %i.bs, align 4, !tbaa !3
  %.0.copyload.i54.us = load i32, ptr %.1288.i180.us, align 1
  %.0.copyload.i53.us = load i32, ptr %i.bv, align 1
  %i.bz = icmp eq i32 %.0.copyload.i54.us, %.0.copyload.i53.us
  br i1 %i.bz, label %bb.g, label %.backedge.us

bb.g:                                             ; preds = %.lr.ph
  %i.ca = getelementptr inbounds nuw i8, ptr %.1288.i180.us, i64 4
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !9
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !9
  %i.ce = icmp eq i8 %i.cb, %i.cd
  br i1 %i.ce, label %_ZL7IsMatchPKhS0_m.exit.us, label %.backedge.us

_ZL7IsMatchPKhS0_m.exit.us:                       ; preds = %bb.g
  %i.cf = getelementptr inbounds nuw i8, ptr %.1288.i180.us, i64 5
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !9
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bv, i64 5
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !9
  %.not284 = icmp eq i8 %i.cg, %i.ci
  br i1 %.not284, label %.loopexit.split.us, label %.backedge.us, !prof !41

.backedge.us:                                     ; preds = %.lr.ph, %bb.g, %_ZL7IsMatchPKhS0_m.exit.us
  %i.cj = lshr i32 %i.bp, 5
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.ck ; 2 uses
  %i.cm = icmp ugt ptr %i.cl, %i.j
  br i1 %i.cm, label %.thread124, label %.lr.ph, !prof !411, !llvm.loop !43

.loopexit.split.us:                               ; preds = %_ZL7IsMatchPKhS0_m.exit.us
  %i.cn = ptrtoint ptr %i.bv to i64
  %i.co = sub i64 %i.bw, %i.cn                    ; 2 uses
  %i.cp = icmp sgt i64 %i.co, 262128
  br i1 %i.cp, label %.split, label %.split218.us

.split218.us:                                     ; preds = %.loopexit.split.us, %.loopexit.split.us206
  %.us-phi219 = phi ptr [ %.3292.i102.us, %.loopexit.split.us206 ], [ %i.bv, %.loopexit.split.us ]
  %.us-phi220 = phi i64 [ %.pre-phi, %.loopexit.split.us206 ], [ %i.bw, %.loopexit.split.us ] ; 2 uses
  %.us-phi221 = phi i64 [ %i.be, %.loopexit.split.us206 ], [ %i.co, %.loopexit.split.us ]
  %.us-phi222 = phi ptr [ %.1288.i180.us196, %.loopexit.split.us206 ], [ %.1288.i180.us, %.loopexit.split.us ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.us-phi219, i64 6 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.us-phi222, i64 6 ; 2 uses
  %i.cs = sub i64 %.neg134, %.us-phi220           ; 3 uses
  %i.ct = icmp ugt i64 %i.cs, 7
  br i1 %i.ct, label %.lr.ph232, label %.preheader140

.preheader140:                                    ; preds = %bb.i, %.split218.us
  %.027.i20.lcssa = phi i64 [ %i.cs, %.split218.us ], [ %i.dd, %bb.i ] ; 8 uses
  %.025.i21.lcssa = phi ptr [ %i.cr, %.split218.us ], [ %i.db, %bb.i ] ; 7 uses
  %.022.i22.lcssa = phi ptr [ %i.cq, %.split218.us ], [ %i.dc, %bb.i ] ; 10 uses
  %.not.i27236 = icmp eq i64 %.027.i20.lcssa, 0
  br i1 %.not.i27236, label %.critedge.i28, label %.lr.ph240.preheader

.lr.ph240.preheader:                              ; preds = %.preheader140
  %scevgep = getelementptr i8, ptr %.022.i22.lcssa, i64 %.027.i20.lcssa ; 7 uses
  %8 = load i8, ptr %.022.i22.lcssa, align 1, !tbaa !9
  %9 = load i8, ptr %.025.i21.lcssa, align 1, !tbaa !9
  %10 = icmp eq i8 %8, %9
  br i1 %10, label %11, label %.critedge.i28

.lr.ph232:                                        ; preds = %.split218.us, %bb.i
  %.022.i22231 = phi ptr [ %i.dc, %bb.i ], [ %i.cq, %.split218.us ] ; 3 uses
  %.025.i21230 = phi ptr [ %i.db, %bb.i ], [ %i.cr, %.split218.us ] ; 2 uses
  %.027.i20229 = phi i64 [ %i.dd, %bb.i ], [ %i.cs, %.split218.us ]
  %.0.copyload.i37 = load i64, ptr %.025.i21230, align 1 ; 2 uses
  %.0.copyload.i = load i64, ptr %.022.i22231, align 1 ; 2 uses
  %.not30.i30 = icmp eq i64 %.0.copyload.i37, %.0.copyload.i
  br i1 %.not30.i30, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph232
  %i.cu = xor i64 %.0.copyload.i, %.0.copyload.i37
  %i.cv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cu, i1 true)
  %i.cw = ptrtoint ptr %.022.i22231 to i64
  %i.cx = ptrtoint ptr %i.cq to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = lshr i64 %i.cv, 3
  %i.da = add i64 %i.cy, %i.cz
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit33

bb.i:                                             ; preds = %.lr.ph232
  %i.db = getelementptr inbounds nuw i8, ptr %.025.i21230, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.022.i22231, i64 8 ; 2 uses
  %i.dd = add i64 %.027.i20229, -8                ; 3 uses
  %i.de = icmp ugt i64 %i.dd, 7
  br i1 %i.de, label %.lr.ph232, label %.preheader140, !llvm.loop !45

11:                                               ; preds = %.lr.ph240.preheader
  %.not.i27 = icmp eq i64 %.027.i20.lcssa, 1
  br i1 %.not.i27, label %.critedge.i28, label %.lr.ph240.1

.lr.ph240.1:                                      ; preds = %11
  %12 = getelementptr inbounds nuw i8, ptr %.022.i22.lcssa, i64 1 ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %.025.i21.lcssa, i64 1
  %14 = load i8, ptr %12, align 1, !tbaa !9
  %15 = load i8, ptr %13, align 1, !tbaa !9
  %16 = icmp eq i8 %14, %15
  br i1 %16, label %17, label %.critedge.i28

17:                                               ; preds = %.lr.ph240.1
  %.not.i27.1 = icmp eq i64 %.027.i20.lcssa, 2
  br i1 %.not.i27.1, label %.critedge.i28, label %.lr.ph240.2

.lr.ph240.2:                                      ; preds = %17
  %18 = getelementptr inbounds nuw i8, ptr %.022.i22.lcssa, i64 2 ; 2 uses
  %19 = getelementptr inbounds nuw i8, ptr %.025.i21.lcssa, i64 2
  %20 = load i8, ptr %18, align 1, !tbaa !9
  %21 = load i8, ptr %19, align 1, !tbaa !9
  %22 = icmp eq i8 %20, %21
  br i1 %22, label %23, label %.critedge.i28

23:                                               ; preds = %.lr.ph240.2
  %.not.i27.2 = icmp eq i64 %.027.i20.lcssa, 3
  br i1 %.not.i27.2, label %.critedge.i28, label %.lr.ph240.3

.lr.ph240.3:                                      ; preds = %23
  %24 = getelementptr inbounds nuw i8, ptr %.022.i22.lcssa, i64 3 ; 2 uses
  %25 = getelementptr inbounds nuw i8, ptr %.025.i21.lcssa, i64 3
  %26 = load i8, ptr %24, align 1, !tbaa !9
  %27 = load i8, ptr %25, align 1, !tbaa !9
  %28 = icmp eq i8 %26, %27
  br i1 %28, label %29, label %.critedge.i28

29:                                               ; preds = %.lr.ph240.3
  %.not.i27.3 = icmp eq i64 %.027.i20.lcssa, 4
  br i1 %.not.i27.3, label %.critedge.i28, label %.lr.ph240.4

.lr.ph240.4:                                      ; preds = %29
  %30 = getelementptr inbounds nuw i8, ptr %.022.i22.lcssa, i64 4 ; 2 uses
  %31 = getelementptr inbounds nuw i8, ptr %.025.i21.lcssa, i64 4
  %i.df = load i8, ptr %30, align 1, !tbaa !9
  %i.dg = load i8, ptr %31, align 1, !tbaa !9
  %i.dh = icmp eq i8 %i.df, %i.dg
  br i1 %i.dh, label %32, label %.critedge.i28

32:                                               ; preds = %.lr.ph240.4
  %.not.i27.4 = icmp eq i64 %.027.i20.lcssa, 5
  br i1 %.not.i27.4, label %.critedge.i28, label %.lr.ph240.5

.lr.ph240.5:                                      ; preds = %32
  %33 = getelementptr inbounds nuw i8, ptr %.022.i22.lcssa, i64 5 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.025.i21.lcssa, i64 5
  %34 = load i8, ptr %33, align 1, !tbaa !9
  %35 = load i8, ptr %i.di, align 1, !tbaa !9
  %i.dj = icmp eq i8 %34, %35
  br i1 %i.dj, label %36, label %.critedge.i28

36:                                               ; preds = %.lr.ph240.5
  %.not.i27.5 = icmp eq i64 %.027.i20.lcssa, 6
  br i1 %.not.i27.5, label %.critedge.i28, label %.lr.ph240.6

.lr.ph240.6:                                      ; preds = %36
  %37 = getelementptr inbounds nuw i8, ptr %.022.i22.lcssa, i64 6 ; 2 uses
  %38 = getelementptr inbounds nuw i8, ptr %.025.i21.lcssa, i64 6
  %39 = load i8, ptr %37, align 1, !tbaa !9
  %40 = load i8, ptr %38, align 1, !tbaa !9
  %41 = icmp eq i8 %39, %40
  %spec.select = select i1 %41, ptr %scevgep, ptr %37
  br label %.critedge.i28

.critedge.i28:                                    ; preds = %.lr.ph240.6, %11, %.lr.ph240.preheader, %.lr.ph240.1, %17, %.lr.ph240.2, %23, %.lr.ph240.3, %29, %.lr.ph240.4, %32, %.lr.ph240.5, %36, %.preheader140
  %.224.i26.lcssa = phi ptr [ %.022.i22.lcssa, %.preheader140 ], [ %.022.i22.lcssa, %.lr.ph240.preheader ], [ %scevgep, %11 ], [ %12, %.lr.ph240.1 ], [ %scevgep, %17 ], [ %18, %.lr.ph240.2 ], [ %scevgep, %23 ], [ %24, %.lr.ph240.3 ], [ %scevgep, %29 ], [ %30, %.lr.ph240.4 ], [ %scevgep, %32 ], [ %33, %.lr.ph240.5 ], [ %scevgep, %36 ], [ %spec.select, %.lr.ph240.6 ]
  %i.dk = ptrtoint ptr %.224.i26.lcssa to i64
  %i.dl = ptrtoint ptr %i.cq to i64
  %i.dm = sub i64 %i.dk, %i.dl
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit33

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit33: ; preds = %bb.h, %.critedge.i28
  %.2.i29 = phi i64 [ %i.da, %bb.h ], [ %i.dm, %.critedge.i28 ] ; 4 uses
  %i.dn = add i64 %.2.i29, 6                      ; 7 uses
  %i.do = trunc i64 %.us-phi221 to i32            ; 3 uses
  %i.dp = ptrtoint ptr %.0273.i to i64
  %i.dq = sub i64 %.us-phi220, %i.dp              ; 2 uses
  %i.dr = trunc i64 %i.dq to i32                  ; 10 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.us-phi222, i64 %i.dn ; 9 uses
  %i.dt = icmp ult i32 %i.dr, 6
  br i1 %i.dt, label %_ZL13EmitInsertLenjPPj.exit, label %bb.j

bb.j:                                             ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit33
  %i.du = icmp ult i32 %i.dr, 130
  br i1 %i.du, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dv = add nsw i32 %i.dr, -2                   ; 3 uses
  %i.dw = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dv, i1 true)
  %i.dx = sub nuw nsw i32 30, %i.dw               ; 3 uses
  %i.dy = lshr i32 %i.dv, %i.dx                   ; 2 uses
  %i.dz = shl nuw nsw i32 %i.dx, 1
  %i.ea = add nuw nsw i32 %i.dy, 2
  %i.eb = add nuw nsw i32 %i.ea, %i.dz
  %i.ec = shl nuw nsw i32 %i.dy, %i.dx
  %i.ed = sub nsw i32 %i.dv, %i.ec
  %i.ee = shl nsw i32 %i.ed, 8
  %i.ef = or i32 %i.ee, %i.eb
  br label %_ZL13EmitInsertLenjPPj.exit

bb.l:                                             ; preds = %bb.j
  %i.eg = icmp ult i32 %i.dr, 2114
  br i1 %i.eg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.eh = add nsw i32 %i.dr, -66                  ; 2 uses
  %i.ei = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.eh, i1 true) ; 2 uses
  %.neg.i = ashr exact i32 -2147483648, %i.ei
  %i.ej = add nsw i32 %.neg.i, %i.eh
  %i.ek = shl nsw i32 %i.ej, 8
  %reass.sub = sub nsw i32 %i.ek, %i.ei
  %i.el = add nsw i32 %reass.sub, 41
  br label %_ZL13EmitInsertLenjPPj.exit

bb.n:                                             ; preds = %bb.l
  %i.em = icmp ult i32 %i.dr, 6210
  br i1 %i.em, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.en = shl nuw nsw i32 %i.dr, 8
  %i.eo = add nsw i32 %i.en, -541163
  br label %_ZL13EmitInsertLenjPPj.exit

bb.p:                                             ; preds = %bb.n
  %i.ep = icmp ult i32 %i.dr, 22594
  %i.eq = shl i32 %i.dr, 8                        ; 2 uses
  br i1 %i.ep, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.er = add nsw i32 %i.eq, -1589738
  br label %_ZL13EmitInsertLenjPPj.exit

bb.r:                                             ; preds = %bb.p
  %i.es = add i32 %i.eq, -5784041
  br label %_ZL13EmitInsertLenjPPj.exit

_ZL13EmitInsertLenjPPj.exit:                      ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit33, %bb.k, %bb.m, %bb.o, %bb.q, %bb.r
  %.sink = phi i32 [ %i.es, %bb.r ], [ %i.ef, %bb.k ], [ %i.el, %bb.m ], [ %i.eo, %bb.o ], [ %i.er, %bb.q ], [ %i.dr, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit33 ]
  store i32 %.sink, ptr %.189, align 4, !tbaa !3
  %i.et = getelementptr inbounds nuw i8, ptr %.189, i64 4
  %sext.i = shl i64 %i.dq, 32
  %i.eu = ashr exact i64 %sext.i, 32              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1, ptr align 1 %.0273.i, i64 %i.eu, i1 false)
  %i.ev = getelementptr inbounds i8, ptr %.1, i64 %i.eu ; 3 uses
  %i.ew = icmp eq i32 %.0276.i.fr, %i.do
  br i1 %i.ew, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZL13EmitInsertLenjPPj.exit
  %i.ex = add i32 %i.do, 3                        ; 3 uses
  %i.ey = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ex, i1 true) ; 2 uses
  %i.ez = sub nsw i32 30, %i.ey                   ; 2 uses
  %i.fa = lshr i32 %i.ex, %i.ez
  %i.fb = and i32 %i.fa, 1                        ; 2 uses
  %i.fc = or disjoint i32 %i.fb, 2
  %i.fd = shl nuw i32 %i.fc, %i.ez
  %i.fe = shl nuw nsw i32 %i.ey, 1
  %reass.sub287 = sub nsw i32 %i.fb, %i.fe
  %i.ff = add nsw i32 %reass.sub287, 138
  %i.fg = sub i32 %i.ex, %i.fd
  %i.fh = shl i32 %i.fg, 8
  %i.fi = or i32 %i.fh, %i.ff
  br label %bb.t

bb.t:                                             ; preds = %_ZL13EmitInsertLenjPPj.exit, %bb.s
  %storemerge = phi i32 [ %i.fi, %bb.s ], [ 64, %_ZL13EmitInsertLenjPPj.exit ]
  %.1277.i = phi i32 [ %i.do, %bb.s ], [ %.0276.i.fr, %_ZL13EmitInsertLenjPPj.exit ] ; 3 uses
  store i32 %storemerge, ptr %i.et, align 4, !tbaa !3
  %.290 = getelementptr inbounds nuw i8, ptr %.189, i64 8 ; 5 uses
  %i.fj = icmp ult i64 %i.dn, 12
  br i1 %i.fj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fk = trunc nuw nsw i64 %i.dn to i32
  %i.fl = add nuw nsw i32 %i.fk, 20
  store i32 %i.fl, ptr %.290, align 4, !tbaa !3
  br label %_ZL23EmitCopyLenLastDistancemPPj.exit

bb.v:                                             ; preds = %bb.t
  %i.fm = icmp ult i64 %i.dn, 72
  br i1 %i.fm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fn = add nsw i64 %.2.i29, -2                 ; 3 uses
  %i.fo = trunc nuw nsw i64 %i.fn to i32
  %i.fp = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fo, i1 true)
  %i.fq = sub nuw nsw i32 30, %i.fp
  %i.fr = zext nneg i32 %i.fq to i64              ; 3 uses
  %i.fs = lshr i64 %i.fn, %i.fr                   ; 2 uses
  %i.ft = shl nuw nsw i64 %i.fr, 1
  %i.fu = add nuw nsw i64 %i.fs, 28
  %i.fv = add nuw nsw i64 %i.fu, %i.ft
  %i.fw = shl nuw nsw i64 %i.fs, %i.fr
  %i.fx = sub nsw i64 %i.fn, %i.fw
  %i.fy = shl nsw i64 %i.fx, 8
  %i.fz = or i64 %i.fy, %i.fv
  %i.ga = trunc i64 %i.fz to i32
  store i32 %i.ga, ptr %.290, align 4, !tbaa !3
  br label %_ZL23EmitCopyLenLastDistancemPPj.exit

bb.x:                                             ; preds = %bb.v
  %i.gb = icmp ult i64 %i.dn, 136
  br i1 %i.gb, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.gc = add nsw i64 %.2.i29, -2                 ; 2 uses
  %i.gd = lshr i64 %i.gc, 5
  %i.ge = add nuw nsw i64 %i.gd, 54
  %i.gf = shl nuw nsw i64 %i.gc, 8
  %i.gg = and i64 %i.gf, 7936
  %i.gh = or i64 %i.ge, %i.gg
  %i.gi = trunc nuw nsw i64 %i.gh to i32
  store i32 %i.gi, ptr %.290, align 4, !tbaa !3
  %i.gj = getelementptr inbounds nuw i8, ptr %.189, i64 12
  store i32 64, ptr %i.gj, align 4, !tbaa !3
  br label %_ZL23EmitCopyLenLastDistancemPPj.exit

bb.z:                                             ; preds = %bb.x
  %i.gk = icmp ult i64 %i.dn, 2120
  br i1 %i.gk, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gl = add nsw i64 %.2.i29, -66                ; 2 uses
  %i.gm = trunc nuw nsw i64 %i.gl to i32
  %i.gn = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.gm, i1 true)
  %i.go = xor i32 %i.gn, 31
  %i.gp = zext nneg i32 %i.go to i64              ; 2 uses
  %i.gq = add nuw nsw i64 %i.gp, 52
  %.neg.i36 = shl nsw i64 -1, %i.gp
  %i.gr = add nsw i64 %.neg.i36, %i.gl
  %i.gs = shl nsw i64 %i.gr, 8
  %i.gt = or disjoint i64 %i.gs, %i.gq
  %i.gu = trunc i64 %i.gt to i32
  store i32 %i.gu, ptr %.290, align 4, !tbaa !3
  %i.gv = getelementptr inbounds nuw i8, ptr %.189, i64 12
  store i32 64, ptr %i.gv, align 4, !tbaa !3
  br label %_ZL23EmitCopyLenLastDistancemPPj.exit

bb.ab:                                            ; preds = %bb.z
  %.tr.i = trunc i64 %i.dn to i32
  %i.gw = shl i32 %.tr.i, 8
  %i.gx = add i32 %i.gw, -542657
  store i32 %i.gx, ptr %.290, align 4, !tbaa !3
  %i.gy = getelementptr inbounds nuw i8, ptr %.189, i64 12
  store i32 64, ptr %i.gy, align 4, !tbaa !3
  br label %_ZL23EmitCopyLenLastDistancemPPj.exit

_ZL23EmitCopyLenLastDistancemPPj.exit:            ; preds = %bb.u, %bb.w, %bb.y, %bb.aa, %bb.ab
  %.sink471 = phi i64 [ 12, %bb.u ], [ 12, %bb.w ], [ 16, %bb.y ], [ 16, %bb.aa ], [ 16, %bb.ab ]
  %i.gz = getelementptr inbounds nuw i8, ptr %.189, i64 %.sink471 ; 4 uses
  %.not312.i = icmp ult ptr %i.ds, %i.j
  br i1 %.not312.i, label %bb.ac, label %.thread124, !prof !40

bb.ac:                                            ; preds = %_ZL23EmitCopyLenLastDistancemPPj.exit
  %i.ha = getelementptr inbounds i8, ptr %i.ds, i64 -5
  %.0.copyload.i44 = load i64, ptr %i.ha, align 1 ; 3 uses
  %i.hb = mul i64 %.0.copyload.i44, 33215796281344
  %i.hc = lshr i64 %i.hb, 48
  %i.hd = ptrtoint ptr %i.ds to i64               ; 3 uses
  %i.he = sub i64 %i.hd, %i.a
  %i.hf = trunc i64 %i.he to i32                  ; 6 uses
  %i.hg = add i32 %i.hf, -5
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.hc
  store i32 %i.hg, ptr %i.hh, align 4, !tbaa !3
  %i.hi = shl i64 %.0.copyload.i44, 8
  %i.hj = and i64 %i.hi, -65536
  %i.hk = mul i64 %i.hj, 506832829
end_hunk_0
begin_hunk_1_@_ZL35BrotliCompressFragmentTwoPassImpl17PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a

bb.b:                                             ; preds = %.lr.ph283, %bb.ba
  %.0.i282 = phi ptr [ %1, %.lr.ph283 ], [ %i.e, %bb.ba ] ; 6 uses
  %.037.i281 = phi i64 [ %2, %.lr.ph283 ], [ %i.rs, %bb.ba ] ; 6 uses
  %i.d = tail call noundef i64 @llvm.umin.i64(i64 range(i64 1, 0) %.037.i281, i64 131072) ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i282, i64 %i.d ; 4 uses
  %i.f = icmp ugt i64 %.037.i281, 15
  br i1 %i.f, label %bb.c, label %.thread124, !prof !40

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i64 %i.d, -6
  %i.h = add i64 %.037.i281, -16
  %i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.g, i64 range(i64 -15, -16) %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i282, i64 %i.i ; 6 uses
  %i.k = ptrtoint ptr %i.e to i64
  %.neg134 = add i64 %i.k, -6                     ; 2 uses
  br label %_ZL7IsMatchPKhS0_m.exit13.thread

_ZL7IsMatchPKhS0_m.exit13.thread:                 ; preds = %_ZL7IsMatchPKhS0_m.exit13.thread.backedge, %bb.c
  %.189 = phi ptr [ %3, %bb.c ], [ %.189.be, %_ZL7IsMatchPKhS0_m.exit13.thread.backedge ] ; 11 uses
  %.1 = phi ptr [ %4, %bb.c ], [ %i.ev, %_ZL7IsMatchPKhS0_m.exit13.thread.backedge ] ; 6 uses
  %.0276.i = phi i32 [ -1, %bb.c ], [ %.0276.i.be, %_ZL7IsMatchPKhS0_m.exit13.thread.backedge ]
  %.0273.i = phi ptr [ %.0.i282, %bb.c ], [ %.0273.i.be, %_ZL7IsMatchPKhS0_m.exit13.thread.backedge ] ; 7 uses
  %.0276.i.fr = freeze i32 %.0276.i               ; 4 uses
  %.0.i9 = getelementptr inbounds nuw i8, ptr %.0273.i, i64 1 ; 3 uses
  %.0281.i.in.in.in = load i64, ptr %.0.i9, align 1
  %.0281.i.in.in = mul i64 %.0281.i.in.in.in, 33215796281344
  %.0281.i.in = lshr i64 %.0281.i.in.in, 47       ; 2 uses
  %i.l = sext i32 %.0276.i.fr to i64
  %i.m = sub nsw i64 0, %i.l
  %i.n = icmp sgt i32 %.0276.i.fr, 0
  br i1 %i.n, label %.split.us, label %.split, !prof !409

.split.us:                                        ; preds = %_ZL7IsMatchPKhS0_m.exit13.thread, %.loopexit.split.us206
  %.0287.i.us = phi ptr [ %i.s, %.loopexit.split.us206 ], [ %.0.i9, %_ZL7IsMatchPKhS0_m.exit13.thread ] ; 2 uses
  %.0285.i.us = phi i32 [ %i.t, %.loopexit.split.us206 ], [ 32, %_ZL7IsMatchPKhS0_m.exit13.thread ] ; 2 uses
  %.1282.i.us = phi i64 [ %i.v, %.loopexit.split.us206 ], [ %.0281.i.in, %_ZL7IsMatchPKhS0_m.exit13.thread ]
  %i.o = lshr i32 %.0285.i.us, 5
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %.0287.i.us, i64 %i.p ; 2 uses
  %i.r = icmp ugt ptr %i.q, %i.j
  br i1 %i.r, label %.thread124, label %.lr.ph.us, !prof !410

.lr.ph.us:                                        ; preds = %.split.us, %.backedge.us212
  %i.s = phi ptr [ %i.bi, %.backedge.us212 ], [ %i.q, %.split.us ] ; 4 uses
  %.in285 = phi i32 [ %i.t, %.backedge.us212 ], [ %.0285.i.us, %.split.us ]
  %.2283.i181.us195 = phi i64 [ %i.v, %.backedge.us212 ], [ %.1282.i.us, %.split.us ] ; 2 uses
  %.1288.i180.us196 = phi ptr [ %i.s, %.backedge.us212 ], [ %.0287.i.us, %.split.us ] ; 10 uses
  %i.t = add i32 %.in285, 1                       ; 3 uses
  %.0.copyload.i41.us197 = load i64, ptr %i.s, align 1
  %i.u = mul i64 %.0.copyload.i41.us197, 33215796281344
  %i.v = lshr i64 %i.u, 47                        ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.1288.i180.us196, i64 %i.m ; 4 uses
  %.0.copyload.i50.us198 = load i32, ptr %.1288.i180.us196, align 1
  %.0.copyload.i49.us199 = load i32, ptr %i.w, align 1
  %i.x = icmp eq i32 %.0.copyload.i50.us198, %.0.copyload.i49.us199
  br i1 %i.x, label %bb.d, label %_ZL7IsMatchPKhS0_m.exit15.thread.us201

bb.d:                                             ; preds = %.lr.ph.us
  %i.y = getelementptr inbounds nuw i8, ptr %.1288.i180.us196, i64 4
  %i.z = load i8, ptr %i.y, align 1, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !9
  %i.ac = icmp eq i8 %i.z, %i.ab
  br i1 %i.ac, label %_ZL7IsMatchPKhS0_m.exit15.us200, label %_ZL7IsMatchPKhS0_m.exit15.thread.us201

_ZL7IsMatchPKhS0_m.exit15.us200:                  ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.1288.i180.us196, i64 5
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !9
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 5
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !9
  %i.ah = icmp eq i8 %i.ae, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZL7IsMatchPKhS0_m.exit15.thread.us201, !prof !409

_ZL7IsMatchPKhS0_m.exit15.thread.us201:           ; preds = %_ZL7IsMatchPKhS0_m.exit15.us200, %bb.d, %.lr.ph.us
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.2283.i181.us195 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %1, i64 %i.ak ; 4 uses
  %i.am = ptrtoint ptr %.1288.i180.us196 to i64   ; 2 uses
  %i.an = sub i64 %i.am, %i.a
  %i.ao = trunc i64 %i.an to i32
  store i32 %i.ao, ptr %i.ai, align 4, !tbaa !3
  %.0.copyload.i54.us202 = load i32, ptr %.1288.i180.us196, align 1
  %.0.copyload.i53.us203 = load i32, ptr %i.al, align 1
  %i.ap = icmp eq i32 %.0.copyload.i54.us202, %.0.copyload.i53.us203
  br i1 %i.ap, label %bb.e, label %.backedge.us212

bb.e:                                             ; preds = %_ZL7IsMatchPKhS0_m.exit15.thread.us201
  %i.aq = getelementptr inbounds nuw i8, ptr %.1288.i180.us196, i64 4
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !9
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.at = load i8, ptr %i.as, align 1, !tbaa !9
  %i.au = icmp eq i8 %i.ar, %i.at
  br i1 %i.au, label %_ZL7IsMatchPKhS0_m.exit.us205, label %.backedge.us212

_ZL7IsMatchPKhS0_m.exit.us205:                    ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %.1288.i180.us196, i64 5
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !9
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 5
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !9
  %.not286 = icmp eq i8 %i.aw, %i.ay
  br i1 %.not286, label %.loopexit.split.us206, label %.backedge.us212, !prof !41

bb.f:                                             ; preds = %_ZL7IsMatchPKhS0_m.exit15.us200
  %i.az = ptrtoint ptr %.1288.i180.us196 to i64   ; 2 uses
  %i.ba = sub i64 %i.az, %i.a
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.2283.i181.us195
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !3
  br label %.loopexit.split.us206

.loopexit.split.us206:                            ; preds = %_ZL7IsMatchPKhS0_m.exit.us205, %bb.f
  %.pre-phi = phi i64 [ %i.az, %bb.f ], [ %i.am, %_ZL7IsMatchPKhS0_m.exit.us205 ] ; 2 uses
  %.3292.i102.us = phi ptr [ %i.w, %bb.f ], [ %i.al, %_ZL7IsMatchPKhS0_m.exit.us205 ] ; 2 uses
  %i.bd = ptrtoint ptr %.3292.i102.us to i64
  %i.be = sub i64 %.pre-phi, %i.bd                ; 2 uses
  %i.bf = icmp sgt i64 %i.be, 262128
  br i1 %i.bf, label %.split.us, label %.split218.us

.backedge.us212:                                  ; preds = %_ZL7IsMatchPKhS0_m.exit15.thread.us201, %bb.e, %_ZL7IsMatchPKhS0_m.exit.us205
  %i.bg = lshr i32 %i.t, 5
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.bh ; 2 uses
  %i.bj = icmp ugt ptr %i.bi, %i.j
  br i1 %i.bj, label %.thread124, label %.lr.ph.us, !prof !411, !llvm.loop !43

.split:                                           ; preds = %_ZL7IsMatchPKhS0_m.exit13.thread, %.loopexit.split.us
  %.0287.i = phi ptr [ %i.bo, %.loopexit.split.us ], [ %.0.i9, %_ZL7IsMatchPKhS0_m.exit13.thread ] ; 2 uses
  %.0285.i = phi i32 [ %i.bp, %.loopexit.split.us ], [ 32, %_ZL7IsMatchPKhS0_m.exit13.thread ] ; 2 uses
  %.1282.i = phi i64 [ %i.br, %.loopexit.split.us ], [ %.0281.i.in, %_ZL7IsMatchPKhS0_m.exit13.thread ]
  %i.bk = lshr i32 %.0285.i, 5
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %.0287.i, i64 %i.bl ; 2 uses
  %i.bn = icmp ugt ptr %i.bm, %i.j
  br i1 %i.bn, label %.thread124, label %.lr.ph, !prof !410

.lr.ph:                                           ; preds = %.split, %.backedge.us
  %i.bo = phi ptr [ %i.cl, %.backedge.us ], [ %i.bm, %.split ] ; 4 uses
  %.in = phi i32 [ %i.bp, %.backedge.us ], [ %.0285.i, %.split ]
  %.2283.i181.us = phi i64 [ %i.br, %.backedge.us ], [ %.1282.i, %.split ]
  %.1288.i180.us = phi ptr [ %i.bo, %.backedge.us ], [ %.0287.i, %.split ] ; 5 uses
  %i.bp = add i32 %.in, 1                         ; 3 uses
  %.0.copyload.i41.us = load i64, ptr %i.bo, align 1
  %i.bq = mul i64 %.0.copyload.i41.us, 33215796281344
  %i.br = lshr i64 %i.bq, 47                      ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.2283.i181.us ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !3
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds i8, ptr %1, i64 %i.bu ; 5 uses
  %i.bw = ptrtoint ptr %.1288.i180.us to i64      ; 3 uses
  %i.bx = sub i64 %i.bw, %i.a
  %i.by = trunc i64 %i.bx to i32
  store i32 %i.by, ptr %i.bs, align 4, !tbaa !3
  %.0.copyload.i54.us = load i32, ptr %.1288.i180.us, align 1
  %.0.copyload.i53.us = load i32, ptr %i.bv, align 1
  %i.bz = icmp eq i32 %.0.copyload.i54.us, %.0.copyload.i53.us
  br i1 %i.bz, label %bb.g, label %.backedge.us

bb.g:                                             ; preds = %.lr.ph
  %i.ca = getelementptr inbounds nuw i8, ptr %.1288.i180.us, i64 4
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !9
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !9
  %i.ce = icmp eq i8 %i.cb, %i.cd
  br i1 %i.ce, label %_ZL7IsMatchPKhS0_m.exit.us, label %.backedge.us

_ZL7IsMatchPKhS0_m.exit.us:                       ; preds = %bb.g
  %i.cf = getelementptr inbounds nuw i8, ptr %.1288.i180.us, i64 5
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !9
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bv, i64 5
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !9
  %.not284 = icmp eq i8 %i.cg, %i.ci
  br i1 %.not284, label %.loopexit.split.us, label %.backedge.us, !prof !41

.backedge.us:                                     ; preds = %.lr.ph, %bb.g, %_ZL7IsMatchPKhS0_m.exit.us
  %i.cj = lshr i32 %i.bp, 5
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.ck ; 2 uses
  %i.cm = icmp ugt ptr %i.cl, %i.j
  br i1 %i.cm, label %.thread124, label %.lr.ph, !prof !411, !llvm.loop !43

.loopexit.split.us:                               ; preds = %_ZL7IsMatchPKhS0_m.exit.us
  %i.cn = ptrtoint ptr %i.bv to i64
  %i.co = sub i64 %i.bw, %i.cn                    ; 2 uses
  %i.cp = icmp sgt i64 %i.co, 262128
  br i1 %i.cp, label %.split, label %.split218.us

.split218.us:                                     ; preds = %.loopexit.split.us, %.loopexit.split.us206
  %.us-phi219 = phi ptr [ %.3292.i102.us, %.loopexit.split.us206 ], [ %i.bv, %.loopexit.split.us ]
  %.us-phi220 = phi i64 [ %.pre-phi, %.loopexit.split.us206 ], [ %i.bw, %.loopexit.split.us ] ; 2 uses
  %.us-phi221 = phi i64 [ %i.be, %.loopexit.split.us206 ], [ %i.co, %.loopexit.split.us ]
  %.us-phi222 = phi ptr [ %.1288.i180.us196, %.loopexit.split.us206 ], [ %.1288.i180.us, %.loopexit.split.us ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.us-phi219, i64 6 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.us-phi222, i64 6 ; 2 uses
  %i.cs = sub i64 %.neg134, %.us-phi220           ; 3 uses
  %i.ct = icmp ugt i64 %i.cs, 7
  br i1 %i.ct, label %.lr.ph232, label %.preheader140

.preheader140:                                    ; preds = %bb.i, %.split218.us
  %.027.i20.lcssa = phi i64 [ %i.cs, %.split218.us ], [ %i.dd, %bb.i ] ; 8 uses
  %.025.i21.lcssa = phi ptr [ %i.cr, %.split218.us ], [ %i.db, %bb.i ] ; 7 uses
  %.022.i22.lcssa = phi ptr [ %i.cq, %.split218.us ], [ %i.dc, %bb.i ] ; 10 uses
  %.not.i27236 = icmp eq i64 %.027.i20.lcssa, 0
  br i1 %.not.i27236, label %.critedge.i28, label %.lr.ph240.preheader

.lr.ph240.preheader:                              ; preds = %.preheader140
  %scevgep = getelementptr i8, ptr %.022.i22.lcssa, i64 %.027.i20.lcssa ; 7 uses
  %8 = load i8, ptr %.022.i22.lcssa, align 1, !tbaa !9
  %9 = load i8, ptr %.025.i21.lcssa, align 1, !tbaa !9
  %10 = icmp eq i8 %8, %9
  br i1 %10, label %11, label %.critedge.i28

.lr.ph232:                                        ; preds = %.split218.us, %bb.i
  %.022.i22231 = phi ptr [ %i.dc, %bb.i ], [ %i.cq, %.split218.us ] ; 3 uses
  %.025.i21230 = phi ptr [ %i.db, %bb.i ], [ %i.cr, %.split218.us ] ; 2 uses
  %.027.i20229 = phi i64 [ %i.dd, %bb.i ], [ %i.cs, %.split218.us ]
  %.0.copyload.i37 = load i64, ptr %.025.i21230, align 1 ; 2 uses
  %.0.copyload.i = load i64, ptr %.022.i22231, align 1 ; 2 uses
  %.not30.i30 = icmp eq i64 %.0.copyload.i37, %.0.copyload.i
  br i1 %.not30.i30, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph232
  %i.cu = xor i64 %.0.copyload.i, %.0.copyload.i37
  %i.cv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cu, i1 true)
  %i.cw = ptrtoint ptr %.022.i22231 to i64
  %i.cx = ptrtoint ptr %i.cq to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = lshr i64 %i.cv, 3
  %i.da = add i64 %i.cy, %i.cz
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit33

bb.i:                                             ; preds = %.lr.ph232
  %i.db = getelementptr inbounds nuw i8, ptr %.025.i21230, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.022.i22231, i64 8 ; 2 uses
  %i.dd = add i64 %.027.i20229, -8                ; 3 uses
  %i.de = icmp ugt i64 %i.dd, 7
  br i1 %i.de, label %.lr.ph232, label %.preheader140, !llvm.loop !45

11:                                               ; preds = %.lr.ph240.preheader
  %.not.i27 = icmp eq i64 %.027.i20.lcssa, 1
  br i1 %.not.i27, label %.critedge.i28, label %.lr.ph240.1

.lr.ph240.1:                                      ; preds = %11
  %12 = getelementptr inbounds nuw i8, ptr %.022.i22.lcssa, i64 1 ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %.025.i21.lcssa, i64 1
  %14 = load i8, ptr %12, align 1, !tbaa !9
  %15 = load i8, ptr %13, align 1, !tbaa !9
  %16 = icmp eq i8 %14, %15
  br i1 %16, label %17, label %.critedge.i28

17:                                               ; preds = %.lr.ph240.1
  %.not.i27.1 = icmp eq i64 %.027.i20.lcssa, 2
  br i1 %.not.i27.1, label %.critedge.i28, label %.lr.ph240.2

.lr.ph240.2:                                      ; preds = %17
  %18 = getelementptr inbounds nuw i8, ptr %.022.i22.lcssa, i64 2 ; 2 uses
  %19 = getelementptr inbounds nuw i8, ptr %.025.i21.lcssa, i64 2
  %20 = load i8, ptr %18, align 1, !tbaa !9
  %21 = load i8, ptr %19, align 1, !tbaa !9
  %22 = icmp eq i8 %20, %21
  br i1 %22, label %23, label %.critedge.i28

23:                                               ; preds = %.lr.ph240.2
  %.not.i27.2 = icmp eq i64 %.027.i20.lcssa, 3
  br i1 %.not.i27.2, label %.critedge.i28, label %.lr.ph240.3

.lr.ph240.3:                                      ; preds = %23
  %24 = getelementptr inbounds nuw i8, ptr %.022.i22.lcssa, i64 3 ; 2 uses
  %25 = getelementptr inbounds nuw i8, ptr %.025.i21.lcssa, i64 3
  %26 = load i8, ptr %24, align 1, !tbaa !9
  %27 = load i8, ptr %25, align 1, !tbaa !9
  %28 = icmp eq i8 %26, %27
  br i1 %28, label %29, label %.critedge.i28

29:                                               ; preds = %.lr.ph240.3
  %.not.i27.3 = icmp eq i64 %.027.i20.lcssa, 4
  br i1 %.not.i27.3, label %.critedge.i28, label %.lr.ph240.4

.lr.ph240.4:                                      ; preds = %29
  %30 = getelementptr inbounds nuw i8, ptr %.022.i22.lcssa, i64 4 ; 2 uses
  %31 = getelementptr inbounds nuw i8, ptr %.025.i21.lcssa, i64 4
  %i.df = load i8, ptr %30, align 1, !tbaa !9
  %i.dg = load i8, ptr %31, align 1, !tbaa !9
  %i.dh = icmp eq i8 %i.df, %i.dg
  br i1 %i.dh, label %32, label %.critedge.i28

32:                                               ; preds = %.lr.ph240.4
  %.not.i27.4 = icmp eq i64 %.027.i20.lcssa, 5
  br i1 %.not.i27.4, label %.critedge.i28, label %.lr.ph240.5

.lr.ph240.5:                                      ; preds = %32
  %33 = getelementptr inbounds nuw i8, ptr %.022.i22.lcssa, i64 5 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.025.i21.lcssa, i64 5
  %34 = load i8, ptr %33, align 1, !tbaa !9
  %35 = load i8, ptr %i.di, align 1, !tbaa !9
  %i.dj = icmp eq i8 %34, %35
  br i1 %i.dj, label %36, label %.critedge.i28

36:                                               ; preds = %.lr.ph240.5
  %.not.i27.5 = icmp eq i64 %.027.i20.lcssa, 6
  br i1 %.not.i27.5, label %.critedge.i28, label %.lr.ph240.6

.lr.ph240.6:                                      ; preds = %36
  %37 = getelementptr inbounds nuw i8, ptr %.022.i22.lcssa, i64 6 ; 2 uses
  %38 = getelementptr inbounds nuw i8, ptr %.025.i21.lcssa, i64 6
  %39 = load i8, ptr %37, align 1, !tbaa !9
  %40 = load i8, ptr %38, align 1, !tbaa !9
  %41 = icmp eq i8 %39, %40
  %spec.select = select i1 %41, ptr %scevgep, ptr %37
  br label %.critedge.i28

.critedge.i28:                                    ; preds = %.lr.ph240.6, %11, %.lr.ph240.preheader, %.lr.ph240.1, %17, %.lr.ph240.2, %23, %.lr.ph240.3, %29, %.lr.ph240.4, %32, %.lr.ph240.5, %36, %.preheader140
  %.224.i26.lcssa = phi ptr [ %.022.i22.lcssa, %.preheader140 ], [ %.022.i22.lcssa, %.lr.ph240.preheader ], [ %scevgep, %11 ], [ %12, %.lr.ph240.1 ], [ %scevgep, %17 ], [ %18, %.lr.ph240.2 ], [ %scevgep, %23 ], [ %24, %.lr.ph240.3 ], [ %scevgep, %29 ], [ %30, %.lr.ph240.4 ], [ %scevgep, %32 ], [ %33, %.lr.ph240.5 ], [ %scevgep, %36 ], [ %spec.select, %.lr.ph240.6 ]
  %i.dk = ptrtoint ptr %.224.i26.lcssa to i64
  %i.dl = ptrtoint ptr %i.cq to i64
  %i.dm = sub i64 %i.dk, %i.dl
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit33

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit33: ; preds = %bb.h, %.critedge.i28
  %.2.i29 = phi i64 [ %i.da, %bb.h ], [ %i.dm, %.critedge.i28 ] ; 4 uses
  %i.dn = add i64 %.2.i29, 6                      ; 7 uses
  %i.do = trunc i64 %.us-phi221 to i32            ; 3 uses
  %i.dp = ptrtoint ptr %.0273.i to i64
  %i.dq = sub i64 %.us-phi220, %i.dp              ; 2 uses
  %i.dr = trunc i64 %i.dq to i32                  ; 10 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.us-phi222, i64 %i.dn ; 9 uses
  %i.dt = icmp ult i32 %i.dr, 6
  br i1 %i.dt, label %_ZL13EmitInsertLenjPPj.exit, label %bb.j

bb.j:                                             ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit33
  %i.du = icmp ult i32 %i.dr, 130
  br i1 %i.du, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dv = add nsw i32 %i.dr, -2                   ; 3 uses
  %i.dw = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dv, i1 true)
  %i.dx = sub nuw nsw i32 30, %i.dw               ; 3 uses
  %i.dy = lshr i32 %i.dv, %i.dx                   ; 2 uses
  %i.dz = shl nuw nsw i32 %i.dx, 1
  %i.ea = add nuw nsw i32 %i.dy, 2
  %i.eb = add nuw nsw i32 %i.ea, %i.dz
  %i.ec = shl nuw nsw i32 %i.dy, %i.dx
  %i.ed = sub nsw i32 %i.dv, %i.ec
  %i.ee = shl nsw i32 %i.ed, 8
  %i.ef = or i32 %i.ee, %i.eb
  br label %_ZL13EmitInsertLenjPPj.exit

bb.l:                                             ; preds = %bb.j
  %i.eg = icmp ult i32 %i.dr, 2114
  br i1 %i.eg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.eh = add nsw i32 %i.dr, -66                  ; 2 uses
  %i.ei = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.eh, i1 true) ; 2 uses
  %.neg.i = ashr exact i32 -2147483648, %i.ei
  %i.ej = add nsw i32 %.neg.i, %i.eh
  %i.ek = shl nsw i32 %i.ej, 8
  %reass.sub = sub nsw i32 %i.ek, %i.ei
  %i.el = add nsw i32 %reass.sub, 41
  br label %_ZL13EmitInsertLenjPPj.exit

bb.n:                                             ; preds = %bb.l
  %i.em = icmp ult i32 %i.dr, 6210
  br i1 %i.em, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.en = shl nuw nsw i32 %i.dr, 8
  %i.eo = add nsw i32 %i.en, -541163
  br label %_ZL13EmitInsertLenjPPj.exit

bb.p:                                             ; preds = %bb.n
  %i.ep = icmp ult i32 %i.dr, 22594
  %i.eq = shl i32 %i.dr, 8                        ; 2 uses
  br i1 %i.ep, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.er = add nsw i32 %i.eq, -1589738
  br label %_ZL13EmitInsertLenjPPj.exit

bb.r:                                             ; preds = %bb.p
  %i.es = add i32 %i.eq, -5784041
  br label %_ZL13EmitInsertLenjPPj.exit

_ZL13EmitInsertLenjPPj.exit:                      ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit33, %bb.k, %bb.m, %bb.o, %bb.q, %bb.r
  %.sink = phi i32 [ %i.es, %bb.r ], [ %i.ef, %bb.k ], [ %i.el, %bb.m ], [ %i.eo, %bb.o ], [ %i.er, %bb.q ], [ %i.dr, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit33 ]
  store i32 %.sink, ptr %.189, align 4, !tbaa !3
  %i.et = getelementptr inbounds nuw i8, ptr %.189, i64 4
  %sext.i = shl i64 %i.dq, 32
  %i.eu = ashr exact i64 %sext.i, 32              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1, ptr align 1 %.0273.i, i64 %i.eu, i1 false)
  %i.ev = getelementptr inbounds i8, ptr %.1, i64 %i.eu ; 3 uses
  %i.ew = icmp eq i32 %.0276.i.fr, %i.do
  br i1 %i.ew, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZL13EmitInsertLenjPPj.exit
  %i.ex = add i32 %i.do, 3                        ; 3 uses
  %i.ey = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ex, i1 true) ; 2 uses
  %i.ez = sub nsw i32 30, %i.ey                   ; 2 uses
  %i.fa = lshr i32 %i.ex, %i.ez
  %i.fb = and i32 %i.fa, 1                        ; 2 uses
  %i.fc = or disjoint i32 %i.fb, 2
  %i.fd = shl nuw i32 %i.fc, %i.ez
  %i.fe = shl nuw nsw i32 %i.ey, 1
  %reass.sub287 = sub nsw i32 %i.fb, %i.fe
  %i.ff = add nsw i32 %reass.sub287, 138
  %i.fg = sub i32 %i.ex, %i.fd
  %i.fh = shl i32 %i.fg, 8
  %i.fi = or i32 %i.fh, %i.ff
  br label %bb.t

bb.t:                                             ; preds = %_ZL13EmitInsertLenjPPj.exit, %bb.s
  %storemerge = phi i32 [ %i.fi, %bb.s ], [ 64, %_ZL13EmitInsertLenjPPj.exit ]
  %.1277.i = phi i32 [ %i.do, %bb.s ], [ %.0276.i.fr, %_ZL13EmitInsertLenjPPj.exit ] ; 3 uses
  store i32 %storemerge, ptr %i.et, align 4, !tbaa !3
  %.290 = getelementptr inbounds nuw i8, ptr %.189, i64 8 ; 5 uses
  %i.fj = icmp ult i64 %i.dn, 12
  br i1 %i.fj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fk = trunc nuw nsw i64 %i.dn to i32
  %i.fl = add nuw nsw i32 %i.fk, 20
  store i32 %i.fl, ptr %.290, align 4, !tbaa !3
  br label %_ZL23EmitCopyLenLastDistancemPPj.exit

bb.v:                                             ; preds = %bb.t
  %i.fm = icmp ult i64 %i.dn, 72
  br i1 %i.fm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fn = add nsw i64 %.2.i29, -2                 ; 3 uses
  %i.fo = trunc nuw nsw i64 %i.fn to i32
  %i.fp = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fo, i1 true)
  %i.fq = sub nuw nsw i32 30, %i.fp
  %i.fr = zext nneg i32 %i.fq to i64              ; 3 uses
  %i.fs = lshr i64 %i.fn, %i.fr                   ; 2 uses
  %i.ft = shl nuw nsw i64 %i.fr, 1
  %i.fu = add nuw nsw i64 %i.fs, 28
  %i.fv = add nuw nsw i64 %i.fu, %i.ft
  %i.fw = shl nuw nsw i64 %i.fs, %i.fr
  %i.fx = sub nsw i64 %i.fn, %i.fw
  %i.fy = shl nsw i64 %i.fx, 8
  %i.fz = or i64 %i.fy, %i.fv
  %i.ga = trunc i64 %i.fz to i32
  store i32 %i.ga, ptr %.290, align 4, !tbaa !3
  br label %_ZL23EmitCopyLenLastDistancemPPj.exit

bb.x:                                             ; preds = %bb.v
  %i.gb = icmp ult i64 %i.dn, 136
  br i1 %i.gb, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.gc = add nsw i64 %.2.i29, -2                 ; 2 uses
  %i.gd = lshr i64 %i.gc, 5
  %i.ge = add nuw nsw i64 %i.gd, 54
  %i.gf = shl nuw nsw i64 %i.gc, 8
  %i.gg = and i64 %i.gf, 7936
  %i.gh = or i64 %i.ge, %i.gg
  %i.gi = trunc nuw nsw i64 %i.gh to i32
  store i32 %i.gi, ptr %.290, align 4, !tbaa !3
  %i.gj = getelementptr inbounds nuw i8, ptr %.189, i64 12
  store i32 64, ptr %i.gj, align 4, !tbaa !3
  br label %_ZL23EmitCopyLenLastDistancemPPj.exit

bb.z:                                             ; preds = %bb.x
  %i.gk = icmp ult i64 %i.dn, 2120
  br i1 %i.gk, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gl = add nsw i64 %.2.i29, -66                ; 2 uses
  %i.gm = trunc nuw nsw i64 %i.gl to i32
  %i.gn = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.gm, i1 true)
  %i.go = xor i32 %i.gn, 31
  %i.gp = zext nneg i32 %i.go to i64              ; 2 uses
  %i.gq = add nuw nsw i64 %i.gp, 52
  %.neg.i36 = shl nsw i64 -1, %i.gp
  %i.gr = add nsw i64 %.neg.i36, %i.gl
  %i.gs = shl nsw i64 %i.gr, 8
  %i.gt = or disjoint i64 %i.gs, %i.gq
  %i.gu = trunc i64 %i.gt to i32
  store i32 %i.gu, ptr %.290, align 4, !tbaa !3
  %i.gv = getelementptr inbounds nuw i8, ptr %.189, i64 12
  store i32 64, ptr %i.gv, align 4, !tbaa !3
  br label %_ZL23EmitCopyLenLastDistancemPPj.exit

bb.ab:                                            ; preds = %bb.z
  %.tr.i = trunc i64 %i.dn to i32
  %i.gw = shl i32 %.tr.i, 8
  %i.gx = add i32 %i.gw, -542657
  store i32 %i.gx, ptr %.290, align 4, !tbaa !3
  %i.gy = getelementptr inbounds nuw i8, ptr %.189, i64 12
  store i32 64, ptr %i.gy, align 4, !tbaa !3
  br label %_ZL23EmitCopyLenLastDistancemPPj.exit

_ZL23EmitCopyLenLastDistancemPPj.exit:            ; preds = %bb.u, %bb.w, %bb.y, %bb.aa, %bb.ab
  %.sink471 = phi i64 [ 12, %bb.u ], [ 12, %bb.w ], [ 16, %bb.y ], [ 16, %bb.aa ], [ 16, %bb.ab ]
  %i.gz = getelementptr inbounds nuw i8, ptr %.189, i64 %.sink471 ; 4 uses
  %.not312.i = icmp ult ptr %i.ds, %i.j
  br i1 %.not312.i, label %bb.ac, label %.thread124, !prof !40

bb.ac:                                            ; preds = %_ZL23EmitCopyLenLastDistancemPPj.exit
  %i.ha = getelementptr inbounds i8, ptr %i.ds, i64 -5
  %.0.copyload.i44 = load i64, ptr %i.ha, align 1 ; 3 uses
  %i.hb = mul i64 %.0.copyload.i44, 33215796281344
  %i.hc = lshr i64 %i.hb, 47
  %i.hd = ptrtoint ptr %i.ds to i64               ; 3 uses
  %i.he = sub i64 %i.hd, %i.a
  %i.hf = trunc i64 %i.he to i32                  ; 6 uses
  %i.hg = add i32 %i.hf, -5
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.hc
  store i32 %i.hg, ptr %i.hh, align 4, !tbaa !3
  %i.hi = shl i64 %.0.copyload.i44, 8
  %i.hj = and i64 %i.hi, -65536
  %i.hk = mul i64 %i.hj, 506832829
end_hunk_1
