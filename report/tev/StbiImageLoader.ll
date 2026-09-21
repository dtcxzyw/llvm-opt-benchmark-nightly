Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/StbiImageLoader?download=true
inline.NumInlined: 6547
inline.NumDeleted: 2302
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 94
loop-unroll.NumUnrolled: 140
begin_hunk_0_@_ZL14stbi__tga_loadP13stbi__contextPiS1_S1_iP17stbi__result_info:bb.a
  store ptr %i.it, ptr %i.b, align 8, !tbaa !82
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1

_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1:  ; preds = %bb.au, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us
  %i.ja = phi ptr [ %i.it, %bb.au ], [ %i.is, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us ] ; 2 uses
  %indvars.iv.next67.1 = add nuw nsw i64 %indvars.iv66, 2 ; 2 uses
  %niter201.next.1 = add i64 %niter201, 2         ; 2 uses
  %niter201.ncmp.1 = icmp eq i64 %niter201.next.1, %unroll_iter200
  br i1 %niter201.ncmp.1, label %.loopexit33.loopexit.unr-lcssa, label %..thread_crit_edge.i262.us.us, !llvm.loop !828

..thread_crit_edge.i262.us:                       ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us.1, %..thread_crit_edge.i262.us.preheader.new
  %indvars.iv = phi i64 [ 0, %..thread_crit_edge.i262.us.preheader.new ], [ %indvars.iv.next.1, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.1 ] ; 3 uses
  %i.jb = phi ptr [ %.promoted, %..thread_crit_edge.i262.us.preheader.new ], [ %i.jo, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.1 ] ; 3 uses
  %niter = phi i64 [ 0, %..thread_crit_edge.i262.us.preheader.new ], [ %niter.next.1, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.1 ]
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.if ; 3 uses
  %.not32.i.us = icmp ugt ptr %i.jc, %.pre35.i.us
  br i1 %.not32.i.us, label %_ZL10stbi__getnP13stbi__contextPhi.exit.us, label %bb.av

bb.av:                                            ; preds = %..thread_crit_edge.i262.us
  %i.jd = trunc nuw nsw i64 %indvars.iv to i32
  %i.je = mul i32 %i.ic, %i.jd
  %i.jf = sext i32 %i.je to i64
  %i.jg = getelementptr inbounds i8, ptr %i.hl, i64 %i.jf
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jg, ptr align 1 %i.jb, i64 %i.if, i1 false)
  store ptr %i.jc, ptr %i.b, align 8, !tbaa !82
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.us

_ZL10stbi__getnP13stbi__contextPhi.exit.us:       ; preds = %bb.av, %..thread_crit_edge.i262.us
  %i.jh = phi ptr [ %i.jc, %bb.av ], [ %i.jb, %..thread_crit_edge.i262.us ] ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.if ; 3 uses
  %.not32.i.us.1 = icmp ugt ptr %i.ji, %.pre35.i.us
  br i1 %.not32.i.us.1, label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.1, label %bb.aw

bb.aw:                                            ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us
  %i.jj = trunc i64 %indvars.iv to i32
  %i.jk = or disjoint i32 %i.jj, 1
  %i.jl = mul i32 %i.ic, %i.jk
  %i.jm = sext i32 %i.jl to i64
  %i.jn = getelementptr inbounds i8, ptr %i.hl, i64 %i.jm
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jn, ptr align 1 %i.jh, i64 %i.if, i1 false)
  store ptr %i.ji, ptr %i.b, align 8, !tbaa !82
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.1

_ZL10stbi__getnP13stbi__contextPhi.exit.us.1:     ; preds = %bb.aw, %_ZL10stbi__getnP13stbi__contextPhi.exit.us
  %i.jo = phi ptr [ %i.ji, %bb.aw ], [ %i.jh, %_ZL10stbi__getnP13stbi__contextPhi.exit.us ] ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit33.loopexit192.unr-lcssa, label %..thread_crit_edge.i262.us, !llvm.loop !828

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZL10stbi__getnP13stbi__contextPhi.exit
  %.018734 = phi i32 [ %i.km, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ 0, %.lr.ph ] ; 3 uses
  %i.jp = xor i32 %.018734, -1
  %i.jq = add nsw i32 %i.ee, %i.jp
  %i.jr = select i1 %.not207.not, i32 %i.jq, i32 %.018734
  %i.js = mul i32 %i.ic, %i.jr
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds i8, ptr %i.hl, i64 %i.jt ; 3 uses
  %i.jv = load ptr, ptr %i.id, align 8, !tbaa !83 ; 2 uses
  %.not.i260 = icmp eq ptr %i.jv, null
  br i1 %.not.i260, label %..thread_crit_edge.i262, label %bb.ax

..thread_crit_edge.i262:                          ; preds = %.lr.ph.split
  %.pre.i264 = load ptr, ptr %i.b, align 8, !tbaa !82
  %.pre35.i = load ptr, ptr %i.d, align 8, !tbaa !85
  br label %.thread.i261

