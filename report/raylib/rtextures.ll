Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtextures?download=true
inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 118
begin_hunk_0_@stbi__parse_png_file:bb.a
  %i.ry = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.rx) #53 ; 2 uses
  %i.rz = icmp eq ptr %i.ry, null
  br i1 %i.rz, label %stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.sa = xor i1 %i.rw, true
  %i.sb = zext i1 %i.sa to i32
  store ptr %i.rk, ptr %3, align 8
  %i.sc = sext i32 %.0233 to i64
  %i.sd = getelementptr inbounds i8, ptr %i.rk, i64 %i.sc
  %i.se = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.sd, ptr %i.se, align 8
  %i.sf = call fastcc i32 @stbi__do_zlib(ptr noundef %3, ptr noundef nonnull %i.ry, i32 noundef %i.rv, i32 noundef 1, i32 noundef %i.sb)
  %.not.i346 = icmp eq i32 %i.sf, 0
  br i1 %.not.i346, label %bb.fg, label %stbi_zlib_decode_malloc_guesssize_headerflag.exit

bb.fg:                                            ; preds = %bb.ff
  %i.sg = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.sh = load ptr, ptr %i.sg, align 8
  call void @free(ptr noundef %i.sh) #52
  br label %stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread

stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread: ; preds = %bb.fg, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #52
  store ptr null, ptr %i.e, align 8
  br label %.thread400

stbi_zlib_decode_malloc_guesssize_headerflag.exit: ; preds = %bb.ff
  %i.si = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.sj = load ptr, ptr %i.si, align 8
  %i.sk = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.sl = load ptr, ptr %i.sk, align 8            ; 3 uses
  %i.sm = ptrtoint ptr %i.sj to i64
  %i.sn = ptrtoint ptr %i.sl to i64
  %i.so = sub i64 %i.sm, %i.sn
  %i.sp = trunc i64 %i.so to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #52
  store ptr %i.sl, ptr %i.e, align 8
  %i.sq = icmp eq ptr %i.sl, null
  br i1 %i.sq, label %.thread400, label %bb.fh

bb.fh:                                            ; preds = %stbi_zlib_decode_malloc_guesssize_headerflag.exit
  %i.sr = load ptr, ptr %i.f, align 8
  call void @free(ptr noundef %i.sr) #52
  store ptr null, ptr %i.f, align 8
  %i.ss = load i32, ptr %i.gl, align 8            ; 2 uses
  %i.st = add nsw i32 %i.ss, 1                    ; 2 uses
  %i.su = icmp eq i32 %2, %i.st
  %i.sv = icmp ne i32 %2, 3
  %or.cond5.not263.not268 = and i1 %i.sv, %i.su
  %i.sw = icmp eq i8 %.0239, 0                    ; 2 uses
  %or.cond7.not265 = select i1 %or.cond5.not263.not268, i1 %i.sw, i1 false
  %i.sx = icmp ne i8 %.0236, 0
  %or.cond10 = select i1 %or.cond7.not265, i1 true, i1 %i.sx
  %spec.select1503 = select i1 %or.cond10, i32 %i.st, i32 %i.ss ; 4 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 4 uses
  store i32 %spec.select1503, ptr %i.sy, align 4
  %i.sz = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ta = load i32, ptr %i.gm, align 8            ; 4 uses
  %i.tb = icmp eq i32 %i.ta, 16
  %i.tc = zext i1 %i.tb to i32
  %i.td = shl i32 %spec.select1503, %i.tc         ; 6 uses
  %.not.i350 = icmp eq i32 %.0214, 0
  %i.te = load ptr, ptr %0, align 8               ; 2 uses
  %i.tf = load i32, ptr %i.te, align 8            ; 4 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.te, i64 4
  %i.th = load i32, ptr %i.tg, align 4            ; 5 uses
  br i1 %.not.i350, label %stbi__create_png_image.exit, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.ti = or i32 %i.th, %i.tf
  %or.cond.not.i.i.i.i = icmp sgt i32 %i.ti, -1
  br i1 %or.cond.not.i.i.i.i, label %bb.fj, label %stbi__malloc_mad3.exit.thread.i

bb.fj:                                            ; preds = %bb.fi
  %i.tj = icmp eq i32 %i.th, 0
  br i1 %i.tj, label %stbi__mul2sizes_valid.exit.thread15.i.i.i, label %stbi__mul2sizes_valid.exit.i.i.i

stbi__mul2sizes_valid.exit.i.i.i:                 ; preds = %bb.fj
  %i.tk = udiv i32 2147483647, %i.th
  %.not23.i.i.i = icmp sgt i32 %i.tf, %i.tk
  br i1 %.not23.i.i.i, label %stbi__malloc_mad3.exit.thread.i, label %stbi__mul2sizes_valid.exit.thread15.i.i.i

stbi__mul2sizes_valid.exit.thread15.i.i.i:        ; preds = %stbi__mul2sizes_valid.exit.i.i.i, %bb.fj
  %i.tl = mul nuw nsw i32 %i.th, %i.tf            ; 3 uses
  %i.tm = or i32 %i.tl, %i.td
  %or.cond.not.i10.i.i.i = icmp sgt i32 %i.tm, -1
  br i1 %or.cond.not.i10.i.i.i, label %bb.fk, label %stbi__malloc_mad3.exit.thread.i

bb.fk:                                            ; preds = %stbi__mul2sizes_valid.exit.thread15.i.i.i
  %i.tn = icmp eq i32 %i.td, 0
  br i1 %i.tn, label %stbi__malloc_mad3.exit.i, label %stbi__mul2sizes_valid.exit12.i.i.i

stbi__mul2sizes_valid.exit12.i.i.i:               ; preds = %bb.fk
  %i.to = udiv i32 2147483647, %i.td
  %.not.i.i.i = icmp sgt i32 %i.tl, %i.to
  br i1 %.not.i.i.i, label %stbi__malloc_mad3.exit.thread.i, label %stbi__malloc_mad3.exit.i

stbi__malloc_mad3.exit.i:                         ; preds = %stbi__mul2sizes_valid.exit12.i.i.i, %bb.fk
  %i.tp = mul nuw nsw i32 %i.tl, %i.td
  %i.tq = sext i32 %i.tp to i64
  %i.tr = call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.tq) #53 ; 4 uses
  %.not92.i = icmp eq ptr %i.tr, null
  br i1 %.not92.i, label %stbi__malloc_mad3.exit.thread.i, label %.preheader100.i

.preheader100.i:                                  ; preds = %stbi__malloc_mad3.exit.i
  %i.ts = sext i32 %i.td to i64                   ; 9 uses
  br label %bb.fl

stbi__malloc_mad3.exit.thread.i:                  ; preds = %stbi__malloc_mad3.exit.i, %stbi__mul2sizes_valid.exit12.i.i.i, %stbi__mul2sizes_valid.exit.thread15.i.i.i, %stbi__mul2sizes_valid.exit.i.i.i, %bb.fi
  store ptr @.str.104, ptr @stbi__g_failure_reason, align 8
  br label %.thread400

bb.fl:                                            ; preds = %bb.fn, %.preheader100.i
  %indvars.iv112.i = phi i64 [ 0, %.preheader100.i ], [ %indvars.iv.next113.i, %bb.fn ] ; 5 uses
  %.076106.i = phi ptr [ %i.sz, %.preheader100.i ], [ %.379.i, %bb.fn ] ; 3 uses
  %.085104.i = phi i32 [ %i.sp, %.preheader100.i ], [ %.388.i, %bb.fn ] ; 3 uses
  %i.tt = load ptr, ptr %0, align 8               ; 3 uses
  %i.tu = load i32, ptr %i.tt, align 8
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.xorig, i64 %indvars.iv112.i
  %i.tw = load i32, ptr %i.tv, align 4            ; 2 uses
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.xspc, i64 %indvars.iv112.i
  %i.ty = load i32, ptr %i.tx, align 4            ; 4 uses
  %i.tz = xor i32 %i.tw, -1
  %i.ua = add i32 %i.tu, %i.tz
  %i.ub = add i32 %i.ua, %i.ty                    ; 2 uses
  %i.uc = udiv i32 %i.ub, %i.ty                   ; 6 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tt, i64 4
  %i.ue = load i32, ptr %i.ud, align 4
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.yorig, i64 %indvars.iv112.i
  %i.ug = load i32, ptr %i.uf, align 4            ; 2 uses
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.yspc, i64 %indvars.iv112.i
  %i.ui = load i32, ptr %i.uh, align 4            ; 4 uses
  %i.uj = xor i32 %i.ug, -1
  %i.uk = add i32 %i.ue, %i.uj
  %i.ul = add i32 %i.uk, %i.ui                    ; 2 uses
  %i.um = udiv i32 %i.ul, %i.ui                   ; 4 uses
  %i.un = icmp ule i32 %i.ty, %i.ub
  %i.uo = icmp ule i32 %i.ui, %i.ul
  %or.cond.i = select i1 %i.un, i1 %i.uo, i1 false
  br i1 %or.cond.i, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.up = getelementptr inbounds nuw i8, ptr %i.tt, i64 8
  %i.uq = load i32, ptr %i.up, align 8
  %i.ur = mul i32 %i.uc, %i.ta
  %i.us = mul i32 %i.ur, %i.uq
  %i.ut = add nsw i32 %i.us, 7
  %i.uu = ashr i32 %i.ut, 3
  %i.uv = add nsw i32 %i.uu, 1
  %i.uw = mul nsw i32 %i.uv, %i.um                ; 2 uses
  %i.ux = call fastcc i32 @stbi__create_png_image_raw(ptr noundef nonnull %0, ptr noundef %.076106.i, i32 noundef %.085104.i, i32 noundef %spec.select1503, i32 noundef %i.uc, i32 noundef %i.um, i32 noundef %i.ta, i32 noundef range(i32 0, 256) %.0210)
  %.not93.not.i = icmp eq i32 %i.ux, 0
  br i1 %.not93.not.i, label %.thread.i354, label %.preheader99.i

.preheader99.i:                                   ; preds = %bb.fm
  %i.uy = icmp sgt i32 %i.um, 0
  %i.uz = icmp sgt i32 %i.uc, 0
  %or.cond107.i = and i1 %i.uz, %i.uy
  %.pre115.i = load ptr, ptr %i.g, align 8        ; 4 uses
  br i1 %or.cond107.i, label %.preheader.lr.ph.split.i, label %._crit_edge103.split.i

.preheader.lr.ph.split.i:                         ; preds = %.preheader99.i
  %i.va = load ptr, ptr %0, align 8
  %i.vb = sext i32 %i.ty to i64                   ; 3 uses
  %i.vc = sext i32 %i.tw to i64                   ; 3 uses
  %i.vd = zext nneg i32 %i.uc to i64              ; 3 uses
  %i.ve = zext nneg i32 %i.um to i64
  %.pre.pre.i = load i32, ptr %i.va, align 8
  %factor.op.mul.i = mul i32 %.pre.pre.i, %i.td
  %xtraiter = and i64 %i.vd, 1
  %i.vf = icmp eq i32 %i.uc, 1
  %unroll_iter = and i64 %i.vd, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod2144 = trunc i32 %i.uc to i1
  br label %.preheader.i

