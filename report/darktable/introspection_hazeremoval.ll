inline.NumInlined: 51
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@process:bb.a
  %.0117147.i.unr = phi i64 [ %.0110.lcssa.i, %.lr.ph149.i.preheader ], [ %i.ie, %.lr.ph149.i.prol ]
  %i.if = icmp ult i64 %i.hz, 3
  br i1 %i.if, label %.loopexit139.i, label %.lr.ph149.i

.lr.ph149.i:                                      ; preds = %.lr.ph149.i.prol.loopexit, %.lr.ph149.i
  %.0117147.i = phi i64 [ %i.iz, %.lr.ph149.i ], [ %.0117147.i.unr, %.lr.ph149.i.prol.loopexit ] ; 6 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %.0117147.i ; 2 uses
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !57
  %.neg.i = sub i64 %.0110.lcssa.i, %.0117147.i
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %.neg.i
  %i.ii = getelementptr i8, ptr %gep.i, i64 -4    ; 2 uses
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !57
  store float %i.ij, ptr %i.ig, align 4, !tbaa !57
  store float %i.ih, ptr %i.ii, align 4, !tbaa !57
  %i.ik = add nuw i64 %.0117147.i, 1              ; 2 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.ik ; 2 uses
  %i.im = load float, ptr %i.il, align 4, !tbaa !57
  %.neg.i.1 = sub i64 %.0110.lcssa.i, %i.ik
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %.neg.i.1
  %i.in = getelementptr i8, ptr %gep.i.1, i64 -4  ; 2 uses
  %i.io = load float, ptr %i.in, align 4, !tbaa !57
  store float %i.io, ptr %i.il, align 4, !tbaa !57
  store float %i.im, ptr %i.in, align 4, !tbaa !57
  %i.ip = add nuw i64 %.0117147.i, 2              ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.ip ; 2 uses
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !57
  %.neg.i.2 = sub i64 %.0110.lcssa.i, %i.ip
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %.neg.i.2
  %i.is = getelementptr i8, ptr %gep.i.2, i64 -4  ; 2 uses
  %i.it = load float, ptr %i.is, align 4, !tbaa !57
  store float %i.it, ptr %i.iq, align 4, !tbaa !57
  store float %i.ir, ptr %i.is, align 4, !tbaa !57
  %i.iu = add nuw i64 %.0117147.i, 3              ; 2 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.iu ; 2 uses
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !57
  %.neg.i.3 = sub i64 %.0110.lcssa.i, %i.iu
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %.neg.i.3
  %i.ix = getelementptr i8, ptr %gep.i.3, i64 -4  ; 2 uses
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !57
  store float %i.iy, ptr %i.iv, align 4, !tbaa !57
  store float %i.iw, ptr %i.ix, align 4, !tbaa !57
  %i.iz = add nuw i64 %.0117147.i, 4              ; 2 uses
  %exitcond161.not.i.3 = icmp eq i64 %i.iz, %i.hx
  br i1 %exitcond161.not.i.3, label %.loopexit139.i, label %.lr.ph149.i

.loopexit139.i:                                   ; preds = %.lr.ph149.i.prol.loopexit, %.lr.ph149.i, %bb.u, %._crit_edge.i
  %i.ja = sub i64 %.0111.lcssa.i, %.0110.lcssa.i
  %i.jb = uitofp reassoc nsz arcp contract afn i64 %i.ja to float
  %i.jc = fmul reassoc nnan nsz arcp contract afn float %i.jb, f0x3F733333
  %i.jd = fptoui float %i.jc to i64
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %.0110.lcssa.i ; 2 uses
  %i.jf = getelementptr [4 x i8], ptr %i.je, i64 %i.jd ; 2 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %.0111.lcssa.i
  tail call void @_quick_select(ptr noundef %i.je, ptr noundef %i.jf, ptr noundef %i.jg, i32 noundef %i.am)
  %i.jh = load float, ptr %i.jf, align 4, !tbaa !57 ; 3 uses
  tail call void @free(ptr noundef %i.fg) #21
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph154.i.preheader

.lr.ph154.i.preheader:                            ; preds = %.loopexit139.i
  %xtraiter245 = and i64 %i.n, 1
  %i.ji = icmp eq i64 %i.n, 1
  br i1 %i.ji, label %.lr.ph154.i.epil.preheader, label %.lr.ph154.i.preheader.new

.lr.ph154.i.preheader.new:                        ; preds = %.lr.ph154.i.preheader
  %unroll_iter251 = and i64 %i.n, -2
  br label %.lr.ph154.i

._crit_edge155.i.unr-lcssa:                       ; preds = %bb.y
  %lcmp.mod246.not = icmp eq i64 %xtraiter245, 0
  br i1 %lcmp.mod246.not, label %._crit_edge155.i, label %.lr.ph154.i.epil.preheader

