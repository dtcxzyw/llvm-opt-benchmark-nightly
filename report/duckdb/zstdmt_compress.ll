inline.NumInlined: 125
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN11duckdb_zstd29ZSTDMT_compressStream_genericEPNS_13ZSTDMT_CCtx_sEPNS_16ZSTD_outBuffer_sEPNS_15ZSTD_inBuffer_sENS_17ZSTD_EndDirectiveE:bb.a
  %i.rh = zext i8 %i.rg to i64
  %i.ri = add nuw nsw i64 %i.rh, 10
  %i.rj = add i64 %i.ri, %i.re
  %i.rk = mul i64 %i.rj, -3523014627327384477
  %i.rl = getelementptr inbounds i8, ptr %i.mq, i64 -11
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !159
  %i.rn = zext i8 %i.rm to i64
  %i.ro = add nuw nsw i64 %i.rn, 10
  %i.rp = add i64 %i.ro, %i.rk
  %i.rq = mul i64 %i.rp, -3523014627327384477
  %i.rr = getelementptr inbounds i8, ptr %i.mq, i64 -10
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !159
  %i.rt = zext i8 %i.rs to i64
  %i.ru = add nuw nsw i64 %i.rt, 10
  %i.rv = add i64 %i.ru, %i.rq
  %i.rw = mul i64 %i.rv, -3523014627327384477
  %i.rx = getelementptr inbounds i8, ptr %i.mq, i64 -9
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !159
  %i.rz = zext i8 %i.ry to i64
  %i.sa = add nuw nsw i64 %i.rz, 10
  %i.sb = add i64 %i.sa, %i.rw
  %i.sc = mul i64 %i.sb, -3523014627327384477
  %i.sd = getelementptr inbounds i8, ptr %i.mq, i64 -8
  %i.se = load i8, ptr %i.sd, align 1, !tbaa !159
  %i.sf = zext i8 %i.se to i64
  %i.sg = add nuw nsw i64 %i.sf, 10
  %i.sh = add i64 %i.sg, %i.sc
  %i.si = mul i64 %i.sh, -3523014627327384477
  %i.sj = getelementptr inbounds i8, ptr %i.mq, i64 -7
  %i.sk = load i8, ptr %i.sj, align 1, !tbaa !159
  %i.sl = zext i8 %i.sk to i64
  %i.sm = add nuw nsw i64 %i.sl, 10
  %i.sn = add i64 %i.sm, %i.si
  %i.so = mul i64 %i.sn, -3523014627327384477
  %i.sp = getelementptr inbounds i8, ptr %i.mq, i64 -6
  %i.sq = load i8, ptr %i.sp, align 1, !tbaa !159
  %i.sr = zext i8 %i.sq to i64
  %i.ss = add nuw nsw i64 %i.sr, 10
  %i.st = add i64 %i.ss, %i.so
  %i.su = mul i64 %i.st, -3523014627327384477
  %i.sv = getelementptr inbounds i8, ptr %i.mq, i64 -5
  %i.sw = load i8, ptr %i.sv, align 1, !tbaa !159
  %i.sx = zext i8 %i.sw to i64
  %i.sy = add nuw nsw i64 %i.sx, 10
  %i.sz = add i64 %i.sy, %i.su
  %i.ta = mul i64 %i.sz, -3523014627327384477
  %i.tb = getelementptr inbounds i8, ptr %i.mq, i64 -4
  %i.tc = load i8, ptr %i.tb, align 1, !tbaa !159
  %i.td = zext i8 %i.tc to i64
  %i.te = add nuw nsw i64 %i.td, 10
  %i.tf = add i64 %i.te, %i.ta
  %i.tg = mul i64 %i.tf, -3523014627327384477
  %i.th = getelementptr inbounds i8, ptr %i.mq, i64 -3
  %i.ti = load i8, ptr %i.th, align 1, !tbaa !159
  %i.tj = zext i8 %i.ti to i64
  %i.tk = add nuw nsw i64 %i.tj, 10
  %i.tl = add i64 %i.tk, %i.tg
  %i.tm = mul i64 %i.tl, -3523014627327384477
  %i.tn = getelementptr inbounds i8, ptr %i.mq, i64 -2
  %i.to = load i8, ptr %i.tn, align 1, !tbaa !159
  %i.tp = zext i8 %i.to to i64
  %i.tq = add nuw nsw i64 %i.tp, 10
  %i.tr = add i64 %i.tq, %i.tm
  %i.ts = mul i64 %i.tr, -3523014627327384477
  %i.tt = getelementptr inbounds i8, ptr %i.mq, i64 -1
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !159
  %i.tv = zext i8 %i.tu to i64
  %i.tw = add nuw nsw i64 %i.tv, 10
  %i.tx = add i64 %i.tw, %i.ts                    ; 2 uses
  %i.ty = and i64 %i.tx, %i.bz
  %i.tz = icmp eq i64 %i.ty, %i.bz
  br i1 %i.tz, label %_ZN11duckdb_zstdL24findSynchronizationPointEPKNS_13ZSTDMT_CCtx_sENS_15ZSTD_inBuffer_sE.exit, label %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit.i

