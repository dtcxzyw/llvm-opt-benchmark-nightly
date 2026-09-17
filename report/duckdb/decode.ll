Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/decode?download=true
inline.NumInlined: 20
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN13duckdb_brotli29BrotliDecoderDecompressStreamEPNS_24BrotliDecoderStateStructEPmPPKhS2_PPhS2_:bb.a

bb.cb:                                            ; preds = %bb.bz
  %notmask.i = shl nsw i32 -1, %i.qi
  %i.re = xor i32 %notmask.i, -1
  %i.rf = add nsw i32 %i.rb, -1
  %i.rg = shl i32 %i.rf, %i.qi
  %i.rh = or i32 %i.rg, %i.re
  %i.ri = add nuw i32 %i.qp, 17
  %i.rj = add i32 %i.ri, %i.rh
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.sroa.0.0.i = phi i32 [ %i.rd, %bb.ca ], [ %i.rj, %bb.cb ]
  %i.rk = zext i32 %.sroa.0.0.i to i64
  br label %_ZN13duckdb_brotliL32BrotliCalculateDistanceCodeLimitEjjj.exit

_ZN13duckdb_brotliL32BrotliCalculateDistanceCodeLimitEjjj.exit: ; preds = %bb.by, %bb.cc
  %.sroa.0.0.insert.insert.i = phi i64 [ %i.rk, %bb.cc ], [ 2147483660, %bb.by ]
  %i.rl = shl i32 62, %i.qj
  %i.rm = zext i32 %i.rl to i64
  %i.rn = add i64 %i.qh, %i.rm
  br label %bb.cd

bb.cd:                                            ; preds = %_ZN13duckdb_brotliL32BrotliCalculateDistanceCodeLimitEjjj.exit, %bb.bx
  %.0311 = phi i64 [ %i.rn, %_ZN13duckdb_brotliL32BrotliCalculateDistanceCodeLimitEjjj.exit ], [ %i.qm, %bb.bx ]
  %.0310 = phi i64 [ %.sroa.0.0.insert.insert.i, %_ZN13duckdb_brotliL32BrotliCalculateDistanceCodeLimitEjjj.exit ], [ %i.qm, %bb.bx ]
  %i.ro = load i64, ptr %i.ba, align 8, !tbaa !41
  %i.rp = shl i64 %i.ro, 2
  %i.rq = call fastcc noundef i32 @_ZN13duckdb_brotliL16DecodeContextMapEmPmPPhPNS_24BrotliDecoderStateStructE(i64 noundef %i.rp, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.bc, ptr noundef nonnull %0) ; 2 uses
  %.not375 = icmp eq i32 %i.rq, 1
  br i1 %.not375, label %bb.ce, label %.backedge.backedge

bb.ce:                                            ; preds = %bb.cd
  %i.rr = load i64, ptr %i.ax, align 8, !tbaa !144
  %i.rs = call noundef i32 @_ZN13duckdb_brotli33BrotliDecoderHuffmanTreeGroupInitEPNS_24BrotliDecoderStateStructEPNS_16HuffmanTreeGroupEmmm(ptr noundef nonnull %0, ptr noundef nonnull %i.bd, i64 noundef 256, i64 noundef 256, i64 noundef %i.rr)
  %i.rt = and i32 %i.rs, 1
  %i.ru = load i64, ptr %i.bf, align 8, !tbaa !41
  %i.rv = call noundef i32 @_ZN13duckdb_brotli33BrotliDecoderHuffmanTreeGroupInitEPNS_24BrotliDecoderStateStructEPNS_16HuffmanTreeGroupEmmm(ptr noundef nonnull %0, ptr noundef nonnull %i.be, i64 noundef 704, i64 noundef 704, i64 noundef %i.ru)
  %i.rw = and i32 %i.rt, %i.rv
  %i.rx = load i64, ptr %i.bb, align 8, !tbaa !145
  %i.ry = call noundef i32 @_ZN13duckdb_brotli33BrotliDecoderHuffmanTreeGroupInitEPNS_24BrotliDecoderStateStructEPNS_16HuffmanTreeGroupEmmm(ptr noundef nonnull %0, ptr noundef nonnull %i.bg, i64 noundef %.0311, i64 noundef %.0310, i64 noundef %i.rx)
  %i.rz = and i32 %i.rw, %i.ry
  %.not376 = icmp eq i32 %i.rz, 0
  br i1 %.not376, label %.thread518, label %.thread681

.thread518:                                       ; preds = %bb.ce
  %i.sa = load i64, ptr %1, align 8, !tbaa !41
  %i.sb = sub i64 %i.d, %i.sa
  %i.sc = call fastcc noundef i32 @_ZN13duckdb_brotliL13SaveErrorCodeEPNS_24BrotliDecoderStateStructENS_22BrotliDecoderErrorCodeEm(ptr noundef nonnull %0, i32 noundef -22, i64 noundef %i.sb)
  br label %bb.du

.thread681:                                       ; preds = %bb.ce
  store i32 0, ptr %i.aq, align 4, !tbaa !60
  store i32 24, ptr %0, align 8, !tbaa !32
  br label %bb.ci

bb.cf:                                            ; preds = %bb.v
  %.pre617 = load i32, ptr %i.aq, align 4, !tbaa !60 ; 4 uses
  switch i32 %.pre617, label %.thread531 [
    i32 0, label %bb.ci
    i32 1, label %bb.cg
    i32 2, label %bb.ch
  ]

bb.cg:                                            ; preds = %bb.cf
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  br label %bb.ci

.thread531:                                       ; preds = %bb.cf
  %i.sd = load i64, ptr %1, align 8, !tbaa !41
  %i.se = sub i64 %i.d, %i.sd
  %i.sf = call fastcc noundef i32 @_ZN13duckdb_brotliL13SaveErrorCodeEPNS_24BrotliDecoderStateStructENS_22BrotliDecoderErrorCodeEm(ptr noundef nonnull %0, i32 noundef -31, i64 noundef %i.se)
  br label %bb.du

bb.ci:                                            ; preds = %.thread681, %bb.cf, %bb.ch, %bb.cg
  %i.sg = phi i32 [ %.pre617, %bb.ch ], [ %.pre617, %bb.cg ], [ %.pre617, %bb.cf ], [ 0, %.thread681 ]
  %.0 = phi ptr [ %i.bg, %bb.ch ], [ %i.be, %bb.cg ], [ %i.bd, %bb.cf ], [ %i.bd, %.thread681 ] ; 5 uses
  %i.sh = load i32, ptr %i.bh, align 8, !tbaa !142
  %.not.i449 = icmp eq i32 %i.sh, 1
  br i1 %.not.i449, label %._crit_edge26.i, label %bb.cj