.lr.ph154.i.epil.preheader:                       ; preds = %._crit_edge155.i.unr-lcssa, %.lr.ph154.i.preheader
  %.sroa.0.1.i.epil.init = phi float [ 0.000000e+00, %.lr.ph154.i.preheader ], [ %.sroa.0.2.i.1, %._crit_edge155.i.unr-lcssa ] ; 3 uses
  %.0109152.i.epil.init = phi i64 [ 0, %.lr.ph154.i.preheader ], [ %i.ll, %._crit_edge155.i.unr-lcssa ] ; 2 uses
  %.0113151.i.epil.init = phi i64 [ 0, %.lr.ph154.i.preheader ], [ %.1114.i.1, %._crit_edge155.i.unr-lcssa ] ; 3 uses
  %.epil.init = phi <2 x float> [ zeroinitializer, %.lr.ph154.i.preheader ], [ %i.lk, %._crit_edge155.i.unr-lcssa ] ; 3 uses
  %lcmp.mod250 = trunc i64 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod250)
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %.0109152.i.epil.init
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !57
  %i.jl = fcmp reassoc nsz arcp contract afn ult float %i.jk, %i.fo
  br i1 %i.jl, label %._crit_edge155.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph154.i.epil.preheader
  %.idx.i.epil = shl i64 %.0109152.i.epil.init, 4
  %i.jm = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.epil ; 2 uses
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !57 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 4
  %i.jp = load <2 x float>, ptr %i.jo, align 4, !tbaa !57 ; 3 uses
  %i.jq = extractelement <2 x float> %i.jp, i64 0
  %i.jr = fadd reassoc nsz arcp contract afn float %i.jq, %i.jn
  %i.js = extractelement <2 x float> %i.jp, i64 1
  %i.jt = fadd reassoc nsz arcp contract afn float %i.jr, %i.js
  %i.ju = fcmp reassoc nsz arcp contract afn ult float %i.jt, %i.jh
  br i1 %i.ju, label %._crit_edge155.i, label %.preheader138.preheader.i.epil

.preheader138.preheader.i.epil:                   ; preds = %bb.v
  %i.jv = fadd reassoc nsz arcp contract afn float %i.jn, %.sroa.0.1.i.epil.init
  %i.jw = fadd reassoc nsz arcp contract afn <2 x float> %i.jp, %.epil.init
  %i.jx = add i64 %.0113151.i.epil.init, 1
  br label %._crit_edge155.i

._crit_edge155.i:                                 ; preds = %.lr.ph154.i.epil.preheader, %bb.v, %.preheader138.preheader.i.epil, %._crit_edge155.i.unr-lcssa
  %.sroa.0.2.i.lcssa = phi float [ %.sroa.0.2.i.1, %._crit_edge155.i.unr-lcssa ], [ %.sroa.0.1.i.epil.init, %.lr.ph154.i.epil.preheader ], [ %.sroa.0.1.i.epil.init, %bb.v ], [ %i.jv, %.preheader138.preheader.i.epil ] ; 2 uses
  %.1114.i.lcssa = phi i64 [ %.1114.i.1, %._crit_edge155.i.unr-lcssa ], [ %.0113151.i.epil.init, %.lr.ph154.i.epil.preheader ], [ %.0113151.i.epil.init, %bb.v ], [ %i.jx, %.preheader138.preheader.i.epil ] ; 2 uses
  %.lcssa = phi <2 x float> [ %i.lk, %._crit_edge155.i.unr-lcssa ], [ %.epil.init, %.lr.ph154.i.epil.preheader ], [ %.epil.init, %bb.v ], [ %i.jw, %.preheader138.preheader.i.epil ] ; 2 uses
  %.not121.i = icmp eq i64 %.1114.i.lcssa, 0
  br i1 %.not121.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge155.i
  %i.jy = uitofp reassoc nsz arcp contract afn i64 %.1114.i.lcssa to float ; 2 uses
  %i.jz = fdiv reassoc nsz arcp contract afn float %.sroa.0.2.i.lcssa, %i.jy
  %i.ka = insertelement <2 x float> poison, float %i.jy, i64 0
  %i.kb = shufflevector <2 x float> %i.ka, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kc = fdiv reassoc nsz arcp contract afn <2 x float> %.lcssa, %i.kb
  br label %.loopexit.i

.lr.ph154.i:                                      ; preds = %bb.y, %.lr.ph154.i.preheader.new
  %.sroa.0.1.i = phi nsz float [ 0.000000e+00, %.lr.ph154.i.preheader.new ], [ %.sroa.0.2.i.1, %bb.y ] ; 3 uses
  %.0109152.i = phi i64 [ 0, %.lr.ph154.i.preheader.new ], [ %i.ll, %bb.y ] ; 4 uses
  %.0113151.i = phi i64 [ 0, %.lr.ph154.i.preheader.new ], [ %.1114.i.1, %bb.y ] ; 3 uses
  %i.kd = phi <2 x float> [ zeroinitializer, %.lr.ph154.i.preheader.new ], [ %i.lk, %bb.y ] ; 3 uses
  %niter252 = phi i64 [ 0, %.lr.ph154.i.preheader.new ], [ %niter252.next.1, %bb.y ]
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %.0109152.i
  %i.kf = load float, ptr %i.ke, align 8, !tbaa !57
  %i.kg = fcmp reassoc nsz arcp contract afn ult float %i.kf, %i.fo
  br i1 %i.kg, label %.lr.ph154.i.1, label %bb.w