bb.ax:                                            ; preds = %.lr.ph.split
  %i.jw = load ptr, ptr %i.d, align 8, !tbaa !85  ; 2 uses
  %i.jx = load ptr, ptr %i.b, align 8, !tbaa !82  ; 3 uses
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
  %i.ke = load ptr, ptr %i.ie, align 8, !tbaa !77
  %i.kf = getelementptr inbounds i8, ptr %i.ju, i64 %i.kd
  %i.kg = sub nsw i32 %i.ic, %i.kb
  %i.kh = tail call noundef i32 %i.jv(ptr noundef %i.ke, ptr noundef nonnull %i.kf, i32 noundef %i.kg), !inline_history !323 ; 0 uses
  %i.ki = load ptr, ptr %i.d, align 8, !tbaa !85
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.sink.split

.thread.i261:                                     ; preds = %bb.ax, %..thread_crit_edge.i262
  %i.kj = phi ptr [ %.pre35.i, %..thread_crit_edge.i262 ], [ %i.jw, %bb.ax ]
  %i.kk = phi ptr [ %.pre.i264, %..thread_crit_edge.i262 ], [ %i.jx, %bb.ax ] ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.if ; 2 uses
  %.not32.i = icmp ugt ptr %i.kl, %i.kj
  br i1 %.not32.i, label %_ZL10stbi__getnP13stbi__contextPhi.exit, label %bb.az

bb.az:                                            ; preds = %.thread.i261
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ju, ptr align 1 %i.kk, i64 %i.if, i1 false)
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.sink.split

_ZL10stbi__getnP13stbi__contextPhi.exit.sink.split: ; preds = %bb.az, %bb.ay
  %.sink = phi ptr [ %i.ki, %bb.ay ], [ %i.kl, %bb.az ]
  store ptr %.sink, ptr %i.b, align 8, !tbaa !82
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit

_ZL10stbi__getnP13stbi__contextPhi.exit:          ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.sink.split, %.thread.i261
  %i.km = add nuw nsw i32 %.018734, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.km, %i.ee
  br i1 %exitcond.not, label %.loopexit33, label %.lr.ph.split, !llvm.loop !829

bb.ba:                                            ; preds = %_ZL10stbi__skipP13stbi__contexti.exit
  br i1 %i.gt, label %bb.bb, label %.loopexit31

bb.bb:                                            ; preds = %bb.ba
  %i.kn = icmp eq i32 %i.cv, 0
  br i1 %i.kn, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  tail call void @free(ptr noundef nonnull %i.hl) #53
  %i.ko = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.107, ptr %i.ko, align 8, !tbaa !71
  br label %bb.cp

bb.bd:                                            ; preds = %bb.bb
  %i.kp = icmp eq i32 %i.cu, 0
  br i1 %i.kp, label %_ZL10stbi__skipP13stbi__contexti.exit270, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !83
  %.not.i265 = icmp eq ptr %i.kr, null
  br i1 %.not.i265, label %..thread_crit_edge.i267, label %bb.bf

..thread_crit_edge.i267:                          ; preds = %bb.be
  %.pre.i269 = load ptr, ptr %i.b, align 8, !tbaa !82
  br label %.thread.i266

bb.bf:                                            ; preds = %bb.be
  %i.ks = load ptr, ptr %i.d, align 8, !tbaa !85  ; 2 uses
  %i.kt = load ptr, ptr %i.b, align 8, !tbaa !82  ; 2 uses
  %i.ku = ptrtoint ptr %i.ks to i64
  %i.kv = ptrtoint ptr %i.kt to i64
  %i.kw = sub i64 %i.ku, %i.kv
  %i.kx = trunc i64 %i.kw to i32                  ; 2 uses
  %i.ky = icmp sgt i32 %i.cu, %i.kx
  br i1 %i.ky, label %bb.bg, label %.thread.i266

bb.bg:                                            ; preds = %bb.bf
  store ptr %i.ks, ptr %i.b, align 8, !tbaa !82
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !123
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !77
  %i.ld = sub nsw i32 %i.cu, %i.kx
  tail call void %i.la(ptr noundef %i.lc, i32 noundef %i.ld), !inline_history !324
  br label %_ZL10stbi__skipP13stbi__contexti.exit270

.thread.i266:                                     ; preds = %bb.bf, %..thread_crit_edge.i267
  %i.le = phi ptr [ %.pre.i269, %..thread_crit_edge.i267 ], [ %i.kt, %bb.bf ]
  %i.lf = zext nneg i32 %i.cu to i64
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.lf
  store ptr %i.lg, ptr %i.b, align 8, !tbaa !82
  br label %_ZL10stbi__skipP13stbi__contexti.exit270

_ZL10stbi__skipP13stbi__contexti.exit270:         ; preds = %bb.bd, %bb.bg, %.thread.i266
  %i.lh = mul nuw nsw i32 %i.cv, %.0193.ph        ; 2 uses
  %i.li = zext nneg i32 %i.lh to i64
  %i.lj = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.li) #54 ; 6 uses
  %.not208 = icmp eq ptr %i.lj, null
  br i1 %.not208, label %_ZL17stbi__malloc_mad2iii.exit.thread, label %bb.bh

