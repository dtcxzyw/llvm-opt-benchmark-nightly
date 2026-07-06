inline.NumInlined: 24
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZL35BrotliCompressFragmentTwoPassImpl15PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
bb.av:                                            ; preds = %bb.at
  %i.lw = add i32 %i.lu, -5784041
  br label %_ZL13EmitInsertLenjPPj.exit35

_ZL13EmitInsertLenjPPj.exit35:                    ; preds = %bb.am, %bb.ao, %bb.aq, %bb.as, %bb.au, %bb.av
  %.sink415 = phi i32 [ %i.lw, %bb.av ], [ %i.lj, %bb.ao ], [ %i.lp, %bb.aq ], [ %i.ls, %bb.as ], [ %i.lv, %bb.au ], [ %i.kw, %bb.am ]
  store i32 %.sink415, ptr %.086, align 4, !tbaa !3
  %i.lx = getelementptr inbounds nuw i8, ptr %.086, i64 4
  %i.ly = and i64 %i.kv, 4294967295               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0, ptr align 1 %.3.i, i64 %i.ly, i1 false)
  %i.lz = getelementptr inbounds nuw i8, ptr %.0, i64 %i.ly
  br label %_ZL14CreateCommandsPKhmmS0_PimmPPhPPj.exit

_ZL14CreateCommandsPKhmmS0_PimmPPhPPj.exit:       ; preds = %.thread124, %_ZL13EmitInsertLenjPPj.exit35
  %.5 = phi ptr [ %i.lx, %_ZL13EmitInsertLenjPPj.exit35 ], [ %.086, %.thread124 ]
  %.3 = phi ptr [ %i.lz, %_ZL13EmitInsertLenjPPj.exit35 ], [ %.0, %.thread124 ]
  %i.ma = ptrtoint ptr %.3 to i64
  %i.mb = sub i64 %i.ma, %i.b                     ; 2 uses
  %i.mc = tail call fastcc noundef i32 @_ZL14ShouldCompressPN13duckdb_brotli18BrotliTwoPassArenaEPKhmm(ptr noundef %0, ptr noundef %.0.i261, i64 noundef %i.d, i64 noundef %i.mb)
  %.not38.i = icmp eq i32 %i.mc, 0
  br i1 %.not38.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZL14CreateCommandsPKhmmS0_PimmPPhPPj.exit
  %i.md = ptrtoint ptr %.5 to i64
  %i.me = sub i64 %i.md, %i.c
  %i.mf = ashr exact i64 %i.me, 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  %i.mg = load i64, ptr %6, align 8, !tbaa !7, !alias.scope !364, !noalias !367 ; 3 uses
  %i.mh = lshr i64 %i.mg, 3
  %i.mi = getelementptr inbounds nuw i8, ptr %7, i64 %i.mh ; 2 uses
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !9, !alias.scope !367, !noalias !364
  %i.mk = zext i8 %i.mj to i64
  store i64 %i.mk, ptr %i.mi, align 1, !noalias !364
  %i.ml = add i64 %i.mg, 1                        ; 3 uses
  store i64 %i.ml, ptr %6, align 8, !tbaa !7, !alias.scope !364, !noalias !367
  %i.mm = icmp ult i64 %.037.i260, 65537
  %.0.i53 = select i1 %i.mm, i64 4, i64 5         ; 2 uses
  %i.mn = add nsw i64 %.0.i53, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.mo = lshr i64 %i.ml, 3
  %i.mp = getelementptr inbounds nuw i8, ptr %7, i64 %i.mo ; 2 uses
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !9, !alias.scope !372, !noalias !369
  %i.mr = zext i8 %i.mq to i64
  %i.ms = and i64 %i.ml, 7
  %i.mt = shl nuw nsw i64 %i.mn, %i.ms
  %i.mu = or i64 %i.mt, %i.mr
  store i64 %i.mu, ptr %i.mp, align 1, !noalias !369
  %i.mv = add i64 %i.mg, 3                        ; 4 uses
  store i64 %i.mv, ptr %6, align 8, !tbaa !7, !alias.scope !369, !noalias !372
  %i.mw = shl nuw nsw i64 %.0.i53, 2
  %i.mx = add nsw i64 %i.d, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377)
  %i.my = lshr i64 %i.mv, 3
  %i.mz = getelementptr inbounds nuw i8, ptr %7, i64 %i.my ; 2 uses
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !9, !alias.scope !377, !noalias !374
  %i.nb = zext i8 %i.na to i64
  %i.nc = and i64 %i.mv, 7
  %i.nd = shl nuw nsw i64 %i.mx, %i.nc
  %i.ne = or i64 %i.nd, %i.nb
  store i64 %i.ne, ptr %i.mz, align 1, !noalias !374
  %i.nf = add i64 %i.mv, %i.mw                    ; 4 uses
  store i64 %i.nf, ptr %6, align 8, !tbaa !7, !alias.scope !374, !noalias !377
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  %i.ng = lshr i64 %i.nf, 3
  %i.nh = getelementptr inbounds nuw i8, ptr %7, i64 %i.ng ; 2 uses
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !9, !alias.scope !382, !noalias !379
  %i.nj = zext i8 %i.ni to i64
  store i64 %i.nj, ptr %i.nh, align 1, !noalias !379
  %i.nk = add i64 %i.nf, 1                        ; 2 uses
  store i64 %i.nk, ptr %6, align 8, !tbaa !7, !alias.scope !379, !noalias !382
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !387)
  %i.nl = lshr i64 %i.nk, 3
  %i.nm = getelementptr inbounds nuw i8, ptr %7, i64 %i.nl ; 2 uses
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !9, !alias.scope !387, !noalias !384
  %i.no = zext i8 %i.nn to i64
  store i64 %i.no, ptr %i.nm, align 1, !noalias !384
  %i.np = add i64 %i.nf, 14
  store i64 %i.np, ptr %6, align 8, !tbaa !7, !alias.scope !384, !noalias !387
  tail call fastcc void @_ZL13StoreCommandsPN13duckdb_brotli18BrotliTwoPassArenaEPKhmPKjmPmPh(ptr noundef %0, ptr noundef %4, i64 noundef %i.mb, ptr noundef %3, i64 noundef %i.mf, ptr noundef nonnull %6, ptr noundef %7)
  br label %bb.ay

