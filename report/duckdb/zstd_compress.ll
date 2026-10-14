Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/zstd_compress?download=true
inline.NumInlined: 798
inline.NumDeleted: 175
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN11duckdb_zstdL23ZSTD_resetCCtx_internalEPNS_11ZSTD_CCtx_sEPKNS_18ZSTD_CCtx_params_sEmmNS_22ZSTD_compResetPolicy_eENS_22ZSTD_buffered_policy_eE:bb.a
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.hg ; 4 uses
  %i.hi = icmp ugt ptr %i.hh, %.val.i.i.i220
  br i1 %i.hi, label %_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit223, label %bb.at

bb.at:                                            ; preds = %bb.as
  store ptr %i.hh, ptr %i.dm, align 8, !tbaa !77
  store ptr %i.hh, ptr %i.bw, align 8, !tbaa !78
  %.not.i.i.i221 = icmp eq i64 %i.hg, 0
  br i1 %.not.i.i.i221, label %.thread.i.i.i222, label %bb.au

bb.au:                                            ; preds = %bb.at
  store ptr %i.hh, ptr %i.gz, align 8, !tbaa !79
  br label %.thread.i.i.i222

.thread.i.i.i222:                                 ; preds = %bb.au, %bb.at, %bb.ar
  store i32 2, ptr %i.dk, align 8, !tbaa !264
  br label %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i217

_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i217: ; preds = %.thread.i.i.i222, %_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit216
  %i.hj = phi i32 [ 2, %.thread.i.i.i222 ], [ %i.gw, %_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit216 ] ; 3 uses
  %i.hk = icmp eq i64 %i.gv, 0
  br i1 %i.hk, label %_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit223, label %bb.av

bb.av:                                            ; preds = %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i217
  %i.hl = load ptr, ptr %i.bx, align 8, !tbaa !280
  %i.hm = sub i64 0, %i.gv
  %i.hn = getelementptr inbounds i8, ptr %i.hl, i64 %i.hm ; 5 uses
  %i.ho = load ptr, ptr %i.bw, align 8, !tbaa !78
  %i.hp = icmp ult ptr %i.hn, %i.ho
  br i1 %i.hp, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i8 1, ptr %i.dl, align 8, !tbaa !76
  br label %_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit223

bb.ax:                                            ; preds = %bb.av
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !79
  %i.hs = icmp ult ptr %i.hn, %i.hr
  br i1 %i.hs, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store ptr %i.hn, ptr %i.hq, align 8, !tbaa !79
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  store ptr %i.hn, ptr %i.bx, align 8, !tbaa !280
  br label %_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit223

_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit223: ; preds = %bb.as, %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i217, %bb.aw, %bb.az
  %i.ht = phi i32 [ %i.hj, %bb.az ], [ %i.hj, %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i217 ], [ %i.hj, %bb.aw ], [ %i.gw, %bb.as ]
  %.0.i.i218 = phi ptr [ %i.hn, %bb.az ], [ null, %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i217 ], [ null, %bb.aw ], [ null, %bb.as ]
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 3144
  store ptr %.0.i.i218, ptr %i.hu, align 8, !tbaa !282
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 3152
  store i64 %i.aq, ptr %i.hv, align 8, !tbaa !283
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store i64 0, ptr %i.hw, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store ptr @.str, ptr %i.hx, align 8, !tbaa !220
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 1048
  store ptr @.str, ptr %i.hy, align 8, !tbaa !217
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store i32 2, ptr %i.hz, align 8, !tbaa !219
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 1060
  store i32 2, ptr %i.ia, align 4, !tbaa !218
  store ptr getelementptr inbounds nuw (i8, ptr @.str, i64 2), ptr %i.gr, align 8, !tbaa !216
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 1080
  store i32 0, ptr %i.ib, align 8, !tbaa !452
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit223, %_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit
  %i.ic = phi i32 [ %i.ht, %_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit223 ], [ %i.fm, %_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit ] ; 4 uses
  %.val194 = load ptr, ptr %i.q, align 8, !tbaa !156
  %.not311 = icmp eq ptr %.val194, null
  br i1 %.not311, label %bb.bk, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.id = udiv i64 %.189, 3
  %i.ie = lshr i64 %.189, 10
  %i.if = add nuw nsw i64 %i.ie, 2
  %i.ig = add nuw nsw i64 %i.if, %i.id            ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 5240
  store i64 %i.ig, ptr %i.ih, align 8, !tbaa !284
  %i.ii = shl i64 %i.ig, 4
  %i.ij = add i64 %i.ii, 48
  %i.ik = and i64 %i.ij, -64                      ; 2 uses
  %i.il = icmp slt i32 %i.ic, 2
  br i1 %i.il, label %bb.bc, label %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i224

