Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/decompress2?download=true
inline.NumInlined: 332
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 13
begin_hunk_0_@DCTX_runDecoder:bb.a
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %.01.i293
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !48
  %i.ms = add i32 %i.mm, %i.mr
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %.01.i293
  store i32 %i.ms, ptr %i.mt, align 4, !tbaa !48
  %i.mu = add nuw nsw i64 %.01.i293, 1            ; 2 uses
  %i.mv = load i32, ptr %i.me, align 4, !tbaa !84 ; 2 uses
  %i.mw = zext i32 %i.mv to i64
  %i.mx = icmp samesign ult i64 %i.mu, %i.mw
  br i1 %i.mx, label %bb.ad, label %.critedge299.i.loopexit, !llvm.loop !125

DCTX_getRegeneratedStreamIDs.exit294:             ; preds = %bb.ab
  %i.my = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @runFusedDecoder.__zl_static_error_info.184, ptr noundef nonnull %10, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.147, i32 noundef 1402, i32 noundef 70, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef null, ptr noundef null) #16 ; 2 uses
  %i.mz = extractvalue { i32, ptr } %i.my, 0      ; 2 uses
  %i.na = extractvalue { i32, ptr } %i.my, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.mz, ptr %i.na, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #16
  br label %runFusedDecoder.exit

.critedge299.i.loopexit:                          ; preds = %bb.ad
  %i.nb = zext i32 %i.mv to i64
  br label %.critedge299.i

.critedge299.i:                                   ; preds = %bb.ac, %.critedge299.i.loopexit
  %i.nc = phi i64 [ %i.nb, %.critedge299.i.loopexit ], [ 0, %bb.ac ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  store ptr %0, ptr %11, align 8, !tbaa !162
  %i.nd = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ne = load ptr, ptr %i.ag, align 8, !tbaa !40
  store ptr %i.ne, ptr %i.nd, align 8, !tbaa !163
  %i.nf = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.ai, ptr %i.nf, align 8, !tbaa !164
  %i.ng = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %i.an, ptr %i.ng, align 8, !tbaa !165
  %i.nh = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %i.km, ptr %i.nh, align 8, !tbaa !166
  %i.ni = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr %i.bl, ptr %i.ni, align 8, !tbaa !167
  %i.nj = getelementptr inbounds nuw i8, ptr %11, i64 48
  store i64 %i.ae, ptr %i.nj, align 8, !tbaa !168
  %i.nk = getelementptr inbounds nuw i8, ptr %11, i64 56
  store ptr %i.mi, ptr %i.nk, align 8, !tbaa !169
  %i.nl = getelementptr inbounds nuw i8, ptr %11, i64 64
  store i64 %i.nc, ptr %i.nl, align 8, !tbaa !170
  %i.nm = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !171
  %i.no = call { i32, i64 } %i.nn(ptr noundef nonnull %11) #16, !inline_history !126 ; 2 uses
  %i.np = extractvalue { i32, i64 } %i.no, 0      ; 3 uses
  %i.nq = extractvalue { i32, i64 } %i.no, 1      ; 2 uses
  store i32 %i.np, ptr %9, align 8, !tbaa !48
  store i64 %i.nq, ptr %.sroa.483.0..sroa_idx.i, align 8, !tbaa !71
  %i.nr = inttoptr i64 %i.nq to ptr
  switch i32 %i.np, label %bb.af [
    i32 0, label %bb.ag
    i32 5, label %bb.ae
  ], !prof !172

bb.ae:                                            ; preds = %.critedge299.i
  call void @ZL_E_changeErrorCode(ptr noundef nonnull %9, i32 noundef 80) #16
  %i.ns = load i32, ptr %9, align 8
  %i.nt = load ptr, ptr %.sroa.483.0..sroa_idx.i, align 8
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.ns, ptr %i.nt, ptr noundef nonnull @.str.44) #16
  %.pre.i = load i32, ptr %9, align 8
  %.pre355.i = load ptr, ptr %.sroa.483.0..sroa_idx.i, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.critedge299.i
  %i.nu = phi ptr [ %i.nr, %.critedge299.i ], [ %.pre355.i, %bb.ae ]
  %i.nv = phi i32 [ %i.np, %.critedge299.i ], [ %.pre.i, %bb.ae ]
  %i.nw = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %10, i32 %i.nv, ptr %i.nu, ptr nonnull @runFusedDecoder.__zl_static_error_info.185, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.147, i32 noundef 1418, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13) #16 ; 2 uses
  %i.nx = extractvalue { i32, ptr } %i.nw, 0
  %i.ny = extractvalue { i32, ptr } %i.nw, 1
  br label %bb.aq

