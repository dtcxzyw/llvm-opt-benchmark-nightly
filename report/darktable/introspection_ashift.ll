Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_ashift?download=true
inline.NumInlined: 378
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 77
begin_hunk_0_@do_fit:bb.a
  %i.gy = load float, ptr %i.av, align 4, !tbaa !284 ; 2 uses
  %i.gz = fneg reassoc nsz arcp contract afn float %i.gy
  %i.ha = fpext reassoc nsz arcp contract afn float %i.gz to double ; 2 uses
  %i.hb = fpext reassoc nsz arcp contract afn float %i.gy to double
  %i.hc = fmul reassoc nsz arcp contract afn double %i.gx, 5.000000e-01
  %i.hd = call reassoc nsz arcp contract afn double @llvm.tanh.f64(double %i.hc)
  %i.he = fmul reassoc nsz arcp contract afn double %i.hd, 5.000000e-01
  %i.hf = fadd reassoc nsz arcp contract afn double %i.he, 5.000000e-01
  %i.hg = fsub reassoc nsz arcp contract afn double %i.hb, %i.ha
  %i.hh = fmul reassoc nsz arcp contract afn double %i.hf, %i.hg
  %i.hi = fadd reassoc nsz arcp contract afn double %i.hh, %i.ha
  %i.hj = fptrunc reassoc nsz arcp contract afn double %i.hi to float
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.5.i = phi i32 [ %i.gu, %bb.am ], [ %.4.i, %bb.al ]
  %i.hk = phi float [ %i.hj, %bb.am ], [ %i.gs, %bb.al ] ; 2 uses
  store float %i.hk, ptr %i.aq, align 4, !tbaa !280
  %i.hl = load float, ptr %i.ar, align 8, !tbaa !281 ; 2 uses
  %i.hm = fcmp ord float %i.hl, 0.000000e+00
  br i1 %i.hm, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hn = zext nneg i32 %.5.i to i64
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.hn
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !166
  %i.hq = load float, ptr %i.aw, align 8, !tbaa !285 ; 2 uses
  %i.hr = fneg reassoc nsz arcp contract afn float %i.hq
  %i.hs = fpext reassoc nsz arcp contract afn float %i.hr to double ; 2 uses
  %i.ht = fpext reassoc nsz arcp contract afn float %i.hq to double
  %i.hu = fmul reassoc nsz arcp contract afn double %i.hp, 5.000000e-01
  %i.hv = call reassoc nsz arcp contract afn double @llvm.tanh.f64(double %i.hu)
  %i.hw = fmul reassoc nsz arcp contract afn double %i.hv, 5.000000e-01
  %i.hx = fadd reassoc nsz arcp contract afn double %i.hw, 5.000000e-01
  %i.hy = fsub reassoc nsz arcp contract afn double %i.ht, %i.hs
  %i.hz = fmul reassoc nsz arcp contract afn double %i.hx, %i.hy
  %i.ia = fadd reassoc nsz arcp contract afn double %i.hz, %i.hs
  %i.ib = fptrunc reassoc nsz arcp contract afn double %i.ia to float
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ic = phi float [ %i.ib, %bb.ao ], [ %i.hl, %bb.an ] ; 2 uses
  store float %i.ic, ptr %i.ar, align 8, !tbaa !281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.id = load float, ptr %i.al, align 8, !tbaa !273
  %i.ie = load float, ptr %i.ak, align 4, !tbaa !274
  %i.if = load float, ptr %i.an, align 8, !tbaa !275
  %i.ig = load i32, ptr %i.r, align 4, !tbaa !286
  %i.ih = load i32, ptr %i.s, align 8, !tbaa !287
  call fastcc void @_homography(ptr noundef %i.b, float noundef %i.fy, float noundef %i.gr, float noundef %i.hk, float noundef %i.ic, float noundef %i.id, float noundef %i.ie, float noundef %i.if, i32 noundef %i.ig, i32 noundef %i.ih, i32 noundef 0)
  %i.ii = load i32, ptr %i.s, align 8, !tbaa !287 ; 5 uses
  %invariant.op17.i = add nsw i32 %i.ii, -1       ; 2 uses
  %i.ij = icmp sgt i32 %i.ii, 0
  %.pre.i = load i32, ptr %i.r, align 4, !tbaa !286 ; 4 uses
  br i1 %i.ij, label %.preheader.lr.ph.i, label %._crit_edge24.i

.preheader.lr.ph.i:                               ; preds = %bb.ap
  %invariant.op.i = add nsw i32 %.pre.i, -1
  %i.ik = icmp sgt i32 %.pre.i, 0
  %i.il = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.im = load <4 x float>, ptr %i.b, align 64    ; 3 uses
  %i.in = load <4 x float>, ptr %i.il, align 16   ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ip = load float, ptr %i.io, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.ir = load float, ptr %i.iq, align 4
  %i.is = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.it = load float, ptr %i.is, align 32
  br i1 %i.ik, label %.preheader.us.i.preheader, label %.preheader.i

.preheader.us.i.preheader:                        ; preds = %.preheader.lr.ph.i
  %i.iu = shufflevector <4 x float> %i.im, <4 x float> %i.in, <2 x i32> <i32 1, i32 4>
  %i.iv = shufflevector <4 x float> %i.im, <4 x float> %i.in, <2 x i32> <i32 2, i32 5>
  %i.iw = shufflevector <4 x float> %i.im, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader, %._crit_edge.us.i
  %.07823.us.i = phi i32 [ %.reass18.us.i, %._crit_edge.us.i ], [ 0, %.preheader.us.i.preheader ] ; 2 uses
  %i.ix = phi <2 x float> [ %i.jt, %._crit_edge.us.i ], [ splat (float f0xFF7FFFFF), %.preheader.us.i.preheader ]
  %i.iy = phi <2 x float> [ %i.jr, %._crit_edge.us.i ], [ splat (float f0x7F7FFFFF), %.preheader.us.i.preheader ]
  %i.iz = sitofp reassoc nsz arcp contract afn i32 %.07823.us.i to float ; 2 uses
  %i.ja = insertelement <2 x float> poison, float %i.iz, i64 0
  %i.jb = shufflevector <2 x float> %i.ja, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jc = fmul reassoc nsz arcp contract afn <2 x float> %i.iu, %i.jb
  %i.jd = fadd reassoc nsz arcp contract afn <2 x float> %i.iv, %i.jc
  %i.je = fmul reassoc nsz arcp contract afn float %i.ir, %i.iz
  %invariant.op15.us.i = fadd reassoc nsz arcp contract afn float %i.it, %i.je
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %.preheader.us.i
  %.07.us.i = phi i32 [ 0, %.preheader.us.i ], [ %.reass.us.i, %bb.aq ] ; 2 uses
  %i.jf = phi <2 x float> [ %i.ix, %.preheader.us.i ], [ %i.jt, %bb.aq ] ; 2 uses
  %i.jg = phi <2 x float> [ %i.iy, %.preheader.us.i ], [ %i.jr, %bb.aq ] ; 2 uses
  %i.jh = sitofp reassoc nsz arcp contract afn i32 %.07.us.i to float ; 2 uses
  %i.ji = fmul reassoc nsz arcp contract afn float %i.ip, %i.jh
  %.reass16.us.i = fadd reassoc nsz arcp contract afn float %i.ji, %invariant.op15.us.i
  %i.jj = insertelement <2 x float> poison, float %i.jh, i64 0
  %i.jk = shufflevector <2 x float> %i.jj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jl = fmul reassoc nsz arcp contract afn <2 x float> %i.iw, %i.jk
  %i.jm = fadd reassoc nsz arcp contract afn <2 x float> %i.jl, %i.jd
  %i.jn = insertelement <2 x float> poison, float %.reass16.us.i, i64 0
  %i.jo = shufflevector <2 x float> %i.jn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jp = fdiv reassoc nsz arcp contract afn <2 x float> %i.jm, %i.jo ; 4 uses
  %i.jq = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.jg, %i.jp
  %i.jr = select <2 x i1> %i.jq, <2 x float> %i.jg, <2 x float> %i.jp ; 3 uses
  %i.js = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.jf, %i.jp
  %i.jt = select <2 x i1> %i.js, <2 x float> %i.jf, <2 x float> %i.jp ; 3 uses
  %.reass.us.i = add i32 %invariant.op.i, %.07.us.i ; 2 uses
  %i.ju = icmp slt i32 %.reass.us.i, %.pre.i
  br i1 %i.ju, label %bb.aq, label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %bb.aq
  %.reass18.us.i = add i32 %.07823.us.i, %invariant.op17.i ; 2 uses
  %i.jv = icmp slt i32 %.reass18.us.i, %i.ii
  br i1 %i.jv, label %.preheader.us.i, label %._crit_edge24.i

.preheader.i:                                     ; preds = %.preheader.lr.ph.i, %.preheader.i
  %.07823.i = phi i32 [ %.reass18.i, %.preheader.i ], [ 0, %.preheader.lr.ph.i ]
  %.reass18.i = add i32 %.07823.i, %invariant.op17.i ; 2 uses
  %i.jw = icmp slt i32 %.reass18.i, %i.ii
  br i1 %i.jw, label %.preheader.i, label %._crit_edge24.i

._crit_edge24.i:                                  ; preds = %.preheader.i, %._crit_edge.us.i, %bb.ap
  %i.jx = phi <2 x float> [ splat (float f0xFF7FFFFF), %bb.ap ], [ %i.jt, %._crit_edge.us.i ], [ splat (float f0xFF7FFFFF), %.preheader.i ]
  %i.jy = phi <2 x float> [ splat (float f0x7F7FFFFF), %bb.ap ], [ %i.jr, %._crit_edge.us.i ], [ splat (float f0x7F7FFFFF), %.preheader.i ]
  %i.jz = fsub reassoc nsz arcp contract afn <2 x float> %i.jx, %i.jy
  %i.ka = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmul.v2f32(float 1.000000e+00, <2 x float> %i.jz)
  %i.kb = sitofp reassoc nsz arcp contract afn i32 %.pre.i to float
  %i.kc = sitofp reassoc nsz arcp contract afn i32 %i.ii to float
  %i.kd = fmul reassoc nnan nsz arcp contract afn float %i.kc, 4.000000e+00
  %i.ke = fmul reassoc nsz arcp contract afn float %i.kd, %i.kb
  %i.kf = fcmp reassoc nsz arcp contract afn ogt float %i.ka, %i.ke
  br i1 %i.kf, label %nmsfit.exit.thread29, label %nmsfit.exit

nmsfit.exit.thread29:                             ; preds = %._crit_edge24.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br label %nmsfit.exit.thread27

nmsfit.exit:                                      ; preds = %._crit_edge24.i
  %i.kg = load <4 x float>, ptr %i.ao, align 4, !tbaa !15
  store <4 x float> %i.kg, ptr %1, align 4, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %.val.pre = load ptr, ptr %i.c, align 16, !tbaa !125
  br label %nmsfit.exit.thread23

nmsfit.exit.thread:                               ; preds = %bb.d, %nmsfit.exit.thread25
  store i32 0, ptr %i.e, align 4, !tbaa !178
  %i.kh = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.103, i32 noundef 5) #34
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.kh, i32 noundef 2) #34
  br label %bb.ar

nmsfit.exit.thread27:                             ; preds = %bb.ag, %nmsfit.exit.thread29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  store i32 0, ptr %i.e, align 4, !tbaa !178
  %i.ki = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.104, i32 noundef 5) #34
  call void (ptr, ...) @dt_control_log(ptr noundef %i.ki) #34
  br label %bb.ar

nmsfit.exit.thread23:                             ; preds = %bb.e, %nmsfit.exit
  %.val = phi ptr [ %.val2154, %bb.e ], [ %.val.pre, %nmsfit.exit ]
  store i32 0, ptr %i.e, align 4, !tbaa !178
  call fastcc void @do_crop(ptr %.val, ptr noundef %1)
  %i.kj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !235
  call void @dt_dev_invalidate_all(ptr noundef %i.kj) #34
  %i.kk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !159
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 104
  %i.km = atomicrmw add ptr %i.kl, i32 1 seq_cst, align 4 ; 0 uses
  %i.kn = load ptr, ptr %i.d, align 8, !tbaa !234
  %i.ko = load float, ptr %1, align 4, !tbaa !209
  call void @dt_bauhaus_slider_set(ptr noundef %i.kn, float noundef %i.ko) #34
  %i.kp = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !253
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !210
  call void @dt_bauhaus_slider_set(ptr noundef %i.kq, float noundef %i.ks) #34
  %i.kt = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !254
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !211
  call void @dt_bauhaus_slider_set(ptr noundef %i.ku, float noundef %i.kw) #34
  %i.kx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !262
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.la = load float, ptr %i.kz, align 4, !tbaa !212
  call void @dt_bauhaus_slider_set(ptr noundef %i.ky, float noundef %i.la) #34
  %i.lb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !159
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 104
  %i.ld = atomicrmw add ptr %i.lc, i32 -1 seq_cst, align 4 ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %nmsfit.exit.thread, %nmsfit.exit.thread27, %nmsfit.exit.thread23, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_do_get_structure_auto(ptr noundef %0, i32 noundef %1) unnamed_addr #5 {