_ZL17stbi__malloc_mad2iii.exit.thread:            ; preds = %_ZL10stbi__skipP13stbi__contexti.exit270
  tail call void @free(ptr noundef nonnull %i.hl) #53
  %i.lk = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.29, ptr %i.lk, align 8, !tbaa !71
  br label %bb.cp

bb.bh:                                            ; preds = %_ZL10stbi__skipP13stbi__contexti.exit270
  br i1 %.not209, label %bb.bj, label %.preheader30

.preheader30:                                     ; preds = %bb.bh
  %i.ll = zext nneg i8 %.0193.ph.shrunk to i64
  br label %bb.bi

bb.bi:                                            ; preds = %.preheader30, %bb.bi
  %.017736 = phi ptr [ %i.lj, %.preheader30 ], [ %i.mb, %bb.bi ] ; 4 uses
  %.118835 = phi i32 [ 0, %.preheader30 ], [ %i.mc, %bb.bi ]
  %i.lm = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0)
  %i.ln = trunc nuw i32 %i.lm to i16              ; 3 uses
  %i.lo = lshr i16 %i.ln, 10
  %i.lp = and i16 %i.lo, 31
  %.lhs.trunc.i = mul nuw nsw i16 %i.lp, 255
  %i.lq = udiv i16 %.lhs.trunc.i, 31
  %i.lr = trunc nuw i16 %i.lq to i8
  store i8 %i.lr, ptr %.017736, align 1, !tbaa !84
  %i.ls = lshr i16 %i.ln, 5
  %i.lt = getelementptr inbounds nuw i8, ptr %.017736, i64 1
  %i.lu = insertelement <2 x i16> poison, i16 %i.ls, i64 0
  %i.lv = insertelement <2 x i16> %i.lu, i16 %i.ln, i64 1
  %i.lw = and <2 x i16> %i.lv, splat (i16 31)
  %i.lx = mul nuw nsw <2 x i16> %i.lw, splat (i16 255)
  %i.ly = udiv <2 x i16> %i.lx, splat (i16 31)
  %5 = trunc <2 x i16> %i.ly to <2 x i8>          ; 2 uses
  %i.lz = extractelement <2 x i8> %5, i64 0
  store i8 %i.lz, ptr %i.lt, align 1, !tbaa !84
  %6 = getelementptr inbounds nuw i8, ptr %.017736, i64 2
  %i.ma = extractelement <2 x i8> %5, i64 1
  store i8 %i.ma, ptr %6, align 1, !tbaa !84
  %i.mb = getelementptr inbounds nuw i8, ptr %.017736, i64 %i.ll
  %i.mc = add nuw nsw i32 %.118835, 1             ; 2 uses
  %exitcond71.not = icmp eq i32 %i.mc, %i.cv
  br i1 %exitcond71.not, label %.loopexit31, label %bb.bi, !llvm.loop !830

bb.bj:                                            ; preds = %bb.bh
  %i.md = tail call fastcc noundef i32 @_ZL10stbi__getnP13stbi__contextPhi(ptr noundef nonnull %0, ptr noundef nonnull %i.lj, i32 noundef %i.lh)
  %.not210 = icmp eq i32 %i.md, 0
  br i1 %.not210, label %bb.bk, label %.loopexit31

bb.bk:                                            ; preds = %bb.bj
  tail call void @free(ptr noundef nonnull %i.hl) #53
  tail call void @free(ptr noundef nonnull %i.lj) #53
  %i.me = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.107, ptr %i.me, align 8, !tbaa !71
  br label %bb.cp

.loopexit31:                                      ; preds = %bb.bi, %bb.bj, %bb.ba
  %.0191 = phi ptr [ null, %bb.ba ], [ %i.lj, %bb.bj ], [ %i.lj, %bb.bi ] ; 3 uses
  %.not58 = icmp eq i32 %i.hi, 0
  br i1 %.not58, label %._crit_edge, label %.lr.ph44

.lr.ph44:                                         ; preds = %.loopexit31
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 12 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 7 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.mo = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.mp = icmp eq i8 %.0.i243, 8
  %i.mq = zext nneg i8 %.0193.ph.shrunk to i64    ; 3 uses
  %wide.trip.count89 = zext nneg i32 %i.hi to i64
  %wide.trip.count76 = zext nneg i8 %.0193.ph.shrunk to i64
  br label %bb.bl

