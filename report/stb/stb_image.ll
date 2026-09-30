Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_image?download=true
inline.NumInlined: 718
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 84
begin_hunk_0_@stbi__tga_load:bb.a
.lr.ph.split:                                     ; preds = %.lr.ph, %stbi__getn.exit
  %.0187326 = phi i32 [ %i.kk, %stbi__getn.exit ], [ 0, %.lr.ph ] ; 3 uses
  %i.jn = xor i32 %.0187326, -1
  %i.jo = add nsw i32 %i.ee, %i.jn
  %i.jp = select i1 %.not207.not, i32 %i.jo, i32 %.0187326
  %i.jq = mul i32 %i.ia, %i.jp
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds i8, ptr %i.hj, i64 %i.jr ; 3 uses
  %i.jt = load ptr, ptr %i.ib, align 8, !tbaa !25 ; 2 uses
  %.not.i260 = icmp eq ptr %i.jt, null
  br i1 %.not.i260, label %..thread_crit_edge.i262, label %bb.ax

..thread_crit_edge.i262:                          ; preds = %.lr.ph.split
  %.pre.i264 = load ptr, ptr %i.b, align 8, !tbaa !29
  %.pre35.i = load ptr, ptr %i.d, align 8, !tbaa !31
  br label %.thread.i261

bb.ax:                                            ; preds = %.lr.ph.split
  %i.ju = load ptr, ptr %i.d, align 8, !tbaa !31  ; 2 uses
  %i.jv = load ptr, ptr %i.b, align 8, !tbaa !29  ; 3 uses
  %i.jw = ptrtoint ptr %i.ju to i64
  %i.jx = ptrtoint ptr %i.jv to i64
  %i.jy = sub i64 %i.jw, %i.jx                    ; 2 uses
  %i.jz = trunc i64 %i.jy to i32                  ; 2 uses
  %i.ka = icmp sgt i32 %i.ia, %i.jz
  br i1 %i.ka, label %bb.ay, label %.thread.i261

bb.ay:                                            ; preds = %bb.ax
  %sext.i = shl i64 %i.jy, 32
  %i.kb = ashr exact i64 %sext.i, 32              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.js, ptr align 1 %i.jv, i64 %i.kb, i1 false)
  %i.kc = load ptr, ptr %i.ic, align 8, !tbaa !34
  %i.kd = getelementptr inbounds i8, ptr %i.js, i64 %i.kb
  %i.ke = sub nsw i32 %i.ia, %i.jz
  %i.kf = tail call i32 %i.jt(ptr noundef %i.kc, ptr noundef nonnull %i.kd, i32 noundef %i.ke) #37, !inline_history !84 ; 0 uses
  %i.kg = load ptr, ptr %i.d, align 8, !tbaa !31
  br label %stbi__getn.exit.sink.split

.thread.i261:                                     ; preds = %bb.ax, %..thread_crit_edge.i262
  %i.kh = phi ptr [ %.pre35.i, %..thread_crit_edge.i262 ], [ %i.ju, %bb.ax ]
  %i.ki = phi ptr [ %.pre.i264, %..thread_crit_edge.i262 ], [ %i.jv, %bb.ax ] ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.id ; 2 uses
  %.not32.i = icmp ugt ptr %i.kj, %i.kh
  br i1 %.not32.i, label %stbi__getn.exit, label %bb.az

bb.az:                                            ; preds = %.thread.i261
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.js, ptr align 1 %i.ki, i64 %i.id, i1 false)
  br label %stbi__getn.exit.sink.split

stbi__getn.exit.sink.split:                       ; preds = %bb.az, %bb.ay
  %.sink = phi ptr [ %i.kg, %bb.ay ], [ %i.kj, %bb.az ]
  store ptr %.sink, ptr %i.b, align 8, !tbaa !29
  br label %stbi__getn.exit

stbi__getn.exit:                                  ; preds = %stbi__getn.exit.sink.split, %.thread.i261
  %i.kk = add nuw nsw i32 %.0187326, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.kk, %i.ee
  br i1 %exitcond.not, label %.loopexit325, label %.lr.ph.split, !llvm.loop !213

bb.ba:                                            ; preds = %stbi__skip.exit
  br i1 %i.gt, label %bb.bb, label %.loopexit323

bb.bb:                                            ; preds = %bb.ba
  %i.kl = icmp eq i32 %i.cv, 0
  br i1 %i.kl, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  tail call void @free(ptr noundef nonnull %i.hj) #37
  %i.km = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.81, ptr %i.km, align 8, !tbaa !39
  br label %bb.cp

bb.bd:                                            ; preds = %bb.bb
  %i.kn = icmp eq i32 %i.cu, 0
  br i1 %i.kn, label %stbi__skip.exit270, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !25
  %.not.i265 = icmp eq ptr %i.kp, null
  br i1 %.not.i265, label %..thread_crit_edge.i267, label %bb.bf

..thread_crit_edge.i267:                          ; preds = %bb.be
  %.pre.i269 = load ptr, ptr %i.b, align 8, !tbaa !29
  br label %.thread.i266

bb.bf:                                            ; preds = %bb.be
  %i.kq = load ptr, ptr %i.d, align 8, !tbaa !31  ; 2 uses
  %i.kr = load ptr, ptr %i.b, align 8, !tbaa !29  ; 2 uses
  %i.ks = ptrtoint ptr %i.kq to i64
  %i.kt = ptrtoint ptr %i.kr to i64
  %i.ku = sub i64 %i.ks, %i.kt
  %i.kv = trunc i64 %i.ku to i32                  ; 2 uses
  %i.kw = icmp sgt i32 %i.cu, %i.kv
  br i1 %i.kw, label %bb.bg, label %.thread.i266

bb.bg:                                            ; preds = %bb.bf
  store ptr %i.kq, ptr %i.b, align 8, !tbaa !29
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !67
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !34
  %i.lb = sub nsw i32 %i.cu, %i.kv
  tail call void %i.ky(ptr noundef %i.la, i32 noundef %i.lb) #37, !inline_history !68
  br label %stbi__skip.exit270

.thread.i266:                                     ; preds = %bb.bf, %..thread_crit_edge.i267
  %i.lc = phi ptr [ %.pre.i269, %..thread_crit_edge.i267 ], [ %i.kr, %bb.bf ]
  %i.ld = zext nneg i32 %i.cu to i64
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.ld
  store ptr %i.le, ptr %i.b, align 8, !tbaa !29
  br label %stbi__skip.exit270

stbi__skip.exit270:                               ; preds = %bb.bd, %bb.bg, %.thread.i266
  %i.lf = mul nuw nsw i32 %i.cv, %.0193.ph        ; 2 uses
  %i.lg = zext nneg i32 %i.lf to i64
  %i.lh = tail call noalias noundef ptr @malloc(i64 noundef %i.lg) #38 ; 6 uses
  %.not208 = icmp eq ptr %i.lh, null
  br i1 %.not208, label %stbi__malloc_mad2.exit.thread, label %bb.bh

stbi__malloc_mad2.exit.thread:                    ; preds = %stbi__skip.exit270
  tail call void @free(ptr noundef nonnull %i.hj) #37
  %i.li = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.li, align 8, !tbaa !39
  br label %bb.cp

bb.bh:                                            ; preds = %stbi__skip.exit270
  br i1 %.not209, label %bb.bj, label %.preheader322

.preheader322:                                    ; preds = %bb.bh
  %i.lj = zext nneg i8 %.0193.ph.shrunk to i64
  br label %bb.bi

bb.bi:                                            ; preds = %.preheader322, %bb.bi
  %.0177328 = phi ptr [ %i.lh, %.preheader322 ], [ %i.mc, %bb.bi ] ; 4 uses
  %.1188327 = phi i32 [ 0, %.preheader322 ], [ %i.md, %bb.bi ]
  %i.lk = tail call i32 @stbi__get16le(ptr noundef nonnull %0)
  %i.ll = trunc nuw i32 %i.lk to i16              ; 3 uses
  %i.lm = lshr i16 %i.ll, 10
  %i.ln = and i16 %i.lm, 31
  %.lhs.trunc.i = mul nuw nsw i16 %i.ln, 255
  %i.lo = udiv i16 %.lhs.trunc.i, 31
  %i.lp = trunc nuw i16 %i.lo to i8
  store i8 %i.lp, ptr %.0177328, align 1, !tbaa !37
  %i.lq = lshr i16 %i.ll, 5
  %i.lr = getelementptr inbounds nuw i8, ptr %.0177328, i64 1
  %i.ls = insertelement <2 x i16> poison, i16 %i.lq, i64 0
  %i.lt = insertelement <2 x i16> %i.ls, i16 %i.ll, i64 1
  %i.lu = and <2 x i16> %i.lt, splat (i16 31)
  %i.lv = mul nuw nsw <2 x i16> %i.lu, splat (i16 255)
  %i.lw = udiv <2 x i16> %i.lv, splat (i16 31)    ; 2 uses
  %i.lx = bitcast <2 x i16> %i.lw to <4 x i8>
  %i.ly = extractelement <4 x i8> %i.lx, i64 0
  store i8 %i.ly, ptr %i.lr, align 1, !tbaa !37
  %i.lz = bitcast <2 x i16> %i.lw to <4 x i8>
  %i.ma = extractelement <4 x i8> %i.lz, i64 2
  %i.mb = getelementptr inbounds nuw i8, ptr %.0177328, i64 2
  store i8 %i.ma, ptr %i.mb, align 1, !tbaa !37
  %i.mc = getelementptr inbounds nuw i8, ptr %.0177328, i64 %i.lj
  %i.md = add nuw nsw i32 %.1188327, 1            ; 2 uses
  %exitcond363.not = icmp eq i32 %i.md, %i.cv
  br i1 %exitcond363.not, label %.loopexit323, label %bb.bi, !llvm.loop !214

bb.bj:                                            ; preds = %bb.bh
  %i.me = tail call i32 @stbi__getn(ptr noundef nonnull %0, ptr noundef nonnull %i.lh, i32 noundef %i.lf)
  %.not210 = icmp eq i32 %i.me, 0
  br i1 %.not210, label %bb.bk, label %.loopexit323

