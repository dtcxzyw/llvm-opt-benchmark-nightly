Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/thumbnail?download=true
inline.NumInlined: 149
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_event_image_draw:bb.a
  %i.gb = load ptr, ptr %i.h, align 8, !tbaa !258
  store ptr %i.gb, ptr %i.ak, align 8, !tbaa !170
  %.not151 = icmp eq ptr %i.ga, null
  br i1 %.not151, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gc = call i32 @cairo_surface_get_reference_count(ptr noundef nonnull %i.ga) #22
  %.not152 = icmp eq i32 %i.gc, 0
  br i1 %.not152, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @cairo_surface_destroy(ptr noundef nonnull %i.ga) #22
  br label %bb.av

bb.av:                                            ; preds = %bb.as, %bb.at, %bb.au, %bb.ar
  store i32 0, ptr %i.r, align 8, !tbaa !125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  %i.gd = icmp eq i32 %.0134, 0
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.ah
  %.1135 = phi i1 [ true, %bb.ah ], [ %i.gd, %bb.av ]
  %i.ge = load ptr, ptr %i.ak, align 8, !tbaa !170 ; 2 uses
  %.not155 = icmp eq ptr %i.ge, null
  br i1 %.not155, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gf = call i32 @cairo_image_surface_get_width(ptr noundef nonnull %i.ge) #22
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %i.gf, ptr %i.gg, align 8, !tbaa !184
  %i.gh = load ptr, ptr %i.ak, align 8, !tbaa !170
  %i.gi = call i32 @cairo_image_surface_get_height(ptr noundef %i.gh) #22
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 %i.gi, ptr %i.gj, align 4, !tbaa !185
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 388
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !180
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 180
  store float %i.gl, ptr %i.gm, align 4, !tbaa !186
  call fastcc void @_thumb_update_image_box(ptr noundef nonnull %2)
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 360
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !97
  %i.gp = icmp eq i32 %i.go, 6
  br i1 %i.gp, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call fastcc void @_thumb_resize_overlays(ptr noundef nonnull %2)
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay, %bb.aw
  br i1 %.1135, label %.critedge, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 416
  store i32 1, ptr %i.gq, align 8, !tbaa !259
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 376 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !187
  %.not157 = icmp eq i32 %i.gs, 0
  br i1 %.not157, label %bb.bb, label %.critedge162

bb.bb:                                            ; preds = %bb.ba
  %i.gt = call i32 @g_timeout_add(i32 noundef 250, ptr noundef nonnull @_thumb_expose_again, ptr noundef nonnull %2) #22
  store i32 %i.gt, ptr %i.gr, align 8, !tbaa !187
  br label %.critedge162

.critedge:                                        ; preds = %bb.az
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 412
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !260
  %.not158 = icmp eq i32 %i.gv, 0
  br i1 %.not158, label %.critedge161, label %bb.bc

bb.bc:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #22
  store ptr null, ptr %i.i, align 8, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.m, i8 0, i64 4096, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #22
  store i32 1, ptr %i.n, align 4, !tbaa !171
  %i.gw = load i32, ptr %2, align 8, !tbaa !86
  call void @dt_image_full_path(i32 noundef %i.gw, ptr noundef nonnull %i.m, i64 noundef 4096, ptr noundef nonnull %i.n) #22
  %i.gx = call i32 @dt_imageio_large_thumbnail(ptr noundef nonnull %i.m, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #22
  %.not159 = icmp eq i32 %i.gx, 0
  br i1 %.not159, label %bb.bd, label %.critedge161.sink.split

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.gy = load ptr, ptr %i.i, align 8, !tbaa !188 ; 6 uses
  %i.gz = load i32, ptr %i.j, align 4, !tbaa !171 ; 10 uses
  %i.ha = load i32, ptr %i.k, align 4, !tbaa !171 ; 7 uses
  call fastcc void @_dt_focus_cdf22_wtf(ptr noundef %i.gy, i32 noundef 2, i32 noundef %i.gz, i32 noundef %i.ha)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(800) %6, i8 0, i64 800, i1 false)
  %i.hb = add nsw i32 %i.ha, -1                   ; 2 uses
  %i.hc = icmp sgt i32 %i.ha, 1
  %i.hd = icmp sgt i32 %i.gz, 1
  %or.cond182 = and i1 %i.hd, %i.hc               ; 2 uses
  br i1 %or.cond182, label %.preheader129.lr.ph.split.i, label %.preheader128.i

.preheader129.lr.ph.split.i:                      ; preds = %bb.bd
  %i.he = uitofp nneg i32 %i.gz to float          ; 2 uses
  %i.hf = add nsw i32 %i.gz, -1
  %i.hg = uitofp nneg i32 %i.ha to float
  %i.hh = zext nneg i32 %i.hf to i64
  %i.hi = zext nneg i32 %i.gz to i64              ; 2 uses
  %i.hj = zext nneg i32 %i.hb to i64
  %i.hk = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.hg
  %i.hl = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.he
  %i.hm = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.he
  br label %.preheader129.i

.preheader129.i:                                  ; preds = %._crit_edge.i, %.preheader129.lr.ph.split.i
  %indvars.iv147.i = phi i64 [ 0, %.preheader129.lr.ph.split.i ], [ %indvars.iv.next148.i, %._crit_edge.i ] ; 4 uses
  %i.hn = or disjoint i64 %indvars.iv147.i, 2
  %i.ho = mul nuw nsw i64 %i.hn, %i.hi
  %i.hp = trunc nuw nsw i64 %indvars.iv147.i to i32
  %i.hq = uitofp nneg i32 %i.hp to float          ; 4 uses
  %i.hr = fmul reassoc nnan nsz arcp contract afn float %i.hq, 5.000000e+00
  %i.hs = fmul reassoc nsz arcp contract afn float %i.hr, %i.hk
  %i.ht = fptosi float %i.hs to i32
  %i.hu = mul nsw i32 %i.ht, 5                    ; 2 uses
  %i.hv = fmul reassoc nnan nsz arcp contract afn float %i.hq, %i.hq
  %i.hw = mul nuw nsw i64 %indvars.iv147.i, %i.hi
  %i.hx = insertelement <4 x float> poison, float %i.hq, i64 1
  %i.hy = insertelement <4 x float> %i.hx, float %i.hv, i64 3 ; 2 uses
  br label %bb.be

