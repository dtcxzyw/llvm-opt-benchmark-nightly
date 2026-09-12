Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/stbimage?download=true
inline.NumInlined: 826
inline.NumDeleted: 152
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZL14stbi__tga_loadP13stbi__contextPiS1_S1_iP17stbi__result_info:bb.a
  %i.jg = getelementptr inbounds i8, ptr %i.hl, i64 %i.jf
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jg, ptr align 1 %i.jb, i64 %i.if, i1 false)
  store ptr %i.jc, ptr %i.b, align 8, !tbaa !30
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.us

_ZL10stbi__getnP13stbi__contextPhi.exit.us:       ; preds = %bb.av, %..thread_crit_edge.i264.us
  %i.jh = phi ptr [ %i.jc, %bb.av ], [ %i.jb, %..thread_crit_edge.i264.us ] ; 3 uses
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
  store ptr %i.ji, ptr %i.b, align 8, !tbaa !30
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.1

_ZL10stbi__getnP13stbi__contextPhi.exit.us.1:     ; preds = %bb.aw, %_ZL10stbi__getnP13stbi__contextPhi.exit.us
  %i.jo = phi ptr [ %i.ji, %bb.aw ], [ %i.jh, %_ZL10stbi__getnP13stbi__contextPhi.exit.us ] ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.if ; 3 uses
  %.not32.i.us.2 = icmp ugt ptr %i.jp, %.pre35.i.us
  br i1 %.not32.i.us.2, label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.2, label %bb.ax

bb.ax:                                            ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us.1
  %i.jq = trunc i64 %indvars.iv to i32
  %i.jr = or disjoint i32 %i.jq, 2
  %i.js = mul i32 %i.ic, %i.jr
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds i8, ptr %i.hl, i64 %i.jt
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ju, ptr align 1 %i.jo, i64 %i.if, i1 false)
  store ptr %i.jp, ptr %i.b, align 8, !tbaa !30
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.2

_ZL10stbi__getnP13stbi__contextPhi.exit.us.2:     ; preds = %bb.ax, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.1
  %i.jv = phi ptr [ %i.jp, %bb.ax ], [ %i.jo, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.1 ] ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.if ; 3 uses
  %.not32.i.us.3 = icmp ugt ptr %i.jw, %.pre35.i.us
  br i1 %.not32.i.us.3, label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.3, label %bb.ay

bb.ay:                                            ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us.2
  %i.jx = trunc i64 %indvars.iv to i32
  %i.jy = or disjoint i32 %i.jx, 3
  %i.jz = mul i32 %i.ic, %i.jy
  %i.ka = sext i32 %i.jz to i64
  %i.kb = getelementptr inbounds i8, ptr %i.hl, i64 %i.ka
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kb, ptr align 1 %i.jv, i64 %i.if, i1 false)
  store ptr %i.jw, ptr %i.b, align 8, !tbaa !30
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.3

_ZL10stbi__getnP13stbi__contextPhi.exit.us.3:     ; preds = %bb.ay, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.2
  %i.kc = phi ptr [ %i.jw, %bb.ay ], [ %i.jv, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.2 ] ; 2 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit32.loopexit191.unr-lcssa, label %..thread_crit_edge.i264.us, !llvm.loop !290

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZL10stbi__getnP13stbi__contextPhi.exit
  %.018933 = phi i32 [ %i.la, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ 0, %.lr.ph ] ; 3 uses
  %i.kd = xor i32 %.018933, -1
  %i.ke = add nsw i32 %i.ee, %i.kd
  %i.kf = select i1 %.not209.not, i32 %i.ke, i32 %.018933
  %i.kg = mul i32 %i.ic, %i.kf
  %i.kh = sext i32 %i.kg to i64
  %i.ki = getelementptr inbounds i8, ptr %i.hl, i64 %i.kh ; 3 uses
  %i.kj = load ptr, ptr %i.id, align 8, !tbaa !31 ; 2 uses
  %.not.i262 = icmp eq ptr %i.kj, null
  br i1 %.not.i262, label %..thread_crit_edge.i264, label %bb.az

..thread_crit_edge.i264:                          ; preds = %.lr.ph.split
  %.pre.i266 = load ptr, ptr %i.b, align 8, !tbaa !30
  %.pre35.i = load ptr, ptr %i.d, align 8, !tbaa !33
  br label %.thread.i263

bb.az:                                            ; preds = %.lr.ph.split
  %i.kk = load ptr, ptr %i.d, align 8, !tbaa !33  ; 2 uses
  %i.kl = load ptr, ptr %i.b, align 8, !tbaa !30  ; 3 uses
  %i.km = ptrtoint ptr %i.kk to i64
  %i.kn = ptrtoint ptr %i.kl to i64
  %i.ko = sub i64 %i.km, %i.kn                    ; 2 uses
  %i.kp = trunc i64 %i.ko to i32                  ; 2 uses
  %i.kq = icmp sgt i32 %i.ic, %i.kp
  br i1 %i.kq, label %bb.ba, label %.thread.i263