_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit.i.loopexit.unr-lcssa: ; preds = %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit62.i
  %lcmp.mod161.not = icmp eq i64 %xtraiter159, 0
  br i1 %lcmp.mod161.not, label %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit.i, label %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit62.i.epil.preheader

_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit62.i.epil.preheader: ; preds = %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit.i.loopexit.unr-lcssa, %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit62.i.preheader
  %.010.i.i.epil.init = phi i64 [ 0, %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit62.i.preheader ], [ %i.mp, %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit.i.loopexit.unr-lcssa ]
  %.089.i.i.epil.init = phi i64 [ %.lcssa152, %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit62.i.preheader ], [ %i.mo, %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod163 = icmp ne i64 %xtraiter159, 0
  tail call void @llvm.assume(i1 %lcmp.mod163)
  br label %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit62.i.epil

_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit62.i.epil: ; preds = %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit62.i.epil, %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit62.i.epil.preheader
  %.010.i.i.epil = phi i64 [ %i.ug, %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit62.i.epil ], [ %.010.i.i.epil.init, %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit62.i.epil.preheader ] ; 2 uses
  %.089.i.i.epil = phi i64 [ %i.uf, %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit62.i.epil ], [ %.089.i.i.epil.init, %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit62.i.epil.preheader ]
  %epil.iter160 = phi i64 [ %epil.iter160.next, %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit62.i.epil ], [ 0, %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit62.i.epil.preheader ]
  %i.ua = mul i64 %.089.i.i.epil, -3523014627327384477
  %i.ub = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.010.i.i.epil
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !159
  %i.ud = zext i8 %i.uc to i64
  %i.ue = add i64 %i.ua, 10
  %i.uf = add i64 %i.ue, %i.ud                    ; 2 uses
  %i.ug = add nuw nsw i64 %.010.i.i.epil, 1
  %epil.iter160.next = add i64 %epil.iter160, 1   ; 2 uses
  %epil.iter160.cmp.not = icmp eq i64 %epil.iter160.next, %xtraiter159
  br i1 %epil.iter160.cmp.not, label %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit.i, label %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit62.i.epil, !llvm.loop !163

_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit.i: ; preds = %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit.i.loopexit.unr-lcssa, %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit62.i.epil, %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit66.i, %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit.loopexit.i
  %.050.i = phi i64 [ %i.tx, %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit66.i ], [ %i.jw, %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit.loopexit.i ], [ %i.mo, %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit.i.loopexit.unr-lcssa ], [ %i.uf, %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit62.i.epil ]
  %.049.i = phi ptr [ %i.mr, %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit66.i ], [ %i.cq, %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit.loopexit.i ], [ %i.jy, %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit62.i.epil ], [ %i.jy, %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit.i.loopexit.unr-lcssa ]
  %.048.i = phi i64 [ 0, %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit66.i ], [ %i.cn, %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit.loopexit.i ], [ %i.cn, %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit62.i.epil ], [ %i.cn, %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %i.uh = icmp ult i64 %.048.i, %..i
  br i1 %i.uh, label %.lr.ph.i, label %_ZN11duckdb_zstdL24findSynchronizationPointEPKNS_13ZSTDMT_CCtx_sENS_15ZSTD_inBuffer_sE.exit.thread

.lr.ph.i:                                         ; preds = %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit.i, %bb.q
  %.180.i = phi i64 [ %i.uy, %bb.q ], [ %.048.i, %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit.i ] ; 4 uses
  %.15179.i = phi i64 [ %i.uv, %bb.q ], [ %.050.i, %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit.i ]
  %i.ui = icmp ult i64 %.180.i, 32
  %i.uj = getelementptr inbounds nuw i8, ptr %.049.i, i64 %.180.i
  %i.uk = getelementptr i8, ptr %i.bv, i64 %.180.i ; 2 uses
  %i.ul = getelementptr i8, ptr %i.uk, i64 -32
  %.in.i = select i1 %i.ui, ptr %i.uj, ptr %i.ul
  %i.um = load i8, ptr %.in.i, align 1, !tbaa !159
  %i.un = load i8, ptr %i.uk, align 1, !tbaa !159
  %i.uo = zext i8 %i.um to i64
  %i.up = add nuw nsw i64 %i.uo, 10
  %i.uq = mul i64 %i.up, %i.bx
  %i.ur = sub i64 %.15179.i, %i.uq
  %i.us = mul i64 %i.ur, -3523014627327384477
  %i.ut = zext i8 %i.un to i64
  %i.uu = add nuw nsw i64 %i.ut, 10
  %i.uv = add i64 %i.uu, %i.us                    ; 2 uses
  %i.uw = and i64 %i.uv, %i.bz
  %i.ux = icmp eq i64 %i.uw, %i.bz
  %i.uy = add i64 %.180.i, 1                      ; 4 uses
  br i1 %i.ux, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.i
  br i1 %i.d, label %bb.r, label %_ZN11duckdb_zstdL24findSynchronizationPointEPKNS_13ZSTDMT_CCtx_sENS_15ZSTD_inBuffer_sE.exit.thread

bb.q:                                             ; preds = %.lr.ph.i
  %exitcond.not.i = icmp eq i64 %i.uy, %..i
  br i1 %exitcond.not.i, label %_ZN11duckdb_zstdL24findSynchronizationPointEPKNS_13ZSTDMT_CCtx_sENS_15ZSTD_inBuffer_sE.exit.thread, label %.lr.ph.i, !llvm.loop !164

_ZN11duckdb_zstdL24findSynchronizationPointEPKNS_13ZSTDMT_CCtx_sENS_15ZSTD_inBuffer_sE.exit: ; preds = %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit66.i
  br i1 %i.d, label %bb.r, label %_ZN11duckdb_zstdL24findSynchronizationPointEPKNS_13ZSTDMT_CCtx_sENS_15ZSTD_inBuffer_sE.exit.thread

bb.r:                                             ; preds = %bb.p, %_ZN11duckdb_zstdL24findSynchronizationPointEPKNS_13ZSTDMT_CCtx_sENS_15ZSTD_inBuffer_sE.exit
  %.sroa.0.3.i137 = phi i64 [ %i.uy, %bb.p ], [ 0, %_ZN11duckdb_zstdL24findSynchronizationPointEPKNS_13ZSTDMT_CCtx_sENS_15ZSTD_inBuffer_sE.exit ]
  br label %_ZN11duckdb_zstdL24findSynchronizationPointEPKNS_13ZSTDMT_CCtx_sENS_15ZSTD_inBuffer_sE.exit.thread

_ZN11duckdb_zstdL24findSynchronizationPointEPKNS_13ZSTDMT_CCtx_sENS_15ZSTD_inBuffer_sE.exit.thread: ; preds = %bb.q, %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit.i, %bb.j, %_ZN11duckdb_zstdL23ZSTDMT_tryGetInputRangeEPNS_13ZSTDMT_CCtx_sE.exit.thread, %bb.p, %_ZN11duckdb_zstdL24findSynchronizationPointEPKNS_13ZSTDMT_CCtx_sENS_15ZSTD_inBuffer_sE.exit, %bb.r
  %.sroa.0.3.i136 = phi i64 [ %.sroa.0.3.i137, %bb.r ], [ 0, %_ZN11duckdb_zstdL24findSynchronizationPointEPKNS_13ZSTDMT_CCtx_sENS_15ZSTD_inBuffer_sE.exit ], [ %i.uy, %bb.p ], [ %..i, %_ZN11duckdb_zstdL23ZSTDMT_tryGetInputRangeEPNS_13ZSTDMT_CCtx_sE.exit.thread ], [ %..i, %bb.j ], [ %..i, %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit.i ], [ %..i, %bb.q ] ; 3 uses
  %i.uz = phi i32 [ 1, %bb.r ], [ %3, %_ZN11duckdb_zstdL24findSynchronizationPointEPKNS_13ZSTDMT_CCtx_sENS_15ZSTD_inBuffer_sE.exit ], [ %3, %bb.p ], [ %3, %_ZN11duckdb_zstdL23ZSTDMT_tryGetInputRangeEPNS_13ZSTDMT_CCtx_sE.exit.thread ], [ %3, %bb.j ], [ %3, %_ZN11duckdb_zstdL24ZSTD_rollingHash_computeEPKvm.exit.i ], [ %3, %bb.q ]
  %i.va = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.ce
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.va, ptr align 1 %i.bv, i64 %.sroa.0.3.i136, i1 false)
  %i.vb = load i64, ptr %i.i, align 8, !tbaa !153
  %i.vc = add i64 %i.vb, %.sroa.0.3.i136
  store i64 %i.vc, ptr %i.i, align 8, !tbaa !153
  %i.vd = load i64, ptr %i.cd, align 8, !tbaa !86
  %i.ve = add i64 %i.vd, %.sroa.0.3.i136
  store i64 %i.ve, ptr %i.cd, align 8, !tbaa !86
  br label %_ZN11duckdb_zstdL23ZSTDMT_tryGetInputRangeEPNS_13ZSTDMT_CCtx_sE.exit.thread132

_ZN11duckdb_zstdL23ZSTDMT_tryGetInputRangeEPNS_13ZSTDMT_CCtx_sE.exit.thread132: ; preds = %_ZN11duckdb_zstdL19ZSTDMT_isOverlappedENS_8buffer_sENS_7range_tE.exit.i, %_ZN11duckdb_zstdL23ZSTDMT_tryGetInputRangeEPNS_13ZSTDMT_CCtx_sE.exit, %_ZN11duckdb_zstdL24findSynchronizationPointEPKNS_13ZSTDMT_CCtx_sENS_15ZSTD_inBuffer_sE.exit.thread, %bb.c, %bb.b
  %.055 = phi i32 [ %3, %bb.b ], [ %i.uz, %_ZN11duckdb_zstdL24findSynchronizationPointEPKNS_13ZSTDMT_CCtx_sENS_15ZSTD_inBuffer_sE.exit.thread ], [ %3, %_ZN11duckdb_zstdL23ZSTDMT_tryGetInputRangeEPNS_13ZSTDMT_CCtx_sE.exit ], [ %3, %bb.c ], [ %3, %_ZN11duckdb_zstdL19ZSTDMT_isOverlappedENS_8buffer_sENS_7range_tE.exit.i ] ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.vg = load i64, ptr %i.vf, align 8, !tbaa !153
  %i.vh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.vi = load i64, ptr %i.vh, align 8, !tbaa !151
  %i.vj = icmp ult i64 %i.vg, %i.vi
  %i.vk = icmp eq i32 %.055, 2
  %or.cond6 = and i1 %i.vk, %i.vj
  %spec.store.select7 = select i1 %or.cond6, i32 1, i32 %.055 ; 4 uses
  %i.vl = load i32, ptr %i.e, align 8, !tbaa !91
  %.not59 = icmp eq i32 %i.vl, 0                  ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.vn = load i64, ptr %i.vm, align 8, !tbaa !86 ; 8 uses
  br i1 %.not59, label %bb.s, label %._crit_edge

bb.s:                                             ; preds = %_ZN11duckdb_zstdL23ZSTDMT_tryGetInputRangeEPNS_13ZSTDMT_CCtx_sE.exit.thread132
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.vp = load i64, ptr %i.vo, align 8, !tbaa !122
  %.not60 = icmp ult i64 %i.vn, %i.vp
  br i1 %.not60, label %bb.t, label %._crit_edge

bb.t:                                             ; preds = %bb.s
  %.not61 = icmp eq i32 %spec.store.select7, 0
  %.not62 = icmp eq i64 %i.vn, 0
  %or.cond67 = or i1 %.not61, %.not62
  br i1 %or.cond67, label %bb.u, label %._crit_edge

bb.u:                                             ; preds = %bb.t
  %i.vq = icmp eq i32 %spec.store.select7, 2
  br i1 %i.vq, label %bb.v, label %_ZN11duckdb_zstdL27ZSTDMT_createCompressionJobEPNS_13ZSTDMT_CCtx_sEmNS_17ZSTD_EndDirectiveE.exit

bb.v:                                             ; preds = %bb.u
  %i.vr = load i32, ptr %i.a, align 4, !tbaa !150
  %.not63 = icmp eq i32 %i.vr, 0
  br i1 %.not63, label %._crit_edge, label %_ZN11duckdb_zstdL27ZSTDMT_createCompressionJobEPNS_13ZSTDMT_CCtx_sEmNS_17ZSTD_EndDirectiveE.exit

._crit_edge:                                      ; preds = %_ZN11duckdb_zstdL23ZSTDMT_tryGetInputRangeEPNS_13ZSTDMT_CCtx_sE.exit.thread132, %bb.t, %bb.v, %bb.s
  %i.vs = getelementptr inbounds nuw i8, ptr %0, i64 2856 ; 7 uses
  %i.vt = load i32, ptr %i.vs, align 8, !tbaa !88 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %0, i64 2848
  %i.vv = load i32, ptr %i.vu, align 8, !tbaa !46 ; 2 uses
  %i.vw = and i32 %i.vv, %i.vt                    ; 2 uses
  %i.vx = icmp eq i32 %spec.store.select7, 2      ; 3 uses
  %i.vy = zext i1 %i.vx to i32                    ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %0, i64 2852
  %i.wa = load i32, ptr %i.vz, align 4, !tbaa !92
  %i.wb = add i32 %i.wa, %i.vv
  %i.wc = icmp ugt i32 %i.vt, %i.wb
  br i1 %i.wc, label %_ZN11duckdb_zstdL27ZSTDMT_createCompressionJobEPNS_13ZSTDMT_CCtx_sEmNS_17ZSTD_EndDirectiveE.exit, label %bb.w

bb.w:                                             ; preds = %._crit_edge
  br i1 %.not59, label %bb.x, label %..thread100_crit_edge.i

..thread100_crit_edge.i:                          ; preds = %bb.w
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !36
  %.pre102.i = zext i32 %i.vw to i64
  br label %.thread100.i

bb.x:                                             ; preds = %bb.w
  %i.wd = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !154 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !36
  %i.wi = zext i32 %i.vw to i64                   ; 7 uses
  %i.wj = getelementptr inbounds nuw [368 x i8], ptr %i.wh, i64 %i.wi ; 3 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 88
  store ptr %i.wf, ptr %i.wk, align 8, !tbaa !165
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wj, i64 96
  store i64 %i.vn, ptr %i.wl, align 8, !tbaa !96
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wj, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wm, ptr noundef nonnull align 8 dereferenceable(16) %i.wd, i64 16, i1 false), !tbaa.struct !166
  %i.wn = load ptr, ptr %i.wg, align 8, !tbaa !36
  %i.wo = getelementptr inbounds nuw [368 x i8], ptr %i.wn, i64 %i.wi ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wo, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wo, i8 0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.wq, ptr noundef nonnull align 8 dereferenceable(216) %i.wp, i64 216, i1 false), !tbaa.struct !108
  %i.wr = load i32, ptr %i.vs, align 8, !tbaa !88
  %i.ws = icmp eq i32 %i.wr, 0
  br i1 %i.ws, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.wt = getelementptr inbounds nuw i8, ptr %0, i64 2928
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !115
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.wv = phi ptr [ %i.wu, %bb.y ], [ null, %bb.x ]
  %i.ww = load ptr, ptr %i.wg, align 8, !tbaa !36
  %i.wx = getelementptr inbounds nuw [368 x i8], ptr %i.ww, i64 %i.wi ; 3 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 336
  store ptr %i.wv, ptr %i.wy, align 8, !tbaa !167
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 2872
  %i.xa = load i64, ptr %i.wz, align 8, !tbaa !114
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wx, i64 344
  store i64 %i.xa, ptr %i.xb, align 8, !tbaa !168
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wx, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xc, i8 0, i64 16, i1 false)
  %i.xd = load ptr, ptr %i.wg, align 8, !tbaa !36 ; 4 uses
  %i.xe = getelementptr inbounds nuw [368 x i8], ptr %i.xd, i64 %i.wi ; 13 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 24
  %i.xg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xe, i64 32
  %i.xi = load <2 x ptr>, ptr %i.xg, align 8, !tbaa !38
  %i.xj = shufflevector <2 x ptr> %i.xi, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.xj, ptr %i.xf, align 8, !tbaa !38
  %i.xk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !61
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xe, i64 40
  store ptr %i.xl, ptr %i.xm, align 8, !tbaa !169
  %i.xn = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xe, i64 48
  store ptr %i.xn, ptr %i.xo, align 8, !tbaa !170
  %i.xp = load i32, ptr %i.vs, align 8, !tbaa !88 ; 3 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xe, i64 104
  store i32 %i.xp, ptr %i.xq, align 8, !tbaa !171
  %i.xr = icmp eq i32 %i.xp, 0                    ; 3 uses
  %i.xs = zext i1 %i.xr to i32
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xe, i64 108
  store i32 %i.xs, ptr %i.xt, align 4, !tbaa !172
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xe, i64 112
  store i32 %i.vy, ptr %i.xu, align 8, !tbaa !173
  %i.xv = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.xw = load i32, ptr %i.xv, align 4, !tbaa !174
  %i.xx = icmp ne i32 %i.xw, 0
  %or.cond.i70 = and i1 %i.vx, %i.xx
  %i.xy = icmp ne i32 %i.xp, 0
  %narrow.i = select i1 %or.cond.i70, i1 %i.xy, i1 false
  %i.xz = zext i1 %narrow.i to i32
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xe, i64 360
  store i32 %i.xz, ptr %i.ya, align 8, !tbaa !175
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xe, i64 352
  store i64 0, ptr %i.yb, align 8, !tbaa !95
  %i.yc = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.yd = load i64, ptr %i.yc, align 8, !tbaa !130
  %i.ye = add i64 %i.yd, %i.vn
  store i64 %i.ye, ptr %i.yc, align 8, !tbaa !130
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.we, i8 0, i64 24, i1 false)
  br i1 %i.vx, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wd, i8 0, i64 16, i1 false)
  store i32 %i.vy, ptr %i.a, align 4, !tbaa !150
  br i1 %i.xr, label %.thread99.i, label %.thread.i