bb.bk:                                            ; preds = %bb.bj
  tail call void @free(ptr noundef nonnull %i.hj) #37
  tail call void @free(ptr noundef nonnull %i.lh) #37
  %i.mf = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.81, ptr %i.mf, align 8, !tbaa !39
  br label %bb.cp

.loopexit323:                                     ; preds = %bb.bi, %bb.bj, %bb.ba
  %.0191 = phi ptr [ null, %bb.ba ], [ %i.lh, %bb.bj ], [ %i.lh, %bb.bi ] ; 3 uses
  %.not350 = icmp eq i32 %i.hg, 0
  br i1 %.not350, label %._crit_edge, label %.lr.ph336

.lr.ph336:                                        ; preds = %.loopexit323
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 12 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 7 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.mp = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.mq = icmp eq i8 %.0.i243, 8
  %i.mr = zext nneg i8 %.0193.ph.shrunk to i64    ; 3 uses
  %wide.trip.count381 = zext nneg i32 %i.hg to i64
  %wide.trip.count368 = zext nneg i8 %.0193.ph.shrunk to i64
  br label %bb.bl

bb.bl:                                            ; preds = %.lr.ph336, %.loopexit319
  %indvars.iv379 = phi i64 [ 0, %.lr.ph336 ], [ %indvars.iv.next380, %.loopexit319 ] ; 2 uses
  %.not216.not = phi i1 [ true, %.lr.ph336 ], [ false, %.loopexit319 ]
  %.0180334 = phi i32 [ 0, %.lr.ph336 ], [ %.1181316, %.loopexit319 ] ; 2 uses
  %.0182333 = phi i32 [ 0, %.lr.ph336 ], [ %i.qm, %.loopexit319 ] ; 4 uses
  %i.ms = trunc nuw nsw i64 %indvars.iv379 to i32
  %i.mt = mul i32 %.0193.ph, %i.ms
  %i.mu = zext i32 %i.mt to i64
  %scevgep374 = getelementptr i8, ptr %i.hj, i64 %i.mu
  br i1 %i.gq, label %bb.bm, label %.thread

bb.bm:                                            ; preds = %bb.bl
  %i.mv = icmp eq i32 %.0182333, 0
  br i1 %i.mv, label %bb.bn, label %bb.bt

bb.bn:                                            ; preds = %bb.bm
  %i.mw = load ptr, ptr %i.b, align 8, !tbaa !29  ; 3 uses
  %i.mx = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.my = icmp ult ptr %i.mw, %i.mx
  br i1 %i.my, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mw, i64 1
  store ptr %i.mz, ptr %i.b, align 8, !tbaa !29
  %i.na = load i8, ptr %i.mw, align 1, !tbaa !37
  br label %stbi__get8.exit278

bb.bp:                                            ; preds = %bb.bn
  %i.nb = load i32, ptr %i.mg, align 8, !tbaa !26
  %.not.i273 = icmp eq i32 %i.nb, 0
  br i1 %.not.i273, label %stbi__get8.exit278, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.nc = load ptr, ptr %i.mh, align 8, !tbaa !25
  %i.nd = load ptr, ptr %i.mi, align 8, !tbaa !34
  %i.ne = load i32, ptr %i.mk, align 4, !tbaa !35
  %i.nf = tail call i32 %i.nc(ptr noundef %i.nd, ptr noundef nonnull %i.mj, i32 noundef %i.ne) #37, !inline_history !65 ; 2 uses
  %i.ng = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.nh = load ptr, ptr %i.ml, align 8, !tbaa !28
  %i.ni = ptrtoint ptr %i.ng to i64
  %i.nj = ptrtoint ptr %i.nh to i64
  %i.nk = sub i64 %i.ni, %i.nj
  %i.nl = trunc i64 %i.nk to i32
  %i.nm = load i32, ptr %i.mm, align 8, !tbaa !27
  %i.nn = add nsw i32 %i.nm, %i.nl
  store i32 %i.nn, ptr %i.mm, align 8, !tbaa !27
  %i.no = icmp eq i32 %i.nf, 0
  br i1 %i.no, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store i32 0, ptr %i.mg, align 8, !tbaa !26
  store i8 0, ptr %i.mj, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i275

bb.bs:                                            ; preds = %bb.bq
  %i.np = sext i32 %i.nf to i64
  %i.nq = getelementptr inbounds i8, ptr %i.mj, i64 %i.np
  %.pre.i274 = load i8, ptr %i.mj, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i275

stbi__refill_buffer.exit.i275:                    ; preds = %bb.bs, %bb.br
  %i.nr = phi i8 [ 0, %bb.br ], [ %.pre.i274, %bb.bs ]
  %.sink.i.i276 = phi ptr [ %i.mn, %bb.br ], [ %i.nq, %bb.bs ]
  store ptr %.sink.i.i276, ptr %i.d, align 8, !tbaa !31
  store ptr %i.mn, ptr %i.b, align 8, !tbaa !29
  br label %stbi__get8.exit278

stbi__get8.exit278:                               ; preds = %bb.bo, %bb.bp, %stbi__refill_buffer.exit.i275
  %.0.i277 = phi i8 [ %i.na, %bb.bo ], [ %i.nr, %stbi__refill_buffer.exit.i275 ], [ 0, %bb.bp ]
  %i.ns = zext i8 %.0.i277 to i32                 ; 2 uses
  %i.nt = and i32 %i.ns, 127
  %i.nu = add nuw nsw i32 %i.nt, 1
  %i.nv = lshr i32 %i.ns, 7
  br label %.thread

bb.bt:                                            ; preds = %bb.bm
  %.not215 = icmp eq i32 %.0180334, 0             ; 2 uses
  %brmerge = or i1 %.not215, %.not216.not
  %not..not215 = xor i1 %.not215, true
  %.mux = zext i1 %not..not215 to i32
  br i1 %brmerge, label %.thread, label %.loopexit319

.thread:                                          ; preds = %bb.bt, %bb.bl, %stbi__get8.exit278
  %.1181315 = phi i32 [ %.mux, %bb.bt ], [ %i.nv, %stbi__get8.exit278 ], [ %.0180334, %bb.bl ] ; 3 uses
  %.1183313 = phi i32 [ %.0182333, %bb.bt ], [ %i.nu, %stbi__get8.exit278 ], [ %.0182333, %bb.bl ] ; 3 uses
  br i1 %i.gt, label %bb.bu, label %bb.cc

bb.bu:                                            ; preds = %.thread
  br i1 %i.mq, label %bb.bv, label %bb.cb

bb.bv:                                            ; preds = %bb.bu
  %i.nw = load ptr, ptr %i.b, align 8, !tbaa !29  ; 3 uses
  %i.nx = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.ny = icmp ult ptr %i.nw, %i.nx
  br i1 %i.ny, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nw, i64 1
  store ptr %i.nz, ptr %i.b, align 8, !tbaa !29
  %i.oa = load i8, ptr %i.nw, align 1, !tbaa !37
  br label %stbi__get8.exit284

bb.bx:                                            ; preds = %bb.bv
  %i.ob = load i32, ptr %i.mg, align 8, !tbaa !26
  %.not.i279 = icmp eq i32 %i.ob, 0
  br i1 %.not.i279, label %stbi__get8.exit284, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.oc = load ptr, ptr %i.mh, align 8, !tbaa !25
  %i.od = load ptr, ptr %i.mi, align 8, !tbaa !34
  %i.oe = load i32, ptr %i.mk, align 4, !tbaa !35
  %i.of = tail call i32 %i.oc(ptr noundef %i.od, ptr noundef nonnull %i.mj, i32 noundef %i.oe) #37, !inline_history !65 ; 2 uses
  %i.og = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.oh = load ptr, ptr %i.ml, align 8, !tbaa !28
  %i.oi = ptrtoint ptr %i.og to i64
  %i.oj = ptrtoint ptr %i.oh to i64
  %i.ok = sub i64 %i.oi, %i.oj
  %i.ol = trunc i64 %i.ok to i32
  %i.om = load i32, ptr %i.mm, align 8, !tbaa !27
  %i.on = add nsw i32 %i.om, %i.ol
  store i32 %i.on, ptr %i.mm, align 8, !tbaa !27
  %i.oo = icmp eq i32 %i.of, 0
  br i1 %i.oo, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store i32 0, ptr %i.mg, align 8, !tbaa !26
  store i8 0, ptr %i.mj, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i281

bb.ca:                                            ; preds = %bb.by
  %i.op = sext i32 %i.of to i64
  %i.oq = getelementptr inbounds i8, ptr %i.mj, i64 %i.op
  %.pre.i280 = load i8, ptr %i.mj, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i281

stbi__refill_buffer.exit.i281:                    ; preds = %bb.ca, %bb.bz
  %i.or = phi i8 [ 0, %bb.bz ], [ %.pre.i280, %bb.ca ]
  %.sink.i.i282 = phi ptr [ %i.mn, %bb.bz ], [ %i.oq, %bb.ca ]
  store ptr %.sink.i.i282, ptr %i.d, align 8, !tbaa !31
  store ptr %i.mn, ptr %i.b, align 8, !tbaa !29
  br label %stbi__get8.exit284

stbi__get8.exit284:                               ; preds = %bb.bw, %bb.bx, %stbi__refill_buffer.exit.i281
  %.0.i283 = phi i8 [ %i.oa, %bb.bw ], [ %i.or, %stbi__refill_buffer.exit.i281 ], [ 0, %bb.bx ]
  %i.os = zext i8 %.0.i283 to i32
  br label %.loopexit319.loopexit

bb.cb:                                            ; preds = %bb.bu
  %i.ot = tail call i32 @stbi__get16le(ptr noundef %0)
  br label %.loopexit319.loopexit

.loopexit319.loopexit:                            ; preds = %bb.cb, %stbi__get8.exit284
  %i.ou = phi i32 [ %i.os, %stbi__get8.exit284 ], [ %i.ot, %bb.cb ] ; 2 uses
  %.not218 = icmp samesign ult i32 %i.ou, %i.cv
  %spec.store.select = select i1 %.not218, i32 %i.ou, i32 0
  %i.ov = zext nneg i32 %spec.store.select to i64
  %i.ow = mul nuw nsw i64 %i.mr, %i.ov
  %scevgep = getelementptr nuw i8, ptr %.0191, i64 %i.ow
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i64 %i.mr, i1 false), !tbaa !37
  br label %.loopexit319