.thread.i354:                                     ; preds = %bb.fm
  call void @free(ptr noundef %i.tr) #52
  br label %.thread400

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %indvars.iv109.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %indvars.iv.next110.i, %._crit_edge.i ] ; 3 uses
  %i.vg = trunc i64 %indvars.iv109.i to i32
  %i.vh = mul i32 %i.ui, %i.vg
  %i.vi = add i32 %i.vh, %i.ug
  %.reass.i = mul i32 %factor.op.mul.i, %i.vi
  %i.vj = mul nuw nsw i64 %indvars.iv109.i, %i.vd ; 3 uses
  %i.vk = zext i32 %.reass.i to i64
  %i.vl = getelementptr inbounds nuw i8, ptr %i.tr, i64 %i.vk ; 3 uses
  br i1 %i.vf, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %indvars.iv.i352 = phi i64 [ %indvars.iv.next.i353.1, %.preheader.i.new ], [ 0, %.preheader.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.vm = mul nsw i64 %indvars.iv.i352, %i.vb
  %i.vn = add nsw i64 %i.vm, %i.vc
  %i.vo = mul nsw i64 %i.vn, %i.ts
  %i.vp = getelementptr inbounds i8, ptr %i.vl, i64 %i.vo
  %i.vq = add nuw nsw i64 %indvars.iv.i352, %i.vj
  %i.vr = mul nsw i64 %i.vq, %i.ts
  %i.vs = getelementptr inbounds i8, ptr %.pre115.i, i64 %i.vr
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.vp, ptr align 1 %i.vs, i64 %i.ts, i1 false)
  %indvars.iv.next.i353 = or disjoint i64 %indvars.iv.i352, 1 ; 2 uses
  %i.vt = mul nsw i64 %indvars.iv.next.i353, %i.vb
  %i.vu = add nsw i64 %i.vt, %i.vc
  %i.vv = mul nsw i64 %i.vu, %i.ts
  %i.vw = getelementptr inbounds i8, ptr %i.vl, i64 %i.vv
  %i.vx = add nuw nsw i64 %indvars.iv.next.i353, %i.vj
  %i.vy = mul nsw i64 %i.vx, %i.ts
  %i.vz = getelementptr inbounds i8, ptr %.pre115.i, i64 %i.vy
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.vw, ptr align 1 %i.vz, i64 %i.ts, i1 false)
  %indvars.iv.next.i353.1 = add nuw nsw i64 %indvars.iv.i352, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.i.unr-lcssa, label %.preheader.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader.i
  %indvars.iv.i352.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i353.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod2144)
  %i.wa = mul nsw i64 %indvars.iv.i352.epil.init, %i.vb
  %i.wb = add nsw i64 %i.wa, %i.vc
  %i.wc = mul nsw i64 %i.wb, %i.ts
  %i.wd = getelementptr inbounds i8, ptr %i.vl, i64 %i.wc
  %i.we = add nuw nsw i64 %indvars.iv.i352.epil.init, %i.vj
  %i.wf = mul nsw i64 %i.we, %i.ts
  %i.wg = getelementptr inbounds i8, ptr %.pre115.i, i64 %i.wf
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.wd, ptr align 1 %i.wg, i64 %i.ts, i1 false)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1 ; 2 uses
  %i.wh = icmp samesign ult i64 %indvars.iv.next110.i, %i.ve
  br i1 %i.wh, label %.preheader.i, label %._crit_edge103.split.i

._crit_edge103.split.i:                           ; preds = %._crit_edge.i, %.preheader99.i
  call void @free(ptr noundef %.pre115.i) #52
  %i.wi = zext i32 %i.uw to i64
  %i.wj = getelementptr inbounds nuw i8, ptr %.076106.i, i64 %i.wi
  %i.wk = sub i32 %.085104.i, %i.uw
  br label %bb.fn

bb.fn:                                            ; preds = %._crit_edge103.split.i, %bb.fl
  %.388.i = phi i32 [ %.085104.i, %bb.fl ], [ %i.wk, %._crit_edge103.split.i ]
  %.379.i = phi ptr [ %.076106.i, %bb.fl ], [ %i.wj, %._crit_edge103.split.i ]
  %indvars.iv.next113.i = add nuw nsw i64 %indvars.iv112.i, 1 ; 2 uses
  %exitcond.not.i351 = icmp eq i64 %indvars.iv.next113.i, 7
  br i1 %exitcond.not.i351, label %stbi__create_png_image.exit.thread394, label %bb.fl

stbi__create_png_image.exit.thread394:            ; preds = %bb.fn
  store ptr %i.tr, ptr %i.g, align 8
  br label %bb.fo

stbi__create_png_image.exit:                      ; preds = %bb.fh
  %i.wl = call fastcc i32 @stbi__create_png_image_raw(ptr noundef nonnull %0, ptr noundef readonly %i.sz, i32 noundef %i.sp, i32 noundef %spec.select1503, i32 noundef %i.tf, i32 noundef %i.th, i32 noundef %i.ta, i32 noundef range(i32 0, 256) %.0210)
  %.not269 = icmp eq i32 %i.wl, 0
  br i1 %.not269, label %.thread400, label %bb.fo

bb.fo:                                            ; preds = %stbi__create_png_image.exit.thread394, %stbi__create_png_image.exit
  %.not270 = icmp eq i8 %.0236, 0                 ; 2 uses
  br i1 %.not270, label %bb.fs, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.wm = load i32, ptr %i.gm, align 8
  %i.wn = icmp eq i32 %i.wm, 16
  %i.wo = load i32, ptr %i.sy, align 4            ; 2 uses
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %.val300 = load ptr, ptr %i.g, align 8          ; 2 uses
  %.val.val = load i32, ptr %.val, align 8        ; 2 uses
  %i.wp = getelementptr i8, ptr %.val, i64 4
  %.val.val301 = load i32, ptr %i.wp, align 4     ; 2 uses
  br i1 %i.wn, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  call fastcc void @stbi__compute_transparency16(i32 %.val.val, i32 %.val.val301, ptr %.val300, ptr noundef %i.c, i32 noundef %i.wo)
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fp
  call fastcc void @stbi__compute_transparency(i32 %.val.val, i32 %.val.val301, ptr %.val300, ptr noundef %i.b, i32 noundef %i.wo)
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq, %bb.fo
  %i.wq = load i32, ptr @stbi__de_iphone_flag_global, align 4
  %i.wr = icmp ne i32 %i.wq, 0
  %or.cond12 = select i1 %i.rw, i1 %i.wr, i1 false
  br i1 %or.cond12, label %bb.ft, label %bb.fv

bb.ft:                                            ; preds = %bb.fs
  %i.ws = load i32, ptr %i.sy, align 4
  %i.wt = icmp sgt i32 %i.ws, 2
  br i1 %i.wt, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %.val305 = load ptr, ptr %0, align 8
  %.val306 = load ptr, ptr %i.g, align 8
  call fastcc void @stbi__de_iphone(ptr %.val305, ptr %.val306)
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft, %bb.fs
  br i1 %i.sw, label %bb.fy, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.wu = zext nneg i8 %.0239 to i32              ; 2 uses
  store i32 %i.wu, ptr %i.gl, align 8
  %i.wv = icmp samesign ugt i32 %2, 2
  %spec.select = select i1 %i.wv, i32 %2, i32 %i.wu ; 4 uses
  store i32 %spec.select, ptr %i.sy, align 4
  %i.ww = load ptr, ptr %0, align 8               ; 2 uses
  %i.wx = load i32, ptr %i.ww, align 8
  %i.wy = getelementptr inbounds nuw i8, ptr %i.ww, i64 4
  %i.wz = load i32, ptr %i.wy, align 4
  %i.xa = mul i32 %i.wz, %i.wx                    ; 9 uses
  %i.xb = load ptr, ptr %i.g, align 8             ; 9 uses
  %or.cond.not.i.i.i.i355 = icmp sgt i32 %i.xa, -1
  br i1 %or.cond.not.i.i.i.i355, label %stbi__mul2sizes_valid.exit.i.i.i357, label %stbi__expand_png_palette.exit.thread

stbi__mul2sizes_valid.exit.i.i.i357:              ; preds = %bb.fw
  %i.xc = udiv i32 2147483647, %spec.select
  %.not10.i.i.i = icmp samesign ugt i32 %i.xa, %i.xc
  br i1 %.not10.i.i.i, label %stbi__expand_png_palette.exit.thread, label %stbi__malloc_mad2.exit.i

stbi__malloc_mad2.exit.i:                         ; preds = %stbi__mul2sizes_valid.exit.i.i.i357
  %i.xd = mul nuw nsw i32 %i.xa, %spec.select
  %i.xe = zext nneg i32 %i.xd to i64
  %i.xf = call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.xe) #53 ; 6 uses
  %i.xg = icmp eq ptr %i.xf, null
  br i1 %i.xg, label %stbi__expand_png_palette.exit.thread, label %bb.fx

stbi__expand_png_palette.exit.thread:             ; preds = %bb.fw, %stbi__mul2sizes_valid.exit.i.i.i357, %stbi__malloc_mad2.exit.i
  store ptr @.str.104, ptr @stbi__g_failure_reason, align 8
  br label %.thread400

bb.fx:                                            ; preds = %stbi__malloc_mad2.exit.i
  %i.xh = icmp eq i32 %spec.select, 3
  %.not56.i = icmp eq i32 %i.xa, 0                ; 2 uses
  br i1 %i.xh, label %.preheader.i361, label %.preheader49.i

.preheader49.i:                                   ; preds = %bb.fx
  br i1 %.not56.i, label %stbi__expand_png_palette.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader49.i
  %wide.trip.count.i = zext nneg i32 %i.xa to i64 ; 2 uses
  %xtraiter2145 = and i64 %wide.trip.count.i, 3   ; 3 uses
  %i.xi = icmp ult i32 %i.xa, 4
  br i1 %i.xi, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter2148 = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.preheader.i361:                                  ; preds = %bb.fx
  br i1 %.not56.i, label %stbi__expand_png_palette.exit, label %.lr.ph55.preheader.i

.lr.ph55.preheader.i:                             ; preds = %.preheader.i361
  %wide.trip.count62.i = zext nneg i32 %i.xa to i64 ; 2 uses
  %xtraiter2150 = and i64 %wide.trip.count62.i, 1
  %i.xj = icmp eq i32 %i.xa, 1
  br i1 %i.xj, label %.lr.ph55.i.epil.preheader, label %.lr.ph55.preheader.i.new

.lr.ph55.preheader.i.new:                         ; preds = %.lr.ph55.preheader.i
  %unroll_iter2154 = and i64 %wide.trip.count62.i, 2147483646
  br label %.lr.ph55.i

.lr.ph55.i:                                       ; preds = %.lr.ph55.i, %.lr.ph55.preheader.i.new
  %indvars.iv59.i = phi i64 [ 0, %.lr.ph55.preheader.i.new ], [ %indvars.iv.next60.i.1, %.lr.ph55.i ] ; 3 uses
  %.04553.i = phi ptr [ %i.xf, %.lr.ph55.preheader.i.new ], [ %i.yk, %.lr.ph55.i ] ; 7 uses
  %niter2155 = phi i64 [ 0, %.lr.ph55.preheader.i.new ], [ %niter2155.next.1, %.lr.ph55.i ]
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xb, i64 %indvars.iv59.i
  %i.xl = load i8, ptr %i.xk, align 1
  %i.xm = zext i8 %i.xl to i64
  %i.xn = shl nuw nsw i64 %i.xm, 2
  %i.xo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.xn ; 3 uses
  %i.xp = load i8, ptr %i.xo, align 4
  store i8 %i.xp, ptr %.04553.i, align 1
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xo, i64 1
  %i.xr = load i8, ptr %i.xq, align 1
  %i.xs = getelementptr inbounds nuw i8, ptr %.04553.i, i64 1
  store i8 %i.xr, ptr %i.xs, align 1
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xo, i64 2
  %i.xu = load i8, ptr %i.xt, align 2
  %i.xv = getelementptr inbounds nuw i8, ptr %.04553.i, i64 2
  store i8 %i.xu, ptr %i.xv, align 1
  %i.xw = getelementptr inbounds nuw i8, ptr %.04553.i, i64 3
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xb, i64 %indvars.iv59.i
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 1
  %i.xz = load i8, ptr %i.xy, align 1
  %i.ya = zext i8 %i.xz to i64
  %i.yb = shl nuw nsw i64 %i.ya, 2
  %i.yc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.yb ; 3 uses
  %i.yd = load i8, ptr %i.yc, align 4
  store i8 %i.yd, ptr %i.xw, align 1
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yc, i64 1
  %i.yf = load i8, ptr %i.ye, align 1
  %i.yg = getelementptr inbounds nuw i8, ptr %.04553.i, i64 4
  store i8 %i.yf, ptr %i.yg, align 1
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yc, i64 2
  %i.yi = load i8, ptr %i.yh, align 2
  %i.yj = getelementptr inbounds nuw i8, ptr %.04553.i, i64 5
  store i8 %i.yi, ptr %i.yj, align 1
  %i.yk = getelementptr inbounds nuw i8, ptr %.04553.i, i64 6 ; 2 uses
  %indvars.iv.next60.i.1 = add nuw nsw i64 %indvars.iv59.i, 2 ; 2 uses
  %niter2155.next.1 = add i64 %niter2155, 2       ; 2 uses
  %niter2155.ncmp.1 = icmp eq i64 %niter2155.next.1, %unroll_iter2154
  br i1 %niter2155.ncmp.1, label %stbi__expand_png_palette.exit.loopexit.unr-lcssa, label %.lr.ph55.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i358 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i359.3, %.lr.ph.i ] ; 5 uses
  %.14651.i = phi ptr [ %i.xf, %.lr.ph.preheader.i.new ], [ %i.zp, %.lr.ph.i ] ; 5 uses
  %niter2149 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter2149.next.3, %.lr.ph.i ]
  %i.yl = getelementptr inbounds nuw i8, ptr %i.xb, i64 %indvars.iv.i358
  %i.ym = load i8, ptr %i.yl, align 1
  %i.yn = zext i8 %i.ym to i64
  %i.yo = shl nuw nsw i64 %i.yn, 2
  %i.yp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.yo
  %i.yq = load <4 x i8>, ptr %i.yp, align 4
  store <4 x i8> %i.yq, ptr %.14651.i, align 1
  %i.yr = getelementptr inbounds nuw i8, ptr %.14651.i, i64 4
  %i.ys = getelementptr inbounds nuw i8, ptr %i.xb, i64 %indvars.iv.i358
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 1
  %i.yu = load i8, ptr %i.yt, align 1
  %i.yv = zext i8 %i.yu to i64
  %i.yw = shl nuw nsw i64 %i.yv, 2
  %i.yx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.yw
  %i.yy = load <4 x i8>, ptr %i.yx, align 4
  store <4 x i8> %i.yy, ptr %i.yr, align 1
  %i.yz = getelementptr inbounds nuw i8, ptr %.14651.i, i64 8