.preheader128.loopexit.i:                         ; preds = %._crit_edge.i
  %.phi.trans.insert214 = getelementptr inbounds nuw i8, ptr %6, i64 512
  %.phi.trans.insert222 = getelementptr inbounds nuw i8, ptr %6, i64 640
  %.phi.trans.insert226 = getelementptr inbounds nuw i8, ptr %6, i64 704
  %.pre227 = load i64, ptr %.phi.trans.insert226, align 16, !tbaa !262
  %i.hz = load <61 x i64>, ptr %6, align 16, !tbaa !262
  %i.ia = shufflevector <61 x i64> %i.hz, <61 x i64> poison, <16 x i32> <i32 48, i32 52, i32 44, i32 40, i32 36, i32 32, i32 28, i32 24, i32 20, i32 16, i32 12, i32 8, i32 4, i32 0, i32 56, i32 60>
  %i.ib = shl nsw <16 x i64> %i.ia, splat (i64 2)
  %i.ic = load <13 x i64>, ptr %.phi.trans.insert214, align 16, !tbaa !262
  %i.id = shufflevector <13 x i64> %i.ic, <13 x i64> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.ie = load <5 x i64>, ptr %.phi.trans.insert222, align 16, !tbaa !262
  %i.if = shufflevector <5 x i64> %i.ie, <5 x i64> poison, <2 x i32> <i32 0, i32 4>
  %i.ig = sitofp <16 x i64> %i.ib to <16 x float>
  %i.ih = shl nsw <4 x i64> %i.id, splat (i64 2)
  %i.ii = sitofp <4 x i64> %i.ih to <4 x float>
  %i.ij = shl nsw <2 x i64> %i.if, splat (i64 2)
  %i.ik = sitofp <2 x i64> %i.ij to <2 x float>
  %i.il = shl nsw i64 %.pre227, 2
  %i.im = sitofp reassoc nsz arcp contract afn i64 %i.il to float
  %i.in = shufflevector <16 x float> %i.ig, <16 x float> poison, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.io = shufflevector <4 x float> %i.ii, <4 x float> poison, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ip = shufflevector <2 x float> %i.ik, <2 x float> poison, <24 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  br label %.preheader128.i

.preheader128.i:                                  ; preds = %.preheader128.loopexit.i, %bb.bd
  %i.iq = phi float [ %i.im, %.preheader128.loopexit.i ], [ 0.000000e+00, %bb.bd ]
  %i.ir = phi <24 x float> [ %i.in, %.preheader128.loopexit.i ], [ <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, float undef, float undef, float undef, float undef, float undef, float undef, float undef>, %bb.bd ]
  %i.is = phi <24 x float> [ %i.io, %.preheader128.loopexit.i ], [ <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, float undef, float undef, float undef, float undef, float undef, float undef, float undef, float undef, float undef, float undef, float undef, float undef, float undef, float undef, float undef, float undef, float undef, float undef, float undef>, %bb.bd ]
  %i.it = phi <24 x float> [ %i.ip, %.preheader128.loopexit.i ], [ <float 0.000000e+00, float 0.000000e+00, float undef, float undef, float undef, float undef, float undef, float undef, float undef, float undef, float undef, float undef, float undef, float undef, float undef, float undef, float undef, float undef, float undef, float undef, float undef, float undef, float undef, float undef>, %bb.bd ]
  %i.iu = mul nsw i32 %i.ha, %i.gz
  %i.iv = sitofp reassoc nsz arcp contract afn i32 %i.iu to float
  %i.iw = fmul reassoc nnan nsz arcp contract afn float %i.iv, 4.000000e-04 ; 27 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %6, i64 448 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %6, i64 480 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %6, i64 512 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %6, i64 544 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %6, i64 576 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %6, i64 608 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %6, i64 640 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %6, i64 672 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %6, i64 704 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %6, i64 736 ; 3 uses
  %i.jh = insertelement <24 x float> poison, float %i.iw, i64 0
  %i.ji = shufflevector <24 x float> %i.jh, <24 x float> poison, <24 x i32> zeroinitializer
  %i.jj = insertelement <24 x float> poison, float %i.iq, i64 22
  %i.jk = getelementptr inbounds nuw i8, ptr %6, i64 768 ; 2 uses
  %i.jl = load <5 x i64>, ptr %i.jg, align 16, !tbaa !262
  %i.jm = shufflevector <5 x i64> %i.jl, <5 x i64> poison, <2 x i32> <i32 0, i32 4>
  %i.jn = shl nsw <2 x i64> %i.jm, splat (i64 2)
  %i.jo = sitofp <2 x i64> %i.jn to <2 x float>   ; 2 uses
  %i.jp = shufflevector <2 x float> %i.jo, <2 x float> poison, <24 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jq = shufflevector <24 x float> %i.jj, <24 x float> %i.jp, <24 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 22, i32 24>
  %i.jr = shufflevector <24 x float> %i.ir, <24 x float> %i.jq, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 46, i32 47>
  %i.js = shufflevector <24 x float> %i.jr, <24 x float> %i.is, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 poison, i32 poison, i32 22, i32 23>
  %i.jt = shufflevector <24 x float> %i.js, <24 x float> %i.it, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 22, i32 23>
  %i.ju = fcmp reassoc nsz arcp contract afn olt <24 x float> %i.ji, %i.jt
  %i.jv = bitcast <24 x i1> %i.ju to i24
  %i.jw = call range(i24 0, 25) i24 @llvm.ctpop.i24(i24 %i.jv)
  %i.jx = extractelement <2 x float> %i.jo, i64 1
  %i.jy = fcmp reassoc nsz arcp contract afn olt float %i.iw, %i.jx
  %i.jz = zext i1 %i.jy to i24
  %i.ka = or i24 %i.jw, %i.jz
  %i.kb = icmp eq i24 %i.ka, 0
  br i1 %i.kb, label %bb.bh, label %vector.body

._crit_edge.i:                                    ; preds = %_dt_focus_update.exit124.i
  %indvars.iv.next148.i = add nuw nsw i64 %indvars.iv147.i, 4 ; 2 uses
  %i.kc = icmp samesign ult i64 %indvars.iv.next148.i, %i.hj
  br i1 %i.kc, label %.preheader129.i, label %.preheader128.loopexit.i

bb.be:                                            ; preds = %_dt_focus_update.exit124.i, %.preheader129.i
  %indvars.iv.i = phi i64 [ 0, %.preheader129.i ], [ %indvars.iv.next.i, %_dt_focus_update.exit124.i ] ; 5 uses
  %i.kd = add nuw nsw i64 %indvars.iv.i, %i.ho
  %i.ke = shl nsw i64 %i.kd, 2
  %i.kf = getelementptr i8, ptr %i.gy, i64 %i.ke
  %i.kg = getelementptr i8, ptr %i.kf, i64 1
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !189
  %i.ki = zext i8 %i.kh to i32
  %i.kj = add nsw i32 %i.ki, -127
  %i.kk = call i32 @llvm.abs.i32(i32 %i.kj, i1 true) ; 2 uses
  %i.kl = icmp samesign ugt i32 %i.kk, 10
  br i1 %i.kl, label %bb.bf, label %_dt_focus_update.exit.i