bb.a:
  %2 = alloca %struct.rect, align 8               ; 47 uses
  %i.a = alloca double, align 8                   ; 6 uses
  %3 = alloca %struct.rect, align 16              ; 50 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !125 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 148 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !178
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.gu

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.f, align 4, !tbaa !178
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 5 uses
  %i.i = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.h) #34 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 264
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !152
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.h) #34 ; 0 uses
  %i.m = icmp eq ptr %i.k, null
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.105, i32 noundef 5) #34
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.n) #34
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !126
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %i.r = load ptr, ptr %i.q, align 16, !tbaa !143
  tail call void @dt_dev_pixelpipe_cache_flush(ptr noundef %i.r) #34
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !126
  tail call void @dt_dev_reprocess_preview(ptr noundef %i.s) #34
  br label %_remove_outliers.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.d, align 16, !tbaa !125 ; 11 uses
  %i.u = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.h) #34 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 264 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !152
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 272
  %i.y = load <4 x i32>, ptr %i.x, align 8, !tbaa !17 ; 5 uses
  %i.z = extractelement <4 x i32> %i.y, i64 1     ; 16 uses
  %i.aa = extractelement <4 x i32> %i.y, i64 0    ; 16 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 288
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !155 ; 2 uses
  %i.ad = sext i32 %i.aa to i64                   ; 4 uses
  %i.ae = sext i32 %i.z to i64                    ; 4 uses
  %i.af = shl nsw i64 %i.ad, 4
  %i.ag = mul i64 %i.af, %i.ae
  %i.ah = tail call ptr @dt_alloc_aligned(i64 noundef %i.ag) #34 ; 19 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ah, i64 64) ]
  %.not54.i = icmp eq ptr %i.ah, null
  br i1 %.not54.i, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.ai = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.h) #34 ; 0 uses
  br label %bb.ge

bb.f:                                             ; preds = %bb.e
  %i.aj = load ptr, ptr %i.v, align 8, !tbaa !152
  %i.ak = shl nsw i64 %i.ad, 2
  %i.al = mul i64 %i.ak, %i.ae                    ; 6 uses
  tail call void @dt_iop_image_copy(ptr noundef nonnull %i.ah, ptr noundef %i.aj, i64 noundef %i.al) #34
  %i.am = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.h) #34 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 216 ; 2 uses
  store i32 0, ptr %i.an, align 8, !tbaa !180
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 220 ; 2 uses
  store i32 0, ptr %i.ao, align 4, !tbaa !230
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 224 ; 2 uses
  store i32 0, ptr %i.ap, align 8, !tbaa !232
  %i.aq = getelementptr inbounds nuw i8, ptr %i.t, i64 192 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !179
  tail call void @free(ptr noundef %i.ar) #34
  store ptr null, ptr %i.aq, align 8, !tbaa !179
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !126
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 112
  %i.av = tail call i32 @dt_image_is_raw(ptr noundef nonnull %i.au) #34
  %.not.i.i = icmp eq i32 %i.av, 0
  %.not.i.i.i = icmp eq i64 %i.al, 0              ; 3 uses
  %or.cond.i = or i1 %.not.i.i.i, %.not.i.i
  br i1 %or.cond.i, label %gamma_correct.exit.i.i, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %bb.f
  %i.aw = add i64 %i.al, -4                       ; 2 uses
  %i.ax = lshr exact i64 %i.aw, 2
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %xtraiter = and i64 %i.ay, 3                    ; 3 uses
  %i.az = icmp ult i64 %i.aw, 12
  br i1 %i.az, label %.preheader.i.i.i.epil.preheader, label %.preheader.i.i.i.preheader.new

.preheader.i.i.i.preheader.new:                   ; preds = %.preheader.i.i.i.preheader
  %unroll_iter = and i64 %i.ay, 9223372036854775804
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader.new
  %.01214.i.i.i = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %i.cn, %.preheader.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %niter.next.3, %.preheader.i.i.i ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.01214.i.i.i ; 4 uses
  %i.bb = load float, ptr %i.ba, align 64, !tbaa !15
  %i.bc = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bb, float 4.500000e-01)
  store float %i.bc, ptr %i.ba, align 64, !tbaa !15
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 2 uses
  %i.be = load float, ptr %i.bd, align 4, !tbaa !15
  %i.bf = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.be, float 4.500000e-01)
  store float %i.bf, ptr %i.bd, align 4, !tbaa !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !15
  %i.bi = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bh, float 4.500000e-01)
  store float %i.bi, ptr %i.bg, align 8, !tbaa !15
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.01214.i.i.i ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bl = load float, ptr %i.bk, align 16, !tbaa !15
  %i.bm = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bl, float 4.500000e-01)
  store float %i.bm, ptr %i.bk, align 16, !tbaa !15
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 20 ; 2 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !15
  %i.bp = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bo, float 4.500000e-01)
  store float %i.bp, ptr %i.bn, align 4, !tbaa !15
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 2 uses
  %i.br = load float, ptr %i.bq, align 8, !tbaa !15
  %i.bs = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.br, float 4.500000e-01)
  store float %i.bs, ptr %i.bq, align 8, !tbaa !15
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.01214.i.i.i ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32 ; 2 uses
  %i.bv = load float, ptr %i.bu, align 32, !tbaa !15
  %i.bw = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bv, float 4.500000e-01)
  store float %i.bw, ptr %i.bu, align 32, !tbaa !15
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 36 ; 2 uses
  %i.by = load float, ptr %i.bx, align 4, !tbaa !15
  %i.bz = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.by, float 4.500000e-01)
  store float %i.bz, ptr %i.bx, align 4, !tbaa !15
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 40 ; 2 uses
  %i.cb = load float, ptr %i.ca, align 8, !tbaa !15
  %i.cc = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cb, float 4.500000e-01)
  store float %i.cc, ptr %i.ca, align 8, !tbaa !15
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.01214.i.i.i ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 48 ; 2 uses
  %i.cf = load float, ptr %i.ce, align 16, !tbaa !15
  %i.cg = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cf, float 4.500000e-01)
  store float %i.cg, ptr %i.ce, align 16, !tbaa !15
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 52 ; 2 uses
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !15
  %i.cj = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ci, float 4.500000e-01)
  store float %i.cj, ptr %i.ch, align 4, !tbaa !15
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 56 ; 2 uses
  %i.cl = load float, ptr %i.ck, align 8, !tbaa !15
  %i.cm = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cl, float 4.500000e-01)
  store float %i.cm, ptr %i.ck, align 8, !tbaa !15
  %i.cn = add nuw i64 %.01214.i.i.i, 16           ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %gamma_correct.exit.i.i.loopexit.unr-lcssa, label %.preheader.i.i.i

gamma_correct.exit.i.i.loopexit.unr-lcssa:        ; preds = %.preheader.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %gamma_correct.exit.i.i, label %.preheader.i.i.i.epil.preheader

.preheader.i.i.i.epil.preheader:                  ; preds = %gamma_correct.exit.i.i.loopexit.unr-lcssa, %.preheader.i.i.i.preheader
  %.01214.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %i.cn, %gamma_correct.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod236 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod236)
  br label %.preheader.i.i.i.epil

.preheader.i.i.i.epil:                            ; preds = %.preheader.i.i.i.epil, %.preheader.i.i.i.epil.preheader
  %.01214.i.i.i.epil = phi i64 [ %i.cx, %.preheader.i.i.i.epil ], [ %.01214.i.i.i.epil.init, %.preheader.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.i.epil ], [ 0, %.preheader.i.i.i.epil.preheader ]
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.01214.i.i.i.epil ; 4 uses
  %i.cp = load float, ptr %i.co, align 16, !tbaa !15
  %i.cq = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cp, float 4.500000e-01)
  store float %i.cq, ptr %i.co, align 16, !tbaa !15
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 4 ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !15
  %i.ct = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cs, float 4.500000e-01)
  store float %i.ct, ptr %i.cr, align 4, !tbaa !15
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.cv = load float, ptr %i.cu, align 8, !tbaa !15
  %i.cw = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cv, float 4.500000e-01)
  store float %i.cw, ptr %i.cu, align 8, !tbaa !15
  %i.cx = add nuw i64 %.01214.i.i.i.epil, 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %gamma_correct.exit.i.i, label %.preheader.i.i.i.epil, !llvm.loop !519

gamma_correct.exit.i.i:                           ; preds = %gamma_correct.exit.i.i.loopexit.unr-lcssa, %.preheader.i.i.i.epil, %bb.f
  %i.cy = and i32 %1, 2
  %.not185.i.i = icmp eq i32 %i.cy, 0
  br i1 %.not185.i.i, label %detail_enhance.exit.i.i, label %bb.g