bb.cc:                                            ; preds = %.thread
  br i1 %.not209, label %.preheader320.preheader, label %bb.cd

.preheader320.preheader:                          ; preds = %bb.cc
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !29
  %.pre398 = load ptr, ptr %i.d, align 8, !tbaa !31
  br label %.preheader320

bb.cd:                                            ; preds = %bb.cc
  %i.ox = tail call i32 @stbi__get16le(ptr noundef %0)
  %i.oy = trunc nuw i32 %i.ox to i16              ; 3 uses
  %i.oz = lshr i16 %i.oy, 10
  %i.pa = and i16 %i.oz, 31
  %.lhs.trunc.i285 = mul nuw nsw i16 %i.pa, 255
  %i.pb = udiv i16 %.lhs.trunc.i285, 31
  %i.pc = trunc nuw i16 %i.pb to i8
  store i8 %i.pc, ptr %i.a, align 4, !tbaa !37
  %i.pd = lshr i16 %i.oy, 5
  %i.pe = insertelement <2 x i16> poison, i16 %i.pd, i64 0
  %i.pf = insertelement <2 x i16> %i.pe, i16 %i.oy, i64 1
  %i.pg = and <2 x i16> %i.pf, splat (i16 31)
  %i.ph = mul nuw nsw <2 x i16> %i.pg, splat (i16 255)
  %i.pi = udiv <2 x i16> %i.ph, splat (i16 31)    ; 2 uses
  %i.pj = bitcast <2 x i16> %i.pi to <4 x i8>
  %i.pk = extractelement <4 x i8> %i.pj, i64 0
  store i8 %i.pk, ptr %i.mo, align 1, !tbaa !37
  %i.pl = bitcast <2 x i16> %i.pi to <4 x i8>
  %i.pm = extractelement <4 x i8> %i.pl, i64 2
  store i8 %i.pm, ptr %i.mp, align 2, !tbaa !37
  br label %.loopexit319

.preheader320:                                    ; preds = %.preheader320.preheader, %stbi__get8.exit293
  %i.pn = phi ptr [ %.pre398, %.preheader320.preheader ], [ %i.qj, %stbi__get8.exit293 ] ; 3 uses
  %i.po = phi ptr [ %.pre, %.preheader320.preheader ], [ %i.qk, %stbi__get8.exit293 ] ; 4 uses
  %indvars.iv364 = phi i64 [ 0, %.preheader320.preheader ], [ %indvars.iv.next365, %stbi__get8.exit293 ] ; 2 uses
  %i.pp = icmp ult ptr %i.po, %i.pn
  br i1 %i.pp, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %.preheader320
  %i.pq = getelementptr inbounds nuw i8, ptr %i.po, i64 1 ; 2 uses
  store ptr %i.pq, ptr %i.b, align 8, !tbaa !29
  %i.pr = load i8, ptr %i.po, align 1, !tbaa !37
  br label %stbi__get8.exit293

bb.cf:                                            ; preds = %.preheader320
  %i.ps = load i32, ptr %i.mg, align 8, !tbaa !26
  %.not.i288 = icmp eq i32 %i.ps, 0
  br i1 %.not.i288, label %stbi__get8.exit293, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.pt = load ptr, ptr %i.mh, align 8, !tbaa !25
  %i.pu = load ptr, ptr %i.mi, align 8, !tbaa !34
  %i.pv = load i32, ptr %i.mk, align 4, !tbaa !35
  %i.pw = tail call i32 %i.pt(ptr noundef %i.pu, ptr noundef nonnull %i.mj, i32 noundef %i.pv) #37, !inline_history !65 ; 2 uses
  %i.px = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.py = load ptr, ptr %i.ml, align 8, !tbaa !28
  %i.pz = ptrtoint ptr %i.px to i64
  %i.qa = ptrtoint ptr %i.py to i64
  %i.qb = sub i64 %i.pz, %i.qa
  %i.qc = trunc i64 %i.qb to i32
  %i.qd = load i32, ptr %i.mm, align 8, !tbaa !27
  %i.qe = add nsw i32 %i.qd, %i.qc
  store i32 %i.qe, ptr %i.mm, align 8, !tbaa !27
  %i.qf = icmp eq i32 %i.pw, 0
  br i1 %i.qf, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store i32 0, ptr %i.mg, align 8, !tbaa !26
  store i8 0, ptr %i.mj, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i290

bb.ci:                                            ; preds = %bb.cg
  %i.qg = sext i32 %i.pw to i64
  %i.qh = getelementptr inbounds i8, ptr %i.mj, i64 %i.qg
  %.pre.i289 = load i8, ptr %i.mj, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i290

stbi__refill_buffer.exit.i290:                    ; preds = %bb.ci, %bb.ch
  %i.qi = phi i8 [ 0, %bb.ch ], [ %.pre.i289, %bb.ci ]
  %.sink.i.i291 = phi ptr [ %i.mn, %bb.ch ], [ %i.qh, %bb.ci ] ; 2 uses
  store ptr %.sink.i.i291, ptr %i.d, align 8, !tbaa !31
  store ptr %i.mn, ptr %i.b, align 8, !tbaa !29
  br label %stbi__get8.exit293

stbi__get8.exit293:                               ; preds = %bb.ce, %bb.cf, %stbi__refill_buffer.exit.i290
  %i.qj = phi ptr [ %i.pn, %bb.ce ], [ %.sink.i.i291, %stbi__refill_buffer.exit.i290 ], [ %i.pn, %bb.cf ]
  %i.qk = phi ptr [ %i.pq, %bb.ce ], [ %i.mn, %stbi__refill_buffer.exit.i290 ], [ %i.po, %bb.cf ]
  %.0.i292 = phi i8 [ %i.pr, %bb.ce ], [ %i.qi, %stbi__refill_buffer.exit.i290 ], [ 0, %bb.cf ]
  %i.ql = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv364
  store i8 %.0.i292, ptr %i.ql, align 1, !tbaa !37
  %indvars.iv.next365 = add nuw nsw i64 %indvars.iv364, 1 ; 2 uses
  %exitcond369.not = icmp eq i64 %indvars.iv.next365, %wide.trip.count368
  br i1 %exitcond369.not, label %.loopexit319, label %.preheader320, !llvm.loop !215

.loopexit319:                                     ; preds = %stbi__get8.exit293, %.loopexit319.loopexit, %bb.bt, %bb.cd
  %.1181316 = phi i32 [ %.1181315, %.loopexit319.loopexit ], [ %.1181315, %bb.cd ], [ 1, %bb.bt ], [ %.1181315, %stbi__get8.exit293 ]
  %.1183314 = phi i32 [ %.1183313, %.loopexit319.loopexit ], [ %.1183313, %bb.cd ], [ %.0182333, %bb.bt ], [ %.1183313, %stbi__get8.exit293 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep374, ptr noundef nonnull align 4 dereferenceable(1) %i.a, i64 %i.mr, i1 false), !tbaa !37
  %i.qm = add nsw i32 %.1183314, -1
  %indvars.iv.next380 = add nuw nsw i64 %indvars.iv379, 1 ; 2 uses
  %exitcond382.not = icmp eq i64 %indvars.iv.next380, %wide.trip.count381
  br i1 %exitcond382.not, label %._crit_edge, label %bb.bl, !llvm.loop !216

._crit_edge:                                      ; preds = %.loopexit319, %.loopexit323
  %.not211.not = icmp eq i8 %i.gs, 0
  %or.cond348 = and i1 %.not211.not, %i.ha
  br i1 %or.cond348, label %.lr.ph344, label %.loopexit318

.lr.ph344:                                        ; preds = %._crit_edge
  %i.qn = mul nuw nsw i32 %i.ed, %.0193.ph        ; 10 uses
  %.not351 = icmp eq i32 %i.ed, 0
  br i1 %.not351, label %.loopexit318, label %.lr.ph341.preheader

.lr.ph341.preheader:                              ; preds = %.lr.ph344
  %i.qo = add nsw i32 %i.ee, -1                   ; 2 uses
  %i.qp = mul i32 %i.ed, %i.qo
  %i.qq = mul i32 %i.qp, %.0193.ph
  %i.qr = lshr i32 %i.qo, 1
  %smin = tail call i32 @llvm.smin.i32(i32 %i.qn, i32 1)
end_hunk_0
begin_hunk_1_@stbi__parse_png_file:bb.a
  store ptr %i.q, ptr %i.h, align 8, !tbaa !29
  br label %stbi__get8.exit.i.5

bb.ae:                                            ; preds = %bb.z
  %i.du = getelementptr inbounds nuw i8, ptr %i.db, i64 1 ; 2 uses
  store ptr %i.du, ptr %i.h, align 8, !tbaa !29
  %i.dv = load i8, ptr %i.db, align 1, !tbaa !37
  br label %stbi__get8.exit.i.5

stbi__get8.exit.i.5:                              ; preds = %bb.ae, %stbi__refill_buffer.exit.i.i.5
  %i.dw = phi ptr [ %i.da, %bb.ae ], [ %.sink.i.i.i.5, %stbi__refill_buffer.exit.i.i.5 ] ; 2 uses
  %i.dx = phi ptr [ %i.du, %bb.ae ], [ %i.q, %stbi__refill_buffer.exit.i.i.5 ] ; 3 uses
  %.0.i.i.5 = phi i8 [ %i.dv, %bb.ae ], [ %i.dt, %stbi__refill_buffer.exit.i.i.5 ]
  %.not.i.5 = icmp eq i8 %.0.i.i.5, 10
  br i1 %.not.i.5, label %bb.af, label %stbi__check_png_header.exit.thread