bb.bc:                                            ; preds = %bb.bb
  %i.im = load ptr, ptr %i.dm, align 8, !tbaa !77 ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  store ptr %i.im, ptr %i.in, align 8, !tbaa !79
  %.val.i.i.i227 = load ptr, ptr %i.br, align 8, !tbaa !84 ; 2 uses
  %i.io = ptrtoint ptr %.val.i.i.i227 to i64
  %i.ip = and i64 %i.io, -64
  %i.iq = inttoptr i64 %i.ip to ptr
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 728
  store ptr %i.iq, ptr %i.ir, align 8, !tbaa !281
  %i.is = ptrtoint ptr %i.im to i64
  %i.it = sub i64 0, %i.is
  %i.iu = and i64 %i.it, 63                       ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.iu ; 4 uses
  %i.iw = icmp ugt ptr %i.iv, %.val.i.i.i227
  br i1 %i.iw, label %_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit230, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store ptr %i.iv, ptr %i.dm, align 8, !tbaa !77
  store ptr %i.iv, ptr %i.bw, align 8, !tbaa !78
  %.not.i.i.i228 = icmp eq i64 %i.iu, 0
  br i1 %.not.i.i.i228, label %.thread.i.i.i229, label %bb.be

bb.be:                                            ; preds = %bb.bd
  store ptr %i.iv, ptr %i.in, align 8, !tbaa !79
  br label %.thread.i.i.i229

.thread.i.i.i229:                                 ; preds = %bb.be, %bb.bd
  store i32 2, ptr %i.dk, align 8, !tbaa !264
  br label %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i224

_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i224: ; preds = %.thread.i.i.i229, %bb.bb
  %i.ix = phi i32 [ 2, %.thread.i.i.i229 ], [ %i.ic, %bb.bb ] ; 3 uses
  %i.iy = icmp eq i64 %i.ik, 0
  br i1 %i.iy, label %_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit230, label %bb.bf

bb.bf:                                            ; preds = %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i224
  %i.iz = load ptr, ptr %i.bx, align 8, !tbaa !280
  %i.ja = sub i64 0, %i.ik
  %i.jb = getelementptr inbounds i8, ptr %i.iz, i64 %i.ja ; 5 uses
  %i.jc = load ptr, ptr %i.bw, align 8, !tbaa !78
  %i.jd = icmp ult ptr %i.jb, %i.jc
  br i1 %i.jd, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i8 1, ptr %i.dl, align 8, !tbaa !76
  br label %_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit230

bb.bh:                                            ; preds = %bb.bf
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !79
  %i.jg = icmp ult ptr %i.jb, %i.jf
  br i1 %i.jg, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store ptr %i.jb, ptr %i.je, align 8, !tbaa !79
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  store ptr %i.jb, ptr %i.bx, align 8, !tbaa !280
  br label %_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit230