bb.g:                                             ; preds = %gamma_correct.exit.i.i
  %i.cz = sitofp reassoc nsz arcp contract afn i32 %i.aa to float
  %i.da = sitofp reassoc nsz arcp contract afn i32 %i.z to float
  %i.db = tail call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.cz, float %i.da)
  %i.dc = fmul reassoc nnan nsz arcp contract afn float %i.db, 2.000000e-02
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %dt_XYZ_to_Lab.exit.i.i.i, %bb.g
end_hunk_0
begin_hunk_1_@_do_get_structure_auto:bb.a
  %i.akf = fsub reassoc nsz arcp contract afn double %i.akc, %i.ajl ; 2 uses
  %i.akg = fmul reassoc nsz arcp contract afn double %i.akf, %i.akf
  %i.akh = fadd reassoc nsz arcp contract afn double %i.akg, %i.ake
  %i.aki = tail call reassoc nsz arcp contract afn noundef double @llvm.sqrt.f64(double %i.akh)
  %i.akj = fcmp reassoc nsz arcp contract afn olt double %i.aki, %i.aje
  br i1 %i.akj, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %.lr.ph.i147.i.i.i
  %i.akk = getelementptr inbounds nuw [8 x i8], ptr %i.xe, i64 %i.ajz
  %i.akl = load double, ptr %i.akk, align 8, !tbaa !166
  %i.akm = fsub reassoc nsz arcp contract afn double %i.akl, %i.ajq ; 3 uses
  %i.akn = fcmp reassoc nsz arcp contract afn ugt double %i.akm, f0xC00921FB54442D18
  br i1 %i.akn, label %.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i, %bb.cg
  %.0.lcssa.i.i.i.i.i = phi double [ %i.akm, %bb.cg ], [ %i.akp, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.ako = fcmp reassoc nsz arcp contract afn ogt double %.0.lcssa.i.i.i.i.i, f0x400921FB54442D18
  br i1 %i.ako, label %.lr.ph9.i.i.i.i.i, label %angle_diff_signed.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.cg, %.lr.ph.i.i.i.i.i
  %.07.i.i.i.i.i = phi double [ %i.akp, %.lr.ph.i.i.i.i.i ], [ %i.akm, %bb.cg ]
  %i.akp = fadd reassoc nsz arcp contract afn double %.07.i.i.i.i.i, f0x401921FB54442D18 ; 3 uses
  %i.akq = fcmp reassoc nsz arcp contract afn ugt double %i.akp, f0xC00921FB54442D18
  br i1 %i.akq, label %.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph9.i.i.i.i.i:                                ; preds = %.preheader.i.i.i.i.i, %.lr.ph9.i.i.i.i.i
  %.18.i.i.i.i.i = phi double [ %i.akr, %.lr.ph9.i.i.i.i.i ], [ %.0.lcssa.i.i.i.i.i, %.preheader.i.i.i.i.i ]
  %i.akr = fadd reassoc nsz arcp contract afn double %.18.i.i.i.i.i, f0xC01921FB54442D18 ; 3 uses
  %i.aks = fcmp reassoc nsz arcp contract afn ogt double %i.akr, f0x400921FB54442D18
  br i1 %i.aks, label %.lr.ph9.i.i.i.i.i, label %angle_diff_signed.exit.i.i.i.i

angle_diff_signed.exit.i.i.i.i:                   ; preds = %.lr.ph9.i.i.i.i.i, %.preheader.i.i.i.i.i
  %.1.lcssa.i.i.i.i.i = phi double [ %.0.lcssa.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %i.akr, %.lr.ph9.i.i.i.i.i ] ; 3 uses
  %i.akt = fadd reassoc nsz arcp contract afn double %.1.lcssa.i.i.i.i.i, %.095107.i.i.i.i
  %i.aku = fmul reassoc nsz arcp contract afn double %.1.lcssa.i.i.i.i.i, %.1.lcssa.i.i.i.i.i
  %i.akv = fadd reassoc nsz arcp contract afn double %i.aku, %.093108.i.i.i.i
  %i.akw = add nsw i32 %.0110.i.i.i.i, 1
  br label %bb.ch

bb.ch:                                            ; preds = %angle_diff_signed.exit.i.i.i.i, %.lr.ph.i147.i.i.i
  %.196.i.i.i.i = phi nsz double [ %i.akt, %angle_diff_signed.exit.i.i.i.i ], [ %.095107.i.i.i.i, %.lr.ph.i147.i.i.i ] ; 3 uses
  %.194.i.i.i.i = phi nsz double [ %i.akv, %angle_diff_signed.exit.i.i.i.i ], [ %.093108.i.i.i.i, %.lr.ph.i147.i.i.i ] ; 2 uses
  %.1.i.i.i.i = phi i32 [ %i.akw, %angle_diff_signed.exit.i.i.i.i ], [ %.0110.i.i.i.i, %.lr.ph.i147.i.i.i ] ; 3 uses
  %indvars.iv.next.i149.i.i.i = add nuw nsw i64 %indvars.iv.i148.i.i.i, 1 ; 2 uses
  %exitcond.not.i204.i.i = icmp eq i64 %indvars.iv.next.i149.i.i.i, %i.ajs
  br i1 %exitcond.not.i204.i.i, label %._crit_edge.i150.i.i.i, label %.lr.ph.i147.i.i.i

._crit_edge.i150.i.i.i:                           ; preds = %bb.ch
  %i.akx = icmp eq i32 %.1.i.i.i.i, 0
  br i1 %i.akx, label %refine.exit.thread.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %._crit_edge.i150.i.i.i
  %i.aky = sitofp reassoc nsz arcp contract afn i32 %.1.i.i.i.i to double ; 2 uses
  %i.akz = fdiv reassoc nsz arcp contract afn double %.196.i.i.i.i, %i.aky ; 3 uses
  %i.ala = fmul reassoc nsz arcp contract afn double %.196.i.i.i.i, 2.000000e+00
  %i.alb = fmul reassoc nsz arcp contract afn double %i.ala, %i.akz
  %i.alc = fsub reassoc nsz arcp contract afn double %.194.i.i.i.i, %i.alb
  %i.ald = fdiv reassoc nsz arcp contract afn double %i.alc, %i.aky
  %i.ale = fmul reassoc nsz arcp contract afn double %i.akz, %i.akz
  %i.alf = fadd reassoc nsz arcp contract afn double %i.ald, %i.ale
  %i.alg = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.alf)
  %i.alh = fmul reassoc nsz arcp contract afn double %i.alg, 2.000000e+00
  call fastcc void @region_grow(i32 noundef %i.aji, i32 noundef %i.ajk, ptr noundef nonnull readonly %i.wu, ptr noundef nonnull %i.ahm, ptr noundef nonnull %i.b, ptr noundef %i.a, ptr noundef nonnull readonly %i.ahe, double noundef %i.alh)
  %i.ali = load i32, ptr %i.b, align 4, !tbaa !17 ; 4 uses
  %i.alj = icmp slt i32 %i.ali, 2
  br i1 %i.alj, label %refine.exit.thread.i.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.alk = load double, ptr %i.a, align 8, !tbaa !166 ; 2 uses
  call fastcc void @region2rect(ptr noundef nonnull %i.ahm, i32 noundef %i.ali, ptr noundef nonnull readonly %i.wv, double noundef %i.alk, ptr noundef nonnull %3)
  %i.all = uitofp nneg i32 %i.ali to double
  %i.alm = load <4 x double>, ptr %3, align 16, !tbaa !166 ; 3 uses
  %i.aln = load double, ptr %i.ahq, align 8, !tbaa !300
  %i.alo = load double, ptr %i.ahp, align 16, !tbaa !299
  %i.alp = load double, ptr %i.aho, align 8, !tbaa !298
  %i.alq = extractelement <4 x double> %i.alm, i64 0
  %i.alr = fsub reassoc nsz arcp contract afn double %i.alo, %i.alq ; 2 uses
  %i.als = fmul reassoc nsz arcp contract afn double %i.alr, %i.alr
  %i.alt = fsub reassoc nsz arcp contract afn double %i.aln, %i.alp ; 2 uses
  %i.alu = fmul reassoc nsz arcp contract afn double %i.alt, %i.alt
  %i.alv = fadd reassoc nsz arcp contract afn double %i.alu, %i.als
  %i.alw = tail call reassoc nsz arcp contract afn noundef double @llvm.sqrt.f64(double %i.alv)
  %i.alx = load double, ptr %i.ahr, align 16, !tbaa !301
  %i.aly = fmul reassoc nsz arcp contract afn double %i.alw, %i.alx
  %i.alz = fdiv reassoc nsz arcp contract afn double %i.all, %i.aly
  %i.ama = fcmp reassoc nsz arcp contract afn olt double %i.alz, f0x3FE6666666666666
  br i1 %i.ama, label %.lr.ph86.i.i.i.i.i, label %bb.co

.lr.ph86.i.i.i.i.i:                               ; preds = %bb.cj
  %i.amb = load <2 x i32>, ptr %i.ahm, align 4, !tbaa !17
  %i.amc = sitofp <2 x i32> %i.amb to <2 x double> ; 4 uses
  %i.amd = shufflevector <4 x double> %i.alm, <4 x double> poison, <2 x i32> <i32 3, i32 1>
  %i.ame = shufflevector <2 x double> %i.amc, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.amf = fsub reassoc nsz arcp contract afn <2 x double> %i.amd, %i.ame ; 2 uses
  %i.amg = fmul reassoc nsz arcp contract afn <2 x double> %i.amf, %i.amf
  %i.amh = shufflevector <4 x double> %i.alm, <4 x double> poison, <2 x i32> <i32 2, i32 0>
  %i.ami = shufflevector <2 x double> %i.amc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.amj = fsub reassoc nsz arcp contract afn <2 x double> %i.amh, %i.ami ; 2 uses
  %i.amk = fmul reassoc nsz arcp contract afn <2 x double> %i.amj, %i.amj
  %i.aml = fadd reassoc nsz arcp contract afn <2 x double> %i.amg, %i.amk
  %i.amm = tail call reassoc nsz arcp contract afn <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.aml) ; 2 uses
  %i.amn = extractelement <2 x double> %i.amm, i64 0 ; 2 uses
  %i.amo = extractelement <2 x double> %i.amm, i64 1 ; 2 uses
  %i.amp = fcmp reassoc nsz arcp contract afn ogt double %i.amo, %i.amn
  %i.amq = select reassoc nsz arcp contract afn i1 %i.amp, double %i.amo, double %i.amn
  %i.amr = extractelement <2 x double> %i.amc, i64 0
  %i.ams = extractelement <2 x double> %i.amc, i64 1
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cn, %.lr.ph86.i.i.i.i.i
  %.lcssa2426.i.i.i = phi i32 [ %i.ali, %.lr.ph86.i.i.i.i.i ], [ %i.anv, %bb.cn ] ; 4 uses
  %.07384.i.i.i.i.i = phi double [ %i.amq, %.lr.ph86.i.i.i.i.i ], [ %i.amt, %bb.cn ]
  %i.amt = fmul reassoc nsz arcp contract afn double %.07384.i.i.i.i.i, 7.500000e-01 ; 2 uses
  %i.amu = icmp sgt i32 %.lcssa2426.i.i.i, 0
  br i1 %i.amu, label %.lr.ph.i104.i.i.i.i, label %refine.exit.thread.loopexit.i.i.i

.lr.ph.i104.i.i.i.i:                              ; preds = %bb.ck, %bb.cm
  %i.amv = phi i32 [ %i.anv, %bb.cm ], [ %.lcssa2426.i.i.i, %bb.ck ] ; 3 uses
  %i.amw = phi i32 [ %i.anw, %bb.cm ], [ %.lcssa2426.i.i.i, %bb.ck ]
  %.083.i.i.i.i.i = phi i32 [ %i.anx, %bb.cm ], [ 0, %bb.ck ] ; 3 uses
  %i.amx = sext i32 %.083.i.i.i.i.i to i64
  %i.amy = getelementptr inbounds [8 x i8], ptr %i.ahm, i64 %i.amx ; 3 uses
  %i.amz = load i32, ptr %i.amy, align 4, !tbaa !303 ; 2 uses
  %i.ana = sitofp reassoc nsz arcp contract afn i32 %i.amz to double
  %i.anb = getelementptr inbounds nuw i8, ptr %i.amy, i64 4
  %i.anc = load i32, ptr %i.anb, align 4, !tbaa !304 ; 2 uses
  %i.and = sitofp reassoc nsz arcp contract afn i32 %i.anc to double
  %i.ane = fsub reassoc nsz arcp contract afn double %i.ana, %i.amr ; 2 uses
  %i.anf = fmul reassoc nsz arcp contract afn double %i.ane, %i.ane
  %i.ang = fsub reassoc nsz arcp contract afn double %i.and, %i.ams ; 2 uses
  %i.anh = fmul reassoc nsz arcp contract afn double %i.ang, %i.ang
  %i.ani = fadd reassoc nsz arcp contract afn double %i.anh, %i.anf
  %i.anj = tail call reassoc nsz arcp contract afn noundef double @llvm.sqrt.f64(double %i.ani)
  %i.ank = fcmp reassoc nsz arcp contract afn ogt double %i.anj, %i.amt
  br i1 %i.ank, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %.lr.ph.i104.i.i.i.i
  %i.anl = mul i32 %i.anc, %i.agq
  %i.anm = add i32 %i.anl, %i.amz
  %i.ann = zext i32 %i.anm to i64
  %i.ano = getelementptr inbounds nuw i8, ptr %i.ahi, i64 %i.ann
  store i8 0, ptr %i.ano, align 1, !tbaa !177
  %i.anp = sext i32 %i.amv to i64
  %i.anq = getelementptr [8 x i8], ptr %i.ahm, i64 %i.anp
  %i.anr = getelementptr i8, ptr %i.anq, i64 -8
  %i.ans = load <2 x i32>, ptr %i.anr, align 4, !tbaa !17
  store <2 x i32> %i.ans, ptr %i.amy, align 4, !tbaa !17
  %i.ant = add nsw i32 %i.amv, -1                 ; 2 uses
  %i.anu = add nsw i32 %.083.i.i.i.i.i, -1
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %.lr.ph.i104.i.i.i.i
  %i.anv = phi i32 [ %i.ant, %bb.cl ], [ %i.amv, %.lr.ph.i104.i.i.i.i ] ; 5 uses
  %i.anw = phi i32 [ %i.ant, %bb.cl ], [ %i.amw, %.lr.ph.i104.i.i.i.i ] ; 4 uses
  %.1.i.i.i.i.i = phi i32 [ %i.anu, %bb.cl ], [ %.083.i.i.i.i.i, %.lr.ph.i104.i.i.i.i ]
  %i.anx = add nsw i32 %.1.i.i.i.i.i, 1           ; 2 uses
  %i.any = icmp slt i32 %i.anx, %i.anw
  br i1 %i.any, label %.lr.ph.i104.i.i.i.i, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.cm
  %i.anz = icmp slt i32 %i.anw, 2
  br i1 %i.anz, label %refine.exit.thread.loopexit.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %._crit_edge.i.i.i.i.i
  call fastcc void @region2rect(ptr noundef nonnull %i.ahm, i32 noundef %i.anw, ptr noundef nonnull readonly %i.wv, double noundef %i.alk, ptr noundef nonnull %3)
  %i.aoa = sitofp reassoc nsz arcp contract afn i32 %i.anv to double
  %i.aob = load double, ptr %3, align 16, !tbaa !297
  %i.aoc = load double, ptr %i.aho, align 8, !tbaa !298
  %i.aod = load double, ptr %i.ahp, align 16, !tbaa !299
  %i.aoe = load double, ptr %i.ahq, align 8, !tbaa !300
  %i.aof = fsub reassoc nsz arcp contract afn double %i.aod, %i.aob ; 2 uses
  %i.aog = fmul reassoc nsz arcp contract afn double %i.aof, %i.aof
  %i.aoh = fsub reassoc nsz arcp contract afn double %i.aoe, %i.aoc ; 2 uses
  %i.aoi = fmul reassoc nsz arcp contract afn double %i.aoh, %i.aoh
  %i.aoj = fadd reassoc nsz arcp contract afn double %i.aoi, %i.aog
  %i.aok = tail call reassoc nsz arcp contract afn noundef double @llvm.sqrt.f64(double %i.aoj)
  %i.aol = load double, ptr %i.ahr, align 16, !tbaa !301
  %i.aom = fmul reassoc nsz arcp contract afn double %i.aok, %i.aol
  %i.aon = fdiv reassoc nsz arcp contract afn double %i.aoa, %i.aom
  %i.aoo = fcmp reassoc nsz arcp contract afn olt double %i.aon, f0x3FE6666666666666
  br i1 %i.aoo, label %bb.ck, label %.loopexit.i.i.i