bb.af:                                            ; preds = %stbi__get8.exit.i.5
  %i.dy = icmp ult ptr %i.dx, %i.dw
  br i1 %i.dy, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dz = load i32, ptr %i.j, align 8, !tbaa !26
  %.not.i.i.6 = icmp eq i32 %i.dz, 0
  br i1 %.not.i.i.6, label %stbi__check_png_header.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ea = load ptr, ptr %i.k, align 8, !tbaa !25
  %i.eb = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.ec = load i32, ptr %i.n, align 4, !tbaa !35
  %i.ed = tail call i32 %i.ea(ptr noundef %i.eb, ptr noundef nonnull %i.m, i32 noundef %i.ec) #37, !inline_history !51 ; 2 uses
  %i.ee = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.ef = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = trunc i64 %i.ei to i32
  %i.ek = load i32, ptr %i.p, align 8, !tbaa !27
  %i.el = add nsw i32 %i.ek, %i.ej
  store i32 %i.el, ptr %i.p, align 8, !tbaa !27
  %i.em = icmp eq i32 %i.ed, 0
  br i1 %i.em, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.en = sext i32 %i.ed to i64
  %i.eo = getelementptr inbounds i8, ptr %i.m, i64 %i.en
  %.pre.i.i.6 = load i8, ptr %i.m, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i.i.6

bb.aj:                                            ; preds = %bb.ah
  store i32 0, ptr %i.j, align 8, !tbaa !26
  store i8 0, ptr %i.m, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i.i.6

stbi__refill_buffer.exit.i.i.6:                   ; preds = %bb.aj, %bb.ai
  %i.ep = phi i8 [ 0, %bb.aj ], [ %.pre.i.i.6, %bb.ai ]
  %.sink.i.i.i.6 = phi ptr [ %i.q, %bb.aj ], [ %i.eo, %bb.ai ] ; 2 uses
  store ptr %.sink.i.i.i.6, ptr %i.i, align 8, !tbaa !31
  store ptr %i.q, ptr %i.h, align 8, !tbaa !29
  br label %stbi__get8.exit.i.6

bb.ak:                                            ; preds = %bb.af
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dx, i64 1 ; 2 uses
  store ptr %i.eq, ptr %i.h, align 8, !tbaa !29
  %i.er = load i8, ptr %i.dx, align 1, !tbaa !37
  br label %stbi__get8.exit.i.6

stbi__get8.exit.i.6:                              ; preds = %bb.ak, %stbi__refill_buffer.exit.i.i.6
  %i.es = phi ptr [ %i.dw, %bb.ak ], [ %.sink.i.i.i.6, %stbi__refill_buffer.exit.i.i.6 ]
  %i.et = phi ptr [ %i.eq, %bb.ak ], [ %i.q, %stbi__refill_buffer.exit.i.i.6 ] ; 3 uses
  %.0.i.i.6 = phi i8 [ %i.er, %bb.ak ], [ %i.ep, %stbi__refill_buffer.exit.i.i.6 ]
  %.not.i.6 = icmp eq i8 %.0.i.i.6, 26
  br i1 %.not.i.6, label %bb.al, label %stbi__check_png_header.exit.thread

bb.al:                                            ; preds = %stbi__get8.exit.i.6
  %i.eu = icmp ult ptr %i.et, %i.es
  br i1 %i.eu, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ev = load i32, ptr %i.j, align 8, !tbaa !26
  %.not.i.i.7 = icmp eq i32 %i.ev, 0
  br i1 %.not.i.i.7, label %stbi__check_png_header.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ew = load ptr, ptr %i.k, align 8, !tbaa !25
  %i.ex = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.ey = load i32, ptr %i.n, align 4, !tbaa !35
  %i.ez = tail call i32 %i.ew(ptr noundef %i.ex, ptr noundef nonnull %i.m, i32 noundef %i.ey) #37, !inline_history !51 ; 2 uses
  %i.fa = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.fb = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = sub i64 %i.fc, %i.fd
  %i.ff = trunc i64 %i.fe to i32
  %i.fg = load i32, ptr %i.p, align 8, !tbaa !27
  %i.fh = add nsw i32 %i.fg, %i.ff
  store i32 %i.fh, ptr %i.p, align 8, !tbaa !27
  %i.fi = icmp eq i32 %i.ez, 0
  br i1 %i.fi, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fj = sext i32 %i.ez to i64
  %i.fk = getelementptr inbounds i8, ptr %i.m, i64 %i.fj
  %.pre.i.i.7 = load i8, ptr %i.m, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i.i.7

bb.ap:                                            ; preds = %bb.an
  store i32 0, ptr %i.j, align 8, !tbaa !26
  store i8 0, ptr %i.m, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i.i.7

stbi__refill_buffer.exit.i.i.7:                   ; preds = %bb.ap, %bb.ao
  %i.fl = phi i8 [ 0, %bb.ap ], [ %.pre.i.i.7, %bb.ao ]
  %.sink.i.i.i.7 = phi ptr [ %i.q, %bb.ap ], [ %i.fk, %bb.ao ]
  store ptr %.sink.i.i.i.7, ptr %i.i, align 8, !tbaa !31
  store ptr %i.q, ptr %i.h, align 8, !tbaa !29
  br label %stbi__get8.exit.i.7

bb.aq:                                            ; preds = %bb.al
  %i.fm = getelementptr inbounds nuw i8, ptr %i.et, i64 1
  store ptr %i.fm, ptr %i.h, align 8, !tbaa !29
  %i.fn = load i8, ptr %i.et, align 1, !tbaa !37
  br label %stbi__get8.exit.i.7

stbi__get8.exit.i.7:                              ; preds = %bb.aq, %stbi__refill_buffer.exit.i.i.7
  %.0.i.i.7 = phi i8 [ %i.fn, %bb.aq ], [ %i.fl, %stbi__refill_buffer.exit.i.i.7 ]
  %.not.i.7 = icmp eq i8 %.0.i.i.7, 10
  br i1 %.not.i.7, label %stbi__check_png_header.exit, label %stbi__check_png_header.exit.thread

stbi__check_png_header.exit:                      ; preds = %stbi__get8.exit.i.7
  %i.fo = icmp eq i32 %1, 1
  br i1 %i.fo, label %.thread375, label %.preheader393

bb.ar:                                            ; preds = %bb.a
  %i.fp = getelementptr inbounds nuw i8, ptr %.pre.i, i64 1 ; 2 uses
  store ptr %i.fp, ptr %i.h, align 8, !tbaa !29
  %i.fq = load i8, ptr %.pre.i, align 1, !tbaa !37
  br label %stbi__get8.exit.i

bb.as:                                            ; preds = %bb.a
  %i.fr = load i32, ptr %i.j, align 8, !tbaa !26
  %.not.i.i = icmp eq i32 %i.fr, 0
  br i1 %.not.i.i, label %stbi__check_png_header.exit.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fs = load ptr, ptr %i.k, align 8, !tbaa !25
  %i.ft = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.fu = load i32, ptr %i.n, align 4, !tbaa !35
  %i.fv = tail call i32 %i.fs(ptr noundef %i.ft, ptr noundef nonnull %i.m, i32 noundef %i.fu) #37, !inline_history !51 ; 2 uses
  %i.fw = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.fx = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = trunc i64 %i.ga to i32
  %i.gc = load i32, ptr %i.p, align 8, !tbaa !27
  %i.gd = add nsw i32 %i.gc, %i.gb
  store i32 %i.gd, ptr %i.p, align 8, !tbaa !27
  %i.ge = icmp eq i32 %i.fv, 0
  br i1 %i.ge, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.j, align 8, !tbaa !26
  store i8 0, ptr %i.m, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i.i

bb.av:                                            ; preds = %bb.at
  %i.gf = sext i32 %i.fv to i64
  %i.gg = getelementptr inbounds i8, ptr %i.m, i64 %i.gf
  %.pre.i.i = load i8, ptr %i.m, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i.i

stbi__refill_buffer.exit.i.i:                     ; preds = %bb.av, %bb.au
  %i.gh = phi i8 [ 0, %bb.au ], [ %.pre.i.i, %bb.av ]
  %.sink.i.i.i = phi ptr [ %i.q, %bb.au ], [ %i.gg, %bb.av ] ; 2 uses
  store ptr %.sink.i.i.i, ptr %i.i, align 8, !tbaa !31
  store ptr %i.q, ptr %i.h, align 8, !tbaa !29
  br label %stbi__get8.exit.i

stbi__get8.exit.i:                                ; preds = %stbi__refill_buffer.exit.i.i, %bb.ar
  %i.gi = phi ptr [ %.pre7.i, %bb.ar ], [ %.sink.i.i.i, %stbi__refill_buffer.exit.i.i ] ; 2 uses
  %i.gj = phi ptr [ %i.fp, %bb.ar ], [ %i.q, %stbi__refill_buffer.exit.i.i ] ; 3 uses
  %.0.i.i = phi i8 [ %i.fq, %bb.ar ], [ %i.gh, %stbi__refill_buffer.exit.i.i ]
  %.not.i = icmp eq i8 %.0.i.i, -119
  br i1 %.not.i, label %bb.b, label %stbi__check_png_header.exit.thread

stbi__check_png_header.exit.thread:               ; preds = %bb.as, %bb.am, %bb.ag, %bb.aa, %bb.u, %bb.o, %bb.i, %bb.c, %stbi__get8.exit.i.7, %stbi__get8.exit.i.6, %stbi__get8.exit.i.5, %stbi__get8.exit.i.4, %stbi__get8.exit.i.3, %stbi__get8.exit.i.2, %stbi__get8.exit.i.1, %stbi__get8.exit.i
  %i.gk = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.48, ptr %i.gk, align 8, !tbaa !39
  br label %.thread375

.preheader393:                                    ; preds = %stbi__check_png_header.exit
  %i.gl = icmp eq i32 %1, 2                       ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 13 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  br label %bb.aw

