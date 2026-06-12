inline.NumInlined: 20
inline.NumDeleted: 14
begin_hunk_0_@_ZN13duckdb_brotli29BrotliDecoderDecompressStreamEPNS_24BrotliDecoderStateStructEPmPPKhS2_PPhS2_:bb.a
  store i64 %i.ms, ptr %i.ak, align 8, !tbaa !53
  %i.mt = lshr i64 %i.mr, 6
  store i64 %i.mt, ptr %i.c, align 8, !tbaa !54
  %i.mu = and i64 %i.mr, 3                        ; 2 uses
  store i64 %i.mu, ptr %i.ar, align 8, !tbaa !81
  %i.mv = lshr i64 %i.mr, 2
  %i.mw = and i64 %i.mv, 15
  %i.mx = shl nuw nsw i64 %i.mw, %i.mu
  store i64 %i.mx, ptr %i.as, align 8, !tbaa !82
  %i.my = load ptr, ptr %i.at, align 8, !tbaa !34
  %i.mz = load ptr, ptr %i.au, align 8, !tbaa !24
  %i.na = load i64, ptr %i.av, align 8, !tbaa !32
  %i.nb = call noundef ptr %i.my(ptr noundef %i.mz, i64 noundef %i.na) ; 2 uses
  store ptr %i.nb, ptr %i.aw, align 8, !tbaa !83
  %i.nc = icmp eq ptr %i.nb, null
  br i1 %i.nc, label %.backedge.backedge, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  store i32 0, ptr %i.aq, align 4, !tbaa !56
  store i32 6, ptr %0, align 8, !tbaa !7
  br label %bb.br

bb.br:                                            ; preds = %._crit_edge, %bb.bq
  %i.nd = phi i32 [ %.pre652, %._crit_edge ], [ 0, %bb.bq ] ; 2 uses
  %i.ne = load i64, ptr %i.av, align 8, !tbaa !32 ; 2 uses
  %i.nf = trunc i64 %i.ne to i32
  %i.ng = icmp slt i32 %i.nd, %i.nf
  br i1 %i.ng, label %.preheader.lr.ph.i, label %.loopexit582

.preheader.lr.ph.i:                               ; preds = %bb.br
  %i.nh = sext i32 %i.nd to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.bs, %.preheader.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.nh, %.preheader.lr.ph.i ], [ %indvars.iv.next.i, %bb.bs ] ; 3 uses
  %.promoted.i = load i64, ptr %i.ak, align 8, !tbaa !53 ; 4 uses
  %i.ni = icmp ult i64 %.promoted.i, 2
  br i1 %i.ni, label %.lr.ph.i, label %.preheader._crit_edge.i

.preheader._crit_edge.i:                          ; preds = %.preheader.i
  %.pre.i = load i64, ptr %i.c, align 8, !tbaa !54
  br label %bb.bs

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.nj = load ptr, ptr %i.af, align 8, !tbaa !48
  %.promoted33.i = load ptr, ptr %i.ae, align 8, !tbaa !47 ; 3 uses
  %i.nk = icmp eq ptr %.promoted33.i, %i.nj
  br i1 %i.nk, label %_ZN13duckdb_brotliL16ReadContextModesEPNS_24BrotliDecoderStateStructE.exit, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i: ; preds = %.lr.ph.i
  %i.nl = load i64, ptr %i.c, align 8, !tbaa !54
  %i.nm = load i8, ptr %.promoted33.i, align 1, !tbaa !51
  %i.nn = zext i8 %i.nm to i64
  %i.no = shl nuw nsw i64 %i.nn, %.promoted.i
  %i.np = or i64 %i.no, %i.nl
  %i.nq = or disjoint i64 %.promoted.i, 8
  %i.nr = getelementptr inbounds nuw i8, ptr %.promoted33.i, i64 1
  store ptr %i.nr, ptr %i.ae, align 8, !tbaa !47
  br label %bb.bs

