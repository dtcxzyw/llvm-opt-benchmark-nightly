Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_image?download=true
inline.NumInlined: 718
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 84
begin_hunk_0_@stbi__tga_load:bb.a
stbi__getn.exit.us.us:                            ; preds = %..thread_crit_edge.i262.us.us, %bb.at
  %i.is = phi ptr [ %i.il, %bb.at ], [ %i.ik, %..thread_crit_edge.i262.us.us ] ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.if ; 3 uses
  %.not32.i.us.us.1 = icmp ugt ptr %i.it, %.pre35.i.us
  br i1 %.not32.i.us.us.1, label %stbi__getn.exit.us.us.1, label %bb.au

bb.au:                                            ; preds = %stbi__getn.exit.us.us
  %i.iu = trunc i64 %indvars.iv358 to i32
  %i.iv = xor i32 %i.iu, -2
  %i.iw = add i32 %i.ee, %i.iv
  %i.ix = mul i32 %i.ic, %i.iw
  %i.iy = sext i32 %i.ix to i64
  %i.iz = getelementptr inbounds i8, ptr %i.hl, i64 %i.iy
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.iz, ptr align 1 %i.is, i64 %i.if, i1 false)
  store ptr %i.it, ptr %i.b, align 8, !tbaa !29
  br label %stbi__getn.exit.us.us.1

stbi__getn.exit.us.us.1:                          ; preds = %bb.au, %stbi__getn.exit.us.us
  %i.ja = phi ptr [ %i.it, %bb.au ], [ %i.is, %stbi__getn.exit.us.us ] ; 2 uses
  %indvars.iv.next359.1 = add nuw nsw i64 %indvars.iv358, 2 ; 2 uses
  %niter493.next.1 = add i64 %niter493, 2         ; 2 uses
  %niter493.ncmp.1 = icmp eq i64 %niter493.next.1, %unroll_iter492
  br i1 %niter493.ncmp.1, label %.loopexit325.loopexit.unr-lcssa, label %..thread_crit_edge.i262.us.us, !llvm.loop !212

..thread_crit_edge.i262.us:                       ; preds = %stbi__getn.exit.us.1, %..thread_crit_edge.i262.us.preheader.new
  %indvars.iv = phi i64 [ 0, %..thread_crit_edge.i262.us.preheader.new ], [ %indvars.iv.next.1, %stbi__getn.exit.us.1 ] ; 3 uses
  %i.jb = phi ptr [ %.promoted, %..thread_crit_edge.i262.us.preheader.new ], [ %i.jo, %stbi__getn.exit.us.1 ] ; 3 uses
  %niter = phi i64 [ 0, %..thread_crit_edge.i262.us.preheader.new ], [ %niter.next.1, %stbi__getn.exit.us.1 ]
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.if ; 3 uses
  %.not32.i.us = icmp ugt ptr %i.jc, %.pre35.i.us
  br i1 %.not32.i.us, label %stbi__getn.exit.us, label %bb.av

bb.av:                                            ; preds = %..thread_crit_edge.i262.us
  %i.jd = trunc nuw nsw i64 %indvars.iv to i32
  %i.je = mul i32 %i.ic, %i.jd
  %i.jf = sext i32 %i.je to i64
  %i.jg = getelementptr inbounds i8, ptr %i.hl, i64 %i.jf
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jg, ptr align 1 %i.jb, i64 %i.if, i1 false)
  store ptr %i.jc, ptr %i.b, align 8, !tbaa !29
  br label %stbi__getn.exit.us

stbi__getn.exit.us:                               ; preds = %bb.av, %..thread_crit_edge.i262.us
  %i.jh = phi ptr [ %i.jc, %bb.av ], [ %i.jb, %..thread_crit_edge.i262.us ] ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.if ; 3 uses
  %.not32.i.us.1 = icmp ugt ptr %i.ji, %.pre35.i.us
  br i1 %.not32.i.us.1, label %stbi__getn.exit.us.1, label %bb.aw

bb.aw:                                            ; preds = %stbi__getn.exit.us
  %i.jj = trunc i64 %indvars.iv to i32
  %i.jk = or disjoint i32 %i.jj, 1
  %i.jl = mul i32 %i.ic, %i.jk
  %i.jm = sext i32 %i.jl to i64
  %i.jn = getelementptr inbounds i8, ptr %i.hl, i64 %i.jm
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jn, ptr align 1 %i.jh, i64 %i.if, i1 false)
  store ptr %i.ji, ptr %i.b, align 8, !tbaa !29
  br label %stbi__getn.exit.us.1

stbi__getn.exit.us.1:                             ; preds = %bb.aw, %stbi__getn.exit.us
  %i.jo = phi ptr [ %i.ji, %bb.aw ], [ %i.jh, %stbi__getn.exit.us ] ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit325.loopexit484.unr-lcssa, label %..thread_crit_edge.i262.us, !llvm.loop !212

.lr.ph.split:                                     ; preds = %.lr.ph, %stbi__getn.exit
  %.0187326 = phi i32 [ %i.km, %stbi__getn.exit ], [ 0, %.lr.ph ] ; 3 uses
  %i.jp = xor i32 %.0187326, -1
  %i.jq = add nsw i32 %i.ee, %i.jp
  %i.jr = select i1 %.not207.not, i32 %i.jq, i32 %.0187326
  %i.js = mul i32 %i.ic, %i.jr
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds i8, ptr %i.hl, i64 %i.jt ; 3 uses
  %i.jv = load ptr, ptr %i.id, align 8, !tbaa !25 ; 2 uses
  %.not.i260 = icmp eq ptr %i.jv, null
  br i1 %.not.i260, label %..thread_crit_edge.i262, label %bb.ax

..thread_crit_edge.i262:                          ; preds = %.lr.ph.split
  %.pre.i264 = load ptr, ptr %i.b, align 8, !tbaa !29
  %.pre35.i = load ptr, ptr %i.d, align 8, !tbaa !31
  br label %.thread.i261

bb.ax:                                            ; preds = %.lr.ph.split
  %i.jw = load ptr, ptr %i.d, align 8, !tbaa !31  ; 2 uses
  %i.jx = load ptr, ptr %i.b, align 8, !tbaa !29  ; 3 uses
  %i.jy = ptrtoint ptr %i.jw to i64
  %i.jz = ptrtoint ptr %i.jx to i64
  %i.ka = sub i64 %i.jy, %i.jz                    ; 2 uses
  %i.kb = trunc i64 %i.ka to i32                  ; 2 uses
  %i.kc = icmp sgt i32 %i.ic, %i.kb
  br i1 %i.kc, label %bb.ay, label %.thread.i261

bb.ay:                                            ; preds = %bb.ax
  %sext.i = shl i64 %i.ka, 32
  %i.kd = ashr exact i64 %sext.i, 32              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ju, ptr align 1 %i.jx, i64 %i.kd, i1 false)
  %i.ke = load ptr, ptr %i.ie, align 8, !tbaa !34
  %i.kf = getelementptr inbounds i8, ptr %i.ju, i64 %i.kd
  %i.kg = sub nsw i32 %i.ic, %i.kb
  %i.kh = tail call i32 %i.jv(ptr noundef %i.ke, ptr noundef nonnull %i.kf, i32 noundef %i.kg) #37, !inline_history !84 ; 0 uses
  %i.ki = load ptr, ptr %i.d, align 8, !tbaa !31
  br label %stbi__getn.exit.sink.split