end_hunk_0
begin_hunk_1_@stbir__calculate_filters:bb.a
  %.not153170 = icmp sgt i32 %i.gs, %i.gu
  br i1 %.not153170, label %._crit_edge178, label %.lr.ph177

.lr.ph177:                                        ; preds = %bb.z
  %i.gw = load ptr, ptr %0, align 8
  %i.gx = add nsw i32 %i.gs, %i.cp                ; 2 uses
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.gw, i64 %i.gy
  %i.ha = load ptr, ptr %i.m, align 8
  %i.hb = mul nsw i32 %i.gv, %i.gx
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.ha, i64 %i.hc
  %i.he = xor i32 %.0139181, -1
  %i.hf = add nsw i32 %.0139181, -2
  %i.hg = sext i32 %i.gv to i64
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph177, %stbir__insert_coeff.exit
  %.0134175 = phi ptr [ %.2144180, %.lr.ph177 ], [ %i.hh, %stbir__insert_coeff.exit ] ; 2 uses
  %.0135174 = phi ptr [ %i.hd, %.lr.ph177 ], [ %i.jv, %stbir__insert_coeff.exit ] ; 14 uses
  %.0136173 = phi i32 [ %i.gs, %.lr.ph177 ], [ %i.jw, %stbir__insert_coeff.exit ] ; 4 uses
  %.1172 = phi i32 [ %.0137182, %.lr.ph177 ], [ %.2, %stbir__insert_coeff.exit ] ; 8 uses
  %.0138171 = phi ptr [ %i.gz, %.lr.ph177 ], [ %i.ju, %stbir__insert_coeff.exit ] ; 8 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.0134175, i64 4
  %i.hi = load float, ptr %.0134175, align 4      ; 5 uses
  %i.hj = tail call float @llvm.fabs.f32(float %i.hi)
  %or.cond = fcmp ult float %i.hj, f0x03800000
  br i1 %or.cond, label %stbir__insert_coeff.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hk = icmp sgt i32 %.0136173, %.1172
  br i1 %i.hk, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hl = load i32, ptr %.0138171, align 4        ; 8 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.0138171, i64 4 ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 4            ; 6 uses
  %i.ho = icmp sgt i32 %i.hl, %i.hn
  br i1 %i.ho, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.hp = load ptr, ptr %0, align 8
  %i.hq = add nsw i32 %.1172, %i.cp
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr [8 x i8], ptr %i.hp, i64 %i.hr ; 2 uses
  %.0133167 = getelementptr i8, ptr %i.hs, i64 8  ; 2 uses
  %i.ht = icmp ult ptr %.0133167, %.0138171
  br i1 %i.ht, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ad, %.lr.ph
  %.0133169 = phi ptr [ %.0133, %.lr.ph ], [ %.0133167, %bb.ad ] ; 3 uses
  %.pn154168 = phi ptr [ %.0133169, %.lr.ph ], [ %i.hs, %bb.ad ]
  store i32 0, ptr %.0133169, align 4
  %i.hu = getelementptr i8, ptr %.pn154168, i64 12
  store i32 -1, ptr %i.hu, align 4
  %.0133 = getelementptr i8, ptr %.0133169, i64 8 ; 2 uses
  %i.hv = icmp ult ptr %.0133, %.0138171
  br i1 %i.hv, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.ad
  store i32 %.0139181, ptr %.0138171, align 4
  %i.hw = getelementptr inbounds nuw i8, ptr %.0138171, i64 4
  store i32 %.0139181, ptr %i.hw, align 4
  store float %i.hi, ptr %.0135174, align 4
  br label %stbir__insert_coeff.exit

bb.ae:                                            ; preds = %bb.ac
  %.not.i162 = icmp sgt i32 %.0139181, %i.hn
  br i1 %.not.i162, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hx = icmp slt i32 %.0139181, %i.hl
  br i1 %i.hx, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.hy = sub nuw nsw i32 %i.hn, %.0139181
  %.not60.not.i = icmp slt i32 %i.hy, %i.gv
  br i1 %.not60.not.i, label %.lr.ph.preheader.i, label %stbir__insert_coeff.exit

.lr.ph.preheader.i:                               ; preds = %bb.ag
  %i.hz = sub nuw nsw i32 %i.hl, %.0139181        ; 2 uses
  %i.ia = sub i32 %i.hn, %i.hl                    ; 2 uses
  %i.ib = zext i32 %i.ia to i64                   ; 4 uses
  %i.ic = sext i32 %i.hz to i64                   ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %.0135174, i64 %i.ic ; 6 uses
  %i.id = add nuw nsw i64 %i.ib, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ia, 7
  %i.ie = shl nsw i64 %i.ic, 2
  %diff.check = icmp ugt i64 %i.ie, -32
  %or.cond208 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond208, label %.lr.ph.i164.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.id, 8589934584              ; 3 uses
  %i.if = sub nsw i64 %i.ib, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ig = sub i64 %i.ib, %index                   ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %i.ig ; 2 uses
  %i.ii = getelementptr inbounds i8, ptr %i.ih, i64 -12
  %i.ij = getelementptr inbounds i8, ptr %i.ih, i64 -28
  %wide.load = load <4 x float>, ptr %i.ii, align 4
  %wide.load207 = load <4 x float>, ptr %i.ij, align 4
  %i.ik = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ig ; 2 uses
  %i.il = getelementptr i8, ptr %i.ik, i64 -12
  %i.im = getelementptr i8, ptr %i.ik, i64 -28
  store <4 x float> %wide.load, ptr %i.il, align 4
  store <4 x float> %wide.load207, ptr %i.im, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.in = icmp eq i64 %index.next, %n.vec
  br i1 %i.in, label %middle.block, label %vector.body, !llvm.loop !589

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.id, %n.vec
  br i1 %cmp.n, label %.preheader.i.loopexit, label %.lr.ph.i164.preheader

.lr.ph.i164.preheader:                            ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i165.ph = phi i64 [ %i.ib, %.lr.ph.preheader.i ], [ %i.if, %middle.block ] ; 4 uses
  %i.io = add nsw i64 %indvars.iv.i165.ph, 1
  %xtraiter = and i64 %i.io, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i164.prol.loopexit, label %.lr.ph.i164.prol

.lr.ph.i164.prol:                                 ; preds = %.lr.ph.i164.preheader, %.lr.ph.i164.prol
  %indvars.iv.i165.prol = phi i64 [ %indvars.iv.next.i166.prol, %.lr.ph.i164.prol ], [ %indvars.iv.i165.ph, %.lr.ph.i164.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i164.prol ], [ 0, %.lr.ph.i164.preheader ]
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.i165.prol
  %i.iq = load float, ptr %i.ip, align 4
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i165.prol
  store float %i.iq, ptr %gep.i.prol, align 4
  %indvars.iv.next.i166.prol = add nsw i64 %indvars.iv.i165.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i164.prol.loopexit, label %.lr.ph.i164.prol, !llvm.loop !590

.lr.ph.i164.prol.loopexit:                        ; preds = %.lr.ph.i164.prol, %.lr.ph.i164.preheader
  %indvars.iv.i165.unr = phi i64 [ %indvars.iv.i165.ph, %.lr.ph.i164.preheader ], [ %indvars.iv.next.i166.prol, %.lr.ph.i164.prol ]
  %i.ir = icmp ult i64 %indvars.iv.i165.ph, 3
  br i1 %i.ir, label %.preheader.i.loopexit, label %.lr.ph.i164

.preheader.i.loopexit:                            ; preds = %.lr.ph.i164.prol.loopexit, %.lr.ph.i164, %middle.block
  %i.is = icmp sgt i32 %i.hz, 1
  br i1 %i.is, label %.lr.ph63.preheader.i, label %._crit_edge.i163

.lr.ph63.preheader.i:                             ; preds = %.preheader.i.loopexit
  %scevgep.i = getelementptr i8, ptr %.0135174, i64 4
  %i.it = add i32 %i.hl, %i.he
  %i.iu = zext i32 %i.it to i64
  %i.iv = shl nuw nsw i64 %i.iu, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 0, i64 %i.iv, i1 false)
  br label %._crit_edge.i163

.lr.ph.i164:                                      ; preds = %.lr.ph.i164.prol.loopexit, %.lr.ph.i164
  %indvars.iv.i165 = phi i64 [ %indvars.iv.next.i166.3, %.lr.ph.i164 ], [ %indvars.iv.i165.unr, %.lr.ph.i164.prol.loopexit ] ; 6 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.i165
  %i.ix = load float, ptr %i.iw, align 4
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i165
  store float %i.ix, ptr %gep.i, align 4
  %indvars.iv.next.i166 = add nsw i64 %indvars.iv.i165, -1 ; 2 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.next.i166
  %i.iz = load float, ptr %i.iy, align 4
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i166
  store float %i.iz, ptr %gep.i.1, align 4
  %indvars.iv.next.i166.1 = add nsw i64 %indvars.iv.i165, -2 ; 2 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.next.i166.1
  %i.jb = load float, ptr %i.ja, align 4
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i166.1
  store float %i.jb, ptr %gep.i.2, align 4
  %indvars.iv.next.i166.2 = add nsw i64 %indvars.iv.i165, -3 ; 3 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.next.i166.2
  %i.jd = load float, ptr %i.jc, align 4
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i166.2
  store float %i.jd, ptr %gep.i.3, align 4
  %indvars.iv.next.i166.3 = add nsw i64 %indvars.iv.i165, -4
  %.not81.i.3 = icmp eq i64 %indvars.iv.next.i166.2, 0
  br i1 %.not81.i.3, label %.preheader.i.loopexit, label %.lr.ph.i164, !llvm.loop !591

._crit_edge.i163:                                 ; preds = %.lr.ph63.preheader.i, %.preheader.i.loopexit
  store float %i.hi, ptr %.0135174, align 4
  store i32 %.0139181, ptr %.0138171, align 4
  br label %stbir__insert_coeff.exit

bb.ah:                                            ; preds = %bb.af
  %i.je = sub nsw i32 %.0139181, %i.hl
  %i.jf = zext nneg i32 %i.je to i64
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %i.jf ; 2 uses
  %i.jh = load float, ptr %i.jg, align 4
  %i.ji = fadd float %i.hi, %i.jh
  store float %i.ji, ptr %i.jg, align 4
  br label %stbir__insert_coeff.exit