bb.ba:                                            ; preds = %bb.az
  %sext.i = shl i64 %i.ko, 32
  %i.kr = ashr exact i64 %sext.i, 32              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ki, ptr align 1 %i.kl, i64 %i.kr, i1 false)
  %i.ks = load ptr, ptr %i.ie, align 8, !tbaa !25
  %i.kt = getelementptr inbounds i8, ptr %i.ki, i64 %i.kr
  %i.ku = sub nsw i32 %i.ic, %i.kp
  %i.kv = tail call noundef i32 %i.kj(ptr noundef %i.ks, ptr noundef nonnull %i.kt, i32 noundef %i.ku), !inline_history !103 ; 0 uses
  %i.kw = load ptr, ptr %i.d, align 8, !tbaa !33
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.sink.split

.thread.i263:                                     ; preds = %bb.az, %..thread_crit_edge.i264
  %i.kx = phi ptr [ %.pre35.i, %..thread_crit_edge.i264 ], [ %i.kk, %bb.az ]
  %i.ky = phi ptr [ %.pre.i266, %..thread_crit_edge.i264 ], [ %i.kl, %bb.az ] ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.if ; 2 uses
  %.not32.i = icmp ugt ptr %i.kz, %i.kx
  br i1 %.not32.i, label %_ZL10stbi__getnP13stbi__contextPhi.exit, label %bb.bb

bb.bb:                                            ; preds = %.thread.i263
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ki, ptr align 1 %i.ky, i64 %i.if, i1 false)
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.sink.split

_ZL10stbi__getnP13stbi__contextPhi.exit.sink.split: ; preds = %bb.bb, %bb.ba
  %.sink = phi ptr [ %i.kw, %bb.ba ], [ %i.kz, %bb.bb ]
  store ptr %.sink, ptr %i.b, align 8, !tbaa !30
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit

_ZL10stbi__getnP13stbi__contextPhi.exit:          ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.sink.split, %.thread.i263
  %i.la = add nuw nsw i32 %.018933, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.la, %i.ee
  br i1 %exitcond.not, label %.loopexit32, label %.lr.ph.split, !llvm.loop !291

bb.bc:                                            ; preds = %_ZL10stbi__skipP13stbi__contexti.exit
  br i1 %i.gt, label %bb.bd, label %.loopexit30

bb.bd:                                            ; preds = %bb.bc
  %i.lb = icmp eq i32 %i.cv, 0
  br i1 %i.lb, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  tail call void @free(ptr noundef nonnull %i.hl) #40
  %i.lc = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.84, ptr %i.lc, align 8, !tbaa !19
  br label %bb.cu

bb.bf:                                            ; preds = %bb.bd
  %i.ld = icmp eq i32 %i.cu, 0
  br i1 %i.ld, label %_ZL10stbi__skipP13stbi__contexti.exit272, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !31
  %.not.i267 = icmp eq ptr %i.lf, null
  br i1 %.not.i267, label %..thread_crit_edge.i269, label %bb.bh

..thread_crit_edge.i269:                          ; preds = %bb.bg
  %.pre.i271 = load ptr, ptr %i.b, align 8, !tbaa !30
  br label %.thread.i268

bb.bh:                                            ; preds = %bb.bg
  %i.lg = load ptr, ptr %i.d, align 8, !tbaa !33  ; 2 uses
  %i.lh = load ptr, ptr %i.b, align 8, !tbaa !30  ; 2 uses
  %i.li = ptrtoint ptr %i.lg to i64
  %i.lj = ptrtoint ptr %i.lh to i64
  %i.lk = sub i64 %i.li, %i.lj
  %i.ll = trunc i64 %i.lk to i32                  ; 2 uses
  %i.lm = icmp sgt i32 %i.cu, %i.ll
  br i1 %i.lm, label %bb.bi, label %.thread.i268

bb.bi:                                            ; preds = %bb.bh
  store ptr %i.lg, ptr %i.b, align 8, !tbaa !30
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !62
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !25
  %i.lr = sub nsw i32 %i.cu, %i.ll
  tail call void %i.lo(ptr noundef %i.lq, i32 noundef %i.lr), !inline_history !105
  br label %_ZL10stbi__skipP13stbi__contexti.exit272

.thread.i268:                                     ; preds = %bb.bh, %..thread_crit_edge.i269
  %i.ls = phi ptr [ %.pre.i271, %..thread_crit_edge.i269 ], [ %i.lh, %bb.bh ]
  %i.lt = zext nneg i32 %i.cu to i64
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.lt
  store ptr %i.lu, ptr %i.b, align 8, !tbaa !30
  br label %_ZL10stbi__skipP13stbi__contexti.exit272