bb.ag:                                            ; preds = %.critedge299.i
  %i.nz = load i32, ptr %i.me, align 4, !tbaa !84
  %.fr = freeze i32 %i.nz                         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.oa = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.oa, i8 0, i64 24, i1 false)
  store ptr %i.c, ptr %4, align 8, !tbaa !44
  %.not1824.not.i280 = icmp eq i32 %.fr, 0
  br i1 %.not1824.not.i280, label %DCTX_validateNodeOutputs.exit290.thread, label %.lr.ph.i281

.lr.ph.i281:                                      ; preds = %bb.ag
  %i.ob = zext i32 %.fr to i64                    ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !52 ; 5 uses
  %xtraiter595 = and i64 %i.ob, 3                 ; 3 uses
  %i.oe = icmp ult i32 %.fr, 4
  br i1 %i.oe, label %.epil.preheader, label %.lr.ph.i281.new

.lr.ph.i281.new:                                  ; preds = %.lr.ph.i281
  %unroll_iter = and i64 %i.ob, 4294967292
  br label %bb.al

bb.ah:                                            ; preds = %bb.al
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %.025.i282
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 4
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !48
  %i.oi = zext i32 %i.oh to i64
  %i.oj = getelementptr inbounds nuw [24 x i8], ptr %i.od, i64 %i.oi
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !56
  %.not.i283.1 = icmp eq ptr %i.ok, null
  br i1 %.not.i283.1, label %DCTX_validateNodeOutputs.exit290, label %bb.ai, !prof !45

bb.ai:                                            ; preds = %bb.ah
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %.025.i282
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 8
  %i.on = load i32, ptr %i.om, align 4, !tbaa !48
  %i.oo = zext i32 %i.on to i64
  %i.op = getelementptr inbounds nuw [24 x i8], ptr %i.od, i64 %i.oo
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !56
  %.not.i283.2 = icmp eq ptr %i.oq, null
  br i1 %.not.i283.2, label %DCTX_validateNodeOutputs.exit290, label %bb.aj, !prof !45

bb.aj:                                            ; preds = %bb.ai
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %.025.i282
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 12
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !48
  %i.ou = zext i32 %i.ot to i64
  %i.ov = getelementptr inbounds nuw [24 x i8], ptr %i.od, i64 %i.ou
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !56
  %.not.i283.3 = icmp eq ptr %i.ow, null
  br i1 %.not.i283.3, label %DCTX_validateNodeOutputs.exit290, label %bb.ak, !prof !45

bb.ak:                                            ; preds = %bb.aj
  %i.ox = add nuw nsw i64 %.025.i282, 4           ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %DCTX_validateNodeOutputs.exit290.thread.loopexit.unr-lcssa, label %bb.al, !llvm.loop !127

bb.al:                                            ; preds = %bb.ak, %.lr.ph.i281.new
  %.025.i282 = phi i64 [ 0, %.lr.ph.i281.new ], [ %i.ox, %bb.ak ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i281.new ], [ %niter.next.3, %bb.ak ]
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %.025.i282
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !48
  %i.pa = zext i32 %i.oz to i64
  %i.pb = getelementptr inbounds nuw [24 x i8], ptr %i.od, i64 %i.pa
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !56
  %.not.i283 = icmp eq ptr %i.pc, null
  br i1 %.not.i283, label %DCTX_validateNodeOutputs.exit290, label %bb.ah, !prof !45