bb.bl:                                            ; preds = %.lr.ph44, %.loopexit27
  %indvars.iv87 = phi i64 [ 0, %.lr.ph44 ], [ %indvars.iv.next88, %.loopexit27 ] ; 2 uses
  %.not216.not = phi i1 [ true, %.lr.ph44 ], [ false, %.loopexit27 ]
  %.018042 = phi i32 [ 0, %.lr.ph44 ], [ %.118124, %.loopexit27 ] ; 2 uses
  %.018241 = phi i32 [ 0, %.lr.ph44 ], [ %i.qj, %.loopexit27 ] ; 4 uses
  %i.mr = trunc nuw nsw i64 %indvars.iv87 to i32
  %i.ms = mul i32 %.0193.ph, %i.mr
  %i.mt = zext i32 %i.ms to i64
  %scevgep82 = getelementptr i8, ptr %i.hl, i64 %i.mt
  br i1 %i.gq, label %bb.bm, label %.thread

bb.bm:                                            ; preds = %bb.bl
  %i.mu = icmp eq i32 %.018241, 0
  br i1 %i.mu, label %bb.bn, label %bb.bt

bb.bn:                                            ; preds = %bb.bm
  %i.mv = load ptr, ptr %i.b, align 8, !tbaa !82  ; 3 uses
  %i.mw = load ptr, ptr %i.d, align 8, !tbaa !85
  %i.mx = icmp ult ptr %i.mv, %i.mw
  br i1 %i.mx, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.my = getelementptr inbounds nuw i8, ptr %i.mv, i64 1
  store ptr %i.my, ptr %i.b, align 8, !tbaa !82
  %i.mz = load i8, ptr %i.mv, align 1, !tbaa !84
  br label %_ZL10stbi__get8P13stbi__context.exit278

bb.bp:                                            ; preds = %bb.bn
  %i.na = load i32, ptr %i.mf, align 8, !tbaa !79
  %.not.i273 = icmp eq i32 %i.na, 0
  br i1 %.not.i273, label %_ZL10stbi__get8P13stbi__context.exit278, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.nb = load ptr, ptr %i.mg, align 8, !tbaa !83
  %i.nc = load ptr, ptr %i.mh, align 8, !tbaa !77
  %i.nd = load i32, ptr %i.mj, align 4, !tbaa !78
  %i.ne = tail call noundef i32 %i.nb(ptr noundef %i.nc, ptr noundef nonnull %i.mi, i32 noundef %i.nd), !inline_history !12 ; 2 uses
  %i.nf = load ptr, ptr %i.b, align 8, !tbaa !82
  %i.ng = load ptr, ptr %i.mk, align 8, !tbaa !81
  %i.nh = ptrtoint ptr %i.nf to i64
  %i.ni = ptrtoint ptr %i.ng to i64
  %i.nj = sub i64 %i.nh, %i.ni
  %i.nk = trunc i64 %i.nj to i32
  %i.nl = load i32, ptr %i.ml, align 8, !tbaa !80
  %i.nm = add nsw i32 %i.nl, %i.nk
  store i32 %i.nm, ptr %i.ml, align 8, !tbaa !80
  %i.nn = icmp eq i32 %i.ne, 0
  br i1 %i.nn, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store i32 0, ptr %i.mf, align 8, !tbaa !79
  store i8 0, ptr %i.mi, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i275

bb.bs:                                            ; preds = %bb.bq
  %i.no = sext i32 %i.ne to i64
  %i.np = getelementptr inbounds i8, ptr %i.mi, i64 %i.no
  %.pre.i274 = load i8, ptr %i.mi, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i275

_ZL19stbi__refill_bufferP13stbi__context.exit.i275: ; preds = %bb.bs, %bb.br
  %i.nq = phi i8 [ 0, %bb.br ], [ %.pre.i274, %bb.bs ]
  %.sink.i.i276 = phi ptr [ %i.mm, %bb.br ], [ %i.np, %bb.bs ]
  store ptr %.sink.i.i276, ptr %i.d, align 8, !tbaa !85
  store ptr %i.mm, ptr %i.b, align 8, !tbaa !82
  br label %_ZL10stbi__get8P13stbi__context.exit278

_ZL10stbi__get8P13stbi__context.exit278:          ; preds = %bb.bo, %bb.bp, %_ZL19stbi__refill_bufferP13stbi__context.exit.i275
  %.0.i277 = phi i8 [ %i.mz, %bb.bo ], [ %i.nq, %_ZL19stbi__refill_bufferP13stbi__context.exit.i275 ], [ 0, %bb.bp ]
  %i.nr = zext i8 %.0.i277 to i32                 ; 2 uses
  %i.ns = and i32 %i.nr, 127
  %i.nt = add nuw nsw i32 %i.ns, 1
  %i.nu = lshr i32 %i.nr, 7
  br label %.thread

bb.bt:                                            ; preds = %bb.bm
  %.not215 = icmp eq i32 %.018042, 0              ; 2 uses
  %brmerge = or i1 %.not215, %.not216.not
  %not..not215 = xor i1 %.not215, true
  %.mux = zext i1 %not..not215 to i32
  br i1 %brmerge, label %.thread, label %.loopexit27

