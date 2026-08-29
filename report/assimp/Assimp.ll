Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/Assimp?download=true
inline.NumInlined: 1626
inline.NumDeleted: 658
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZL20stbi__parse_png_fileP9stbi__pngii:bb.a

bb.fb:                                            ; preds = %bb.ez
  %.not257 = icmp eq i32 %1, 0
  br i1 %.not257, label %bb.fc, label %.thread399

bb.fc:                                            ; preds = %bb.fb
  %i.so = load ptr, ptr %i.f, align 8             ; 3 uses
  %i.sp = icmp eq ptr %i.so, null
  br i1 %i.sp, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.sq = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.28, ptr %i.sq, align 8
  br label %.thread399

bb.fe:                                            ; preds = %bb.fc
  %i.sr = load i32, ptr %i.d, align 8
  %i.ss = load i32, ptr %i.gn, align 8
  %i.st = mul i32 %i.ss, %i.sr
  %i.su = add i32 %i.st, 7
  %i.sv = lshr i32 %i.su, 3
  %i.sw = load i32, ptr %i.go, align 4            ; 2 uses
  %i.sx = load i32, ptr %i.gm, align 8
  %i.sy = mul i32 %i.sx, %i.sw
  %i.sz = mul i32 %i.sy, %i.sv
  %i.ta = add i32 %i.sz, %i.sw                    ; 2 uses
  %.not258 = icmp eq i32 %.0204, 0                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  %i.tb = sext i32 %i.ta to i64
  %i.tc = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.tb) #50 ; 2 uses
  %i.td = icmp eq ptr %i.tc, null
  br i1 %i.td, label %assimp_stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.te = zext i1 %.not258 to i32
  store ptr %i.so, ptr %3, align 8
  %i.tf = sext i32 %.0230 to i64
  %i.tg = getelementptr inbounds i8, ptr %i.so, i64 %i.tf
  %i.th = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.tg, ptr %i.th, align 8
  %i.ti = call fastcc noundef i32 @_ZL13stbi__do_zlibP10stbi__zbufPciii(ptr noundef %3, ptr noundef nonnull %i.tc, i32 noundef %i.ta, i32 noundef 1, i32 noundef %i.te)
  %.not.i345 = icmp eq i32 %i.ti, 0
  br i1 %.not.i345, label %bb.fg, label %assimp_stbi_zlib_decode_malloc_guesssize_headerflag.exit

bb.fg:                                            ; preds = %bb.ff
  %i.tj = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.tk = load ptr, ptr %i.tj, align 8
  call void @free(ptr noundef %i.tk) #47
  br label %assimp_stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread

assimp_stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread: ; preds = %bb.fg, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  store ptr null, ptr %i.e, align 8
  br label %.thread399

assimp_stbi_zlib_decode_malloc_guesssize_headerflag.exit: ; preds = %bb.ff
  %i.tl = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.tm = load ptr, ptr %i.tl, align 8
  %i.tn = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.to = load ptr, ptr %i.tn, align 8            ; 3 uses
  %i.tp = ptrtoint ptr %i.tm to i64
  %i.tq = ptrtoint ptr %i.to to i64
  %i.tr = sub i64 %i.tp, %i.tq
  %i.ts = trunc i64 %i.tr to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  store ptr %i.to, ptr %i.e, align 8
  %i.tt = icmp eq ptr %i.to, null
  br i1 %i.tt, label %.thread399, label %bb.fh

bb.fh:                                            ; preds = %assimp_stbi_zlib_decode_malloc_guesssize_headerflag.exit
  %i.tu = load ptr, ptr %i.f, align 8
  call void @free(ptr noundef %i.tu) #47
  store ptr null, ptr %i.f, align 8
  %i.tv = load i32, ptr %i.gm, align 8            ; 2 uses
  %i.tw = add nsw i32 %i.tv, 1                    ; 2 uses
  %i.tx = icmp eq i32 %2, %i.tw
  %i.ty = icmp ne i32 %2, 3
  %or.cond5.not261.not266 = and i1 %i.ty, %i.tx
  %i.tz = icmp eq i8 %.0236, 0                    ; 2 uses
  %or.cond7.not263 = select i1 %or.cond5.not261.not266, i1 %i.tz, i1 false
  %i.ua = icmp ne i8 %.0233, 0                    ; 3 uses
  %or.cond9 = select i1 %or.cond7.not263, i1 true, i1 %i.ua
  %spec.select1495 = select i1 %or.cond9, i32 %i.tw, i32 %i.tv ; 4 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 4 uses
  store i32 %spec.select1495, ptr %i.ub, align 4
  %i.uc = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ud = load i32, ptr %i.gn, align 8            ; 4 uses
  %i.ue = icmp eq i32 %i.ud, 16
  %i.uf = zext i1 %i.ue to i32
  %i.ug = shl i32 %spec.select1495, %i.uf         ; 6 uses
  %.not.i349 = icmp eq i32 %.0211, 0
  %i.uh = load ptr, ptr %0, align 8               ; 2 uses
  %i.ui = load i32, ptr %i.uh, align 8            ; 4 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uh, i64 4
  %i.uk = load i32, ptr %i.uj, align 4            ; 5 uses
  br i1 %.not.i349, label %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.ul = or i32 %i.uk, %i.ui
  %or.cond.not.i.i.i.i = icmp sgt i32 %i.ul, -1
  br i1 %or.cond.not.i.i.i.i, label %bb.fj, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i

