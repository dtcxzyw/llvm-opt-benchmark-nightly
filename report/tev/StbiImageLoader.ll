Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/StbiImageLoader?download=true
inline.NumInlined: 6547
inline.NumDeleted: 2302
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 94
loop-unroll.NumUnrolled: 140
begin_hunk_0_@_ZL20stbi__parse_png_fileP9stbi__pngii:bb.a
  %i.tc = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.tb) #54 ; 2 uses
  %i.td = icmp eq ptr %i.tc, null
  br i1 %i.td, label %stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.te = zext i1 %.not258 to i32
  store ptr %i.so, ptr %3, align 8, !tbaa !107
  %i.tf = sext i32 %.0230 to i64
  %i.tg = getelementptr inbounds i8, ptr %i.so, i64 %i.tf
  %i.th = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.tg, ptr %i.th, align 8, !tbaa !108
  %i.ti = call fastcc noundef i32 @_ZL13stbi__do_zlibP10stbi__zbufPciii(ptr noundef %3, ptr noundef nonnull %i.tc, i32 noundef %i.ta, i32 noundef 1, i32 noundef %i.te)
  %.not.i345 = icmp eq i32 %i.ti, 0
  br i1 %.not.i345, label %bb.fg, label %stbi_zlib_decode_malloc_guesssize_headerflag.exit

bb.fg:                                            ; preds = %bb.ff
  %i.tj = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !109
  call void @free(ptr noundef %i.tk) #53
  br label %stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread

stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread: ; preds = %bb.fg, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  store ptr null, ptr %i.e, align 8, !tbaa !279
  br label %.thread399

stbi_zlib_decode_malloc_guesssize_headerflag.exit: ; preds = %bb.ff
  %i.tl = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !110
  %i.tn = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !109 ; 3 uses
  %i.tp = ptrtoint ptr %i.tm to i64
  %i.tq = ptrtoint ptr %i.to to i64
  %i.tr = sub i64 %i.tp, %i.tq
  %i.ts = trunc i64 %i.tr to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  store ptr %i.to, ptr %i.e, align 8, !tbaa !279
  %i.tt = icmp eq ptr %i.to, null
  br i1 %i.tt, label %.thread399, label %bb.fh

bb.fh:                                            ; preds = %stbi_zlib_decode_malloc_guesssize_headerflag.exit
  %i.tu = load ptr, ptr %i.f, align 8, !tbaa !280
  call void @free(ptr noundef %i.tu) #53
  store ptr null, ptr %i.f, align 8, !tbaa !280
  %i.tv = load i32, ptr %i.gm, align 8, !tbaa !117 ; 2 uses
  %i.tw = add nsw i32 %i.tv, 1                    ; 2 uses
  %i.tx = icmp eq i32 %2, %i.tw
  %i.ty = icmp ne i32 %2, 3
  %or.cond5.not261.not266 = and i1 %i.ty, %i.tx
  %i.tz = icmp eq i8 %.0236, 0                    ; 2 uses
  %or.cond7.not263 = select i1 %or.cond5.not261.not266, i1 %i.tz, i1 false
  %i.ua = icmp ne i8 %.0233, 0                    ; 3 uses
  %or.cond9 = select i1 %or.cond7.not263, i1 true, i1 %i.ua
  %spec.select1498 = select i1 %or.cond9, i32 %i.tw, i32 %i.tv ; 4 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 4 uses
  store i32 %spec.select1498, ptr %i.ub, align 4, !tbaa !278
  %i.uc = load ptr, ptr %i.e, align 8, !tbaa !279 ; 2 uses
  %i.ud = load i32, ptr %i.gn, align 8, !tbaa !277 ; 4 uses
  %i.ue = icmp eq i32 %i.ud, 16
  %i.uf = zext i1 %i.ue to i32
  %i.ug = shl i32 %spec.select1498, %i.uf         ; 6 uses
  %.not.i349 = icmp eq i32 %.0211, 0
  %i.uh = load ptr, ptr %0, align 8, !tbaa !119   ; 2 uses
  %i.ui = load i32, ptr %i.uh, align 8, !tbaa !115 ; 4 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uh, i64 4
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !116 ; 5 uses
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
  %i.uo = mul nuw nsw i32 %i.uk, %i.ui            ; 3 uses
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
  %i.us = mul nuw nsw i32 %i.uo, %i.ug
  %i.ut = sext i32 %i.us to i64
  %i.uu = call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.ut) #54 ; 4 uses
  %.not92.i = icmp eq ptr %i.uu, null
  br i1 %.not92.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i, label %.preheader100.i

.preheader100.i:                                  ; preds = %_ZL17stbi__malloc_mad3iiii.exit.i
  %i.uv = sext i32 %i.ug to i64                   ; 9 uses
  br label %bb.fl

_ZL17stbi__malloc_mad3iiii.exit.thread.i:         ; preds = %_ZL17stbi__malloc_mad3iiii.exit.i, %_ZL21stbi__mul2sizes_validii.exit12.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i.i, %bb.fi
  %i.uw = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.29, ptr %i.uw, align 8, !tbaa !71
  br label %.thread399