._crit_edge26.i:                                  ; preds = %bb.ci
  %.pre.i453 = load i32, ptr %i.bj, align 4, !tbaa !146
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.si = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !147
  store ptr %i.sj, ptr %i.bi, align 8, !tbaa !148
  store i32 0, ptr %i.bj, align 4, !tbaa !146
  store i32 1, ptr %i.bh, align 8, !tbaa !142
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %._crit_edge26.i
  %i.sk = phi i32 [ %.pre.i453, %._crit_edge26.i ], [ 0, %bb.cj ]
  %i.sl = getelementptr inbounds nuw i8, ptr %.0, i64 20 ; 2 uses
  %i.sm = load i16, ptr %i.sl, align 4, !tbaa !149
  %i.sn = zext i16 %i.sm to i32
  %i.so = icmp slt i32 %i.sk, %i.sn
  br i1 %i.so, label %.lr.ph.i451, label %.loopexit540

.lr.ph.i451:                                      ; preds = %bb.ck
  %i.sp = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.sq = getelementptr inbounds nuw i8, ptr %.0, i64 18
  %.pre27.i = load ptr, ptr %i.bi, align 8, !tbaa !148
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cm, %.lr.ph.i451
  %i.sr = phi ptr [ %.pre27.i, %.lr.ph.i451 ], [ %i.td, %bb.cm ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.ss = load i16, ptr %i.sp, align 8, !tbaa !150
  %i.st = zext i16 %i.ss to i64
  %i.su = load i16, ptr %i.sq, align 2, !tbaa !151
  %i.sv = zext i16 %i.su to i64
  %i.sw = call fastcc noundef i32 @_ZN13duckdb_brotliL15ReadHuffmanCodeEmmPNS_11HuffmanCodeEPmPNS_24BrotliDecoderStateStructE(i64 noundef %i.st, i64 noundef %i.sv, ptr noundef %i.sr, ptr noundef nonnull %i.a, ptr noundef nonnull %0) ; 2 uses
  %.not23.i = icmp eq i32 %i.sw, 1
  br i1 %.not23.i, label %bb.cm, label %_ZN13duckdb_brotliL22HuffmanTreeGroupDecodeEPNS_16HuffmanTreeGroupEPNS_24BrotliDecoderStateStructE.exit

bb.cm:                                            ; preds = %bb.cl
  %i.sx = load ptr, ptr %i.bi, align 8, !tbaa !148 ; 2 uses
  %i.sy = load ptr, ptr %.0, align 8, !tbaa !152
  %i.sz = load i32, ptr %i.bj, align 4, !tbaa !146 ; 2 uses
  %i.ta = sext i32 %i.sz to i64
  %i.tb = getelementptr inbounds [8 x i8], ptr %i.sy, i64 %i.ta
  store ptr %i.sx, ptr %i.tb, align 8, !tbaa !86
  %i.tc = load i64, ptr %i.a, align 8, !tbaa !41
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %i.tc ; 2 uses
  store ptr %i.td, ptr %i.bi, align 8, !tbaa !148
  %i.te = add nsw i32 %i.sz, 1                    ; 2 uses
  store i32 %i.te, ptr %i.bj, align 4, !tbaa !146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.tf = load i16, ptr %i.sl, align 4, !tbaa !149
  %i.tg = zext i16 %i.tf to i32
  %i.th = icmp slt i32 %i.te, %i.tg
  br i1 %i.th, label %bb.cl, label %.loopexit540.loopexit, !llvm.loop !133

_ZN13duckdb_brotliL22HuffmanTreeGroupDecodeEPNS_16HuffmanTreeGroupEPNS_24BrotliDecoderStateStructE.exit: ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %.backedge.backedge

.loopexit540.loopexit:                            ; preds = %bb.cm
  %.pre618 = load i32, ptr %i.aq, align 4, !tbaa !60
  br label %.loopexit540

.loopexit540:                                     ; preds = %.loopexit540.loopexit, %bb.ck
  %i.ti = phi i32 [ %.pre618, %.loopexit540.loopexit ], [ %i.sg, %bb.ck ] ; 2 uses
  store i32 0, ptr %i.bh, align 8, !tbaa !142
  %i.tj = add nsw i32 %i.ti, 1
  store i32 %i.tj, ptr %i.aq, align 4, !tbaa !60
  %i.tk = icmp slt i32 %i.ti, 2
  br i1 %i.tk, label %.backedge.backedge, label %bb.cn

bb.cn:                                            ; preds = %.loopexit540
  store i32 25, ptr %0, align 8, !tbaa !32
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.v
  %i.tl = load i64, ptr %i.bk, align 8, !tbaa !41 ; 4 uses
  %i.tm = shl i64 %i.tl, 6
  %i.tn = load ptr, ptr %i.ay, align 8, !tbaa !85
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 %i.tm ; 2 uses
  store ptr %i.to, ptr %i.bl, align 8, !tbaa !87
  %i.tp = lshr i64 %i.tl, 5
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.tp
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !16
  %i.ts = zext i32 %i.tr to i64
  %i.tt = and i64 %i.tl, 31
  %i.tu = lshr i64 %i.ts, %i.tt
  %i.tv = trunc nuw i64 %i.tu to i32
  %i.tw = and i32 %i.tv, 1
  store i32 %i.tw, ptr %i.bm, align 8, !tbaa !88
  %i.tx = load ptr, ptr %i.bd, align 8, !tbaa !89
  %i.ty = load i8, ptr %i.to, align 1, !tbaa !57
  %i.tz = zext i8 %i.ty to i64
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.tx, i64 %i.tz
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !86
  store ptr %i.ub, ptr %i.bn, align 8, !tbaa !90
  %i.uc = load ptr, ptr %i.aw, align 8, !tbaa !84
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 %i.tl
  %i.ue = load i8, ptr %i.ud, align 1, !tbaa !57
  %i.uf = and i8 %i.ue, 3
  %i.ug = zext nneg i8 %i.uf to i64
  %i.uh = shl nuw nsw i64 %i.ug, 9
  %i.ui = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_brotli26_kBrotliContextLookupTableE, i64 %i.uh
  store ptr %i.ui, ptr %i.bo, align 8, !tbaa !91
  %i.uj = load ptr, ptr %i.bc, align 8, !tbaa !92
  store ptr %i.uj, ptr %i.bp, align 8, !tbaa !93
  %i.uk = load ptr, ptr %i.be, align 8, !tbaa !94
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !86
  store ptr %i.ul, ptr %i.bq, align 8, !tbaa !95
  %i.um = call fastcc noundef i32 @_ZN13duckdb_brotliL22BrotliEnsureRingBufferEPNS_24BrotliDecoderStateStructE(ptr noundef nonnull %0)
  %.not378 = icmp eq i32 %i.um, 0
  br i1 %.not378, label %.backedge.backedge, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.un = load i64, ptr %i.ar, align 8, !tbaa !83 ; 2 uses
  %i.uo = load i64, ptr %i.as, align 8, !tbaa !143 ; 5 uses
  %i.up = load i16, ptr %i.br, align 2, !tbaa !153
  %6 = zext i16 %i.up to i64                      ; 2 uses
  %7 = trunc i64 %i.un to i32                     ; 4 uses
  %8 = shl nuw i32 1, %7
  %9 = zext i32 %8 to i64                         ; 5 uses
  %.not.i454 = icmp eq i64 %i.uo, 0
  br i1 %.not.i454, label %.preheader.i457, label %.lr.ph.i455.preheader

.lr.ph.i455.preheader:                            ; preds = %bb.cp
  %xtraiter = and i64 %i.uo, 3                    ; 3 uses
  %i.uq = icmp ult i64 %i.uo, 4
  br i1 %i.uq, label %.lr.ph.i455.epil.preheader, label %.lr.ph.i455.preheader.new

.lr.ph.i455.preheader.new:                        ; preds = %.lr.ph.i455.preheader
  %unroll_iter = and i64 %i.uo, -4
  br label %.lr.ph.i455

.preheader.i457.loopexit.unr-lcssa:               ; preds = %.lr.ph.i455
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i457, label %.lr.ph.i455.epil.preheader

.lr.ph.i455.epil.preheader:                       ; preds = %.preheader.i457.loopexit.unr-lcssa, %.lr.ph.i455.preheader
  %.038.i456.epil.init = phi i64 [ 16, %.lr.ph.i455.preheader ], [ %i.vo, %.preheader.i457.loopexit.unr-lcssa ]
  %.03537.i.epil.init = phi i64 [ 0, %.lr.ph.i455.preheader ], [ %i.vm, %.preheader.i457.loopexit.unr-lcssa ]
  %lcmp.mod761 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod761)
  br label %.lr.ph.i455.epil