bb.ai:                                            ; preds = %bb.ae
  %i.jj = sub nsw i32 %.0139181, %i.hl            ; 3 uses
  %.not59.not.i = icmp slt i32 %i.jj, %i.gv
  br i1 %.not59.not.i, label %bb.aj, label %stbir__insert_coeff.exit

bb.aj:                                            ; preds = %bb.ai
  %i.jk = sub nsw i32 %i.hn, %i.hl
  %.064.i = add nsw i32 %i.jk, 1                  ; 2 uses
  %i.jl = icmp slt i32 %.064.i, %i.jj
  br i1 %i.jl, label %.lr.ph67.preheader.i, label %._crit_edge68.i

.lr.ph67.preheader.i:                             ; preds = %bb.aj
  %i.jm = sext i32 %.064.i to i64
  %i.jn = shl nuw nsw i64 %i.jm, 2
  %scevgep73.i = getelementptr i8, ptr %.0135174, i64 %i.jn
  %i.jo = sub i32 %i.hf, %i.hn
  %i.jp = zext i32 %i.jo to i64
  %i.jq = shl nuw nsw i64 %i.jp, 2
  %i.jr = add nuw nsw i64 %i.jq, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep73.i, i8 0, i64 %i.jr, i1 false)
  br label %._crit_edge68.i

._crit_edge68.i:                                  ; preds = %.lr.ph67.preheader.i, %bb.aj
  %i.js = sext i32 %i.jj to i64
  %i.jt = getelementptr inbounds [4 x i8], ptr %.0135174, i64 %i.js
  store float %i.hi, ptr %i.jt, align 4
  store i32 %.0139181, ptr %i.hm, align 4
  br label %stbir__insert_coeff.exit

stbir__insert_coeff.exit:                         ; preds = %._crit_edge68.i, %bb.ai, %bb.ah, %._crit_edge.i163, %bb.ag, %._crit_edge, %bb.aa
  %.2 = phi i32 [ %.0136173, %._crit_edge ], [ %.1172, %bb.aa ], [ %.1172, %bb.ag ], [ %.1172, %._crit_edge.i163 ], [ %.1172, %bb.ah ], [ %.1172, %bb.ai ], [ %.1172, %._crit_edge68.i ] ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.0138171, i64 8
  %i.jv = getelementptr inbounds [4 x i8], ptr %.0135174, i64 %i.hg
  %i.jw = add i32 %.0136173, 1
  %exitcond.not = icmp eq i32 %.0136173, %i.gu
  br i1 %exitcond.not, label %._crit_edge178, label %bb.aa

._crit_edge178:                                   ; preds = %stbir__insert_coeff.exit, %bb.z
  %.1.lcssa = phi i32 [ %.0137182, %bb.z ], [ %.2, %stbir__insert_coeff.exit ] ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.2147179, i64 8
  %i.jy = getelementptr inbounds [4 x i8], ptr %.2144180, i64 %i.gr
  %i.jz = add nuw nsw i32 %.0139181, 1            ; 2 uses
  %exitcond192.not = icmp eq i32 %i.jz, %.1149
  br i1 %exitcond192.not, label %._crit_edge185, label %bb.z

._crit_edge185:                                   ; preds = %._crit_edge178, %bb.y
  %.0137.lcssa = phi i32 [ %i.gp, %bb.y ], [ %.1.lcssa, %._crit_edge178 ]
  %i.ka = load ptr, ptr %0, align 8               ; 2 uses
  %i.kb = add nsw i32 %.0137.lcssa, %i.cp
  %i.kc = sext i32 %i.kb to i64
  %i.kd = getelementptr [8 x i8], ptr %i.ka, i64 %i.kc ; 2 uses
  %i.ke = load i32, ptr %i.j, align 8
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.ka, i64 %i.kf ; 2 uses
  %.0187 = getelementptr i8, ptr %i.kd, i64 8     ; 2 uses
  %i.kh = icmp ult ptr %.0187, %i.kg
  br i1 %i.kh, label %.lr.ph191, label %.loopexit

.lr.ph191:                                        ; preds = %._crit_edge185, %.lr.ph191
  %.0189 = phi ptr [ %.0, %.lr.ph191 ], [ %.0187, %._crit_edge185 ] ; 3 uses
  %.pn188 = phi ptr [ %.0189, %.lr.ph191 ], [ %i.kd, %._crit_edge185 ]
  store i32 0, ptr %.0189, align 4
  %i.ki = getelementptr i8, ptr %.pn188, i64 12
  store i32 -1, ptr %i.ki, align 4
  %.0 = getelementptr i8, ptr %.0189, i64 8       ; 2 uses
  %i.kj = icmp ult ptr %.0, %i.kg
  br i1 %i.kj, label %.lr.ph191, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph191, %._crit_edge185, %stbir__calculate_coefficients_for_gather_downsample.exit, %stbir__calculate_coefficients_for_gather_upsample.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @stbir__cleanup_gathered_coefficients(i32 noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr noundef %5, i32 noundef %6) unnamed_addr #24 {
bb.a:
  %i.a = load i32, ptr %2, align 4                ; 7 uses
  %i.b = add nsw i32 %i.a, -1                     ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load i32, ptr %i.c, align 4              ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.f = load i32, ptr %i.e, align 4              ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp ne i32 %i.h, 0
  %i.j = icmp slt i32 %i.d, %3
  %i.k = select i1 %i.i, i1 %i.j, i1 false        ; 2 uses
  %spec.select = select i1 %i.k, i32 %i.d, i32 %3 ; 2 uses
  %i.l = icmp sgt i32 %spec.select, 0
  br i1 %i.l, label %.lr.ph319, label %._crit_edge320