bb.fl:                                            ; preds = %bb.fn, %.preheader100.i
  %indvars.iv112.i = phi i64 [ 0, %.preheader100.i ], [ %indvars.iv.next113.i, %bb.fn ] ; 5 uses
  %.076106.i = phi ptr [ %i.uc, %.preheader100.i ], [ %.379.i, %bb.fn ] ; 3 uses
  %.085104.i = phi i32 [ %i.ts, %.preheader100.i ], [ %.388.i, %bb.fn ] ; 3 uses
  %i.ux = load ptr, ptr %0, align 8, !tbaa !119   ; 3 uses
  %i.uy = load i32, ptr %i.ux, align 8, !tbaa !115
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.xorig, i64 %indvars.iv112.i
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !72 ; 2 uses
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.xspc, i64 %indvars.iv112.i
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !72 ; 4 uses
  %i.vd = xor i32 %i.va, -1
  %i.ve = add i32 %i.uy, %i.vd
  %i.vf = add i32 %i.ve, %i.vc                    ; 2 uses
  %i.vg = udiv i32 %i.vf, %i.vc                   ; 6 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ux, i64 4
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !116
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.yorig, i64 %indvars.iv112.i
  %i.vk = load i32, ptr %i.vj, align 4, !tbaa !72 ; 2 uses
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.yspc, i64 %indvars.iv112.i
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !72 ; 4 uses
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
  %i.vu = load i32, ptr %i.vt, align 8, !tbaa !117
  %i.vv = mul i32 %i.vg, %i.ud
  %i.vw = mul i32 %i.vv, %i.vu
  %i.vx = add nsw i32 %i.vw, 7
  %i.vy = ashr i32 %i.vx, 3
  %i.vz = add nsw i32 %i.vy, 1
  %i.wa = mul nsw i32 %i.vz, %i.vq                ; 2 uses
  %i.wb = call fastcc noundef i32 @_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii(ptr noundef nonnull %0, ptr noundef %.076106.i, i32 noundef %.085104.i, i32 noundef %spec.select1498, i32 noundef %i.vg, i32 noundef %i.vq, i32 noundef %i.ud, i32 noundef range(i32 0, 256) %.0207)
  %.not93.not.i = icmp eq i32 %i.wb, 0
  br i1 %.not93.not.i, label %.thread.i353, label %.preheader99.i

.preheader99.i:                                   ; preds = %bb.fm
  %i.wc = icmp sgt i32 %i.vq, 0
  %i.wd = icmp sgt i32 %i.vg, 0
  %or.cond107.i = and i1 %i.wd, %i.wc
  %.pre115.i = load ptr, ptr %i.g, align 8, !tbaa !276 ; 4 uses
  br i1 %or.cond107.i, label %.preheader.lr.ph.split.i, label %._crit_edge103.split.i

.preheader.lr.ph.split.i:                         ; preds = %.preheader99.i
  %i.we = load ptr, ptr %0, align 8, !tbaa !119
  %i.wf = sext i32 %i.vc to i64                   ; 3 uses
  %i.wg = sext i32 %i.va to i64                   ; 3 uses
  %i.wh = zext nneg i32 %i.vg to i64              ; 3 uses
  %i.wi = zext nneg i32 %i.vq to i64
  %.pre.pre.i = load i32, ptr %i.we, align 8, !tbaa !115
  %factor.op.mul.i = mul i32 %.pre.pre.i, %i.ug
  %xtraiter = and i64 %i.wh, 1
  %i.wj = icmp eq i32 %i.vg, 1
  %unroll_iter = and i64 %i.wh, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod2139 = trunc i32 %i.vg to i1
  br label %.preheader.i

.thread.i353:                                     ; preds = %bb.fm
  call void @free(ptr noundef %i.uu) #53
  br label %.thread399

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %indvars.iv109.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %indvars.iv.next110.i, %._crit_edge.i ] ; 3 uses
  %i.wk = trunc i64 %indvars.iv109.i to i32
  %i.wl = mul i32 %i.vm, %i.wk
  %i.wm = add i32 %i.wl, %i.vk
  %.reass.i = mul i32 %factor.op.mul.i, %i.wm
  %i.wn = mul nuw nsw i64 %indvars.iv109.i, %i.wh ; 3 uses
  %i.wo = zext i32 %.reass.i to i64
  %i.wp = getelementptr inbounds nuw i8, ptr %i.uu, i64 %i.wo ; 3 uses
  br i1 %i.wj, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %indvars.iv.i351 = phi i64 [ %indvars.iv.next.i352.1, %.preheader.i.new ], [ 0, %.preheader.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.wq = mul nsw i64 %indvars.iv.i351, %i.wf
  %i.wr = add nsw i64 %i.wq, %i.wg
  %i.ws = mul nsw i64 %i.wr, %i.uv
  %i.wt = getelementptr inbounds i8, ptr %i.wp, i64 %i.ws
  %i.wu = add nuw nsw i64 %indvars.iv.i351, %i.wn
  %i.wv = mul nuw nsw i64 %i.wu, %i.uv
  %i.ww = getelementptr inbounds i8, ptr %.pre115.i, i64 %i.wv
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.wt, ptr align 1 %i.ww, i64 %i.uv, i1 false)
  %indvars.iv.next.i352 = or disjoint i64 %indvars.iv.i351, 1 ; 2 uses
  %i.wx = mul nsw i64 %indvars.iv.next.i352, %i.wf
  %i.wy = add nsw i64 %i.wx, %i.wg
  %i.wz = mul nsw i64 %i.wy, %i.uv
  %i.xa = getelementptr inbounds i8, ptr %i.wp, i64 %i.wz
  %i.xb = add nuw nsw i64 %indvars.iv.next.i352, %i.wn
  %i.xc = mul nuw nsw i64 %i.xb, %i.uv
  %i.xd = getelementptr inbounds i8, ptr %.pre115.i, i64 %i.xc
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.xa, ptr align 1 %i.xd, i64 %i.uv, i1 false)
  %indvars.iv.next.i352.1 = add nuw nsw i64 %indvars.iv.i351, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.i.unr-lcssa, label %.preheader.i.new, !llvm.loop !851

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader.i
  %indvars.iv.i351.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i352.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod2139)
  %i.xe = mul nsw i64 %indvars.iv.i351.epil.init, %i.wf
  %i.xf = add nsw i64 %i.xe, %i.wg
  %i.xg = mul nsw i64 %i.xf, %i.uv
  %i.xh = getelementptr inbounds i8, ptr %i.wp, i64 %i.xg
  %i.xi = add nuw nsw i64 %indvars.iv.i351.epil.init, %i.wn
  %i.xj = mul nuw nsw i64 %i.xi, %i.uv
  %i.xk = getelementptr inbounds i8, ptr %.pre115.i, i64 %i.xj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.xh, ptr align 1 %i.xk, i64 %i.uv, i1 false)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1 ; 2 uses
  %i.xl = icmp samesign ult i64 %indvars.iv.next110.i, %i.wi
  br i1 %i.xl, label %.preheader.i, label %._crit_edge103.split.i, !llvm.loop !852