.thread.i261:                                     ; preds = %bb.ax, %..thread_crit_edge.i262
  %i.kj = phi ptr [ %.pre35.i, %..thread_crit_edge.i262 ], [ %i.jw, %bb.ax ]
  %i.kk = phi ptr [ %.pre.i264, %..thread_crit_edge.i262 ], [ %i.jx, %bb.ax ] ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.if ; 2 uses
  %.not32.i = icmp ugt ptr %i.kl, %i.kj
  br i1 %.not32.i, label %stbi__getn.exit, label %bb.az

bb.az:                                            ; preds = %.thread.i261
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ju, ptr align 1 %i.kk, i64 %i.if, i1 false)
  br label %stbi__getn.exit.sink.split

stbi__getn.exit.sink.split:                       ; preds = %bb.az, %bb.ay
  %.sink = phi ptr [ %i.ki, %bb.ay ], [ %i.kl, %bb.az ]
  store ptr %.sink, ptr %i.b, align 8, !tbaa !29
  br label %stbi__getn.exit

stbi__getn.exit:                                  ; preds = %stbi__getn.exit.sink.split, %.thread.i261
  %i.km = add nuw nsw i32 %.0187326, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.km, %i.ee
  br i1 %exitcond.not, label %.loopexit325, label %.lr.ph.split, !llvm.loop !213

bb.ba:                                            ; preds = %stbi__skip.exit
  br i1 %i.gt, label %bb.bb, label %.loopexit323

bb.bb:                                            ; preds = %bb.ba
  %i.kn = icmp eq i32 %i.cv, 0
  br i1 %i.kn, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  tail call void @free(ptr noundef nonnull %i.hl) #37
  %i.ko = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.81, ptr %i.ko, align 8, !tbaa !39
  br label %bb.cp

bb.bd:                                            ; preds = %bb.bb
  %i.kp = icmp eq i32 %i.cu, 0
  br i1 %i.kp, label %stbi__skip.exit270, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !25
  %.not.i265 = icmp eq ptr %i.kr, null
  br i1 %.not.i265, label %..thread_crit_edge.i267, label %bb.bf

..thread_crit_edge.i267:                          ; preds = %bb.be
  %.pre.i269 = load ptr, ptr %i.b, align 8, !tbaa !29
  br label %.thread.i266

bb.bf:                                            ; preds = %bb.be
  %i.ks = load ptr, ptr %i.d, align 8, !tbaa !31  ; 2 uses
  %i.kt = load ptr, ptr %i.b, align 8, !tbaa !29  ; 2 uses
  %i.ku = ptrtoint ptr %i.ks to i64
  %i.kv = ptrtoint ptr %i.kt to i64
  %i.kw = sub i64 %i.ku, %i.kv
  %i.kx = trunc i64 %i.kw to i32                  ; 2 uses
  %i.ky = icmp sgt i32 %i.cu, %i.kx
  br i1 %i.ky, label %bb.bg, label %.thread.i266

bb.bg:                                            ; preds = %bb.bf
  store ptr %i.ks, ptr %i.b, align 8, !tbaa !29
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !67
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !34
  %i.ld = sub nsw i32 %i.cu, %i.kx
  tail call void %i.la(ptr noundef %i.lc, i32 noundef %i.ld) #37, !inline_history !68
  br label %stbi__skip.exit270

.thread.i266:                                     ; preds = %bb.bf, %..thread_crit_edge.i267
  %i.le = phi ptr [ %.pre.i269, %..thread_crit_edge.i267 ], [ %i.kt, %bb.bf ]
  %i.lf = zext nneg i32 %i.cu to i64
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.lf
  store ptr %i.lg, ptr %i.b, align 8, !tbaa !29
  br label %stbi__skip.exit270

stbi__skip.exit270:                               ; preds = %bb.bd, %bb.bg, %.thread.i266
  %i.lh = mul nuw nsw i32 %i.cv, %.0193.ph        ; 2 uses
  %i.li = zext nneg i32 %i.lh to i64
  %i.lj = tail call noalias noundef ptr @malloc(i64 noundef %i.li) #38 ; 6 uses
  %.not208 = icmp eq ptr %i.lj, null
  br i1 %.not208, label %stbi__malloc_mad2.exit.thread, label %bb.bh

stbi__malloc_mad2.exit.thread:                    ; preds = %stbi__skip.exit270
  tail call void @free(ptr noundef nonnull %i.hl) #37
  %i.lk = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.lk, align 8, !tbaa !39
  br label %bb.cp

bb.bh:                                            ; preds = %stbi__skip.exit270
  br i1 %.not209, label %bb.bj, label %.preheader322

.preheader322:                                    ; preds = %bb.bh
  %i.ll = zext nneg i8 %.0193.ph.shrunk to i64
  br label %bb.bi

bb.bi:                                            ; preds = %.preheader322, %bb.bi
  %.0177328 = phi ptr [ %i.lj, %.preheader322 ], [ %i.lz, %bb.bi ] ; 4 uses
  %.1188327 = phi i32 [ 0, %.preheader322 ], [ %i.ma, %bb.bi ]
  %i.lm = tail call i32 @stbi__get16le(ptr noundef nonnull %0) ; 3 uses
  %6 = lshr i32 %i.lm, 10
  %7 = lshr i32 %i.lm, 5
  %8 = trunc nuw nsw i32 %6 to i16
  %i.ln = and i16 %8, 31
  %.lhs.trunc.i = mul nuw nsw i16 %i.ln, 255
  %i.lo = udiv i16 %.lhs.trunc.i, 31
  %i.lp = trunc nuw i16 %i.lo to i8
  store i8 %i.lp, ptr %.0177328, align 1, !tbaa !37
  %9 = getelementptr inbounds nuw i8, ptr %.0177328, i64 1
  %10 = trunc nuw nsw i32 %7 to i16
  %i.lq = insertelement <2 x i16> poison, i16 %10, i64 0
  %11 = trunc nuw i32 %i.lm to i16
  %i.lr = insertelement <2 x i16> %i.lq, i16 %11, i64 1
  %i.ls = and <2 x i16> %i.lr, splat (i16 31)
  %i.lt = mul nuw nsw <2 x i16> %i.ls, splat (i16 255)
  %i.lu = udiv <2 x i16> %i.lt, splat (i16 31)
  %i.lv = trunc <2 x i16> %i.lu to <2 x i8>       ; 2 uses
  %i.lw = extractelement <2 x i8> %i.lv, i64 0
  store i8 %i.lw, ptr %9, align 1, !tbaa !37
  %i.lx = getelementptr inbounds nuw i8, ptr %.0177328, i64 2
  %i.ly = extractelement <2 x i8> %i.lv, i64 1
  store i8 %i.ly, ptr %i.lx, align 1, !tbaa !37
  %i.lz = getelementptr inbounds nuw i8, ptr %.0177328, i64 %i.ll
  %i.ma = add nuw nsw i32 %.1188327, 1            ; 2 uses
  %exitcond363.not = icmp eq i32 %i.ma, %i.cv
  br i1 %exitcond363.not, label %.loopexit323, label %bb.bi, !llvm.loop !214