.lr.ph319:                                        ; preds = %bb.a
  %i.m = sext i32 %6 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph319, %.loopexit292
  %.0190317 = phi ptr [ %4, %.lr.ph319 ], [ %i.bh, %.loopexit292 ] ; 3 uses
  %.0192315 = phi ptr [ %5, %.lr.ph319 ], [ %i.bi, %.loopexit292 ] ; 9 uses
  %.0206314 = phi i32 [ 0, %.lr.ph319 ], [ %i.bj, %.loopexit292 ]
  %i.n = getelementptr inbounds nuw i8, ptr %.0190317, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %i.p = load i32, ptr %.0190317, align 4         ; 3 uses
  %.not232307 = icmp slt i32 %i.o, %i.p
  br i1 %.not232307, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.q = add i32 %i.o, 1
  %i.r = sub i32 %i.q, %i.p                       ; 3 uses
  %wide.trip.count = zext i32 %i.r to i64         ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.s = add i32 %i.r, -1
  %i.t = icmp ult i32 %i.s, 3
  br i1 %i.t, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.0187309 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.am, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.0192315, i64 %indvars.iv
  %i.v = load float, ptr %i.u, align 4
  %i.w = fpext float %i.v to double
  %i.x = fadd double %.0187309, %i.w
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.0192315, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load float, ptr %i.z, align 4
  %i.ab = fpext float %i.aa to double
  %i.ac = fadd double %i.x, %i.ab
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.0192315, i64 %indvars.iv
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load float, ptr %i.ae, align 4
  %i.ag = fpext float %i.af to double
  %i.ah = fadd double %i.ac, %i.ag
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.0192315, i64 %indvars.iv
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.ak = load float, ptr %i.aj, align 4
  %i.al = fpext float %i.ak to double
  %i.am = fadd double %i.ah, %i.al                ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %.0187309.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.am, %._crit_edge.unr-lcssa ]
  %lcmp.mod632 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod632)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.0187309.epil = phi double [ %.0187309.epil.init, %.lr.ph.epil.preheader ], [ %i.aq, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.0192315, i64 %indvars.iv.epil
  %i.ao = load float, ptr %i.an, align 4
  %i.ap = fpext float %i.ao to double
  %i.aq = fadd double %.0187309.epil, %i.ap       ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !592

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.lcssa630 = phi double [ %i.am, %._crit_edge.unr-lcssa ], [ %i.aq, %.lr.ph.epil ] ; 3 uses
  %i.ar = tail call double @llvm.fabs.f64(double %.lcssa630)
  %or.cond = fcmp olt double %i.ar, f0x3870000000000000
  br i1 %or.cond, label %._crit_edge.thread, label %bb.c

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge
  store i32 %i.p, ptr %i.n, align 4
  store float 0.000000e+00, ptr %.0192315, align 4
  br label %.loopexit292

bb.c:                                             ; preds = %._crit_edge
  %or.cond3 = fcmp ueq double %.lcssa630, 1.000000e+00
  br i1 %or.cond3, label %.loopexit292, label %.lr.ph313.preheader

.lr.ph313.preheader:                              ; preds = %bb.c
  %i.as = fdiv nnan double 1.000000e+00, %.lcssa630 ; 2 uses
  %min.iters.check = icmp ult i32 %i.r, 8
  br i1 %min.iters.check, label %.lr.ph313.preheader629, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph313.preheader
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.as, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.0192315, i64 %index ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.at, align 4
  %wide.load530 = load <4 x float>, ptr %i.au, align 4
  %i.av = fpext <4 x float> %wide.load to <4 x double>
  %i.aw = fpext <4 x float> %wide.load530 to <4 x double>
  %i.ax = fmul <4 x double> %broadcast.splat, %i.av
  %i.ay = fmul <4 x double> %broadcast.splat, %i.aw
  %i.az = fptrunc <4 x double> %i.ax to <4 x float>
  %i.ba = fptrunc <4 x double> %i.ay to <4 x float>
  store <4 x float> %i.az, ptr %i.at, align 4
end_hunk_1
begin_hunk_2_@stbir__cleanup_gathered_coefficients:bb.a
  %i.ez = load float, ptr %i.ey, align 4
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %indvars.iv380
  store float %i.ez, ptr %i.fa, align 4
  %indvars.iv.next381 = add nuw nsw i64 %indvars.iv380, 1 ; 2 uses
  %exitcond384.not = icmp eq i64 %indvars.iv.next381, %wide.trip.count383
  br i1 %exitcond384.not, label %stbir__insert_coeff.exit274, label %.preheader, !llvm.loop !599

bb.n:                                             ; preds = %bb.i
  br i1 %or.cond5, label %bb.o, label %stbir__insert_coeff.exit274

bb.o:                                             ; preds = %bb.n
  %i.fb = getelementptr inbounds nuw i8, ptr %.1191353, i64 4 ; 12 uses
  %i.fc = load i32, ptr %i.fb, align 4            ; 2 uses
  %.not = icmp slt i32 %i.fc, %i.a
  %.pre392 = load i32, ptr %.1191353, align 4     ; 2 uses
  br i1 %.not, label %.loopexit291, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %i.b, ptr %i.fb, align 4
  %scevgep.i = getelementptr i8, ptr %.1193350, i64 4
  %i.fd = sext i32 %.pre392 to i64
  %i.fe = add i32 %i.fc, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %stbir__insert_coeff.exit
  %indvars.iv373 = phi i64 [ %i.eg, %bb.p ], [ %indvars.iv.next374, %stbir__insert_coeff.exit ] ; 4 uses
  %i.ff = trunc nsw i64 %indvars.iv373 to i32     ; 2 uses
  %i.fg = icmp slt i64 %indvars.iv373, 0          ; 2 uses
  br i1 %trunc, label %call.1, label %call.0

call.0:                                           ; preds = %bb.q
  %.0.i = select i1 %i.fg, i32 0, i32 %i.b
  br label %.tail

call.1:                                           ; preds = %bb.q
  br i1 %i.fg, label %.tail, label %bb.r

bb.r:                                             ; preds = %call.1
  %.not17.i = icmp sgt i32 %i.eh, %i.ff
  %i.fh = xor i32 %i.ff, -1
  %i.fi = add i32 %i.eh, %i.fh
  %.0.i447 = select i1 %.not17.i, i32 %i.fi, i32 0
  br label %.tail

.tail:                                            ; preds = %call.1, %bb.r, %call.0
  %i.fj = phi i32 [ %.0.i, %call.0 ], [ %.0.i447, %bb.r ], [ %i.b, %call.1 ] ; 13 uses
  %i.fk = sub nsw i64 %indvars.iv373, %i.fd
  %i.fl = getelementptr inbounds [4 x i8], ptr %.1193350, i64 %i.fk
  %i.fm = load float, ptr %i.fl, align 4          ; 4 uses
  %i.fn = load i32, ptr %i.fb, align 4            ; 6 uses
  %i.fo = load i32, ptr %.1191353, align 4        ; 9 uses
  %i.fp = icmp slt i32 %i.fn, %i.fo
  br i1 %i.fp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.tail
  store i32 %i.fj, ptr %i.fb, align 4
  store i32 %i.fj, ptr %.1191353, align 4
  store float %i.fm, ptr %.1193350, align 4
  br label %stbir__insert_coeff.exit

bb.t:                                             ; preds = %.tail
  %.not.i236 = icmp sgt i32 %i.fj, %i.fn
  br i1 %.not.i236, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fq = icmp slt i32 %i.fj, %i.fo
  br i1 %i.fq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fr = sub nsw i32 %i.fn, %i.fj
  %.not60.not.i = icmp slt i32 %i.fr, %6
  br i1 %.not60.not.i, label %.lr.ph.preheader.i, label %stbir__insert_coeff.exit

.lr.ph.preheader.i:                               ; preds = %bb.v
  %i.fs = sub nsw i32 %i.fo, %i.fj                ; 2 uses
  %i.ft = sub i32 %i.fn, %i.fo                    ; 2 uses
  %i.fu = zext i32 %i.ft to i64                   ; 5 uses
  %i.fv = sext i32 %i.fs to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %.1193350, i64 %i.fv ; 6 uses
  %i.fw = add nuw nsw i64 %i.fu, 1                ; 2 uses
  %min.iters.check610 = icmp ult i32 %i.ft, 7
  br i1 %min.iters.check610, label %.lr.ph.i.preheader, label %vector.memcheck607

vector.memcheck607:                               ; preds = %.lr.ph.preheader.i
  %i.fx = sext i32 %i.fj to i64
  %i.fy = sext i32 %i.fo to i64
  %i.fz = sub nsw i64 %i.fx, %i.fy
  %i.ga = shl nsw i64 %i.fz, 2
  %i.gb = add nsw i64 %i.ga, -1
  %diff.check608 = icmp ult i64 %i.gb, 31
  br i1 %diff.check608, label %.lr.ph.i.preheader, label %vector.ph611

vector.ph611:                                     ; preds = %vector.memcheck607
  %n.vec612 = and i64 %i.fw, 8589934584           ; 3 uses
  %i.gc = sub nsw i64 %i.fu, %n.vec612
  br label %vector.body613

vector.body613:                                   ; preds = %vector.body613, %vector.ph611
  %index614 = phi i64 [ 0, %vector.ph611 ], [ %index.next617, %vector.body613 ] ; 2 uses
  %i.gd = sub i64 %i.fu, %index614                ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %i.gd ; 2 uses
  %i.gf = getelementptr inbounds i8, ptr %i.ge, i64 -12
  %i.gg = getelementptr inbounds i8, ptr %i.ge, i64 -28
  %wide.load615 = load <4 x float>, ptr %i.gf, align 4
  %wide.load616 = load <4 x float>, ptr %i.gg, align 4
  %i.gh = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.gd ; 2 uses
  %i.gi = getelementptr i8, ptr %i.gh, i64 -12
  %i.gj = getelementptr i8, ptr %i.gh, i64 -28
  store <4 x float> %wide.load615, ptr %i.gi, align 4
  store <4 x float> %wide.load616, ptr %i.gj, align 4
  %index.next617 = add nuw i64 %index614, 8       ; 2 uses
  %i.gk = icmp eq i64 %index.next617, %n.vec612
  br i1 %i.gk, label %middle.block618, label %vector.body613, !llvm.loop !600

middle.block618:                                  ; preds = %vector.body613
  %cmp.n619 = icmp eq i64 %i.fw, %n.vec612
  br i1 %cmp.n619, label %.preheader.i.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck607, %.lr.ph.preheader.i, %middle.block618
  %indvars.iv.i.ph = phi i64 [ %i.fu, %vector.memcheck607 ], [ %i.fu, %.lr.ph.preheader.i ], [ %i.gc, %middle.block618 ] ; 4 uses
  %i.gl = add nsw i64 %indvars.iv.i.ph, 1
  %xtraiter635 = and i64 %i.gl, 3                 ; 2 uses
  %lcmp.mod636.not = icmp eq i64 %xtraiter635, 0
  br i1 %lcmp.mod636.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %indvars.iv.i.prol
  %i.gn = load float, ptr %i.gm, align 4
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.prol
  store float %i.gn, ptr %gep.i.prol, align 4
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter635
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !601

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.go = icmp ult i64 %indvars.iv.i.ph, 3
  br i1 %i.go, label %.preheader.i.loopexit, label %.lr.ph.i

.preheader.i.loopexit:                            ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block618
  %i.gp = icmp sgt i32 %i.fs, 1
  br i1 %i.gp, label %.lr.ph63.preheader.i, label %._crit_edge.i

.lr.ph63.preheader.i:                             ; preds = %.preheader.i.loopexit
  %i.gq = xor i32 %i.fj, -1
  %i.gr = add i32 %i.fo, %i.gq
  %i.gs = zext i32 %i.gr to i64
  %i.gt = shl nuw nsw i64 %i.gs, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 0, i64 %i.gt, i1 false)
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %indvars.iv.i
  %i.gv = load float, ptr %i.gu, align 4
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store float %i.gv, ptr %gep.i, align 4
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %indvars.iv.next.i
  %i.gx = load float, ptr %i.gw, align 4
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  store float %i.gx, ptr %gep.i.1, align 4
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %indvars.iv.next.i.1
  %i.gz = load float, ptr %i.gy, align 4
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.1
  store float %i.gz, ptr %gep.i.2, align 4
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, -3 ; 3 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %indvars.iv.next.i.2
  %i.hb = load float, ptr %i.ha, align 4
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.2
  store float %i.hb, ptr %gep.i.3, align 4
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, -4
  %.not81.i.3 = icmp eq i64 %indvars.iv.next.i.2, 0
  br i1 %.not81.i.3, label %.preheader.i.loopexit, label %.lr.ph.i, !llvm.loop !602

._crit_edge.i:                                    ; preds = %.lr.ph63.preheader.i, %.preheader.i.loopexit
  store float %i.fm, ptr %.1193350, align 4
  store i32 %i.fj, ptr %.1191353, align 4
  br label %stbir__insert_coeff.exit

bb.w:                                             ; preds = %bb.u
  %i.hc = sub nsw i32 %i.fj, %i.fo
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %i.hd ; 2 uses
  %i.hf = load float, ptr %i.he, align 4
  %i.hg = fadd float %i.fm, %i.hf
  store float %i.hg, ptr %i.he, align 4
  br label %stbir__insert_coeff.exit

bb.x:                                             ; preds = %bb.t
  %i.hh = sub nsw i32 %i.fj, %i.fo                ; 3 uses
  %.not59.not.i = icmp slt i32 %i.hh, %6
  br i1 %.not59.not.i, label %bb.y, label %stbir__insert_coeff.exit

bb.y:                                             ; preds = %bb.x
  %i.hi = sub nsw i32 %i.fn, %i.fo
  %.064.i = add nsw i32 %i.hi, 1                  ; 2 uses
  %i.hj = icmp slt i32 %.064.i, %i.hh
  br i1 %i.hj, label %.lr.ph67.preheader.i, label %._crit_edge68.i

.lr.ph67.preheader.i:                             ; preds = %bb.y
  %i.hk = sext i32 %.064.i to i64
  %i.hl = shl nuw nsw i64 %i.hk, 2
  %scevgep73.i = getelementptr i8, ptr %.1193350, i64 %i.hl
  %i.hm = add i32 %i.fj, -2
  %i.hn = sub i32 %i.hm, %i.fn
  %i.ho = zext i32 %i.hn to i64
  %i.hp = shl nuw nsw i64 %i.ho, 2
  %i.hq = add nuw nsw i64 %i.hp, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep73.i, i8 0, i64 %i.hq, i1 false)
  br label %._crit_edge68.i

._crit_edge68.i:                                  ; preds = %.lr.ph67.preheader.i, %bb.y
  %i.hr = sext i32 %i.hh to i64
  %i.hs = getelementptr inbounds [4 x i8], ptr %.1193350, i64 %i.hr
  store float %i.fm, ptr %i.hs, align 4
  store i32 %i.fj, ptr %i.fb, align 4
  br label %stbir__insert_coeff.exit

stbir__insert_coeff.exit:                         ; preds = %bb.s, %bb.v, %._crit_edge.i, %bb.w, %bb.x, %._crit_edge68.i
  %indvars.iv.next374 = add nsw i64 %indvars.iv373, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next374 to i32
  %exitcond376.not = icmp eq i32 %i.fe, %lftr.wideiv
  br i1 %exitcond376.not, label %.loopexit291.loopexit, label %bb.q

.loopexit291.loopexit:                            ; preds = %stbir__insert_coeff.exit
  %.pre = load i32, ptr %.1191353, align 4
  br label %.loopexit291

.loopexit291:                                     ; preds = %.loopexit291.loopexit, %bb.o
  %i.ht = phi i32 [ %.pre, %.loopexit291.loopexit ], [ %.pre392, %bb.o ] ; 4 uses
  %i.hu = icmp slt i32 %i.ht, 0
  br i1 %i.hu, label %bb.z, label %stbir__insert_coeff.exit274

bb.z:                                             ; preds = %.loopexit291
  %narrow = xor i32 %i.ht, -1
  %i.hv = zext nneg i32 %narrow to i64
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %i.hv ; 2 uses
  %.not427 = icmp eq i32 %i.ht, -1
  br i1 %.not427, label %._crit_edge329, label %.lr.ph328

.lr.ph328:                                        ; preds = %bb.z
  %scevgep.i242 = getelementptr i8, ptr %.1193350, i64 4
  br label %.tail276

.tail276:                                         ; preds = %.lr.ph328, %stbir__insert_coeff.exit255
  %i.hx = phi i32 [ %i.ht, %.lr.ph328 ], [ %i.ki, %stbir__insert_coeff.exit255 ] ; 9 uses
  %.0182326 = phi ptr [ %i.hw, %.lr.ph328 ], [ %i.ib, %stbir__insert_coeff.exit255 ] ; 2 uses
  %.1325 = phi i32 [ -1, %.lr.ph328 ], [ %i.kh, %stbir__insert_coeff.exit255 ] ; 3 uses
  %i.hy = icmp sgt i32 %.1325, %i.ei
  %i.hz = sub nsw i32 0, %.1325
  %spec.select464 = select i1 %i.hy, i32 %i.hz, i32 %i.b
  %i.ia = select i1 %trunc, i32 %spec.select464, i32 0 ; 13 uses
  %i.ib = getelementptr inbounds i8, ptr %.0182326, i64 -4 ; 2 uses
  %i.ic = load float, ptr %.0182326, align 4      ; 4 uses
  %i.id = load i32, ptr %i.fb, align 4            ; 6 uses
  %i.ie = icmp slt i32 %i.id, %i.hx
  br i1 %i.ie, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.tail276
  store i32 %i.ia, ptr %i.fb, align 4
  store i32 %i.ia, ptr %.1191353, align 4
  store float %i.ic, ptr %.1193350, align 4
  br label %stbir__insert_coeff.exit255

bb.ab:                                            ; preds = %.tail276
  %.not.i237 = icmp sgt i32 %i.ia, %i.id
  br i1 %.not.i237, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.if = icmp slt i32 %i.ia, %i.hx
  br i1 %i.if, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ig = sub nsw i32 %i.id, %i.ia
  %.not60.not.i238 = icmp slt i32 %i.ig, %6
  br i1 %.not60.not.i238, label %.lr.ph.preheader.i243, label %stbir__insert_coeff.exit255