refine.exit.thread.loopexit.i.i.i:                ; preds = %._crit_edge.i.i.i.i.i, %bb.ck
  %.lcssa2427.i.i.i = phi i32 [ %.lcssa2426.i.i.i, %bb.ck ], [ %i.anv, %._crit_edge.i.i.i.i.i ]
  store i32 %.lcssa2427.i.i.i, ptr %i.b, align 4
  br label %refine.exit.thread.i.i.i

refine.exit.thread.i.i.i:                         ; preds = %refine.exit.thread.loopexit.i.i.i, %bb.ci, %._crit_edge.i150.i.i.i, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.fo

.loopexit.i.i.i:                                  ; preds = %bb.cn
  store i32 %i.anv, ptr %i.b, align 4
  br label %bb.co

bb.co:                                            ; preds = %.loopexit.i.i.i, %bb.cj, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.aop = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef nonnull %3, ptr noundef nonnull readonly %i.wu, double noundef %i.agz) ; 4 uses
  %i.aoq = fcmp reassoc nsz arcp contract afn ogt double %i.aop, 0.000000e+00
  br i1 %i.aoq, label %rect_improve.exit.thread.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.aor = load <4 x double>, ptr %3, align 16, !tbaa !166 ; 6 uses
  store <4 x double> %i.aor, ptr %2, align 8, !tbaa !166
  %i.aos = load <4 x double>, ptr %i.ahr, align 16, !tbaa !166 ; 6 uses
  store <4 x double> %i.aos, ptr %i.aht, align 8, !tbaa !166
  %i.aot = load <2 x double>, ptr %i.ahw, align 16, !tbaa !166 ; 6 uses
  %i.aou = load double, ptr %i.aic, align 8, !tbaa !305
  %i.aov = insertelement <2 x double> poison, double %i.aou, i64 0
  %i.aow = shufflevector <2 x double> %i.aov, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.aox = fmul reassoc nsz arcp contract afn <2 x double> %i.aow, <double f0x3FF921FB54442D18, double 5.000000e-01> ; 2 uses
  %i.aoy = shufflevector <2 x double> %i.aot, <2 x double> %i.aox, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x double> %i.aoy, ptr %i.ahx, align 8, !tbaa !166
  %i.aoz = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wu, double noundef %i.agz) ; 2 uses
  %i.apa = fcmp reassoc nsz arcp contract afn ogt double %i.aoz, %i.aop
  br i1 %i.apa, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  store <4 x double> %i.aor, ptr %3, align 16, !tbaa !166
  store <4 x double> %i.aos, ptr %i.ahr, align 16, !tbaa !166
  store <2 x double> %i.aot, ptr %i.ahw, align 16, !tbaa !166
  store <2 x double> %i.aox, ptr %i.aia, align 16, !tbaa !166
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.165.i.i.i.i = phi nsz double [ %i.aoz, %bb.cq ], [ %i.aop, %bb.cp ] ; 2 uses
  %i.apb = fmul reassoc nsz arcp contract afn <2 x double> %i.aow, <double f0x3FE921FB54442D18, double 2.500000e-01> ; 2 uses
  store <2 x double> %i.apb, ptr %i.aib, align 8, !tbaa !166
  %i.apc = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wu, double noundef %i.agz) ; 2 uses
  %i.apd = fcmp reassoc nsz arcp contract afn ogt double %i.apc, %.165.i.i.i.i
  br i1 %i.apd, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  store <4 x double> %i.aor, ptr %3, align 16, !tbaa !166
  store <4 x double> %i.aos, ptr %i.ahr, align 16, !tbaa !166
  store <2 x double> %i.aot, ptr %i.ahw, align 16, !tbaa !166
  store <2 x double> %i.apb, ptr %i.aia, align 16, !tbaa !166
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.165.1.i.i.i.i = phi nsz double [ %i.apc, %bb.cs ], [ %.165.i.i.i.i, %bb.cr ] ; 2 uses
  %i.ape = fmul reassoc nsz arcp contract afn <2 x double> %i.aow, <double f0x3FD921FB54442D18, double 1.250000e-01> ; 2 uses
  store <2 x double> %i.ape, ptr %i.aib, align 8, !tbaa !166
  %i.apf = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wu, double noundef %i.agz) ; 2 uses
  %i.apg = fcmp reassoc nsz arcp contract afn ogt double %i.apf, %.165.1.i.i.i.i
  br i1 %i.apg, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  store <4 x double> %i.aor, ptr %3, align 16, !tbaa !166
  store <4 x double> %i.aos, ptr %i.ahr, align 16, !tbaa !166
  store <2 x double> %i.aot, ptr %i.ahw, align 16, !tbaa !166
  store <2 x double> %i.ape, ptr %i.aia, align 16, !tbaa !166
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.165.2.i.i.i.i = phi nsz double [ %i.apf, %bb.cu ], [ %.165.1.i.i.i.i, %bb.ct ] ; 2 uses
  %i.aph = fmul reassoc nsz arcp contract afn <2 x double> %i.aow, <double f0x3FC921FB54442D18, double 6.250000e-02> ; 2 uses
  store <2 x double> %i.aph, ptr %i.aib, align 8, !tbaa !166
  %i.api = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wu, double noundef %i.agz) ; 2 uses
  %i.apj = fcmp reassoc nsz arcp contract afn ogt double %i.api, %.165.2.i.i.i.i
  br i1 %i.apj, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  store <4 x double> %i.aor, ptr %3, align 16, !tbaa !166
  store <4 x double> %i.aos, ptr %i.ahr, align 16, !tbaa !166
  store <2 x double> %i.aot, ptr %i.ahw, align 16, !tbaa !166
  store <2 x double> %i.aph, ptr %i.aia, align 16, !tbaa !166
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.165.3.i.i.i.i = phi nsz double [ %i.api, %bb.cw ], [ %.165.2.i.i.i.i, %bb.cv ] ; 2 uses
  %i.apk = fmul reassoc nsz arcp contract afn <2 x double> %i.aow, <double f0x3FB921FB54442D18, double 3.125000e-02> ; 2 uses
  store <2 x double> %i.apk, ptr %i.aib, align 8, !tbaa !166
  %i.apl = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wu, double noundef %i.agz) ; 2 uses
  %i.apm = fcmp reassoc nsz arcp contract afn ogt double %i.apl, %.165.3.i.i.i.i
  br i1 %i.apm, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  store <4 x double> %i.aor, ptr %3, align 16, !tbaa !166
  store <4 x double> %i.aos, ptr %i.ahr, align 16, !tbaa !166
  store <2 x double> %i.aot, ptr %i.ahw, align 16, !tbaa !166
  store <2 x double> %i.apk, ptr %i.aia, align 16, !tbaa !166
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.165.4.i.i.i.i = phi nsz double [ %i.apl, %bb.cy ], [ %.165.3.i.i.i.i, %bb.cx ] ; 5 uses
  %i.apn = fcmp reassoc nsz arcp contract afn ogt double %.165.4.i.i.i.i, 0.000000e+00
  br i1 %i.apn, label %rect_improve.exit.thread.i.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.apo = load <4 x double>, ptr %3, align 16, !tbaa !166 ; 6 uses
  store <4 x double> %i.apo, ptr %2, align 8, !tbaa !166
  %i.app = load double, ptr %i.ahr, align 16, !tbaa !301 ; 2 uses
  %i.apq = load <4 x double>, ptr %i.ahu, align 8, !tbaa !166 ; 6 uses
  store <4 x double> %i.apq, ptr %i.ahv, align 8, !tbaa !166
  %i.apr = load <2 x double>, ptr %i.ahy, align 8, !tbaa !166 ; 6 uses
  store <2 x double> %i.apr, ptr %i.ahz, align 8, !tbaa !166
  %i.aps = load double, ptr %i.aic, align 8, !tbaa !305 ; 6 uses
  store double %i.aps, ptr %i.aid, align 8, !tbaa !305
  %i.apt = fadd reassoc nsz arcp contract afn double %i.app, -5.000000e-01 ; 5 uses
  %i.apu = fcmp reassoc nsz arcp contract afn ult double %i.apt, 5.000000e-01
  br i1 %i.apu, label %bb.dd, label %bb.db

bb.db:                                            ; preds = %bb.da
  store double %i.apt, ptr %i.aht, align 8, !tbaa !301
  %i.apv = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wu, double noundef %i.agz) ; 2 uses
  %i.apw = fcmp reassoc nsz arcp contract afn ogt double %i.apv, %.165.4.i.i.i.i
  br i1 %i.apw, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  store <4 x double> %i.apo, ptr %3, align 16, !tbaa !166
  store double %i.apt, ptr %i.ahr, align 16, !tbaa !301
  store <4 x double> %i.apq, ptr %i.ahu, align 8, !tbaa !166
  store <2 x double> %i.apr, ptr %i.ahy, align 8, !tbaa !166
  store double %i.aps, ptr %i.aic, align 8, !tbaa !305
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db, %bb.da
  %i.apx = phi double [ %i.apt, %bb.dc ], [ %i.apt, %bb.db ], [ %i.app, %bb.da ] ; 2 uses
  %.367.i.i.i.i = phi nsz double [ %i.apv, %bb.dc ], [ %.165.4.i.i.i.i, %bb.db ], [ %.165.4.i.i.i.i, %bb.da ] ; 3 uses
  %i.apy = fadd reassoc nsz arcp contract afn double %i.apx, -5.000000e-01 ; 5 uses
  %i.apz = fcmp reassoc nsz arcp contract afn ult double %i.apy, 5.000000e-01
  br i1 %i.apz, label %bb.dg, label %bb.de