bb.bs:                                            ; preds = %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i, %.preheader._crit_edge.i
  %i.ns = phi i64 [ %i.np, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i ], [ %.pre.i, %.preheader._crit_edge.i ] ; 2 uses
  %.lcssa.i = phi i64 [ %i.nq, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i ], [ %.promoted.i, %.preheader._crit_edge.i ]
  %i.nt = add i64 %.lcssa.i, -2
  store i64 %i.nt, ptr %i.ak, align 8, !tbaa !53
  %i.nu = lshr i64 %i.ns, 2
  store i64 %i.nu, ptr %i.c, align 8, !tbaa !54
  %i.nv = trunc i64 %i.ns to i8
  %i.nw = and i8 %i.nv, 3
  %i.nx = load ptr, ptr %i.aw, align 8, !tbaa !83
  %i.ny = getelementptr inbounds i8, ptr %i.nx, i64 %indvars.iv.i
  store i8 %i.nw, ptr %i.ny, align 1, !tbaa !51
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.nz = load i64, ptr %i.av, align 8, !tbaa !32 ; 2 uses
  %sext.i = shl i64 %i.nz, 32
  %i.oa = ashr exact i64 %sext.i, 32
  %i.ob = icmp slt i64 %indvars.iv.next.i, %i.oa
  br i1 %i.ob, label %.preheader.i, label %.loopexit582, !llvm.loop !84

_ZN13duckdb_brotliL16ReadContextModesEPNS_24BrotliDecoderStateStructE.exit: ; preds = %.lr.ph.i
  %i.oc = trunc nsw i64 %indvars.iv.i to i32
  store i32 %i.oc, ptr %i.aq, align 4, !tbaa !56
  br label %.backedge.backedge

.loopexit582:                                     ; preds = %bb.bs, %bb.br
  %i.od = phi i64 [ %i.ne, %bb.br ], [ %i.nz, %bb.bs ]
  store i32 22, ptr %0, align 8, !tbaa !7
  br label %bb.bt

bb.bt:                                            ; preds = %._crit_edge653, %.loopexit582
  %i.oe = phi i64 [ %.pre654, %._crit_edge653 ], [ %i.od, %.loopexit582 ]
  %i.of = shl i64 %i.oe, 6
  %i.og = call fastcc noundef i32 @_ZN13duckdb_brotliL16DecodeContextMapEmPmPPhPNS_24BrotliDecoderStateStructE(i64 noundef %i.of, ptr noundef nonnull %i.ax, ptr noundef nonnull %i.ay, ptr noundef nonnull %0) ; 2 uses
  %.not373 = icmp eq i32 %i.og, 1
  br i1 %.not373, label %.preheader581.preheader, label %.backedge.backedge

.preheader581.preheader:                          ; preds = %bb.bt
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.az, i8 0, i64 32, i1 false), !tbaa !3
  %i.oh = load i64, ptr %i.av, align 8, !tbaa !32 ; 2 uses
  %.not637 = icmp eq i64 %i.oh, 0
  br i1 %.not637, label %_ZN13duckdb_brotliL30DetectTrivialLiteralBlockTypesEPNS_24BrotliDecoderStateStructE.exit, label %.lr.ph615

.lr.ph615:                                        ; preds = %.preheader581.preheader
  %i.oi = load ptr, ptr %i.ay, align 8, !tbaa !85
  br label %bb.bu