bb.ax:                                            ; preds = %_ZL14CreateCommandsPKhmmS0_PimmPPhPPj.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  %i.nq = load i64, ptr %6, align 8, !tbaa !7, !alias.scope !389, !noalias !392 ; 3 uses
  %i.nr = lshr i64 %i.nq, 3
  %i.ns = getelementptr inbounds nuw i8, ptr %7, i64 %i.nr ; 2 uses
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !9, !alias.scope !392, !noalias !389
  %i.nu = zext i8 %i.nt to i64
  store i64 %i.nu, ptr %i.ns, align 1, !noalias !389
  %i.nv = add i64 %i.nq, 1                        ; 3 uses
  store i64 %i.nv, ptr %6, align 8, !tbaa !7, !alias.scope !389, !noalias !392
  %i.nw = icmp ult i64 %.037.i260, 65537
  %.0.i.i = select i1 %i.nw, i64 4, i64 5         ; 2 uses
  %i.nx = add nsw i64 %.0.i.i, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  %i.ny = lshr i64 %i.nv, 3
  %i.nz = getelementptr inbounds nuw i8, ptr %7, i64 %i.ny ; 2 uses
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !9, !alias.scope !397, !noalias !394
  %i.ob = zext i8 %i.oa to i64
  %i.oc = and i64 %i.nv, 7
  %i.od = shl nuw nsw i64 %i.nx, %i.oc
  %i.oe = or i64 %i.od, %i.ob
  store i64 %i.oe, ptr %i.nz, align 1, !noalias !394
  %i.of = add i64 %i.nq, 3                        ; 4 uses
  store i64 %i.of, ptr %6, align 8, !tbaa !7, !alias.scope !394, !noalias !397
  %i.og = shl nuw nsw i64 %.0.i.i, 2
  %i.oh = add nsw i64 %i.d, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402)
  %i.oi = lshr i64 %i.of, 3
  %i.oj = getelementptr inbounds nuw i8, ptr %7, i64 %i.oi ; 2 uses
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !9, !alias.scope !402, !noalias !399
  %i.ol = zext i8 %i.ok to i64
  %i.om = and i64 %i.of, 7
  %i.on = shl nuw nsw i64 %i.oh, %i.om
  %i.oo = or i64 %i.on, %i.ol
  store i64 %i.oo, ptr %i.oj, align 1, !noalias !399
  %i.op = add i64 %i.of, %i.og                    ; 4 uses
  store i64 %i.op, ptr %6, align 8, !tbaa !7, !alias.scope !399, !noalias !402
  %i.oq = lshr i64 %i.op, 3
  %i.or = getelementptr inbounds nuw i8, ptr %7, i64 %i.oq ; 2 uses
  %i.os = load i8, ptr %i.or, align 1, !tbaa !9, !alias.scope !404, !noalias !407
  %i.ot = zext i8 %i.os to i64
  %i.ou = and i64 %i.op, 7
  %i.ov = shl nuw nsw i64 1, %i.ou
  %i.ow = or i64 %i.ov, %i.ot
  store i64 %i.ow, ptr %i.or, align 1, !noalias !407
  %i.ox = add i64 %i.op, 8
  %i.oy = and i64 %i.ox, 4294967288               ; 2 uses
  store i64 %i.oy, ptr %6, align 8, !tbaa !7
  %i.oz = lshr exact i64 %i.oy, 3
  %i.pa = getelementptr inbounds nuw i8, ptr %7, i64 %i.oz
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pa, ptr readonly align 1 %.0.i261, i64 %i.d, i1 false)
  %i.pb = shl nuw nsw i64 %i.d, 3
  %i.pc = load i64, ptr %6, align 8, !tbaa !7
  %i.pd = add i64 %i.pc, %i.pb                    ; 2 uses
  store i64 %i.pd, ptr %6, align 8, !tbaa !7
  %i.pe = lshr i64 %i.pd, 3
  %i.pf = getelementptr inbounds nuw i8, ptr %7, i64 %i.pe
  store i8 0, ptr %i.pf, align 1, !tbaa !9
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.pg = sub i64 %.037.i260, %i.d                ; 2 uses
  %.not.i = icmp eq i64 %i.pg, 0
  br i1 %.not.i, label %_ZL33BrotliCompressFragmentTwoPassImplPN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPimmPmS5_.exit, label %bb.b, !llvm.loop !93