DCTX_validateNodeOutputs.exit290.thread.loopexit.unr-lcssa: ; preds = %bb.ak
  %lcmp.mod596.not = icmp eq i64 %xtraiter595, 0
  br i1 %lcmp.mod596.not, label %DCTX_validateNodeOutputs.exit290.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %DCTX_validateNodeOutputs.exit290.thread.loopexit.unr-lcssa, %.lr.ph.i281
  %.025.i282.epil.init = phi i64 [ 0, %.lr.ph.i281 ], [ %i.ox, %DCTX_validateNodeOutputs.exit290.thread.loopexit.unr-lcssa ]
  %lcmp.mod597 = icmp ne i64 %xtraiter595, 0
  call void @llvm.assume(i1 %lcmp.mod597)
  br label %bb.am

bb.am:                                            ; preds = %bb.an, %.epil.preheader
  %.025.i282.epil = phi i64 [ %.025.i282.epil.init, %.epil.preheader ], [ %i.pi, %bb.an ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.an ]
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %.025.i282.epil
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !48
  %i.pf = zext i32 %i.pe to i64
  %i.pg = getelementptr inbounds nuw [24 x i8], ptr %i.od, i64 %i.pf
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !56
  %.not.i283.epil = icmp eq ptr %i.ph, null
  br i1 %.not.i283.epil, label %DCTX_validateNodeOutputs.exit290, label %bb.an, !prof !45

bb.an:                                            ; preds = %bb.am
  %i.pi = add nuw nsw i64 %.025.i282.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter595
  br i1 %epil.iter.cmp.not, label %DCTX_validateNodeOutputs.exit290.thread, label %bb.am, !llvm.loop !128

DCTX_validateNodeOutputs.exit290.thread:          ; preds = %DCTX_validateNodeOutputs.exit290.thread.loopexit.unr-lcssa, %bb.an, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %.preheader.i

DCTX_validateNodeOutputs.exit290:                 ; preds = %bb.am, %bb.al, %bb.ah, %bb.ai, %bb.aj
  %i.pj = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @DCTX_validateNodeOutputs.__zl_static_error_info, ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.212, i32 noundef 1271, i32 noundef 52, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef null, ptr noundef null) #16 ; 2 uses
  %i.pk = extractvalue { i32, ptr } %i.pj, 0      ; 3 uses
  %i.pl = extractvalue { i32, ptr } %i.pj, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.pk, ptr %i.pl, ptr noundef nonnull @.str.214) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %.not279.i = icmp eq i32 %i.pk, 0
  br i1 %.not279.i, label %.preheader.i, label %bb.ao, !prof !87

.preheader.i:                                     ; preds = %DCTX_validateNodeOutputs.exit290.thread, %DCTX_validateNodeOutputs.exit290
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 1424 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.po = load i8, ptr %i.pm, align 8, !tbaa !46, !range !60, !noundef !61
  %i.pp = trunc nuw i8 %i.po to i1
  br i1 %i.pp, label %.split.us.i, label %.preheader.split.i

bb.ao:                                            ; preds = %DCTX_validateNodeOutputs.exit290
  %i.pq = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %10, i32 %i.pk, ptr %i.pl, ptr nonnull @runFusedDecoder.__zl_static_error_info.186, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.147, i32 noundef 1422, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13) #16 ; 2 uses
  %i.pr = extractvalue { i32, ptr } %i.pq, 0
  %i.ps = extractvalue { i32, ptr } %i.pq, 1
  br label %bb.aq

.split.us.i:                                      ; preds = %DCTX_freeDecoderInputStreams.exit.i, %.preheader.i
  %i.pt = load ptr, ptr %i.ag, align 8, !tbaa !40
  call void @ALLOC_Arena_freeAll(ptr noundef %i.pt) #16
  br label %bb.aq

.preheader.splitthread-pre-split.i:               ; preds = %DCTX_freeDecoderInputStreams.exit.i
  %16 = add nuw nsw i64 %.0340.i, 1
  %.pr.i = load i8, ptr %i.pm, align 8, !tbaa !46
  br label %.preheader.split.i