bb.w:                                             ; preds = %.lr.ph154.i
  %.idx.i = shl i64 %.0109152.i, 4
  %i.kh = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i ; 2 uses
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !57 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %i.kk = load <2 x float>, ptr %i.kj, align 4, !tbaa !57 ; 3 uses
  %i.kl = extractelement <2 x float> %i.kk, i64 0
  %i.km = fadd reassoc nsz arcp contract afn float %i.kl, %i.ki
  %i.kn = extractelement <2 x float> %i.kk, i64 1
  %i.ko = fadd reassoc nsz arcp contract afn float %i.km, %i.kn
  %i.kp = fcmp reassoc nsz arcp contract afn ult float %i.ko, %i.jh
  br i1 %i.kp, label %.lr.ph154.i.1, label %.preheader138.preheader.i

.preheader138.preheader.i:                        ; preds = %bb.w
  %i.kq = fadd reassoc nsz arcp contract afn float %i.ki, %.sroa.0.1.i
  %i.kr = fadd reassoc nsz arcp contract afn <2 x float> %i.kk, %i.kd
  %i.ks = add i64 %.0113151.i, 1
  br label %.lr.ph154.i.1

.lr.ph154.i.1:                                    ; preds = %.preheader138.preheader.i, %bb.w, %.lr.ph154.i
  %.sroa.0.2.i = phi nsz float [ %.sroa.0.1.i, %.lr.ph154.i ], [ %.sroa.0.1.i, %bb.w ], [ %i.kq, %.preheader138.preheader.i ] ; 3 uses
  %.1114.i = phi i64 [ %.0113151.i, %.lr.ph154.i ], [ %.0113151.i, %bb.w ], [ %i.ks, %.preheader138.preheader.i ] ; 3 uses
  %i.kt = phi <2 x float> [ %i.kd, %.lr.ph154.i ], [ %i.kd, %bb.w ], [ %i.kr, %.preheader138.preheader.i ] ; 3 uses
  %i.ku = or disjoint i64 %.0109152.i, 1          ; 2 uses
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.ku
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !57
  %i.kx = fcmp reassoc nsz arcp contract afn ult float %i.kw, %i.fo
  br i1 %i.kx, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph154.i.1
  %.idx.i.1 = shl i64 %i.ku, 4
  %i.ky = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.1 ; 2 uses
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !57 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 4
  %i.lb = load <2 x float>, ptr %i.la, align 4, !tbaa !57 ; 3 uses
  %i.lc = extractelement <2 x float> %i.lb, i64 0
  %i.ld = fadd reassoc nsz arcp contract afn float %i.lc, %i.kz
  %i.le = extractelement <2 x float> %i.lb, i64 1
  %i.lf = fadd reassoc nsz arcp contract afn float %i.ld, %i.le
  %i.lg = fcmp reassoc nsz arcp contract afn ult float %i.lf, %i.jh
  br i1 %i.lg, label %bb.y, label %.preheader138.preheader.i.1

.preheader138.preheader.i.1:                      ; preds = %bb.x
  %i.lh = fadd reassoc nsz arcp contract afn float %i.kz, %.sroa.0.2.i
  %i.li = fadd reassoc nsz arcp contract afn <2 x float> %i.lb, %i.kt
  %i.lj = add i64 %.1114.i, 1
  br label %bb.y

bb.y:                                             ; preds = %.preheader138.preheader.i.1, %bb.x, %.lr.ph154.i.1
  %.sroa.0.2.i.1 = phi nsz float [ %.sroa.0.2.i, %.lr.ph154.i.1 ], [ %.sroa.0.2.i, %bb.x ], [ %i.lh, %.preheader138.preheader.i.1 ] ; 3 uses
  %.1114.i.1 = phi i64 [ %.1114.i, %.lr.ph154.i.1 ], [ %.1114.i, %bb.x ], [ %i.lj, %.preheader138.preheader.i.1 ] ; 3 uses
  %i.lk = phi <2 x float> [ %i.kt, %.lr.ph154.i.1 ], [ %i.kt, %bb.x ], [ %i.li, %.preheader138.preheader.i.1 ] ; 3 uses
  %i.ll = add nuw i64 %.0109152.i, 2              ; 2 uses
  %niter252.next.1 = add i64 %niter252, 2         ; 2 uses
  %niter252.ncmp.1 = icmp eq i64 %niter252.next.1, %unroll_iter251
  br i1 %niter252.ncmp.1, label %._crit_edge155.i.unr-lcssa, label %.lr.ph154.i