_ZL10stbi__skipP13stbi__contexti.exit272:         ; preds = %bb.bf, %bb.bi, %.thread.i268
  %i.lv = mul nuw nsw i32 %i.cv, %.0195.ph        ; 2 uses
  %i.lw = zext nneg i32 %i.lv to i64
  %i.lx = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.lw) #42 ; 6 uses
  %.not210 = icmp eq ptr %i.lx, null
  br i1 %.not210, label %_ZL17stbi__malloc_mad2iii.exit.thread, label %bb.bj

_ZL17stbi__malloc_mad2iii.exit.thread:            ; preds = %_ZL10stbi__skipP13stbi__contexti.exit272
  tail call void @free(ptr noundef nonnull %i.hl) #40
  %i.ly = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.8, ptr %i.ly, align 8, !tbaa !19
  br label %bb.cu

bb.bj:                                            ; preds = %_ZL10stbi__skipP13stbi__contexti.exit272
  br i1 %.not211, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.lz = icmp eq i8 %.0195.ph.shrunk, 3
  br i1 %i.lz, label %.preheader29, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void @_ZN4pbrt8LogFatalIJRA21_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 5880, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(21) @.str.85) #41
  unreachable

.preheader29:                                     ; preds = %bb.bk, %.preheader29
  %.017935 = phi ptr [ %i.ml, %.preheader29 ], [ %i.lx, %bb.bk ] ; 4 uses
  %.119034 = phi i32 [ %i.mm, %.preheader29 ], [ 0, %bb.bk ]
  %5 = getelementptr inbounds nuw i8, ptr %.017935, i64 1
  %i.ma = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 3 uses
  %6 = lshr i32 %i.ma, 10
  %7 = lshr i32 %i.ma, 5
  %8 = trunc nuw nsw i32 %6 to i16
  %i.mb = and i16 %8, 31
  %.lhs.trunc.i = mul nuw nsw i16 %i.mb, 255
  %i.mc = udiv i16 %.lhs.trunc.i, 31
  %i.md = trunc nuw i16 %i.mc to i8
  store i8 %i.md, ptr %.017935, align 1, !tbaa !32
  %9 = trunc nuw i32 %i.ma to i16
  %10 = trunc nuw nsw i32 %7 to i16
  %11 = insertelement <2 x i16> poison, i16 %10, i64 0
  %12 = insertelement <2 x i16> %11, i16 %9, i64 1
  %i.me = and <2 x i16> %12, splat (i16 31)
  %i.mf = mul nuw nsw <2 x i16> %i.me, splat (i16 255)
  %i.mg = udiv <2 x i16> %i.mf, splat (i16 31)
  %i.mh = trunc <2 x i16> %i.mg to <2 x i8>       ; 2 uses
  %i.mi = extractelement <2 x i8> %i.mh, i64 0
  store i8 %i.mi, ptr %5, align 1, !tbaa !32
  %i.mj = getelementptr inbounds nuw i8, ptr %.017935, i64 2
  %i.mk = extractelement <2 x i8> %i.mh, i64 1
  store i8 %i.mk, ptr %i.mj, align 1, !tbaa !32
  %i.ml = getelementptr inbounds nuw i8, ptr %.017935, i64 3
  %i.mm = add nuw nsw i32 %.119034, 1             ; 2 uses
  %exitcond70.not = icmp eq i32 %i.mm, %i.cv
  br i1 %exitcond70.not, label %.loopexit30, label %.preheader29, !llvm.loop !292

bb.bm:                                            ; preds = %bb.bj
  %i.mn = tail call fastcc noundef i32 @_ZL10stbi__getnP13stbi__contextPhi(ptr noundef %0, ptr noundef %i.lx, i32 noundef %i.lv)
  %.not212 = icmp eq i32 %i.mn, 0
  br i1 %.not212, label %bb.bn, label %.loopexit30

bb.bn:                                            ; preds = %bb.bm
  tail call void @free(ptr noundef nonnull %i.hl) #40
  tail call void @free(ptr noundef nonnull %i.lx) #40
  %i.mo = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.84, ptr %i.mo, align 8, !tbaa !19
  br label %bb.cu

.loopexit30:                                      ; preds = %.preheader29, %bb.bm, %bb.bc
  %.0193 = phi ptr [ null, %bb.bc ], [ %i.lx, %bb.bm ], [ %i.lx, %.preheader29 ] ; 3 uses
  %.not57 = icmp eq i32 %i.hi, 0
  br i1 %.not57, label %._crit_edge, label %.lr.ph43

.lr.ph43:                                         ; preds = %.loopexit30
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 12 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 7 uses
  %i.mx = icmp eq i8 %.0195.ph.shrunk, 3
  %i.my = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.mz = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.na = icmp eq i8 %.0.i245, 8
  %i.nb = zext nneg i8 %.0195.ph.shrunk to i64    ; 3 uses
  %wide.trip.count88 = zext nneg i32 %i.hi to i64
  %wide.trip.count75 = zext nneg i8 %.0195.ph.shrunk to i64
  br label %bb.bo