.lr.ph.i455.epil:                                 ; preds = %.lr.ph.i455.epil, %.lr.ph.i455.epil.preheader
  %.038.i456.epil = phi i64 [ %i.uu, %.lr.ph.i455.epil ], [ %.038.i456.epil.init, %.lr.ph.i455.epil.preheader ] ; 3 uses
  %.03537.i.epil = phi i64 [ %i.us, %.lr.ph.i455.epil ], [ %.03537.i.epil.init, %.lr.ph.i455.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i455.epil ], [ 0, %.lr.ph.i455.epil.preheader ]
  %i.ur = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.038.i456.epil
  store i8 0, ptr %i.ur, align 1, !tbaa !57
  %i.us = add nuw i64 %.03537.i.epil, 1           ; 2 uses
  %i.ut = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.038.i456.epil
  store i64 %i.us, ptr %i.ut, align 8, !tbaa !41
  %i.uu = add i64 %.038.i456.epil, 1              ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i457, label %.lr.ph.i455.epil, !llvm.loop !134

.preheader.i457:                                  ; preds = %.preheader.i457.loopexit.unr-lcssa, %.lr.ph.i455.epil, %bb.cp
  %.0.lcssa.i = phi i64 [ 16, %bb.cp ], [ %i.vo, %.preheader.i457.loopexit.unr-lcssa ], [ %i.uu, %.lr.ph.i455.epil ] ; 2 uses
  %i.uv = icmp ult i64 %.0.lcssa.i, %6
  br i1 %i.uv, label %.lr.ph44.i, label %_ZN13duckdb_brotliL20CalculateDistanceLutEPNS_24BrotliDecoderStateStructE.exit

.lr.ph44.i:                                       ; preds = %.preheader.i457
  %i.uw = add i64 %i.uo, 1
  %scevgep728 = getelementptr i8, ptr %scevgep727, i64 %9
  %i.ux = shl nuw nsw i64 %9, 3
  %scevgep733 = getelementptr i8, ptr %scevgep732, i64 %i.ux
  %min.iters.check = icmp ult i32 %7, 2
  %n.vec = and i64 %9, 4294967292                 ; 2 uses
  %xtraiter762 = and i64 %9, 1
  %i.uy = icmp eq i32 %7, 0
  %unroll_iter767 = and i64 %9, 4294967294
  %lcmp.mod764.not = icmp eq i64 %xtraiter762, 0
  %lcmp.mod766 = icmp eq i32 %7, 0
  br label %bb.cq

.lr.ph.i455:                                      ; preds = %.lr.ph.i455, %.lr.ph.i455.preheader.new
  %.038.i456 = phi i64 [ 16, %.lr.ph.i455.preheader.new ], [ %i.vo, %.lr.ph.i455 ] ; 6 uses
  %.03537.i = phi i64 [ 0, %.lr.ph.i455.preheader.new ], [ %i.vm, %.lr.ph.i455 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i455.preheader.new ], [ %niter.next.3, %.lr.ph.i455 ]
  %i.uz = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.038.i456
  store i8 0, ptr %i.uz, align 1, !tbaa !57
  %i.va = or disjoint i64 %.03537.i, 1
  %i.vb = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.038.i456
  store i64 %i.va, ptr %i.vb, align 8, !tbaa !41
  %i.vc = or disjoint i64 %.038.i456, 1           ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.vc
  store i8 0, ptr %i.vd, align 1, !tbaa !57
  %i.ve = or disjoint i64 %.03537.i, 2
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.vc
  store i64 %i.ve, ptr %i.vf, align 8, !tbaa !41
  %i.vg = or disjoint i64 %.038.i456, 2           ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.vg
  store i8 0, ptr %i.vh, align 1, !tbaa !57
  %i.vi = or disjoint i64 %.03537.i, 3
  %i.vj = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.vg
  store i64 %i.vi, ptr %i.vj, align 8, !tbaa !41
  %i.vk = or disjoint i64 %.038.i456, 3           ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.vk
  store i8 0, ptr %i.vl, align 1, !tbaa !57
  %i.vm = add nuw i64 %.03537.i, 4                ; 3 uses
  %i.vn = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.vk
  store i64 %i.vm, ptr %i.vn, align 8, !tbaa !41
  %i.vo = add i64 %.038.i456, 4                   ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.i457.loopexit.unr-lcssa, label %.lr.ph.i455, !llvm.loop !135