.preheader.split.i:                               ; preds = %.preheader.i, %.preheader.splitthread-pre-split.i
  %17 = phi i8 [ %.pr.i, %.preheader.splitthread-pre-split.i ], [ 0, %.preheader.i ]
  %.0340.i = phi i64 [ %16, %.preheader.splitthread-pre-split.i ], [ 0, %.preheader.i ] ; 3 uses
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.0340.i
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !79 ; 2 uses
  %i.pw = trunc nuw i8 %17 to i1
  br i1 %i.pw, label %DCTX_freeDecoderInputStreams.exit.i, label %.preheader.i302.i

.preheader.i302.i:                                ; preds = %.preheader.split.i
  %i.px = getelementptr inbounds nuw i8, ptr %i.pv, i64 44 ; 2 uses
  %i.py = load i32, ptr %i.px, align 4, !tbaa !76
  %.not.i303.i = icmp eq i32 %i.py, 0
  br i1 %.not.i303.i, label %DCTX_freeDecoderInputStreams.exit.i, label %.lr.ph.i304.i

.lr.ph.i304.i:                                    ; preds = %.preheader.i302.i
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pv, i64 40
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.lr.ph.i304.i
  %.09.i.i = phi i32 [ 0, %.lr.ph.i304.i ], [ %i.qg, %bb.ap ] ; 2 uses
  %i.qa = load i32, ptr %i.pz, align 8, !tbaa !75
  %i.qb = add i32 %i.qa, %.09.i.i
  %i.qc = load ptr, ptr %i.pn, align 8, !tbaa !52
  %i.qd = zext i32 %i.qb to i64
  %i.qe = getelementptr inbounds nuw [24 x i8], ptr %i.qc, i64 %i.qd ; 2 uses
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !63
  call void @STREAM_free(ptr noundef %i.qf) #16
  store ptr null, ptr %i.qe, align 8, !tbaa !63
  %i.qg = add nuw i32 %.09.i.i, 1                 ; 2 uses
  %i.qh = load i32, ptr %i.px, align 4, !tbaa !76
  %i.qi = icmp ult i32 %i.qg, %i.qh
  br i1 %i.qi, label %bb.ap, label %DCTX_freeDecoderInputStreams.exit.i, !llvm.loop !129

DCTX_freeDecoderInputStreams.exit.i:              ; preds = %bb.ap, %.preheader.i302.i, %.preheader.split.i
  %exitcond354.not.i = icmp eq i64 %.0340.i, %i.ad
  br i1 %exitcond354.not.i, label %.split.us.i, label %.preheader.splitthread-pre-split.i, !llvm.loop !130