.thread:                                          ; preds = %bb.bt, %bb.bl, %_ZL10stbi__get8P13stbi__context.exit278
  %.118123 = phi i32 [ %.mux, %bb.bt ], [ %i.nu, %_ZL10stbi__get8P13stbi__context.exit278 ], [ %.018042, %bb.bl ] ; 3 uses
  %.118321 = phi i32 [ %.018241, %bb.bt ], [ %i.nt, %_ZL10stbi__get8P13stbi__context.exit278 ], [ %.018241, %bb.bl ] ; 3 uses
  br i1 %i.gt, label %bb.bu, label %bb.cc

bb.bu:                                            ; preds = %.thread
  br i1 %i.mp, label %bb.bv, label %bb.cb

bb.bv:                                            ; preds = %bb.bu
  %i.nv = load ptr, ptr %i.b, align 8, !tbaa !82  ; 3 uses
  %i.nw = load ptr, ptr %i.d, align 8, !tbaa !85
  %i.nx = icmp ult ptr %i.nv, %i.nw
  br i1 %i.nx, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nv, i64 1
  store ptr %i.ny, ptr %i.b, align 8, !tbaa !82
  %i.nz = load i8, ptr %i.nv, align 1, !tbaa !84
  br label %_ZL10stbi__get8P13stbi__context.exit284

bb.bx:                                            ; preds = %bb.bv
  %i.oa = load i32, ptr %i.mf, align 8, !tbaa !79
  %.not.i279 = icmp eq i32 %i.oa, 0
  br i1 %.not.i279, label %_ZL10stbi__get8P13stbi__context.exit284, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ob = load ptr, ptr %i.mg, align 8, !tbaa !83
  %i.oc = load ptr, ptr %i.mh, align 8, !tbaa !77
  %i.od = load i32, ptr %i.mj, align 4, !tbaa !78
  %i.oe = tail call noundef i32 %i.ob(ptr noundef %i.oc, ptr noundef nonnull %i.mi, i32 noundef %i.od), !inline_history !12 ; 2 uses
  %i.of = load ptr, ptr %i.b, align 8, !tbaa !82
  %i.og = load ptr, ptr %i.mk, align 8, !tbaa !81
  %i.oh = ptrtoint ptr %i.of to i64
  %i.oi = ptrtoint ptr %i.og to i64
  %i.oj = sub i64 %i.oh, %i.oi
  %i.ok = trunc i64 %i.oj to i32
  %i.ol = load i32, ptr %i.ml, align 8, !tbaa !80
  %i.om = add nsw i32 %i.ol, %i.ok
  store i32 %i.om, ptr %i.ml, align 8, !tbaa !80
  %i.on = icmp eq i32 %i.oe, 0
  br i1 %i.on, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store i32 0, ptr %i.mf, align 8, !tbaa !79
  store i8 0, ptr %i.mi, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i281

bb.ca:                                            ; preds = %bb.by
  %i.oo = sext i32 %i.oe to i64
  %i.op = getelementptr inbounds i8, ptr %i.mi, i64 %i.oo
  %.pre.i280 = load i8, ptr %i.mi, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i281

_ZL19stbi__refill_bufferP13stbi__context.exit.i281: ; preds = %bb.ca, %bb.bz
  %i.oq = phi i8 [ 0, %bb.bz ], [ %.pre.i280, %bb.ca ]
  %.sink.i.i282 = phi ptr [ %i.mm, %bb.bz ], [ %i.op, %bb.ca ]
  store ptr %.sink.i.i282, ptr %i.d, align 8, !tbaa !85
  store ptr %i.mm, ptr %i.b, align 8, !tbaa !82
  br label %_ZL10stbi__get8P13stbi__context.exit284

_ZL10stbi__get8P13stbi__context.exit284:          ; preds = %bb.bw, %bb.bx, %_ZL19stbi__refill_bufferP13stbi__context.exit.i281
  %.0.i283 = phi i8 [ %i.nz, %bb.bw ], [ %i.oq, %_ZL19stbi__refill_bufferP13stbi__context.exit.i281 ], [ 0, %bb.bx ]
  %i.or = zext i8 %.0.i283 to i32
  br label %.loopexit27.loopexit

bb.cb:                                            ; preds = %bb.bu
  %i.os = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0)
  br label %.loopexit27.loopexit

.loopexit27.loopexit:                             ; preds = %bb.cb, %_ZL10stbi__get8P13stbi__context.exit284
  %i.ot = phi i32 [ %i.or, %_ZL10stbi__get8P13stbi__context.exit284 ], [ %i.os, %bb.cb ] ; 2 uses
  %.not218 = icmp samesign ult i32 %i.ot, %i.cv
  %spec.store.select = select i1 %.not218, i32 %i.ot, i32 0
  %i.ou = zext nneg i32 %spec.store.select to i64
  %i.ov = mul nuw nsw i64 %i.mq, %i.ou
  %scevgep = getelementptr nuw i8, ptr %.0191, i64 %i.ov
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i64 %i.mq, i1 false), !tbaa !84
  br label %.loopexit27

bb.cc:                                            ; preds = %.thread
  br i1 %.not209, label %.preheader28.preheader, label %bb.cd