_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit230: ; preds = %bb.bc, %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i224, %bb.bg, %bb.bj
  %i.jh = phi i32 [ %i.ix, %bb.bj ], [ %i.ix, %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i224 ], [ %i.ix, %bb.bg ], [ %i.ic, %bb.bc ]
  %.0.i.i225 = phi ptr [ %i.jb, %bb.bj ], [ null, %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i224 ], [ null, %bb.bg ], [ null, %bb.bc ]
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 5232
  store ptr %.0.i.i225, ptr %i.ji, align 8, !tbaa !285
  br label %bb.bk

bb.bk:                                            ; preds = %_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit230, %bb.ba
  %i.jj = phi i32 [ %i.jh, %_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit230 ], [ %i.ic, %bb.ba ] ; 4 uses
  %i.jk = icmp slt i32 %i.jj, 3
  br i1 %i.jk, label %bb.bl, label %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i231

bb.bl:                                            ; preds = %bb.bk
  %i.jl = icmp slt i32 %i.jj, 1
  br i1 %i.jl, label %bb.bm, label %.thread.i.i.i233

bb.bm:                                            ; preds = %bb.bl
  %i.jm = load ptr, ptr %i.dm, align 8, !tbaa !77 ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  store ptr %i.jm, ptr %i.jn, align 8, !tbaa !79
  %.val.i.i.i234 = load ptr, ptr %i.br, align 8, !tbaa !84 ; 2 uses
  %i.jo = ptrtoint ptr %.val.i.i.i234 to i64
  %i.jp = and i64 %i.jo, -64
  %i.jq = inttoptr i64 %i.jp to ptr
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 728
  store ptr %i.jq, ptr %i.jr, align 8, !tbaa !281
  %i.js = ptrtoint ptr %i.jm to i64
  %i.jt = sub i64 0, %i.js
  %i.ju = and i64 %i.jt, 63                       ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.ju ; 4 uses
  %i.jw = icmp ugt ptr %i.jv, %.val.i.i.i234
  br i1 %i.jw, label %bb.bt, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  store ptr %i.jv, ptr %i.dm, align 8, !tbaa !77
  store ptr %i.jv, ptr %i.bw, align 8, !tbaa !78
  %.not.i.i.i235 = icmp eq i64 %i.ju, 0
  br i1 %.not.i.i.i235, label %.thread.i.i.i233, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  store ptr %i.jv, ptr %i.jn, align 8, !tbaa !79
  br label %.thread.i.i.i233

.thread.i.i.i233:                                 ; preds = %bb.bo, %bb.bn, %bb.bl
  store i32 3, ptr %i.dk, align 8, !tbaa !264
  br label %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i231

_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i231: ; preds = %bb.bk, %.thread.i.i.i233
  %i.jx = phi i32 [ 3, %.thread.i.i.i233 ], [ %i.jj, %bb.bk ]
  %i.jy = load ptr, ptr %i.bx, align 8, !tbaa !280
  %i.jz = sub nuw i64 -32, %.189
  %i.ka = getelementptr inbounds i8, ptr %i.jy, i64 %i.jz ; 5 uses
  %i.kb = load ptr, ptr %i.bw, align 8, !tbaa !78
  %i.kc = icmp ult ptr %i.ka, %i.kb
  br i1 %i.kc, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i231
  store i8 1, ptr %i.dl, align 8, !tbaa !76
  br label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit.thread

bb.bq:                                            ; preds = %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i231
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !79
  %i.kf = icmp ult ptr %i.ka, %i.ke
  br i1 %i.kf, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store ptr %i.ka, ptr %i.kd, align 8, !tbaa !79
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  store ptr %i.ka, ptr %i.bx, align 8, !tbaa !280
  br label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit.thread

_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit.thread: ; preds = %bb.bs, %bb.bp
  %.0.i.i232.ph = phi ptr [ null, %bb.bp ], [ %i.ka, %bb.bs ]
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 968
  store ptr %.0.i.i232.ph, ptr %i.kg, align 8, !tbaa !453
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 1016
  store i64 %.189, ptr %i.kh, align 8, !tbaa !454
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 3528
  store i32 %5, ptr %i.ki, align 8, !tbaa !169
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 3544
  store i64 %i.ap, ptr %i.kj, align 8, !tbaa !246
  br label %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i236