.lr.ph.preheader.i243:                            ; preds = %bb.ad
  %i.ih = sub nsw i32 %i.hx, %i.ia                ; 2 uses
  %i.ii = sub i32 %i.id, %i.hx                    ; 2 uses
  %i.ij = zext i32 %i.ii to i64                   ; 5 uses
  %i.ik = sext i32 %i.ih to i64
  %invariant.gep.i244 = getelementptr [4 x i8], ptr %.1193350, i64 %i.ik ; 6 uses
  %i.il = add nuw nsw i64 %i.ij, 1                ; 2 uses
  %min.iters.check596 = icmp ult i32 %i.ii, 7
  br i1 %min.iters.check596, label %.lr.ph.i245.preheader, label %vector.memcheck593

vector.memcheck593:                               ; preds = %.lr.ph.preheader.i243
  %i.im = sext i32 %i.ia to i64
  %i.in = sext i32 %i.hx to i64
  %i.io = sub nsw i64 %i.im, %i.in
  %i.ip = shl nsw i64 %i.io, 2
  %i.iq = add nsw i64 %i.ip, -1
  %diff.check594 = icmp ult i64 %i.iq, 31
  br i1 %diff.check594, label %.lr.ph.i245.preheader, label %vector.ph597

vector.ph597:                                     ; preds = %vector.memcheck593
  %n.vec598 = and i64 %i.il, 8589934584           ; 3 uses
  %i.ir = sub nsw i64 %i.ij, %n.vec598
  br label %vector.body599

vector.body599:                                   ; preds = %vector.body599, %vector.ph597
  %index600 = phi i64 [ 0, %vector.ph597 ], [ %index.next603, %vector.body599 ] ; 2 uses
  %i.is = sub i64 %i.ij, %index600                ; 2 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %i.is ; 2 uses
  %i.iu = getelementptr inbounds i8, ptr %i.it, i64 -12
  %i.iv = getelementptr inbounds i8, ptr %i.it, i64 -28
  %wide.load601 = load <4 x float>, ptr %i.iu, align 4
  %wide.load602 = load <4 x float>, ptr %i.iv, align 4
  %i.iw = getelementptr [4 x i8], ptr %invariant.gep.i244, i64 %i.is ; 2 uses
  %i.ix = getelementptr i8, ptr %i.iw, i64 -12
  %i.iy = getelementptr i8, ptr %i.iw, i64 -28
  store <4 x float> %wide.load601, ptr %i.ix, align 4
  store <4 x float> %wide.load602, ptr %i.iy, align 4
  %index.next603 = add nuw i64 %index600, 8       ; 2 uses
  %i.iz = icmp eq i64 %index.next603, %n.vec598
  br i1 %i.iz, label %middle.block604, label %vector.body599, !llvm.loop !603

middle.block604:                                  ; preds = %vector.body599
  %cmp.n605 = icmp eq i64 %i.il, %n.vec598
  br i1 %cmp.n605, label %.preheader.i239.loopexit, label %.lr.ph.i245.preheader

.lr.ph.i245.preheader:                            ; preds = %vector.memcheck593, %.lr.ph.preheader.i243, %middle.block604
  %indvars.iv.i246.ph = phi i64 [ %i.ij, %vector.memcheck593 ], [ %i.ij, %.lr.ph.preheader.i243 ], [ %i.ir, %middle.block604 ] ; 4 uses
  %i.ja = add nsw i64 %indvars.iv.i246.ph, 1
  %xtraiter637 = and i64 %i.ja, 3                 ; 2 uses
  %lcmp.mod638.not = icmp eq i64 %xtraiter637, 0
  br i1 %lcmp.mod638.not, label %.lr.ph.i245.prol.loopexit, label %.lr.ph.i245.prol

.lr.ph.i245.prol:                                 ; preds = %.lr.ph.i245.preheader, %.lr.ph.i245.prol
  %indvars.iv.i246.prol = phi i64 [ %indvars.iv.next.i248.prol, %.lr.ph.i245.prol ], [ %indvars.iv.i246.ph, %.lr.ph.i245.preheader ] ; 3 uses
  %prol.iter639 = phi i64 [ %prol.iter639.next, %.lr.ph.i245.prol ], [ 0, %.lr.ph.i245.preheader ]
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %indvars.iv.i246.prol
  %i.jc = load float, ptr %i.jb, align 4
  %gep.i247.prol = getelementptr [4 x i8], ptr %invariant.gep.i244, i64 %indvars.iv.i246.prol
  store float %i.jc, ptr %gep.i247.prol, align 4
  %indvars.iv.next.i248.prol = add nsw i64 %indvars.iv.i246.prol, -1 ; 2 uses
  %prol.iter639.next = add i64 %prol.iter639, 1   ; 2 uses
  %prol.iter639.cmp.not = icmp eq i64 %prol.iter639.next, %xtraiter637
  br i1 %prol.iter639.cmp.not, label %.lr.ph.i245.prol.loopexit, label %.lr.ph.i245.prol, !llvm.loop !604

.lr.ph.i245.prol.loopexit:                        ; preds = %.lr.ph.i245.prol, %.lr.ph.i245.preheader
  %indvars.iv.i246.unr = phi i64 [ %indvars.iv.i246.ph, %.lr.ph.i245.preheader ], [ %indvars.iv.next.i248.prol, %.lr.ph.i245.prol ]
  %i.jd = icmp ult i64 %indvars.iv.i246.ph, 3
  br i1 %i.jd, label %.preheader.i239.loopexit, label %.lr.ph.i245

.preheader.i239.loopexit:                         ; preds = %.lr.ph.i245.prol.loopexit, %.lr.ph.i245, %middle.block604
  %i.je = icmp sgt i32 %i.ih, 1
  br i1 %i.je, label %.lr.ph63.preheader.i241, label %._crit_edge.i240

.lr.ph63.preheader.i241:                          ; preds = %.preheader.i239.loopexit
  %i.jf = xor i32 %i.ia, -1
  %i.jg = add i32 %i.hx, %i.jf
  %i.jh = zext i32 %i.jg to i64
  %i.ji = shl nuw nsw i64 %i.jh, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i242, i8 0, i64 %i.ji, i1 false)
  br label %._crit_edge.i240

.lr.ph.i245:                                      ; preds = %.lr.ph.i245.prol.loopexit, %.lr.ph.i245
  %indvars.iv.i246 = phi i64 [ %indvars.iv.next.i248.3, %.lr.ph.i245 ], [ %indvars.iv.i246.unr, %.lr.ph.i245.prol.loopexit ] ; 6 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %indvars.iv.i246
  %i.jk = load float, ptr %i.jj, align 4
  %gep.i247 = getelementptr [4 x i8], ptr %invariant.gep.i244, i64 %indvars.iv.i246
  store float %i.jk, ptr %gep.i247, align 4
  %indvars.iv.next.i248 = add nsw i64 %indvars.iv.i246, -1 ; 2 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %indvars.iv.next.i248
  %i.jm = load float, ptr %i.jl, align 4
  %gep.i247.1 = getelementptr [4 x i8], ptr %invariant.gep.i244, i64 %indvars.iv.next.i248
  store float %i.jm, ptr %gep.i247.1, align 4
  %indvars.iv.next.i248.1 = add nsw i64 %indvars.iv.i246, -2 ; 2 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %indvars.iv.next.i248.1
  %i.jo = load float, ptr %i.jn, align 4
  %gep.i247.2 = getelementptr [4 x i8], ptr %invariant.gep.i244, i64 %indvars.iv.next.i248.1
  store float %i.jo, ptr %gep.i247.2, align 4
  %indvars.iv.next.i248.2 = add nsw i64 %indvars.iv.i246, -3 ; 3 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %indvars.iv.next.i248.2
  %i.jq = load float, ptr %i.jp, align 4
  %gep.i247.3 = getelementptr [4 x i8], ptr %invariant.gep.i244, i64 %indvars.iv.next.i248.2
  store float %i.jq, ptr %gep.i247.3, align 4
  %indvars.iv.next.i248.3 = add nsw i64 %indvars.iv.i246, -4
  %.not81.i249.3 = icmp eq i64 %indvars.iv.next.i248.2, 0
  br i1 %.not81.i249.3, label %.preheader.i239.loopexit, label %.lr.ph.i245, !llvm.loop !605

._crit_edge.i240:                                 ; preds = %.lr.ph63.preheader.i241, %.preheader.i239.loopexit
  store float %i.ic, ptr %.1193350, align 4
  store i32 %i.ia, ptr %.1191353, align 4
  br label %stbir__insert_coeff.exit255

bb.ae:                                            ; preds = %bb.ac
  %i.jr = sub nsw i32 %i.ia, %i.hx
  %i.js = zext nneg i32 %i.jr to i64
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %i.js ; 2 uses
  %i.ju = load float, ptr %i.jt, align 4
  %i.jv = fadd float %i.ic, %i.ju
  store float %i.jv, ptr %i.jt, align 4
  br label %stbir__insert_coeff.exit255

bb.af:                                            ; preds = %bb.ab
  %i.jw = sub nsw i32 %i.ia, %i.hx                ; 3 uses
  %.not59.not.i250 = icmp slt i32 %i.jw, %6
  br i1 %.not59.not.i250, label %bb.ag, label %stbir__insert_coeff.exit255

bb.ag:                                            ; preds = %bb.af
  %i.jx = sub nsw i32 %i.id, %i.hx
  %.064.i251 = add nsw i32 %i.jx, 1               ; 2 uses
  %i.jy = icmp slt i32 %.064.i251, %i.jw
  br i1 %i.jy, label %.lr.ph67.preheader.i253, label %._crit_edge68.i252

.lr.ph67.preheader.i253:                          ; preds = %bb.ag
  %i.jz = sext i32 %.064.i251 to i64
  %i.ka = shl nuw nsw i64 %i.jz, 2
  %scevgep73.i254 = getelementptr i8, ptr %.1193350, i64 %i.ka
  %reass.sub475 = sub i32 %i.ia, %i.id
  %i.kb = add i32 %reass.sub475, -2
  %i.kc = zext i32 %i.kb to i64
  %i.kd = shl nuw nsw i64 %i.kc, 2
  %i.ke = add nuw nsw i64 %i.kd, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep73.i254, i8 0, i64 %i.ke, i1 false)
  br label %._crit_edge68.i252

._crit_edge68.i252:                               ; preds = %.lr.ph67.preheader.i253, %bb.ag
  %i.kf = sext i32 %i.jw to i64
  %i.kg = getelementptr inbounds [4 x i8], ptr %.1193350, i64 %i.kf
  store float %i.ic, ptr %i.kg, align 4
  store i32 %i.ia, ptr %i.fb, align 4
  br label %stbir__insert_coeff.exit255

stbir__insert_coeff.exit255:                      ; preds = %bb.aa, %bb.ad, %._crit_edge.i240, %bb.ae, %bb.af, %._crit_edge68.i252
  %i.kh = add nsw i32 %.1325, -1                  ; 2 uses
  %i.ki = load i32, ptr %.1191353, align 4        ; 3 uses
  %i.kj = icmp sgt i32 %i.kh, %i.ki
  br i1 %i.kj, label %.tail276, label %._crit_edge329

._crit_edge329:                                   ; preds = %stbir__insert_coeff.exit255, %bb.z
  %.0182.lcssa = phi ptr [ %i.hw, %bb.z ], [ %i.ib, %stbir__insert_coeff.exit255 ]
  %.lcssa = phi i32 [ -1, %bb.z ], [ %i.ki, %stbir__insert_coeff.exit255 ] ; 9 uses
  %i.kk = load float, ptr %.0182.lcssa, align 4   ; 4 uses
  store i32 0, ptr %.1191353, align 4
  %i.kl = load i32, ptr %i.fb, align 4            ; 2 uses
  %.not226332 = icmp slt i32 %i.kl, 0
  br i1 %.not226332, label %._crit_edge336, label %.lr.ph335.preheader

.lr.ph335.preheader:                              ; preds = %._crit_edge329
  %i.km = sext i32 %.lcssa to i64
  br label %.lr.ph335