.preheader28.preheader:                           ; preds = %bb.cc
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !82
  %.pre106 = load ptr, ptr %i.d, align 8, !tbaa !85
  br label %.preheader28

bb.cd:                                            ; preds = %bb.cc
  %i.ow = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0)
  %i.ox = trunc nuw i32 %i.ow to i16              ; 3 uses
  %i.oy = lshr i16 %i.ox, 10
  %i.oz = and i16 %i.oy, 31
  %.lhs.trunc.i285 = mul nuw nsw i16 %i.oz, 255
  %i.pa = udiv i16 %.lhs.trunc.i285, 31
  %i.pb = trunc nuw i16 %i.pa to i8
  store i8 %i.pb, ptr %i.a, align 4, !tbaa !84
  %i.pc = lshr i16 %i.ox, 5
  %i.pd = insertelement <2 x i16> poison, i16 %i.pc, i64 0
  %i.pe = insertelement <2 x i16> %i.pd, i16 %i.ox, i64 1
  %i.pf = and <2 x i16> %i.pe, splat (i16 31)
  %i.pg = mul nuw nsw <2 x i16> %i.pf, splat (i16 255)
  %i.ph = udiv <2 x i16> %i.pg, splat (i16 31)
  %7 = trunc <2 x i16> %i.ph to <2 x i8>          ; 2 uses
  %i.pi = extractelement <2 x i8> %7, i64 0
  store i8 %i.pi, ptr %i.mn, align 1, !tbaa !84
  %i.pj = extractelement <2 x i8> %7, i64 1
  store i8 %i.pj, ptr %i.mo, align 2, !tbaa !84
  br label %.loopexit27

.preheader28:                                     ; preds = %.preheader28.preheader, %_ZL10stbi__get8P13stbi__context.exit293
  %i.pk = phi ptr [ %.pre106, %.preheader28.preheader ], [ %i.qg, %_ZL10stbi__get8P13stbi__context.exit293 ] ; 3 uses
  %i.pl = phi ptr [ %.pre, %.preheader28.preheader ], [ %i.qh, %_ZL10stbi__get8P13stbi__context.exit293 ] ; 4 uses
  %indvars.iv72 = phi i64 [ 0, %.preheader28.preheader ], [ %indvars.iv.next73, %_ZL10stbi__get8P13stbi__context.exit293 ] ; 2 uses
  %i.pm = icmp ult ptr %i.pl, %i.pk
  br i1 %i.pm, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %.preheader28
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pl, i64 1 ; 2 uses
  store ptr %i.pn, ptr %i.b, align 8, !tbaa !82
  %i.po = load i8, ptr %i.pl, align 1, !tbaa !84
  br label %_ZL10stbi__get8P13stbi__context.exit293

bb.cf:                                            ; preds = %.preheader28
  %i.pp = load i32, ptr %i.mf, align 8, !tbaa !79
  %.not.i288 = icmp eq i32 %i.pp, 0
  br i1 %.not.i288, label %_ZL10stbi__get8P13stbi__context.exit293, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.pq = load ptr, ptr %i.mg, align 8, !tbaa !83
  %i.pr = load ptr, ptr %i.mh, align 8, !tbaa !77
  %i.ps = load i32, ptr %i.mj, align 4, !tbaa !78
  %i.pt = tail call noundef i32 %i.pq(ptr noundef %i.pr, ptr noundef nonnull %i.mi, i32 noundef %i.ps), !inline_history !12 ; 2 uses
  %i.pu = load ptr, ptr %i.b, align 8, !tbaa !82
  %i.pv = load ptr, ptr %i.mk, align 8, !tbaa !81
  %i.pw = ptrtoint ptr %i.pu to i64
  %i.px = ptrtoint ptr %i.pv to i64
  %i.py = sub i64 %i.pw, %i.px
  %i.pz = trunc i64 %i.py to i32
  %i.qa = load i32, ptr %i.ml, align 8, !tbaa !80
  %i.qb = add nsw i32 %i.qa, %i.pz
  store i32 %i.qb, ptr %i.ml, align 8, !tbaa !80
  %i.qc = icmp eq i32 %i.pt, 0
  br i1 %i.qc, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store i32 0, ptr %i.mf, align 8, !tbaa !79
  store i8 0, ptr %i.mi, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i290

bb.ci:                                            ; preds = %bb.cg
  %i.qd = sext i32 %i.pt to i64
  %i.qe = getelementptr inbounds i8, ptr %i.mi, i64 %i.qd
  %.pre.i289 = load i8, ptr %i.mi, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i290

_ZL19stbi__refill_bufferP13stbi__context.exit.i290: ; preds = %bb.ci, %bb.ch
  %i.qf = phi i8 [ 0, %bb.ch ], [ %.pre.i289, %bb.ci ]
  %.sink.i.i291 = phi ptr [ %i.mm, %bb.ch ], [ %i.qe, %bb.ci ] ; 2 uses
  store ptr %.sink.i.i291, ptr %i.d, align 8, !tbaa !85
  store ptr %i.mm, ptr %i.b, align 8, !tbaa !82
  br label %_ZL10stbi__get8P13stbi__context.exit293