bb.bt:                                            ; preds = %bb.bm
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 968
  store ptr null, ptr %i.kk, align 8, !tbaa !453
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 1016
  store i64 %.189, ptr %i.kl, align 8, !tbaa !454
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 3528
  store i32 %5, ptr %i.km, align 8, !tbaa !169
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 3544
  store i64 %i.ap, ptr %i.kn, align 8, !tbaa !246
  %i.ko = load ptr, ptr %i.dm, align 8, !tbaa !77 ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  store ptr %i.ko, ptr %i.kp, align 8, !tbaa !79
  %.val.i.i.i239 = load ptr, ptr %i.br, align 8, !tbaa !84 ; 2 uses
  %i.kq = ptrtoint ptr %.val.i.i.i239 to i64
  %i.kr = and i64 %i.kq, -64
  %i.ks = inttoptr i64 %i.kr to ptr
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 728
  store ptr %i.ks, ptr %i.kt, align 8, !tbaa !281
  %i.ku = ptrtoint ptr %i.ko to i64
  %i.kv = sub i64 0, %i.ku
  %i.kw = and i64 %i.kv, 63                       ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.kw ; 4 uses
  %i.ky = icmp ugt ptr %i.kx, %.val.i.i.i239
  br i1 %i.ky, label %bb.cb, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  store ptr %i.kx, ptr %i.dm, align 8, !tbaa !77
  store ptr %i.kx, ptr %i.bw, align 8, !tbaa !78
  %.not.i.i.i240 = icmp eq i64 %i.kw, 0
  br i1 %.not.i.i.i240, label %.thread.i.i.i238, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  store ptr %i.kx, ptr %i.kp, align 8, !tbaa !79
  br label %.thread.i.i.i238

.thread.i.i.i238:                                 ; preds = %bb.bv, %bb.bu
  store i32 3, ptr %i.dk, align 8, !tbaa !264
  br label %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i236

_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i236: ; preds = %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit.thread, %.thread.i.i.i238
  %i.kz = phi i32 [ 3, %.thread.i.i.i238 ], [ %i.jx, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit.thread ]
  %i.la = icmp eq i64 %i.ap, 0
  br i1 %i.la, label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit241.thread, label %bb.bw

bb.bw:                                            ; preds = %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i236
  %i.lb = load ptr, ptr %i.bx, align 8, !tbaa !280
  %i.lc = sub i64 0, %i.ap
  %i.ld = getelementptr inbounds i8, ptr %i.lb, i64 %i.lc ; 5 uses
  %i.le = load ptr, ptr %i.bw, align 8, !tbaa !78
  %i.lf = icmp ult ptr %i.ld, %i.le
  br i1 %i.lf, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  store i8 1, ptr %i.dl, align 8, !tbaa !76
  br label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit241.thread

bb.by:                                            ; preds = %bb.bw
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !79
  %i.li = icmp ult ptr %i.ld, %i.lh
  br i1 %i.li, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store ptr %i.ld, ptr %i.lg, align 8, !tbaa !79
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  store ptr %i.ld, ptr %i.bx, align 8, !tbaa !280
  br label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit241.thread

_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit241.thread: ; preds = %bb.ca, %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i236, %bb.bx
  %.0.i.i237.ph = phi ptr [ null, %bb.bx ], [ null, %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i236 ], [ %i.ld, %bb.ca ]
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 3536
  store ptr %.0.i.i237.ph, ptr %i.lj, align 8, !tbaa !159
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 3584
  store i64 %i.ao, ptr %i.lk, align 8, !tbaa !247
  br label %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i242