bb.aw:                                            ; preds = %.preheader393, %.loopexit
  %.0237 = phi i8 [ %.3240, %.loopexit ], [ 0, %.preheader393 ] ; 19 uses
  %.0234 = phi i8 [ %.1235, %.loopexit ], [ 0, %.preheader393 ] ; 17 uses
  %.0231 = phi i32 [ %.1232, %.loopexit ], [ 0, %.preheader393 ] ; 22 uses
  %.0227 = phi i32 [ %.4, %.loopexit ], [ 0, %.preheader393 ] ; 22 uses
  %.0222 = phi i32 [ %.1223, %.loopexit ], [ 0, %.preheader393 ] ; 21 uses
  %.0218 = phi i32 [ %.2220, %.loopexit ], [ 1, %.preheader393 ] ; 10 uses
  %.0212 = phi i32 [ %.2214, %.loopexit ], [ 0, %.preheader393 ] ; 19 uses
  %.0208 = phi i32 [ %.2210, %.loopexit ], [ 0, %.preheader393 ] ; 19 uses
  %.0205 = phi i32 [ %.1206, %.loopexit ], [ 0, %.preheader393 ] ; 17 uses
  %i.gq = tail call i32 @stbi__get16be(ptr noundef %i.e)
  %i.gr = shl nuw i32 %i.gq, 16                   ; 4 uses
  %i.gs = tail call i32 @stbi__get16be(ptr noundef %i.e) ; 4 uses
  %i.gt = or disjoint i32 %i.gr, %i.gs            ; 20 uses
  %i.gu = tail call i32 @stbi__get16be(ptr noundef %i.e) ; 2 uses
  %i.gv = shl nuw i32 %i.gu, 16
  %i.gw = tail call i32 @stbi__get16be(ptr noundef %i.e)
  %i.gx = or disjoint i32 %i.gv, %i.gw
  switch i32 %i.gx, label %bb.fx [
    i32 1130840649, label %bb.ax
    i32 1229472850, label %bb.bd
    i32 1347179589, label %bb.cq
    i32 1951551059, label %bb.dl
    i32 1229209940, label %bb.ei
    i32 1229278788, label %bb.ez
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.gy = icmp eq i32 %i.gt, 0
  br i1 %i.gy, label %.loopexit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gz = icmp slt i32 %i.gr, 0
  br i1 %i.gz, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ha = load ptr, ptr %i.i, align 8, !tbaa !31
  store ptr %i.ha, ptr %i.h, align 8, !tbaa !29
  br label %.loopexit

bb.ba:                                            ; preds = %bb.ay
  %i.hb = load ptr, ptr %i.k, align 8, !tbaa !25
  %.not.i302 = icmp eq ptr %i.hb, null
  br i1 %.not.i302, label %..thread_crit_edge.i, label %bb.bb

..thread_crit_edge.i:                             ; preds = %bb.ba
  %.pre.i303 = load ptr, ptr %i.h, align 8, !tbaa !29
  br label %.thread.i

bb.bb:                                            ; preds = %bb.ba
  %i.hc = load ptr, ptr %i.i, align 8, !tbaa !31  ; 2 uses
  %i.hd = load ptr, ptr %i.h, align 8, !tbaa !29  ; 2 uses
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = ptrtoint ptr %i.hd to i64
  %i.hg = sub i64 %i.he, %i.hf
  %i.hh = trunc i64 %i.hg to i32                  ; 2 uses
  %i.hi = icmp sgt i32 %i.gt, %i.hh
  br i1 %i.hi, label %bb.bc, label %.thread.i

bb.bc:                                            ; preds = %bb.bb
  store ptr %i.hc, ptr %i.h, align 8, !tbaa !29
  %i.hj = load ptr, ptr %i.gp, align 8, !tbaa !67
  %i.hk = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.hl = sub nsw i32 %i.gt, %i.hh
  tail call void %i.hj(ptr noundef %i.hk, i32 noundef %i.hl) #37, !inline_history !68
  br label %.loopexit

.thread.i:                                        ; preds = %bb.bb, %..thread_crit_edge.i
  %i.hm = phi ptr [ %.pre.i303, %..thread_crit_edge.i ], [ %i.hd, %bb.bb ]
  %i.hn = zext nneg i32 %i.gt to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hn
  store ptr %i.ho, ptr %i.h, align 8, !tbaa !29
  br label %.loopexit

bb.bd:                                            ; preds = %bb.aw
  %.not285 = icmp eq i32 %.0218, 0
  br i1 %.not285, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.hp = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.51, ptr %i.hp, align 8, !tbaa !39
  br label %.thread375

bb.bf:                                            ; preds = %bb.bd
  %.not286 = icmp eq i32 %i.gt, 13
  br i1 %.not286, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hq = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.52, ptr %i.hq, align 8, !tbaa !39
  br label %.thread375

bb.bh:                                            ; preds = %bb.bf
  %i.hr = tail call i32 @stbi__get16be(ptr noundef %i.e)
  %i.hs = shl nuw i32 %i.hr, 16
  %i.ht = tail call i32 @stbi__get16be(ptr noundef %i.e)
  %i.hu = or disjoint i32 %i.hs, %i.ht
  store i32 %i.hu, ptr %i.e, align 8, !tbaa !55
  %i.hv = tail call i32 @stbi__get16be(ptr noundef nonnull %i.e)
  %i.hw = shl nuw i32 %i.hv, 16
  %i.hx = tail call i32 @stbi__get16be(ptr noundef nonnull %i.e)
  %i.hy = or disjoint i32 %i.hw, %i.hx            ; 2 uses
  store i32 %i.hy, ptr %i.go, align 4, !tbaa !54
  %i.hz = icmp ugt i32 %i.hy, 16777216
  br i1 %i.hz, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.ia = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.28, ptr %i.ia, align 8, !tbaa !39
  br label %.thread375

bb.bj:                                            ; preds = %bb.bh
  %i.ib = load i32, ptr %i.e, align 8, !tbaa !55
  %i.ic = icmp ugt i32 %i.ib, 16777216
  br i1 %i.ic, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.id = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.28, ptr %i.id, align 8, !tbaa !39
  br label %.thread375

bb.bl:                                            ; preds = %bb.bj
  %i.ie = load ptr, ptr %i.h, align 8, !tbaa !29  ; 4 uses
  %i.if = load ptr, ptr %i.i, align 8, !tbaa !31  ; 3 uses
  %i.ig = icmp ult ptr %i.ie, %i.if
  br i1 %i.ig, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 1 ; 2 uses
  store ptr %i.ih, ptr %i.h, align 8, !tbaa !29
  %i.ii = load i8, ptr %i.ie, align 1, !tbaa !37
  br label %stbi__get8.exit

bb.bn:                                            ; preds = %bb.bl
  %i.ij = load i32, ptr %i.j, align 8, !tbaa !26
  %.not.i304 = icmp eq i32 %i.ij, 0
  br i1 %.not.i304, label %stbi__get8.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ik = load ptr, ptr %i.k, align 8, !tbaa !25
  %i.il = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.im = load i32, ptr %i.n, align 4, !tbaa !35
  %i.in = tail call i32 %i.ik(ptr noundef %i.il, ptr noundef nonnull %i.m, i32 noundef %i.im) #37, !inline_history !65 ; 2 uses
  %i.io = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.ip = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.iq = ptrtoint ptr %i.io to i64
  %i.ir = ptrtoint ptr %i.ip to i64
  %i.is = sub i64 %i.iq, %i.ir
  %i.it = trunc i64 %i.is to i32
  %i.iu = load i32, ptr %i.p, align 8, !tbaa !27
  %i.iv = add nsw i32 %i.iu, %i.it
  store i32 %i.iv, ptr %i.p, align 8, !tbaa !27
  %i.iw = icmp eq i32 %i.in, 0
  br i1 %i.iw, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  store i32 0, ptr %i.j, align 8, !tbaa !26
  store i8 0, ptr %i.m, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i

bb.bq:                                            ; preds = %bb.bo
  %i.ix = sext i32 %i.in to i64
  %i.iy = getelementptr inbounds i8, ptr %i.m, i64 %i.ix
  %.pre.i305 = load i8, ptr %i.m, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i

stbi__refill_buffer.exit.i:                       ; preds = %bb.bq, %bb.bp
  %i.iz = phi i8 [ 0, %bb.bp ], [ %.pre.i305, %bb.bq ]
  %.sink.i.i = phi ptr [ %i.q, %bb.bp ], [ %i.iy, %bb.bq ] ; 2 uses
  store ptr %.sink.i.i, ptr %i.i, align 8, !tbaa !31
  store ptr %i.q, ptr %i.h, align 8, !tbaa !29
  br label %stbi__get8.exit

stbi__get8.exit:                                  ; preds = %bb.bm, %bb.bn, %stbi__refill_buffer.exit.i
  %i.ja = phi ptr [ %i.if, %bb.bm ], [ %.sink.i.i, %stbi__refill_buffer.exit.i ], [ %i.if, %bb.bn ]
  %i.jb = phi ptr [ %i.ih, %bb.bm ], [ %i.q, %stbi__refill_buffer.exit.i ], [ %i.ie, %bb.bn ] ; 3 uses
  %.0.i = phi i8 [ %i.ii, %bb.bm ], [ %i.iz, %stbi__refill_buffer.exit.i ], [ 0, %bb.bn ] ; 3 uses
  %i.jc = zext i8 %.0.i to i32
  store i32 %i.jc, ptr %i.gn, align 8, !tbaa !141
  %i.jd = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %.0.i)
  %i.je = icmp eq i8 %i.jd, 1
  %i.jf = and i8 %.0.i, 31
  %switch = icmp ne i8 %i.jf, 0
  %or.cond301 = and i1 %i.je, %switch
  br i1 %or.cond301, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %stbi__get8.exit
  %i.jg = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.53, ptr %i.jg, align 8, !tbaa !39
  br label %.thread375

bb.bs:                                            ; preds = %stbi__get8.exit
  %i.jh = icmp ult ptr %i.jb, %i.ja
  br i1 %i.jh, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jb, i64 1
  store ptr %i.ji, ptr %i.h, align 8, !tbaa !29
  %i.jj = load i8, ptr %i.jb, align 1, !tbaa !37
  br label %stbi__get8.exit311

bb.bu:                                            ; preds = %bb.bs
  %i.jk = load i32, ptr %i.j, align 8, !tbaa !26
end_hunk_1
begin_hunk_2_@stbi__parse_png_file:bb.a
  %i.rb = icmp ugt i32 %i.gt, 1073741824
  br i1 %i.rb, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.rc = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.66, ptr %i.rc, align 8, !tbaa !39
  br label %.thread375