bb.fj:                                            ; preds = %bb.fi
  %i.um = icmp eq i32 %i.uk, 0
  br i1 %i.um, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i.i:          ; preds = %bb.fj
  %i.un = udiv i32 2147483647, %i.uk
  %.not23.i.i.i = icmp sgt i32 %i.ui, %i.un
  br i1 %.not23.i.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i: ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i.i, %bb.fj
  %i.uo = mul nsw i32 %i.uk, %i.ui                ; 3 uses
  %i.up = or i32 %i.uo, %i.ug
  %or.cond.not.i10.i.i.i = icmp sgt i32 %i.up, -1
  br i1 %or.cond.not.i10.i.i.i, label %bb.fk, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i

bb.fk:                                            ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i
  %i.uq = icmp eq i32 %i.ug, 0
  br i1 %i.uq, label %_ZL17stbi__malloc_mad3iiii.exit.i, label %_ZL21stbi__mul2sizes_validii.exit12.i.i.i

_ZL21stbi__mul2sizes_validii.exit12.i.i.i:        ; preds = %bb.fk
  %i.ur = udiv i32 2147483647, %i.ug
  %.not.i.i.i = icmp sgt i32 %i.uo, %i.ur
  br i1 %.not.i.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i, label %_ZL17stbi__malloc_mad3iiii.exit.i

_ZL17stbi__malloc_mad3iiii.exit.i:                ; preds = %_ZL21stbi__mul2sizes_validii.exit12.i.i.i, %bb.fk
  %i.us = mul nsw i32 %i.uo, %i.ug
  %i.ut = sext i32 %i.us to i64
  %i.uu = call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.ut) #50 ; 4 uses
  %.not92.i = icmp eq ptr %i.uu, null
  br i1 %.not92.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i, label %.preheader100.i

.preheader100.i:                                  ; preds = %_ZL17stbi__malloc_mad3iiii.exit.i
  %i.uv = sext i32 %i.ug to i64                   ; 9 uses
  br label %bb.fl

_ZL17stbi__malloc_mad3iiii.exit.thread.i:         ; preds = %_ZL17stbi__malloc_mad3iiii.exit.i, %_ZL21stbi__mul2sizes_validii.exit12.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i.i, %bb.fi
  %i.uw = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.26, ptr %i.uw, align 8
  br label %.thread399