_ZL33BrotliCompressFragmentTwoPassImplPN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPimmPmS5_.exit: ; preds = %bb.ay, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @_ZL35BrotliCompressFragmentTwoPassImpl16PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef captures(none) %5, ptr noundef %6, ptr noundef %7) unnamed_addr #1 {
bb.a:
  %.not.i280 = icmp eq i64 %2, 0
  br i1 %.not.i280, label %_ZL33BrotliCompressFragmentTwoPassImplPN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPimmPmS5_.exit, label %.lr.ph283

.lr.ph283:                                        ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.b = ptrtoint ptr %4 to i64
  %i.c = ptrtoint ptr %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph283, %bb.bg
  %.0.i282 = phi ptr [ %1, %.lr.ph283 ], [ %i.e, %bb.bg ] ; 6 uses
  %.037.i281 = phi i64 [ %2, %.lr.ph283 ], [ %i.su, %bb.bg ] ; 6 uses
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
  %.1 = phi ptr [ %4, %bb.c ], [ %i.fx, %_ZL7IsMatchPKhS0_m.exit13.thread.backedge ] ; 6 uses
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
  %.027.i20.lcssa = phi i64 [ %i.cs, %.split218.us ], [ %i.dg, %bb.i ] ; 8 uses
  %.025.i21.lcssa = phi ptr [ %i.cr, %.split218.us ], [ %i.de, %bb.i ] ; 7 uses
  %.022.i22.lcssa = phi ptr [ %i.cq, %.split218.us ], [ %i.df, %bb.i ] ; 10 uses
  %.not.i27236 = icmp eq i64 %.027.i20.lcssa, 0
  br i1 %.not.i27236, label %.critedge.i28, label %.lr.ph240.preheader

.lr.ph240.preheader:                              ; preds = %.preheader140
  %scevgep = getelementptr i8, ptr %.022.i22.lcssa, i64 %.027.i20.lcssa ; 7 uses
  %i.cu = load i8, ptr %.022.i22.lcssa, align 1, !tbaa !9
  %i.cv = load i8, ptr %.025.i21.lcssa, align 1, !tbaa !9
  %i.cw = icmp eq i8 %i.cu, %i.cv
  br i1 %i.cw, label %bb.j, label %.critedge.i28

.lr.ph232:                                        ; preds = %.split218.us, %bb.i
  %.022.i22231 = phi ptr [ %i.df, %bb.i ], [ %i.cq, %.split218.us ] ; 3 uses
  %.025.i21230 = phi ptr [ %i.de, %bb.i ], [ %i.cr, %.split218.us ] ; 2 uses
  %.027.i20229 = phi i64 [ %i.dg, %bb.i ], [ %i.cs, %.split218.us ]
  %.0.copyload.i37 = load i64, ptr %.025.i21230, align 1 ; 2 uses
  %.0.copyload.i = load i64, ptr %.022.i22231, align 1 ; 2 uses
  %.not30.i30 = icmp eq i64 %.0.copyload.i37, %.0.copyload.i
  br i1 %.not30.i30, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph232
  %i.cx = xor i64 %.0.copyload.i, %.0.copyload.i37
  %i.cy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cx, i1 true)
  %i.cz = ptrtoint ptr %.022.i22231 to i64
  %i.da = ptrtoint ptr %i.cq to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = lshr i64 %i.cy, 3
  %i.dd = add i64 %i.db, %i.dc
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit33