bb.bj:                                            ; preds = %bb.bh
  %i.mb = tail call i32 @stbi__getn(ptr noundef nonnull %0, ptr noundef nonnull %i.lj, i32 noundef %i.lh)
  %.not210 = icmp eq i32 %i.mb, 0
  br i1 %.not210, label %bb.bk, label %.loopexit323

bb.bk:                                            ; preds = %bb.bj
  tail call void @free(ptr noundef nonnull %i.hl) #37
  tail call void @free(ptr noundef nonnull %i.lj) #37
  %i.mc = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.81, ptr %i.mc, align 8, !tbaa !39
  br label %bb.cp

.loopexit323:                                     ; preds = %bb.bi, %bb.bj, %bb.ba
  %.0191 = phi ptr [ null, %bb.ba ], [ %i.lj, %bb.bj ], [ %i.lj, %bb.bi ] ; 3 uses
  %.not350 = icmp eq i32 %i.hi, 0
  br i1 %.not350, label %._crit_edge, label %.lr.ph336

.lr.ph336:                                        ; preds = %.loopexit323
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 12 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 7 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.mm = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.mn = icmp eq i8 %.0.i243, 8
  %i.mo = zext nneg i8 %.0193.ph.shrunk to i64    ; 3 uses
  %wide.trip.count381 = zext nneg i32 %i.hi to i64
  %wide.trip.count368 = zext nneg i8 %.0193.ph.shrunk to i64
  br label %bb.bl

bb.bl:                                            ; preds = %.lr.ph336, %.loopexit319
  %indvars.iv379 = phi i64 [ 0, %.lr.ph336 ], [ %indvars.iv.next380, %.loopexit319 ] ; 2 uses
  %.not216.not = phi i1 [ true, %.lr.ph336 ], [ false, %.loopexit319 ]
  %.0180334 = phi i32 [ 0, %.lr.ph336 ], [ %.1181316, %.loopexit319 ] ; 2 uses
  %.0182333 = phi i32 [ 0, %.lr.ph336 ], [ %i.qf, %.loopexit319 ] ; 4 uses
  %i.mp = trunc nuw nsw i64 %indvars.iv379 to i32
  %i.mq = mul i32 %.0193.ph, %i.mp
  %i.mr = zext i32 %i.mq to i64
  %scevgep374 = getelementptr i8, ptr %i.hl, i64 %i.mr
  br i1 %i.gq, label %bb.bm, label %.thread

bb.bm:                                            ; preds = %bb.bl
  %i.ms = icmp eq i32 %.0182333, 0
  br i1 %i.ms, label %bb.bn, label %bb.bt

bb.bn:                                            ; preds = %bb.bm
  %i.mt = load ptr, ptr %i.b, align 8, !tbaa !29  ; 3 uses
  %i.mu = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.mv = icmp ult ptr %i.mt, %i.mu
  br i1 %i.mv, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mt, i64 1
  store ptr %i.mw, ptr %i.b, align 8, !tbaa !29
  %i.mx = load i8, ptr %i.mt, align 1, !tbaa !37
  br label %stbi__get8.exit278

bb.bp:                                            ; preds = %bb.bn
  %i.my = load i32, ptr %i.md, align 8, !tbaa !26
  %.not.i273 = icmp eq i32 %i.my, 0
  br i1 %.not.i273, label %stbi__get8.exit278, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.mz = load ptr, ptr %i.me, align 8, !tbaa !25
  %i.na = load ptr, ptr %i.mf, align 8, !tbaa !34
  %i.nb = load i32, ptr %i.mh, align 4, !tbaa !35
  %i.nc = tail call i32 %i.mz(ptr noundef %i.na, ptr noundef nonnull %i.mg, i32 noundef %i.nb) #37, !inline_history !65 ; 2 uses
  %i.nd = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.ne = load ptr, ptr %i.mi, align 8, !tbaa !28
  %i.nf = ptrtoint ptr %i.nd to i64
  %i.ng = ptrtoint ptr %i.ne to i64
  %i.nh = sub i64 %i.nf, %i.ng
  %i.ni = trunc i64 %i.nh to i32
  %i.nj = load i32, ptr %i.mj, align 8, !tbaa !27
  %i.nk = add nsw i32 %i.nj, %i.ni
  store i32 %i.nk, ptr %i.mj, align 8, !tbaa !27
  %i.nl = icmp eq i32 %i.nc, 0
  br i1 %i.nl, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store i32 0, ptr %i.md, align 8, !tbaa !26
  store i8 0, ptr %i.mg, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i275

bb.bs:                                            ; preds = %bb.bq
  %i.nm = sext i32 %i.nc to i64
  %i.nn = getelementptr inbounds i8, ptr %i.mg, i64 %i.nm
  %.pre.i274 = load i8, ptr %i.mg, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i275

stbi__refill_buffer.exit.i275:                    ; preds = %bb.bs, %bb.br
  %i.no = phi i8 [ 0, %bb.br ], [ %.pre.i274, %bb.bs ]
  %.sink.i.i276 = phi ptr [ %i.mk, %bb.br ], [ %i.nn, %bb.bs ]
  store ptr %.sink.i.i276, ptr %i.d, align 8, !tbaa !31
  store ptr %i.mk, ptr %i.b, align 8, !tbaa !29
  br label %stbi__get8.exit278

stbi__get8.exit278:                               ; preds = %bb.bo, %bb.bp, %stbi__refill_buffer.exit.i275
  %.0.i277 = phi i8 [ %i.mx, %bb.bo ], [ %i.no, %stbi__refill_buffer.exit.i275 ], [ 0, %bb.bp ]
  %i.np = zext i8 %.0.i277 to i32                 ; 2 uses
  %i.nq = and i32 %i.np, 127
  %i.nr = add nuw nsw i32 %i.nq, 1
  %i.ns = lshr i32 %i.np, 7
  br label %.thread

bb.bt:                                            ; preds = %bb.bm
  %.not215 = icmp eq i32 %.0180334, 0             ; 2 uses
  %brmerge = or i1 %.not215, %.not216.not
  %not..not215 = xor i1 %.not215, true
  %.mux = zext i1 %not..not215 to i32
  br i1 %brmerge, label %.thread, label %.loopexit319

.thread:                                          ; preds = %bb.bt, %bb.bl, %stbi__get8.exit278
  %.1181315 = phi i32 [ %.mux, %bb.bt ], [ %i.ns, %stbi__get8.exit278 ], [ %.0180334, %bb.bl ] ; 3 uses
  %.1183313 = phi i32 [ %.0182333, %bb.bt ], [ %i.nr, %stbi__get8.exit278 ], [ %.0182333, %bb.bl ] ; 3 uses
  br i1 %i.gt, label %bb.bu, label %bb.cc