bb.bo:                                            ; preds = %.lr.ph43, %.loopexit26
  %indvars.iv86 = phi i64 [ 0, %.lr.ph43 ], [ %indvars.iv.next87, %.loopexit26 ] ; 2 uses
  %.not218.not = phi i1 [ true, %.lr.ph43 ], [ false, %.loopexit26 ]
  %.018241 = phi i32 [ 0, %.lr.ph43 ], [ %.118323, %.loopexit26 ] ; 2 uses
  %.018440 = phi i32 [ 0, %.lr.ph43 ], [ %i.qq, %.loopexit26 ] ; 4 uses
  %i.nc = trunc nuw nsw i64 %indvars.iv86 to i32
  %i.nd = mul i32 %.0195.ph, %i.nc
  %i.ne = zext i32 %i.nd to i64
  %scevgep81 = getelementptr i8, ptr %i.hl, i64 %i.ne
  br i1 %i.gq, label %bb.bp, label %.thread

bb.bp:                                            ; preds = %bb.bo
  %i.nf = icmp eq i32 %.018440, 0
  br i1 %i.nf, label %bb.bq, label %bb.bw

bb.bq:                                            ; preds = %bb.bp
  %i.ng = load ptr, ptr %i.b, align 8, !tbaa !30  ; 3 uses
  %i.nh = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.ni = icmp ult ptr %i.ng, %i.nh
  br i1 %i.ni, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ng, i64 1
  store ptr %i.nj, ptr %i.b, align 8, !tbaa !30
  %i.nk = load i8, ptr %i.ng, align 1, !tbaa !32
  br label %_ZL10stbi__get8P13stbi__context.exit280

bb.bs:                                            ; preds = %bb.bq
  %i.nl = load i32, ptr %i.mp, align 8, !tbaa !27
  %.not.i275 = icmp eq i32 %i.nl, 0
  br i1 %.not.i275, label %_ZL10stbi__get8P13stbi__context.exit280, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.nm = load ptr, ptr %i.mq, align 8, !tbaa !31
  %i.nn = load ptr, ptr %i.mr, align 8, !tbaa !25
  %i.no = load i32, ptr %i.mt, align 4, !tbaa !26
  %i.np = tail call noundef i32 %i.nm(ptr noundef %i.nn, ptr noundef nonnull %i.ms, i32 noundef %i.no), !inline_history !6 ; 2 uses
  %i.nq = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.nr = load ptr, ptr %i.mu, align 8, !tbaa !29
  %i.ns = ptrtoint ptr %i.nq to i64
  %i.nt = ptrtoint ptr %i.nr to i64
  %i.nu = sub i64 %i.ns, %i.nt
  %i.nv = trunc i64 %i.nu to i32
  %i.nw = load i32, ptr %i.mv, align 8, !tbaa !28
  %i.nx = add nsw i32 %i.nw, %i.nv
  store i32 %i.nx, ptr %i.mv, align 8, !tbaa !28
  %i.ny = icmp eq i32 %i.np, 0
  br i1 %i.ny, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  store i32 0, ptr %i.mp, align 8, !tbaa !27
  store i8 0, ptr %i.ms, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i277

bb.bv:                                            ; preds = %bb.bt
  %i.nz = sext i32 %i.np to i64
  %i.oa = getelementptr inbounds i8, ptr %i.ms, i64 %i.nz
  %.pre.i276 = load i8, ptr %i.ms, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i277

_ZL19stbi__refill_bufferP13stbi__context.exit.i277: ; preds = %bb.bv, %bb.bu
  %i.ob = phi i8 [ 0, %bb.bu ], [ %.pre.i276, %bb.bv ]
  %.sink.i.i278 = phi ptr [ %i.mw, %bb.bu ], [ %i.oa, %bb.bv ]
  store ptr %.sink.i.i278, ptr %i.d, align 8, !tbaa !33
  store ptr %i.mw, ptr %i.b, align 8, !tbaa !30
  br label %_ZL10stbi__get8P13stbi__context.exit280

_ZL10stbi__get8P13stbi__context.exit280:          ; preds = %bb.br, %bb.bs, %_ZL19stbi__refill_bufferP13stbi__context.exit.i277
  %.0.i279 = phi i8 [ %i.nk, %bb.br ], [ %i.ob, %_ZL19stbi__refill_bufferP13stbi__context.exit.i277 ], [ 0, %bb.bs ]
  %i.oc = zext i8 %.0.i279 to i32                 ; 2 uses
  %i.od = and i32 %i.oc, 127
  %i.oe = add nuw nsw i32 %i.od, 1
  %i.of = lshr i32 %i.oc, 7
  br label %.thread

bb.bw:                                            ; preds = %bb.bp
  %.not217 = icmp eq i32 %.018241, 0              ; 2 uses
  %brmerge = or i1 %.not217, %.not218.not
  %not..not217 = xor i1 %.not217, true
  %.mux = zext i1 %not..not217 to i32
  br i1 %brmerge, label %.thread, label %.loopexit26