bb.aq:                                            ; preds = %.split.us.i, %bb.ao, %bb.af
  %.fca.1.load359.i = phi ptr [ null, %.split.us.i ], [ %i.ps, %bb.ao ], [ %i.ny, %bb.af ]
  %.fca.0.load357.i = phi i32 [ 0, %.split.us.i ], [ %i.pr, %bb.ao ], [ %i.nx, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br label %runFusedDecoder.exit

runFusedDecoder.exit:                             ; preds = %bb.f, %bb.h, %bb.j, %bb.k, %bb.m, %bb.n, %bb.o, %bb.q, %bb.r, %bb.t, %bb.x, %bb.aa, %DCTX_getRegeneratedStreamIDs.exit294, %bb.aq
  %.fca.1.load.i = phi ptr [ %i.mb, %bb.aa ], [ %i.lk, %bb.x ], [ %i.gf, %bb.o ], [ %i.fw, %bb.n ], [ %i.fm, %bb.m ], [ %i.bi, %bb.j ], [ %i.na, %DCTX_getRegeneratedStreamIDs.exit294 ], [ %i.kr, %bb.t ], [ %i.ka, %bb.q ], [ %i.bp, %bb.k ], [ %i.as, %bb.h ], [ %i.al, %bb.f ], [ %i.kj, %bb.r ], [ %.fca.1.load359.i, %bb.aq ]
  %.fca.0.load.i = phi i32 [ %i.ma, %bb.aa ], [ %i.lj, %bb.x ], [ %i.ge, %bb.o ], [ %i.fv, %bb.n ], [ %i.fl, %bb.m ], [ %i.bh, %bb.j ], [ %i.mz, %DCTX_getRegeneratedStreamIDs.exit294 ], [ %i.kq, %bb.t ], [ %i.jz, %bb.q ], [ %i.bo, %bb.k ], [ %i.ar, %bb.h ], [ %i.ak, %bb.f ], [ %i.ki, %bb.r ], [ %.fca.0.load357.i, %bb.aq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %.not216 = icmp eq i32 %.fca.0.load.i, 0
  br i1 %.not216, label %.critedge, label %bb.ar, !prof !174

bb.ar:                                            ; preds = %runFusedDecoder.exit
  %i.qj = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %13, i32 %.fca.0.load.i, ptr %.fca.1.load.i, ptr nonnull @DCTX_runDecoder.__zl_static_error_info.22, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.21, i32 noundef 1471, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13) #16 ; 2 uses
  %i.qk = extractvalue { i32, ptr } %i.qj, 0
  %i.ql = extractvalue { i32, ptr } %i.qj, 1
  %i.qm = ptrtoint ptr %i.ql to i64
  br label %.critedge

bb.as:                                            ; preds = %bb.d, %bb.c
  %i.qn = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 8 uses
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !84
  %i.qp = icmp eq i32 %i.qo, 1
  br i1 %i.qp, label %bb.at, label %.critedge236

bb.at:                                            ; preds = %bb.as
  %i.qq = zext i32 %i.r to i64
  %i.qr = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !85
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !48
  %i.qu = zext i32 %i.qt to i64
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !52
  %i.qx = getelementptr inbounds nuw [24 x i8], ptr %i.qw, i64 %i.qq
  %i.qy = getelementptr inbounds nuw [24 x i8], ptr %i.qx, i64 %i.u
  %i.qz = getelementptr inbounds nuw [24 x i8], ptr %i.qy, i64 %i.qu ; 5 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 8 ; 3 uses
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !64
  %.not217 = icmp eq ptr %i.rb, null
  br i1 %.not217, label %.critedge236, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.rc = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rc, i8 0, i64 24, i1 false)
  %i.rd = tail call ptr @ZL_NULL_getOperationContext(ptr noundef null) #17
  store ptr %i.rd, ptr %7, align 8, !tbaa !44
  %i.re = load ptr, ptr %i.ra, align 8, !tbaa !64 ; 6 uses
  %i.rf = tail call fastcc { i32, i64 } @ZL_AppendToOutputOptimization_commitInputs(ptr noundef %i.re) ; 2 uses
  %i.rg = extractvalue { i32, i64 } %i.rf, 0      ; 2 uses
  %.not.i253 = icmp eq i32 %i.rg, 0
  br i1 %.not.i253, label %bb.aw, label %bb.av, !prof !58

bb.av:                                            ; preds = %bb.au
  %i.rh = extractvalue { i32, i64 } %i.rf, 1
  %i.ri = inttoptr i64 %i.rh to ptr
  %i.rj = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %7, i32 %i.rg, ptr %i.ri, ptr nonnull @ZL_AppendToOutputOptimization_preTransformHook.__zl_static_error_info, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.187, i32 noundef 563, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13) #16 ; 2 uses
  %i.rk = extractvalue { i32, ptr } %i.rj, 0
  %i.rl = extractvalue { i32, ptr } %i.rj, 1
  br label %ZL_AppendToOutputOptimization_preTransformHook.exit

bb.aw:                                            ; preds = %bb.au
  %i.rm = load ptr, ptr %i.ra, align 8, !tbaa !64
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 32
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !88
  %i.rp = icmp eq ptr %i.qz, %i.ro
  br i1 %i.rp, label %bb.ax, label %ZL_AppendToOutputOptimization_preTransformHook.exit.thread

bb.ax:                                            ; preds = %bb.aw
  %i.rq = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  %i.rr = load i64, ptr %i.rq, align 8, !tbaa !68 ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.re, i64 16
  %i.rt = load i64, ptr %i.rs, align 8, !tbaa !89 ; 2 uses
  %.not57.i = icmp eq i64 %i.rr, %i.rt
  br i1 %.not57.i, label %bb.az, label %bb.ay, !prof !58