.lr.ph335:                                        ; preds = %.lr.ph335.preheader, %.lr.ph335
  %indvars.iv377 = phi i64 [ 0, %.lr.ph335.preheader ], [ %indvars.iv.next378, %.lr.ph335 ] ; 4 uses
  %i.kn = sub nsw i64 %indvars.iv377, %i.km
  %i.ko = getelementptr inbounds [4 x i8], ptr %.1193350, i64 %i.kn
  %i.kp = load float, ptr %i.ko, align 4
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %indvars.iv377
  store float %i.kp, ptr %i.kq, align 4
  %indvars.iv.next378 = add nuw nsw i64 %indvars.iv377, 1
  %i.kr = load i32, ptr %i.fb, align 4            ; 2 uses
  %i.ks = sext i32 %i.kr to i64
  %.not226.not = icmp slt i64 %indvars.iv377, %i.ks
  br i1 %.not226.not, label %.lr.ph335, label %._crit_edge336

._crit_edge336:                                   ; preds = %.lr.ph335, %._crit_edge329
  %i.kt = phi i32 [ %i.kl, %._crit_edge329 ], [ %i.kr, %.lr.ph335 ] ; 6 uses
  %i.ku = icmp slt i32 %.lcssa, 0                 ; 2 uses
  br i1 %trunc, label %call.1285, label %call.0284

call.0284:                                        ; preds = %._crit_edge336
  %spec.select.i456 = tail call i32 @llvm.smin.i32(i32 %.lcssa, i32 %i.b)
  %.0.i457 = select i1 %i.ku, i32 0, i32 %spec.select.i456
  br label %.tail282

call.1285:                                        ; preds = %._crit_edge336
  br i1 %i.ku, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %call.1285
  %i.kv = icmp sgt i32 %.lcssa, %i.ei
  %i.kw = sub nsw i32 0, %.lcssa
  %spec.select465 = select i1 %i.kv, i32 %i.kw, i32 %i.b
  br label %.tail282

bb.ai:                                            ; preds = %call.1285
  %.not.i458 = icmp slt i32 %.lcssa, %i.a
  br i1 %.not.i458, label %.tail282, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.not17.i459 = icmp slt i32 %.lcssa, %i.eh
  %i.kx = xor i32 %.lcssa, -1
  %i.ky = add i32 %i.eh, %i.kx
  %.0.i460 = select i1 %.not17.i459, i32 %i.ky, i32 0
  br label %.tail282

.tail282:                                         ; preds = %bb.ah, %bb.aj, %bb.ai, %call.0284
  %i.kz = phi i32 [ %.0.i457, %call.0284 ], [ %spec.select465, %bb.ah ], [ %.lcssa, %bb.ai ], [ %.0.i460, %bb.aj ] ; 13 uses
  %i.la = load i32, ptr %.1191353, align 4        ; 9 uses
  %i.lb = icmp slt i32 %i.kt, %i.la
  br i1 %i.lb, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.tail282
  store i32 %i.kz, ptr %i.fb, align 4
  store i32 %i.kz, ptr %.1191353, align 4
  store float %i.kk, ptr %.1193350, align 4
  br label %stbir__insert_coeff.exit274

bb.al:                                            ; preds = %.tail282
  %.not.i256 = icmp sgt i32 %i.kz, %i.kt
  br i1 %.not.i256, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.lc = icmp slt i32 %i.kz, %i.la
  br i1 %i.lc, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ld = sub nsw i32 %i.kt, %i.kz
  %.not60.not.i257 = icmp slt i32 %i.ld, %6
  br i1 %.not60.not.i257, label %.lr.ph.preheader.i262, label %stbir__insert_coeff.exit274

.lr.ph.preheader.i262:                            ; preds = %bb.an
  %i.le = sub nsw i32 %i.la, %i.kz                ; 2 uses
  %i.lf = sub i32 %i.kt, %i.la                    ; 2 uses
  %i.lg = zext i32 %i.lf to i64                   ; 5 uses
  %i.lh = sext i32 %i.le to i64
  %invariant.gep.i263 = getelementptr [4 x i8], ptr %.1193350, i64 %i.lh ; 6 uses
  %i.li = add nuw nsw i64 %i.lg, 1                ; 2 uses
  %min.iters.check582 = icmp ult i32 %i.lf, 7
  br i1 %min.iters.check582, label %.lr.ph.i264.preheader, label %vector.memcheck580

vector.memcheck580:                               ; preds = %.lr.ph.preheader.i262
  %i.lj = sext i32 %i.kz to i64
  %i.lk = sext i32 %i.la to i64
  %i.ll = sub nsw i64 %i.lj, %i.lk
  %i.lm = shl nsw i64 %i.ll, 2
  %i.ln = add nsw i64 %i.lm, -1
  %diff.check = icmp ult i64 %i.ln, 31
  br i1 %diff.check, label %.lr.ph.i264.preheader, label %vector.ph583

vector.ph583:                                     ; preds = %vector.memcheck580
  %n.vec584 = and i64 %i.li, 8589934584           ; 3 uses
  %i.lo = sub nsw i64 %i.lg, %n.vec584
  br label %vector.body585

vector.body585:                                   ; preds = %vector.body585, %vector.ph583
  %index586 = phi i64 [ 0, %vector.ph583 ], [ %index.next589, %vector.body585 ] ; 2 uses
  %i.lp = sub i64 %i.lg, %index586                ; 2 uses
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %i.lp ; 2 uses
  %i.lr = getelementptr inbounds i8, ptr %i.lq, i64 -12
  %i.ls = getelementptr inbounds i8, ptr %i.lq, i64 -28
  %wide.load587 = load <4 x float>, ptr %i.lr, align 4
  %wide.load588 = load <4 x float>, ptr %i.ls, align 4
  %i.lt = getelementptr [4 x i8], ptr %invariant.gep.i263, i64 %i.lp ; 2 uses
  %i.lu = getelementptr i8, ptr %i.lt, i64 -12
  %i.lv = getelementptr i8, ptr %i.lt, i64 -28
  store <4 x float> %wide.load587, ptr %i.lu, align 4
  store <4 x float> %wide.load588, ptr %i.lv, align 4
  %index.next589 = add nuw i64 %index586, 8       ; 2 uses
  %i.lw = icmp eq i64 %index.next589, %n.vec584
  br i1 %i.lw, label %middle.block590, label %vector.body585, !llvm.loop !606

middle.block590:                                  ; preds = %vector.body585
  %cmp.n591 = icmp eq i64 %i.li, %n.vec584
  br i1 %cmp.n591, label %.preheader.i258.loopexit, label %.lr.ph.i264.preheader

.lr.ph.i264.preheader:                            ; preds = %vector.memcheck580, %.lr.ph.preheader.i262, %middle.block590
  %indvars.iv.i265.ph = phi i64 [ %i.lg, %vector.memcheck580 ], [ %i.lg, %.lr.ph.preheader.i262 ], [ %i.lo, %middle.block590 ] ; 4 uses
  %i.lx = add nsw i64 %indvars.iv.i265.ph, 1
  %xtraiter640 = and i64 %i.lx, 3                 ; 2 uses
  %lcmp.mod641.not = icmp eq i64 %xtraiter640, 0
  br i1 %lcmp.mod641.not, label %.lr.ph.i264.prol.loopexit, label %.lr.ph.i264.prol

.lr.ph.i264.prol:                                 ; preds = %.lr.ph.i264.preheader, %.lr.ph.i264.prol
  %indvars.iv.i265.prol = phi i64 [ %indvars.iv.next.i267.prol, %.lr.ph.i264.prol ], [ %indvars.iv.i265.ph, %.lr.ph.i264.preheader ] ; 3 uses
  %prol.iter642 = phi i64 [ %prol.iter642.next, %.lr.ph.i264.prol ], [ 0, %.lr.ph.i264.preheader ]
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %indvars.iv.i265.prol
  %i.lz = load float, ptr %i.ly, align 4
  %gep.i266.prol = getelementptr [4 x i8], ptr %invariant.gep.i263, i64 %indvars.iv.i265.prol
  store float %i.lz, ptr %gep.i266.prol, align 4
  %indvars.iv.next.i267.prol = add nsw i64 %indvars.iv.i265.prol, -1 ; 2 uses
  %prol.iter642.next = add i64 %prol.iter642, 1   ; 2 uses
  %prol.iter642.cmp.not = icmp eq i64 %prol.iter642.next, %xtraiter640
  br i1 %prol.iter642.cmp.not, label %.lr.ph.i264.prol.loopexit, label %.lr.ph.i264.prol, !llvm.loop !607

.lr.ph.i264.prol.loopexit:                        ; preds = %.lr.ph.i264.prol, %.lr.ph.i264.preheader
  %indvars.iv.i265.unr = phi i64 [ %indvars.iv.i265.ph, %.lr.ph.i264.preheader ], [ %indvars.iv.next.i267.prol, %.lr.ph.i264.prol ]
  %i.ma = icmp ult i64 %indvars.iv.i265.ph, 3
  br i1 %i.ma, label %.preheader.i258.loopexit, label %.lr.ph.i264

.preheader.i258.loopexit:                         ; preds = %.lr.ph.i264.prol.loopexit, %.lr.ph.i264, %middle.block590
  %i.mb = icmp sgt i32 %i.le, 1
  br i1 %i.mb, label %.lr.ph63.preheader.i260, label %._crit_edge.i259

.lr.ph63.preheader.i260:                          ; preds = %.preheader.i258.loopexit
  %scevgep.i261 = getelementptr i8, ptr %.1193350, i64 4
  %i.mc = xor i32 %i.kz, -1
  %i.md = add i32 %i.la, %i.mc
  %i.me = zext i32 %i.md to i64
  %i.mf = shl nuw nsw i64 %i.me, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i261, i8 0, i64 %i.mf, i1 false)
  br label %._crit_edge.i259

.lr.ph.i264:                                      ; preds = %.lr.ph.i264.prol.loopexit, %.lr.ph.i264
  %indvars.iv.i265 = phi i64 [ %indvars.iv.next.i267.3, %.lr.ph.i264 ], [ %indvars.iv.i265.unr, %.lr.ph.i264.prol.loopexit ] ; 6 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %indvars.iv.i265
  %i.mh = load float, ptr %i.mg, align 4
  %gep.i266 = getelementptr [4 x i8], ptr %invariant.gep.i263, i64 %indvars.iv.i265
  store float %i.mh, ptr %gep.i266, align 4
  %indvars.iv.next.i267 = add nsw i64 %indvars.iv.i265, -1 ; 2 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %indvars.iv.next.i267
  %i.mj = load float, ptr %i.mi, align 4
  %gep.i266.1 = getelementptr [4 x i8], ptr %invariant.gep.i263, i64 %indvars.iv.next.i267
  store float %i.mj, ptr %gep.i266.1, align 4
  %indvars.iv.next.i267.1 = add nsw i64 %indvars.iv.i265, -2 ; 2 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %indvars.iv.next.i267.1
  %i.ml = load float, ptr %i.mk, align 4
  %gep.i266.2 = getelementptr [4 x i8], ptr %invariant.gep.i263, i64 %indvars.iv.next.i267.1
  store float %i.ml, ptr %gep.i266.2, align 4
  %indvars.iv.next.i267.2 = add nsw i64 %indvars.iv.i265, -3 ; 3 uses
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %indvars.iv.next.i267.2
  %i.mn = load float, ptr %i.mm, align 4
  %gep.i266.3 = getelementptr [4 x i8], ptr %invariant.gep.i263, i64 %indvars.iv.next.i267.2
  store float %i.mn, ptr %gep.i266.3, align 4
  %indvars.iv.next.i267.3 = add nsw i64 %indvars.iv.i265, -4
  %.not81.i268.3 = icmp eq i64 %indvars.iv.next.i267.2, 0
  br i1 %.not81.i268.3, label %.preheader.i258.loopexit, label %.lr.ph.i264, !llvm.loop !608

._crit_edge.i259:                                 ; preds = %.lr.ph63.preheader.i260, %.preheader.i258.loopexit
  store float %i.kk, ptr %.1193350, align 4
  store i32 %i.kz, ptr %.1191353, align 4
  br label %stbir__insert_coeff.exit274