.thread:                                          ; preds = %bb.bw, %bb.bo, %_ZL10stbi__get8P13stbi__context.exit280
  %.118322 = phi i32 [ %.mux, %bb.bw ], [ %i.of, %_ZL10stbi__get8P13stbi__context.exit280 ], [ %.018241, %bb.bo ] ; 3 uses
  %.118520 = phi i32 [ %.018440, %bb.bw ], [ %i.oe, %_ZL10stbi__get8P13stbi__context.exit280 ], [ %.018440, %bb.bo ] ; 3 uses
  br i1 %i.gt, label %bb.bx, label %bb.cf

bb.bx:                                            ; preds = %.thread
  br i1 %i.na, label %bb.by, label %bb.ce

bb.by:                                            ; preds = %bb.bx
  %i.og = load ptr, ptr %i.b, align 8, !tbaa !30  ; 3 uses
  %i.oh = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.oi = icmp ult ptr %i.og, %i.oh
  br i1 %i.oi, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.oj = getelementptr inbounds nuw i8, ptr %i.og, i64 1
  store ptr %i.oj, ptr %i.b, align 8, !tbaa !30
  %i.ok = load i8, ptr %i.og, align 1, !tbaa !32
  br label %_ZL10stbi__get8P13stbi__context.exit286

bb.ca:                                            ; preds = %bb.by
  %i.ol = load i32, ptr %i.mp, align 8, !tbaa !27
  %.not.i281 = icmp eq i32 %i.ol, 0
  br i1 %.not.i281, label %_ZL10stbi__get8P13stbi__context.exit286, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.om = load ptr, ptr %i.mq, align 8, !tbaa !31
  %i.on = load ptr, ptr %i.mr, align 8, !tbaa !25
  %i.oo = load i32, ptr %i.mt, align 4, !tbaa !26
  %i.op = tail call noundef i32 %i.om(ptr noundef %i.on, ptr noundef nonnull %i.ms, i32 noundef %i.oo), !inline_history !6 ; 2 uses
  %i.oq = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.or = load ptr, ptr %i.mu, align 8, !tbaa !29
  %i.os = ptrtoint ptr %i.oq to i64
  %i.ot = ptrtoint ptr %i.or to i64
  %i.ou = sub i64 %i.os, %i.ot
  %i.ov = trunc i64 %i.ou to i32
  %i.ow = load i32, ptr %i.mv, align 8, !tbaa !28
  %i.ox = add nsw i32 %i.ow, %i.ov
  store i32 %i.ox, ptr %i.mv, align 8, !tbaa !28
  %i.oy = icmp eq i32 %i.op, 0
  br i1 %i.oy, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %i.mp, align 8, !tbaa !27
  store i8 0, ptr %i.ms, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i283

bb.cd:                                            ; preds = %bb.cb
  %i.oz = sext i32 %i.op to i64
  %i.pa = getelementptr inbounds i8, ptr %i.ms, i64 %i.oz
  %.pre.i282 = load i8, ptr %i.ms, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i283

_ZL19stbi__refill_bufferP13stbi__context.exit.i283: ; preds = %bb.cd, %bb.cc
  %i.pb = phi i8 [ 0, %bb.cc ], [ %.pre.i282, %bb.cd ]
  %.sink.i.i284 = phi ptr [ %i.mw, %bb.cc ], [ %i.pa, %bb.cd ]
  store ptr %.sink.i.i284, ptr %i.d, align 8, !tbaa !33
  store ptr %i.mw, ptr %i.b, align 8, !tbaa !30
  br label %_ZL10stbi__get8P13stbi__context.exit286

_ZL10stbi__get8P13stbi__context.exit286:          ; preds = %bb.bz, %bb.ca, %_ZL19stbi__refill_bufferP13stbi__context.exit.i283
  %.0.i285 = phi i8 [ %i.ok, %bb.bz ], [ %i.pb, %_ZL19stbi__refill_bufferP13stbi__context.exit.i283 ], [ 0, %bb.ca ]
  %i.pc = zext i8 %.0.i285 to i32
  br label %.loopexit26.loopexit

bb.ce:                                            ; preds = %bb.bx
  %i.pd = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0)
  br label %.loopexit26.loopexit

.loopexit26.loopexit:                             ; preds = %bb.ce, %_ZL10stbi__get8P13stbi__context.exit286
  %i.pe = phi i32 [ %i.pc, %_ZL10stbi__get8P13stbi__context.exit286 ], [ %i.pd, %bb.ce ] ; 2 uses
  %.not220 = icmp samesign ult i32 %i.pe, %i.cv
  %spec.store.select = select i1 %.not220, i32 %i.pe, i32 0
  %i.pf = zext nneg i32 %spec.store.select to i64
  %i.pg = mul nuw nsw i64 %i.nb, %i.pf
  %scevgep = getelementptr nuw i8, ptr %.0193, i64 %i.pg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i64 %i.nb, i1 false), !tbaa !32
  br label %.loopexit26