bb.bu:                                            ; preds = %.thread
  br i1 %i.mn, label %bb.bv, label %bb.cb

bb.bv:                                            ; preds = %bb.bu
  %i.nt = load ptr, ptr %i.b, align 8, !tbaa !29  ; 3 uses
  %i.nu = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.nv = icmp ult ptr %i.nt, %i.nu
  br i1 %i.nv, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nt, i64 1
  store ptr %i.nw, ptr %i.b, align 8, !tbaa !29
  %i.nx = load i8, ptr %i.nt, align 1, !tbaa !37
  br label %stbi__get8.exit284

bb.bx:                                            ; preds = %bb.bv
  %i.ny = load i32, ptr %i.md, align 8, !tbaa !26
  %.not.i279 = icmp eq i32 %i.ny, 0
  br i1 %.not.i279, label %stbi__get8.exit284, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.nz = load ptr, ptr %i.me, align 8, !tbaa !25
  %i.oa = load ptr, ptr %i.mf, align 8, !tbaa !34
  %i.ob = load i32, ptr %i.mh, align 4, !tbaa !35
  %i.oc = tail call i32 %i.nz(ptr noundef %i.oa, ptr noundef nonnull %i.mg, i32 noundef %i.ob) #37, !inline_history !65 ; 2 uses
  %i.od = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.oe = load ptr, ptr %i.mi, align 8, !tbaa !28
  %i.of = ptrtoint ptr %i.od to i64
  %i.og = ptrtoint ptr %i.oe to i64
  %i.oh = sub i64 %i.of, %i.og
  %i.oi = trunc i64 %i.oh to i32
  %i.oj = load i32, ptr %i.mj, align 8, !tbaa !27
  %i.ok = add nsw i32 %i.oj, %i.oi
  store i32 %i.ok, ptr %i.mj, align 8, !tbaa !27
  %i.ol = icmp eq i32 %i.oc, 0
  br i1 %i.ol, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store i32 0, ptr %i.md, align 8, !tbaa !26
  store i8 0, ptr %i.mg, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i281

bb.ca:                                            ; preds = %bb.by
  %i.om = sext i32 %i.oc to i64
  %i.on = getelementptr inbounds i8, ptr %i.mg, i64 %i.om
  %.pre.i280 = load i8, ptr %i.mg, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i281

stbi__refill_buffer.exit.i281:                    ; preds = %bb.ca, %bb.bz
  %i.oo = phi i8 [ 0, %bb.bz ], [ %.pre.i280, %bb.ca ]
  %.sink.i.i282 = phi ptr [ %i.mk, %bb.bz ], [ %i.on, %bb.ca ]
  store ptr %.sink.i.i282, ptr %i.d, align 8, !tbaa !31
  store ptr %i.mk, ptr %i.b, align 8, !tbaa !29
  br label %stbi__get8.exit284

stbi__get8.exit284:                               ; preds = %bb.bw, %bb.bx, %stbi__refill_buffer.exit.i281
  %.0.i283 = phi i8 [ %i.nx, %bb.bw ], [ %i.oo, %stbi__refill_buffer.exit.i281 ], [ 0, %bb.bx ]
  %i.op = zext i8 %.0.i283 to i32
  br label %.loopexit319.loopexit

bb.cb:                                            ; preds = %bb.bu
  %i.oq = tail call i32 @stbi__get16le(ptr noundef %0)
  br label %.loopexit319.loopexit

.loopexit319.loopexit:                            ; preds = %bb.cb, %stbi__get8.exit284
  %i.or = phi i32 [ %i.op, %stbi__get8.exit284 ], [ %i.oq, %bb.cb ] ; 2 uses
  %.not218 = icmp samesign ult i32 %i.or, %i.cv
  %spec.store.select = select i1 %.not218, i32 %i.or, i32 0
  %i.os = zext nneg i32 %spec.store.select to i64
  %i.ot = mul nuw nsw i64 %i.mo, %i.os
  %scevgep = getelementptr nuw i8, ptr %.0191, i64 %i.ot
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i64 %i.mo, i1 false), !tbaa !37
  br label %.loopexit319

bb.cc:                                            ; preds = %.thread
  br i1 %.not209, label %.preheader320.preheader, label %bb.cd

.preheader320.preheader:                          ; preds = %bb.cc
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !29
  %.pre398 = load ptr, ptr %i.d, align 8, !tbaa !31
  br label %.preheader320

bb.cd:                                            ; preds = %bb.cc
  %i.ou = tail call i32 @stbi__get16le(ptr noundef %0) ; 3 uses
  %12 = lshr i32 %i.ou, 10
  %13 = lshr i32 %i.ou, 5
  %14 = trunc nuw nsw i32 %12 to i16
  %i.ov = and i16 %14, 31
  %.lhs.trunc.i285 = mul nuw nsw i16 %i.ov, 255
  %i.ow = udiv i16 %.lhs.trunc.i285, 31
  %i.ox = trunc nuw i16 %i.ow to i8
  store i8 %i.ox, ptr %i.a, align 4, !tbaa !37
  %15 = trunc nuw nsw i32 %13 to i16
  %i.oy = insertelement <2 x i16> poison, i16 %15, i64 0
  %16 = trunc nuw i32 %i.ou to i16
  %i.oz = insertelement <2 x i16> %i.oy, i16 %16, i64 1
  %i.pa = and <2 x i16> %i.oz, splat (i16 31)
  %i.pb = mul nuw nsw <2 x i16> %i.pa, splat (i16 255)
  %i.pc = udiv <2 x i16> %i.pb, splat (i16 31)
  %i.pd = trunc <2 x i16> %i.pc to <2 x i8>       ; 2 uses
  %i.pe = extractelement <2 x i8> %i.pd, i64 0
  store i8 %i.pe, ptr %i.ml, align 1, !tbaa !37
  %i.pf = extractelement <2 x i8> %i.pd, i64 1
  store i8 %i.pf, ptr %i.mm, align 2, !tbaa !37
  br label %.loopexit319

.preheader320:                                    ; preds = %.preheader320.preheader, %stbi__get8.exit293
  %i.pg = phi ptr [ %.pre398, %.preheader320.preheader ], [ %i.qc, %stbi__get8.exit293 ] ; 3 uses
  %i.ph = phi ptr [ %.pre, %.preheader320.preheader ], [ %i.qd, %stbi__get8.exit293 ] ; 4 uses
  %indvars.iv364 = phi i64 [ 0, %.preheader320.preheader ], [ %indvars.iv.next365, %stbi__get8.exit293 ] ; 2 uses
  %i.pi = icmp ult ptr %i.ph, %i.pg
  br i1 %i.pi, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %.preheader320
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ph, i64 1 ; 2 uses
  store ptr %i.pj, ptr %i.b, align 8, !tbaa !29
  %i.pk = load i8, ptr %i.ph, align 1, !tbaa !37
  br label %stbi__get8.exit293