._crit_edge103.split.i:                           ; preds = %._crit_edge.i, %.preheader99.i
  call void @free(ptr noundef %.pre115.i) #53
  %i.xm = zext i32 %i.wa to i64
  %i.xn = getelementptr inbounds nuw i8, ptr %.076106.i, i64 %i.xm
  %i.xo = sub i32 %.085104.i, %i.wa
  br label %bb.fn

bb.fn:                                            ; preds = %._crit_edge103.split.i, %bb.fl
  %.388.i = phi i32 [ %.085104.i, %bb.fl ], [ %i.xo, %._crit_edge103.split.i ]
  %.379.i = phi ptr [ %.076106.i, %bb.fl ], [ %i.xn, %._crit_edge103.split.i ]
  %indvars.iv.next113.i = add nuw nsw i64 %indvars.iv112.i, 1 ; 2 uses
  %exitcond.not.i350 = icmp eq i64 %indvars.iv.next113.i, 7
  br i1 %exitcond.not.i350, label %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit.thread393, label %bb.fl, !llvm.loop !853

_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit.thread393: ; preds = %bb.fn
  store ptr %i.uu, ptr %i.g, align 8, !tbaa !276
  br label %bb.fo

_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit: ; preds = %bb.fh
  %i.xp = call fastcc noundef i32 @_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii(ptr noundef nonnull %0, ptr noundef readonly %i.uc, i32 noundef %i.ts, i32 noundef %spec.select1498, i32 noundef %i.ui, i32 noundef %i.uk, i32 noundef %i.ud, i32 noundef range(i32 0, 256) %.0207)
  %.not267 = icmp eq i32 %i.xp, 0
  br i1 %.not267, label %.thread399, label %bb.fo

bb.fo:                                            ; preds = %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit.thread393, %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit
  br i1 %i.ua, label %bb.fp, label %bb.fs

bb.fp:                                            ; preds = %bb.fo
  %i.xq = load i32, ptr %i.gn, align 8, !tbaa !277
  %i.xr = icmp eq i32 %i.xq, 16
  %i.xs = load i32, ptr %i.ub, align 4, !tbaa !278 ; 2 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !119   ; 2 uses
  %.val299 = load ptr, ptr %i.g, align 8, !tbaa !276 ; 2 uses
  %.val.val = load i32, ptr %.val, align 8, !tbaa !115 ; 2 uses
  %i.xt = getelementptr i8, ptr %.val, i64 4
  %.val.val300 = load i32, ptr %i.xt, align 4, !tbaa !116 ; 2 uses
  br i1 %i.xr, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  call fastcc void @_ZL28stbi__compute_transparency16P9stbi__pngPti(i32 %.val.val, i32 %.val.val300, ptr %.val299, ptr noundef %i.c, i32 noundef %i.xs)
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fp
  call fastcc void @_ZL26stbi__compute_transparencyP9stbi__pngPhi(i32 %.val.val, i32 %.val.val300, ptr %.val299, ptr noundef %i.b, i32 noundef %i.xs)
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq, %bb.fo
  br i1 %.not258, label %bb.fw, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.xu = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZL24stbi__de_iphone_flag_set)
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !72
  %.not268 = icmp eq i32 %i.xv, 0
  %i.xw = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZL26stbi__de_iphone_flag_local)
  %i.xx = load i32, ptr %i.xw, align 4
  %i.xy = load i32, ptr @_ZL27stbi__de_iphone_flag_global, align 4
  %i.xz = select i1 %.not268, i32 %i.xy, i32 %i.xx
  %.not269 = icmp eq i32 %i.xz, 0
  br i1 %.not269, label %bb.fw, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.ya = load i32, ptr %i.ub, align 4, !tbaa !278
  %i.yb = icmp sgt i32 %i.ya, 2
  br i1 %i.yb, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %.val304 = load ptr, ptr %0, align 8, !tbaa !119
  %.val305 = load ptr, ptr %i.g, align 8, !tbaa !276
  call fastcc void @_ZL15stbi__de_iphoneP9stbi__png(ptr %.val304, ptr %.val305)
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu, %bb.ft, %bb.fs
  br i1 %i.tz, label %bb.fz, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.yc = zext nneg i8 %.0236 to i32              ; 2 uses
  store i32 %i.yc, ptr %i.gm, align 8, !tbaa !117
  %i.yd = icmp samesign ugt i32 %2, 2
  %spec.select = select i1 %i.yd, i32 %2, i32 %i.yc ; 4 uses
  store i32 %spec.select, ptr %i.ub, align 4, !tbaa !278
  %i.ye = load ptr, ptr %0, align 8, !tbaa !119   ; 2 uses
  %i.yf = load i32, ptr %i.ye, align 8, !tbaa !115
  %i.yg = getelementptr inbounds nuw i8, ptr %i.ye, i64 4
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !116
  %i.yi = mul i32 %i.yh, %i.yf                    ; 9 uses
  %i.yj = load ptr, ptr %i.g, align 8, !tbaa !276 ; 9 uses
  %or.cond.not.i.i.i.i354 = icmp sgt i32 %i.yi, -1
  br i1 %or.cond.not.i.i.i.i354, label %_ZL21stbi__mul2sizes_validii.exit.i.i.i356, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.thread