bb.de:                                            ; preds = %bb.dd
  store double %i.apy, ptr %i.aht, align 8, !tbaa !301
  %i.aqa = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wu, double noundef %i.agz) ; 2 uses
  %i.aqb = fcmp reassoc nsz arcp contract afn ogt double %i.aqa, %.367.i.i.i.i
  br i1 %i.aqb, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  store <4 x double> %i.apo, ptr %3, align 16, !tbaa !166
  store double %i.apy, ptr %i.ahr, align 16, !tbaa !301
  store <4 x double> %i.apq, ptr %i.ahu, align 8, !tbaa !166
  store <2 x double> %i.apr, ptr %i.ahy, align 8, !tbaa !166
  store double %i.aps, ptr %i.aic, align 8, !tbaa !305
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de, %bb.dd
  %i.aqc = phi double [ %i.apy, %bb.df ], [ %i.apy, %bb.de ], [ %i.apx, %bb.dd ] ; 2 uses
  %.367.1.i.i.i.i = phi nsz double [ %i.aqa, %bb.df ], [ %.367.i.i.i.i, %bb.de ], [ %.367.i.i.i.i, %bb.dd ] ; 3 uses
  %i.aqd = fadd reassoc nsz arcp contract afn double %i.aqc, -5.000000e-01 ; 5 uses
  %i.aqe = fcmp reassoc nsz arcp contract afn ult double %i.aqd, 5.000000e-01
  br i1 %i.aqe, label %bb.dj, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  store double %i.aqd, ptr %i.aht, align 8, !tbaa !301
  %i.aqf = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wu, double noundef %i.agz) ; 2 uses
  %i.aqg = fcmp reassoc nsz arcp contract afn ogt double %i.aqf, %.367.1.i.i.i.i
  br i1 %i.aqg, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  store <4 x double> %i.apo, ptr %3, align 16, !tbaa !166
  store double %i.aqd, ptr %i.ahr, align 16, !tbaa !301
  store <4 x double> %i.apq, ptr %i.ahu, align 8, !tbaa !166
  store <2 x double> %i.apr, ptr %i.ahy, align 8, !tbaa !166
  store double %i.aps, ptr %i.aic, align 8, !tbaa !305
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh, %bb.dg
  %i.aqh = phi double [ %i.aqd, %bb.di ], [ %i.aqd, %bb.dh ], [ %i.aqc, %bb.dg ] ; 2 uses
  %.367.2.i.i.i.i = phi nsz double [ %i.aqf, %bb.di ], [ %.367.1.i.i.i.i, %bb.dh ], [ %.367.1.i.i.i.i, %bb.dg ] ; 3 uses
  %i.aqi = fadd reassoc nsz arcp contract afn double %i.aqh, -5.000000e-01 ; 5 uses
  %i.aqj = fcmp reassoc nsz arcp contract afn ult double %i.aqi, 5.000000e-01
  br i1 %i.aqj, label %bb.dm, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  store double %i.aqi, ptr %i.aht, align 8, !tbaa !301
  %i.aqk = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wu, double noundef %i.agz) ; 2 uses
  %i.aql = fcmp reassoc nsz arcp contract afn ogt double %i.aqk, %.367.2.i.i.i.i
  br i1 %i.aql, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  store <4 x double> %i.apo, ptr %3, align 16, !tbaa !166
  store double %i.aqi, ptr %i.ahr, align 16, !tbaa !301
  store <4 x double> %i.apq, ptr %i.ahu, align 8, !tbaa !166
  store <2 x double> %i.apr, ptr %i.ahy, align 8, !tbaa !166
  store double %i.aps, ptr %i.aic, align 8, !tbaa !305
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk, %bb.dj
  %i.aqm = phi double [ %i.aqi, %bb.dl ], [ %i.aqi, %bb.dk ], [ %i.aqh, %bb.dj ]
  %.367.3.i.i.i.i = phi nsz double [ %i.aqk, %bb.dl ], [ %.367.2.i.i.i.i, %bb.dk ], [ %.367.2.i.i.i.i, %bb.dj ] ; 3 uses
  %i.aqn = fadd reassoc nsz arcp contract afn double %i.aqm, -5.000000e-01 ; 3 uses
  %i.aqo = fcmp reassoc nsz arcp contract afn ult double %i.aqn, 5.000000e-01
  br i1 %i.aqo, label %bb.dp, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  store double %i.aqn, ptr %i.aht, align 8, !tbaa !301
  %i.aqp = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wu, double noundef %i.agz) ; 2 uses
  %i.aqq = fcmp reassoc nsz arcp contract afn ogt double %i.aqp, %.367.3.i.i.i.i
  br i1 %i.aqq, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  store <4 x double> %i.apo, ptr %3, align 16, !tbaa !166
  store double %i.aqn, ptr %i.ahr, align 16, !tbaa !301
  store <4 x double> %i.apq, ptr %i.ahu, align 8, !tbaa !166
  store <2 x double> %i.apr, ptr %i.ahy, align 8, !tbaa !166
  store double %i.aps, ptr %i.aic, align 8, !tbaa !305
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn, %bb.dm
  %.367.4.i.i.i.i = phi nsz double [ %i.aqp, %bb.do ], [ %.367.3.i.i.i.i, %bb.dn ], [ %.367.3.i.i.i.i, %bb.dm ] ; 5 uses
  %i.aqr = fcmp reassoc nsz arcp contract afn ogt double %.367.4.i.i.i.i, 0.000000e+00
  br i1 %i.aqr, label %rect_improve.exit.thread.i.i.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.aqs = load <2 x double>, ptr %3, align 16, !tbaa !166 ; 2 uses
  %i.aqt = load <2 x double>, ptr %i.ahp, align 16, !tbaa !166 ; 2 uses
  %i.aqu = load double, ptr %i.ahr, align 16, !tbaa !301 ; 2 uses
  %i.aqv = load <4 x double>, ptr %i.ahu, align 8, !tbaa !166 ; 7 uses
  store <4 x double> %i.aqv, ptr %i.ahv, align 8, !tbaa !166
  %i.aqw = load <2 x double>, ptr %i.ahy, align 8, !tbaa !166 ; 7 uses
  store <2 x double> %i.aqw, ptr %i.ahz, align 8, !tbaa !166
  %i.aqx = load double, ptr %i.aic, align 8, !tbaa !305 ; 6 uses
  store double %i.aqx, ptr %i.aid, align 8, !tbaa !305
  %i.aqy = shufflevector <2 x double> %i.aqw, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.aqz = shufflevector <4 x double> %i.aqy, <4 x double> %i.aqv, <2 x i32> <i32 0, i32 7>
  %i.ara = fmul reassoc nsz arcp contract afn <2 x double> %i.aqz, <double -2.500000e-01, double 2.500000e-01> ; 10 uses
  %i.arb = fadd reassoc nsz arcp contract afn double %i.aqu, -5.000000e-01 ; 5 uses
  %i.arc = fcmp reassoc nsz arcp contract afn ult double %i.arb, 5.000000e-01
  br i1 %i.arc, label %bb.dt, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ard = fadd reassoc nsz arcp contract afn <2 x double> %i.ara, %i.aqs ; 3 uses
  %i.are = fadd reassoc nsz arcp contract afn <2 x double> %i.ara, %i.aqt ; 3 uses
  %i.arf = shufflevector <2 x double> %i.ard, <2 x double> %i.are, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  store <4 x double> %i.arf, ptr %2, align 8, !tbaa !166
  store double %i.arb, ptr %i.aht, align 8, !tbaa !301
  %i.arg = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wu, double noundef %i.agz) ; 2 uses
  %i.arh = fcmp reassoc nsz arcp contract afn ogt double %i.arg, %.367.4.i.i.i.i
  br i1 %i.arh, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  store <4 x double> %i.arf, ptr %3, align 16, !tbaa !166
  store double %i.arb, ptr %i.ahr, align 16, !tbaa !301
  store <4 x double> %i.aqv, ptr %i.ahu, align 8, !tbaa !166
  store <2 x double> %i.aqw, ptr %i.ahy, align 8, !tbaa !166
  store double %i.aqx, ptr %i.aic, align 8, !tbaa !305
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr, %bb.dq
  %i.ari = phi double [ %i.arb, %bb.ds ], [ %i.arb, %bb.dr ], [ %i.aqu, %bb.dq ] ; 2 uses
  %.5.i.i.i.i = phi nsz double [ %i.arg, %bb.ds ], [ %.367.4.i.i.i.i, %bb.dr ], [ %.367.4.i.i.i.i, %bb.dq ] ; 3 uses
  %i.arj = phi <2 x double> [ %i.ard, %bb.ds ], [ %i.ard, %bb.dr ], [ %i.aqs, %bb.dq ] ; 2 uses
  %i.ark = phi <2 x double> [ %i.are, %bb.ds ], [ %i.are, %bb.dr ], [ %i.aqt, %bb.dq ] ; 2 uses
  %i.arl = fadd reassoc nsz arcp contract afn double %i.ari, -5.000000e-01 ; 5 uses
  %i.arm = fcmp reassoc nsz arcp contract afn ult double %i.arl, 5.000000e-01
  br i1 %i.arm, label %bb.dw, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.arn = fadd reassoc nsz arcp contract afn <2 x double> %i.arj, %i.ara ; 3 uses
  %i.aro = fadd reassoc nsz arcp contract afn <2 x double> %i.ark, %i.ara ; 3 uses
  %i.arp = shufflevector <2 x double> %i.arn, <2 x double> %i.aro, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  store <4 x double> %i.arp, ptr %2, align 8, !tbaa !166
  store double %i.arl, ptr %i.aht, align 8, !tbaa !301
  %i.arq = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wu, double noundef %i.agz) ; 2 uses
  %i.arr = fcmp reassoc nsz arcp contract afn ogt double %i.arq, %.5.i.i.i.i
  br i1 %i.arr, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  store <4 x double> %i.arp, ptr %3, align 16, !tbaa !166
  store double %i.arl, ptr %i.ahr, align 16, !tbaa !301
  store <4 x double> %i.aqv, ptr %i.ahu, align 8, !tbaa !166
  store <2 x double> %i.aqw, ptr %i.ahy, align 8, !tbaa !166
  store double %i.aqx, ptr %i.aic, align 8, !tbaa !305
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du, %bb.dt
  %i.ars = phi double [ %i.arl, %bb.dv ], [ %i.arl, %bb.du ], [ %i.ari, %bb.dt ] ; 2 uses
  %.5.1.i.i.i.i = phi nsz double [ %i.arq, %bb.dv ], [ %.5.i.i.i.i, %bb.du ], [ %.5.i.i.i.i, %bb.dt ] ; 3 uses
  %i.art = phi <2 x double> [ %i.arn, %bb.dv ], [ %i.arn, %bb.du ], [ %i.arj, %bb.dt ] ; 2 uses
  %i.aru = phi <2 x double> [ %i.aro, %bb.dv ], [ %i.aro, %bb.du ], [ %i.ark, %bb.dt ] ; 2 uses
  %i.arv = fadd reassoc nsz arcp contract afn double %i.ars, -5.000000e-01 ; 5 uses
  %i.arw = fcmp reassoc nsz arcp contract afn ult double %i.arv, 5.000000e-01
  br i1 %i.arw, label %bb.dz, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.arx = fadd reassoc nsz arcp contract afn <2 x double> %i.art, %i.ara ; 3 uses
  %i.ary = fadd reassoc nsz arcp contract afn <2 x double> %i.aru, %i.ara ; 3 uses
  %i.arz = shufflevector <2 x double> %i.arx, <2 x double> %i.ary, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  store <4 x double> %i.arz, ptr %2, align 8, !tbaa !166
  store double %i.arv, ptr %i.aht, align 8, !tbaa !301
  %i.asa = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wu, double noundef %i.agz) ; 2 uses
  %i.asb = fcmp reassoc nsz arcp contract afn ogt double %i.asa, %.5.1.i.i.i.i
  br i1 %i.asb, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  store <4 x double> %i.arz, ptr %3, align 16, !tbaa !166
  store double %i.arv, ptr %i.ahr, align 16, !tbaa !301
  store <4 x double> %i.aqv, ptr %i.ahu, align 8, !tbaa !166
  store <2 x double> %i.aqw, ptr %i.ahy, align 8, !tbaa !166
  store double %i.aqx, ptr %i.aic, align 8, !tbaa !305
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx, %bb.dw
  %i.asc = phi double [ %i.arv, %bb.dy ], [ %i.arv, %bb.dx ], [ %i.ars, %bb.dw ] ; 2 uses
  %.5.2.i.i.i.i = phi nsz double [ %i.asa, %bb.dy ], [ %.5.1.i.i.i.i, %bb.dx ], [ %.5.1.i.i.i.i, %bb.dw ] ; 3 uses
  %i.asd = phi <2 x double> [ %i.arx, %bb.dy ], [ %i.arx, %bb.dx ], [ %i.art, %bb.dw ] ; 2 uses
  %i.ase = phi <2 x double> [ %i.ary, %bb.dy ], [ %i.ary, %bb.dx ], [ %i.aru, %bb.dw ] ; 2 uses
  %i.asf = fadd reassoc nsz arcp contract afn double %i.asc, -5.000000e-01 ; 5 uses
  %i.asg = fcmp reassoc nsz arcp contract afn ult double %i.asf, 5.000000e-01
  br i1 %i.asg, label %bb.ec, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.ash = fadd reassoc nsz arcp contract afn <2 x double> %i.asd, %i.ara ; 3 uses
  %i.asi = fadd reassoc nsz arcp contract afn <2 x double> %i.ase, %i.ara ; 3 uses
  %i.asj = shufflevector <2 x double> %i.ash, <2 x double> %i.asi, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  store <4 x double> %i.asj, ptr %2, align 8, !tbaa !166
  store double %i.asf, ptr %i.aht, align 8, !tbaa !301
  %i.ask = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wu, double noundef %i.agz) ; 2 uses
  %i.asl = fcmp reassoc nsz arcp contract afn ogt double %i.ask, %.5.2.i.i.i.i
  br i1 %i.asl, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  store <4 x double> %i.asj, ptr %3, align 16, !tbaa !166
  store double %i.asf, ptr %i.ahr, align 16, !tbaa !301
  store <4 x double> %i.aqv, ptr %i.ahu, align 8, !tbaa !166
  store <2 x double> %i.aqw, ptr %i.ahy, align 8, !tbaa !166
  store double %i.aqx, ptr %i.aic, align 8, !tbaa !305
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea, %bb.dz
  %i.asm = phi double [ %i.asf, %bb.eb ], [ %i.asf, %bb.ea ], [ %i.asc, %bb.dz ]
  %.5.3.i.i.i.i = phi nsz double [ %i.ask, %bb.eb ], [ %.5.2.i.i.i.i, %bb.ea ], [ %.5.2.i.i.i.i, %bb.dz ] ; 3 uses
  %i.asn = phi <2 x double> [ %i.ash, %bb.eb ], [ %i.ash, %bb.ea ], [ %i.asd, %bb.dz ]
  %i.aso = phi <2 x double> [ %i.asi, %bb.eb ], [ %i.asi, %bb.ea ], [ %i.ase, %bb.dz ]
  %i.asp = fadd reassoc nsz arcp contract afn double %i.asm, -5.000000e-01 ; 3 uses
  %i.asq = fcmp reassoc nsz arcp contract afn ult double %i.asp, 5.000000e-01
  br i1 %i.asq, label %bb.ef, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.asr = fadd reassoc nsz arcp contract afn <2 x double> %i.asn, %i.ara ; 2 uses
  %i.ass = fadd reassoc nsz arcp contract afn <2 x double> %i.aso, %i.ara ; 2 uses
  %i.ast = shufflevector <2 x double> %i.asr, <2 x double> %i.ass, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x double> %i.ast, ptr %2, align 8, !tbaa !166
  store double %i.asp, ptr %i.aht, align 8, !tbaa !301
  %i.asu = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wu, double noundef %i.agz) ; 2 uses
  %i.asv = fcmp reassoc nsz arcp contract afn ogt double %i.asu, %.5.3.i.i.i.i
  br i1 %i.asv, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  store <2 x double> %i.asr, ptr %3, align 16, !tbaa !166
  store <2 x double> %i.ass, ptr %i.ahp, align 16, !tbaa !166
  store double %i.asp, ptr %i.ahr, align 16, !tbaa !301
  store <4 x double> %i.aqv, ptr %i.ahu, align 8, !tbaa !166
  store <2 x double> %i.aqw, ptr %i.ahy, align 8, !tbaa !166
  store double %i.aqx, ptr %i.aic, align 8, !tbaa !305
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed, %bb.ec
  %.5.4.i.i.i.i = phi nsz double [ %i.asu, %bb.ee ], [ %.5.3.i.i.i.i, %bb.ed ], [ %.5.3.i.i.i.i, %bb.ec ] ; 5 uses
  %i.asw = fcmp reassoc nsz arcp contract afn ogt double %.5.4.i.i.i.i, 0.000000e+00
  br i1 %i.asw, label %rect_improve.exit.thread.i.i.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.asx = load <2 x double>, ptr %3, align 16, !tbaa !166 ; 2 uses
  %i.asy = load <2 x double>, ptr %i.ahp, align 16, !tbaa !166 ; 2 uses
  %i.asz = load double, ptr %i.ahr, align 16, !tbaa !301 ; 2 uses
  %i.ata = load <4 x double>, ptr %i.ahu, align 8, !tbaa !166 ; 7 uses
  store <4 x double> %i.ata, ptr %i.ahv, align 8, !tbaa !166
  %i.atb = load <2 x double>, ptr %i.ahy, align 8, !tbaa !166 ; 7 uses
  store <2 x double> %i.atb, ptr %i.ahz, align 8, !tbaa !166
  %i.atc = load double, ptr %i.aic, align 8, !tbaa !305 ; 6 uses
  store double %i.atc, ptr %i.aid, align 8, !tbaa !305
  %i.atd = shufflevector <2 x double> %i.atb, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ate = shufflevector <4 x double> %i.atd, <4 x double> %i.ata, <2 x i32> <i32 0, i32 7>
  %i.atf = fmul reassoc nsz arcp contract afn <2 x double> %i.ate, <double -2.500000e-01, double 2.500000e-01> ; 10 uses
  %i.atg = fadd reassoc nsz arcp contract afn double %i.asz, -5.000000e-01 ; 5 uses
  %i.ath = fcmp reassoc nsz arcp contract afn ult double %i.atg, 5.000000e-01
  br i1 %i.ath, label %bb.ej, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.ati = fsub reassoc nsz arcp contract afn <2 x double> %i.asx, %i.atf ; 3 uses
  %i.atj = fsub reassoc nsz arcp contract afn <2 x double> %i.asy, %i.atf ; 3 uses
  %i.atk = shufflevector <2 x double> %i.ati, <2 x double> %i.atj, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  store <4 x double> %i.atk, ptr %2, align 8, !tbaa !166
  store double %i.atg, ptr %i.aht, align 8, !tbaa !301
  %i.atl = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wu, double noundef %i.agz) ; 2 uses
  %i.atm = fcmp reassoc nsz arcp contract afn ogt double %i.atl, %.5.4.i.i.i.i
  br i1 %i.atm, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  store <4 x double> %i.atk, ptr %3, align 16, !tbaa !166
  store double %i.atg, ptr %i.ahr, align 16, !tbaa !301
  store <4 x double> %i.ata, ptr %i.ahu, align 8, !tbaa !166
  store <2 x double> %i.atb, ptr %i.ahy, align 8, !tbaa !166
  store double %i.atc, ptr %i.aic, align 8, !tbaa !305
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh, %bb.eg
  %i.atn = phi double [ %i.atg, %bb.ei ], [ %i.atg, %bb.eh ], [ %i.asz, %bb.eg ] ; 2 uses
  %.7.i.i.i.i = phi nsz double [ %i.atl, %bb.ei ], [ %.5.4.i.i.i.i, %bb.eh ], [ %.5.4.i.i.i.i, %bb.eg ] ; 3 uses
  %i.ato = phi <2 x double> [ %i.ati, %bb.ei ], [ %i.ati, %bb.eh ], [ %i.asx, %bb.eg ] ; 2 uses
  %i.atp = phi <2 x double> [ %i.atj, %bb.ei ], [ %i.atj, %bb.eh ], [ %i.asy, %bb.eg ] ; 2 uses
  %i.atq = fadd reassoc nsz arcp contract afn double %i.atn, -5.000000e-01 ; 5 uses
  %i.atr = fcmp reassoc nsz arcp contract afn ult double %i.atq, 5.000000e-01
  br i1 %i.atr, label %bb.em, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.ats = fsub reassoc nsz arcp contract afn <2 x double> %i.ato, %i.atf ; 3 uses
  %i.att = fsub reassoc nsz arcp contract afn <2 x double> %i.atp, %i.atf ; 3 uses
  %i.atu = shufflevector <2 x double> %i.ats, <2 x double> %i.att, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  store <4 x double> %i.atu, ptr %2, align 8, !tbaa !166
  store double %i.atq, ptr %i.aht, align 8, !tbaa !301
  %i.atv = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wu, double noundef %i.agz) ; 2 uses
  %i.atw = fcmp reassoc nsz arcp contract afn ogt double %i.atv, %.7.i.i.i.i
  br i1 %i.atw, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  store <4 x double> %i.atu, ptr %3, align 16, !tbaa !166
  store double %i.atq, ptr %i.ahr, align 16, !tbaa !301
  store <4 x double> %i.ata, ptr %i.ahu, align 8, !tbaa !166
  store <2 x double> %i.atb, ptr %i.ahy, align 8, !tbaa !166
  store double %i.atc, ptr %i.aic, align 8, !tbaa !305
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek, %bb.ej
  %i.atx = phi double [ %i.atq, %bb.el ], [ %i.atq, %bb.ek ], [ %i.atn, %bb.ej ] ; 2 uses
  %.7.1.i.i.i.i = phi nsz double [ %i.atv, %bb.el ], [ %.7.i.i.i.i, %bb.ek ], [ %.7.i.i.i.i, %bb.ej ] ; 3 uses
  %i.aty = phi <2 x double> [ %i.ats, %bb.el ], [ %i.ats, %bb.ek ], [ %i.ato, %bb.ej ] ; 2 uses
  %i.atz = phi <2 x double> [ %i.att, %bb.el ], [ %i.att, %bb.ek ], [ %i.atp, %bb.ej ] ; 2 uses
  %i.aua = fadd reassoc nsz arcp contract afn double %i.atx, -5.000000e-01 ; 5 uses
  %i.aub = fcmp reassoc nsz arcp contract afn ult double %i.aua, 5.000000e-01
  br i1 %i.aub, label %bb.ep, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.auc = fsub reassoc nsz arcp contract afn <2 x double> %i.aty, %i.atf ; 3 uses
  %i.aud = fsub reassoc nsz arcp contract afn <2 x double> %i.atz, %i.atf ; 3 uses
  %i.aue = shufflevector <2 x double> %i.auc, <2 x double> %i.aud, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  store <4 x double> %i.aue, ptr %2, align 8, !tbaa !166
  store double %i.aua, ptr %i.aht, align 8, !tbaa !301
  %i.auf = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wu, double noundef %i.agz) ; 2 uses
  %i.aug = fcmp reassoc nsz arcp contract afn ogt double %i.auf, %.7.1.i.i.i.i
  br i1 %i.aug, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  store <4 x double> %i.aue, ptr %3, align 16, !tbaa !166
  store double %i.aua, ptr %i.ahr, align 16, !tbaa !301
  store <4 x double> %i.ata, ptr %i.ahu, align 8, !tbaa !166
  store <2 x double> %i.atb, ptr %i.ahy, align 8, !tbaa !166
  store double %i.atc, ptr %i.aic, align 8, !tbaa !305
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en, %bb.em
  %i.auh = phi double [ %i.aua, %bb.eo ], [ %i.aua, %bb.en ], [ %i.atx, %bb.em ] ; 2 uses
  %.7.2.i.i.i.i = phi nsz double [ %i.auf, %bb.eo ], [ %.7.1.i.i.i.i, %bb.en ], [ %.7.1.i.i.i.i, %bb.em ] ; 3 uses
  %i.aui = phi <2 x double> [ %i.auc, %bb.eo ], [ %i.auc, %bb.en ], [ %i.aty, %bb.em ] ; 2 uses
  %i.auj = phi <2 x double> [ %i.aud, %bb.eo ], [ %i.aud, %bb.en ], [ %i.atz, %bb.em ] ; 2 uses
  %i.auk = fadd reassoc nsz arcp contract afn double %i.auh, -5.000000e-01 ; 5 uses
  %i.aul = fcmp reassoc nsz arcp contract afn ult double %i.auk, 5.000000e-01
  br i1 %i.aul, label %bb.es, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.aum = fsub reassoc nsz arcp contract afn <2 x double> %i.aui, %i.atf ; 3 uses
  %i.aun = fsub reassoc nsz arcp contract afn <2 x double> %i.auj, %i.atf ; 3 uses
  %i.auo = shufflevector <2 x double> %i.aum, <2 x double> %i.aun, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  store <4 x double> %i.auo, ptr %2, align 8, !tbaa !166
  store double %i.auk, ptr %i.aht, align 8, !tbaa !301
  %i.aup = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wu, double noundef %i.agz) ; 2 uses
  %i.auq = fcmp reassoc nsz arcp contract afn ogt double %i.aup, %.7.2.i.i.i.i
  br i1 %i.auq, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  store <4 x double> %i.auo, ptr %3, align 16, !tbaa !166
  store double %i.auk, ptr %i.ahr, align 16, !tbaa !301
  store <4 x double> %i.ata, ptr %i.ahu, align 8, !tbaa !166
  store <2 x double> %i.atb, ptr %i.ahy, align 8, !tbaa !166
  store double %i.atc, ptr %i.aic, align 8, !tbaa !305
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq, %bb.ep
  %i.aur = phi double [ %i.auk, %bb.er ], [ %i.auk, %bb.eq ], [ %i.auh, %bb.ep ]
  %.7.3.i.i.i.i = phi nsz double [ %i.aup, %bb.er ], [ %.7.2.i.i.i.i, %bb.eq ], [ %.7.2.i.i.i.i, %bb.ep ] ; 3 uses
  %i.aus = phi <2 x double> [ %i.aum, %bb.er ], [ %i.aum, %bb.eq ], [ %i.aui, %bb.ep ]
  %i.aut = phi <2 x double> [ %i.aun, %bb.er ], [ %i.aun, %bb.eq ], [ %i.auj, %bb.ep ]
  %i.auu = fadd reassoc nsz arcp contract afn double %i.aur, -5.000000e-01 ; 3 uses
  %i.auv = fcmp reassoc nsz arcp contract afn ult double %i.auu, 5.000000e-01
  br i1 %i.auv, label %bb.ev, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.auw = fsub reassoc nsz arcp contract afn <2 x double> %i.aus, %i.atf ; 2 uses
  %i.aux = fsub reassoc nsz arcp contract afn <2 x double> %i.aut, %i.atf ; 2 uses
  %i.auy = shufflevector <2 x double> %i.auw, <2 x double> %i.aux, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x double> %i.auy, ptr %2, align 8, !tbaa !166
  store double %i.auu, ptr %i.aht, align 8, !tbaa !301
  %i.auz = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wu, double noundef %i.agz) ; 2 uses
  %i.ava = fcmp reassoc nsz arcp contract afn ogt double %i.auz, %.7.3.i.i.i.i
  br i1 %i.ava, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  store <2 x double> %i.auw, ptr %3, align 16, !tbaa !166
  store <2 x double> %i.aux, ptr %i.ahp, align 16, !tbaa !166
  store double %i.auu, ptr %i.ahr, align 16, !tbaa !301
  store <4 x double> %i.ata, ptr %i.ahu, align 8, !tbaa !166
  store <2 x double> %i.atb, ptr %i.ahy, align 8, !tbaa !166
  store double %i.atc, ptr %i.aic, align 8, !tbaa !305
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et, %bb.es
  %.7.4.i.i.i.i = phi nsz double [ %i.auz, %bb.eu ], [ %.7.3.i.i.i.i, %bb.et ], [ %.7.3.i.i.i.i, %bb.es ] ; 4 uses
  %i.avb = fcmp reassoc nsz arcp contract afn ogt double %.7.4.i.i.i.i, 0.000000e+00
  br i1 %i.avb, label %rect_improve.exit.thread.i.i.i, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.avc = load <4 x double>, ptr %3, align 16, !tbaa !166 ; 6 uses
  store <4 x double> %i.avc, ptr %2, align 8, !tbaa !166
  %i.avd = load <4 x double>, ptr %i.ahr, align 16, !tbaa !166 ; 6 uses
  store <4 x double> %i.avd, ptr %i.aht, align 8, !tbaa !166
  %i.ave = load <2 x double>, ptr %i.ahw, align 16, !tbaa !166 ; 6 uses
  %i.avf = load double, ptr %i.aic, align 8, !tbaa !305
  %i.avg = insertelement <2 x double> poison, double %i.avf, i64 0
  %i.avh = shufflevector <2 x double> %i.avg, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.avi = fmul reassoc nsz arcp contract afn <2 x double> %i.avh, <double f0x3FF921FB54442D18, double 5.000000e-01> ; 2 uses
  %i.avj = shufflevector <2 x double> %i.ave, <2 x double> %i.avi, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x double> %i.avj, ptr %i.ahx, align 8, !tbaa !166
  %i.avk = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wu, double noundef %i.agz) ; 2 uses
  %i.avl = fcmp reassoc nsz arcp contract afn ogt double %i.avk, %.7.4.i.i.i.i
  br i1 %i.avl, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  store <4 x double> %i.avc, ptr %3, align 16, !tbaa !166
  store <4 x double> %i.avd, ptr %i.ahr, align 16, !tbaa !166
  store <2 x double> %i.ave, ptr %i.ahw, align 16, !tbaa !166
  store <2 x double> %i.avi, ptr %i.aia, align 16, !tbaa !166
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %.9.i.i.i.i = phi nsz double [ %i.avk, %bb.ex ], [ %.7.4.i.i.i.i, %bb.ew ] ; 2 uses
  %i.avm = fmul reassoc nsz arcp contract afn <2 x double> %i.avh, <double f0x3FE921FB54442D18, double 2.500000e-01> ; 2 uses
  store <2 x double> %i.avm, ptr %i.aib, align 8, !tbaa !166
  %i.avn = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wu, double noundef %i.agz) ; 2 uses
  %i.avo = fcmp reassoc nsz arcp contract afn ogt double %i.avn, %.9.i.i.i.i
  br i1 %i.avo, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  store <4 x double> %i.avc, ptr %3, align 16, !tbaa !166
  store <4 x double> %i.avd, ptr %i.ahr, align 16, !tbaa !166
  store <2 x double> %i.ave, ptr %i.ahw, align 16, !tbaa !166
  store <2 x double> %i.avm, ptr %i.aia, align 16, !tbaa !166
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %.9.1.i.i.i.i = phi nsz double [ %i.avn, %bb.ez ], [ %.9.i.i.i.i, %bb.ey ] ; 2 uses
  %i.avp = fmul reassoc nsz arcp contract afn <2 x double> %i.avh, <double f0x3FD921FB54442D18, double 1.250000e-01> ; 2 uses
  store <2 x double> %i.avp, ptr %i.aib, align 8, !tbaa !166
  %i.avq = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wu, double noundef %i.agz) ; 2 uses
  %i.avr = fcmp reassoc nsz arcp contract afn ogt double %i.avq, %.9.1.i.i.i.i
  br i1 %i.avr, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  store <4 x double> %i.avc, ptr %3, align 16, !tbaa !166
  store <4 x double> %i.avd, ptr %i.ahr, align 16, !tbaa !166
  store <2 x double> %i.ave, ptr %i.ahw, align 16, !tbaa !166
  store <2 x double> %i.avp, ptr %i.aia, align 16, !tbaa !166
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %.9.2.i.i.i.i = phi nsz double [ %i.avq, %bb.fb ], [ %.9.1.i.i.i.i, %bb.fa ] ; 2 uses
  %i.avs = fmul reassoc nsz arcp contract afn <2 x double> %i.avh, <double f0x3FC921FB54442D18, double 6.250000e-02> ; 2 uses
  store <2 x double> %i.avs, ptr %i.aib, align 8, !tbaa !166
  %i.avt = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wu, double noundef %i.agz) ; 2 uses
  %i.avu = fcmp reassoc nsz arcp contract afn ogt double %i.avt, %.9.2.i.i.i.i
  br i1 %i.avu, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  store <4 x double> %i.avc, ptr %3, align 16, !tbaa !166
  store <4 x double> %i.avd, ptr %i.ahr, align 16, !tbaa !166
  store <2 x double> %i.ave, ptr %i.ahw, align 16, !tbaa !166
  store <2 x double> %i.avs, ptr %i.aia, align 16, !tbaa !166
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %.9.3.i.i.i.i = phi nsz double [ %i.avt, %bb.fd ], [ %.9.2.i.i.i.i, %bb.fc ] ; 2 uses
  %i.avv = fmul reassoc nsz arcp contract afn <2 x double> %i.avh, <double f0x3FB921FB54442D18, double 3.125000e-02> ; 2 uses
  store <2 x double> %i.avv, ptr %i.aib, align 8, !tbaa !166
  %i.avw = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wu, double noundef %i.agz) ; 2 uses
  %i.avx = fcmp reassoc nsz arcp contract afn ogt double %i.avw, %.9.3.i.i.i.i
  br i1 %i.avx, label %bb.ff, label %rect_improve.exit.i.i.i