bb.cq:                                            ; preds = %middle.block, %.lr.ph44.i
  %.143.i = phi i64 [ %.0.lcssa.i, %.lr.ph44.i ], [ %.lcssa715, %middle.block ] ; 7 uses
  %.03342.i = phi i64 [ 0, %.lr.ph44.i ], [ %i.ws, %middle.block ] ; 3 uses
  %.03441.i = phi i64 [ 1, %.lr.ph44.i ], [ %i.wr, %middle.block ] ; 3 uses
  %i.vp = add nuw nsw i64 %.03342.i, 2
  %i.vq = shl i64 %i.vp, %.03441.i
  %i.vr = add i64 %i.vq, -4
  %i.vs = shl i64 %i.vr, %i.un
  %i.vt = trunc i64 %.03441.i to i8               ; 4 uses
  %i.vu = add i64 %i.uw, %i.vs                    ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.cq
  br i1 %i.uy, label %scalar.ph.epil.preheader, label %scalar.ph

vector.memcheck:                                  ; preds = %bb.cq
  %scevgep726 = getelementptr i8, ptr %scevgep, i64 %.143.i
  %scevgep729 = getelementptr i8, ptr %scevgep728, i64 %.143.i
  %i.vv = shl i64 %.143.i, 3                      ; 2 uses
  %scevgep731 = getelementptr i8, ptr %scevgep730, i64 %i.vv
  %scevgep734 = getelementptr i8, ptr %scevgep733, i64 %i.vv
  %bound0 = icmp ult ptr %scevgep726, %scevgep734
  %bound1 = icmp ult ptr %scevgep731, %scevgep729
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %10 = add i64 %.143.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x i8> poison, i8 %i.vt, i64 0
  %broadcast.splat = shufflevector <2 x i8> %broadcast.splatinsert, <2 x i8> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert735 = insertelement <2 x i64> poison, i64 %i.vu, i64 0
  %broadcast.splat736 = shufflevector <2 x i64> %broadcast.splatinsert735, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <2 x i64> splat (i64 2), %broadcast.splat736
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.vw = add i64 %.143.i, %index                 ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.vw ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 2
  store <2 x i8> %broadcast.splat, ptr %i.vx, align 1, !tbaa !57, !alias.scope !154, !noalias !155
  store <2 x i8> %broadcast.splat, ptr %i.vy, align 1, !tbaa !57, !alias.scope !154, !noalias !155
  %i.vz = add <2 x i64> %broadcast.splat736, %vec.ind
  %.reass = add <2 x i64> %vec.ind, %invariant.op
  %i.wa = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.vw ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 16
  store <2 x i64> %i.vz, ptr %i.wa, align 8, !tbaa !41, !alias.scope !155
  store <2 x i64> %.reass, ptr %i.wb, align 8, !tbaa !41, !alias.scope !155
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.wc = icmp eq i64 %index.next, %n.vec
  br i1 %i.wc, label %middle.block, label %vector.body, !llvm.loop !139

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.240.i = phi i64 [ %i.wl, %scalar.ph ], [ %.143.i, %scalar.ph.preheader ] ; 4 uses
  %.13639.i = phi i64 [ %i.wm, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 3 uses
  %niter768 = phi i64 [ %niter768.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ]
  %i.wd = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.240.i
  store i8 %i.vt, ptr %i.wd, align 1, !tbaa !57
  %i.we = add i64 %i.vu, %.13639.i
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.240.i
  store i64 %i.we, ptr %i.wf, align 8, !tbaa !41
  %i.wg = add i64 %.240.i, 1                      ; 2 uses
  %i.wh = or disjoint i64 %.13639.i, 1
  %i.wi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.wg
  store i8 %i.vt, ptr %i.wi, align 1, !tbaa !57
  %i.wj = add i64 %i.vu, %i.wh
  %i.wk = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.wg
  store i64 %i.wj, ptr %i.wk, align 8, !tbaa !41
  %i.wl = add i64 %.240.i, 2                      ; 3 uses
  %i.wm = add nuw nsw i64 %.13639.i, 2            ; 2 uses
  %niter768.next.1 = add i64 %niter768, 2         ; 2 uses
  %niter768.ncmp.1 = icmp eq i64 %niter768.next.1, %unroll_iter767
  br i1 %niter768.ncmp.1, label %middle.block.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !140

middle.block.loopexit.unr-lcssa:                  ; preds = %scalar.ph
  br i1 %lcmp.mod764.not, label %middle.block, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %middle.block.loopexit.unr-lcssa, %scalar.ph.preheader
  %.240.i.epil.init = phi i64 [ %.143.i, %scalar.ph.preheader ], [ %i.wl, %middle.block.loopexit.unr-lcssa ] ; 3 uses
  %.13639.i.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %i.wm, %middle.block.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod766)
  %i.wn = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.240.i.epil.init
  store i8 %i.vt, ptr %i.wn, align 1, !tbaa !57
  %i.wo = add i64 %i.vu, %.13639.i.epil.init
  %i.wp = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.240.i.epil.init
  store i64 %i.wo, ptr %i.wp, align 8, !tbaa !41
  %i.wq = add i64 %.240.i.epil.init, 1
  br label %middle.block

middle.block:                                     ; preds = %vector.body, %scalar.ph.epil.preheader, %middle.block.loopexit.unr-lcssa
  %.lcssa715 = phi i64 [ %i.wq, %scalar.ph.epil.preheader ], [ %i.wl, %middle.block.loopexit.unr-lcssa ], [ %10, %vector.body ] ; 2 uses
  %i.wr = add i64 %.03441.i, %.03342.i
  %i.ws = xor i64 %.03342.i, 1
  %i.wt = icmp ult i64 %.lcssa715, %6
  br i1 %i.wt, label %bb.cq, label %_ZN13duckdb_brotliL20CalculateDistanceLutEPNS_24BrotliDecoderStateStructE.exit, !llvm.loop !141

_ZN13duckdb_brotliL20CalculateDistanceLutEPNS_24BrotliDecoderStateStructE.exit: ; preds = %middle.block, %.preheader.i457
  store i32 7, ptr %0, align 8, !tbaa !32
  br label %bb.cr

bb.cr:                                            ; preds = %_ZN13duckdb_brotliL20CalculateDistanceLutEPNS_24BrotliDecoderStateStructE.exit, %bb.v, %bb.v, %bb.v, %bb.v
  %i.wu = call fastcc noundef i32 @_ZN13duckdb_brotliL15ProcessCommandsEPNS_24BrotliDecoderStateStructE(ptr noundef nonnull %0) ; 2 uses
  %i.wv = icmp eq i32 %i.wu, 2
  br i1 %i.wv, label %bb.cs, label %.backedge.backedge

bb.cs:                                            ; preds = %bb.cr
  %i.ww = call fastcc noundef i32 @_ZN13duckdb_brotliL19SafeProcessCommandsEPNS_24BrotliDecoderStateStructE(ptr noundef nonnull %0)
  br label %.backedge.backedge