bb.bu:                                            ; preds = %.lr.ph615, %bb.bw
  %.1.i422614 = phi i64 [ 0, %.lr.ph615 ], [ %i.qf, %bb.bw ] ; 4 uses
  %i.oj = shl i64 %.1.i422614, 6
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.oj ; 8 uses
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !51  ; 6 uses
  %i.om = getelementptr i8, ptr %i.ok, i64 1
  %i.on = load i8, ptr %i.om, align 1, !tbaa !51
  %i.oo = getelementptr i8, ptr %i.ok, i64 2
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !51
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ok, i64 3
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !51
  %i.os = getelementptr inbounds nuw i8, ptr %i.ok, i64 4
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ok, i64 32
  %i.ow = load <16 x i8>, ptr %i.ou, align 1, !tbaa !51
  %i.ox = load <32 x i8>, ptr %i.ov, align 1, !tbaa !51
  %i.oy = shufflevector <16 x i8> %i.ow, <16 x i8> poison, <44 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 13, i32 12, i32 14, i32 15, i32 9, i32 8, i32 poison, i32 6, i32 7, i32 0, i32 2, i32 3> ; 2 uses
  %i.oz = insertelement <44 x i8> %i.oy, i8 %i.ol, i64 38
  %i.pa = shufflevector <32 x i8> %i.ox, <32 x i8> poison, <44 x i32> <i32 29, i32 28, i32 30, i32 31, i32 25, i32 24, i32 26, i32 27, i32 21, i32 20, i32 22, i32 23, i32 17, i32 16, i32 18, i32 19, i32 13, i32 12, i32 14, i32 15, i32 9, i32 8, i32 10, i32 11, i32 5, i32 4, i32 6, i32 7, i32 1, i32 0, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pb = shufflevector <44 x i8> %i.pa, <44 x i8> %i.oz, <44 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87> ; 2 uses
  %i.pc = shufflevector <44 x i8> %i.pb, <44 x i8> poison, <48 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 38, i32 38, i32 38, i32 39, i32 40, i32 38, i32 41, i32 42, i32 43>
  %i.pd = shufflevector <44 x i8> %i.pb, <44 x i8> %i.oy, <48 x i32> <i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 54, i32 55, i32 49, i32 48, i32 38, i32 38, i32 45, i32 38, i32 38, i32 38>
  %i.pe = icmp eq <48 x i8> %i.pc, %i.pd          ; 2 uses
  %i.pf = load <8 x i8>, ptr %i.ot, align 1, !tbaa !51
  %i.pg = insertelement <8 x i8> poison, i8 %i.ol, i64 0
  %i.ph = shufflevector <8 x i8> %i.pg, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.pi = icmp eq <8 x i8> %i.pf, %i.ph
  %i.pj = load <4 x i8>, ptr %i.os, align 1, !tbaa !51
  %i.pk = insertelement <4 x i8> poison, i8 %i.ol, i64 0
  %i.pl = shufflevector <4 x i8> %i.pk, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.pm = icmp eq <4 x i8> %i.pj, %i.pl
  %i.pn = icmp eq i8 %i.on, %i.ol
  %i.po = icmp eq i8 %i.op, %i.ol
  %i.pp = icmp eq i8 %i.or, %i.ol
  %i.pq = shufflevector <48 x i1> %i.pe, <48 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %rdx.op = and <8 x i1> %i.pq, %i.pi             ; 2 uses
  %i.pr = shufflevector <8 x i1> %rdx.op, <8 x i1> poison, <48 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ps = shufflevector <48 x i1> %i.pr, <48 x i1> %i.pe, <48 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95>
  %i.pt = shufflevector <8 x i1> %rdx.op, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op802 = and <4 x i1> %i.pt, %i.pm
  %i.pu = shufflevector <4 x i1> %rdx.op802, <4 x i1> poison, <48 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pv = shufflevector <48 x i1> %i.pu, <48 x i1> %i.ps, <48 x i32> <i32 0, i32 1, i32 2, i32 3, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95>
  %i.pw = bitcast <48 x i1> %i.pv to i48
  %i.px = icmp eq i48 %i.pw, -1
  %op.rdx = and i1 %i.px, %i.pn
  %op.rdx803 = and i1 %i.po, %i.pp
  %op.rdx804 = and i1 %op.rdx, %op.rdx803
  br i1 %op.rdx804, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.py = trunc i64 %.1.i422614 to i32
  %i.pz = and i32 %i.py, 31
  %i.qa = shl nuw i32 1, %i.pz
  %i.qb = lshr i64 %.1.i422614, 5
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.qb ; 2 uses
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !3
  %i.qe = or i32 %i.qd, %i.qa
  store i32 %i.qe, ptr %i.qc, align 4, !tbaa !3
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.qf = add nuw i64 %.1.i422614, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.qf, %i.oh
  br i1 %exitcond.not, label %_ZN13duckdb_brotliL30DetectTrivialLiteralBlockTypesEPNS_24BrotliDecoderStateStructE.exit, label %bb.bu, !llvm.loop !86