bb.ay:                                            ; preds = %bb.ax
  %i.ru = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_AppendToOutputOptimization_preTransformHook.__zl_static_error_info.188, ptr noundef nonnull %7, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.187, i32 noundef 570, i32 noundef 12, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.191, i64 noundef %i.rr, i64 noundef %i.rt) #16 ; 2 uses
  %i.rv = extractvalue { i32, ptr } %i.ru, 0      ; 2 uses
  %i.rw = extractvalue { i32, ptr } %i.ru, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.rv, ptr %i.rw, ptr noundef nonnull @.str.192) #16
  br label %ZL_AppendToOutputOptimization_preTransformHook.exit

bb.az:                                            ; preds = %bb.ax
  %i.rx = load ptr, ptr %i.qz, align 8, !tbaa !56
  %i.ry = tail call ptr @ZL_Data_wPtr(ptr noundef %i.rx) #16 ; 2 uses
  %i.rz = load ptr, ptr %i.qz, align 8, !tbaa !56
  %i.sa = tail call i64 @STREAM_byteCapacity(ptr noundef %i.rz) #16
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.sa
  %i.sc = getelementptr inbounds nuw i8, ptr %i.re, i64 48 ; 2 uses
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !69 ; 3 uses
  %i.se = ptrtoint ptr %i.sb to i64
  %i.sf = ptrtoint ptr %i.sd to i64               ; 2 uses
  %i.sg = sub i64 %i.se, %i.sf                    ; 3 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.re, i64 40 ; 4 uses
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !70 ; 4 uses
  %i.sj = icmp ugt ptr %i.sd, %i.si
  br i1 %i.sj, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.sk = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !48
  %i.sl = icmp sgt i32 %i.sk, 63
  br i1 %i.sl, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.sm = ptrtoint ptr %i.si to i64
  %i.sn = sub i64 %i.sf, %i.sm
  tail call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.187, i32 noundef 580, ptr noundef nonnull @.str.193, i64 noundef %i.sg, i64 noundef %i.sn) #16
  %.pre.i256 = load ptr, ptr %i.sh, align 8, !tbaa !70
  %.pre61.i = load ptr, ptr %i.sc, align 8, !tbaa !69
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.so = phi ptr [ %i.sd, %bb.ba ], [ %.pre61.i, %bb.bb ]
  %i.sp = phi ptr [ %i.si, %bb.ba ], [ %.pre.i256, %bb.bb ]
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.sp, ptr align 1 %i.so, i64 %i.sg, i1 false)
  %.pre62.i = load ptr, ptr %i.sh, align 8, !tbaa !70
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.az
  %i.sq = phi ptr [ %.pre62.i, %bb.bc ], [ %i.si, %bb.az ]
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 %i.sg ; 2 uses
  store ptr %i.sr, ptr %i.sh, align 8, !tbaa !70
  %i.ss = ptrtoint ptr %i.sr to i64
  %i.st = ptrtoint ptr %i.ry to i64
  %i.su = sub i64 %i.ss, %i.st                    ; 2 uses
  %i.sv = load ptr, ptr %i.qz, align 8, !tbaa !56
  %i.sw = tail call { i32, i64 } @ZL_Data_commit(ptr noundef %i.sv, i64 noundef %i.su) #16 ; 2 uses
  %i.sx = extractvalue { i32, i64 } %i.sw, 0      ; 2 uses
  %.not58.i = icmp eq i32 %i.sx, 0
  br i1 %.not58.i, label %bb.bf, label %bb.be, !prof !58

bb.be:                                            ; preds = %bb.bd
  %i.sy = extractvalue { i32, i64 } %i.sw, 1
  %i.sz = inttoptr i64 %i.sy to ptr
  %i.ta = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %7, i32 %i.sx, ptr %i.sz, ptr nonnull @ZL_AppendToOutputOptimization_preTransformHook.__zl_static_error_info.194, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.187, i32 noundef 586, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13) #16 ; 2 uses
  %i.tb = extractvalue { i32, ptr } %i.ta, 0
  %i.tc = extractvalue { i32, ptr } %i.ta, 1
  br label %ZL_AppendToOutputOptimization_preTransformHook.exit