.loopexit.i:                                      ; preds = %.preheader.i, %._crit_edge155.i, %.loopexit139.i
  %.sroa.0.3.i = phi nsz float [ %.sroa.0.2.i.lcssa, %._crit_edge155.i ], [ %i.jz, %.preheader.i ], [ 0.000000e+00, %.loopexit139.i ] ; 2 uses
  %i.lm = phi <2 x float> [ %.lcssa, %._crit_edge155.i ], [ %i.kc, %.preheader.i ], [ zeroinitializer, %.loopexit139.i ] ; 2 uses
  tail call void @free(ptr noundef %i.ck) #21
  %i.ln = fcmp reassoc nsz arcp contract afn ogt float %i.fo, 0.000000e+00
  br i1 %i.ln, label %bb.z, label %_ambient_light.exit

bb.z:                                             ; preds = %.loopexit.i
  %i.lo = tail call reassoc nnan nsz arcp contract afn float @llvm.log.f32(float %i.fo)
  %i.lp = fmul reassoc nnan nsz arcp contract afn float %i.lo, -1.125000e+00
  br label %_ambient_light.exit

_ambient_light.exit:                              ; preds = %bb.z, %.loopexit.i, %bb.m
  %.sroa.0156.1 = phi nsz float [ %.sroa.0156.0, %bb.m ], [ %.sroa.0.3.i, %.loopexit.i ], [ %.sroa.0.3.i, %bb.z ] ; 9 uses
  %.1 = phi nsz float [ %.0120, %bb.m ], [ f0x42317218, %.loopexit.i ], [ %i.lp, %bb.z ] ; 4 uses
  %i.lq = phi <2 x float> [ %i.cc, %bb.m ], [ %i.lm, %.loopexit.i ], [ %i.lm, %bb.z ] ; 14 uses
  br i1 %i.cb, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %_ambient_light.exit
  %i.lr = load ptr, ptr %i.an, align 8, !tbaa !84
  %i.ls = load ptr, ptr %i.as, align 8, !tbaa !65
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.lu = load i32, ptr %i.lt, align 16, !tbaa !142
  %i.lv = sitofp reassoc nsz arcp contract afn i32 %i.lu to double
  %i.lw = tail call i64 @dt_dev_hash_plus(ptr noundef %i.lr, ptr noundef %i.ls, double noundef %i.lv, i32 noundef 3) #21
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.ly = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.lx) #21 ; 0 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store float %.sroa.0156.1, ptr %i.lz, align 16, !tbaa !57
  %i.ma = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store <2 x float> %i.lq, ptr %i.ma, align 4, !tbaa !57
  %i.mb = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store float %.1, ptr %i.mb, align 16, !tbaa !55
  %i.mc = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 %i.lw, ptr %i.mc, align 8, !tbaa !58
  %i.md = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.lx) #21 ; 0 uses
  %i.me = fcmp reassoc nsz arcp contract afn ugt float %.1, 0.000000e+00
  br i1 %i.me, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.mf = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #21
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.mf) #21
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %_ambient_light.exit
  %i.mg = shl nsw i64 %i.l, 2
  %i.mh = mul i64 %i.mg, %i.m                     ; 2 uses
  %i.mi = tail call ptr @dt_alloc_aligned(i64 noundef %i.mh) #21 ; 11 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.mi, i64 64) ]
  %.not.i142 = icmp eq i64 %i.n, 0                ; 2 uses
  br i1 %.not.i142, label %_transition_map.exit, label %.lr.ph.i143.preheader

.lr.ph.i143.preheader:                            ; preds = %bb.ac
  %min.iters.check217 = icmp ult i64 %i.n, 9
  br i1 %min.iters.check217, label %.lr.ph.i143.preheader236, label %vector.memcheck210

vector.memcheck210:                               ; preds = %.lr.ph.i143.preheader
  %i.mj = mul nsw i64 %i.m, %i.l                  ; 2 uses
  %i.mk = shl i64 %i.mj, 2
  %scevgep211 = getelementptr i8, ptr %i.mi, i64 %i.mk
  %i.ml = shl i64 %i.mj, 4
  %i.mm = getelementptr i8, ptr %2, i64 %i.ml
  %scevgep212 = getelementptr i8, ptr %i.mm, i64 -4
  %bound0213 = icmp ult ptr %i.mi, %scevgep212
  %bound1214 = icmp ult ptr %2, %scevgep211
  %found.conflict215 = and i1 %bound0213, %bound1214
  br i1 %found.conflict215, label %.lr.ph.i143.preheader236, label %vector.ph218