bb.ab:                                            ; preds = %bb.z
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.yg = load i64, ptr %i.yf, align 8, !tbaa !121
  %..i71 = tail call i64 @llvm.umin.i64(i64 %i.vn, i64 %i.yg) ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.wf, i64 %i.vn
  %i.yi = sub i64 0, %..i71
  %i.yj = getelementptr inbounds i8, ptr %i.yh, i64 %i.yi
  store ptr %i.yj, ptr %i.wd, align 8, !tbaa !157
  %i.yk = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 %..i71, ptr %i.yk, align 8, !tbaa !156
  %i.yl = icmp ne i64 %i.vn, 0
  %brmerge.i = select i1 %i.yl, i1 true, i1 %i.xr
  br i1 %brmerge.i, label %.thread100.i, label %.critedge.i

.thread99.i:                                      ; preds = %bb.aa
  store i32 0, ptr %i.xv, align 4, !tbaa !174
  br label %.thread100.i

.thread.i:                                        ; preds = %bb.aa
  %i.ym = icmp eq i64 %i.vn, 0
  br i1 %i.ym, label %.critedge.i, label %.thread100.i

.critedge.i:                                      ; preds = %.thread.i, %bb.ab
  %i.yn = load ptr, ptr %i.xh, align 8, !tbaa !176 ; 7 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 8
  %i.yp = load i64, ptr %i.yo, align 8, !tbaa !127 ; 5 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yn, i64 20 ; 2 uses
  %i.yr = load i32, ptr %i.yq, align 4, !tbaa !40 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.yr, 0
  br i1 %.not.i.i.i, label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %.critedge.i
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yn, i64 48
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !44
  %i.yu = add i32 %i.yr, -1                       ; 2 uses
  store i32 %i.yu, ptr %i.yq, align 4, !tbaa !40
  %i.yv = zext i32 %i.yu to i64
  %i.yw = getelementptr inbounds nuw [16 x i8], ptr %i.yt, i64 %i.yv ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.yw, align 8, !tbaa !38 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.yw, i64 8
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !39 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yw, i8 0, i64 16, i1 false)
  %i.yx = icmp ult i64 %.sroa.4.0.copyload.i.i.i, %i.yp
  %i.yy = lshr i64 %.sroa.4.0.copyload.i.i.i, 3
  %i.yz = icmp ugt i64 %i.yy, %i.yp
  %.not21.i.i.i = or i1 %i.yx, %i.yz
  br i1 %.not21.i.i.i, label %bb.ad, label %_ZN11duckdb_zstdL16ZSTDMT_getBufferEPNS_19ZSTDMT_bufferPool_sE.exit.i.i