_ZL21stbi__mul2sizes_validii.exit.i.i.i356:       ; preds = %bb.fx
  %i.yk = udiv i32 2147483647, %spec.select
  %.not10.i.i.i = icmp samesign ugt i32 %i.yi, %i.yk
  br i1 %.not10.i.i.i, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.thread, label %_ZL17stbi__malloc_mad2iii.exit.i

_ZL17stbi__malloc_mad2iii.exit.i:                 ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i.i356
  %i.yl = mul nuw nsw i32 %i.yi, %spec.select
  %i.ym = zext nneg i32 %i.yl to i64
  %i.yn = call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.ym) #54 ; 6 uses
  %i.yo = icmp eq ptr %i.yn, null
  br i1 %i.yo, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.thread, label %bb.fy

_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.thread: ; preds = %bb.fx, %_ZL21stbi__mul2sizes_validii.exit.i.i.i356, %_ZL17stbi__malloc_mad2iii.exit.i
  %i.yp = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.29, ptr %i.yp, align 8, !tbaa !71
  br label %.thread399

bb.fy:                                            ; preds = %_ZL17stbi__malloc_mad2iii.exit.i
  %i.yq = icmp eq i32 %spec.select, 3
  %.not56.i = icmp eq i32 %i.yi, 0                ; 2 uses
  br i1 %i.yq, label %.preheader.i360, label %.preheader49.i

.preheader49.i:                                   ; preds = %bb.fy
  br i1 %.not56.i, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader49.i
  %wide.trip.count.i = zext nneg i32 %i.yi to i64 ; 2 uses
  %xtraiter2140 = and i64 %wide.trip.count.i, 3   ; 3 uses
  %i.yr = icmp ult i32 %i.yi, 4
  br i1 %i.yr, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter2143 = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.preheader.i360:                                  ; preds = %bb.fy
  br i1 %.not56.i, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit, label %.lr.ph55.preheader.i

.lr.ph55.preheader.i:                             ; preds = %.preheader.i360
  %wide.trip.count62.i = zext nneg i32 %i.yi to i64 ; 2 uses
  %xtraiter2145 = and i64 %wide.trip.count62.i, 1
  %i.ys = icmp eq i32 %i.yi, 1
  br i1 %i.ys, label %.lr.ph55.i.epil.preheader, label %.lr.ph55.preheader.i.new

.lr.ph55.preheader.i.new:                         ; preds = %.lr.ph55.preheader.i
  %unroll_iter2149 = and i64 %wide.trip.count62.i, 2147483646
  br label %.lr.ph55.i