bb.cf:                                            ; preds = %.preheader320
  %i.pl = load i32, ptr %i.md, align 8, !tbaa !26
  %.not.i288 = icmp eq i32 %i.pl, 0
  br i1 %.not.i288, label %stbi__get8.exit293, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.pm = load ptr, ptr %i.me, align 8, !tbaa !25
  %i.pn = load ptr, ptr %i.mf, align 8, !tbaa !34
  %i.po = load i32, ptr %i.mh, align 4, !tbaa !35
  %i.pp = tail call i32 %i.pm(ptr noundef %i.pn, ptr noundef nonnull %i.mg, i32 noundef %i.po) #37, !inline_history !65 ; 2 uses
  %i.pq = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.pr = load ptr, ptr %i.mi, align 8, !tbaa !28
  %i.ps = ptrtoint ptr %i.pq to i64
  %i.pt = ptrtoint ptr %i.pr to i64
  %i.pu = sub i64 %i.ps, %i.pt
  %i.pv = trunc i64 %i.pu to i32
  %i.pw = load i32, ptr %i.mj, align 8, !tbaa !27
  %i.px = add nsw i32 %i.pw, %i.pv
  store i32 %i.px, ptr %i.mj, align 8, !tbaa !27
  %i.py = icmp eq i32 %i.pp, 0
  br i1 %i.py, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store i32 0, ptr %i.md, align 8, !tbaa !26
  store i8 0, ptr %i.mg, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i290

bb.ci:                                            ; preds = %bb.cg
  %i.pz = sext i32 %i.pp to i64
  %i.qa = getelementptr inbounds i8, ptr %i.mg, i64 %i.pz
  %.pre.i289 = load i8, ptr %i.mg, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i290

stbi__refill_buffer.exit.i290:                    ; preds = %bb.ci, %bb.ch
  %i.qb = phi i8 [ 0, %bb.ch ], [ %.pre.i289, %bb.ci ]
  %.sink.i.i291 = phi ptr [ %i.mk, %bb.ch ], [ %i.qa, %bb.ci ] ; 2 uses
  store ptr %.sink.i.i291, ptr %i.d, align 8, !tbaa !31
  store ptr %i.mk, ptr %i.b, align 8, !tbaa !29
  br label %stbi__get8.exit293

stbi__get8.exit293:                               ; preds = %bb.ce, %bb.cf, %stbi__refill_buffer.exit.i290
  %i.qc = phi ptr [ %i.pg, %bb.ce ], [ %.sink.i.i291, %stbi__refill_buffer.exit.i290 ], [ %i.pg, %bb.cf ]
  %i.qd = phi ptr [ %i.pj, %bb.ce ], [ %i.mk, %stbi__refill_buffer.exit.i290 ], [ %i.ph, %bb.cf ]
  %.0.i292 = phi i8 [ %i.pk, %bb.ce ], [ %i.qb, %stbi__refill_buffer.exit.i290 ], [ 0, %bb.cf ]
  %i.qe = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv364
  store i8 %.0.i292, ptr %i.qe, align 1, !tbaa !37
  %indvars.iv.next365 = add nuw nsw i64 %indvars.iv364, 1 ; 2 uses
  %exitcond369.not = icmp eq i64 %indvars.iv.next365, %wide.trip.count368
  br i1 %exitcond369.not, label %.loopexit319, label %.preheader320, !llvm.loop !215

.loopexit319:                                     ; preds = %stbi__get8.exit293, %.loopexit319.loopexit, %bb.bt, %bb.cd
  %.1181316 = phi i32 [ %.1181315, %.loopexit319.loopexit ], [ %.1181315, %bb.cd ], [ 1, %bb.bt ], [ %.1181315, %stbi__get8.exit293 ]
  %.1183314 = phi i32 [ %.1183313, %.loopexit319.loopexit ], [ %.1183313, %bb.cd ], [ %.0182333, %bb.bt ], [ %.1183313, %stbi__get8.exit293 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep374, ptr noundef nonnull align 4 dereferenceable(1) %i.a, i64 %i.mo, i1 false), !tbaa !37
  %i.qf = add nsw i32 %.1183314, -1
  %indvars.iv.next380 = add nuw nsw i64 %indvars.iv379, 1 ; 2 uses
  %exitcond382.not = icmp eq i64 %indvars.iv.next380, %wide.trip.count381
  br i1 %exitcond382.not, label %._crit_edge, label %bb.bl, !llvm.loop !216

._crit_edge:                                      ; preds = %.loopexit319, %.loopexit323
  %.not211.not = icmp eq i8 %i.gs, 0
  %i.qg = icmp ne i32 %i.ee, 0
  %or.cond348 = select i1 %.not211.not, i1 %i.qg, i1 false
  br i1 %or.cond348, label %.lr.ph344, label %.loopexit318

.lr.ph344:                                        ; preds = %._crit_edge
  %i.qh = mul nuw nsw i32 %i.ed, %.0193.ph        ; 10 uses
  %.not351 = icmp eq i32 %i.ed, 0
  br i1 %.not351, label %.loopexit318, label %.lr.ph341.preheader