bb.fl:                                            ; preds = %bb.fn, %.preheader100.i
  %indvars.iv112.i = phi i64 [ 0, %.preheader100.i ], [ %indvars.iv.next113.i, %bb.fn ] ; 5 uses
  %.076106.i = phi ptr [ %i.uc, %.preheader100.i ], [ %.379.i, %bb.fn ] ; 3 uses
  %.085104.i = phi i32 [ %i.ts, %.preheader100.i ], [ %.388.i, %bb.fn ] ; 3 uses
  %i.ux = load ptr, ptr %0, align 8               ; 3 uses
  %i.uy = load i32, ptr %i.ux, align 8
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.xorig, i64 %indvars.iv112.i
  %i.va = load i32, ptr %i.uz, align 4            ; 2 uses
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.xspc, i64 %indvars.iv112.i
  %i.vc = load i32, ptr %i.vb, align 4            ; 4 uses
  %i.vd = xor i32 %i.va, -1
  %i.ve = add i32 %i.uy, %i.vd
  %i.vf = add i32 %i.ve, %i.vc                    ; 2 uses
  %i.vg = udiv i32 %i.vf, %i.vc                   ; 6 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ux, i64 4
  %i.vi = load i32, ptr %i.vh, align 4
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.yorig, i64 %indvars.iv112.i
  %i.vk = load i32, ptr %i.vj, align 4            ; 2 uses
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.yspc, i64 %indvars.iv112.i
  %i.vm = load i32, ptr %i.vl, align 4            ; 4 uses
  %i.vn = xor i32 %i.vk, -1
  %i.vo = add i32 %i.vi, %i.vn
  %i.vp = add i32 %i.vo, %i.vm                    ; 2 uses
  %i.vq = udiv i32 %i.vp, %i.vm                   ; 4 uses
  %i.vr = icmp ule i32 %i.vc, %i.vf
  %i.vs = icmp ule i32 %i.vm, %i.vp
  %or.cond.i = select i1 %i.vr, i1 %i.vs, i1 false
  br i1 %or.cond.i, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.vt = getelementptr inbounds nuw i8, ptr %i.ux, i64 8
  %i.vu = load i32, ptr %i.vt, align 8
  %i.vv = mul i32 %i.vg, %i.ud
  %i.vw = mul i32 %i.vv, %i.vu
  %i.vx = add nsw i32 %i.vw, 7
  %i.vy = ashr i32 %i.vx, 3
  %i.vz = add nsw i32 %i.vy, 1
  %i.wa = mul nsw i32 %i.vz, %i.vq                ; 2 uses
  %i.wb = call fastcc noundef i32 @_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii(ptr noundef nonnull %0, ptr noundef %.076106.i, i32 noundef %.085104.i, i32 noundef %spec.select1495, i32 noundef %i.vg, i32 noundef %i.vq, i32 noundef %i.ud, i32 noundef range(i32 0, 256) %.0207)
  %.not93.not.i = icmp eq i32 %i.wb, 0
  br i1 %.not93.not.i, label %.thread.i353, label %.preheader99.i

.preheader99.i:                                   ; preds = %bb.fm
  %i.wc = icmp sgt i32 %i.vq, 0
  %i.wd = icmp sgt i32 %i.vg, 0
  %or.cond107.i = and i1 %i.wd, %i.wc
  %.pre115.i = load ptr, ptr %i.g, align 8        ; 4 uses
  br i1 %or.cond107.i, label %.preheader.lr.ph.split.i, label %._crit_edge103.split.i

.preheader.lr.ph.split.i:                         ; preds = %.preheader99.i
  %i.we = load ptr, ptr %0, align 8
  %i.wf = sext i32 %i.vc to i64                   ; 3 uses
  %i.wg = sext i32 %i.va to i64                   ; 3 uses
  %i.wh = zext nneg i32 %i.vg to i64              ; 3 uses
  %i.wi = zext nneg i32 %i.vq to i64
  %.pre.pre.i = load i32, ptr %i.we, align 8
  %factor.op.mul.i = mul i32 %.pre.pre.i, %i.ug
  %xtraiter = and i64 %i.wh, 1
  %4 = icmp eq i32 %i.vg, 1
  %unroll_iter = and i64 %i.wh, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod2136 = trunc i32 %i.vg to i1
  br label %.preheader.i

.thread.i353:                                     ; preds = %bb.fm
  call void @free(ptr noundef %i.uu) #47
  br label %.thread399

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %indvars.iv109.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %indvars.iv.next110.i, %._crit_edge.i ] ; 3 uses
  %i.wj = trunc i64 %indvars.iv109.i to i32
  %i.wk = mul i32 %i.vm, %i.wj
  %i.wl = add i32 %i.wk, %i.vk
  %.reass.i = mul i32 %factor.op.mul.i, %i.wl
  %i.wm = mul nuw nsw i64 %indvars.iv109.i, %i.wh ; 3 uses
  %i.wn = zext i32 %.reass.i to i64
  %i.wo = getelementptr inbounds nuw i8, ptr %i.uu, i64 %i.wn ; 3 uses
  br i1 %4, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %indvars.iv.i351 = phi i64 [ %indvars.iv.next.i352.1, %.preheader.i.new ], [ 0, %.preheader.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.wp = mul nsw i64 %indvars.iv.i351, %i.wf
  %i.wq = add nsw i64 %i.wp, %i.wg
  %i.wr = mul nsw i64 %i.wq, %i.uv
  %i.ws = getelementptr inbounds i8, ptr %i.wo, i64 %i.wr
  %i.wt = add nuw nsw i64 %indvars.iv.i351, %i.wm
  %i.wu = mul nsw i64 %i.wt, %i.uv
  %i.wv = getelementptr inbounds i8, ptr %.pre115.i, i64 %i.wu
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ws, ptr align 1 %i.wv, i64 %i.uv, i1 false)
  %indvars.iv.next.i352 = or disjoint i64 %indvars.iv.i351, 1 ; 2 uses
  %i.ww = mul nsw i64 %indvars.iv.next.i352, %i.wf
  %i.wx = add nsw i64 %i.ww, %i.wg
  %i.wy = mul nsw i64 %i.wx, %i.uv
  %i.wz = getelementptr inbounds i8, ptr %i.wo, i64 %i.wy
  %i.xa = add nuw nsw i64 %indvars.iv.next.i352, %i.wm
  %i.xb = mul nsw i64 %i.xa, %i.uv
  %i.xc = getelementptr inbounds i8, ptr %.pre115.i, i64 %i.xb
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.wz, ptr align 1 %i.xc, i64 %i.uv, i1 false)
  %indvars.iv.next.i352.1 = add nuw nsw i64 %indvars.iv.i351, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.i.unr-lcssa, label %.preheader.i.new, !llvm.loop !168

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader.i
  %indvars.iv.i351.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i352.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod2136)
  %i.xd = mul nsw i64 %indvars.iv.i351.epil.init, %i.wf
  %i.xe = add nsw i64 %i.xd, %i.wg
  %i.xf = mul nsw i64 %i.xe, %i.uv
  %i.xg = getelementptr inbounds i8, ptr %i.wo, i64 %i.xf
  %i.xh = add nuw nsw i64 %indvars.iv.i351.epil.init, %i.wm
  %i.xi = mul nsw i64 %i.xh, %i.uv
  %i.xj = getelementptr inbounds i8, ptr %.pre115.i, i64 %i.xi
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.xg, ptr align 1 %i.xj, i64 %i.uv, i1 false)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1 ; 2 uses
  %i.xk = icmp samesign ult i64 %indvars.iv.next110.i, %i.wi
  br i1 %i.xk, label %.preheader.i, label %._crit_edge103.split.i, !llvm.loop !169