bb.i:                                             ; preds = %.lr.ph232
  %i.de = getelementptr inbounds nuw i8, ptr %.025.i21230, i64 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.022.i22231, i64 8 ; 2 uses
  %i.dg = add i64 %.027.i20229, -8                ; 3 uses
  %i.dh = icmp ugt i64 %i.dg, 7
  br i1 %i.dh, label %.lr.ph232, label %.preheader140, !llvm.loop !45

bb.j:                                             ; preds = %.lr.ph240.preheader
  %.not.i27 = icmp eq i64 %.027.i20.lcssa, 1
  br i1 %.not.i27, label %.critedge.i28, label %.lr.ph240.1

.lr.ph240.1:                                      ; preds = %bb.j
  %i.di = getelementptr inbounds nuw i8, ptr %.022.i22.lcssa, i64 1 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.025.i21.lcssa, i64 1
  %i.dk = load i8, ptr %i.di, align 1, !tbaa !9
  %i.dl = load i8, ptr %i.dj, align 1, !tbaa !9
  %i.dm = icmp eq i8 %i.dk, %i.dl
  br i1 %i.dm, label %bb.k, label %.critedge.i28

bb.k:                                             ; preds = %.lr.ph240.1
  %.not.i27.1 = icmp eq i64 %.027.i20.lcssa, 2
  br i1 %.not.i27.1, label %.critedge.i28, label %.lr.ph240.2

.lr.ph240.2:                                      ; preds = %bb.k
  %i.dn = getelementptr inbounds nuw i8, ptr %.022.i22.lcssa, i64 2 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.025.i21.lcssa, i64 2
  %i.dp = load i8, ptr %i.dn, align 1, !tbaa !9
  %i.dq = load i8, ptr %i.do, align 1, !tbaa !9
  %i.dr = icmp eq i8 %i.dp, %i.dq
  br i1 %i.dr, label %bb.l, label %.critedge.i28

bb.l:                                             ; preds = %.lr.ph240.2
  %.not.i27.2 = icmp eq i64 %.027.i20.lcssa, 3
  br i1 %.not.i27.2, label %.critedge.i28, label %.lr.ph240.3

.lr.ph240.3:                                      ; preds = %bb.l
  %i.ds = getelementptr inbounds nuw i8, ptr %.022.i22.lcssa, i64 3 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.025.i21.lcssa, i64 3
  %i.du = load i8, ptr %i.ds, align 1, !tbaa !9
  %i.dv = load i8, ptr %i.dt, align 1, !tbaa !9
  %i.dw = icmp eq i8 %i.du, %i.dv
  br i1 %i.dw, label %bb.m, label %.critedge.i28

bb.m:                                             ; preds = %.lr.ph240.3
  %.not.i27.3 = icmp eq i64 %.027.i20.lcssa, 4
  br i1 %.not.i27.3, label %.critedge.i28, label %.lr.ph240.4

.lr.ph240.4:                                      ; preds = %bb.m
  %i.dx = getelementptr inbounds nuw i8, ptr %.022.i22.lcssa, i64 4 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.025.i21.lcssa, i64 4
  %i.dz = load i8, ptr %i.dx, align 1, !tbaa !9
  %i.ea = load i8, ptr %i.dy, align 1, !tbaa !9
  %i.eb = icmp eq i8 %i.dz, %i.ea
  br i1 %i.eb, label %bb.n, label %.critedge.i28

bb.n:                                             ; preds = %.lr.ph240.4
  %.not.i27.4 = icmp eq i64 %.027.i20.lcssa, 5
  br i1 %.not.i27.4, label %.critedge.i28, label %.lr.ph240.5

.lr.ph240.5:                                      ; preds = %bb.n
  %i.ec = getelementptr inbounds nuw i8, ptr %.022.i22.lcssa, i64 5 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.025.i21.lcssa, i64 5
  %i.ee = load i8, ptr %i.ec, align 1, !tbaa !9
  %i.ef = load i8, ptr %i.ed, align 1, !tbaa !9
  %i.eg = icmp eq i8 %i.ee, %i.ef
  br i1 %i.eg, label %bb.o, label %.critedge.i28

bb.o:                                             ; preds = %.lr.ph240.5
  %.not.i27.5 = icmp eq i64 %.027.i20.lcssa, 6
  br i1 %.not.i27.5, label %.critedge.i28, label %.lr.ph240.6

.lr.ph240.6:                                      ; preds = %bb.o
  %i.eh = getelementptr inbounds nuw i8, ptr %.022.i22.lcssa, i64 6 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.025.i21.lcssa, i64 6
  %i.ej = load i8, ptr %i.eh, align 1, !tbaa !9
  %i.ek = load i8, ptr %i.ei, align 1, !tbaa !9
  %i.el = icmp eq i8 %i.ej, %i.ek