.lr.ph341.preheader:                              ; preds = %.lr.ph344
  %i.qi = add nsw i32 %i.ee, -1                   ; 2 uses
  %i.qj = mul i32 %i.ed, %i.qi
  %i.qk = mul i32 %i.qj, %.0193.ph
  %i.ql = lshr i32 %i.qi, 1
  %smin = tail call i32 @llvm.smin.i32(i32 %i.qh, i32 1)
  %i.qm = sub nsw i32 %i.qh, %smin
  %narrow = add nuw nsw i32 %i.qm, 1
  %i.qn = zext nneg i32 %narrow to i64            ; 2 uses
  %scevgep461 = getelementptr i8, ptr %i.hl, i64 %i.qn
  %scevgep464 = getelementptr i8, ptr %i.hl, i64 %i.qn
  %smin466 = tail call i32 @llvm.smin.i32(i32 %i.qh, i32 1)
  %i.qo = sub nsw i32 %i.qh, %smin466             ; 3 uses
  %narrow482 = add nuw nsw i32 %i.qo, 1
  %i.qp = zext nneg i32 %narrow482 to i64         ; 5 uses
  %min.iters.check = icmp ult i32 %i.qo, 3
  %min.iters.check467 = icmp ult i32 %i.qo, 31
  %i.qq = and i64 %i.qp, 28
  %n.vec = and i64 %i.qp, 2147483616              ; 6 uses
  %i.qr = trunc nuw nsw i64 %n.vec to i32
  %i.qs = sub nsw i32 %i.qh, %i.qr
  %cmp.n = icmp eq i64 %n.vec, %i.qp
  %min.epilog.iters.check = icmp eq i64 %i.qq, 0
  %n.vec473 = and i64 %i.qp, 2147483644           ; 5 uses
  %i.qt = trunc nuw nsw i64 %n.vec473 to i32
  %i.qu = sub nsw i32 %i.qh, %i.qt
  %cmp.n478 = icmp eq i64 %n.vec473, %i.qp
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph341.preheader, %._crit_edge342
  %indvars.iv389 = phi i32 [ 0, %.lr.ph341.preheader ], [ %indvars.iv.next390, %._crit_edge342 ] ; 3 uses
  %indvars.iv385 = phi i32 [ %i.qk, %.lr.ph341.preheader ], [ %indvars.iv.next386, %._crit_edge342 ] ; 3 uses
  %.3343 = phi i32 [ 0, %.lr.ph341.preheader ], [ %i.rn, %._crit_edge342 ] ; 2 uses
  %i.qv = sext i32 %indvars.iv385 to i64          ; 6 uses
  %i.qw = zext i32 %indvars.iv389 to i64          ; 6 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.qx = sext i32 %indvars.iv385 to i64          ; 2 uses
  %scevgep465 = getelementptr i8, ptr %scevgep464, i64 %i.qx
  %scevgep463 = getelementptr i8, ptr %i.hl, i64 %i.qx
  %i.qy = zext i32 %indvars.iv389 to i64          ; 2 uses
  %scevgep462 = getelementptr i8, ptr %scevgep461, i64 %i.qy
  %scevgep460 = getelementptr nuw i8, ptr %i.hl, i64 %i.qy
  %bound0 = icmp ult ptr %scevgep460, %scevgep465
  %bound1 = icmp ult ptr %scevgep463, %scevgep462
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check467, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.qz = add nuw nsw i64 %n.vec, %i.qw
  %i.ra = add nsw i64 %n.vec, %i.qv
  %invariant.gep = getelementptr i8, ptr %i.hl, i64 %i.qw
  %invariant.gep501 = getelementptr i8, ptr %i.hl, i64 %i.qv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 3 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %gep, align 1, !tbaa !37, !alias.scope !226, !noalias !227
  %wide.load468 = load <16 x i8>, ptr %i.rb, align 1, !tbaa !37, !alias.scope !226, !noalias !227
  %gep502 = getelementptr i8, ptr %invariant.gep501, i64 %index ; 3 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %gep502, i64 16 ; 2 uses
  %wide.load469 = load <16 x i8>, ptr %gep502, align 1, !tbaa !37, !alias.scope !227
  %wide.load470 = load <16 x i8>, ptr %i.rc, align 1, !tbaa !37, !alias.scope !227
  store <16 x i8> %wide.load469, ptr %gep, align 1, !tbaa !37, !alias.scope !226, !noalias !227
  store <16 x i8> %wide.load470, ptr %i.rb, align 1, !tbaa !37, !alias.scope !226, !noalias !227
  store <16 x i8> %wide.load, ptr %gep502, align 1, !tbaa !37, !alias.scope !227
  store <16 x i8> %wide.load468, ptr %i.rc, align 1, !tbaa !37, !alias.scope !227
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.rd = icmp eq i64 %index.next, %n.vec
  br i1 %i.rd, label %middle.block, label %vector.body, !llvm.loop !220

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge342, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !72

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.re = add nuw nsw i64 %n.vec473, %i.qw
  %i.rf = add nsw i64 %n.vec473, %i.qv
  %invariant.gep503 = getelementptr i8, ptr %i.hl, i64 %i.qw
  %invariant.gep505 = getelementptr i8, ptr %i.hl, i64 %i.qv
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index474 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next477, %vec.epilog.vector.body ] ; 3 uses
  %gep504 = getelementptr i8, ptr %invariant.gep503, i64 %index474 ; 2 uses
  %wide.load475 = load <4 x i8>, ptr %gep504, align 1, !tbaa !37, !alias.scope !226, !noalias !227
  %gep506 = getelementptr i8, ptr %invariant.gep505, i64 %index474 ; 2 uses
  %wide.load476 = load <4 x i8>, ptr %gep506, align 1, !tbaa !37, !alias.scope !227
  store <4 x i8> %wide.load476, ptr %gep504, align 1, !tbaa !37, !alias.scope !226, !noalias !227
  store <4 x i8> %wide.load475, ptr %gep506, align 1, !tbaa !37, !alias.scope !227
  %index.next477 = add nuw i64 %index474, 4       ; 2 uses
  %i.rg = icmp eq i64 %index.next477, %n.vec473
  br i1 %i.rg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !221

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n478, label %._crit_edge342, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
end_hunk_0
begin_hunk_1_@stbi__tga_info:bb.a
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !25
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !34
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !35
  %i.gq = tail call i32 %i.gk(ptr noundef %i.gm, ptr noundef nonnull %i.gn, i32 noundef %i.gp) #37, !inline_history !65 ; 2 uses
  %i.gr = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !28
  %i.gu = ptrtoint ptr %i.gr to i64
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = sub i64 %i.gu, %i.gv
  %i.gx = trunc i64 %i.gw to i32
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !27
  %i.ha = add nsw i32 %i.gz, %i.gx
  store i32 %i.ha, ptr %i.gy, align 8, !tbaa !27
  %i.hb = icmp eq i32 %i.gq, 0
  br i1 %i.hb, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.gh, align 8, !tbaa !26
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.gn, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i115

bb.ar:                                            ; preds = %bb.ap
  %i.hd = sext i32 %i.gq to i64
  %i.he = getelementptr inbounds i8, ptr %i.gn, i64 %i.hd
  %.pre.i114 = load i8, ptr %i.gn, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i115

stbi__refill_buffer.exit.i115:                    ; preds = %bb.ar, %bb.aq
  %i.hf = phi i8 [ 0, %bb.aq ], [ %.pre.i114, %bb.ar ]
  %.sink.i.i116 = phi ptr [ %i.hc, %bb.aq ], [ %i.he, %bb.ar ] ; 2 uses
  store ptr %.sink.i.i116, ptr %i.c, align 8, !tbaa !31
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.hg, ptr %i.a, align 8, !tbaa !29
  br label %stbi__get8.exit118

stbi__get8.exit118:                               ; preds = %bb.an, %bb.ao, %stbi__refill_buffer.exit.i115
  %i.hh = phi ptr [ %i.gd, %bb.an ], [ %.sink.i.i116, %stbi__refill_buffer.exit.i115 ], [ %i.gd, %bb.ao ]
  %i.hi = phi ptr [ %i.gf, %bb.an ], [ %i.hg, %stbi__refill_buffer.exit.i115 ], [ %i.gc, %bb.ao ] ; 2 uses
  %.0.i117 = phi i8 [ %i.gg, %bb.an ], [ %i.hf, %stbi__refill_buffer.exit.i115 ], [ 0, %bb.ao ] ; 3 uses
  %i.hj = icmp ult ptr %i.hi, %i.hh
  br i1 %i.hj, label %bb.as, label %bb.at

bb.as:                                            ; preds = %stbi__get8.exit118
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 1
  br label %stbi__get8.exit124.sink.split