bb.er:                                            ; preds = %bb.ep
  %i.rd = add i32 %i.gt, %.0231                   ; 5 uses
  %i.re = icmp slt i32 %i.rd, %.0231
  br i1 %i.re, label %.thread375, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.rf = icmp ugt i32 %i.rd, %.0227
  br i1 %i.rf, label %bb.et, label %._crit_edge

._crit_edge:                                      ; preds = %bb.es
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !142
  br label %bb.ex

bb.et:                                            ; preds = %bb.es
  %i.rg = icmp eq i32 %.0227, 0
  %i.rh = tail call i32 @llvm.umax.i32(i32 %i.gt, i32 4096)
  %.1228 = select i1 %i.rg, i32 %i.rh, i32 %.0227
  br label %bb.eu

bb.eu:                                            ; preds = %bb.eu, %bb.et
  %.2229 = phi i32 [ %.1228, %bb.et ], [ %i.rj, %bb.eu ] ; 4 uses
  %i.ri = icmp ugt i32 %i.rd, %.2229
  %i.rj = shl i32 %.2229, 1
  br i1 %i.ri, label %bb.eu, label %bb.ev, !llvm.loop !513

bb.ev:                                            ; preds = %bb.eu
  %i.rk = load ptr, ptr %i.g, align 8, !tbaa !142
  %i.rl = zext i32 %.2229 to i64
  %i.rm = tail call ptr @realloc(ptr noundef %i.rk, i64 noundef %i.rl) #39 ; 3 uses
  %.not275 = icmp eq ptr %i.rm, null
  br i1 %.not275, label %.thread365, label %bb.ew

.thread365:                                       ; preds = %bb.ev
  %i.rn = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.rn, align 8, !tbaa !39
  br label %.thread375

bb.ew:                                            ; preds = %bb.ev
  store ptr %i.rm, ptr %i.g, align 8, !tbaa !142
  br label %bb.ex

bb.ex:                                            ; preds = %._crit_edge, %bb.ew
  %i.ro = phi ptr [ %i.rm, %bb.ew ], [ %.pre, %._crit_edge ]
  %.3230 = phi i32 [ %.2229, %bb.ew ], [ %.0227, %._crit_edge ] ; 2 uses
  %i.rp = zext i32 %.0231 to i64
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.rp ; 3 uses
  %i.rr = load ptr, ptr %i.k, align 8, !tbaa !25
  %.not.i336 = icmp eq ptr %i.rr, null
  br i1 %.not.i336, label %..thread_crit_edge.i338, label %bb.ey

..thread_crit_edge.i338:                          ; preds = %bb.ex
  %.pre.i340 = load ptr, ptr %i.h, align 8, !tbaa !29
  %.pre35.i = load ptr, ptr %i.i, align 8, !tbaa !31
  br label %.thread.i337

bb.ey:                                            ; preds = %bb.ex
  %i.rs = load ptr, ptr %i.i, align 8, !tbaa !31  ; 2 uses
  %i.rt = load ptr, ptr %i.h, align 8, !tbaa !29  ; 3 uses
  %i.ru = ptrtoint ptr %i.rs to i64
  %i.rv = ptrtoint ptr %i.rt to i64
  %i.rw = sub i64 %i.ru, %i.rv                    ; 2 uses
  %i.rx = trunc i64 %i.rw to i32                  ; 2 uses
  %i.ry = icmp sgt i32 %i.gt, %i.rx
  br i1 %i.ry, label %stbi__getn.exit, label %.thread.i337

.thread.i337:                                     ; preds = %bb.ey, %..thread_crit_edge.i338
  %i.rz = phi ptr [ %.pre35.i, %..thread_crit_edge.i338 ], [ %i.rs, %bb.ey ]
  %i.sa = phi ptr [ %.pre.i340, %..thread_crit_edge.i338 ], [ %i.rt, %bb.ey ] ; 2 uses
  %i.sb = zext nneg i32 %i.gt to i64              ; 3 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sa, i64 %i.sb
  %.not32.i = icmp ugt ptr %i.sc, %i.rz
  br i1 %.not32.i, label %stbi__getn.exit.thread, label %stbi__getn.exit.thread369

stbi__getn.exit.thread369:                        ; preds = %.thread.i337
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rq, ptr align 1 %i.sa, i64 %i.sb, i1 false)
  %i.sd = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 %i.sb
  store ptr %i.se, ptr %i.h, align 8, !tbaa !29
  br label %.loopexit

stbi__getn.exit:                                  ; preds = %bb.ey
  %sext.i = shl i64 %i.rw, 32
  %i.sf = ashr exact i64 %sext.i, 32              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rq, ptr align 1 %i.rt, i64 %i.sf, i1 false)
  %i.sg = load ptr, ptr %i.k, align 8, !tbaa !25
  %i.sh = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.si = getelementptr inbounds i8, ptr %i.rq, i64 %i.sf
  %i.sj = sub nsw i32 %i.gt, %i.rx                ; 2 uses
  %i.sk = tail call i32 %i.sg(ptr noundef %i.sh, ptr noundef %i.si, i32 noundef %i.sj) #37, !inline_history !84
  %.not = icmp eq i32 %i.sk, %i.sj
  %i.sl = load ptr, ptr %i.i, align 8, !tbaa !31
  store ptr %i.sl, ptr %i.h, align 8, !tbaa !29
  br i1 %.not, label %.loopexit, label %stbi__getn.exit.thread

stbi__getn.exit.thread:                           ; preds = %.thread.i337, %stbi__getn.exit
  %i.sm = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.67, ptr %i.sm, align 8, !tbaa !39
  br label %.thread375

bb.ez:                                            ; preds = %bb.aw
  %.not257 = icmp eq i32 %.0218, 0
  br i1 %.not257, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.sn = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.59, ptr %i.sn, align 8, !tbaa !39
  br label %.thread375

bb.fb:                                            ; preds = %bb.ez
  %.not258 = icmp eq i32 %1, 0
  br i1 %.not258, label %bb.fc, label %.thread375

bb.fc:                                            ; preds = %bb.fb
  %i.so = load ptr, ptr %i.g, align 8, !tbaa !142 ; 3 uses
  %i.sp = icmp eq ptr %i.so, null
  br i1 %i.sp, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.sq = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.68, ptr %i.sq, align 8, !tbaa !39
  br label %.thread375

bb.fe:                                            ; preds = %bb.fc
  %i.sr = load i32, ptr %i.e, align 8, !tbaa !55
  %i.ss = load i32, ptr %i.gn, align 8, !tbaa !141
  %i.st = mul i32 %i.ss, %i.sr
  %i.su = add i32 %i.st, 7
  %i.sv = lshr i32 %i.su, 3
  %i.sw = load i32, ptr %i.go, align 4, !tbaa !54 ; 2 uses
  %i.sx = load i32, ptr %i.gm, align 8, !tbaa !64
  %i.sy = mul i32 %i.sx, %i.sw
  %i.sz = mul i32 %i.sy, %i.sv
  %i.ta = add i32 %i.sz, %i.sw
  %.not259 = icmp eq i32 %.0205, 0                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.tb = sext i32 %i.ta to i64                   ; 2 uses
  %i.tc = tail call noalias noundef ptr @malloc(i64 noundef %i.tb) #38 ; 4 uses
  %i.td = icmp eq ptr %i.tc, null
  br i1 %i.td, label %stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.te = zext i1 %.not259 to i32
  store ptr %i.so, ptr %3, align 8, !tbaa !130
  %i.tf = sext i32 %.0231 to i64
  %i.tg = getelementptr inbounds i8, ptr %i.so, i64 %i.tf
  %i.th = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.tg, ptr %i.th, align 8, !tbaa !131
  %i.ti = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  store ptr %i.tc, ptr %i.ti, align 8, !tbaa !137
  %i.tj = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %i.tc, ptr %i.tj, align 8, !tbaa !135
  %i.tk = getelementptr inbounds i8, ptr %i.tc, i64 %i.tb
  %i.tl = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %i.tk, ptr %i.tl, align 8, !tbaa !138
  %i.tm = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 1, ptr %i.tm, align 8, !tbaa !136
  %i.tn = call range(i32 0, 2) i32 @stbi__parse_zlib(ptr noundef nonnull %3, i32 noundef %i.te)
  %.not.i341 = icmp eq i32 %i.tn, 0
  %i.to = load ptr, ptr %i.ti, align 8, !tbaa !137 ; 4 uses
  br i1 %.not.i341, label %bb.fg, label %stbi_zlib_decode_malloc_guesssize_headerflag.exit

bb.fg:                                            ; preds = %bb.ff
  tail call void @free(ptr noundef %i.to) #37
  br label %stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread

stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread: ; preds = %bb.fg, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  store ptr null, ptr %i.f, align 8, !tbaa !143
  br label %.thread375

stbi_zlib_decode_malloc_guesssize_headerflag.exit: ; preds = %bb.ff
  %i.tp = load ptr, ptr %i.tj, align 8, !tbaa !135
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  store ptr %i.to, ptr %i.f, align 8, !tbaa !143
  %i.tq = icmp eq ptr %i.to, null
  br i1 %i.tq, label %.thread375, label %bb.fh

bb.fh:                                            ; preds = %stbi_zlib_decode_malloc_guesssize_headerflag.exit
  %i.tr = ptrtoint ptr %i.tp to i64
  %i.ts = ptrtoint ptr %i.to to i64
  %i.tt = sub i64 %i.tr, %i.ts
  %i.tu = trunc i64 %i.tt to i32
  %i.tv = load ptr, ptr %i.g, align 8, !tbaa !142
  tail call void @free(ptr noundef %i.tv) #37
  store ptr null, ptr %i.g, align 8, !tbaa !142
  %i.tw = load i32, ptr %i.gm, align 8, !tbaa !64 ; 2 uses
  %i.tx = add nsw i32 %i.tw, 1                    ; 2 uses
  %i.ty = icmp eq i32 %2, %i.tx
  %i.tz = icmp ne i32 %2, 3
  %or.cond5.not262.not267 = and i1 %i.tz, %i.ty
  %i.ua = icmp eq i8 %.0237, 0                    ; 2 uses
  %or.cond7.not264 = select i1 %or.cond5.not262.not267, i1 %i.ua, i1 false
  %i.ub = icmp ne i8 %.0234, 0                    ; 3 uses
  %or.cond10 = select i1 %or.cond7.not264, i1 true, i1 %i.ub
  %spec.select1502 = select i1 %or.cond10, i32 %i.tx, i32 %i.tw ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 4 uses
  store i32 %spec.select1502, ptr %i.uc, align 4, !tbaa !140
  %i.ud = load ptr, ptr %i.f, align 8, !tbaa !143
  %i.ue = load i32, ptr %i.gn, align 8, !tbaa !141
  %i.uf = tail call i32 @stbi__create_png_image(ptr noundef nonnull %0, ptr noundef %i.ud, i32 noundef %i.tu, i32 noundef %spec.select1502, i32 noundef %i.ue, i32 noundef %.0208, i32 noundef %.0212)
  %.not268 = icmp eq i32 %i.uf, 0
  br i1 %.not268, label %.thread375, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  br i1 %i.ub, label %bb.fj, label %bb.fm