end_hunk_0
begin_hunk_1_@_ZL35BrotliCompressFragmentTwoPassImpl16PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_:bb.a
bb.bd:                                            ; preds = %bb.bb
  %i.pk = add i32 %i.pi, -5784041
  br label %_ZL13EmitInsertLenjPPj.exit35

_ZL13EmitInsertLenjPPj.exit35:                    ; preds = %bb.au, %bb.aw, %bb.ay, %bb.ba, %bb.bc, %bb.bd
  %.sink473 = phi i32 [ %i.pk, %bb.bd ], [ %i.ox, %bb.aw ], [ %i.pd, %bb.ay ], [ %i.pg, %bb.ba ], [ %i.pj, %bb.bc ], [ %i.ok, %bb.au ]
  store i32 %.sink473, ptr %.088, align 4, !tbaa !3
  %i.pl = getelementptr inbounds nuw i8, ptr %.088, i64 4
  %i.pm = and i64 %i.oj, 4294967295               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0, ptr align 1 %.3.i, i64 %i.pm, i1 false)
  %i.pn = getelementptr inbounds nuw i8, ptr %.0, i64 %i.pm
  br label %_ZL14CreateCommandsPKhmmS0_PimmPPhPPj.exit

_ZL14CreateCommandsPKhmmS0_PimmPPhPPj.exit:       ; preds = %.thread124, %_ZL13EmitInsertLenjPPj.exit35
  %.5 = phi ptr [ %i.pl, %_ZL13EmitInsertLenjPPj.exit35 ], [ %.088, %.thread124 ]
  %.3 = phi ptr [ %i.pn, %_ZL13EmitInsertLenjPPj.exit35 ], [ %.0, %.thread124 ]
  %i.po = ptrtoint ptr %.3 to i64
  %i.pp = sub i64 %i.po, %i.b                     ; 2 uses
  %i.pq = tail call fastcc noundef i32 @_ZL14ShouldCompressPN13duckdb_brotli18BrotliTwoPassArenaEPKhmm(ptr noundef %0, ptr noundef %.0.i282, i64 noundef %i.d, i64 noundef %i.pp)
  %.not38.i = icmp eq i32 %i.pq, 0
  br i1 %.not38.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %_ZL14CreateCommandsPKhmmS0_PimmPPhPPj.exit
  %i.pr = ptrtoint ptr %.5 to i64
  %i.ps = sub i64 %i.pr, %i.c
  %i.pt = ashr exact i64 %i.ps, 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  %i.pu = load i64, ptr %6, align 8, !tbaa !7, !alias.scope !412, !noalias !415 ; 3 uses
  %i.pv = lshr i64 %i.pu, 3
  %i.pw = getelementptr inbounds nuw i8, ptr %7, i64 %i.pv ; 2 uses
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !9, !alias.scope !415, !noalias !412
  %i.py = zext i8 %i.px to i64
  store i64 %i.py, ptr %i.pw, align 1, !noalias !412
  %i.pz = add i64 %i.pu, 1                        ; 3 uses
  store i64 %i.pz, ptr %6, align 8, !tbaa !7, !alias.scope !412, !noalias !415
  %i.qa = icmp ult i64 %.037.i281, 65537
  %.0.i55 = select i1 %i.qa, i64 4, i64 5         ; 2 uses
  %i.qb = add nsw i64 %.0.i55, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !420)
  %i.qc = lshr i64 %i.pz, 3
  %i.qd = getelementptr inbounds nuw i8, ptr %7, i64 %i.qc ; 2 uses
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !9, !alias.scope !420, !noalias !417
  %i.qf = zext i8 %i.qe to i64
  %i.qg = and i64 %i.pz, 7
  %i.qh = shl nuw nsw i64 %i.qb, %i.qg
  %i.qi = or i64 %i.qh, %i.qf
  store i64 %i.qi, ptr %i.qd, align 1, !noalias !417
  %i.qj = add i64 %i.pu, 3                        ; 4 uses
  store i64 %i.qj, ptr %6, align 8, !tbaa !7, !alias.scope !417, !noalias !420
  %i.qk = shl nuw nsw i64 %.0.i55, 2
  %i.ql = add nsw i64 %i.d, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  %i.qm = lshr i64 %i.qj, 3
  %i.qn = getelementptr inbounds nuw i8, ptr %7, i64 %i.qm ; 2 uses
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !9, !alias.scope !425, !noalias !422
  %i.qp = zext i8 %i.qo to i64
  %i.qq = and i64 %i.qj, 7
  %i.qr = shl nuw nsw i64 %i.ql, %i.qq
  %i.qs = or i64 %i.qr, %i.qp
  store i64 %i.qs, ptr %i.qn, align 1, !noalias !422
  %i.qt = add i64 %i.qj, %i.qk                    ; 4 uses
  store i64 %i.qt, ptr %6, align 8, !tbaa !7, !alias.scope !422, !noalias !425
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  %i.qu = lshr i64 %i.qt, 3
  %i.qv = getelementptr inbounds nuw i8, ptr %7, i64 %i.qu ; 2 uses
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !9, !alias.scope !430, !noalias !427
  %i.qx = zext i8 %i.qw to i64
  store i64 %i.qx, ptr %i.qv, align 1, !noalias !427
  %i.qy = add i64 %i.qt, 1                        ; 2 uses
  store i64 %i.qy, ptr %6, align 8, !tbaa !7, !alias.scope !427, !noalias !430
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  %i.qz = lshr i64 %i.qy, 3
  %i.ra = getelementptr inbounds nuw i8, ptr %7, i64 %i.qz ; 2 uses
  %i.rb = load i8, ptr %i.ra, align 1, !tbaa !9, !alias.scope !435, !noalias !432
  %i.rc = zext i8 %i.rb to i64
  store i64 %i.rc, ptr %i.ra, align 1, !noalias !432
  %i.rd = add i64 %i.qt, 14
  store i64 %i.rd, ptr %6, align 8, !tbaa !7, !alias.scope !432, !noalias !435
  tail call fastcc void @_ZL13StoreCommandsPN13duckdb_brotli18BrotliTwoPassArenaEPKhmPKjmPmPh(ptr noundef %0, ptr noundef %4, i64 noundef %i.pp, ptr noundef %3, i64 noundef %i.pt, ptr noundef nonnull %6, ptr noundef %7)
  br label %bb.bg