bb.ff:                                            ; preds = %bb.fe
  store <4 x double> %i.avc, ptr %3, align 16, !tbaa !166
  store <4 x double> %i.avd, ptr %i.ahr, align 16, !tbaa !166
  store <2 x double> %i.ave, ptr %i.ahw, align 16, !tbaa !166
  store <2 x double> %i.avv, ptr %i.aia, align 16, !tbaa !166
  br label %rect_improve.exit.i.i.i

rect_improve.exit.thread.i.i.i:                   ; preds = %bb.ev, %bb.ef, %bb.dp, %bb.cz, %bb.co
  %.069.i.ph.i.i.i = phi double [ %.5.4.i.i.i.i, %bb.ef ], [ %.367.4.i.i.i.i, %bb.dp ], [ %.165.4.i.i.i.i, %bb.cz ], [ %i.aop, %bb.co ], [ %.7.4.i.i.i.i, %bb.ev ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %bb.fg

rect_improve.exit.i.i.i:                          ; preds = %bb.ff, %bb.fe
  %.069.i.i.i.i = phi nsz double [ %.9.3.i.i.i.i, %bb.fe ], [ %i.avw, %bb.ff ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %i.avy = fcmp reassoc nsz arcp contract afn ugt double %.069.i.i.i.i, 0.000000e+00
  br i1 %i.avy, label %bb.fg, label %bb.fo

bb.fg:                                            ; preds = %rect_improve.exit.i.i.i, %rect_improve.exit.thread.i.i.i
  %.069.i12.i.i.i = phi double [ %.069.i.ph.i.i.i, %rect_improve.exit.thread.i.i.i ], [ %.069.i.i.i.i, %rect_improve.exit.i.i.i ]
  %i.avz = load <4 x double>, ptr %3, align 16, !tbaa !166
  %i.awa = fmul reassoc nsz arcp contract afn <4 x double> %i.avz, splat (double f0x3FF0295FAD40A57F)
  %i.awb = fadd reassoc nsz arcp contract afn <4 x double> %i.awa, splat (double f0x3FE0295FAD40A57F) ; 5 uses
  store <4 x double> %i.awb, ptr %3, align 16, !tbaa !166
  %i.awc = load double, ptr %i.ahr, align 16, !tbaa !301
  %i.awd = fmul reassoc nsz arcp contract afn double %i.awc, f0x3FF0295FAD40A57F ; 2 uses
  store double %i.awd, ptr %i.ahr, align 16, !tbaa !301
  %i.awe = load double, ptr %i.aic, align 8, !tbaa !305
  %i.awf = load i32, ptr %i.lk, align 8, !tbaa !540
  %.not.i151.i.i.i = icmp eq i32 %i.awf, 7
  br i1 %.not.i151.i.i.i, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.186) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.fi:                                            ; preds = %bb.fg
  %i.awg = load i32, ptr %i.lh, align 8, !tbaa !538 ; 5 uses
  %i.awh = load i32, ptr %i.lj, align 4, !tbaa !539
  %i.awi = icmp eq i32 %i.awg, %i.awh
  %i.awj = load ptr, ptr %i.lm, align 8, !tbaa !541 ; 3 uses
  %i.awk = icmp eq ptr %i.awj, null               ; 2 uses
  br i1 %i.awi, label %bb.fj, label %enlarge_ntuple_list.exit.i.i.i.i

bb.fj:                                            ; preds = %bb.fi
  %i.awl = icmp eq i32 %i.awg, 0
  %or.cond.i152.i.i.i = or i1 %i.awl, %i.awk
  br i1 %or.cond.i152.i.i.i, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.131) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.fl:                                            ; preds = %bb.fj
  %i.awm = shl i32 %i.awg, 1                      ; 2 uses
  store i32 %i.awm, ptr %i.lj, align 4, !tbaa !539
  %i.awn = zext i32 %i.awm to i64
  %i.awo = mul nuw nsw i64 %i.awn, 56
  %i.awp = tail call ptr @realloc(ptr noundef nonnull %i.awj, i64 noundef %i.awo) #39 ; 3 uses
  store ptr %i.awp, ptr %i.lm, align 8, !tbaa !541
  %i.awq = icmp eq ptr %i.awp, null
  br i1 %i.awq, label %bb.fm, label %add_7tuple.exit.i.i.i