bb.bf:                                            ; preds = %bb.be
  %i.km = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.kn = uitofp nneg i32 %i.km to float          ; 4 uses
  %i.ko = fmul reassoc nnan nsz arcp contract afn float %i.kn, 5.000000e+00
  %i.kp = fmul reassoc nsz arcp contract afn float %i.ko, %i.hl
  %i.kq = fptosi float %i.kp to i32
  %i.kr = add nsw i32 %i.hu, %i.kq
  %i.ks = sext i32 %i.kr to i64
  %i.kt = getelementptr inbounds [32 x i8], ptr %6, i64 %i.ks ; 4 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8 ; 2 uses
  %i.kv = fmul reassoc nnan nsz arcp contract afn float %i.kn, %i.kn
  %i.kw = load <4 x float>, ptr %i.ku, align 8, !tbaa !190
  %i.kx = insertelement <4 x float> %i.hy, float %i.kn, i64 0
  %i.ky = insertelement <4 x float> %i.kx, float %i.kv, i64 2
  %i.kz = fadd reassoc nsz arcp contract afn <4 x float> %i.kw, %i.ky
  store <4 x float> %i.kz, ptr %i.ku, align 8, !tbaa !190
  %i.la = load i64, ptr %i.kt, align 16, !tbaa !262
  %i.lb = add nsw i64 %i.la, 1
  store i64 %i.lb, ptr %i.kt, align 16, !tbaa !262
  %i.lc = uitofp nneg i32 %i.kk to float
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kt, i64 24 ; 2 uses
  %i.le = load float, ptr %i.ld, align 8, !tbaa !263
  %i.lf = fadd reassoc nsz arcp contract afn float %i.le, %i.lc
  store float %i.lf, ptr %i.ld, align 8, !tbaa !263
  br label %_dt_focus_update.exit.i

_dt_focus_update.exit.i:                          ; preds = %bb.bf, %bb.be
  %i.lg = add nuw nsw i64 %indvars.iv.i, %i.hw
  %i.lh = trunc nsw i64 %i.lg to i32
  %i.li = shl i32 %i.lh, 2
  %i.lj = sext i32 %i.li to i64
  %i.lk = getelementptr i8, ptr %i.gy, i64 %i.lj
  %i.ll = getelementptr i8, ptr %i.lk, i64 9
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !189
  %i.ln = zext i8 %i.lm to i32
  %i.lo = add nsw i32 %i.ln, -127
  %i.lp = call i32 @llvm.abs.i32(i32 %i.lo, i1 true) ; 2 uses
  %i.lq = icmp samesign ugt i32 %i.lp, 10
  br i1 %i.lq, label %bb.bg, label %_dt_focus_update.exit124.i

bb.bg:                                            ; preds = %_dt_focus_update.exit.i
  %i.lr = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ls = uitofp nneg i32 %i.lr to float          ; 4 uses
  %i.lt = fmul reassoc nnan nsz arcp contract afn float %i.ls, 5.000000e+00
  %i.lu = fmul reassoc nsz arcp contract afn float %i.lt, %i.hm
  %i.lv = fptosi float %i.lu to i32
  %i.lw = add nsw i32 %i.hu, %i.lv
  %i.lx = sext i32 %i.lw to i64
  %i.ly = getelementptr inbounds [32 x i8], ptr %6, i64 %i.lx ; 4 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8 ; 2 uses
  %i.ma = fmul reassoc nnan nsz arcp contract afn float %i.ls, %i.ls
  %i.mb = load <4 x float>, ptr %i.lz, align 8, !tbaa !190
  %i.mc = insertelement <4 x float> %i.hy, float %i.ls, i64 0
  %i.md = insertelement <4 x float> %i.mc, float %i.ma, i64 2
  %i.me = fadd reassoc nsz arcp contract afn <4 x float> %i.mb, %i.md
  store <4 x float> %i.me, ptr %i.lz, align 8, !tbaa !190
  %i.mf = load i64, ptr %i.ly, align 16, !tbaa !262
  %i.mg = add nsw i64 %i.mf, 1
  store i64 %i.mg, ptr %i.ly, align 16, !tbaa !262
  %i.mh = uitofp nneg i32 %i.lp to float
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ly, i64 24 ; 2 uses
  %i.mj = load float, ptr %i.mi, align 8, !tbaa !263
  %i.mk = fadd reassoc nsz arcp contract afn float %i.mj, %i.mh
  store float %i.mk, ptr %i.mi, align 8, !tbaa !263
  br label %_dt_focus_update.exit124.i

_dt_focus_update.exit124.i:                       ; preds = %bb.bg, %_dt_focus_update.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.ml = icmp samesign ult i64 %indvars.iv.next.i, %i.hh
  br i1 %i.ml, label %bb.be, label %._crit_edge.i

bb.bh:                                            ; preds = %.preheader128.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(800) %6, i8 0, i64 800, i1 false)
  call fastcc void @_dt_focus_cdf22_wtf(ptr noundef %i.gy, i32 noundef 3, i32 noundef %i.gz, i32 noundef %i.ha)
  br i1 %or.cond182, label %.preheader127.lr.ph.split.i, label %.preheader.i

.preheader127.lr.ph.split.i:                      ; preds = %bb.bh
  %i.mm = uitofp nneg i32 %i.gz to float          ; 2 uses
  %i.mn = add nsw i32 %i.gz, -1
  %i.mo = uitofp nneg i32 %i.ha to float
  %i.mp = zext nneg i32 %i.mn to i64
  %i.mq = zext nneg i32 %i.gz to i64              ; 2 uses
  %i.mr = zext nneg i32 %i.hb to i64
  %i.ms = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.mo
  %i.mt = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.mm
  %i.mu = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.mm
  br label %.preheader127.i

.preheader127.i:                                  ; preds = %._crit_edge137.i, %.preheader127.lr.ph.split.i
  %indvars.iv156.i = phi i64 [ 0, %.preheader127.lr.ph.split.i ], [ %indvars.iv.next157.i, %._crit_edge137.i ] ; 4 uses
  %i.mv = or disjoint i64 %indvars.iv156.i, 4
  %i.mw = mul nuw nsw i64 %i.mv, %i.mq
  %i.mx = trunc nuw nsw i64 %indvars.iv156.i to i32
  %i.my = uitofp nneg i32 %i.mx to float          ; 4 uses
  %i.mz = fmul reassoc nnan nsz arcp contract afn float %i.my, 5.000000e+00
  %i.na = fmul reassoc nsz arcp contract afn float %i.mz, %i.ms
  %i.nb = fptosi float %i.na to i32
  %i.nc = mul nsw i32 %i.nb, 5                    ; 2 uses
  %i.nd = fmul reassoc nnan nsz arcp contract afn float %i.my, %i.my
  %i.ne = mul nuw nsw i64 %indvars.iv156.i, %i.mq
  %i.nf = insertelement <4 x float> poison, float %i.my, i64 1
  %i.ng = insertelement <4 x float> %i.nf, float %i.nd, i64 3 ; 2 uses
  br label %bb.bi

.preheader.i:                                     ; preds = %._crit_edge137.i, %bb.bh
  %i.nh = load i64, ptr %6, align 16, !tbaa !262  ; 2 uses
  %i.ni = sitofp reassoc nsz arcp contract afn i64 %i.nh to float
  %i.nj = fmul reassoc nnan nsz arcp contract afn float %i.ni, 6.000000e+00
  %i.nk = fcmp reassoc nsz arcp contract afn ogt float %i.nj, %i.iw
  br i1 %i.nk, label %bb.bl, label %bb.bm

._crit_edge137.i:                                 ; preds = %_dt_focus_update.exit126.i
  %indvars.iv.next157.i = add nuw nsw i64 %indvars.iv156.i, 8 ; 2 uses
  %i.nl = icmp samesign ult i64 %indvars.iv.next157.i, %i.mr
  br i1 %i.nl, label %.preheader127.i, label %.preheader.i