bb.bf:                                            ; preds = %_ZL14CreateCommandsPKhmmS0_PimmPPhPPj.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !440)
  %i.re = load i64, ptr %6, align 8, !tbaa !7, !alias.scope !437, !noalias !440 ; 3 uses
  %i.rf = lshr i64 %i.re, 3
  %i.rg = getelementptr inbounds nuw i8, ptr %7, i64 %i.rf ; 2 uses
  %i.rh = load i8, ptr %i.rg, align 1, !tbaa !9, !alias.scope !440, !noalias !437
  %i.ri = zext i8 %i.rh to i64
  store i64 %i.ri, ptr %i.rg, align 1, !noalias !437
  %i.rj = add i64 %i.re, 1                        ; 3 uses
  store i64 %i.rj, ptr %6, align 8, !tbaa !7, !alias.scope !437, !noalias !440
  %i.rk = icmp ult i64 %.037.i281, 65537
  %.0.i.i = select i1 %i.rk, i64 4, i64 5         ; 2 uses
  %i.rl = add nsw i64 %.0.i.i, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445)
  %i.rm = lshr i64 %i.rj, 3
  %i.rn = getelementptr inbounds nuw i8, ptr %7, i64 %i.rm ; 2 uses
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !9, !alias.scope !445, !noalias !442
  %i.rp = zext i8 %i.ro to i64
  %i.rq = and i64 %i.rj, 7
  %i.rr = shl nuw nsw i64 %i.rl, %i.rq
  %i.rs = or i64 %i.rr, %i.rp
  store i64 %i.rs, ptr %i.rn, align 1, !noalias !442
  %i.rt = add i64 %i.re, 3                        ; 4 uses
  store i64 %i.rt, ptr %6, align 8, !tbaa !7, !alias.scope !442, !noalias !445
  %i.ru = shl nuw nsw i64 %.0.i.i, 2
  %i.rv = add nsw i64 %i.d, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !450)
  %i.rw = lshr i64 %i.rt, 3
  %i.rx = getelementptr inbounds nuw i8, ptr %7, i64 %i.rw ; 2 uses
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !9, !alias.scope !450, !noalias !447
  %i.rz = zext i8 %i.ry to i64
  %i.sa = and i64 %i.rt, 7
  %i.sb = shl nuw nsw i64 %i.rv, %i.sa
  %i.sc = or i64 %i.sb, %i.rz
  store i64 %i.sc, ptr %i.rx, align 1, !noalias !447
  %i.sd = add i64 %i.rt, %i.ru                    ; 4 uses
  store i64 %i.sd, ptr %6, align 8, !tbaa !7, !alias.scope !447, !noalias !450
  %i.se = lshr i64 %i.sd, 3
  %i.sf = getelementptr inbounds nuw i8, ptr %7, i64 %i.se ; 2 uses
  %i.sg = load i8, ptr %i.sf, align 1, !tbaa !9, !alias.scope !452, !noalias !455
  %i.sh = zext i8 %i.sg to i64
  %i.si = and i64 %i.sd, 7
  %i.sj = shl nuw nsw i64 1, %i.si
  %i.sk = or i64 %i.sj, %i.sh
  store i64 %i.sk, ptr %i.sf, align 1, !noalias !455
  %i.sl = add i64 %i.sd, 8
  %i.sm = and i64 %i.sl, 4294967288               ; 2 uses
  store i64 %i.sm, ptr %6, align 8, !tbaa !7
  %i.sn = lshr exact i64 %i.sm, 3
  %i.so = getelementptr inbounds nuw i8, ptr %7, i64 %i.sn
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.so, ptr readonly align 1 %.0.i282, i64 %i.d, i1 false)
  %i.sp = shl nuw nsw i64 %i.d, 3
  %i.sq = load i64, ptr %6, align 8, !tbaa !7
  %i.sr = add i64 %i.sq, %i.sp                    ; 2 uses
  store i64 %i.sr, ptr %6, align 8, !tbaa !7
  %i.ss = lshr i64 %i.sr, 3
  %i.st = getelementptr inbounds nuw i8, ptr %7, i64 %i.ss
  store i8 0, ptr %i.st, align 1, !tbaa !9
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.su = sub i64 %.037.i281, %i.d                ; 2 uses
  %.not.i = icmp eq i64 %i.su, 0
  br i1 %.not.i, label %_ZL33BrotliCompressFragmentTwoPassImplPN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPimmPmS5_.exit, label %bb.b, !llvm.loop !93