_ZN13duckdb_brotliL30DetectTrivialLiteralBlockTypesEPNS_24BrotliDecoderStateStructE.exit: ; preds = %bb.bw, %.preheader581.preheader
  store i32 23, ptr %0, align 8, !tbaa !7
  br label %bb.bx

bb.bx:                                            ; preds = %_ZN13duckdb_brotliL30DetectTrivialLiteralBlockTypesEPNS_24BrotliDecoderStateStructE.exit, %bb.v
  %i.qg = load i64, ptr %i.ar, align 8, !tbaa !81
  %i.qh = load i64, ptr %i.as, align 8, !tbaa !82 ; 2 uses
  %i.qi = add i64 %i.qh, 16                       ; 2 uses
  %i.qj = trunc i64 %i.qg to i32                  ; 4 uses
  %i.qk = add i32 %i.qj, 1                        ; 2 uses
  %i.ql = shl i32 24, %i.qk
  %i.qm = zext i32 %i.ql to i64
  %i.qn = add i64 %i.qi, %i.qm                    ; 2 uses
  %i.qo = load i32, ptr %i.aj, align 4
  %i.qp = and i32 %i.qo, 32
  %.not374 = icmp eq i32 %i.qp, 0
  br i1 %.not374, label %bb.cd, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.qq = trunc i64 %i.qh to i32                  ; 4 uses
  %i.qr = icmp ugt i32 %i.qq, 2147483643
  br i1 %i.qr, label %_ZN13duckdb_brotliL32BrotliCalculateDistanceCodeLimitEjjj.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.qs = sub nuw nsw i32 2147483644, %i.qq
  %i.qt = lshr i32 %i.qs, %i.qj
  %i.qu = add nuw i32 %i.qt, 4                    ; 2 uses
  %i.qv = lshr i32 %i.qu, 1
  %i.qw = call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.qv, i1 false) ; 2 uses
  %6 = sub nuw nsw i32 31, %i.qw
  %i.qx = lshr i32 %i.qu, %6
  %i.qy = and i32 %i.qx, 1
  %i.qz = shl nuw nsw i32 %i.qw, 1
  %i.ra = sub nuw nsw i32 60, %i.qz
  %i.rb = or disjoint i32 %i.qy, %i.ra            ; 2 uses
  %i.rc = icmp eq i32 %i.rb, 0
  br i1 %i.rc, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.rd = add nuw i32 %i.qq, 16
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  %notmask.i = shl nsw i32 -1, %i.qj
  %i.re = xor i32 %notmask.i, -1
  %i.rf = add nsw i32 %i.rb, -1
  %i.rg = shl i32 %i.rf, %i.qj
  %i.rh = or i32 %i.rg, %i.re
  %i.ri = add nuw i32 %i.qq, 17
  %i.rj = add i32 %i.ri, %i.rh
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.sroa.0.0.i = phi i32 [ %i.rd, %bb.ca ], [ %i.rj, %bb.cb ]
  %i.rk = zext i32 %.sroa.0.0.i to i64
  br label %_ZN13duckdb_brotliL32BrotliCalculateDistanceCodeLimitEjjj.exit

_ZN13duckdb_brotliL32BrotliCalculateDistanceCodeLimitEjjj.exit: ; preds = %bb.by, %bb.cc
  %.sroa.0.0.insert.insert.i = phi i64 [ %i.rk, %bb.cc ], [ 2147483660, %bb.by ]
  %i.rl = shl i32 62, %i.qk
  %i.rm = zext i32 %i.rl to i64
  %i.rn = add i64 %i.qi, %i.rm
  br label %bb.cd