bb.ct:                                            ; preds = %bb.v, %bb.v, %bb.v
  %i.wx = call fastcc noundef i32 @_ZN13duckdb_brotliL15WriteRingBufferEPNS_24BrotliDecoderStateStructEPmPPhS2_i(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %spec.select, ptr noundef %5, i32 noundef 0) ; 2 uses
  %.not367 = icmp eq i32 %i.wx, 1
  br i1 %.not367, label %bb.cu, label %.backedge.backedge

bb.cu:                                            ; preds = %bb.ct
  call fastcc void @_ZN13duckdb_brotliL14WrapRingBufferEPNS_24BrotliDecoderStateStructE(ptr noundef nonnull %0)
  %i.wy = load i32, ptr %i.al, align 4, !tbaa !99 ; 2 uses
  %i.wz = load i32, ptr %i.aj, align 4
  %i.xa = lshr i32 %i.wz, 6
  %i.xb = and i32 %i.xa, 63
  %i.xc = shl nuw i32 1, %i.xb
  %i.xd = icmp eq i32 %i.wy, %i.xc
  br i1 %i.xd, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.xe = load i32, ptr %i.am, align 4, !tbaa !61
  store i32 %i.xe, ptr %i.an, align 8, !tbaa !100
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.xf = load i32, ptr %0, align 8, !tbaa !32
  switch i32 %i.xf, label %bb.df [
    i32 15, label %bb.cx
    i32 16, label %bb.de
  ]

bb.cx:                                            ; preds = %bb.cw
  %i.xg = load ptr, ptr %i.ao, align 8, !tbaa !42 ; 7 uses
  %.not368 = icmp eq ptr %i.xg, null
  br i1 %.not368, label %.thread535, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 16 ; 2 uses
  %i.xi = load i32, ptr %i.xh, align 8, !tbaa !46
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xg, i64 20 ; 3 uses
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !47 ; 2 uses
  %.not369 = icmp eq i32 %i.xi, %i.xk
  br i1 %.not369, label %.thread535, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.xl = load i32, ptr %i.ap, align 8, !tbaa !101 ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xg, i64 24
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xg, i64 8 ; 3 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xg, i64 12 ; 4 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xg, i64 152
  br label %bb.da

bb.da:                                            ; preds = %bb.dd, %bb.cz
  %i.xq = phi i32 [ %i.wy, %bb.cz ], [ %i.yu, %bb.dd ] ; 2 uses
  %i.xr = phi i32 [ %i.xk, %bb.cz ], [ %i.yq, %bb.dd ] ; 2 uses
  %.042.i = phi i32 [ %i.xl, %bb.cz ], [ %i.ym, %bb.dd ] ; 4 uses
  %i.xs = load i32, ptr %i.xh, align 8, !tbaa !46 ; 2 uses
  %.not.i460 = icmp eq i32 %i.xs, %i.xr
  br i1 %.not.i460, label %_ZN13duckdb_brotliL26CopyFromCompoundDictionaryEPNS_24BrotliDecoderStateStructEi.exit, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.xt = load ptr, ptr %i.ad, align 8, !tbaa !56
  %i.xu = sext i32 %.042.i to i64
  %i.xv = getelementptr inbounds i8, ptr %i.xt, i64 %i.xu
  %i.xw = load i32, ptr %i.xn, align 8, !tbaa !102
  %i.xx = sext i32 %i.xw to i64                   ; 2 uses
  %i.xy = getelementptr inbounds [8 x i8], ptr %i.xm, i64 %i.xx
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !40
  %i.ya = load i32, ptr %i.xo, align 4, !tbaa !103 ; 2 uses
  %i.yb = sext i32 %i.ya to i64
  %i.yc = getelementptr inbounds i8, ptr %i.xz, i64 %i.yb
  %i.yd = sub nsw i32 %i.xq, %.042.i
  %i.ye = getelementptr [4 x i8], ptr %i.xp, i64 %i.xx ; 2 uses
  %i.yf = getelementptr i8, ptr %i.ye, i64 4
  %i.yg = load i32, ptr %i.yf, align 4, !tbaa !16
  %i.yh = load i32, ptr %i.ye, align 4, !tbaa !16
  %i.yi = add i32 %i.ya, %i.yh
  %i.yj = sub i32 %i.yg, %i.yi                    ; 2 uses
  %i.yk = sub nsw i32 %i.xs, %i.xr
  %spec.select.i = call i32 @llvm.smin.i32(i32 %i.yk, i32 %i.yj)
  %.1.i461 = call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.yd) ; 5 uses
  %i.yl = sext i32 %.1.i461 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xv, ptr align 1 %i.yc, i64 %i.yl, i1 false)
  %i.ym = add nsw i32 %.1.i461, %.042.i           ; 4 uses
  %i.yn = load i32, ptr %i.xo, align 4, !tbaa !103
  %i.yo = add nsw i32 %.1.i461, %i.yn
  store i32 %i.yo, ptr %i.xo, align 4, !tbaa !103
  %i.yp = load i32, ptr %i.xj, align 4, !tbaa !47
  %i.yq = add nsw i32 %i.yp, %.1.i461             ; 2 uses
  store i32 %i.yq, ptr %i.xj, align 4, !tbaa !47
  %i.yr = icmp eq i32 %.1.i461, %i.yj
  br i1 %i.yr, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.ys = load i32, ptr %i.xn, align 8, !tbaa !102
  %i.yt = add nsw i32 %i.ys, 1
  store i32 %i.yt, ptr %i.xn, align 8, !tbaa !102
  store i32 0, ptr %i.xo, align 4, !tbaa !103
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.yu = load i32, ptr %i.al, align 4, !tbaa !99 ; 2 uses
  %i.yv = icmp eq i32 %i.ym, %i.yu
  br i1 %i.yv, label %_ZN13duckdb_brotliL26CopyFromCompoundDictionaryEPNS_24BrotliDecoderStateStructEi.exit, label %bb.da

_ZN13duckdb_brotliL26CopyFromCompoundDictionaryEPNS_24BrotliDecoderStateStructEi.exit: ; preds = %bb.da, %bb.dd
  %i.yw = phi i32 [ %i.ym, %bb.dd ], [ %i.xq, %bb.da ]
  %.143.i462 = phi i32 [ %i.ym, %bb.dd ], [ %.042.i, %bb.da ]
  %i.yx = sub nsw i32 %.143.i462, %i.xl
  %i.yy = load i32, ptr %i.ap, align 8, !tbaa !101
  %i.yz = add nsw i32 %i.yy, %i.yx                ; 2 uses
  store i32 %i.yz, ptr %i.ap, align 8, !tbaa !101
  %.not370 = icmp slt i32 %i.yz, %i.yw
  br i1 %.not370, label %.thread535, label %.backedge.backedge