bb.cb:                                            ; preds = %bb.bt
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 3536
  store ptr null, ptr %i.ll, align 8, !tbaa !159
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 3584
  store i64 %i.ao, ptr %i.lm, align 8, !tbaa !247
  %i.ln = load ptr, ptr %i.dm, align 8, !tbaa !77 ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  store ptr %i.ln, ptr %i.lo, align 8, !tbaa !79
  %.val.i.i.i245 = load ptr, ptr %i.br, align 8, !tbaa !84 ; 2 uses
  %i.lp = ptrtoint ptr %.val.i.i.i245 to i64
  %i.lq = and i64 %i.lp, -64
  %i.lr = inttoptr i64 %i.lq to ptr
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 728
  store ptr %i.lr, ptr %i.ls, align 8, !tbaa !281
  %i.lt = ptrtoint ptr %i.ln to i64
  %i.lu = sub i64 0, %i.lt
  %i.lv = and i64 %i.lu, 63                       ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.lv ; 4 uses
  %i.lx = icmp ugt ptr %i.lw, %.val.i.i.i245
  br i1 %i.lx, label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit247, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  store ptr %i.lw, ptr %i.dm, align 8, !tbaa !77
  store ptr %i.lw, ptr %i.bw, align 8, !tbaa !78
  %.not.i.i.i246 = icmp eq i64 %i.lv, 0
  br i1 %.not.i.i.i246, label %.thread.i.i.i244, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  store ptr %i.lw, ptr %i.lo, align 8, !tbaa !79
  br label %.thread.i.i.i244

.thread.i.i.i244:                                 ; preds = %bb.cd, %bb.cc
  store i32 3, ptr %i.dk, align 8, !tbaa !264
  br label %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i242

_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i242: ; preds = %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit241.thread, %.thread.i.i.i244
  %i.ly = phi i32 [ 3, %.thread.i.i.i244 ], [ %i.kz, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit241.thread ] ; 3 uses
  %i.lz = icmp eq i64 %i.ao, 0
  br i1 %i.lz, label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit247, label %bb.ce

bb.ce:                                            ; preds = %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i242
  %i.ma = load ptr, ptr %i.bx, align 8, !tbaa !280
  %i.mb = sub i64 0, %i.ao
  %i.mc = getelementptr inbounds i8, ptr %i.ma, i64 %i.mb ; 5 uses
  %i.md = load ptr, ptr %i.bw, align 8, !tbaa !78
  %i.me = icmp ult ptr %i.mc, %i.md
  br i1 %i.me, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  store i8 1, ptr %i.dl, align 8, !tbaa !76
  br label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit247

bb.cg:                                            ; preds = %bb.ce
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !79
  %i.mh = icmp ult ptr %i.mc, %i.mg
  br i1 %i.mh, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store ptr %i.mc, ptr %i.mf, align 8, !tbaa !79
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  store ptr %i.mc, ptr %i.bx, align 8, !tbaa !280
  br label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit247

_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit247: ; preds = %bb.cb, %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i242, %bb.cf, %bb.ci
  %i.mi = phi i32 [ %i.ly, %bb.ci ], [ %i.ly, %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i242 ], [ %i.ly, %bb.cf ], [ %i.jj, %bb.cb ] ; 2 uses
  %.0.i.i243 = phi ptr [ %i.mc, %bb.ci ], [ null, %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i242 ], [ null, %bb.cf ], [ null, %bb.cb ]
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 3576
  store ptr %.0.i.i243, ptr %i.mj, align 8, !tbaa !270
  %i.mk = load i32, ptr %i.d, align 8, !tbaa !101
  %i.ml = icmp eq i32 %i.mk, 1
  br i1 %i.ml, label %bb.cj, label %bb.cr

bb.cj:                                            ; preds = %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit247
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !126
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.mp = load i32, ptr %i.mo, align 8, !tbaa !128
  %i.mq = sub i32 %i.mn, %i.mp
  %i.mr = zext nneg i32 %i.mq to i64
  %i.ms = shl nuw i64 1, %i.mr                    ; 2 uses
  %i.mt = icmp slt i32 %i.mi, 3
  br i1 %i.mt, label %bb.ck, label %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i248
end_hunk_0