bb.at:                                            ; preds = %stbi__get8.exit118
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !26
  %.not.i119 = icmp eq i32 %i.hm, 0
  br i1 %.not.i119, label %stbi__get8.exit124, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !25
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !34
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !35
  %i.hu = tail call i32 %i.ho(ptr noundef %i.hq, ptr noundef nonnull %i.hr, i32 noundef %i.ht) #37, !inline_history !65 ; 2 uses
  %i.hv = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !28
  %i.hy = ptrtoint ptr %i.hv to i64
  %i.hz = ptrtoint ptr %i.hx to i64
  %i.ia = sub i64 %i.hy, %i.hz
  %i.ib = trunc i64 %i.ia to i32
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !27
  %i.ie = add nsw i32 %i.id, %i.ib
  store i32 %i.ie, ptr %i.ic, align 8, !tbaa !27
  %i.if = icmp eq i32 %i.hu, 0
  br i1 %i.if, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.hl, align 8, !tbaa !26
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.hr, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i121

bb.aw:                                            ; preds = %bb.au
  %i.ih = sext i32 %i.hu to i64
  %i.ii = getelementptr inbounds i8, ptr %i.hr, i64 %i.ih
  br label %stbi__refill_buffer.exit.i121

stbi__refill_buffer.exit.i121:                    ; preds = %bb.aw, %bb.av
  %.sink.i.i122 = phi ptr [ %i.ig, %bb.av ], [ %i.ii, %bb.aw ]
  store ptr %.sink.i.i122, ptr %i.c, align 8, !tbaa !31
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 57
  br label %stbi__get8.exit124.sink.split

stbi__get8.exit124.sink.split:                    ; preds = %stbi__refill_buffer.exit.i121, %bb.as
  %.sink168 = phi ptr [ %i.hk, %bb.as ], [ %i.ij, %stbi__refill_buffer.exit.i121 ]
  store ptr %.sink168, ptr %i.a, align 8, !tbaa !29
  br label %stbi__get8.exit124

stbi__get8.exit124:                               ; preds = %stbi__get8.exit124.sink.split, %bb.at
  %.not = icmp eq i8 %.0.shrunk, 0
  br i1 %.not, label %bb.bb, label %bb.ax