bb.bf:                                            ; preds = %bb.bd
  %i.td = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !48
  %i.te = icmp sgt i32 %i.td, 63
  br i1 %i.te, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  tail call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.187, i32 noundef 589, ptr noundef nonnull @.str.195, i64 noundef %i.su) #16
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.re, i8 0, i64 56, i1 false)
  br label %ZL_AppendToOutputOptimization_preTransformHook.exit.thread

ZL_AppendToOutputOptimization_preTransformHook.exit.thread: ; preds = %bb.bh, %bb.aw
  %.sroa.17.2.i.ph = phi i64 [ 0, %bb.aw ], [ 1, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.bj

ZL_AppendToOutputOptimization_preTransformHook.exit: ; preds = %bb.av, %bb.ay, %bb.be
  %.sroa.045.2.i = phi i32 [ %i.rk, %bb.av ], [ %i.tb, %bb.be ], [ %i.rv, %bb.ay ] ; 2 uses
  %.sroa.17.2.i.in = phi ptr [ %i.rl, %bb.av ], [ %i.tc, %bb.be ], [ %i.rw, %bb.ay ] ; 2 uses
  %.sroa.17.2.i = ptrtoint ptr %.sroa.17.2.i.in to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %.not218 = icmp eq i32 %.sroa.045.2.i, 0
  br i1 %.not218, label %bb.bj, label %bb.bi, !prof !175

bb.bi:                                            ; preds = %ZL_AppendToOutputOptimization_preTransformHook.exit
  %i.tf = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %13, i32 %.sroa.045.2.i, ptr %.sroa.17.2.i.in, ptr nonnull @DCTX_runDecoder.__zl_static_error_info.23, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.21, i32 noundef 1484, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13) #16 ; 2 uses
  %i.tg = extractvalue { i32, ptr } %i.tf, 0
  %i.th = extractvalue { i32, ptr } %i.tf, 1
  %i.ti = ptrtoint ptr %i.th to i64
  br label %.critedge

bb.bj:                                            ; preds = %ZL_AppendToOutputOptimization_preTransformHook.exit, %ZL_AppendToOutputOptimization_preTransformHook.exit.thread
  %.sroa.17.2.i338 = phi i64 [ %.sroa.17.2.i.ph, %ZL_AppendToOutputOptimization_preTransformHook.exit.thread ], [ %.sroa.17.2.i, %ZL_AppendToOutputOptimization_preTransformHook.exit ]
  %i.tj = icmp eq i64 %.sroa.17.2.i338, 0
  br i1 %i.tj, label %..critedge236_crit_edge, label %.critedge

..critedge236_crit_edge:                          ; preds = %bb.bj
  %.pre = load i32, ptr %i.s, align 4, !tbaa !76
  %.pre416 = zext i32 %.pre to i64
  br label %.critedge236

.critedge236:                                     ; preds = %..critedge236_crit_edge, %bb.at, %bb.as
  %.pre-phi = phi i64 [ %.pre416, %..critedge236_crit_edge ], [ %i.u, %bb.at ], [ %i.u, %bb.as ]
  %i.tk = getelementptr inbounds nuw i8, ptr %0, i64 1440 ; 4 uses
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !39
  %i.tm = shl nuw nsw i64 %.pre-phi, 3
  %i.tn = call ptr @ALLOC_Arena_malloc(ptr noundef %i.tl, i64 noundef %i.tm) #16 ; 10 uses
  %i.to = icmp eq ptr %i.tn, null
  br i1 %i.to, label %DCTX_getNodeInputs.exit, label %.preheader.i258

.preheader.i258:                                  ; preds = %.critedge236
  %i.tp = load i32, ptr %i.s, align 4, !tbaa !76  ; 9 uses
  %.not.i259 = icmp eq i32 %i.tp, 0
  br i1 %.not.i259, label %.critedge238, label %.lr.ph.i260

end_hunk_0