bb.bi:                                            ; preds = %_dt_focus_update.exit126.i, %.preheader127.i
  %indvars.iv153.i = phi i64 [ 0, %.preheader127.i ], [ %indvars.iv.next154.i, %_dt_focus_update.exit126.i ] ; 5 uses
  %i.nm = add nuw nsw i64 %indvars.iv153.i, %i.mw
  %i.nn = shl nsw i64 %i.nm, 2
  %i.no = getelementptr i8, ptr %i.gy, i64 %i.nn
  %i.np = getelementptr i8, ptr %i.no, i64 1
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !189
  %i.nr = zext i8 %i.nq to i32
  %i.ns = add nsw i32 %i.nr, -127
  %i.nt = call i32 @llvm.abs.i32(i32 %i.ns, i1 true)
  %i.nu = uitofp nneg i32 %i.nt to double
  %i.nv = fmul reassoc nnan nsz arcp contract afn double %i.nu, 1.500000e+00
  %i.nw = fptosi double %i.nv to i32              ; 2 uses
  %i.nx = icmp sgt i32 %i.nw, 10
  br i1 %i.nx, label %bb.bj, label %_dt_focus_update.exit125.i

bb.bj:                                            ; preds = %bb.bi
  %i.ny = trunc nuw nsw i64 %indvars.iv153.i to i32
  %i.nz = uitofp nneg i32 %i.ny to float          ; 4 uses
  %i.oa = fmul reassoc nnan nsz arcp contract afn float %i.nz, 5.000000e+00
  %i.ob = fmul reassoc nsz arcp contract afn float %i.oa, %i.mt
  %i.oc = fptosi float %i.ob to i32
  %i.od = add nsw i32 %i.nc, %i.oc
  %i.oe = sext i32 %i.od to i64
  %i.of = getelementptr inbounds [32 x i8], ptr %6, i64 %i.oe ; 4 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 8 ; 2 uses
  %i.oh = fmul reassoc nnan nsz arcp contract afn float %i.nz, %i.nz
  %i.oi = load <4 x float>, ptr %i.og, align 8, !tbaa !190
  %i.oj = insertelement <4 x float> %i.ng, float %i.nz, i64 0
  %i.ok = insertelement <4 x float> %i.oj, float %i.oh, i64 2
  %i.ol = fadd reassoc nsz arcp contract afn <4 x float> %i.oi, %i.ok
  store <4 x float> %i.ol, ptr %i.og, align 8, !tbaa !190
  %i.om = load i64, ptr %i.of, align 16, !tbaa !262
  %i.on = add nsw i64 %i.om, 1
  store i64 %i.on, ptr %i.of, align 16, !tbaa !262
  %i.oo = uitofp nneg i32 %i.nw to float
  %i.op = getelementptr inbounds nuw i8, ptr %i.of, i64 24 ; 2 uses
  %i.oq = load float, ptr %i.op, align 8, !tbaa !263
  %i.or = fadd reassoc nsz arcp contract afn float %i.oq, %i.oo
  store float %i.or, ptr %i.op, align 8, !tbaa !263
  br label %_dt_focus_update.exit125.i

_dt_focus_update.exit125.i:                       ; preds = %bb.bj, %bb.bi
  %i.os = add nuw nsw i64 %indvars.iv153.i, %i.ne
  %i.ot = trunc nsw i64 %i.os to i32
  %i.ou = shl i32 %i.ot, 2
  %i.ov = sext i32 %i.ou to i64
  %i.ow = getelementptr i8, ptr %i.gy, i64 %i.ov
  %i.ox = getelementptr i8, ptr %i.ow, i64 17
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !189
  %i.oz = zext i8 %i.oy to i32
  %i.pa = add nsw i32 %i.oz, -127
  %i.pb = call i32 @llvm.abs.i32(i32 %i.pa, i1 true)
  %i.pc = uitofp nneg i32 %i.pb to double
  %i.pd = fmul reassoc nnan nsz arcp contract afn double %i.pc, 1.500000e+00
  %i.pe = fptosi double %i.pd to i32              ; 2 uses
  %i.pf = icmp sgt i32 %i.pe, 10
  br i1 %i.pf, label %bb.bk, label %_dt_focus_update.exit126.i

bb.bk:                                            ; preds = %_dt_focus_update.exit125.i
  %i.pg = trunc nuw nsw i64 %indvars.iv153.i to i32
  %i.ph = uitofp nneg i32 %i.pg to float          ; 4 uses
  %i.pi = fmul reassoc nnan nsz arcp contract afn float %i.ph, 5.000000e+00
  %i.pj = fmul reassoc nsz arcp contract afn float %i.pi, %i.mu
  %i.pk = fptosi float %i.pj to i32
  %i.pl = add nsw i32 %i.nc, %i.pk
  %i.pm = sext i32 %i.pl to i64
  %i.pn = getelementptr inbounds [32 x i8], ptr %6, i64 %i.pm ; 4 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 8 ; 2 uses
  %i.pp = fmul reassoc nnan nsz arcp contract afn float %i.ph, %i.ph
  %i.pq = load <4 x float>, ptr %i.po, align 8, !tbaa !190
  %i.pr = insertelement <4 x float> %i.ng, float %i.ph, i64 0
  %i.ps = insertelement <4 x float> %i.pr, float %i.pp, i64 2
  %i.pt = fadd reassoc nsz arcp contract afn <4 x float> %i.pq, %i.ps
  store <4 x float> %i.pt, ptr %i.po, align 8, !tbaa !190
  %i.pu = load i64, ptr %i.pn, align 16, !tbaa !262
  %i.pv = add nsw i64 %i.pu, 1
  store i64 %i.pv, ptr %i.pn, align 16, !tbaa !262
  %i.pw = uitofp nneg i32 %i.pe to float
  %i.px = getelementptr inbounds nuw i8, ptr %i.pn, i64 24 ; 2 uses
  %i.py = load float, ptr %i.px, align 8, !tbaa !263
  %i.pz = fadd reassoc nsz arcp contract afn float %i.py, %i.pw
  store float %i.pz, ptr %i.px, align 8, !tbaa !263
  br label %_dt_focus_update.exit126.i

_dt_focus_update.exit126.i:                       ; preds = %bb.bk, %_dt_focus_update.exit125.i
  %indvars.iv.next154.i = add nuw nsw i64 %indvars.iv153.i, 8 ; 2 uses
  %i.qa = icmp samesign ult i64 %indvars.iv.next154.i, %i.mp
  br i1 %i.qa, label %bb.bi, label %._crit_edge137.i