.lr.ph55.i:                                       ; preds = %.lr.ph55.i, %.lr.ph55.preheader.i.new
  %indvars.iv59.i = phi i64 [ 0, %.lr.ph55.preheader.i.new ], [ %indvars.iv.next60.i.1, %.lr.ph55.i ] ; 3 uses
  %.04553.i = phi ptr [ %i.yn, %.lr.ph55.preheader.i.new ], [ %i.zt, %.lr.ph55.i ] ; 7 uses
  %niter2150 = phi i64 [ 0, %.lr.ph55.preheader.i.new ], [ %niter2150.next.1, %.lr.ph55.i ]
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yj, i64 %indvars.iv59.i
  %i.yu = load i8, ptr %i.yt, align 1, !tbaa !84
  %i.yv = zext i8 %i.yu to i64
  %i.yw = shl nuw nsw i64 %i.yv, 2
  %i.yx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.yw ; 3 uses
  %i.yy = load i8, ptr %i.yx, align 4, !tbaa !84
  store i8 %i.yy, ptr %.04553.i, align 1, !tbaa !84
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yx, i64 1
  %i.za = load i8, ptr %i.yz, align 1, !tbaa !84
  %i.zb = getelementptr inbounds nuw i8, ptr %.04553.i, i64 1
  store i8 %i.za, ptr %i.zb, align 1, !tbaa !84
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yx, i64 2
  %i.zd = load i8, ptr %i.zc, align 2, !tbaa !84
  %i.ze = getelementptr inbounds nuw i8, ptr %.04553.i, i64 2
  store i8 %i.zd, ptr %i.ze, align 1, !tbaa !84
  %i.zf = getelementptr inbounds nuw i8, ptr %.04553.i, i64 3
  %i.zg = getelementptr inbounds nuw i8, ptr %i.yj, i64 %indvars.iv59.i
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 1
  %i.zi = load i8, ptr %i.zh, align 1, !tbaa !84
  %i.zj = zext i8 %i.zi to i64
  %i.zk = shl nuw nsw i64 %i.zj, 2
  %i.zl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.zk ; 3 uses
  %i.zm = load i8, ptr %i.zl, align 4, !tbaa !84
  store i8 %i.zm, ptr %i.zf, align 1, !tbaa !84
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zl, i64 1
  %i.zo = load i8, ptr %i.zn, align 1, !tbaa !84
  %i.zp = getelementptr inbounds nuw i8, ptr %.04553.i, i64 4
  store i8 %i.zo, ptr %i.zp, align 1, !tbaa !84
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zl, i64 2
  %i.zr = load i8, ptr %i.zq, align 2, !tbaa !84
  %i.zs = getelementptr inbounds nuw i8, ptr %.04553.i, i64 5
  store i8 %i.zr, ptr %i.zs, align 1, !tbaa !84
  %i.zt = getelementptr inbounds nuw i8, ptr %.04553.i, i64 6 ; 2 uses
  %indvars.iv.next60.i.1 = add nuw nsw i64 %indvars.iv59.i, 2 ; 2 uses
  %niter2150.next.1 = add i64 %niter2150, 2       ; 2 uses
  %niter2150.ncmp.1 = icmp eq i64 %niter2150.next.1, %unroll_iter2149
  br i1 %niter2150.ncmp.1, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit.unr-lcssa, label %.lr.ph55.i, !llvm.loop !854

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i357 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i358.3, %.lr.ph.i ] ; 5 uses
  %.14651.i = phi ptr [ %i.yn, %.lr.ph.preheader.i.new ], [ %i.aay, %.lr.ph.i ] ; 5 uses
  %niter2144 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter2144.next.3, %.lr.ph.i ]
  %i.zu = getelementptr inbounds nuw i8, ptr %i.yj, i64 %indvars.iv.i357
  %i.zv = load i8, ptr %i.zu, align 1, !tbaa !84
  %i.zw = zext i8 %i.zv to i64
  %i.zx = shl nuw nsw i64 %i.zw, 2
  %i.zy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.zx
  %i.zz = load <4 x i8>, ptr %i.zy, align 4, !tbaa !84
  store <4 x i8> %i.zz, ptr %.14651.i, align 1, !tbaa !84
  %i.aaa = getelementptr inbounds nuw i8, ptr %.14651.i, i64 4
  %i.aab = getelementptr inbounds nuw i8, ptr %i.yj, i64 %indvars.iv.i357
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail6bigint6squareEv:bb.a
  %i.aj = call noundef i64 @llvm.umin.i64(i64 %i.ae, i64 %i.ai) ; 4 uses
  store i64 %i.aj, ptr %i.a, align 8, !tbaa !423
  %i.ak = icmp sgt i32 %i.c, 0
  %.pre93.pre94 = load ptr, ptr %0, align 8       ; 2 uses
  br i1 %i.ak, label %.preheader46.lr.ph, label %.preheader

.preheader46.lr.ph:                               ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit
  %i.al = load ptr, ptr %1, align 8, !tbaa !418   ; 6 uses
  %wide.trip.count76 = and i64 %i.b, 2147483647
  br label %.preheader46