vector.ph218:                                     ; preds = %vector.memcheck210
  %n.mod.vf219 = and i64 %i.n, 7                  ; 2 uses
  %i.mn = icmp eq i64 %n.mod.vf219, 0
  %i.mo = select i1 %i.mn, i64 8, i64 %n.mod.vf219
  %n.vec220 = sub i64 %i.n, %i.mo                 ; 2 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %.sroa.0156.1, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat222 = shufflevector <2 x float> %i.lq, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat224 = shufflevector <2 x float> %i.lq, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert225 = insertelement <8 x float> poison, float %i.ai, i64 0
  %broadcast.splat226 = shufflevector <8 x float> %broadcast.splatinsert225, <8 x float> poison, <8 x i32> zeroinitializer
  %i.mp = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  %i.mq = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat222
  %i.mr = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat224
  br label %vector.body227

vector.body227:                                   ; preds = %vector.body227, %vector.ph218
  %index228 = phi i64 [ 0, %vector.ph218 ], [ %index.next233, %vector.body227 ] ; 3 uses
  %i.ms = shl i64 %index228, 4
  %i.mt = getelementptr inbounds nuw i8, ptr %2, i64 %i.ms
  %wide.vec229 = load <32 x float>, ptr %i.mt, align 4, !tbaa !57, !alias.scope !155 ; 3 uses
  %strided.vec230 = shufflevector <32 x float> %wide.vec229, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec231 = shufflevector <32 x float> %wide.vec229, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec232 = shufflevector <32 x float> %wide.vec229, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.mu = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec230, %i.mp ; 2 uses
  %i.mv = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec231, %i.mq ; 2 uses
  %i.mw = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.mu, %i.mv
  %i.mx = select reassoc nsz arcp contract afn <8 x i1> %i.mw, <8 x float> %i.mu, <8 x float> %i.mv ; 2 uses
  %i.my = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec232, %i.mr ; 2 uses
  %i.mz = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.mx, %i.my
  %i.na = select reassoc nsz arcp contract afn <8 x i1> %i.mz, <8 x float> %i.mx, <8 x float> %i.my
  %i.nb = fmul reassoc nsz arcp contract afn <8 x float> %i.na, %broadcast.splat226
  %i.nc = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.nb
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %index228
  store <8 x float> %i.nc, ptr %i.nd, align 32, !tbaa !57, !alias.scope !158, !noalias !155
  %index.next233 = add nuw i64 %index228, 8       ; 2 uses
  %i.ne = icmp eq i64 %index.next233, %n.vec220
  br i1 %i.ne, label %.lr.ph.i143.preheader236, label %vector.body227, !llvm.loop !160

.lr.ph.i143.preheader236:                         ; preds = %vector.body227, %vector.memcheck210, %.lr.ph.i143.preheader
  %.037.i.ph = phi i64 [ 0, %vector.memcheck210 ], [ 0, %.lr.ph.i143.preheader ], [ %n.vec220, %vector.body227 ] ; 6 uses
  %i.nf = sub i64 %i.n, %.037.i.ph
  %.neg = add i64 %.037.i.ph, 1
  %xtraiter253 = and i64 %i.nf, 1
  %lcmp.mod254.not = icmp eq i64 %xtraiter253, 0
  br i1 %lcmp.mod254.not, label %.lr.ph.i143.prol.loopexit, label %.lr.ph.i143.prol

.lr.ph.i143.prol:                                 ; preds = %.lr.ph.i143.preheader236
  %.idx.i144.prol = shl i64 %.037.i.ph, 4
  %i.ng = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i144.prol ; 2 uses
  %i.nh = load <2 x float>, ptr %i.ng, align 4, !tbaa !57
  %i.ni = shufflevector <2 x float> %i.lq, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.nj = insertelement <2 x float> %i.ni, float %.sroa.0156.1, i64 0
  %i.nk = fdiv reassoc nsz arcp contract afn <2 x float> %i.nh, %i.nj ; 2 uses
  %i.nl = extractelement <2 x float> %i.nk, i64 0 ; 2 uses
  %i.nm = extractelement <2 x float> %i.nk, i64 1 ; 2 uses
  %i.nn = fcmp reassoc nsz arcp contract afn olt float %i.nl, %i.nm
  %..i.prol = select reassoc nsz arcp contract afn i1 %i.nn, float %i.nl, float %i.nm ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.np = load float, ptr %i.no, align 4, !tbaa !57
  %i.nq = extractelement <2 x float> %i.lq, i64 1
  %i.nr = fdiv reassoc nsz arcp contract afn float %i.np, %i.nq ; 2 uses
  %i.ns = fcmp reassoc nsz arcp contract afn olt float %..i.prol, %i.nr
  %i.nt = select reassoc nsz arcp contract afn i1 %i.ns, float %..i.prol, float %i.nr
  %i.nu = fmul reassoc nsz arcp contract afn float %i.nt, %i.ai
  %i.nv = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.nu
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %.037.i.ph
  store float %i.nv, ptr %i.nw, align 4, !tbaa !57
  %i.nx = add nuw i64 %.037.i.ph, 1
  br label %.lr.ph.i143.prol.loopexit