.thread535:                                       ; preds = %bb.cx, %bb.cy, %_ZN13duckdb_brotliL26CopyFromCompoundDictionaryEPNS_24BrotliDecoderStateStructEi.exit
  %i.za = load i32, ptr %i.ai, align 4, !tbaa !66
  %i.zb = icmp eq i32 %i.za, 0
  %.404 = select i1 %i.zb, i32 14, i32 7
  store i32 %.404, ptr %0, align 8, !tbaa !32
  br label %.backedge.backedge

bb.de:                                            ; preds = %bb.cw
  store i32 10, ptr %0, align 8, !tbaa !32
  br label %.backedge.backedge

bb.df:                                            ; preds = %bb.cw
  %i.zc = load i32, ptr %i.aq, align 4, !tbaa !60
  %i.zd = icmp eq i32 %i.zc, 0
  br i1 %i.zd, label %bb.dg, label %bb.dj

bb.dg:                                            ; preds = %bb.df
  %i.ze = load i32, ptr %i.ai, align 4, !tbaa !66
  %i.zf = icmp eq i32 %i.ze, 0
  br i1 %i.zf, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  store i32 14, ptr %0, align 8, !tbaa !32
  br label %.backedge.backedge

bb.di:                                            ; preds = %bb.dg
  store i32 9, ptr %0, align 8, !tbaa !32
  br label %.backedge.backedge

bb.dj:                                            ; preds = %bb.df
  store i32 8, ptr %0, align 8, !tbaa !32
  br label %.backedge.backedge

bb.dk:                                            ; preds = %bb.v
  %i.zg = load i32, ptr %i.ai, align 4, !tbaa !66
  %i.zh = icmp slt i32 %i.zg, 0
  br i1 %i.zh, label %.backedge.backedge, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  call void @_ZN13duckdb_brotli39BrotliDecoderStateCleanupAfterMetablockEPNS_24BrotliDecoderStateStructE(ptr noundef nonnull %0)
  %i.zi = load i32, ptr %i.aj, align 4
  %i.zj = and i32 %i.zi, 1
  %.not363 = icmp eq i32 %i.zj, 0
  br i1 %.not363, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  store i32 3, ptr %0, align 8, !tbaa !32
  br label %.backedge.backedge

bb.dn:                                            ; preds = %bb.dl
  %i.zk = load i64, ptr %i.ak, align 8, !tbaa !58 ; 3 uses
  %i.zl = and i64 %i.zk, 7                        ; 3 uses
  %.not.i412 = icmp eq i64 %i.zl, 0
  br i1 %.not.i412, label %_ZN13duckdb_brotliL24BrotliJumpToByteBoundaryEPNS_15BrotliBitReaderE.exit, label %_ZN13duckdb_brotliL14BrotliTakeBitsEPNS_15BrotliBitReaderEmPm.exit433

_ZN13duckdb_brotliL14BrotliTakeBitsEPNS_15BrotliBitReaderEmPm.exit433: ; preds = %bb.dn
  %i.zm = load i64, ptr %i.c, align 8, !tbaa !59  ; 2 uses
  %i.zn = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %i.zl
  %i.zo = load i64, ptr %i.zn, align 8, !tbaa !41
  %i.zp = and i64 %i.zo, %i.zm
  %i.zq = and i64 %i.zk, -8                       ; 2 uses
  store i64 %i.zq, ptr %i.ak, align 8, !tbaa !58
  %i.zr = lshr i64 %i.zm, %i.zl
  store i64 %i.zr, ptr %i.c, align 8, !tbaa !59
  %i.zs = icmp ne i64 %i.zp, 0
  br label %_ZN13duckdb_brotliL24BrotliJumpToByteBoundaryEPNS_15BrotliBitReaderE.exit

_ZN13duckdb_brotliL24BrotliJumpToByteBoundaryEPNS_15BrotliBitReaderE.exit: ; preds = %bb.dn, %_ZN13duckdb_brotliL14BrotliTakeBitsEPNS_15BrotliBitReaderEmPm.exit433
  %i.zt = phi i64 [ %i.zk, %bb.dn ], [ %i.zq, %_ZN13duckdb_brotliL14BrotliTakeBitsEPNS_15BrotliBitReaderEmPm.exit433 ] ; 4 uses
  %.0471 = phi i1 [ false, %bb.dn ], [ %i.zs, %_ZN13duckdb_brotliL14BrotliTakeBitsEPNS_15BrotliBitReaderEmPm.exit433 ]
  %i.zu = icmp ult i64 %i.zt, 64
end_hunk_0
begin_hunk_1_@_ZN13duckdb_brotli19BrotliDecoderIsUsedEPKNS_24BrotliDecoderStateStructE:bb.a
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !58
  %i.d = icmp ne i64 %i.c, 0
  %i.e = zext i1 %i.d to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i32 [ 1, %bb.a ], [ %i.e, %bb.b ]
  ret i32 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN13duckdb_brotli23BrotliDecoderIsFinishedEPKNS_24BrotliDecoderStateStructE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !32
  %i.b = icmp eq i32 %i.a, 26
  br i1 %i.b, label %bb.b, label %_ZN13duckdb_brotli26BrotliDecoderHasMoreOutputEPKNS_24BrotliDecoderStateStructE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load i32, ptr %i.c, align 8, !tbaa !51
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %_ZN13duckdb_brotli26BrotliDecoderHasMoreOutputEPKNS_24BrotliDecoderStateStructE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !56
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZN13duckdb_brotli26BrotliDecoderHasMoreOutputEPKNS_24BrotliDecoderStateStructE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8, !tbaa !101
  %.phi.trans.insert9.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 100
  %.pre10.pre.i.i = load i32, ptr %.phi.trans.insert9.phi.trans.insert.i.i, align 4, !tbaa !99
  %i.h = sext i32 %.pre.i.i to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.j = load i64, ptr %i.i, align 8, !tbaa !105
  %i.k = sext i32 %.pre10.pre.i.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.m = load i64, ptr %i.l, align 8, !tbaa !50
  %i.n = sub i64 %i.h, %i.m
  %i.o = mul i64 %i.j, %i.k
  %i.p = sub i64 0, %i.o
  %i.q = icmp eq i64 %i.n, %i.p
  %i.r = zext i1 %i.q to i32
  br label %_ZN13duckdb_brotli26BrotliDecoderHasMoreOutputEPKNS_24BrotliDecoderStateStructE.exit