bb.cf:                                            ; preds = %.thread
  br i1 %.not211, label %.preheader27.preheader, label %bb.cg

.preheader27.preheader:                           ; preds = %bb.cf
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !30
  %.pre105 = load ptr, ptr %i.d, align 8, !tbaa !33
  br label %.preheader27

bb.cg:                                            ; preds = %bb.cf
  br i1 %i.mx, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  tail call void @_ZN4pbrt8LogFatalIJRA21_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 5929, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(21) @.str.85) #41
  unreachable

bb.ci:                                            ; preds = %bb.cg
  %i.ph = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 3 uses
  %13 = lshr i32 %i.ph, 10
  %14 = lshr i32 %i.ph, 5
  %15 = trunc nuw nsw i32 %13 to i16
  %i.pi = and i16 %15, 31
  %.lhs.trunc.i287 = mul nuw nsw i16 %i.pi, 255
  %i.pj = udiv i16 %.lhs.trunc.i287, 31
  %i.pk = trunc nuw i16 %i.pj to i8
  store i8 %i.pk, ptr %i.a, align 4, !tbaa !32
  %16 = trunc nuw i32 %i.ph to i16
  %17 = trunc nuw nsw i32 %14 to i16
  %18 = insertelement <2 x i16> poison, i16 %17, i64 0
  %19 = insertelement <2 x i16> %18, i16 %16, i64 1
  %i.pl = and <2 x i16> %19, splat (i16 31)
  %i.pm = mul nuw nsw <2 x i16> %i.pl, splat (i16 255)
  %i.pn = udiv <2 x i16> %i.pm, splat (i16 31)
  %i.po = trunc <2 x i16> %i.pn to <2 x i8>       ; 2 uses
  %i.pp = extractelement <2 x i8> %i.po, i64 0
  store i8 %i.pp, ptr %i.my, align 1, !tbaa !32
  %i.pq = extractelement <2 x i8> %i.po, i64 1
  store i8 %i.pq, ptr %i.mz, align 2, !tbaa !32
  br label %.loopexit26

.preheader27:                                     ; preds = %.preheader27.preheader, %_ZL10stbi__get8P13stbi__context.exit295
  %i.pr = phi ptr [ %.pre105, %.preheader27.preheader ], [ %i.qn, %_ZL10stbi__get8P13stbi__context.exit295 ] ; 3 uses
  %i.ps = phi ptr [ %.pre, %.preheader27.preheader ], [ %i.qo, %_ZL10stbi__get8P13stbi__context.exit295 ] ; 4 uses
  %indvars.iv71 = phi i64 [ 0, %.preheader27.preheader ], [ %indvars.iv.next72, %_ZL10stbi__get8P13stbi__context.exit295 ] ; 2 uses
  %i.pt = icmp ult ptr %i.ps, %i.pr
  br i1 %i.pt, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %.preheader27
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ps, i64 1 ; 2 uses
  store ptr %i.pu, ptr %i.b, align 8, !tbaa !30
  %i.pv = load i8, ptr %i.ps, align 1, !tbaa !32
  br label %_ZL10stbi__get8P13stbi__context.exit295

bb.ck:                                            ; preds = %.preheader27
  %i.pw = load i32, ptr %i.mp, align 8, !tbaa !27
  %.not.i290 = icmp eq i32 %i.pw, 0
  br i1 %.not.i290, label %_ZL10stbi__get8P13stbi__context.exit295, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.px = load ptr, ptr %i.mq, align 8, !tbaa !31
  %i.py = load ptr, ptr %i.mr, align 8, !tbaa !25
  %i.pz = load i32, ptr %i.mt, align 4, !tbaa !26
  %i.qa = tail call noundef i32 %i.px(ptr noundef %i.py, ptr noundef nonnull %i.ms, i32 noundef %i.pz), !inline_history !6 ; 2 uses
  %i.qb = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.qc = load ptr, ptr %i.mu, align 8, !tbaa !29
  %i.qd = ptrtoint ptr %i.qb to i64
  %i.qe = ptrtoint ptr %i.qc to i64
  %i.qf = sub i64 %i.qd, %i.qe
  %i.qg = trunc i64 %i.qf to i32
  %i.qh = load i32, ptr %i.mv, align 8, !tbaa !28
  %i.qi = add nsw i32 %i.qh, %i.qg
  store i32 %i.qi, ptr %i.mv, align 8, !tbaa !28
  %i.qj = icmp eq i32 %i.qa, 0
  br i1 %i.qj, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  store i32 0, ptr %i.mp, align 8, !tbaa !27
  store i8 0, ptr %i.ms, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i292

bb.cn:                                            ; preds = %bb.cl
  %i.qk = sext i32 %i.qa to i64
  %i.ql = getelementptr inbounds i8, ptr %i.ms, i64 %i.qk
  %.pre.i291 = load i8, ptr %i.ms, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i292