bb.bl:                                            ; preds = %.preheader.i
  %i.qb = sub nsw i64 0, %i.nh
  store i64 %i.qb, ptr %6, align 16, !tbaa !262
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %.preheader.i
  %i.qc = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.qd = load i64, ptr %i.qc, align 16, !tbaa !262 ; 2 uses
  %i.qe = sitofp reassoc nsz arcp contract afn i64 %i.qd to float
  %i.qf = fmul reassoc nnan nsz arcp contract afn float %i.qe, 6.000000e+00
  %i.qg = fcmp reassoc nsz arcp contract afn ogt float %i.qf, %i.iw
  br i1 %i.qg, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.qh = sub nsw i64 0, %i.qd
  store i64 %i.qh, ptr %i.qc, align 16, !tbaa !262
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.qi = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.qj = load i64, ptr %i.qi, align 16, !tbaa !262 ; 2 uses
  %i.qk = sitofp reassoc nsz arcp contract afn i64 %i.qj to float
  %i.ql = fmul reassoc nnan nsz arcp contract afn float %i.qk, 6.000000e+00
  %i.qm = fcmp reassoc nsz arcp contract afn ogt float %i.ql, %i.iw
  br i1 %i.qm, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.qn = sub nsw i64 0, %i.qj
  store i64 %i.qn, ptr %i.qi, align 16, !tbaa !262
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.qo = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.qp = load i64, ptr %i.qo, align 16, !tbaa !262 ; 2 uses
  %i.qq = sitofp reassoc nsz arcp contract afn i64 %i.qp to float
  %i.qr = fmul reassoc nnan nsz arcp contract afn float %i.qq, 6.000000e+00
  %i.qs = fcmp reassoc nsz arcp contract afn ogt float %i.qr, %i.iw
  br i1 %i.qs, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.qt = sub nsw i64 0, %i.qp
  store i64 %i.qt, ptr %i.qo, align 16, !tbaa !262
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.qu = getelementptr inbounds nuw i8, ptr %6, i64 128 ; 2 uses
  %i.qv = load i64, ptr %i.qu, align 16, !tbaa !262 ; 2 uses
  %i.qw = sitofp reassoc nsz arcp contract afn i64 %i.qv to float
  %i.qx = fmul reassoc nnan nsz arcp contract afn float %i.qw, 6.000000e+00
  %i.qy = fcmp reassoc nsz arcp contract afn ogt float %i.qx, %i.iw
  br i1 %i.qy, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.qz = sub nsw i64 0, %i.qv
  store i64 %i.qz, ptr %i.qu, align 16, !tbaa !262
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.ra = getelementptr inbounds nuw i8, ptr %6, i64 160 ; 2 uses
  %i.rb = load i64, ptr %i.ra, align 16, !tbaa !262 ; 2 uses
  %i.rc = sitofp reassoc nsz arcp contract afn i64 %i.rb to float
  %i.rd = fmul reassoc nnan nsz arcp contract afn float %i.rc, 6.000000e+00
  %i.re = fcmp reassoc nsz arcp contract afn ogt float %i.rd, %i.iw
  br i1 %i.re, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.rf = sub nsw i64 0, %i.rb
  store i64 %i.rf, ptr %i.ra, align 16, !tbaa !262
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.rg = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 2 uses
  %i.rh = load i64, ptr %i.rg, align 16, !tbaa !262 ; 2 uses
  %i.ri = sitofp reassoc nsz arcp contract afn i64 %i.rh to float
  %i.rj = fmul reassoc nnan nsz arcp contract afn float %i.ri, 6.000000e+00
  %i.rk = fcmp reassoc nsz arcp contract afn ogt float %i.rj, %i.iw
  br i1 %i.rk, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.rl = sub nsw i64 0, %i.rh
  store i64 %i.rl, ptr %i.rg, align 16, !tbaa !262
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.rm = getelementptr inbounds nuw i8, ptr %6, i64 224 ; 2 uses
  %i.rn = load i64, ptr %i.rm, align 16, !tbaa !262 ; 2 uses
  %i.ro = sitofp reassoc nsz arcp contract afn i64 %i.rn to float
  %i.rp = fmul reassoc nnan nsz arcp contract afn float %i.ro, 6.000000e+00
  %i.rq = fcmp reassoc nsz arcp contract afn ogt float %i.rp, %i.iw
  br i1 %i.rq, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.rr = sub nsw i64 0, %i.rn
  store i64 %i.rr, ptr %i.rm, align 16, !tbaa !262
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.rs = getelementptr inbounds nuw i8, ptr %6, i64 256 ; 2 uses
  %i.rt = load i64, ptr %i.rs, align 16, !tbaa !262 ; 2 uses
  %i.ru = sitofp reassoc nsz arcp contract afn i64 %i.rt to float
  %i.rv = fmul reassoc nnan nsz arcp contract afn float %i.ru, 6.000000e+00
  %i.rw = fcmp reassoc nsz arcp contract afn ogt float %i.rv, %i.iw
  br i1 %i.rw, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.rx = sub nsw i64 0, %i.rt
  store i64 %i.rx, ptr %i.rs, align 16, !tbaa !262
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.ry = getelementptr inbounds nuw i8, ptr %6, i64 288 ; 2 uses
  %i.rz = load i64, ptr %i.ry, align 16, !tbaa !262 ; 2 uses
  %i.sa = sitofp reassoc nsz arcp contract afn i64 %i.rz to float
  %i.sb = fmul reassoc nnan nsz arcp contract afn float %i.sa, 6.000000e+00
  %i.sc = fcmp reassoc nsz arcp contract afn ogt float %i.sb, %i.iw
  br i1 %i.sc, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.sd = sub nsw i64 0, %i.rz
  store i64 %i.sd, ptr %i.ry, align 16, !tbaa !262
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.se = getelementptr inbounds nuw i8, ptr %6, i64 320 ; 2 uses
  %i.sf = load i64, ptr %i.se, align 16, !tbaa !262 ; 2 uses
  %i.sg = sitofp reassoc nsz arcp contract afn i64 %i.sf to float
  %i.sh = fmul reassoc nnan nsz arcp contract afn float %i.sg, 6.000000e+00
  %i.si = fcmp reassoc nsz arcp contract afn ogt float %i.sh, %i.iw
  br i1 %i.si, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.sj = sub nsw i64 0, %i.sf
  store i64 %i.sj, ptr %i.se, align 16, !tbaa !262
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.sk = getelementptr inbounds nuw i8, ptr %6, i64 352 ; 2 uses
  %i.sl = load i64, ptr %i.sk, align 16, !tbaa !262 ; 2 uses
  %i.sm = sitofp reassoc nsz arcp contract afn i64 %i.sl to float
  %i.sn = fmul reassoc nnan nsz arcp contract afn float %i.sm, 6.000000e+00
  %i.so = fcmp reassoc nsz arcp contract afn ogt float %i.sn, %i.iw
  br i1 %i.so, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.sp = sub nsw i64 0, %i.sl
  store i64 %i.sp, ptr %i.sk, align 16, !tbaa !262
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.sq = getelementptr inbounds nuw i8, ptr %6, i64 384 ; 2 uses
  %i.sr = load i64, ptr %i.sq, align 16, !tbaa !262 ; 2 uses
  %i.ss = sitofp reassoc nsz arcp contract afn i64 %i.sr to float
  %i.st = fmul reassoc nnan nsz arcp contract afn float %i.ss, 6.000000e+00
  %i.su = fcmp reassoc nsz arcp contract afn ogt float %i.st, %i.iw
  br i1 %i.su, label %bb.cj, label %bb.ck