bb.cd:                                            ; preds = %_ZN13duckdb_brotliL32BrotliCalculateDistanceCodeLimitEjjj.exit, %bb.bx
  %.0319 = phi i64 [ %i.rn, %_ZN13duckdb_brotliL32BrotliCalculateDistanceCodeLimitEjjj.exit ], [ %i.qn, %bb.bx ]
  %.0318 = phi i64 [ %.sroa.0.0.insert.insert.i, %_ZN13duckdb_brotliL32BrotliCalculateDistanceCodeLimitEjjj.exit ], [ %i.qn, %bb.bx ]
  %i.ro = load i64, ptr %i.ba, align 8, !tbaa !32
  %i.rp = shl i64 %i.ro, 2
  %i.rq = call fastcc noundef i32 @_ZN13duckdb_brotliL16DecodeContextMapEmPmPPhPNS_24BrotliDecoderStateStructE(i64 noundef %i.rp, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.bc, ptr noundef nonnull %0) ; 2 uses
  %.not375 = icmp eq i32 %i.rq, 1
  br i1 %.not375, label %bb.ce, label %.backedge.backedge

bb.ce:                                            ; preds = %bb.cd
  %i.rr = load i64, ptr %i.ax, align 8, !tbaa !87
  %i.rs = call noundef i32 @_ZN13duckdb_brotli33BrotliDecoderHuffmanTreeGroupInitEPNS_24BrotliDecoderStateStructEPNS_16HuffmanTreeGroupEmmm(ptr noundef nonnull %0, ptr noundef nonnull %i.bd, i64 noundef 256, i64 noundef 256, i64 noundef %i.rr)
  %i.rt = and i32 %i.rs, 1
  %i.ru = load i64, ptr %i.bf, align 8, !tbaa !32
  %i.rv = call noundef i32 @_ZN13duckdb_brotli33BrotliDecoderHuffmanTreeGroupInitEPNS_24BrotliDecoderStateStructEPNS_16HuffmanTreeGroupEmmm(ptr noundef nonnull %0, ptr noundef nonnull %i.be, i64 noundef 704, i64 noundef 704, i64 noundef %i.ru)
  %i.rw = and i32 %i.rt, %i.rv
  %i.rx = load i64, ptr %i.bb, align 8, !tbaa !88
  %i.ry = call noundef i32 @_ZN13duckdb_brotli33BrotliDecoderHuffmanTreeGroupInitEPNS_24BrotliDecoderStateStructEPNS_16HuffmanTreeGroupEmmm(ptr noundef nonnull %0, ptr noundef nonnull %i.bg, i64 noundef %.0319, i64 noundef %.0318, i64 noundef %i.rx)
  %i.rz = and i32 %i.rw, %i.ry
  %.not376 = icmp eq i32 %i.rz, 0
  br i1 %.not376, label %.thread557, label %.thread719

.thread557:                                       ; preds = %bb.ce
  %i.sa = load i64, ptr %1, align 8, !tbaa !32
  %i.sb = sub i64 %i.d, %i.sa
  %i.sc = call fastcc noundef i32 @_ZN13duckdb_brotliL13SaveErrorCodeEPNS_24BrotliDecoderStateStructENS_22BrotliDecoderErrorCodeEm(ptr noundef nonnull %0, i32 noundef -22, i64 noundef %i.sb)
  br label %bb.du

.thread719:                                       ; preds = %bb.ce
  store i32 0, ptr %i.aq, align 4, !tbaa !56
  store i32 24, ptr %0, align 8, !tbaa !7
  br label %bb.ci

bb.cf:                                            ; preds = %bb.v
  %.pre656 = load i32, ptr %i.aq, align 4, !tbaa !56 ; 4 uses
  switch i32 %.pre656, label %.thread570 [
    i32 0, label %bb.ci
    i32 1, label %bb.cg
    i32 2, label %bb.ch
  ]