_ZL33BrotliCompressFragmentTwoPassImplPN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPimmPmS5_.exit: ; preds = %bb.bg, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @_ZL35BrotliCompressFragmentTwoPassImpl17PN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPiPmS5_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef captures(none) %5, ptr noundef %6, ptr noundef %7) unnamed_addr #1 {
bb.a:
  %.not.i280 = icmp eq i64 %2, 0
  br i1 %.not.i280, label %_ZL33BrotliCompressFragmentTwoPassImplPN13duckdb_brotli18BrotliTwoPassArenaEPKhmiPjPhPimmPmS5_.exit, label %.lr.ph283

.lr.ph283:                                        ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.b = ptrtoint ptr %4 to i64
  %i.c = ptrtoint ptr %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph283, %bb.bg
  %.0.i282 = phi ptr [ %1, %.lr.ph283 ], [ %i.e, %bb.bg ] ; 6 uses
  %.037.i281 = phi i64 [ %2, %.lr.ph283 ], [ %i.su, %bb.bg ] ; 6 uses
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
  %.1 = phi ptr [ %4, %bb.c ], [ %i.fx, %_ZL7IsMatchPKhS0_m.exit13.thread.backedge ] ; 6 uses
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
  %.027.i20.lcssa = phi i64 [ %i.cs, %.split218.us ], [ %i.dg, %bb.i ] ; 8 uses
  %.025.i21.lcssa = phi ptr [ %i.cr, %.split218.us ], [ %i.de, %bb.i ] ; 7 uses
  %.022.i22.lcssa = phi ptr [ %i.cq, %.split218.us ], [ %i.df, %bb.i ] ; 10 uses
  %.not.i27236 = icmp eq i64 %.027.i20.lcssa, 0
  br i1 %.not.i27236, label %.critedge.i28, label %.lr.ph240.preheader

.lr.ph240.preheader:                              ; preds = %.preheader140
  %scevgep = getelementptr i8, ptr %.022.i22.lcssa, i64 %.027.i20.lcssa ; 7 uses
  %i.cu = load i8, ptr %.022.i22.lcssa, align 1, !tbaa !9
  %i.cv = load i8, ptr %.025.i21.lcssa, align 1, !tbaa !9
  %i.cw = icmp eq i8 %i.cu, %i.cv
  br i1 %i.cw, label %bb.j, label %.critedge.i28

.lr.ph232:                                        ; preds = %.split218.us, %bb.i
  %.022.i22231 = phi ptr [ %i.df, %bb.i ], [ %i.cq, %.split218.us ] ; 3 uses
  %.025.i21230 = phi ptr [ %i.de, %bb.i ], [ %i.cr, %.split218.us ] ; 2 uses
  %.027.i20229 = phi i64 [ %i.dg, %bb.i ], [ %i.cs, %.split218.us ]
  %.0.copyload.i37 = load i64, ptr %.025.i21230, align 1 ; 2 uses
  %.0.copyload.i = load i64, ptr %.022.i22231, align 1 ; 2 uses
  %.not30.i30 = icmp eq i64 %.0.copyload.i37, %.0.copyload.i
  br i1 %.not30.i30, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph232
  %i.cx = xor i64 %.0.copyload.i, %.0.copyload.i37
  %i.cy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cx, i1 true)
  %i.cz = ptrtoint ptr %.022.i22231 to i64
  %i.da = ptrtoint ptr %i.cq to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = lshr i64 %i.cy, 3
  %i.dd = add i64 %i.db, %i.dc
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit33