_ZN13duckdb_brotli26BrotliDecoderHasMoreOutputEPKNS_24BrotliDecoderStateStructE.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.s = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 1, %bb.c ], [ %i.r, %bb.d ]
  ret i32 %i.s
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZN13duckdb_brotli25BrotliDecoderGetErrorCodeEPKNS_24BrotliDecoderStateStructE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i32, ptr %i.a, align 8, !tbaa !51
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_ZN13duckdb_brotli24BrotliDecoderErrorStringENS_22BrotliDecoderErrorCodeE(i32 noundef %0) local_unnamed_addr #13 {
bb.a:
  %switch.tableidx = add i32 %0, 31               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 35
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN13duckdb_brotli24BrotliDecoderErrorStringENS_22BrotliDecoderErrorCodeE, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.30, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZN13duckdb_brotli20BrotliDecoderVersionEv() local_unnamed_addr #13 {
bb.a:
  ret i32 16781312
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN13duckdb_brotli33BrotliDecoderSetMetadataCallbacksEPNS_24BrotliDecoderStateStructEPFvPvmEPFvS2_PKhmES2_(ptr nofree noundef writeonly captures(none) initializes((720, 744)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 720
  store ptr %1, ptr %i.a, align 8, !tbaa !64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 728
  store ptr %2, ptr %i.b, align 8, !tbaa !108
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %3, ptr %i.c, align 8, !tbaa !65
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

declare noundef i32 @_ZN13duckdb_brotli29BrotliBuildSimpleHuffmanTableEPNS_11HuffmanCodeEiPtj(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN13duckdb_brotli34BrotliBuildCodeLengthsHuffmanTableEPNS_11HuffmanCodeEPKhPt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare noundef i32 @_ZN13duckdb_brotli23BrotliBuildHuffmanTableEPNS_11HuffmanCodeEiPKtPt(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN13duckdb_brotliL16SafeDecodeSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !58   ; 5 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 2, !tbaa !77
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %.sink.split, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = load i64, ptr %1, align 8, !tbaa !59     ; 3 uses
  %i.g = and i64 %i.f, 255
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g ; 4 uses
  %i.i = load i8, ptr %i.h, align 2, !tbaa !77    ; 3 uses
  %i.j = icmp ult i8 %i.i, 9
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i8 %i.i to i64                 ; 2 uses
  %.not = icmp ult i64 %i.b, %i.k
  br i1 %.not, label %bb.g, label %.sink.split.sink.split

bb.e:                                             ; preds = %bb.c
  %i.l = icmp ult i64 %i.b, 9
  br i1 %i.l, label %bb.g, label %_ZN13duckdb_brotliL7BitMaskEm.exit

_ZN13duckdb_brotliL7BitMaskEm.exit:               ; preds = %bb.e
  %i.m = zext i8 %i.i to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !41
  %i.p = and i64 %i.o, %i.f
  %i.q = lshr i64 %i.p, 8
  %i.r = add i64 %i.b, -8
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.t = load i16, ptr %i.s, align 2, !tbaa !78
  %i.u = zext i16 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.q
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.u ; 2 uses
  %i.x = load i8, ptr %i.w, align 2, !tbaa !77
  %i.y = zext i8 %i.x to i64                      ; 2 uses
  %i.z = icmp ult i64 %i.r, %i.y
  br i1 %i.z, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN13duckdb_brotliL7BitMaskEm.exit
  %i.aa = add nuw nsw i64 %i.y, 8
  br label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %bb.d, %bb.f
  %.sink37 = phi i64 [ %i.aa, %bb.f ], [ %i.k, %bb.d ] ; 2 uses
  %.sink35.ph = phi ptr [ %i.w, %bb.f ], [ %i.h, %bb.d ]
  %i.ab = sub nuw i64 %i.b, %.sink37
  store i64 %i.ab, ptr %i.a, align 8, !tbaa !58
  %i.ac = lshr i64 %i.f, %.sink37
  store i64 %i.ac, ptr %1, align 8, !tbaa !59
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.b
  %.sink35 = phi ptr [ %0, %bb.b ], [ %.sink35.ph, %.sink.split.sink.split ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sink35, i64 2
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !78
  %i.af = zext i16 %i.ae to i64
  store i64 %i.af, ptr %2, align 8, !tbaa !41
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %_ZN13duckdb_brotliL7BitMaskEm.exit, %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %_ZN13duckdb_brotliL7BitMaskEm.exit ], [ 0, %bb.b ], [ 1, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN13duckdb_brotliL27InverseMoveToFrontTransformEPhmPNS_24BrotliDecoderStateStructE(ptr nofree noundef captures(none) %0, i64 noundef range(i64 0, -3) %1, ptr nofree noundef captures(none) initializes((452, 456)) %2) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 440 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !190
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 452 ; 9 uses
  store i32 50462976, ptr %i.c, align 4, !tbaa !16
  %i.d = add i64 %i.b, 1                          ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.d, i64 2) ; 2 uses
  %i.e = add i64 %umax, -1                        ; 2 uses
  %min.iters.check = icmp ult i64 %i.d, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %n.vec = and i64 %i.e, -8                       ; 4 uses
  %3 = or disjoint i64 %n.vec, 1
  %4 = trunc i64 %n.vec to i32
  %5 = mul i32 %4, 67372036
  %6 = add i32 %5, 50462976
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 50462976, i32 117835012, i32 185207048, i32 252579084>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.f = add <4 x i32> %vec.ind, splat (i32 67372036)
  %i.g = add <4 x i32> %vec.ind, splat (i32 336860180)
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  store <4 x i32> %i.f, ptr %i.i, align 4, !tbaa !16
  store <4 x i32> %i.g, ptr %i.j, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 538976288)
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !187

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.a, %middle.block
  %.036.ph = phi i64 [ 1, %bb.a ], [ %3, %middle.block ]
  %.034.ph = phi i32 [ 50462976, %bb.a ], [ %6, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.036 = phi i64 [ %i.n, %scalar.ph ], [ %.036.ph, %scalar.ph.preheader ] ; 2 uses
  %.034 = phi i32 [ %i.l, %scalar.ph ], [ %.034.ph, %scalar.ph.preheader ]
  %i.l = add i32 %.034, 67372036                  ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.036
  store i32 %i.l, ptr %i.m, align 4, !tbaa !16
  %i.n = add nuw i64 %.036, 1                     ; 2 uses
  %exitcond = icmp eq i64 %i.n, %umax
  br i1 %exitcond, label %.preheader, label %scalar.ph, !llvm.loop !188

.preheader:                                       ; preds = %scalar.ph, %middle.block
  %.not40 = icmp eq i64 %1, 0
  br i1 %.not40, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.o = getelementptr i8, ptr %2, i64 451        ; 6 uses
  %xtraiter = and i64 %1, 1
  %i.p = icmp eq i64 %1, 1
  br i1 %i.p, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %1, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.03539 = phi i64 [ 0, %.lr.ph.new ], [ %i.ae, %bb.b ]
  %.138 = phi i64 [ 0, %.lr.ph.new ], [ %i.af, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %.138 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !57
  %i.s = zext i8 %i.r to i64                      ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !57    ; 2 uses
  store i8 %i.u, ptr %i.q, align 1, !tbaa !57
  store i8 %i.u, ptr %i.o, align 1, !tbaa !57
  %i.v = add nuw nsw i64 %i.s, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.o, i64 %i.v, i1 false), !tbaa !57
  %i.w = or i64 %.03539, %i.s
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %.138
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !57
  %i.aa = zext i8 %i.z to i64                     ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !57  ; 2 uses
  store i8 %i.ac, ptr %i.y, align 1, !tbaa !57
  store i8 %i.ac, ptr %i.o, align 1, !tbaa !57
  %i.ad = add nuw nsw i64 %i.aa, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.o, i64 %i.ad, i1 false), !tbaa !57
  %i.ae = or i64 %i.w, %i.aa                      ; 3 uses
  %i.af = add nuw i64 %.138, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !189

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.03539.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ae, %._crit_edge.loopexit.unr-lcssa ]
  %.138.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.af, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod45 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod45)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %.138.epil.init ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !57
  %i.ai = zext i8 %i.ah to i64                    ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !57  ; 2 uses
  store i8 %i.ak, ptr %i.ag, align 1, !tbaa !57
  store i8 %i.ak, ptr %i.o, align 1, !tbaa !57
  %i.al = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.o, i64 %i.al, i1 false), !tbaa !57
  %i.am = or i64 %.03539.epil.init, %i.ai
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.ae, %._crit_edge.loopexit.unr-lcssa ], [ %i.am, %.epil.preheader ]
  %i.an = lshr i64 %.lcssa, 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.035.lcssa = phi i64 [ 0, %.preheader ], [ %i.an, %._crit_edge.loopexit ]
  store i64 %.035.lcssa, ptr %i.a, align 8, !tbaa !190
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN13duckdb_brotliL28SafeDecodeCommandBlockSwitchEPNS_24BrotliDecoderStateStructE(ptr nofree noundef captures(none) %0) unnamed_addr #16 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.d = load i64, ptr %i.c, align 8, !tbaa !41   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2528 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !63
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1584 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 17 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.m = icmp ult i64 %i.d, 2
  br i1 %i.m, label %_ZN13duckdb_brotliL24DecodeBlockTypeAndLengthEiPNS_24BrotliDecoderStateStructEi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.k, align 8, !tbaa !59   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !58   ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !53   ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !54   ; 3 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = icmp ult i64 %i.p, 15
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.y = icmp eq ptr %i.r, %i.t
  br i1 %i.y, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit55.i, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i52.i

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i52.i: ; preds = %.lr.ph
  %i.z = load i8, ptr %i.r, align 1, !tbaa !57
  %i.aa = zext i8 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, %i.p
  %i.ac = or i64 %i.ab, %i.n                      ; 3 uses
  store i64 %i.ac, ptr %i.k, align 8, !tbaa !59
  %i.ad = add nuw nsw i64 %i.p, 8                 ; 3 uses
  store i64 %i.ad, ptr %i.o, align 8, !tbaa !58
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 3 uses
  store ptr %i.ae, ptr %i.q, align 8, !tbaa !53
  %i.af = icmp ult i64 %i.p, 7
  br i1 %i.af, label %.lr.ph.1, label %._crit_edge