bb.ax:                                            ; preds = %stbi__get8.exit124
  switch i8 %.0.i117, label %bb.ay [
    i8 16, label %bb.az
    i8 8, label %bb.az
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.il = load <2 x ptr>, ptr %i.ik, align 8, !tbaa !39
  store <2 x ptr> %i.il, ptr %i.a, align 8, !tbaa !39
  br label %bb.bk

bb.az:                                            ; preds = %bb.ax, %bb.ax
  %switch.tableidx = add i8 %.0.shrunk, -8        ; 3 uses
  %i.im = icmp ult i8 %switch.tableidx, 25
  br i1 %i.im, label %switch.hole_check, label %stbi__tga_get_comp.exit

bb.ba:                                            ; preds = %bb.bb
  br label %bb.be

bb.bb:                                            ; preds = %stbi__get8.exit124
  switch i8 %.0.i117, label %stbi__tga_get_comp.exit [
    i8 8, label %bb.be
    i8 16, label %bb.bc
    i8 15, label %bb.ba
    i8 24, label %bb.bd
    i8 32, label %bb.bd
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.in = and i8 %.0.i91, -9
  %i.io = icmp eq i8 %i.in, 3
  %.mux.i = select i1 %i.io, i32 2, i32 3
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb, %bb.bb
  %i.ip = lshr i8 %.0.i117, 3
  %i.iq = zext nneg i8 %i.ip to i32
  br label %bb.be

stbi__tga_get_comp.exit:                          ; preds = %switch.hole_check, %bb.az, %bb.bb
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.is = load <2 x ptr>, ptr %i.ir, align 8, !tbaa !39
  store <2 x ptr> %i.is, ptr %i.a, align 8, !tbaa !39
  br label %bb.bk

switch.hole_check:                                ; preds = %bb.az
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 16843137, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %stbi__tga_get_comp.exit

switch.lookup:                                    ; preds = %switch.hole_check
  %i.it = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.stbi__tga_info, i64 %i.it
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.be

bb.be:                                            ; preds = %switch.lookup, %bb.ba, %bb.bd, %bb.bb, %bb.bc
  %.069.ph = phi i32 [ %switch.ext, %switch.lookup ], [ %.mux.i, %bb.bc ], [ 1, %bb.bb ], [ %i.iq, %bb.bd ], [ 3, %bb.ba ]
  %.not78 = icmp eq ptr %1, null
  br i1 %.not78, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store i32 %i.fu, ptr %1, align 4, !tbaa !40
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.not79 = icmp eq ptr %2, null
  br i1 %.not79, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  store i32 %i.fy, ptr %2, align 4, !tbaa !40
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.not80 = icmp eq ptr %3, null
  br i1 %.not80, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store i32 %.069.ph, ptr %3, align 4, !tbaa !40
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj, %stbi__tga_get_comp.exit, %bb.ay, %bb.al, %bb.aj, %bb.af, %stbi__get8.exit100.thread, %bb.s, %bb.l
  %.070 = phi i32 [ 0, %bb.l ], [ 0, %bb.s ], [ 0, %stbi__get8.exit100.thread ], [ 0, %bb.aj ], [ 0, %bb.al ], [ 0, %bb.ay ], [ 0, %bb.af ], [ 0, %stbi__tga_get_comp.exit ], [ 1, %bb.bj ], [ 1, %bb.bi ]
  ret i32 %.070
}

; Function Attrs: nounwind uwtable
define void @stbi__tga_read_rgb16(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 3)) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @stbi__get16le(ptr noundef %0) ; 3 uses
  %2 = lshr i32 %i.a, 10
  %3 = lshr i32 %i.a, 5
  %4 = trunc nuw nsw i32 %2 to i16
  %i.b = and i16 %4, 31
  %.lhs.trunc = mul nuw nsw i16 %i.b, 255
  %i.c = udiv i16 %.lhs.trunc, 31
  %i.d = trunc nuw i16 %i.c to i8
  store i8 %i.d, ptr %1, align 1, !tbaa !37
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %6 = trunc nuw nsw i32 %3 to i16
  %i.e = insertelement <2 x i16> poison, i16 %6, i64 0
  %7 = trunc nuw i32 %i.a to i16
  %i.f = insertelement <2 x i16> %i.e, i16 %7, i64 1
  %i.g = and <2 x i16> %i.f, splat (i16 31)
  %i.h = mul nuw nsw <2 x i16> %i.g, splat (i16 255)
  %i.i = udiv <2 x i16> %i.h, splat (i16 31)
  %i.j = trunc <2 x i16> %i.i to <2 x i8>         ; 2 uses
  %i.k = extractelement <2 x i8> %i.j, i64 0
  store i8 %i.k, ptr %5, align 1, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.m = extractelement <2 x i8> %i.j, i64 1
  store i8 %i.m, ptr %i.l, align 1, !tbaa !37
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbi__psd_decode_rle(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %i.l = phi i32 [ %2, %.lr.ph ], [ %i.cw, %.loopexit ] ; 2 uses
  %.02968 = phi i32 [ 0, %.lr.ph ], [ %.2, %.loopexit ] ; 3 uses
  %.03467 = phi ptr [ %1, %.lr.ph ], [ %.4, %.loopexit ] ; 4 uses
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !29   ; 3 uses
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %i.o = icmp ult ptr %i.m, %i.n
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  store ptr %i.p, ptr %i.b, align 8, !tbaa !29
  %i.q = load i8, ptr %i.m, align 1, !tbaa !37
  br label %stbi__get8.exit

bb.d:                                             ; preds = %bb.b
  %i.r = load i32, ptr %i.d, align 8, !tbaa !26
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %.thread60, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.u = load i32, ptr %i.h, align 4, !tbaa !35
  %i.v = tail call i32 %i.s(ptr noundef %i.t, ptr noundef nonnull %i.g, i32 noundef %i.u) #37, !inline_history !65 ; 2 uses
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = load i32, ptr %i.j, align 8, !tbaa !27
  %i.ad = add nsw i32 %i.ac, %i.ab
  store i32 %i.ad, ptr %i.j, align 8, !tbaa !27
  %i.ae = icmp eq i32 %i.v, 0
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.d, align 8, !tbaa !26
  store i8 0, ptr %i.g, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i

bb.g:                                             ; preds = %bb.e
  %i.af = sext i32 %i.v to i64
  %i.ag = getelementptr inbounds i8, ptr %i.g, i64 %i.af
  %.pre.i = load i8, ptr %i.g, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i

stbi__refill_buffer.exit.i:                       ; preds = %bb.g, %bb.f
  %i.ah = phi i8 [ 0, %bb.f ], [ %.pre.i, %bb.g ]
  %.sink.i.i = phi ptr [ %i.k, %bb.f ], [ %i.ag, %bb.g ] ; 2 uses
  store ptr %.sink.i.i, ptr %i.c, align 8, !tbaa !31
  store ptr %i.k, ptr %i.b, align 8, !tbaa !29
  br label %stbi__get8.exit

stbi__get8.exit:                                  ; preds = %bb.c, %stbi__refill_buffer.exit.i
  %i.ai = phi ptr [ %i.n, %bb.c ], [ %.sink.i.i, %stbi__refill_buffer.exit.i ]
  %i.aj = phi ptr [ %i.p, %bb.c ], [ %i.k, %stbi__refill_buffer.exit.i ] ; 3 uses
  %.0.i = phi i8 [ %i.q, %bb.c ], [ %i.ah, %stbi__refill_buffer.exit.i ] ; 4 uses
  %i.ak = zext i8 %.0.i to i32                    ; 3 uses
  %i.al = icmp eq i8 %.0.i, -128
  br i1 %i.al, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %stbi__get8.exit
  %i.am = icmp sgt i8 %.0.i, -1
  br i1 %i.am, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %.not43 = icmp samesign ugt i32 %i.l, %i.ak
  br i1 %.not43, label %.thread60, label %.critedge

.thread60:                                        ; preds = %bb.d, %bb.i
  %i.an = phi i32 [ %i.ak, %bb.i ], [ 0, %bb.d ]
  %i.ao = add nuw nsw i32 %i.an, 1                ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.thread60, %stbi__get8.exit50
  %.02866 = phi i32 [ %i.ao, %.thread60 ], [ %i.bm, %stbi__get8.exit50 ]
  %.13565 = phi ptr [ %.03467, %.thread60 ], [ %i.bl, %stbi__get8.exit50 ] ; 2 uses
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !29  ; 3 uses
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.ar = icmp ult ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  store ptr %i.as, ptr %i.b, align 8, !tbaa !29
  %i.at = load i8, ptr %i.ap, align 1, !tbaa !37
  br label %stbi__get8.exit50

bb.l:                                             ; preds = %bb.j
  %i.au = load i32, ptr %i.d, align 8, !tbaa !26
  %.not.i45 = icmp eq i32 %i.au, 0
  br i1 %.not.i45, label %stbi__get8.exit50, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.aw = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.ax = load i32, ptr %i.h, align 4, !tbaa !35
  %i.ay = tail call i32 %i.av(ptr noundef %i.aw, ptr noundef nonnull %i.g, i32 noundef %i.ax) #37, !inline_history !65 ; 2 uses
  %i.az = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.ba = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = trunc i64 %i.bd to i32
  %i.bf = load i32, ptr %i.j, align 8, !tbaa !27
  %i.bg = add nsw i32 %i.bf, %i.be
  store i32 %i.bg, ptr %i.j, align 8, !tbaa !27
  %i.bh = icmp eq i32 %i.ay, 0
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.d, align 8, !tbaa !26
  store i8 0, ptr %i.g, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i47

bb.o:                                             ; preds = %bb.m
  %i.bi = sext i32 %i.ay to i64
  %i.bj = getelementptr inbounds i8, ptr %i.g, i64 %i.bi
  %.pre.i46 = load i8, ptr %i.g, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i47

stbi__refill_buffer.exit.i47:                     ; preds = %bb.o, %bb.n
  %i.bk = phi i8 [ 0, %bb.n ], [ %.pre.i46, %bb.o ]
  %.sink.i.i48 = phi ptr [ %i.k, %bb.n ], [ %i.bj, %bb.o ]
  store ptr %.sink.i.i48, ptr %i.c, align 8, !tbaa !31
  store ptr %i.k, ptr %i.b, align 8, !tbaa !29
  br label %stbi__get8.exit50

stbi__get8.exit50:                                ; preds = %bb.k, %bb.l, %stbi__refill_buffer.exit.i47
  %.0.i49 = phi i8 [ %i.at, %bb.k ], [ %i.bk, %stbi__refill_buffer.exit.i47 ], [ 0, %bb.l ]
  store i8 %.0.i49, ptr %.13565, align 1, !tbaa !37
  %i.bl = getelementptr inbounds nuw i8, ptr %.13565, i64 4 ; 2 uses
  %i.bm = add nsw i32 %.02866, -1                 ; 2 uses
  %.not44 = icmp eq i32 %i.bm, 0
  br i1 %.not44, label %.loopexit.loopexit, label %bb.j, !llvm.loop !514

bb.p:                                             ; preds = %bb.h
  %i.bn = sub nuw nsw i32 257, %i.ak              ; 5 uses
  %.not42 = icmp samesign ugt i32 %i.bn, %i.l
  br i1 %.not42, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = icmp ult ptr %i.aj, %i.ai
  br i1 %i.bo, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store ptr %i.bp, ptr %i.b, align 8, !tbaa !29
  %i.bq = load i8, ptr %i.aj, align 1, !tbaa !37
  br label %stbi__get8.exit56

bb.s:                                             ; preds = %bb.q
  %i.br = load i32, ptr %i.d, align 8, !tbaa !26
  %.not.i51 = icmp eq i32 %i.br, 0
  br i1 %.not.i51, label %stbi__get8.exit56, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.bt = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.bu = load i32, ptr %i.h, align 4, !tbaa !35
  %i.bv = tail call i32 %i.bs(ptr noundef %i.bt, ptr noundef nonnull %i.g, i32 noundef %i.bu) #37, !inline_history !65 ; 2 uses
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.bx = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = trunc i64 %i.ca to i32
end_hunk_1