bb.cg:                                            ; preds = %bb.cf
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  br label %bb.ci

.thread570:                                       ; preds = %bb.cf
  %i.sd = load i64, ptr %1, align 8, !tbaa !32
  %i.se = sub i64 %i.d, %i.sd
  %i.sf = call fastcc noundef i32 @_ZN13duckdb_brotliL13SaveErrorCodeEPNS_24BrotliDecoderStateStructENS_22BrotliDecoderErrorCodeEm(ptr noundef nonnull %0, i32 noundef -31, i64 noundef %i.se)
  br label %bb.du

bb.ci:                                            ; preds = %.thread719, %bb.cf, %bb.ch, %bb.cg
  %i.sg = phi i32 [ %.pre656, %bb.ch ], [ %.pre656, %bb.cg ], [ %.pre656, %bb.cf ], [ 0, %.thread719 ]
  %.0308 = phi ptr [ %i.bg, %bb.ch ], [ %i.be, %bb.cg ], [ %i.bd, %bb.cf ], [ %i.bd, %.thread719 ] ; 5 uses
  %i.sh = load i32, ptr %i.bh, align 8, !tbaa !70
  %.not.i453 = icmp eq i32 %i.sh, 1
  br i1 %.not.i453, label %._crit_edge26.i, label %bb.cj

._crit_edge26.i:                                  ; preds = %bb.ci
  %.pre.i457 = load i32, ptr %i.bj, align 4, !tbaa !89
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.si = getelementptr inbounds nuw i8, ptr %.0308, i64 8
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !90
  store ptr %i.sj, ptr %i.bi, align 8, !tbaa !91
  store i32 0, ptr %i.bj, align 4, !tbaa !89
  store i32 1, ptr %i.bh, align 8, !tbaa !70
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %._crit_edge26.i
  %i.sk = phi i32 [ %.pre.i457, %._crit_edge26.i ], [ 0, %bb.cj ]
  %i.sl = getelementptr inbounds nuw i8, ptr %.0308, i64 20 ; 2 uses
  %i.sm = load i16, ptr %i.sl, align 4, !tbaa !92
  %i.sn = zext i16 %i.sm to i32
  %i.so = icmp slt i32 %i.sk, %i.sn
  br i1 %i.so, label %.lr.ph.i455, label %.loopexit579