._crit_edge103.split.i:                           ; preds = %._crit_edge.i, %.preheader99.i
  call void @free(ptr noundef %.pre115.i) #47
  %i.xl = zext i32 %i.wa to i64
  %i.xm = getelementptr inbounds nuw i8, ptr %.076106.i, i64 %i.xl
  %i.xn = sub i32 %.085104.i, %i.wa
  br label %bb.fn

bb.fn:                                            ; preds = %._crit_edge103.split.i, %bb.fl
  %.388.i = phi i32 [ %.085104.i, %bb.fl ], [ %i.xn, %._crit_edge103.split.i ]
  %.379.i = phi ptr [ %.076106.i, %bb.fl ], [ %i.xm, %._crit_edge103.split.i ]
  %indvars.iv.next113.i = add nuw nsw i64 %indvars.iv112.i, 1 ; 2 uses
  %exitcond.not.i350 = icmp eq i64 %indvars.iv.next113.i, 7
  br i1 %exitcond.not.i350, label %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit.thread393, label %bb.fl, !llvm.loop !170

_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit.thread393: ; preds = %bb.fn
  store ptr %i.uu, ptr %i.g, align 8
  br label %bb.fo

_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit: ; preds = %bb.fh
  %i.xo = call fastcc noundef i32 @_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii(ptr noundef nonnull %0, ptr noundef readonly %i.uc, i32 noundef %i.ts, i32 noundef %spec.select1495, i32 noundef %i.ui, i32 noundef %i.uk, i32 noundef %i.ud, i32 noundef range(i32 0, 256) %.0207)
  %.not267 = icmp eq i32 %i.xo, 0
  br i1 %.not267, label %.thread399, label %bb.fo

bb.fo:                                            ; preds = %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit.thread393, %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit
  br i1 %i.ua, label %bb.fp, label %bb.fs