bb.ad:                                            ; preds = %bb.ac
  %.sroa.1.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.yn, i64 32
  %.sroa.1.0.copyload.i.i.i = load ptr, ptr %.sroa.1.0..sroa_idx.i.i.i, align 8, !tbaa !38 ; 2 uses
  %.sroa.229.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.yn, i64 40
  %.sroa.229.0.copyload.i.i.i = load ptr, ptr %.sroa.229.0..sroa_idx.i.i.i, align 8, !tbaa !38
  %.not.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not4.i.i.i.i = icmp eq ptr %.sroa.1.0.copyload.i.i.i, null
  br i1 %.not4.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void %.sroa.1.0.copyload.i.i.i(ptr noundef %.sroa.229.0.copyload.i.i.i, ptr noundef nonnull %.sroa.0.0.copyload.i.i.i), !inline_history !177
  br label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i.i.i

bb.ag:                                            ; preds = %bb.ae
  tail call void @free(ptr noundef nonnull %.sroa.0.0.copyload.i.i.i) #14
  br label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i.i.i

_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i.i.i: ; preds = %bb.ag, %bb.af, %bb.ad, %.critedge.i
  %i.za = getelementptr inbounds nuw i8, ptr %i.yn, i64 24
  %.sroa.0.0.copyload26.i.i.i = load ptr, ptr %i.za, align 8, !tbaa !38 ; 2 uses
  %.not.i25.i.i.i = icmp eq ptr %.sroa.0.0.copyload26.i.i.i, null
  br i1 %.not.i25.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i.i.i
  %.sroa.227.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.yn, i64 40
  %.sroa.227.0.copyload.i.i.i = load ptr, ptr %.sroa.227.0..sroa_idx.i.i.i, align 8, !tbaa !38
  %i.zb = tail call noundef ptr %.sroa.0.0.copyload26.i.i.i(ptr noundef %.sroa.227.0.copyload.i.i.i, i64 noundef %i.yp), !inline_history !178
  br label %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i.i