end_hunk_0
begin_hunk_1_@_dt_focus_cdf22_wtf:bb.a
  %i.at = getelementptr i8, ptr %i.as, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !189
  %i.av = zext i8 %i.au to i32
  %i.aw = add nuw nsw i32 %i.av, %i.ao
  %i.ax = lshr i32 %i.aw, 1
  %i.ay = sub nsw i32 %i.ag, %i.ax                ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 128
  %i.ba = tail call i32 @llvm.smax.i32(i32 range(i32 -255, 256) %i.ay, i32 -127)
  %i.bb = trunc i32 %i.ba to i8
  %i.bc = add i8 %i.bb, 127
  %i.bd = select i1 %i.az, i8 -1, i8 %i.bc
  store i8 %i.bd, ptr %i.ae, align 1, !tbaa !189
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.g ; 3 uses
  %i.be = icmp slt i64 %indvars.iv.next, %i.i
  br i1 %i.be, label %bb.b, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.bf = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader181
  %.0162.lcssa = phi i32 [ %i.b, %.preheader181 ], [ %i.bf, %._crit_edge.loopexit ] ; 3 uses
  %i.bg = icmp slt i32 %.0162.lcssa, %2
  %i.bh = mul nsw i64 %indvars.iv209, %i.j        ; 6 uses
  br i1 %i.bg, label %bb.c, label %._crit_edge._crit_edge

bb.c:                                             ; preds = %._crit_edge
  %i.bi = trunc nsw i64 %i.bh to i32              ; 2 uses
  %i.bj = add nsw i32 %.0162.lcssa, %i.bi
  %i.bk = shl nsw i32 %i.bj, 2
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr i8, ptr %0, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 1      ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !189
  %i.bp = zext i8 %i.bo to i32
  %i.bq = sub i32 %i.bi, %i.b
  %i.br = add i32 %i.bq, %.0162.lcssa
  %i.bs = shl nsw i32 %i.br, 2
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr i8, ptr %0, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.bu, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !189
  %i.bx = zext i8 %i.bw to i32
  %i.by = sub nsw i32 %i.bp, %i.bx                ; 2 uses
  %i.bz = icmp sgt i32 %i.by, 128
  %i.ca = tail call i32 @llvm.smax.i32(i32 range(i32 -255, 256) %i.by, i32 -127)
  %i.cb = trunc i32 %i.ca to i8
  %i.cc = add i8 %i.cb, 127
  %i.cd = select i1 %i.bz, i8 -1, i8 %i.cc
  store i8 %i.cd, ptr %i.bn, align 1, !tbaa !189
  br label %._crit_edge._crit_edge

._crit_edge._crit_edge:                           ; preds = %._crit_edge, %bb.c
  %i.ce = add nsw i64 %i.bh, %i.k
  %i.cf = shl nsw i64 %i.ce, 2
  %i.cg = getelementptr i8, ptr %0, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !189
  %i.cj = zext i8 %i.ci to i16
  %.lhs.trunc = add nsw i16 %i.cj, -127
  %i.ck = sdiv i16 %.lhs.trunc, 2
  %i.cl = shl nsw i64 %i.bh, 2
  %i.cm = getelementptr i8, ptr %0, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.cm, i64 1      ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !189
  %i.cp = trunc nsw i16 %i.ck to i8
  %i.cq = add i8 %i.co, %i.cp
  store i8 %i.cq, ptr %i.cn, align 1, !tbaa !189
  br i1 %i.f, label %.lr.ph187, label %._crit_edge188

.lr.ph187:                                        ; preds = %._crit_edge._crit_edge
  %i.cr = trunc nsw i64 %i.bh to i32              ; 2 uses
  %i.cs = sub i32 %i.cr, %i.b
  %i.ct = add i32 %i.b, %i.cr
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph187, %bb.d
  %indvars.iv206 = phi i64 [ %i.g, %.lr.ph187 ], [ %indvars.iv.next207, %bb.d ] ; 3 uses
  %i.cu = trunc nuw nsw i64 %indvars.iv206 to i32 ; 2 uses
  %i.cv = add i32 %i.cs, %i.cu
  %i.cw = shl nsw i32 %i.cv, 2
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr i8, ptr %0, i64 %i.cx
  %i.cz = getelementptr i8, ptr %i.cy, i64 1
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !189
  %i.db = zext i8 %i.da to i16
  %i.dc = add i32 %i.ct, %i.cu
  %i.dd = shl nsw i32 %i.dc, 2
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr i8, ptr %0, i64 %i.de
  %i.dg = getelementptr i8, ptr %i.df, i64 1
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !189
  %i.di = zext i8 %i.dh to i16
  %i.dj = add nsw i16 %i.db, -254
  %.lhs.trunc170 = add nsw i16 %i.dj, %i.di
  %i.dk = sdiv i16 %.lhs.trunc170, 4
  %i.dl = add nsw i64 %indvars.iv206, %i.bh
  %i.dm = shl nsw i64 %i.dl, 2
  %i.dn = getelementptr i8, ptr %0, i64 %i.dm
  %i.do = getelementptr i8, ptr %i.dn, i64 1      ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !189
  %i.dq = trunc nsw i16 %i.dk to i8
  %i.dr = add i8 %i.dp, %i.dq
  store i8 %i.dr, ptr %i.do, align 1, !tbaa !189
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, %i.g ; 3 uses
  %i.ds = icmp slt i64 %indvars.iv.next207, %i.i
  br i1 %i.ds, label %bb.d, label %._crit_edge188.loopexit

._crit_edge188.loopexit:                          ; preds = %bb.d
  %i.dt = trunc nuw nsw i64 %indvars.iv.next207 to i32
  br label %._crit_edge188

._crit_edge188:                                   ; preds = %._crit_edge188.loopexit, %._crit_edge._crit_edge
  %.1163.lcssa = phi i32 [ %i.a, %._crit_edge._crit_edge ], [ %i.dt, %._crit_edge188.loopexit ] ; 3 uses
  %i.du = icmp slt i32 %.1163.lcssa, %2
  br i1 %i.du, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge188
  %i.dv = trunc nsw i64 %i.bh to i32              ; 2 uses
  %i.dw = sub i32 %i.dv, %i.b
  %i.dx = add i32 %i.dw, %.1163.lcssa
  %i.dy = shl nsw i32 %i.dx, 2
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr i8, ptr %0, i64 %i.dz
  %i.eb = getelementptr i8, ptr %i.ea, i64 1
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !189
  %i.ed = zext i8 %i.ec to i16
  %.lhs.trunc172 = add nsw i16 %i.ed, -127
  %i.ee = sdiv i16 %.lhs.trunc172, 2
  %i.ef = add nsw i32 %.1163.lcssa, %i.dv
  %i.eg = shl nsw i32 %i.ef, 2
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr i8, ptr %0, i64 %i.eh
  %i.ej = getelementptr i8, ptr %i.ei, i64 1      ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !189
  %i.el = trunc nsw i16 %i.ee to i8
  %i.em = add i8 %i.ek, %i.el
  store i8 %i.em, ptr %i.ej, align 1, !tbaa !189
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge188
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next210, %wide.trip.count
  br i1 %exitcond.not, label %.preheader180, label %.preheader181

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.j
  %indvars.iv217 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next218, %bb.j ] ; 11 uses
  br i1 %i.r, label %.lr.ph192, label %._crit_edge193

._crit_edge202:                                   ; preds = %bb.j, %.preheader180
  ret void