bb.fj:                                            ; preds = %bb.fi
  %i.ug = load i32, ptr %i.gn, align 8, !tbaa !141
  %i.uh = icmp eq i32 %i.ug, 16
  %i.ui = load i32, ptr %i.uc, align 4, !tbaa !140 ; 2 uses
  br i1 %i.uh, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.uj = call i32 @stbi__compute_transparency16(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i32 noundef %i.ui) ; 0 uses
  br label %bb.fm

bb.fl:                                            ; preds = %bb.fj
  %i.uk = call i32 @stbi__compute_transparency(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %i.ui) ; 0 uses
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk, %bb.fi
  br i1 %.not259, label %bb.fs, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.ul = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @stbi__de_iphone_flag_set)
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !40
  %.not270 = icmp eq i32 %i.um, 0
  br i1 %.not270, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.un = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @stbi__de_iphone_flag_local)
  %i.uo = load i32, ptr %i.un, align 4, !tbaa !40
  %.not272 = icmp eq i32 %i.uo, 0
  br i1 %.not272, label %bb.fs, label %bb.fq

bb.fp:                                            ; preds = %bb.fn
  %i.up = load i32, ptr @stbi__de_iphone_flag_global, align 4, !tbaa !40
  %.not271 = icmp eq i32 %i.up, 0
  br i1 %.not271, label %bb.fs, label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %i.uq = load i32, ptr %i.uc, align 4, !tbaa !140
  %i.ur = icmp sgt i32 %i.uq, 2
  br i1 %i.ur, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  tail call void @stbi__de_iphone(ptr noundef nonnull %0)
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq, %bb.fp, %bb.fo, %bb.fm
  br i1 %i.ua, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.us = zext nneg i8 %.0237 to i32              ; 2 uses
  store i32 %i.us, ptr %i.gm, align 8, !tbaa !64
  %i.ut = icmp sgt i32 %2, 2
  %spec.select = select i1 %i.ut, i32 %2, i32 %i.us ; 2 uses
  store i32 %spec.select, ptr %i.uc, align 4, !tbaa !140
  %i.uu = call i32 @stbi__expand_png_palette(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 poison, i32 noundef %spec.select)
  %.not273 = icmp eq i32 %i.uu, 0
  br i1 %.not273, label %.thread375, label %bb.fw

bb.fu:                                            ; preds = %bb.fs
  br i1 %i.ub, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.uv = load i32, ptr %i.gm, align 8, !tbaa !64
  %i.uw = add nsw i32 %i.uv, 1
  store i32 %i.uw, ptr %i.gm, align 8, !tbaa !64
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fu, %bb.fv, %bb.ft
  %i.ux = load ptr, ptr %i.f, align 8, !tbaa !143
  tail call void @free(ptr noundef %i.ux) #37
  store ptr null, ptr %i.f, align 8, !tbaa !143
  %i.uy = tail call i32 @stbi__get16be(ptr noundef nonnull %i.e) ; 0 uses
  %i.uz = tail call i32 @stbi__get16be(ptr noundef nonnull %i.e) ; 0 uses
  br label %.thread375

bb.fx:                                            ; preds = %bb.aw
  %.not300 = icmp eq i32 %.0218, 0
  br i1 %.not300, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.va = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.59, ptr %i.va, align 8, !tbaa !39
  br label %.thread375

bb.fz:                                            ; preds = %bb.fx
  %i.vb = and i32 %i.gu, 8192
  %i.vc = icmp eq i32 %i.vb, 0
  br i1 %i.vc, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  %i.vd = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr %i.d, ptr %i.vd, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  br label %.thread375

bb.gb:                                            ; preds = %bb.fz
  %i.ve = icmp eq i32 %i.gt, 0
  br i1 %i.ve, label %.loopexit, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.vf = icmp slt i32 %i.gr, 0
  br i1 %i.vf, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %i.vg = load ptr, ptr %i.i, align 8, !tbaa !31
  store ptr %i.vg, ptr %i.h, align 8, !tbaa !29
  br label %.loopexit

bb.ge:                                            ; preds = %bb.gc
  %i.vh = load ptr, ptr %i.k, align 8, !tbaa !25
  %.not.i344 = icmp eq ptr %i.vh, null
  br i1 %.not.i344, label %..thread_crit_edge.i346, label %bb.gf

..thread_crit_edge.i346:                          ; preds = %bb.ge
  %.pre.i348 = load ptr, ptr %i.h, align 8, !tbaa !29
  br label %.thread.i345

bb.gf:                                            ; preds = %bb.ge
  %i.vi = load ptr, ptr %i.i, align 8, !tbaa !31  ; 2 uses
  %i.vj = load ptr, ptr %i.h, align 8, !tbaa !29  ; 2 uses
  %i.vk = ptrtoint ptr %i.vi to i64
  %i.vl = ptrtoint ptr %i.vj to i64
  %i.vm = sub i64 %i.vk, %i.vl
  %i.vn = trunc i64 %i.vm to i32                  ; 2 uses
  %i.vo = icmp sgt i32 %i.gt, %i.vn
  br i1 %i.vo, label %bb.gg, label %.thread.i345

bb.gg:                                            ; preds = %bb.gf
  store ptr %i.vi, ptr %i.h, align 8, !tbaa !29
  %i.vp = load ptr, ptr %i.gp, align 8, !tbaa !67
  %i.vq = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.vr = sub nsw i32 %i.gt, %i.vn
  tail call void %i.vp(ptr noundef %i.vq, i32 noundef %i.vr) #37, !inline_history !68
  br label %.loopexit

.thread.i345:                                     ; preds = %bb.gf, %..thread_crit_edge.i346
  %i.vs = phi ptr [ %.pre.i348, %..thread_crit_edge.i346 ], [ %i.vj, %bb.gf ]
  %i.vt = zext nneg i32 %i.gt to i64
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vs, i64 %i.vt
  store ptr %i.vu, ptr %i.h, align 8, !tbaa !29
  br label %.loopexit