.lr.ph.i143.prol.loopexit:                        ; preds = %.lr.ph.i143.prol, %.lr.ph.i143.preheader236
  %.037.i.unr = phi i64 [ %.037.i.ph, %.lr.ph.i143.preheader236 ], [ %i.nx, %.lr.ph.i143.prol ]
  %i.ny = icmp eq i64 %i.n, %.neg
  br i1 %i.ny, label %_transition_map.exit, label %.lr.ph.i143.preheader236.new

.lr.ph.i143.preheader236.new:                     ; preds = %.lr.ph.i143.prol.loopexit
  %i.nz = shufflevector <2 x float> %i.lq, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.oa = insertelement <2 x float> %i.nz, float %.sroa.0156.1, i64 0
  %i.ob = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.oa
  %i.oc = extractelement <2 x float> %i.lq, i64 1
  %i.od = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.oc
  %i.oe = shufflevector <2 x float> %i.lq, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.of = insertelement <2 x float> %i.oe, float %.sroa.0156.1, i64 0
  %i.og = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.of
  %i.oh = extractelement <2 x float> %i.lq, i64 1
  %i.oi = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.oh
  br label %.lr.ph.i143

.lr.ph.i143:                                      ; preds = %.lr.ph.i143, %.lr.ph.i143.preheader236.new
  %.037.i = phi i64 [ %.037.i.unr, %.lr.ph.i143.preheader236.new ], [ %i.pm, %.lr.ph.i143 ] ; 4 uses
  %.idx.i144 = shl i64 %.037.i, 4
  %i.oj = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i144 ; 2 uses
  %i.ok = load <2 x float>, ptr %i.oj, align 4, !tbaa !57
  %i.ol = fmul reassoc nsz arcp contract afn <2 x float> %i.ok, %i.ob ; 2 uses
  %i.om = extractelement <2 x float> %i.ol, i64 0 ; 2 uses
  %i.on = extractelement <2 x float> %i.ol, i64 1 ; 2 uses
  %i.oo = fcmp reassoc nsz arcp contract afn olt float %i.om, %i.on
  %..i = select reassoc nsz arcp contract afn i1 %i.oo, float %i.om, float %i.on ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  %i.oq = load float, ptr %i.op, align 4, !tbaa !57
  %i.or = fmul reassoc nsz arcp contract afn float %i.oq, %i.od ; 2 uses
  %i.os = fcmp reassoc nsz arcp contract afn olt float %..i, %i.or
  %i.ot = select reassoc nsz arcp contract afn i1 %i.os, float %..i, float %i.or
  %i.ou = fmul reassoc nsz arcp contract afn float %i.ot, %i.ai
  %i.ov = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ou
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %.037.i
  store float %i.ov, ptr %i.ow, align 4, !tbaa !57
  %i.ox = add nuw i64 %.037.i, 1                  ; 2 uses
  %.idx.i144.1 = shl i64 %i.ox, 4
  %i.oy = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i144.1 ; 2 uses
  %i.oz = load <2 x float>, ptr %i.oy, align 4, !tbaa !57
  %i.pa = fmul reassoc nsz arcp contract afn <2 x float> %i.oz, %i.og ; 2 uses
  %i.pb = extractelement <2 x float> %i.pa, i64 0 ; 2 uses
  %i.pc = extractelement <2 x float> %i.pa, i64 1 ; 2 uses
  %i.pd = fcmp reassoc nsz arcp contract afn olt float %i.pb, %i.pc
  %..i.1 = select reassoc nsz arcp contract afn i1 %i.pd, float %i.pb, float %i.pc ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  %i.pf = load float, ptr %i.pe, align 4, !tbaa !57
  %i.pg = fmul reassoc nsz arcp contract afn float %i.pf, %i.oi ; 2 uses
  %i.ph = fcmp reassoc nsz arcp contract afn olt float %..i.1, %i.pg
  %i.pi = select reassoc nsz arcp contract afn i1 %i.ph, float %..i.1, float %i.pg
  %i.pj = fmul reassoc nsz arcp contract afn float %i.pi, %i.ai
  %i.pk = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.pj
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %i.ox
  store float %i.pk, ptr %i.pl, align 4, !tbaa !57
  %i.pm = add nuw i64 %.037.i, 2                  ; 2 uses
  %exitcond.not.i145.1 = icmp eq i64 %i.pm, %i.n
  br i1 %exitcond.not.i145.1, label %_transition_map.exit, label %.lr.ph.i143, !llvm.loop !161