_ZL19stbi__refill_bufferP13stbi__context.exit.i292: ; preds = %bb.cn, %bb.cm
  %i.qm = phi i8 [ 0, %bb.cm ], [ %.pre.i291, %bb.cn ]
  %.sink.i.i293 = phi ptr [ %i.mw, %bb.cm ], [ %i.ql, %bb.cn ] ; 2 uses
  store ptr %.sink.i.i293, ptr %i.d, align 8, !tbaa !33
  store ptr %i.mw, ptr %i.b, align 8, !tbaa !30
  br label %_ZL10stbi__get8P13stbi__context.exit295

_ZL10stbi__get8P13stbi__context.exit295:          ; preds = %bb.cj, %bb.ck, %_ZL19stbi__refill_bufferP13stbi__context.exit.i292
  %i.qn = phi ptr [ %i.pr, %bb.cj ], [ %.sink.i.i293, %_ZL19stbi__refill_bufferP13stbi__context.exit.i292 ], [ %i.pr, %bb.ck ]
  %i.qo = phi ptr [ %i.pu, %bb.cj ], [ %i.mw, %_ZL19stbi__refill_bufferP13stbi__context.exit.i292 ], [ %i.ps, %bb.ck ]
  %.0.i294 = phi i8 [ %i.pv, %bb.cj ], [ %i.qm, %_ZL19stbi__refill_bufferP13stbi__context.exit.i292 ], [ 0, %bb.ck ]
  %i.qp = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv71
  store i8 %.0.i294, ptr %i.qp, align 1, !tbaa !32
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond76.not = icmp eq i64 %indvars.iv.next72, %wide.trip.count75
  br i1 %exitcond76.not, label %.loopexit26, label %.preheader27, !llvm.loop !293

.loopexit26:                                      ; preds = %_ZL10stbi__get8P13stbi__context.exit295, %.loopexit26.loopexit, %bb.bw, %bb.ci
  %.118323 = phi i32 [ %.118322, %.loopexit26.loopexit ], [ %.118322, %bb.ci ], [ 1, %bb.bw ], [ %.118322, %_ZL10stbi__get8P13stbi__context.exit295 ]
  %.118521 = phi i32 [ %.118520, %.loopexit26.loopexit ], [ %.118520, %bb.ci ], [ %.018440, %bb.bw ], [ %.118520, %_ZL10stbi__get8P13stbi__context.exit295 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep81, ptr noundef nonnull align 4 dereferenceable(1) %i.a, i64 %i.nb, i1 false), !tbaa !32
  %i.qq = add nsw i32 %.118521, -1
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %exitcond89.not = icmp eq i64 %indvars.iv.next87, %wide.trip.count88
  br i1 %exitcond89.not, label %._crit_edge, label %bb.bo, !llvm.loop !294

._crit_edge:                                      ; preds = %.loopexit26, %.loopexit30
  %.not213.not = icmp eq i8 %i.gs, 0
  %i.qr = icmp ne i32 %i.ee, 0
  %or.cond55 = and i1 %.not213.not, %i.qr
  br i1 %or.cond55, label %.lr.ph51, label %.loopexit25

.lr.ph51:                                         ; preds = %._crit_edge
  %i.qs = mul nuw nsw i32 %i.ed, %.0195.ph        ; 10 uses
  %.not58 = icmp eq i32 %i.ed, 0
  br i1 %.not58, label %.loopexit25, label %.lr.ph48.preheader