bb.ai:                                            ; preds = %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i.i.i
  %i.zc = tail call noalias ptr @malloc(i64 noundef %i.yp) #16
  br label %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i.i

_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i.i: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i = phi ptr [ %i.zb, %bb.ah ], [ %i.zc, %bb.ai ] ; 2 uses
  %i.zd = icmp eq ptr %.0.i.i.i.i, null
  %i.ze = select i1 %i.zd, i64 0, i64 %i.yp
  br label %_ZN11duckdb_zstdL16ZSTDMT_getBufferEPNS_19ZSTDMT_bufferPool_sE.exit.i.i

_ZN11duckdb_zstdL16ZSTDMT_getBufferEPNS_19ZSTDMT_bufferPool_sE.exit.i.i: ; preds = %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i.i, %bb.ac
  %.sroa.0.0.i.i.i = phi ptr [ %.0.i.i.i.i, %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i.i ], [ %.sroa.0.0.copyload.i.i.i, %bb.ac ] ; 3 uses
  %.sroa.4.0.i.i.i = phi i64 [ %i.ze, %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i.i ], [ %.sroa.4.0.copyload.i.i.i, %bb.ac ] ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.xe, i64 56
  store ptr %.sroa.0.0.i.i.i, ptr %i.zf, align 8, !tbaa !38
  %.sroa.4.0..sroa_idx.i.i72 = getelementptr inbounds nuw i8, ptr %i.xe, i64 64
  store i64 %.sroa.4.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i72, align 8, !tbaa !39
  %i.zg = icmp eq ptr %.sroa.0.0.i.i.i, null
  br i1 %i.zg, label %_ZN11duckdb_zstdL26ZSTDMT_writeLastEmptyBlockEPNS_21ZSTDMT_jobDescriptionE.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZN11duckdb_zstdL16ZSTDMT_getBufferEPNS_19ZSTDMT_bufferPool_sE.exit.i.i
  %i.zh = getelementptr inbounds nuw i8, ptr %i.xe, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zh, i8 0, i64 16, i1 false)
  %i.zi = tail call noundef i64 @_ZN11duckdb_zstd24ZSTD_writeLastEmptyBlockEPvm(ptr noundef nonnull %.sroa.0.0.i.i.i, i64 noundef %.sroa.4.0.i.i.i)
  br label %_ZN11duckdb_zstdL26ZSTDMT_writeLastEmptyBlockEPNS_21ZSTDMT_jobDescriptionE.exit.i