_transition_map.exit:                             ; preds = %.lr.ph.i143.prol.loopexit, %.lr.ph.i143, %bb.ac
  %i.pn = sext i32 %i.ad to i64                   ; 2 uses
  tail call void @dt_box_max(ptr noundef %i.mi, i64 noundef %i.m, i64 noundef %i.l, i32 noundef 1, i64 noundef %i.pn) #21
  tail call void @dt_box_min(ptr noundef %i.mi, i64 noundef %i.m, i64 noundef %i.l, i32 noundef 1, i64 noundef %i.pn) #21
  %i.po = tail call ptr @dt_alloc_aligned(i64 noundef %i.mh) #21 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.po, i64 64) ]
  tail call void @guided_filter(ptr noundef %2, ptr noundef %i.mi, ptr noundef %i.po, i32 noundef %i.i, i32 noundef %i.k, i32 noundef 4, i32 noundef %i.ah, float noundef f0x3E21E89B, float noundef 1.000000e+00, float noundef f0xFF7FFFFF, float noundef f0x7F7FFFFF) #21
  %i.pp = fneg reassoc nsz arcp contract afn float %i.ak
  %i.pq = fmul reassoc nsz arcp contract afn float %.1, %i.pp
  %i.pr = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.pq) ; 3 uses
  %i.ps = fcmp reassoc nsz arcp contract afn ogt float %i.pr, 1.000000e+00
  br i1 %i.ps, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %_transition_map.exit
  %i.pt = fcmp reassoc nsz arcp contract afn olt float %i.pr, f0x3A800000
  br i1 %i.pt, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %_transition_map.exit
  %i.pu = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %_transition_map.exit ], [ %i.pr, %bb.ae ], [ f0x3A800000, %bb.ad ] ; 7 uses
  %i.pv = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !162
  %i.pw = and i32 %i.pv, 16777216
  %.not136.not = icmp eq i32 %i.pw, 0
  br i1 %.not136.not, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.px = load ptr, ptr %i.as, align 8, !tbaa !65
  %i.py = fpext reassoc nsz arcp contract afn float %i.pu to double
  %i.pz = fpext reassoc nsz arcp contract afn float %.1 to double
  %i.qa = fpext reassoc nsz arcp contract afn float %.sroa.0156.1 to double
  %6 = extractelement <2 x float> %i.lq, i64 0
  %7 = fpext reassoc nsz arcp contract afn float %6 to double
  %8 = extractelement <2 x float> %i.lq, i64 1
  %9 = fpext reassoc nsz arcp contract afn float %8 to double
  tail call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.18, ptr noundef %i.px, ptr noundef %0, i32 noundef -1, ptr noundef %4, ptr noundef %5, ptr noundef nonnull @.str.19, double noundef %i.py, double noundef %i.pz, double noundef %i.qa, double noundef %7, double noundef %9) #21
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  br i1 %.not.i142, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ah
  %xtraiter256 = and i64 %i.n, 1
  %i.qb = icmp eq i64 %i.n, 1
  br i1 %i.qb, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter259 = and i64 %i.n, -2
  %i.qc = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %.sroa.0156.1, i64 0
  %i.qd = shufflevector <2 x float> %i.lq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qe = shufflevector <4 x float> %i.qc, <4 x float> %i.qd, <4 x i32> <i32 0, i32 4, i32 5, i32 3> ; 2 uses
  %i.qf = insertelement <4 x float> %i.qe, float -0.000000e+00, i64 3
  %i.qg = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %.sroa.0156.1, i64 0
  %i.qh = shufflevector <2 x float> %i.lq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qi = shufflevector <4 x float> %i.qg, <4 x float> %i.qh, <4 x i32> <i32 0, i32 4, i32 5, i32 3> ; 2 uses
  %i.qj = insertelement <4 x float> %i.qi, float -0.000000e+00, i64 3
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod257.not = icmp eq i64 %xtraiter256, 0
  br i1 %lcmp.mod257.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0121190.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.rw, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod258 = trunc i64 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod258)
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.po, i64 %.0121190.epil.init
  %i.ql = load float, ptr %i.qk, align 4, !tbaa !57 ; 2 uses
  %i.qm = fcmp reassoc nsz arcp contract afn ogt float %i.ql, %i.pu
  %..epil = select reassoc nsz arcp contract afn i1 %i.qm, float %i.ql, float %i.pu
  %.idx137.epil = shl i64 %.0121190.epil.init, 4  ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %2, i64 %.idx137.epil
  %i.qo = load <4 x float>, ptr %i.qn, align 4, !tbaa !57
  %i.qp = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %.sroa.0156.1, i64 0
  %i.qq = shufflevector <2 x float> %i.lq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qr = shufflevector <4 x float> %i.qp, <4 x float> %i.qq, <4 x i32> <i32 0, i32 4, i32 5, i32 3> ; 2 uses
  %i.qs = fsub reassoc nsz arcp contract afn <4 x float> %i.qo, %i.qr
  %i.qt = insertelement <4 x float> poison, float %..epil, i64 0
  %i.qu = shufflevector <4 x float> %i.qt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qv = fdiv reassoc nsz arcp contract afn <4 x float> %i.qs, %i.qu
  %i.qw = insertelement <4 x float> %i.qr, float -0.000000e+00, i64 3
  %i.qx = fadd reassoc nsz arcp contract afn <4 x float> %i.qv, %i.qw
  %i.qy = getelementptr inbounds nuw i8, ptr %3, i64 %.idx137.epil
  store <4 x float> %i.qx, ptr %i.qy, align 16, !tbaa !163, !alias.scope !164, !nontemporal !167
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.ah
  tail call void @llvm.x86.sse.sfence()
  tail call void @free(ptr noundef %i.mi) #21
  tail call void @free(ptr noundef %i.po) #21
  br label %bb.ai

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0121190 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.rw, %.lr.ph ] ; 4 uses
  %niter260 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter260.next.1, %.lr.ph ]
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.po, i64 %.0121190
  %i.ra = load float, ptr %i.qz, align 8, !tbaa !57 ; 2 uses
  %i.rb = fcmp reassoc nsz arcp contract afn ogt float %i.ra, %i.pu
  %. = select reassoc nsz arcp contract afn i1 %i.rb, float %i.ra, float %i.pu
  %.idx137 = shl i64 %.0121190, 4                 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %2, i64 %.idx137
  %i.rd = load <4 x float>, ptr %i.rc, align 4, !tbaa !57
  %i.re = fsub reassoc nsz arcp contract afn <4 x float> %i.rd, %i.qe
  %i.rf = insertelement <4 x float> poison, float %., i64 0
  %i.rg = shufflevector <4 x float> %i.rf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rh = fdiv reassoc nsz arcp contract afn <4 x float> %i.re, %i.rg
  %i.ri = fadd reassoc nsz arcp contract afn <4 x float> %i.rh, %i.qf
  %i.rj = getelementptr inbounds nuw i8, ptr %3, i64 %.idx137
  store <4 x float> %i.ri, ptr %i.rj, align 16, !tbaa !163, !alias.scope !164, !nontemporal !167
  %i.rk = or disjoint i64 %.0121190, 1            ; 2 uses
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.po, i64 %i.rk
  %i.rm = load float, ptr %i.rl, align 4, !tbaa !57 ; 2 uses
  %i.rn = fcmp reassoc nsz arcp contract afn ogt float %i.rm, %i.pu
  %..1 = select reassoc nsz arcp contract afn i1 %i.rn, float %i.rm, float %i.pu
  %.idx137.1 = shl i64 %i.rk, 4                   ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %2, i64 %.idx137.1
  %i.rp = load <4 x float>, ptr %i.ro, align 4, !tbaa !57
  %i.rq = fsub reassoc nsz arcp contract afn <4 x float> %i.rp, %i.qi
  %i.rr = insertelement <4 x float> poison, float %..1, i64 0
  %i.rs = shufflevector <4 x float> %i.rr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rt = fdiv reassoc nsz arcp contract afn <4 x float> %i.rq, %i.rs
  %i.ru = fadd reassoc nsz arcp contract afn <4 x float> %i.rt, %i.qj
  %i.rv = getelementptr inbounds nuw i8, ptr %3, i64 %.idx137.1
  store <4 x float> %i.ru, ptr %i.rv, align 16, !tbaa !163, !alias.scope !164, !nontemporal !167
  %i.rw = add nuw i64 %.0121190, 2                ; 2 uses
  %niter260.next.1 = add i64 %niter260, 2         ; 2 uses
  %niter260.ncmp.1 = icmp eq i64 %niter260.next.1, %unroll_iter259
  br i1 %niter260.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