.lr.ph48.preheader:                               ; preds = %.lr.ph51
  %i.qt = add nsw i32 %i.ee, -1                   ; 2 uses
  %i.qu = mul i32 %i.ed, %i.qt
  %i.qv = mul i32 %i.qu, %.0195.ph
  %i.qw = lshr i32 %i.qt, 1
  %smin = tail call i32 @llvm.smin.i32(i32 %i.qs, i32 1)
  %i.qx = sub nsw i32 %i.qs, %smin
  %narrow = add nuw nsw i32 %i.qx, 1
  %i.qy = zext nneg i32 %narrow to i64            ; 2 uses
  %scevgep168 = getelementptr i8, ptr %i.hl, i64 %i.qy
  %scevgep171 = getelementptr i8, ptr %i.hl, i64 %i.qy
  %smin173 = tail call i32 @llvm.smin.i32(i32 %i.qs, i32 1)
  %i.qz = sub nsw i32 %i.qs, %smin173             ; 3 uses
  %narrow189 = add nuw nsw i32 %i.qz, 1
  %i.ra = zext nneg i32 %narrow189 to i64         ; 5 uses
  %min.iters.check = icmp ult i32 %i.qz, 7
  %min.iters.check174 = icmp ult i32 %i.qz, 63
  %i.rb = and i64 %i.ra, 56
  %n.vec = and i64 %i.ra, 2147483584              ; 6 uses
  %i.rc = trunc nuw nsw i64 %n.vec to i32
  %i.rd = sub nsw i32 %i.qs, %i.rc
  %cmp.n = icmp eq i64 %n.vec, %i.ra
  %min.epilog.iters.check = icmp eq i64 %i.rb, 0
  %n.vec180 = and i64 %i.ra, 2147483640           ; 5 uses
  %i.re = trunc nuw nsw i64 %n.vec180 to i32
  %i.rf = sub nsw i32 %i.qs, %i.re
  %cmp.n185 = icmp eq i64 %n.vec180, %i.ra
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph48.preheader, %._crit_edge49
  %indvars.iv96 = phi i32 [ 0, %.lr.ph48.preheader ], [ %indvars.iv.next97, %._crit_edge49 ] ; 3 uses
  %indvars.iv92 = phi i32 [ %i.qv, %.lr.ph48.preheader ], [ %indvars.iv.next93, %._crit_edge49 ] ; 3 uses
  %.350 = phi i32 [ 0, %.lr.ph48.preheader ], [ %i.ry, %._crit_edge49 ] ; 2 uses
  %i.rg = sext i32 %indvars.iv92 to i64           ; 6 uses
  %i.rh = zext i32 %indvars.iv96 to i64           ; 6 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ri = sext i32 %indvars.iv92 to i64           ; 2 uses
  %scevgep172 = getelementptr i8, ptr %scevgep171, i64 %i.ri
  %scevgep170 = getelementptr i8, ptr %i.hl, i64 %i.ri
  %i.rj = zext i32 %indvars.iv96 to i64           ; 2 uses
  %scevgep169 = getelementptr i8, ptr %scevgep168, i64 %i.rj
  %scevgep167 = getelementptr nuw i8, ptr %i.hl, i64 %i.rj
  %bound0 = icmp ult ptr %scevgep167, %scevgep172
  %bound1 = icmp ult ptr %scevgep170, %scevgep169
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check174, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.rk = add nuw nsw i64 %n.vec, %i.rh
  %i.rl = add nsw i64 %n.vec, %i.rg
  %invariant.gep = getelementptr i8, ptr %i.hl, i64 %i.rh
  %invariant.gep210 = getelementptr i8, ptr %i.hl, i64 %i.rg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 3 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %gep, i64 32 ; 2 uses
  %wide.load = load <32 x i8>, ptr %gep, align 1, !tbaa !32, !alias.scope !305, !noalias !306
  %wide.load175 = load <32 x i8>, ptr %i.rm, align 1, !tbaa !32, !alias.scope !305, !noalias !306
  %gep211 = getelementptr i8, ptr %invariant.gep210, i64 %index ; 3 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %gep211, i64 32 ; 2 uses
  %wide.load176 = load <32 x i8>, ptr %gep211, align 1, !tbaa !32, !alias.scope !306
  %wide.load177 = load <32 x i8>, ptr %i.rn, align 1, !tbaa !32, !alias.scope !306
  store <32 x i8> %wide.load176, ptr %gep, align 1, !tbaa !32, !alias.scope !305, !noalias !306
  store <32 x i8> %wide.load177, ptr %i.rm, align 1, !tbaa !32, !alias.scope !305, !noalias !306
  store <32 x i8> %wide.load, ptr %gep211, align 1, !tbaa !32, !alias.scope !306
  store <32 x i8> %wide.load175, ptr %i.rn, align 1, !tbaa !32, !alias.scope !306
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.ro = icmp eq i64 %index.next, %n.vec
  br i1 %i.ro, label %middle.block, label %vector.body, !llvm.loop !298

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge49, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !42

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.rp = add nuw nsw i64 %n.vec180, %i.rh
  %i.rq = add nsw i64 %n.vec180, %i.rg
  %invariant.gep212 = getelementptr i8, ptr %i.hl, i64 %i.rh
  %invariant.gep214 = getelementptr i8, ptr %i.hl, i64 %i.rg
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index181 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next184, %vec.epilog.vector.body ] ; 3 uses
  %gep213 = getelementptr i8, ptr %invariant.gep212, i64 %index181 ; 2 uses
  %wide.load182 = load <8 x i8>, ptr %gep213, align 1, !tbaa !32, !alias.scope !305, !noalias !306
  %gep215 = getelementptr i8, ptr %invariant.gep214, i64 %index181 ; 2 uses
  %wide.load183 = load <8 x i8>, ptr %gep215, align 1, !tbaa !32, !alias.scope !306
  store <8 x i8> %wide.load183, ptr %gep213, align 1, !tbaa !32, !alias.scope !305, !noalias !306
  store <8 x i8> %wide.load182, ptr %gep215, align 1, !tbaa !32, !alias.scope !306
  %index.next184 = add nuw i64 %index181, 8       ; 2 uses
  %i.rr = icmp eq i64 %index.next184, %n.vec180
  br i1 %i.rr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !299

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n185, label %._crit_edge49, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv98.ph = phi i64 [ %i.rh, %iter.check ], [ %i.rh, %vector.memcheck ], [ %i.rk, %vec.epilog.iter.check ], [ %i.rp, %vec.epilog.middle.block ]
end_hunk_0