.lr.ph192:                                        ; preds = %.preheader, %.lr.ph192
  %indvars.iv212 = phi i64 [ %indvars.iv.next213, %.lr.ph192 ], [ %i.w, %.preheader ] ; 4 uses
  %i.en = mul nuw nsw i64 %indvars.iv212, %i.x
  %i.eo = add nuw nsw i64 %i.en, %indvars.iv217
  %i.ep = shl nsw i64 %i.eo, 2
  %i.eq = getelementptr i8, ptr %0, i64 %i.ep
  %i.er = getelementptr i8, ptr %i.eq, i64 1      ; 2 uses
  %i.es = load i8, ptr %i.er, align 1, !tbaa !189
  %i.et = zext i8 %i.es to i32
  %i.eu = sub nuw nsw i64 %indvars.iv212, %i.y
  %i.ev = mul nuw nsw i64 %i.eu, %i.x
  %i.ew = add nuw nsw i64 %i.ev, %indvars.iv217
  %i.ex = shl nsw i64 %i.ew, 2
  %i.ey = getelementptr i8, ptr %0, i64 %i.ex
  %i.ez = getelementptr i8, ptr %i.ey, i64 1
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !189
  %i.fb = zext i8 %i.fa to i32
  %i.fc = add nuw nsw i64 %indvars.iv212, %i.y
  %i.fd = mul nuw nsw i64 %i.fc, %i.x
  %i.fe = add nuw nsw i64 %i.fd, %indvars.iv217
  %i.ff = shl nsw i64 %i.fe, 2
  %i.fg = getelementptr i8, ptr %0, i64 %i.ff
  %i.fh = getelementptr i8, ptr %i.fg, i64 1
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !189
  %i.fj = zext i8 %i.fi to i32
  %i.fk = add nuw nsw i32 %i.fj, %i.fb
  %i.fl = lshr i32 %i.fk, 1
  %i.fm = sub nsw i32 %i.et, %i.fl                ; 2 uses
  %i.fn = icmp sgt i32 %i.fm, 128
  %i.fo = tail call i32 @llvm.smax.i32(i32 range(i32 -255, 256) %i.fm, i32 -127)
  %i.fp = trunc i32 %i.fo to i8
  %i.fq = add i8 %i.fp, 127
  %i.fr = select i1 %i.fn, i8 -1, i8 %i.fq
  store i8 %i.fr, ptr %i.er, align 1, !tbaa !189
  %indvars.iv.next213 = add nuw nsw i64 %indvars.iv212, %i.v ; 3 uses
  %i.fs = icmp slt i64 %indvars.iv.next213, %i.z
  br i1 %i.fs, label %.lr.ph192, label %._crit_edge193.loopexit

._crit_edge193.loopexit:                          ; preds = %.lr.ph192
  %i.ft = trunc nuw nsw i64 %indvars.iv.next213 to i32
  br label %._crit_edge193

._crit_edge193:                                   ; preds = %._crit_edge193.loopexit, %.preheader
  %.0.lcssa = phi i32 [ %i.b, %.preheader ], [ %i.ft, %._crit_edge193.loopexit ] ; 3 uses
  %i.fu = icmp slt i32 %.0.lcssa, %3
  br i1 %i.fu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge193
  %i.fv = mul nsw i32 %.0.lcssa, %2
  %i.fw = trunc nuw nsw i64 %indvars.iv217 to i32 ; 2 uses
  %i.fx = add nsw i32 %i.fv, %i.fw
  %i.fy = shl nsw i32 %i.fx, 2
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr i8, ptr %0, i64 %i.fz
  %i.gb = getelementptr i8, ptr %i.ga, i64 1      ; 2 uses
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !189
  %i.gd = zext i8 %i.gc to i32
  %i.ge = sub nsw i32 %.0.lcssa, %i.b
  %i.gf = mul nsw i32 %i.ge, %2
  %i.gg = add nsw i32 %i.gf, %i.fw
  %i.gh = shl nsw i32 %i.gg, 2
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr i8, ptr %0, i64 %i.gi
  %i.gk = getelementptr i8, ptr %i.gj, i64 1
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !189
  %i.gm = zext i8 %i.gl to i32
  %i.gn = sub nsw i32 %i.gd, %i.gm                ; 2 uses
  %i.go = icmp sgt i32 %i.gn, 128
  %i.gp = tail call i32 @llvm.smax.i32(i32 range(i32 -255, 256) %i.gn, i32 -127)
  %i.gq = trunc i32 %i.gp to i8
  %i.gr = add i8 %i.gq, 127
  %i.gs = select i1 %i.go, i8 -1, i8 %i.gr
  store i8 %i.gs, ptr %i.gb, align 1, !tbaa !189
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge193
  %i.gt = add nsw i64 %indvars.iv217, %i.aa
  %i.gu = shl nsw i64 %i.gt, 2
  %i.gv = getelementptr i8, ptr %0, i64 %i.gu
  %i.gw = getelementptr i8, ptr %i.gv, i64 1
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !189
  %i.gy = zext i8 %i.gx to i16
  %.lhs.trunc174 = add nsw i16 %i.gy, -127
  %i.gz = sdiv i16 %.lhs.trunc174, 2
  %i.ha = shl nuw nsw i64 %indvars.iv217, 2
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ha
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 1 ; 2 uses
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !189
  %i.he = trunc nsw i16 %i.gz to i8
  %i.hf = add i8 %i.hd, %i.he
  store i8 %i.hf, ptr %i.hc, align 1, !tbaa !189
  br i1 %i.u, label %.lr.ph198, label %._crit_edge199

.lr.ph198:                                        ; preds = %bb.h, %.lr.ph198
  %indvars.iv214 = phi i64 [ %indvars.iv.next215, %.lr.ph198 ], [ %i.v, %bb.h ] ; 4 uses
  %i.hg = sub nsw i64 %indvars.iv214, %i.y
  %i.hh = mul nsw i64 %i.hg, %i.x
  %i.hi = add nsw i64 %i.hh, %indvars.iv217
  %i.hj = shl nsw i64 %i.hi, 2
  %i.hk = getelementptr i8, ptr %0, i64 %i.hj
  %i.hl = getelementptr i8, ptr %i.hk, i64 1
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !189
  %i.hn = zext i8 %i.hm to i16
  %i.ho = add nuw nsw i64 %indvars.iv214, %i.y
  %i.hp = mul nuw nsw i64 %i.ho, %i.x
  %i.hq = add nuw nsw i64 %i.hp, %indvars.iv217
  %i.hr = shl nsw i64 %i.hq, 2
  %i.hs = getelementptr i8, ptr %0, i64 %i.hr
  %i.ht = getelementptr i8, ptr %i.hs, i64 1
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !189
  %i.hv = zext i8 %i.hu to i16
  %i.hw = add nsw i16 %i.hn, -254
  %.lhs.trunc176 = add nsw i16 %i.hw, %i.hv
  %i.hx = sdiv i16 %.lhs.trunc176, 4
  %i.hy = mul nuw nsw i64 %indvars.iv214, %i.x
  %i.hz = add nuw nsw i64 %i.hy, %indvars.iv217
  %i.ia = shl nsw i64 %i.hz, 2
  %i.ib = getelementptr i8, ptr %0, i64 %i.ia
  %i.ic = getelementptr i8, ptr %i.ib, i64 1      ; 2 uses
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !189
  %i.ie = trunc nsw i16 %i.hx to i8
  %i.if = add i8 %i.id, %i.ie
  store i8 %i.if, ptr %i.ic, align 1, !tbaa !189
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, %i.v ; 3 uses
  %i.ig = icmp slt i64 %indvars.iv.next215, %i.z
  br i1 %i.ig, label %.lr.ph198, label %._crit_edge199.loopexit