_ZL10stbi__get8P13stbi__context.exit293:          ; preds = %bb.ce, %bb.cf, %_ZL19stbi__refill_bufferP13stbi__context.exit.i290
  %i.qg = phi ptr [ %i.pk, %bb.ce ], [ %.sink.i.i291, %_ZL19stbi__refill_bufferP13stbi__context.exit.i290 ], [ %i.pk, %bb.cf ]
  %i.qh = phi ptr [ %i.pn, %bb.ce ], [ %i.mm, %_ZL19stbi__refill_bufferP13stbi__context.exit.i290 ], [ %i.pl, %bb.cf ]
  %.0.i292 = phi i8 [ %i.po, %bb.ce ], [ %i.qf, %_ZL19stbi__refill_bufferP13stbi__context.exit.i290 ], [ 0, %bb.cf ]
  %i.qi = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv72
  store i8 %.0.i292, ptr %i.qi, align 1, !tbaa !84
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %exitcond77.not = icmp eq i64 %indvars.iv.next73, %wide.trip.count76
  br i1 %exitcond77.not, label %.loopexit27, label %.preheader28, !llvm.loop !831

.loopexit27:                                      ; preds = %_ZL10stbi__get8P13stbi__context.exit293, %.loopexit27.loopexit, %bb.bt, %bb.cd
  %.118124 = phi i32 [ %.118123, %.loopexit27.loopexit ], [ %.118123, %bb.cd ], [ 1, %bb.bt ], [ %.118123, %_ZL10stbi__get8P13stbi__context.exit293 ]
  %.118322 = phi i32 [ %.118321, %.loopexit27.loopexit ], [ %.118321, %bb.cd ], [ %.018241, %bb.bt ], [ %.118321, %_ZL10stbi__get8P13stbi__context.exit293 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep82, ptr noundef nonnull align 4 dereferenceable(1) %i.a, i64 %i.mq, i1 false), !tbaa !84
  %i.qj = add nsw i32 %.118322, -1
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count89
  br i1 %exitcond90.not, label %._crit_edge, label %bb.bl, !llvm.loop !832

._crit_edge:                                      ; preds = %.loopexit27, %.loopexit31
  %.not211.not = icmp eq i8 %i.gs, 0
  %i.qk = icmp ne i32 %i.ee, 0
  %or.cond56 = and i1 %.not211.not, %i.qk
  br i1 %or.cond56, label %.lr.ph52, label %.loopexit26

.lr.ph52:                                         ; preds = %._crit_edge
  %i.ql = mul nuw nsw i32 %i.ed, %.0193.ph        ; 10 uses
  %.not59 = icmp eq i32 %i.ed, 0
  br i1 %.not59, label %.loopexit26, label %.lr.ph49.preheader