_ZN11duckdb_zstdL26ZSTDMT_writeLastEmptyBlockEPNS_21ZSTDMT_jobDescriptionE.exit.i: ; preds = %bb.aj, %_ZN11duckdb_zstdL16ZSTDMT_getBufferEPNS_19ZSTDMT_bufferPool_sE.exit.i.i
  %.sink.i.i = phi i64 [ %i.zi, %bb.aj ], [ -64, %_ZN11duckdb_zstdL16ZSTDMT_getBufferEPNS_19ZSTDMT_bufferPool_sE.exit.i.i ]
  %i.zj = getelementptr inbounds nuw i8, ptr %i.xe, i64 8
  store i64 %.sink.i.i, ptr %i.zj, align 8, !tbaa !93
  %i.zk = load i32, ptr %i.vs, align 8, !tbaa !88
  %i.zl = add i32 %i.zk, 1
  store i32 %i.zl, ptr %i.vs, align 8, !tbaa !88
  br label %_ZN11duckdb_zstdL27ZSTDMT_createCompressionJobEPNS_13ZSTDMT_CCtx_sEmNS_17ZSTD_EndDirectiveE.exit

.thread100.i:                                     ; preds = %.thread.i, %.thread99.i, %bb.ab, %..thread100_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre102.i, %..thread100_crit_edge.i ], [ %i.wi, %bb.ab ], [ %i.wi, %.thread99.i ], [ %i.wi, %.thread.i ]
  %i.zm = phi ptr [ %.pre.i, %..thread100_crit_edge.i ], [ %i.xd, %bb.ab ], [ %i.xd, %.thread99.i ], [ %i.xd, %.thread.i ]
  %i.zn = load ptr, ptr %0, align 8, !tbaa !7
  %i.zo = getelementptr inbounds nuw [368 x i8], ptr %i.zm, i64 %.pre-phi.i
  %i.zp = tail call noundef i32 @_ZN11duckdb_zstd11POOL_tryAddEPNS_10POOL_ctx_sEPFvPvES2_(ptr noundef %i.zn, ptr noundef nonnull @_ZN11duckdb_zstdL21ZSTDMT_compressionJobEPv, ptr noundef %i.zo)
  %.not97.i = icmp eq i32 %i.zp, 0
  br i1 %.not97.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.thread100.i
  %i.zq = load i32, ptr %i.vs, align 8, !tbaa !88
  %i.zr = add i32 %i.zq, 1
  store i32 %i.zr, ptr %i.vs, align 8, !tbaa !88
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.thread100.i
  %storemerge.i = phi i32 [ 0, %bb.ak ], [ 1, %.thread100.i ]
  store i32 %storemerge.i, ptr %i.e, align 8, !tbaa !91
  br label %_ZN11duckdb_zstdL27ZSTDMT_createCompressionJobEPNS_13ZSTDMT_CCtx_sEmNS_17ZSTD_EndDirectiveE.exit