bb.ao:                                            ; preds = %bb.am
  %i.mo = sub nsw i32 %i.kz, %i.la
  %i.mp = zext nneg i32 %i.mo to i64
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %i.mp ; 2 uses
  %i.mr = load float, ptr %i.mq, align 4
  %i.ms = fadd float %i.kk, %i.mr
  store float %i.ms, ptr %i.mq, align 4
  br label %stbir__insert_coeff.exit274

bb.ap:                                            ; preds = %bb.al
  %i.mt = sub nsw i32 %i.kz, %i.la                ; 3 uses
  %.not59.not.i269 = icmp slt i32 %i.mt, %6
  br i1 %.not59.not.i269, label %bb.aq, label %stbir__insert_coeff.exit274

bb.aq:                                            ; preds = %bb.ap
  %i.mu = sub nsw i32 %i.kt, %i.la
  %.064.i270 = add nsw i32 %i.mu, 1               ; 2 uses
  %i.mv = icmp slt i32 %.064.i270, %i.mt
  br i1 %i.mv, label %.lr.ph67.preheader.i272, label %._crit_edge68.i271

.lr.ph67.preheader.i272:                          ; preds = %bb.aq
  %i.mw = sext i32 %.064.i270 to i64
  %i.mx = shl nuw nsw i64 %i.mw, 2
  %scevgep73.i273 = getelementptr i8, ptr %.1193350, i64 %i.mx
  %reass.sub476 = sub i32 %i.kz, %i.kt
  %i.my = add i32 %reass.sub476, -2
  %i.mz = zext i32 %i.my to i64
  %i.na = shl nuw nsw i64 %i.mz, 2
  %i.nb = add nuw nsw i64 %i.na, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep73.i273, i8 0, i64 %i.nb, i1 false)
  br label %._crit_edge68.i271

._crit_edge68.i271:                               ; preds = %.lr.ph67.preheader.i272, %bb.aq
  %i.nc = sext i32 %i.mt to i64
  %i.nd = getelementptr inbounds [4 x i8], ptr %.1193350, i64 %i.nc
  store float %i.kk, ptr %i.nd, align 4
  store i32 %i.kz, ptr %i.fb, align 4
  br label %stbir__insert_coeff.exit274

stbir__insert_coeff.exit274:                      ; preds = %.preheader, %middle.block577, %._crit_edge68.i271, %bb.ap, %bb.ao, %._crit_edge.i259, %bb.an, %bb.ak, %bb.m, %bb.n, %.loopexit291, %bb.l
  %i.ne = load i32, ptr %.1191353, align 4        ; 5 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.1191353, i64 4 ; 3 uses
  %i.ng = load i32, ptr %i.nf, align 4            ; 2 uses
  %.not229 = icmp sgt i32 %i.ne, %i.ng
  br i1 %.not229, label %.loopexit, label %bb.ar

bb.ar:                                            ; preds = %stbir__insert_coeff.exit274
  %reass.sub = sub i32 %i.ng, %i.ne
  %i.nh = add i32 %reass.sub, 1                   ; 2 uses
  %.not230338 = icmp eq i32 %i.nh, 0
  br i1 %.not230338, label %.critedge.thread, label %.lr.ph341.preheader

.lr.ph341.preheader:                              ; preds = %bb.ar
  %i.ni = sext i32 %i.nh to i64
  br label %.lr.ph341

.critedge.thread:                                 ; preds = %bb.as, %bb.ar
  %i.nj = add nsw i32 %i.ne, -1
  store i32 %i.nj, ptr %i.nf, align 4
  br label %bb.au

.lr.ph341:                                        ; preds = %.lr.ph341.preheader, %bb.as
  %indvars.iv385 = phi i64 [ %i.ni, %.lr.ph341.preheader ], [ %indvars.iv.next386, %bb.as ] ; 4 uses
  %i.nk = getelementptr [4 x i8], ptr %.1193350, i64 %indvars.iv385
  %i.nl = getelementptr i8, ptr %i.nk, i64 -4
  %i.nm = load float, ptr %i.nl, align 4
  %i.nn = fcmp oeq float %i.nm, 0.000000e+00
  br i1 %i.nn, label %bb.as, label %.critedge

bb.as:                                            ; preds = %.lr.ph341
  %indvars.iv.next386 = add nsw i64 %indvars.iv385, -1 ; 2 uses
  %.not230 = icmp eq i64 %indvars.iv.next386, 0
  br i1 %.not230, label %.critedge.thread, label %.lr.ph341

.critedge:                                        ; preds = %.lr.ph341
  %i.no = trunc nsw i64 %indvars.iv385 to i32     ; 4 uses
  %i.np = add i32 %i.ne, -1
  %i.nq = add i32 %i.np, %i.no                    ; 2 uses
  store i32 %i.nq, ptr %i.nf, align 4
  %.not231.not = icmp sgt i64 %indvars.iv385, 0
  br i1 %.not231.not, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.critedge
  %spec.select234 = tail call i32 @llvm.smin.i32(i32 %i.ne, i32 %.0201347)
  %.1198 = tail call i32 @llvm.smax.i32(i32 %i.nq, i32 %.0197348)
  %spec.select235 = tail call i32 @llvm.smax.i32(i32 %i.no, i32 %.0194349)
  br label %bb.au

bb.au:                                            ; preds = %.critedge.thread, %bb.at, %.critedge
  %.0296 = phi i32 [ %i.no, %.critedge ], [ %i.no, %bb.at ], [ 0, %.critedge.thread ] ; 3 uses
  %.2203 = phi i32 [ %.0201347, %.critedge ], [ %spec.select234, %bb.at ], [ %.0201347, %.critedge.thread ] ; 2 uses
  %.2199 = phi i32 [ %.0197348, %.critedge ], [ %.1198, %bb.at ], [ %.0197348, %.critedge.thread ] ; 2 uses
  %.1195 = phi i32 [ %.0194349, %.critedge ], [ %spec.select235, %bb.at ], [ %.0194349, %.critedge.thread ] ; 2 uses
  %i.nr = icmp slt i32 %.0296, %6
  br i1 %i.nr, label %.lr.ph345.preheader, label %.loopexit

.lr.ph345.preheader:                              ; preds = %bb.au
  %i.ns = sext i32 %.0296 to i64
  %i.nt = shl nsw i64 %i.ns, 2
  %scevgep = getelementptr i8, ptr %.1193350, i64 %i.nt
  %i.nu = xor i32 %.0296, -1
  %i.nv = add i32 %6, %i.nu
  %i.nw = zext i32 %i.nv to i64
  %i.nx = shl nuw nsw i64 %i.nw, 2
  %i.ny = add nuw nsw i64 %i.nx, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.ny, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph345.preheader, %bb.au, %stbir__insert_coeff.exit274
  %.3204 = phi i32 [ %.0201347, %stbir__insert_coeff.exit274 ], [ %.2203, %bb.au ], [ %.2203, %.lr.ph345.preheader ] ; 2 uses
  %.3200 = phi i32 [ %.0197348, %stbir__insert_coeff.exit274 ], [ %.2199, %bb.au ], [ %.2199, %.lr.ph345.preheader ] ; 2 uses
  %.2196 = phi i32 [ %.0194349, %stbir__insert_coeff.exit274 ], [ %.1195, %bb.au ], [ %.1195, %.lr.ph345.preheader ] ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.1191353, i64 8
  %i.oa = getelementptr [4 x i8], ptr %.1193350, i64 %i.ef
  %i.ob = add nuw nsw i32 %.2208346, 1            ; 2 uses
  %exitcond391.not = icmp eq i32 %i.ob, %3
  br i1 %exitcond391.not, label %._crit_edge355, label %bb.i

._crit_edge355:                                   ; preds = %.loopexit, %stbir_overlapping_memcpy.exit
  %.0201.lcssa = phi i32 [ 2147483647, %stbir_overlapping_memcpy.exit ], [ %.3204, %.loopexit ]
  %.0197.lcssa = phi i32 [ -2147483647, %stbir_overlapping_memcpy.exit ], [ %.3200, %.loopexit ]
  %.0194.lcssa = phi i32 [ -1, %stbir_overlapping_memcpy.exit ], [ %.2196, %.loopexit ]
  store i32 %.0201.lcssa, ptr %1, align 4
  %i.oc = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %.0197.lcssa, ptr %i.oc, align 4
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %.0194.lcssa, ptr %i.od, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stbir__horizontal_gather_1_channels_with_n_coeffs_mod0(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #24 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a
  %i.c = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.039 = phi ptr [ %4, %bb.a ], [ %i.z, %bb.d ]  ; 3 uses
  %.038 = phi ptr [ %3, %bb.a ], [ %i.aa, %bb.d ] ; 3 uses
  %.037 = phi ptr [ %0, %bb.a ], [ %i.ab, %bb.d ] ; 2 uses
  %i.d = load i32, ptr %.038, align 4             ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %2, i64 %i.e ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.038, i64 4
  %i.h = load i32, ptr %i.g, align 4
  %i.i = sub nsw i32 %i.h, %i.d
  %i.j = ashr i32 %i.i, 2
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.f) #52, !srcloc !613
  %i.k = load <4 x float>, ptr %.039, align 1
  %i.l = load <4 x float>, ptr %i.f, align 1
  %i.m = fmul <4 x float> %i.k, %i.l
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.036 = phi ptr [ %i.f, %bb.b ], [ %i.o, %bb.c ]
  %.035 = phi i32 [ %i.j, %bb.b ], [ %i.t, %bb.c ] ; 2 uses
  %.034 = phi ptr [ %.039, %bb.b ], [ %i.n, %bb.c ]
  %.0 = phi <4 x float> [ %i.m, %bb.b ], [ %i.s, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %.034, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.036, i64 16 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.o) #52, !srcloc !614
  %i.p = load <4 x float>, ptr %i.n, align 1
  %i.q = load <4 x float>, ptr %i.o, align 1
  %i.r = fmul <4 x float> %i.p, %i.q
  %i.s = fadd <4 x float> %.0, %i.r               ; 3 uses
  %i.t = add nsw i32 %.035, -1
  %i.u = icmp sgt i32 %.035, 1
  br i1 %i.u, label %bb.c, label %bb.d, !llvm.loop !611

bb.d:                                             ; preds = %bb.c
  %i.v = shufflevector <4 x float> %i.s, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.w = shufflevector <4 x float> %i.s, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.x = fadd <2 x float> %i.v, %i.w
  %i.y = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.x)
  store float %i.y, ptr %.037, align 1
  %i.z = getelementptr inbounds [4 x i8], ptr %.039, i64 %i.c
  %i.aa = getelementptr inbounds nuw i8, ptr %.038, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.037, i64 4 ; 2 uses
  %i.ac = icmp ult ptr %i.ab, %i.b
  br i1 %i.ac, label %bb.b, label %bb.e, !llvm.loop !612

bb.e:                                             ; preds = %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stbir__horizontal_gather_1_channels_with_n_coeffs_mod1(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #24 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a
  %i.c = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.044 = phi ptr [ %4, %bb.a ], [ %i.ag, %bb.d ] ; 3 uses
  %.043 = phi ptr [ %0, %bb.a ], [ %i.ai, %bb.d ] ; 2 uses
  %.0 = phi ptr [ %3, %bb.a ], [ %i.ah, %bb.d ]   ; 3 uses
  %i.d = load i32, ptr %.0, align 4               ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %2, i64 %i.e ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.h = load i32, ptr %i.g, align 4
  %i.i = xor i32 %i.d, -1
  %i.j = add i32 %i.h, %i.i
  %i.k = ashr i32 %i.j, 2
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.f) #52, !srcloc !617
  %i.l = load <4 x float>, ptr %.044, align 1
  %i.m = load <4 x float>, ptr %i.f, align 1
  %i.n = fmul <4 x float> %i.l, %i.m
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.042 = phi ptr [ %i.f, %bb.b ], [ %i.p, %bb.c ] ; 2 uses
  %.041 = phi i32 [ %i.k, %bb.b ], [ %i.u, %bb.c ] ; 2 uses
  %.040 = phi ptr [ %.044, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
end_hunk_2