.preheader46:                                     ; preds = %.preheader46.lr.ph, %bb.m
  %indvars.iv71 = phi i64 [ 1, %.preheader46.lr.ph ], [ %indvars.iv.next72, %bb.m ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.preheader46.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 5 uses
  %.03750 = phi i128 [ 0, %.preheader46.lr.ph ], [ %i.bf, %bb.m ] ; 2 uses
  %xtraiter = and i64 %indvars.iv71, 1
  %i.am = icmp eq i64 %indvars.iv, 0
  br i1 %i.am, label %.epil.preheader, label %.preheader46.new

.preheader46.new:                                 ; preds = %.preheader46
  %unroll_iter = and i64 %indvars.iv71, 9223372036854775806
  br label %bb.n

.preheader.loopexit:                              ; preds = %bb.m
  %.pre93.pre = load ptr, ptr %0, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit
  %.pre93 = phi ptr [ %.pre93.pre94, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit ], [ %.pre93.pre, %.preheader.loopexit ] ; 2 uses
  %.037.lcssa = phi i128 [ 0, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit ], [ %i.bf, %.preheader.loopexit ]
  %i.an = icmp sgt i32 %i.d, %i.c
  br i1 %i.an, label %.lr.ph58, label %._crit_edge59

.lr.ph58:                                         ; preds = %.preheader
  %i.ao = load ptr, ptr %1, align 8               ; 6 uses
  %sext = shl i64 %i.b, 32                        ; 2 uses
  %i.ap = ashr exact i64 %sext, 32                ; 4 uses
  %sext109 = add i64 %sext, -4294967296
  %i.aq = ashr exact i64 %sext109, 32
  %wide.trip.count = sext i32 %i.d to i64
  %invariant.op = add nsw i64 %i.aq, %i.ap
  %i.ar = add i32 %i.c, -2
  %indvars.iv82.prol = add nsw i64 %i.ap, -1      ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %indvars.iv82.prol
  br label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.unr-lcssa:                                       ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.m, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader46
  %indvars.iv64.epil.init = phi i64 [ 0, %.preheader46 ], [ %indvars.iv.next65.1, %.unr-lcssa ]
  %indvars.iv62.epil.init = phi i64 [ %indvars.iv, %.preheader46 ], [ %indvars.iv.next63.1, %.unr-lcssa ]
  %.147.epil.init = phi i128 [ %.03750, %.preheader46 ], [ %i.bz, %.unr-lcssa ]
  %lcmp.mod150 = trunc i64 %indvars.iv71 to i1
  call void @llvm.assume(i1 %lcmp.mod150)
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv64.epil.init
  %i.av = load i32, ptr %i.au, align 4, !tbaa !72
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv62.epil.init
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !72
  %i.az = zext i32 %i.ay to i64
  %i.ba = mul nuw i64 %i.az, %i.aw
  %i.bb = zext i64 %i.ba to i128
  %i.bc = add i128 %.147.epil.init, %i.bb
  br label %bb.m

bb.m:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa147 = phi i128 [ %i.bz, %.unr-lcssa ], [ %i.bc, %.epil.preheader ] ; 2 uses
  %i.bd = trunc i128 %.lcssa147 to i32
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.pre93.pre94, i64 %indvars.iv
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !72
  %i.bf = lshr i128 %.lcssa147, 32                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  %exitcond77.not = icmp eq i64 %indvars.iv.next, %wide.trip.count76
  br i1 %exitcond77.not, label %.preheader.loopexit, label %.preheader46, !llvm.loop !1272

bb.n:                                             ; preds = %bb.n, %.preheader46.new
  %indvars.iv64 = phi i64 [ 0, %.preheader46.new ], [ %indvars.iv.next65.1, %bb.n ] ; 3 uses
  %indvars.iv62 = phi i64 [ %indvars.iv, %.preheader46.new ], [ %indvars.iv.next63.1, %bb.n ] ; 3 uses
  %.147 = phi i128 [ %.03750, %.preheader46.new ], [ %i.bz, %bb.n ]
  %niter = phi i64 [ 0, %.preheader46.new ], [ %niter.next.1, %bb.n ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv64
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !72
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv62
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !72
  %i.bl = zext i32 %i.bk to i64
  %i.bm = mul nuw i64 %i.bl, %i.bi
  %i.bn = zext i64 %i.bm to i128
  %i.bo = add i128 %.147, %i.bn
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !72
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr [4 x i8], ptr %i.al, i64 %indvars.iv62
  %i.bu = getelementptr i8, ptr %i.bt, i64 -4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !72
  %i.bw = zext i32 %i.bv to i64
  %i.bx = mul nuw i64 %i.bw, %i.bs
  %i.by = zext i64 %i.bx to i128
  %i.bz = add i128 %i.bo, %i.by                   ; 3 uses
  %indvars.iv.next65.1 = add nuw nsw i64 %indvars.iv64, 2 ; 2 uses
  %indvars.iv.next63.1 = add nsw i64 %indvars.iv62, -2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.n, !llvm.loop !1273

._crit_edge59.loopexit:                           ; preds = %._crit_edge
  %.pre92 = load ptr, ptr %0, align 8
  br label %._crit_edge59

._crit_edge59:                                    ; preds = %._crit_edge59.loopexit, %.preheader
  %i.ca = phi ptr [ %.pre92, %._crit_edge59.loopexit ], [ %.pre93, %.preheader ]
  %i.cb = trunc nuw i64 %i.aj to i32
  %smin.i = call i32 @llvm.smin.i32(i32 %i.cb, i32 1) ; 2 uses
  %i.cc = trunc nuw i64 %i.aj to i32              ; 2 uses
  %i.cd = icmp sgt i32 %i.cc, 1
  br i1 %i.cd, label %.lr.ph142, label %.critedge.i

bb.o:                                             ; preds = %.lr.ph142
  %i.ce = trunc nuw i64 %i.ch to i32              ; 2 uses
  %i.cf = icmp sgt i32 %i.ce, 1
  br i1 %i.cf, label %.lr.ph142, label %.critedge.i, !llvm.loop !42

.lr.ph142:                                        ; preds = %._crit_edge59, %bb.o
  %i.cg = phi i32 [ %i.ce, %bb.o ], [ %i.cc, %._crit_edge59 ]
  %indvars.iv.i141 = phi i64 [ %i.ch, %bb.o ], [ %i.aj, %._crit_edge59 ]
  %i.ch = add nsw i64 %indvars.iv.i141, -1        ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !72
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.o, label %..critedge.i_crit_edge, !llvm.loop !42

..critedge.i_crit_edge:                           ; preds = %.lr.ph142
  br label %.critedge.i, !llvm.loop !42

.critedge.i:                                      ; preds = %bb.o, %..critedge.i_crit_edge, %._crit_edge59
  %.0.in.lcssa.i = phi i32 [ %smin.i, %._crit_edge59 ], [ %i.cg, %..critedge.i_crit_edge ], [ %smin.i, %bb.o ]
  %i.cl = zext i32 %.0.in.lcssa.i to i64          ; 3 uses
  %i.cm = icmp ult i64 %i.ai, %i.cl
  br i1 %i.cm, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.critedge.i
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !417
  invoke void %i.co(ptr noundef nonnull align 8 dereferenceable(164) %0, i64 noundef %i.cl)
          to label %.noexc43 unwind label %bb.t, !inline_history !1274

.noexc43:                                         ; preds = %bb.p
  %.pre.i.i.i = load i64, ptr %i.h, align 8, !tbaa !419
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph58, %._crit_edge
  %indvar = phi i32 [ 0, %.lr.ph58 ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %indvars.iv88 = phi i64 [ %i.ap, %.lr.ph58 ], [ %indvars.iv.next89, %._crit_edge ] ; 3 uses
  %indvars.iv78 = phi i32 [ 1, %.lr.ph58 ], [ %indvars.iv.next79, %._crit_edge ] ; 2 uses
  %.256 = phi i128 [ %.037.lcssa, %.lr.ph58 ], [ %i.de, %._crit_edge ] ; 3 uses
  %i.cp = icmp slt i64 %indvars.iv88, %invariant.op
  br i1 %i.cp, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.cq = sext i32 %indvars.iv78 to i64           ; 3 uses
  %i.cr = sub i32 %indvar, %i.c
  %i.cs = and i32 %i.cr, 1
  %lcmp.mod152.not.not = icmp eq i32 %i.cs, 0
  br i1 %lcmp.mod152.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %indvars.iv.next81.prol = add nsw i64 %i.cq, 1
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.cq
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !72
  %i.cv = zext i32 %i.cu to i64
  %i.cw = load i32, ptr %i.as, align 4, !tbaa !72
  %i.cx = zext i32 %i.cw to i64
  %i.cy = mul nuw i64 %i.cx, %i.cv
  %i.cz = zext i64 %i.cy to i128
  %i.da = add nsw i128 %.256, %i.cz               ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa146.unr = phi i128 [ poison, %.lr.ph.preheader ], [ %i.da, %.lr.ph.prol ]
  %indvars.iv82.in.unr = phi i64 [ %i.ap, %.lr.ph.preheader ], [ %indvars.iv82.prol, %.lr.ph.prol ]
  %indvars.iv80.unr = phi i64 [ %i.cq, %.lr.ph.preheader ], [ %indvars.iv.next81.prol, %.lr.ph.prol ]
  %.352.unr = phi i128 [ %.256, %.lr.ph.preheader ], [ %i.da, %.lr.ph.prol ]
  %i.db = icmp eq i32 %i.ar, %indvar
  br i1 %i.db, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.q
  %.3.lcssa = phi i128 [ %.256, %bb.q ], [ %.lcssa146.unr, %.lr.ph.prol.loopexit ], [ %i.dy, %.lr.ph ] ; 2 uses
  %i.dc = trunc i128 %.3.lcssa to i32
  %i.dd = getelementptr inbounds [4 x i8], ptr %.pre93, i64 %indvars.iv88
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !72
  %i.de = lshr i128 %.3.lcssa, 32
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %indvars.iv.next79 = add i32 %indvars.iv78, 1
  %exitcond91.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond91.not, label %._crit_edge59.loopexit, label %bb.q, !llvm.loop !1275

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv82.in = phi i64 [ %indvars.iv82.1, %.lr.ph ], [ %indvars.iv82.in.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %indvars.iv80 = phi i64 [ %indvars.iv.next81.1, %.lr.ph ], [ %indvars.iv80.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.352 = phi i128 [ %i.dy, %.lr.ph ], [ %.352.unr, %.lr.ph.prol.loopexit ]
  %i.df = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %indvars.iv80
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !72
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr [4 x i8], ptr %i.ao, i64 %indvars.iv82.in
  %i.dj = getelementptr i8, ptr %i.di, i64 -4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !72
  %i.dl = zext i32 %i.dk to i64
  %i.dm = mul nuw i64 %i.dl, %i.dh
  %i.dn = zext i64 %i.dm to i128
  %i.do = add i128 %.352, %i.dn
  %indvars.iv82.1 = add nsw i64 %indvars.iv82.in, -2 ; 2 uses
  %indvars.iv.next81.1 = add nsw i64 %indvars.iv80, 2 ; 2 uses
  %i.dp = getelementptr [4 x i8], ptr %i.ao, i64 %indvars.iv80
  %i.dq = getelementptr i8, ptr %i.dp, i64 4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !72
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %indvars.iv82.1
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !72
  %i.dv = zext i32 %i.du to i64
  %i.dw = mul nuw i64 %i.dv, %i.ds
  %i.dx = zext i64 %i.dw to i128
  %i.dy = add i128 %i.do, %i.dx                   ; 2 uses
  %lftr.wideiv117.1 = trunc i64 %indvars.iv.next81.1 to i32
  %exitcond.1 = icmp eq i32 %lftr.wideiv117.1, %i.c
  br i1 %exitcond.1, label %._crit_edge, label %.lr.ph, !llvm.loop !1276

bb.r:                                             ; preds = %.noexc43, %.critedge.i
  %i.dz = phi i64 [ %i.ai, %.critedge.i ], [ %.pre.i.i.i, %.noexc43 ]
  %i.ea = call noundef i64 @llvm.umin.i64(i64 %i.cl, i64 %i.dz)
  store i64 %i.ea, ptr %i.a, align 8, !tbaa !423
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !422
  %i.ed = shl nsw i32 %i.ec, 1
  store i32 %i.ed, ptr %i.eb, align 8, !tbaa !422
  %i.ee = load ptr, ptr %1, align 8, !tbaa !418   ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i = icmp eq ptr %i.ee, %i.ef
  br i1 %.not.i.i, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef %i.ee) #53
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #53
  ret void

bb.t:                                             ; preds = %bb.p
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.l
  %.pn = phi { ptr, i32 } [ %i.eg, %bb.t ], [ %i.at, %bb.l ]
  %i.eh = load ptr, ptr %1, align 8, !tbaa !418   ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i44 = icmp eq ptr %i.eh, %i.ei
  br i1 %.not.i.i44, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit45, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef %i.eh) #53
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit45

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit45: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #53
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i32 noundef %4, ptr %5) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__1::locale", align 8  ; 8 uses
  %7 = alloca %class.anon.128, align 8            ; 11 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !354    ; 2 uses
  %i.b = and i32 %i.a, 16384
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #53
  %.not.i.i.i = icmp eq ptr %5, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZNSt3__16localeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #53
  br label %_ZNK3fmt3v1210locale_ref3getINSt3__16localeEEET_v.exit.i.i

bb.d:                                             ; preds = %bb.b
  call void @_ZNSt3__16localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #53
  br label %_ZNK3fmt3v1210locale_ref3getINSt3__16localeEEET_v.exit.i.i

_ZNK3fmt3v1210locale_ref3getINSt3__16localeEEET_v.exit.i.i: ; preds = %bb.d, %bb.c
  %i.c = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNKSt3__16locale9use_facetERNS0_2idE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(12) @_ZNSt3__18numpunctIcE2idE)
          to label %_ZNSt3__19use_facetB8ne180100INS_8numpunctIcEEEERKT_RKNS_6localeE.exit.i.i unwind label %bb.e ; 2 uses

_ZNSt3__19use_facetB8ne180100INS_8numpunctIcEEEERKT_RKNS_6localeE.exit.i.i: ; preds = %_ZNK3fmt3v1210locale_ref3getINSt3__16localeEEET_v.exit.i.i
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !125
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef signext i8 %i.f(ptr noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit unwind label %bb.e, !inline_history !43

bb.e:                                             ; preds = %_ZNSt3__19use_facetB8ne180100INS_8numpunctIcEEEERKT_RKNS_6localeE.exit.i.i, %_ZNK3fmt3v1210locale_ref3getINSt3__16localeEEET_v.exit.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #53
  resume { ptr, i32 } %i.h

_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit: ; preds = %_ZNSt3__19use_facetB8ne180100INS_8numpunctIcEEEERKT_RKNS_6localeE.exit.i.i
  call void @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #53
  %.pre = load i32, ptr %2, align 4, !tbaa !354
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit
  %i.i = phi i32 [ %.pre, %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit ], [ %i.a, %bb.a ] ; 5 uses
  %i.j = phi i8 [ %i.g, %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit ], [ 46, %bb.a ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !412  ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !413
  %i.o = add nsw i32 %i.n, %i.l                   ; 3 uses
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  %i.q = trunc i32 %i.i to i8
  %i.r = and i8 %i.q, 7
  switch i8 %i.r, label %bb.g [
    i8 2, label %bb.h
    i8 1, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !356  ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  %. = select i1 %i.u, i32 %i.t, i32 %4
  %i.v = icmp sgt i32 %i.o, -4
  %i.w = icmp sle i32 %i.o, %.
  %i.x = and i1 %i.v, %i.w
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.y = ptrtoint ptr %5 to i64
  %i.z = call ptr @_ZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.l, i8 noundef signext %i.j, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i64 %i.y)
  br label %bb.t

bb.i:                                             ; preds = %bb.f, %bb.g
  %.not51 = icmp ne i32 %3, 0
  %i.aa = zext i1 %.not51 to i32
  %i.ab = add nsw i32 %i.l, %i.aa
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  %i.ad = and i32 %i.i, 8192
  %.not53 = icmp eq i32 %i.ad, 0
  br i1 %.not53, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !356
  %i.ag = sub nsw i32 %i.af, %i.l
  %i.ah = call noundef i32 @llvm.smax.i32(i32 %i.ag, i32 0) ; 2 uses
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = add nsw i64 %i.ai, %i.ac
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ak = icmp eq i32 %i.l, 1
  %spec.select = select i1 %i.ak, i8 0, i8 %i.j
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.049 = phi i32 [ %i.ah, %bb.j ], [ 0, %bb.k ]
  %.048 = phi i64 [ %i.aj, %bb.j ], [ %i.ac, %bb.k ]
  %.0 = phi i8 [ %i.j, %bb.j ], [ %spec.select, %bb.k ] ; 2 uses
  %.not52 = icmp ne i8 %.0, 0
  %i.al = zext i1 %.not52 to i64
  %i.am = call i32 @llvm.abs.i32(i32 %i.p, i1 true) ; 2 uses
  %i.an = icmp samesign ult i32 %i.am, 100
  %i.ao = icmp samesign ugt i32 %i.am, 999
  %i.ap = select i1 %i.ao, i64 6, i64 5
  %.0.i = select i1 %i.an, i64 4, i64 %i.ap
  %i.aq = add nsw i64 %.048, %.0.i
  %i.ar = add nsw i64 %i.aq, %i.al                ; 3 uses
  %i.as = and i32 %i.i, 4096
  %.not54 = icmp eq i32 %i.as, 0
  %i.at = select i1 %.not54, i8 101, i8 69
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #53
  store i32 %3, ptr %7, align 8, !tbaa !425
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1278
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 %i.l, ptr %i.av, align 8, !tbaa !426
end_hunk_1