bb.fp:                                            ; preds = %bb.fo
  %i.xp = load i32, ptr %i.gn, align 8
  %i.xq = icmp eq i32 %i.xp, 16
  %i.xr = load i32, ptr %i.ub, align 4            ; 2 uses
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %.val299 = load ptr, ptr %i.g, align 8          ; 2 uses
  %.val.val = load i32, ptr %.val, align 8        ; 2 uses
  %i.xs = getelementptr i8, ptr %.val, i64 4
  %.val.val300 = load i32, ptr %i.xs, align 4     ; 2 uses
  br i1 %i.xq, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  call fastcc void @_ZL28stbi__compute_transparency16P9stbi__pngPti(i32 %.val.val, i32 %.val.val300, ptr %.val299, ptr noundef %i.c, i32 noundef %i.xr)
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fp
  call fastcc void @_ZL26stbi__compute_transparencyP9stbi__pngPhi(i32 %.val.val, i32 %.val.val300, ptr %.val299, ptr noundef %i.b, i32 noundef %i.xr)
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq, %bb.fo
  br i1 %.not258, label %bb.fw, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.xt = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZL24stbi__de_iphone_flag_set)
  %i.xu = load i32, ptr %i.xt, align 4
  %.not268 = icmp eq i32 %i.xu, 0
  %i.xv = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZL26stbi__de_iphone_flag_local)
  %i.xw = load i32, ptr %i.xv, align 4
  %i.xx = load i32, ptr @_ZL27stbi__de_iphone_flag_global, align 4
  %i.xy = select i1 %.not268, i32 %i.xx, i32 %i.xw
  %.not269 = icmp eq i32 %i.xy, 0
  br i1 %.not269, label %bb.fw, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.xz = load i32, ptr %i.ub, align 4
  %i.ya = icmp sgt i32 %i.xz, 2
  br i1 %i.ya, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %.val304 = load ptr, ptr %0, align 8
  %.val305 = load ptr, ptr %i.g, align 8
  call fastcc void @_ZL15stbi__de_iphoneP9stbi__png(ptr %.val304, ptr %.val305)
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu, %bb.ft, %bb.fs
  br i1 %i.tz, label %bb.fz, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.yb = zext nneg i8 %.0236 to i32              ; 2 uses
  store i32 %i.yb, ptr %i.gm, align 8
  %i.yc = icmp samesign ugt i32 %2, 2
  %spec.select = select i1 %i.yc, i32 %2, i32 %i.yb ; 4 uses
  store i32 %spec.select, ptr %i.ub, align 4
  %i.yd = load ptr, ptr %0, align 8               ; 2 uses
  %i.ye = load i32, ptr %i.yd, align 8
  %i.yf = getelementptr inbounds nuw i8, ptr %i.yd, i64 4
  %i.yg = load i32, ptr %i.yf, align 4
  %i.yh = mul i32 %i.yg, %i.ye                    ; 9 uses
  %i.yi = load ptr, ptr %i.g, align 8             ; 9 uses
  %or.cond.not.i.i.i.i354 = icmp sgt i32 %i.yh, -1
  br i1 %or.cond.not.i.i.i.i354, label %_ZL21stbi__mul2sizes_validii.exit.i.i.i356, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.thread

_ZL21stbi__mul2sizes_validii.exit.i.i.i356:       ; preds = %bb.fx
  %i.yj = udiv i32 2147483647, %spec.select
  %.not10.i.i.i = icmp samesign ugt i32 %i.yh, %i.yj
  br i1 %.not10.i.i.i, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.thread, label %_ZL17stbi__malloc_mad2iii.exit.i

_ZL17stbi__malloc_mad2iii.exit.i:                 ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i.i356
  %i.yk = mul nuw nsw i32 %i.yh, %spec.select
  %i.yl = zext nneg i32 %i.yk to i64
  %i.ym = call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.yl) #50 ; 6 uses
  %i.yn = icmp eq ptr %i.ym, null
  br i1 %i.yn, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.thread, label %bb.fy

_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.thread: ; preds = %bb.fx, %_ZL21stbi__mul2sizes_validii.exit.i.i.i356, %_ZL17stbi__malloc_mad2iii.exit.i
  %i.yo = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.26, ptr %i.yo, align 8
  br label %.thread399

bb.fy:                                            ; preds = %_ZL17stbi__malloc_mad2iii.exit.i
  %i.yp = icmp eq i32 %spec.select, 3
  %.not56.i = icmp eq i32 %i.yh, 0                ; 2 uses
  br i1 %i.yp, label %.preheader.i360, label %.preheader49.i

.preheader49.i:                                   ; preds = %bb.fy
  br i1 %.not56.i, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader49.i
  %wide.trip.count.i = zext nneg i32 %i.yh to i64 ; 2 uses
  %xtraiter2137 = and i64 %wide.trip.count.i, 3   ; 3 uses
  %i.yq = icmp ult i32 %i.yh, 4
  br i1 %i.yq, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter2140 = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.preheader.i360:                                  ; preds = %bb.fy
  br i1 %.not56.i, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit, label %.lr.ph55.preheader.i

.lr.ph55.preheader.i:                             ; preds = %.preheader.i360
  %wide.trip.count62.i = zext nneg i32 %i.yh to i64 ; 2 uses
  %xtraiter2142 = and i64 %wide.trip.count62.i, 1
  %i.yr = icmp eq i32 %i.yh, 1
  br i1 %i.yr, label %.lr.ph55.i.epil.preheader, label %.lr.ph55.preheader.i.new

.lr.ph55.preheader.i.new:                         ; preds = %.lr.ph55.preheader.i
  %unroll_iter2146 = and i64 %wide.trip.count62.i, 2147483646
end_hunk_0