.lr.ph.i455:                                      ; preds = %bb.ck
  %i.sp = getelementptr inbounds nuw i8, ptr %.0308, i64 16
  %i.sq = getelementptr inbounds nuw i8, ptr %.0308, i64 18
  %.pre27.i = load ptr, ptr %i.bi, align 8, !tbaa !91
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cm, %.lr.ph.i455
  %i.sr = phi ptr [ %.pre27.i, %.lr.ph.i455 ], [ %i.td, %bb.cm ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.ss = load i16, ptr %i.sp, align 8, !tbaa !93
  %i.st = zext i16 %i.ss to i64
  %i.su = load i16, ptr %i.sq, align 2, !tbaa !94
  %i.sv = zext i16 %i.su to i64
  %i.sw = call fastcc noundef i32 @_ZN13duckdb_brotliL15ReadHuffmanCodeEmmPNS_11HuffmanCodeEPmPNS_24BrotliDecoderStateStructE(i64 noundef %i.st, i64 noundef %i.sv, ptr noundef %i.sr, ptr noundef nonnull %i.a, ptr noundef nonnull %0) ; 2 uses
  %.not23.i = icmp eq i32 %i.sw, 1
  br i1 %.not23.i, label %bb.cm, label %_ZN13duckdb_brotliL22HuffmanTreeGroupDecodeEPNS_16HuffmanTreeGroupEPNS_24BrotliDecoderStateStructE.exit

bb.cm:                                            ; preds = %bb.cl
  %i.sx = load ptr, ptr %i.bi, align 8, !tbaa !91 ; 2 uses
  %i.sy = load ptr, ptr %.0308, align 8, !tbaa !95
  %i.sz = load i32, ptr %i.bj, align 4, !tbaa !89 ; 2 uses
  %i.ta = sext i32 %i.sz to i64
  %i.tb = getelementptr inbounds [8 x i8], ptr %i.sy, i64 %i.ta
  store ptr %i.sx, ptr %i.tb, align 8, !tbaa !96
  %i.tc = load i64, ptr %i.a, align 8, !tbaa !32
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %i.tc ; 2 uses
  store ptr %i.td, ptr %i.bi, align 8, !tbaa !91
  %i.te = add nsw i32 %i.sz, 1                    ; 2 uses
  store i32 %i.te, ptr %i.bj, align 4, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.tf = load i16, ptr %i.sl, align 4, !tbaa !92
  %i.tg = zext i16 %i.tf to i32
  %i.th = icmp slt i32 %i.te, %i.tg
  br i1 %i.th, label %bb.cl, label %.loopexit579.loopexit, !llvm.loop !97

_ZN13duckdb_brotliL22HuffmanTreeGroupDecodeEPNS_16HuffmanTreeGroupEPNS_24BrotliDecoderStateStructE.exit: ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %.backedge.backedge

.loopexit579.loopexit:                            ; preds = %bb.cm
  %.pre657 = load i32, ptr %i.aq, align 4, !tbaa !56
  br label %.loopexit579

.loopexit579:                                     ; preds = %.loopexit579.loopexit, %bb.ck
  %i.ti = phi i32 [ %.pre657, %.loopexit579.loopexit ], [ %i.sg, %bb.ck ] ; 2 uses
  store i32 0, ptr %i.bh, align 8, !tbaa !70
  %i.tj = add nsw i32 %i.ti, 1
  store i32 %i.tj, ptr %i.aq, align 4, !tbaa !56
  %i.tk = icmp slt i32 %i.ti, 2
  br i1 %i.tk, label %.backedge.backedge, label %bb.cn

bb.cn:                                            ; preds = %.loopexit579
  store i32 25, ptr %0, align 8, !tbaa !7
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.v
  %i.tl = load i64, ptr %i.bk, align 8, !tbaa !32 ; 4 uses
  %i.tm = shl i64 %i.tl, 6
  %i.tn = load ptr, ptr %i.ay, align 8, !tbaa !85
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 %i.tm ; 2 uses
  store ptr %i.to, ptr %i.bl, align 8, !tbaa !98
  %i.tp = lshr i64 %i.tl, 5
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.tp
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !3
  %i.ts = zext i32 %i.tr to i64
  %i.tt = and i64 %i.tl, 31
  %i.tu = lshr i64 %i.ts, %i.tt
  %i.tv = trunc nuw i64 %i.tu to i32
  %i.tw = and i32 %i.tv, 1
  store i32 %i.tw, ptr %i.bm, align 8, !tbaa !99
  %i.tx = load ptr, ptr %i.bd, align 8, !tbaa !100
  %i.ty = load i8, ptr %i.to, align 1, !tbaa !51
  %i.tz = zext i8 %i.ty to i64
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.tx, i64 %i.tz
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !96
  store ptr %i.ub, ptr %i.bn, align 8, !tbaa !101
  %i.uc = load ptr, ptr %i.aw, align 8, !tbaa !83
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 %i.tl
  %i.ue = load i8, ptr %i.ud, align 1, !tbaa !51
  %i.uf = and i8 %i.ue, 3
  %i.ug = zext nneg i8 %i.uf to i64
  %i.uh = shl nuw nsw i64 %i.ug, 9
  %i.ui = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_brotli26_kBrotliContextLookupTableE, i64 %i.uh
  store ptr %i.ui, ptr %i.bo, align 8, !tbaa !102
  %i.uj = load ptr, ptr %i.bc, align 8, !tbaa !103
  store ptr %i.uj, ptr %i.bp, align 8, !tbaa !104
end_hunk_0