bb.fm:                                            ; preds = %bb.fl
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.120) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

enlarge_ntuple_list.exit.i.i.i.i:                 ; preds = %bb.fi
  br i1 %i.awk, label %bb.fn, label %add_7tuple.exit.i.i.i

bb.fn:                                            ; preds = %enlarge_ntuple_list.exit.i.i.i.i
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.185) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

add_7tuple.exit.i.i.i:                            ; preds = %enlarge_ntuple_list.exit.i.i.i.i, %bb.fl
  %i.awr = phi ptr [ %i.awj, %enlarge_ntuple_list.exit.i.i.i.i ], [ %i.awp, %bb.fl ] ; 7 uses
  %i.aws = mul i32 %i.awg, 7                      ; 7 uses
  %i.awt = zext i32 %i.aws to i64
  %i.awu = getelementptr inbounds nuw [8 x i8], ptr %i.awr, i64 %i.awt
  %i.awv = extractelement <4 x double> %i.awb, i64 0
  store double %i.awv, ptr %i.awu, align 8, !tbaa !166
  %i.aww = add i32 %i.aws, 1
  %i.awx = zext i32 %i.aww to i64
  %i.awy = getelementptr inbounds nuw [8 x i8], ptr %i.awr, i64 %i.awx
  %i.awz = extractelement <4 x double> %i.awb, i64 1
  store double %i.awz, ptr %i.awy, align 8, !tbaa !166
  %i.axa = add i32 %i.aws, 2
  %i.axb = zext i32 %i.axa to i64
  %i.axc = getelementptr inbounds nuw [8 x i8], ptr %i.awr, i64 %i.axb
  %i.axd = extractelement <4 x double> %i.awb, i64 2
  store double %i.axd, ptr %i.axc, align 8, !tbaa !166
  %i.axe = add i32 %i.aws, 3
  %i.axf = zext i32 %i.axe to i64
  %i.axg = getelementptr inbounds nuw [8 x i8], ptr %i.awr, i64 %i.axf
  %i.axh = extractelement <4 x double> %i.awb, i64 3
  store double %i.axh, ptr %i.axg, align 8, !tbaa !166
  %i.axi = add i32 %i.aws, 4
  %i.axj = zext i32 %i.axi to i64
  %i.axk = getelementptr inbounds nuw [8 x i8], ptr %i.awr, i64 %i.axj
  store double %i.awd, ptr %i.axk, align 8, !tbaa !166
  %i.axl = add i32 %i.aws, 5
  %i.axm = zext i32 %i.axl to i64
  %i.axn = getelementptr inbounds nuw [8 x i8], ptr %i.awr, i64 %i.axm
  store double %i.awe, ptr %i.axn, align 8, !tbaa !166
  %i.axo = add i32 %i.aws, 6
  %i.axp = zext i32 %i.axo to i64
  %i.axq = getelementptr inbounds nuw [8 x i8], ptr %i.awr, i64 %i.axp
  store double %.069.i12.i.i.i, ptr %i.axq, align 8, !tbaa !166
  %i.axr = add i32 %i.awg, 1
  store i32 %i.axr, ptr %i.lh, align 8, !tbaa !538
  br label %bb.fo

bb.fo:                                            ; preds = %add_7tuple.exit.i.i.i, %rect_improve.exit.i.i.i, %refine.exit.thread.i.i.i, %bb.cd, %bb.cc, %bb.cb
  %i.axs = getelementptr inbounds nuw i8, ptr %.0829.i.i.i, i64 8
  %i.axt = load ptr, ptr %i.axs, align 8, !tbaa !545 ; 2 uses
  %.not.i202.i.i = icmp eq ptr %i.axt, null
  br i1 %.not.i202.i.i, label %._crit_edge.i203.i.i, label %bb.cb