._crit_edge199.loopexit:                          ; preds = %.lr.ph198
  %i.ih = trunc nuw nsw i64 %indvars.iv.next215 to i32
  br label %._crit_edge199

._crit_edge199:                                   ; preds = %._crit_edge199.loopexit, %bb.h
  %.1.lcssa = phi i32 [ %i.a, %bb.h ], [ %i.ih, %._crit_edge199.loopexit ] ; 3 uses
  %i.ii = icmp slt i32 %.1.lcssa, %3
  br i1 %i.ii, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge199
  %i.ij = sub nsw i32 %.1.lcssa, %i.b
  %i.ik = mul nsw i32 %i.ij, %2
  %i.il = trunc nuw nsw i64 %indvars.iv217 to i32 ; 2 uses
  %i.im = add nsw i32 %i.ik, %i.il
  %i.in = shl nsw i32 %i.im, 2
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr i8, ptr %0, i64 %i.io
  %i.iq = getelementptr i8, ptr %i.ip, i64 1
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !189
  %i.is = zext i8 %i.ir to i16
  %.lhs.trunc178 = add nsw i16 %i.is, -127
  %i.it = sdiv i16 %.lhs.trunc178, 2
  %i.iu = mul nsw i32 %.1.lcssa, %2
  %i.iv = add nsw i32 %i.iu, %i.il
  %i.iw = shl nsw i32 %i.iv, 2
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr i8, ptr %0, i64 %i.ix
  %i.iz = getelementptr i8, ptr %i.iy, i64 1      ; 2 uses
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !189
  %i.jb = trunc nsw i16 %i.it to i8
  %i.jc = add i8 %i.ja, %i.jb
  store i8 %i.jc, ptr %i.iz, align 1, !tbaa !189
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge199
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; 2 uses
  %exitcond221.not = icmp eq i64 %indvars.iv.next218, %wide.trip.count220
  br i1 %exitcond221.not, label %._crit_edge202, label %.preheader
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #17

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #18

declare void @cairo_translate(ptr noundef, double noundef, double noundef) local_unnamed_addr #1

declare void @dt_dev_init(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_dev_load_image(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @dt_dev_pixelpipe_init_dummy(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_dev_pixelpipe_set_input(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, float noundef) local_unnamed_addr #1

declare void @dt_dev_pixelpipe_create_nodes(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @dt_dev_pixelpipe_synch_all(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @dt_dev_pixelpipe_get_dimensions(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @dt_dev_distort_transform_plus(ptr noundef, ptr noundef, double noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @dt_dev_pixelpipe_cleanup(ptr noundef) local_unnamed_addr #1

declare void @dt_dev_cleanup(ptr noundef) local_unnamed_addr #1

declare void @cairo_clip(ptr noundef) local_unnamed_addr #1

declare void @cairo_set_dash(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #1

declare void @cairo_set_source_rgb(ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #1

declare void @cairo_move_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #1

declare void @cairo_curve_to(ptr noundef, double noundef, double noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #1

declare void @cairo_set_line_width(ptr noundef, double noundef) local_unnamed_addr #1

declare void @cairo_stroke(ptr noundef) local_unnamed_addr #1

declare void @gtk_style_context_get_color(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gtk_widget_get_state_flags(ptr noundef) local_unnamed_addr #1

declare void @cairo_paint_with_alpha(ptr noundef, double noundef) local_unnamed_addr #1

declare void @gtk_render_frame(ptr noundef, ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #1

declare void @dt_control_draw_busy_msg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @gtk_widget_get_allocated_width(ptr noundef) local_unnamed_addr #1

declare i32 @gtk_widget_get_allocated_height(ptr noundef) local_unnamed_addr #1

declare i32 @gtk_style_context_lookup_color(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @cairo_set_source_rgba(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #1

declare void @cairo_line_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #1

declare void @cairo_close_path(ptr noundef) local_unnamed_addr #1

declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #1

declare i32 @dtgtk_thumbnail_btn_is_hidden(ptr noundef) local_unnamed_addr #1

declare void @dt_ratings_apply_on_image(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_collection_update_query(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @g_list_prepend(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @sqlite3_prepare_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @sqlite3_finalize(ptr noundef) local_unnamed_addr #1

declare i32 @dt_grouping_change_representative(i32 noundef) local_unnamed_addr #1

declare i32 @gtk_accelerator_get_default_mod_mask() local_unnamed_addr #1

declare void @dt_view_audio_stop(ptr noundef) local_unnamed_addr #1

declare void @dt_view_audio_start(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @dt_conf_get_string(ptr noundef) local_unnamed_addr #1

declare void @dt_variables_params_init(ptr noundef) local_unnamed_addr #1

declare ptr @dt_variables_expand(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_variables_params_destroy(ptr noundef) local_unnamed_addr #1

declare i32 @dt_image_monochrome_flags(ptr noundef) local_unnamed_addr #1

declare i32 @dt_image_use_monochrome_workflow(ptr noundef) local_unnamed_addr #1

declare i32 @dt_image_is_hdr(ptr noundef) local_unnamed_addr #1

declare i32 @sqlite3_column_int(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @dt_image_altered(i32 noundef) local_unnamed_addr #1

declare void @gtk_widget_set_has_tooltip(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_util_str_cat(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @sqlite3_column_text(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @gtk_widget_set_tooltip_markup(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @gtk_widget_set_visible(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @dt_conf_get_bool(ptr noundef) local_unnamed_addr #1

declare ptr @dt_util_glist_to_str(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @dt_tag_get_hierarchical(i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @dt_view_extend_modes_str(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @gtk_label_set_text(ptr noundef, ptr noundef) local_unnamed_addr #1

declare noalias ptr @gtk_border_new() local_unnamed_addr #1

declare void @gtk_style_context_get_margin(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @gtk_widget_set_margin_end(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @pango_layout_get_pixel_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @gtk_label_get_layout(ptr noundef) local_unnamed_addr #1

declare void @gtk_label_set_xalign(ptr noundef, float noundef) local_unnamed_addr #1

declare void @gtk_widget_set_margin_bottom(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @gtk_style_context_get_border(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gtk_widget_get_margin_bottom(ptr noundef) local_unnamed_addr #1

declare void @dt_mipmap_cache_get_with_caller(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef signext, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_mipmap_cache_release_with_caller(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @g_timeout_add_seconds(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @gtk_widget_set_state_flags(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @gtk_widget_unset_state_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @gtk_widget_hide(ptr noundef) local_unnamed_addr #1

declare void @gtk_container_remove(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @gtk_widget_get_parent(ptr noundef) local_unnamed_addr #1

declare void @g_object_unref(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr>, <4 x i1>, <4 x i64>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr>, <4 x i1>, <4 x float>) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f32.v4p0(<4 x float>, <4 x ptr>, <4 x i1>) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #20
end_hunk_1