bb.i:                                             ; preds = %.lr.ph232
  %i.de = getelementptr inbounds nuw i8, ptr %.025.i21230, i64 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.022.i22231, i64 8 ; 2 uses
  %i.dg = add i64 %.027.i20229, -8                ; 3 uses
  %i.dh = icmp ugt i64 %i.dg, 7
  br i1 %i.dh, label %.lr.ph232, label %.preheader140, !llvm.loop !45

bb.j:                                             ; preds = %.lr.ph240.preheader
  %.not.i27 = icmp eq i64 %.027.i20.lcssa, 1
  br i1 %.not.i27, label %.critedge.i28, label %.lr.ph240.1

.lr.ph240.1:                                      ; preds = %bb.j
  %i.di = getelementptr inbounds nuw i8, ptr %.022.i22.lcssa, i64 1 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.025.i21.lcssa, i64 1
  %i.dk = load i8, ptr %i.di, align 1, !tbaa !9
  %i.dl = load i8, ptr %i.dj, align 1, !tbaa !9
  %i.dm = icmp eq i8 %i.dk, %i.dl
  br i1 %i.dm, label %bb.k, label %.critedge.i28

bb.k:                                             ; preds = %.lr.ph240.1
  %.not.i27.1 = icmp eq i64 %.027.i20.lcssa, 2
  br i1 %.not.i27.1, label %.critedge.i28, label %.lr.ph240.2

.lr.ph240.2:                                      ; preds = %bb.k
  %i.dn = getelementptr inbounds nuw i8, ptr %.022.i22.lcssa, i64 2 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.025.i21.lcssa, i64 2
  %i.dp = load i8, ptr %i.dn, align 1, !tbaa !9
  %i.dq = load i8, ptr %i.do, align 1, !tbaa !9
  %i.dr = icmp eq i8 %i.dp, %i.dq
  br i1 %i.dr, label %bb.l, label %.critedge.i28

bb.l:                                             ; preds = %.lr.ph240.2
  %.not.i27.2 = icmp eq i64 %.027.i20.lcssa, 3
  br i1 %.not.i27.2, label %.critedge.i28, label %.lr.ph240.3

.lr.ph240.3:                                      ; preds = %bb.l
  %i.ds = getelementptr inbounds nuw i8, ptr %.022.i22.lcssa, i64 3 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.025.i21.lcssa, i64 3
  %i.du = load i8, ptr %i.ds, align 1, !tbaa !9
  %i.dv = load i8, ptr %i.dt, align 1, !tbaa !9
  %i.dw = icmp eq i8 %i.du, %i.dv
  br i1 %i.dw, label %bb.m, label %.critedge.i28

bb.m:                                             ; preds = %.lr.ph240.3
  %.not.i27.3 = icmp eq i64 %.027.i20.lcssa, 4
  br i1 %.not.i27.3, label %.critedge.i28, label %.lr.ph240.4

.lr.ph240.4:                                      ; preds = %bb.m
  %i.dx = getelementptr inbounds nuw i8, ptr %.022.i22.lcssa, i64 4 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.025.i21.lcssa, i64 4
  %i.dz = load i8, ptr %i.dx, align 1, !tbaa !9
  %i.ea = load i8, ptr %i.dy, align 1, !tbaa !9
  %i.eb = icmp eq i8 %i.dz, %i.ea
  br i1 %i.eb, label %bb.n, label %.critedge.i28

bb.n:                                             ; preds = %.lr.ph240.4
  %.not.i27.4 = icmp eq i64 %.027.i20.lcssa, 5
  br i1 %.not.i27.4, label %.critedge.i28, label %.lr.ph240.5

.lr.ph240.5:                                      ; preds = %bb.n
  %i.ec = getelementptr inbounds nuw i8, ptr %.022.i22.lcssa, i64 5 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.025.i21.lcssa, i64 5
  %i.ee = load i8, ptr %i.ec, align 1, !tbaa !9
  %i.ef = load i8, ptr %i.ed, align 1, !tbaa !9
  %i.eg = icmp eq i8 %i.ee, %i.ef
  br i1 %i.eg, label %bb.o, label %.critedge.i28

bb.o:                                             ; preds = %.lr.ph240.5
  %.not.i27.5 = icmp eq i64 %.027.i20.lcssa, 6
  br i1 %.not.i27.5, label %.critedge.i28, label %.lr.ph240.6

.lr.ph240.6:                                      ; preds = %bb.o
  %i.eh = getelementptr inbounds nuw i8, ptr %.022.i22.lcssa, i64 6 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.025.i21.lcssa, i64 6
  %i.ej = load i8, ptr %i.eh, align 1, !tbaa !9
  %i.ek = load i8, ptr %i.ei, align 1, !tbaa !9
  %i.el = icmp eq i8 %i.ej, %i.ek
end_hunk_1