bb.ai:                                            ; preds = %bb.a, %._crit_edge
  ret void
}

declare i32 @dt_iop_have_required_input_format(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

declare i32 @dt_dev_sync_pixelpipe_hash(ptr noundef, ptr noundef, double noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_control_log(ptr noundef, ...) local_unnamed_addr #3

declare i64 @dt_dev_hash_plus(ptr noundef, ptr noundef, double noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_box_min(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare void @guided_filter(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #15

declare void @dt_print_pipe_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection_linear() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection_linear
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @introspection_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #17 {
bb.a:
  %i.a = load i32, ptr @introspection, align 8, !tbaa !168
  %i.b = icmp ne i32 %i.a, 8
  %i.c = icmp ne i32 %1, 8
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 56), align 8, !tbaa !163
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 144), align 16, !tbaa !163
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 232), align 8, !tbaa !163
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 320), align 16, !tbaa !163
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 408), align 8, !tbaa !163
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 496), align 16, !tbaa !163
  store ptr @introspection_init.f4, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 424), align 8, !tbaa !163
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.preheader
  %.06 = phi i32 [ 0, %.preheader.preheader ], [ 1, %bb.a ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @get_p(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #18 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.12) #24
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.14) #24
  %.not10 = icmp eq i32 %i.b, 0
  br i1 %.not10, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(19) @.str.20) #24
  %.not11 = icmp eq i32 %i.d, 0
  br i1 %.not11, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.21) #24
  %.not12 = icmp eq i32 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %spec.select = select i1 %.not12, ptr %i.g, ptr null
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a, %bb.e, %bb.c
  %.0 = phi ptr [ %0, %bb.a ], [ %spec.select, %bb.f ], [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define ptr @get_f(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.12) #21
end_hunk_0