_ZN11duckdb_zstdL27ZSTDMT_createCompressionJobEPNS_13ZSTDMT_CCtx_sEmNS_17ZSTD_EndDirectiveE.exit: ; preds = %bb.al, %_ZN11duckdb_zstdL26ZSTDMT_writeLastEmptyBlockEPNS_21ZSTDMT_jobDescriptionE.exit.i, %._crit_edge, %bb.v, %bb.u
  %i.zs = getelementptr inbounds nuw i8, ptr %0, i64 2852 ; 5 uses
  %i.zt = load i32, ptr %i.zs, align 4, !tbaa !92 ; 2 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %0, i64 2848 ; 2 uses
  %i.zv = load i32, ptr %i.zu, align 8, !tbaa !46
  %i.zw = and i32 %i.zv, %i.zt
  %i.zx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.zy = load ptr, ptr %i.zx, align 8, !tbaa !36 ; 3 uses
  %i.zz = zext i32 %i.zw to i64                   ; 7 uses
  %i.aaa = getelementptr inbounds nuw [368 x i8], ptr %i.zy, i64 %i.zz ; 4 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 8
  %i.aac = load i64, ptr %i.aab, align 8, !tbaa !93 ; 5 uses
  %i.aad = load i64, ptr %i.aaa, align 8, !tbaa !97 ; 3 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aaa, i64 96
  %i.aaf = load i64, ptr %i.aae, align 8, !tbaa !96 ; 2 uses
  %i.aag = icmp ult i64 %i.aac, -119
  br i1 %i.aag, label %bb.at, label %bb.am