.lr.ph.1:                                         ; preds = %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i52.i
  %i.ag = icmp eq ptr %i.ae, %i.t
  br i1 %i.ag, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit55.i, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i52.i.1

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i52.i.1: ; preds = %.lr.ph.1
  %i.ah = load i8, ptr %i.ae, align 1, !tbaa !57
  %i.ai = zext i8 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, %i.ad
  %i.ak = or i64 %i.aj, %i.ac                     ; 2 uses
  store i64 %i.ak, ptr %i.k, align 8, !tbaa !59
  %i.al = or disjoint i64 %i.p, 16                ; 2 uses
  store i64 %i.al, ptr %i.o, align 8, !tbaa !58
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  store ptr %i.am, ptr %i.q, align 8, !tbaa !53
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i52.i, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i52.i.1, %bb.b
  %i.an = phi i64 [ %i.p, %bb.b ], [ %i.ad, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i52.i ], [ %i.al, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i52.i.1 ] ; 2 uses
  %i.ao = phi i64 [ %i.n, %bb.b ], [ %i.ac, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i52.i ], [ %i.ak, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i.i52.i.1 ] ; 3 uses
  %i.ap = and i64 %i.ao, 255
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ap ; 4 uses
  %i.ar = load i8, ptr %i.aq, align 2, !tbaa !77  ; 3 uses
  %i.as = icmp ugt i8 %i.ar, 8
  br i1 %i.as, label %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i, label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit55.i.thread

_ZN13duckdb_brotliL7BitMaskEm.exit.i.i:           ; preds = %._crit_edge
  %i.at = add i64 %i.an, -8
  %i.au = lshr i64 %i.ao, 8                       ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !78
  %i.ax = zext i16 %i.aw to i64
  %i.ay = and i64 %i.au, 127
  %i.az = zext i8 %i.ar to i64
  %i.ba = getelementptr [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 -64
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !41
  %i.bd = and i64 %i.ay, %i.bc
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.bd
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.ax ; 2 uses
  %.pre = load i8, ptr %i.bf, align 2, !tbaa !77
  br label %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit55.i.thread

_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit55.i.thread: ; preds = %._crit_edge, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i
  %i.bg = phi i64 [ %i.au, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i ], [ %i.ao, %._crit_edge ]
  %i.bh = phi i64 [ %i.at, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i ], [ %i.an, %._crit_edge ]
  %i.bi = phi i8 [ %.pre, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i ], [ %i.ar, %._crit_edge ]
  %.0.i56.i = phi ptr [ %i.bf, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i ], [ %i.aq, %._crit_edge ]
  %i.bj = zext i8 %i.bi to i64                    ; 2 uses
  %i.bk = sub i64 %i.bh, %i.bj
  store i64 %i.bk, ptr %i.o, align 8, !tbaa !58
  %i.bl = lshr i64 %i.bg, %i.bj
  store i64 %i.bl, ptr %i.k, align 8, !tbaa !59
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i56.i, i64 2
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !78
  %i.bo = zext i16 %i.bn to i64
  store i64 %i.bo, ptr %i.b, align 8, !tbaa !41
end_hunk_1