.lr.ph49.preheader:                               ; preds = %.lr.ph52
  %i.qm = add nsw i32 %i.ee, -1                   ; 2 uses
  %i.qn = mul i32 %i.ed, %i.qm
  %i.qo = mul i32 %i.qn, %.0193.ph
  %i.qp = lshr i32 %i.qm, 1
  %smin = tail call i32 @llvm.smin.i32(i32 %i.ql, i32 1)
  %i.qq = sub nsw i32 %i.ql, %smin
  %narrow = add nuw nsw i32 %i.qq, 1
  %i.qr = zext nneg i32 %narrow to i64            ; 2 uses
  %scevgep169 = getelementptr i8, ptr %i.hl, i64 %i.qr
  %scevgep172 = getelementptr i8, ptr %i.hl, i64 %i.qr
  %smin174 = tail call i32 @llvm.smin.i32(i32 %i.ql, i32 1)
  %i.qs = sub nsw i32 %i.ql, %smin174             ; 3 uses
  %narrow190 = add nuw nsw i32 %i.qs, 1
  %i.qt = zext nneg i32 %narrow190 to i64         ; 5 uses
  %min.iters.check = icmp ult i32 %i.qs, 3
  %min.iters.check175 = icmp ult i32 %i.qs, 31
  %i.qu = and i64 %i.qt, 28
  %n.vec = and i64 %i.qt, 2147483616              ; 6 uses
  %i.qv = trunc nuw nsw i64 %n.vec to i32
  %i.qw = sub nsw i32 %i.ql, %i.qv
  %cmp.n = icmp eq i64 %n.vec, %i.qt
  %min.epilog.iters.check = icmp eq i64 %i.qu, 0
  %n.vec181 = and i64 %i.qt, 2147483644           ; 5 uses
  %i.qx = trunc nuw nsw i64 %n.vec181 to i32
  %i.qy = sub nsw i32 %i.ql, %i.qx
  %cmp.n186 = icmp eq i64 %n.vec181, %i.qt
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph49.preheader, %._crit_edge50
  %indvars.iv97 = phi i32 [ 0, %.lr.ph49.preheader ], [ %indvars.iv.next98, %._crit_edge50 ] ; 3 uses
  %indvars.iv93 = phi i32 [ %i.qo, %.lr.ph49.preheader ], [ %indvars.iv.next94, %._crit_edge50 ] ; 3 uses
  %.351 = phi i32 [ 0, %.lr.ph49.preheader ], [ %i.rr, %._crit_edge50 ] ; 2 uses
  %i.qz = sext i32 %indvars.iv93 to i64           ; 6 uses
  %i.ra = zext i32 %indvars.iv97 to i64           ; 6 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.rb = sext i32 %indvars.iv93 to i64           ; 2 uses
  %scevgep173 = getelementptr i8, ptr %scevgep172, i64 %i.rb
  %scevgep171 = getelementptr i8, ptr %i.hl, i64 %i.rb
  %i.rc = zext i32 %indvars.iv97 to i64           ; 2 uses
  %scevgep170 = getelementptr i8, ptr %scevgep169, i64 %i.rc
  %scevgep168 = getelementptr nuw i8, ptr %i.hl, i64 %i.rc
  %bound0 = icmp ult ptr %scevgep168, %scevgep173
  %bound1 = icmp ult ptr %scevgep171, %scevgep170
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check175, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.rd = add nuw nsw i64 %n.vec, %i.ra
  %i.re = add nsw i64 %n.vec, %i.qz
  %invariant.gep = getelementptr i8, ptr %i.hl, i64 %i.ra
  %invariant.gep209 = getelementptr i8, ptr %i.hl, i64 %i.qz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 3 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %gep, align 1, !tbaa !84, !alias.scope !842, !noalias !843
  %wide.load176 = load <16 x i8>, ptr %i.rf, align 1, !tbaa !84, !alias.scope !842, !noalias !843
  %gep210 = getelementptr i8, ptr %invariant.gep209, i64 %index ; 3 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %gep210, i64 16 ; 2 uses
  %wide.load177 = load <16 x i8>, ptr %gep210, align 1, !tbaa !84, !alias.scope !843
  %wide.load178 = load <16 x i8>, ptr %i.rg, align 1, !tbaa !84, !alias.scope !843
  store <16 x i8> %wide.load177, ptr %gep, align 1, !tbaa !84, !alias.scope !842, !noalias !843
  store <16 x i8> %wide.load178, ptr %i.rf, align 1, !tbaa !84, !alias.scope !842, !noalias !843
  store <16 x i8> %wide.load, ptr %gep210, align 1, !tbaa !84, !alias.scope !843
  store <16 x i8> %wide.load176, ptr %i.rg, align 1, !tbaa !84, !alias.scope !843
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.rh = icmp eq i64 %index.next, %n.vec
  br i1 %i.rh, label %middle.block, label %vector.body, !llvm.loop !836

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge50, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !112

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ri = add nuw nsw i64 %n.vec181, %i.ra
  %i.rj = add nsw i64 %n.vec181, %i.qz
  %invariant.gep211 = getelementptr i8, ptr %i.hl, i64 %i.ra
  %invariant.gep213 = getelementptr i8, ptr %i.hl, i64 %i.qz
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index182 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next185, %vec.epilog.vector.body ] ; 3 uses
  %gep212 = getelementptr i8, ptr %invariant.gep211, i64 %index182 ; 2 uses
  %wide.load183 = load <4 x i8>, ptr %gep212, align 1, !tbaa !84, !alias.scope !842, !noalias !843
  %gep214 = getelementptr i8, ptr %invariant.gep213, i64 %index182 ; 2 uses
  %wide.load184 = load <4 x i8>, ptr %gep214, align 1, !tbaa !84, !alias.scope !843
  store <4 x i8> %wide.load184, ptr %gep212, align 1, !tbaa !84, !alias.scope !842, !noalias !843
  store <4 x i8> %wide.load183, ptr %gep214, align 1, !tbaa !84, !alias.scope !843
  %index.next185 = add nuw i64 %index182, 4       ; 2 uses
  %i.rk = icmp eq i64 %index.next185, %n.vec181
  br i1 %i.rk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !837

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n186, label %._crit_edge50, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv99.ph = phi i64 [ %i.ra, %iter.check ], [ %i.ra, %vector.memcheck ], [ %i.rd, %vec.epilog.iter.check ], [ %i.ri, %vec.epilog.middle.block ]
  %indvars.iv95.ph = phi i64 [ %i.qz, %iter.check ], [ %i.qz, %vector.memcheck ], [ %i.re, %vec.epilog.iter.check ], [ %i.rj, %vec.epilog.middle.block ]
  %.319045.ph = phi i32 [ %i.ql, %iter.check ], [ %i.ql, %vector.memcheck ], [ %i.qw, %vec.epilog.iter.check ], [ %i.qy, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %vec.epilog.scalar.ph ], [ %indvars.iv99.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
end_hunk_0