._crit_edge.i203.i.i:                             ; preds = %bb.fo, %.preheader.i200.i.i
  %i.axu = icmp eq ptr %i.xe, null
  br i1 %i.axu, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %._crit_edge.i203.i.i
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.139) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.fq:                                            ; preds = %._crit_edge.i203.i.i
  tail call void @free(ptr noundef nonnull %i.xe) #34
  tail call void @free(ptr noundef nonnull %i.wu) #34
  %i.axv = load ptr, ptr %i.wv, align 8, !tbaa !291 ; 2 uses
  %i.axw = icmp eq ptr %i.axv, null
  br i1 %i.axw, label %bb.fr, label %free_image_char.exit.i.i.i

bb.fr:                                            ; preds = %bb.fq
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.139) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

free_image_char.exit.i.i.i:                       ; preds = %bb.fq
  tail call void @free(ptr noundef nonnull %i.axv) #34
  tail call void @free(ptr noundef nonnull %i.wv) #34
  tail call void @free(ptr noundef nonnull %i.ahi) #34
  tail call void @free(ptr noundef nonnull %i.ahe) #34
  tail call void @free(ptr noundef %i.ahm) #34
  tail call void @free(ptr noundef %i.wy) #34
  %i.axx = load i32, ptr %i.lh, align 8, !tbaa !538 ; 3 uses
  %i.axy = icmp slt i32 %i.axx, 0
  br i1 %i.axy, label %bb.fs, label %LineSegmentDetection.exit.i.i

bb.fs:                                            ; preds = %free_image_char.exit.i.i.i
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.118) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

LineSegmentDetection.exit.i.i:                    ; preds = %free_image_char.exit.i.i.i
  %i.axz = load ptr, ptr %i.lm, align 8, !tbaa !541 ; 3 uses
  tail call void @free(ptr noundef nonnull %i.lh) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %.not206.i.i = icmp eq i32 %i.axx, 0
  br i1 %.not206.i.i, label %line_detect.exit.i, label %bb.ft

bb.ft:                                            ; preds = %LineSegmentDetection.exit.i.i
  %i.aya = zext nneg i32 %i.axx to i64            ; 2 uses
  %i.ayb = shl nuw nsw i64 %i.aya, 6
  %i.ayc = tail call noalias ptr @malloc(i64 noundef %i.ayb) #33 ; 3 uses
  %i.ayd = icmp eq ptr %i.ayc, null
  br i1 %i.ayd, label %line_detect.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ft
  %i.aye = shufflevector <4 x i32> %i.y, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.ayf = add nsw <2 x i32> %i.aye, splat (i32 -3)
  %i.ayg = sitofp <2 x i32> %i.ayf to <2 x float> ; 2 uses
  %i.ayh = shufflevector <4 x i32> %i.y, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.ayi = sitofp <2 x i32> %i.ayh to <2 x float> ; 2 uses
  %i.ayj = fpext reassoc nsz arcp contract afn float %i.ac to double
  %i.ayk = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ayl = shufflevector <2 x float> %i.ayk, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aym = extractelement <2 x float> %i.ayg, i64 0
  %i.ayn = extractelement <2 x float> %i.ayg, i64 1
  %i.ayo = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.ayl
  %i.ayp = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.ayl
  %i.ayq = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.ayj
  br label %bb.fu

bb.fu:                                            ; preds = %bb.gd, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.gd ] ; 2 uses
  %.0163218.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %bb.gd ] ; 6 uses
  %.0164217.i.i = phi float [ 0.000000e+00, %.lr.ph.i.i ], [ %.2166.i.i, %bb.gd ] ; 7 uses
  %.0167216.i.i = phi float [ 0.000000e+00, %.lr.ph.i.i ], [ %.2169.i.i, %bb.gd ] ; 7 uses
  %.0171215.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.2173.i.i, %bb.gd ] ; 7 uses
  %.0175214.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.2177.i.i, %bb.gd ] ; 7 uses
  %.idx.i.i = mul nuw nsw i64 %indvars.iv.i.i, 56
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.axz, i64 %.idx.i.i ; 4 uses
  %i.ays = load <2 x double>, ptr %i.ayr, align 8, !tbaa !166
  %i.ayt = fptrunc <2 x double> %i.ays to <2 x float> ; 4 uses
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.ayr, i64 16
  %i.ayv = load <2 x double>, ptr %i.ayu, align 8, !tbaa !166
  %i.ayw = fptrunc <2 x double> %i.ayv to <2 x float> ; 4 uses
  %i.ayx = extractelement <2 x float> %i.ayt, i64 0 ; 2 uses
  %i.ayy = extractelement <2 x float> %i.ayw, i64 0 ; 2 uses
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <2 x float> %i.ayt, %i.ayw
  %i.ayz = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.aza = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ayz)
  %i.azb = fcmp reassoc nsz arcp contract afn olt float %i.aza, 1.000000e+00 ; 2 uses
  %i.azc = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ayx, float %i.ayy)
  %i.azd = fcmp reassoc nsz arcp contract afn olt float %i.azc, 2.000000e+00
  %or.cond188.i.i = select i1 %i.azb, i1 %i.azd, i1 false
  br i1 %or.cond188.i.i, label %bb.gd, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.aze = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ayx, float %i.ayy)
  %i.azf = fcmp reassoc nsz arcp contract afn ogt float %i.aze, %i.aym
  %or.cond225.i.i = select i1 %i.azb, i1 %i.azf, i1 false
  br i1 %or.cond225.i.i, label %bb.gd, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.azg = extractelement <2 x float> %i.ayt, i64 1 ; 3 uses
  %i.azh = extractelement <2 x float> %i.ayw, i64 1 ; 3 uses
  %i.azi = fsub reassoc nsz arcp contract afn float %i.azg, %i.azh
  %i.azj = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.azi)
  %i.azk = fcmp reassoc nsz arcp contract afn olt float %i.azj, 1.000000e+00 ; 2 uses
  %i.azl = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.azg, float %i.azh)
  %i.azm = fcmp reassoc nsz arcp contract afn olt float %i.azl, 2.000000e+00
  %or.cond190.i.i = select i1 %i.azk, i1 %i.azm, i1 false
  br i1 %or.cond190.i.i, label %bb.gd, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.azn = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.azg, float %i.azh)
  %i.azo = fcmp reassoc nsz arcp contract afn ogt float %i.azn, %i.ayn
  %or.cond227.i.i = select i1 %i.azk, i1 %i.azo, i1 false
  br i1 %or.cond227.i.i, label %bb.gd, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.azp = fadd reassoc nsz arcp contract afn <2 x float> %i.ayt, %i.ayi
  %i.azq = sext i32 %.0163218.i.i to i64
  %i.azr = getelementptr inbounds [64 x i8], ptr %i.ayc, i64 %i.azq ; 11 uses
  %i.azs = fmul reassoc nsz arcp contract afn <2 x float> %i.azp, %i.ayo ; 4 uses
  store <2 x float> %i.azs, ptr %i.azr, align 16, !tbaa !15
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azr, i64 8
  store float 1.000000e+00, ptr %i.azt, align 8, !tbaa !15
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azr, i64 12
  %i.azv = fadd reassoc nsz arcp contract afn <2 x float> %i.ayw, %i.ayi
  %i.azw = fmul reassoc nsz arcp contract afn <2 x float> %i.azv, %i.ayp ; 4 uses
  store <2 x float> %i.azw, ptr %i.azu, align 4, !tbaa !15
  %i.azx = getelementptr inbounds nuw i8, ptr %i.azr, i64 20
  store float 1.000000e+00, ptr %i.azx, align 4, !tbaa !15
  %i.azy = getelementptr inbounds nuw i8, ptr %i.azr, i64 48
  %i.azz = extractelement <2 x float> %i.azs, i64 1 ; 3 uses
  %i.baa = extractelement <2 x float> %i.azw, i64 1 ; 3 uses
  %i.bab = fsub reassoc nsz arcp contract afn float %i.azz, %i.baa ; 3 uses
  %i.bac = extractelement <2 x float> %i.azs, i64 0
  %i.bad = extractelement <2 x float> %i.azw, i64 0
  %foldExtExtBinop223 = fsub reassoc nsz arcp contract afn <2 x float> %i.azw, %i.azs ; 3 uses
  %i.bae = extractelement <2 x float> %foldExtExtBinop223, i64 0 ; 2 uses
  %i.baf = fmul reassoc nsz arcp contract afn float %i.baa, %i.bac
  %i.bag = fmul reassoc nsz arcp contract afn float %i.bad, %i.azz
  %i.bah = fsub reassoc nsz arcp contract afn float %i.baf, %i.bag ; 3 uses
  %i.bai = fmul reassoc nsz arcp contract afn float %i.bab, %i.bab
  %foldExtExtBinop225 = fmul reassoc nsz arcp contract afn <2 x float> %foldExtExtBinop223, %foldExtExtBinop223
  %i.baj = extractelement <2 x float> %foldExtExtBinop225, i64 0 ; 2 uses
  %i.bak = fadd reassoc nsz arcp contract afn float %i.bai, %i.baj
  %i.bal = fmul reassoc nsz arcp contract afn float %i.bah, %i.bah
  %i.bam = fadd reassoc nsz arcp contract afn float %i.bak, %i.bal ; 2 uses
  %i.ban = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.bam)
  %i.bao = fcmp reassoc nsz arcp contract afn ogt float %i.bam, 0.000000e+00
  %i.bap = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ban
  %i.baq = select reassoc nsz arcp contract afn i1 %i.bao, float %i.bap, float 1.000000e+00 ; 3 uses
  %i.bar = fmul reassoc nsz arcp contract afn float %i.baq, %i.bab ; 2 uses
  %i.bas = fmul reassoc nsz arcp contract afn float %i.baq, %i.bae ; 2 uses
  %i.bat = getelementptr inbounds nuw i8, ptr %i.azr, i64 52
  %i.bau = fmul reassoc nsz arcp contract afn float %i.baq, %i.bah
  %i.bav = getelementptr inbounds nuw i8, ptr %i.azr, i64 56
  %i.baw = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.bar, float noundef %i.bas) #35 ; 2 uses
  %i.bax = fcmp reassoc nsz arcp contract afn ogt float %i.baw, 0.000000e+00
  %i.bay = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.baw
  %i.baz = select reassoc nsz arcp contract afn i1 %i.bax, float %i.bay, float 1.000000e+00 ; 3 uses
  %i.bba = fmul reassoc nsz arcp contract afn float %i.baz, %i.bar
  store float %i.bba, ptr %i.azy, align 16, !tbaa !15
  %i.bbb = fmul reassoc nsz arcp contract afn float %i.baz, %i.bas
  store float %i.bbb, ptr %i.bat, align 4, !tbaa !15
  %i.bbc = fmul reassoc nsz arcp contract afn float %i.bau, %i.baz
  store float %i.bbc, ptr %i.bav, align 8, !tbaa !15
  %i.bbd = fsub reassoc nsz arcp contract afn float %i.baa, %i.azz ; 3 uses
  %i.bbe = fmul reassoc nsz arcp contract afn float %i.bbd, %i.bbd
  %i.bbf = fadd reassoc nsz arcp contract afn float %i.bbe, %i.baj
  %i.bbg = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.bbf) ; 3 uses
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.azr, i64 24
  store float %i.bbg, ptr %i.bbh, align 8, !tbaa !188
  %i.bbi = getelementptr inbounds nuw i8, ptr %i.ayr, i64 32
  %i.bbj = load double, ptr %i.bbi, align 8, !tbaa !166
  %i.bbk = fmul reassoc nsz arcp contract afn double %i.bbj, %i.ayq
  %i.bbl = fptrunc reassoc nsz arcp contract afn double %i.bbk to float ; 2 uses
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.azr, i64 28
  store float %i.bbl, ptr %i.bbm, align 4, !tbaa !548
  %i.bbn = fmul reassoc nsz arcp contract afn float %i.bbg, %i.bbl
  %i.bbo = fpext reassoc nsz arcp contract afn float %i.bbn to double
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.ayr, i64 40
  %i.bbq = load double, ptr %i.bbp, align 8, !tbaa !166
  %i.bbr = fmul reassoc nsz arcp contract afn double %i.bbq, %i.bbo
  %i.bbs = fptrunc reassoc nsz arcp contract afn double %i.bbr to float ; 3 uses
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.azr, i64 32
  store float %i.bbs, ptr %i.bbt, align 16, !tbaa !306
  %i.bbu = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.bbd, float %i.bae)
  %i.bbv = fmul reassoc nsz arcp contract afn float %i.bbu, f0x42652EE0
  %i.bbw = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bbv)
end_hunk_1