bb.am:                                            ; preds = %_ZN11duckdb_zstdL27ZSTDMT_createCompressionJobEPNS_13ZSTDMT_CCtx_sEmNS_17ZSTD_EndDirectiveE.exit
  %i.aah = getelementptr inbounds nuw i8, ptr %0, i64 2856
  %i.aai = load i32, ptr %i.aah, align 8, !tbaa !88 ; 2 uses
  %i.aaj = icmp ult i32 %i.zt, %i.aai
  br i1 %i.aaj, label %.lr.ph.i.preheader.i, label %_ZN11duckdb_zstdL30ZSTDMT_waitForAllJobsCompletedEPNS_13ZSTDMT_CCtx_sE.exit.i

.lr.ph.i.preheader.i:                             ; preds = %bb.am
  store i32 %i.aai, ptr %i.zs, align 4, !tbaa !92
  br label %_ZN11duckdb_zstdL30ZSTDMT_waitForAllJobsCompletedEPNS_13ZSTDMT_CCtx_sE.exit.i

_ZN11duckdb_zstdL30ZSTDMT_waitForAllJobsCompletedEPNS_13ZSTDMT_CCtx_sE.exit.i: ; preds = %.lr.ph.i.preheader.i, %bb.am
  %i.aak = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.an

bb.an:                                            ; preds = %_ZN11duckdb_zstdL20ZSTDMT_releaseBufferEPNS_19ZSTDMT_bufferPool_sENS_8buffer_sE.exit.i.i, %_ZN11duckdb_zstdL30ZSTDMT_waitForAllJobsCompletedEPNS_13ZSTDMT_CCtx_sE.exit.i
  %i.aal = phi ptr [ %i.zy, %_ZN11duckdb_zstdL30ZSTDMT_waitForAllJobsCompletedEPNS_13ZSTDMT_CCtx_sE.exit.i ], [ %i.abf, %_ZN11duckdb_zstdL20ZSTDMT_releaseBufferEPNS_19ZSTDMT_bufferPool_sENS_8buffer_sE.exit.i.i ]
  %.020.i.i = phi i32 [ 0, %_ZN11duckdb_zstdL30ZSTDMT_waitForAllJobsCompletedEPNS_13ZSTDMT_CCtx_sE.exit.i ], [ %i.abi, %_ZN11duckdb_zstdL20ZSTDMT_releaseBufferEPNS_19ZSTDMT_bufferPool_sENS_8buffer_sE.exit.i.i ] ; 2 uses
  %i.aam = zext i32 %.020.i.i to i64              ; 3 uses
  %i.aan = getelementptr inbounds nuw [368 x i8], ptr %i.aal, i64 %i.aam ; 3 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 16
  %i.aap = load <2 x i32>, ptr %i.aao, align 8, !tbaa !3
  %i.aaq = load ptr, ptr %i.aak, align 8, !tbaa !37 ; 5 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aan, i64 56
  %.sroa.0.0.copyload.i.i74 = load ptr, ptr %i.aar, align 8, !tbaa !38 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i75 = getelementptr inbounds nuw i8, ptr %i.aan, i64 64
  %.sroa.2.0.copyload.i.i76 = load i64, ptr %.sroa.2.0..sroa_idx.i.i75, align 8, !tbaa !39
  %i.aas = icmp eq ptr %.sroa.0.0.copyload.i.i74, null
  br i1 %i.aas, label %_ZN11duckdb_zstdL20ZSTDMT_releaseBufferEPNS_19ZSTDMT_bufferPool_sENS_8buffer_sE.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aaq, i64 20 ; 2 uses
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !40 ; 3 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aaq, i64 16
  %i.aaw = load i32, ptr %i.aav, align 8, !tbaa !43
  %i.aax = icmp ult i32 %i.aau, %i.aaw
  br i1 %i.aax, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aaq, i64 48
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !44
  %i.aba = add nuw i32 %i.aau, 1
  store i32 %i.aba, ptr %i.aat, align 4, !tbaa !40
  %i.abb = zext i32 %i.aau to i64
  %i.abc = getelementptr inbounds nuw [16 x i8], ptr %i.aaz, i64 %i.abb ; 2 uses
  store ptr %.sroa.0.0.copyload.i.i74, ptr %i.abc, align 8, !tbaa !38
end_hunk_0