.loopexit:                                        ; preds = %stbi__get8.exit335, %.lr.ph755, %.lr.ph757, %stbi__get8.exit329, %.preheader391, %.preheader389, %.preheader387, %.preheader, %stbi__getn.exit, %bb.ax, %bb.az, %bb.bc, %.thread.i, %bb.cm, %bb.co, %stbi__getn.exit.thread369, %bb.gb, %bb.gd, %bb.gg, %.thread.i345
  %.3240 = phi i8 [ %.0237, %stbi__getn.exit.thread369 ], [ %.0237, %stbi__getn.exit ], [ %.0237, %.thread.i ], [ %.0237, %.thread.i345 ], [ 0, %.preheader387 ], [ 0, %.preheader389 ], [ %.0237, %.preheader ], [ %.0237, %bb.ax ], [ %.0237, %bb.az ], [ %.0237, %bb.bc ], [ %.1238, %bb.co ], [ 0, %bb.cm ], [ %.0237, %bb.gb ], [ %.0237, %bb.gd ], [ %.0237, %bb.gg ], [ 4, %.preheader391 ], [ 0, %.lr.ph755 ], [ %.0237, %stbi__get8.exit329 ], [ 0, %.lr.ph757 ], [ 4, %stbi__get8.exit335 ]
  %.1235 = phi i8 [ %.0234, %stbi__getn.exit.thread369 ], [ %.0234, %stbi__getn.exit ], [ %.0234, %.thread.i ], [ %.0234, %.thread.i345 ], [ 1, %.preheader387 ], [ 1, %.preheader389 ], [ %.0234, %.preheader ], [ %.0234, %bb.ax ], [ %.0234, %bb.az ], [ %.0234, %bb.bc ], [ %.0234, %bb.co ], [ %.0234, %bb.cm ], [ %.0234, %bb.gb ], [ %.0234, %bb.gd ], [ %.0234, %bb.gg ], [ %.0234, %.preheader391 ], [ 1, %.lr.ph755 ], [ %.0234, %stbi__get8.exit329 ], [ 1, %.lr.ph757 ], [ %.0234, %stbi__get8.exit335 ]
  %.1232 = phi i32 [ %i.rd, %stbi__getn.exit.thread369 ], [ %i.rd, %stbi__getn.exit ], [ %.0231, %.thread.i ], [ %.0231, %.thread.i345 ], [ %.0231, %.preheader387 ], [ %.0231, %.preheader389 ], [ %.0231, %.preheader ], [ %.0231, %bb.ax ], [ %.0231, %bb.az ], [ %.0231, %bb.bc ], [ %.0231, %bb.co ], [ %.0231, %bb.cm ], [ %.0231, %bb.gb ], [ %.0231, %bb.gd ], [ %.0231, %bb.gg ], [ %.0231, %.preheader391 ], [ %.0231, %.lr.ph755 ], [ %.0231, %stbi__get8.exit329 ], [ %.0231, %.lr.ph757 ], [ %.0231, %stbi__get8.exit335 ]
  %.4 = phi i32 [ %.3230, %stbi__getn.exit.thread369 ], [ %.3230, %stbi__getn.exit ], [ %.0227, %.thread.i ], [ %.0227, %.thread.i345 ], [ %.0227, %.preheader387 ], [ %.0227, %.preheader389 ], [ %.0227, %.preheader ], [ %.0227, %bb.ax ], [ %.0227, %bb.az ], [ %.0227, %bb.bc ], [ %.0227, %bb.co ], [ %.0227, %bb.cm ], [ %.0227, %bb.gb ], [ %.0227, %bb.gd ], [ %.0227, %bb.gg ], [ %.0227, %.preheader391 ], [ %.0227, %.lr.ph755 ], [ %.0227, %stbi__get8.exit329 ], [ %.0227, %.lr.ph757 ], [ %.0227, %stbi__get8.exit335 ]
  %.1223 = phi i32 [ %.0222, %stbi__getn.exit.thread369 ], [ %.0222, %stbi__getn.exit ], [ %.0222, %.thread.i ], [ %.0222, %.thread.i345 ], [ %.0222, %.preheader387 ], [ %.0222, %.preheader389 ], [ %.zext, %.preheader ], [ %.0222, %bb.ax ], [ %.0222, %bb.az ], [ %.0222, %bb.bc ], [ %.0222, %bb.co ], [ %.0222, %bb.cm ], [ %.0222, %bb.gb ], [ %.0222, %bb.gd ], [ %.0222, %bb.gg ], [ %.0222, %.preheader391 ], [ %.0222, %.lr.ph755 ], [ %.zext, %stbi__get8.exit329 ], [ %.0222, %.lr.ph757 ], [ %.0222, %stbi__get8.exit335 ]
  %.2220 = phi i32 [ 0, %stbi__getn.exit.thread369 ], [ 0, %stbi__getn.exit ], [ %.0218, %.thread.i ], [ 0, %.thread.i345 ], [ 0, %.preheader387 ], [ 0, %.preheader389 ], [ 0, %.preheader ], [ %.0218, %bb.ax ], [ %.0218, %bb.az ], [ %.0218, %bb.bc ], [ 0, %bb.co ], [ 0, %bb.cm ], [ 0, %bb.gb ], [ 0, %bb.gd ], [ 0, %bb.gg ], [ 0, %.preheader391 ], [ 0, %.lr.ph755 ], [ 0, %stbi__get8.exit329 ], [ 0, %.lr.ph757 ], [ 0, %stbi__get8.exit335 ]
  %.2214 = phi i32 [ %.0212, %stbi__getn.exit.thread369 ], [ %.0212, %stbi__getn.exit ], [ %.0212, %.thread.i ], [ %.0212, %.thread.i345 ], [ %.0212, %.preheader387 ], [ %.0212, %.preheader389 ], [ %.0212, %.preheader ], [ %.0212, %bb.ax ], [ %.0212, %bb.az ], [ %.0212, %bb.bc ], [ %i.kq, %bb.co ], [ %i.kq, %bb.cm ], [ %.0212, %bb.gb ], [ %.0212, %bb.gd ], [ %.0212, %bb.gg ], [ %.0212, %.preheader391 ], [ %.0212, %.lr.ph755 ], [ %.0212, %stbi__get8.exit329 ], [ %.0212, %.lr.ph757 ], [ %.0212, %stbi__get8.exit335 ]
  %.2210 = phi i32 [ %.0208, %stbi__getn.exit.thread369 ], [ %.0208, %stbi__getn.exit ], [ %.0208, %.thread.i ], [ %.0208, %.thread.i345 ], [ %.0208, %.preheader387 ], [ %.0208, %.preheader389 ], [ %.0208, %.preheader ], [ %.0208, %bb.ax ], [ %.0208, %bb.az ], [ %.0208, %bb.bc ], [ %i.kk, %bb.co ], [ %i.kk, %bb.cm ], [ %.0208, %bb.gb ], [ %.0208, %bb.gd ], [ %.0208, %bb.gg ], [ %.0208, %.preheader391 ], [ %.0208, %.lr.ph755 ], [ %.0208, %stbi__get8.exit329 ], [ %.0208, %.lr.ph757 ], [ %.0208, %stbi__get8.exit335 ]
  %.1206 = phi i32 [ %.0205, %stbi__getn.exit.thread369 ], [ %.0205, %stbi__getn.exit ], [ 1, %.thread.i ], [ %.0205, %.thread.i345 ], [ %.0205, %.preheader387 ], [ %.0205, %.preheader389 ], [ %.0205, %.preheader ], [ 1, %bb.ax ], [ 1, %bb.az ], [ 1, %bb.bc ], [ %.0205, %bb.co ], [ %.0205, %bb.cm ], [ %.0205, %bb.gb ], [ %.0205, %bb.gd ], [ %.0205, %bb.gg ], [ %.0205, %.preheader391 ], [ %.0205, %.lr.ph755 ], [ %.0205, %stbi__get8.exit329 ], [ %.0205, %.lr.ph757 ], [ %.0205, %stbi__get8.exit335 ]
  %i.vv = tail call i32 @stbi__get16be(ptr noundef %i.e) ; 0 uses
  %i.vw = tail call i32 @stbi__get16be(ptr noundef %i.e) ; 0 uses
  br label %bb.aw

.thread375:                                       ; preds = %bb.er, %bb.cc, %bb.ck, %bb.cn, %bb.be, %bb.cp, %bb.ch, %bb.cf, %bb.cd, %bb.cb, %bb.by, %bb.br, %bb.bk, %bb.bi, %bb.bg, %bb.fa, %bb.fd, %bb.fw, %bb.fb, %stbi_zlib_decode_malloc_guesssize_headerflag.exit, %bb.fh, %bb.ft, %stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread, %bb.eo, %bb.el, %.thread365, %stbi__getn.exit.thread, %bb.en, %bb.eq, %bb.ej, %bb.ec, %bb.eg, %bb.ee, %bb.dv, %bb.dt, %bb.dr, %bb.do, %bb.dm, %bb.cv, %bb.ct, %bb.cr, %bb.ga, %bb.fy, %stbi__check_png_header.exit.thread, %stbi__check_png_header.exit
  %.7 = phi i32 [ 0, %stbi__check_png_header.exit.thread ], [ 1, %stbi__check_png_header.exit ], [ 0, %stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread ], [ 0, %bb.ft ], [ 0, %bb.fh ], [ 1, %bb.fw ], [ 1, %bb.fb ], [ 0, %bb.fd ], [ 0, %stbi_zlib_decode_malloc_guesssize_headerflag.exit ], [ 0, %bb.fa ], [ 1, %bb.eo ], [ 0, %bb.el ], [ 0, %.thread365 ], [ 0, %stbi__getn.exit.thread ], [ 1, %bb.en ], [ 0, %bb.eq ], [ 0, %bb.cc ], [ 0, %bb.ej ], [ 0, %bb.ec ], [ 1, %bb.eg ], [ 0, %bb.ee ], [ 0, %bb.dv ], [ 0, %bb.dt ], [ 1, %bb.dr ], [ 0, %bb.do ], [ 0, %bb.dm ], [ 0, %bb.cv ], [ 0, %bb.ct ], [ 0, %bb.cr ], [ 0, %bb.fy ], [ 0, %bb.ga ], [ 0, %bb.bg ], [ 0, %bb.bi ], [ 0, %bb.bk ], [ 0, %bb.br ], [ 0, %bb.by ], [ 0, %bb.cb ], [ 0, %bb.cd ], [ 0, %bb.cf ], [ 0, %bb.ch ], [ 0, %bb.cp ], [ 0, %bb.be ], [ 0, %bb.cn ], [ 0, %bb.ck ], [ 0, %bb.er ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret i32 %.7
}

; Function Attrs: nounwind uwtable
define ptr @stbi__do_png(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #2 {
bb.a:
  %or.cond = icmp ugt i32 %4, 4
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.37, ptr %i.a, align 8, !tbaa !39
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i32 @stbi__parse_png_file(ptr noundef %0, i32 noundef 0, i32 noundef %4)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !141  ; 2 uses
  %i.e = icmp slt i32 %i.d, 9                     ; 2 uses
  br i1 %i.e, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = icmp eq i32 %i.d, 16
  br i1 %i.f, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.69, ptr %i.g, align 8, !tbaa !39
  br label %bb.p

bb.g:                                             ; preds = %bb.e, %bb.d
  %storemerge = phi i32 [ 8, %bb.d ], [ 16, %bb.e ]
  store i32 %storemerge, ptr %5, align 4, !tbaa !42
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !139  ; 4 uses
  store ptr null, ptr %i.h, align 8, !tbaa !139
  %.not48 = icmp eq i32 %4, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !44    ; 5 uses
  br i1 %.not48, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !140  ; 3 uses
  %.not49 = icmp eq i32 %4, %i.k
  br i1 %.not49, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = load i32, ptr %.pre, align 8, !tbaa !55  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !54   ; 2 uses
  br i1 %i.e, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.o = tail call ptr @stbi__convert_format(ptr noundef %i.i, i32 noundef %i.k, i32 noundef %4, i32 noundef %i.l, i32 noundef %i.n)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.p = tail call ptr @stbi__convert_format16(ptr noundef %i.i, i32 noundef %i.k, i32 noundef %4, i32 noundef %i.l, i32 noundef %i.n)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0 = phi ptr [ %i.o, %bb.j ], [ %i.p, %bb.k ]  ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !44     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 %4, ptr %i.r, align 4, !tbaa !140
  %i.s = icmp eq ptr %.0, null
  br i1 %i.s, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.h, %bb.g
  %i.t = phi ptr [ %i.q, %bb.l ], [ %.pre, %bb.h ], [ %.pre, %bb.g ] ; 3 uses
  %.1 = phi ptr [ %.0, %bb.l ], [ %i.i, %bb.h ], [ %i.i, %bb.g ] ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !55
  store i32 %i.u, ptr %1, align 4, !tbaa !40
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !54
  store i32 %i.w, ptr %2, align 4, !tbaa !40
  %.not50 = icmp eq ptr %3, null
  br i1 %.not50, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !64
  store i32 %i.y, ptr %3, align 4, !tbaa !40
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.c
  %.2 = phi ptr [ %.1, %bb.n ], [ %.1, %bb.m ], [ null, %bb.c ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !139
  tail call void @free(ptr noundef %i.aa) #37
  store ptr null, ptr %i.z, align 8, !tbaa !139
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !143
  tail call void @free(ptr noundef %i.ac) #37
end_hunk_2
