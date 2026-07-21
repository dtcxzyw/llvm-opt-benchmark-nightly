inline.NumInlined: 158
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 78
begin_hunk_0_@opj_dwt_decode_real:bb.a
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 9 uses
  %i.gn = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %index ; 4 uses
  %i.go = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %index ; 4 uses
  %i.gp = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %index ; 4 uses
  %i.gq = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %index ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 48
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 80
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 112
  %i.gv = load float, ptr %i.gr, align 4, !tbaa !62, !alias.scope !259, !noalias !228
  %i.gw = load float, ptr %i.gs, align 4, !tbaa !62, !alias.scope !259, !noalias !228
  %i.gx = load float, ptr %i.gt, align 4, !tbaa !62, !alias.scope !259, !noalias !228
  %i.gy = load float, ptr %i.gu, align 4, !tbaa !62, !alias.scope !259, !noalias !228
  %i.gz = insertelement <4 x float> poison, float %i.gv, i64 0
  %i.ha = insertelement <4 x float> %i.gz, float %i.gw, i64 1
  %i.hb = insertelement <4 x float> %i.ha, float %i.gx, i64 2
  %i.hc = insertelement <4 x float> %i.hb, float %i.gy, i64 3
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %index
  store <4 x float> %i.hc, ptr %i.hd, align 4, !tbaa !188, !alias.scope !262, !noalias !264
  %i.he = getelementptr inbounds nuw i8, ptr %i.gn, i64 20
  %i.hf = getelementptr inbounds nuw i8, ptr %i.go, i64 52
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gp, i64 84
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gq, i64 116
  %i.hi = load float, ptr %i.he, align 4, !tbaa !62, !alias.scope !259, !noalias !228
  %i.hj = load float, ptr %i.hf, align 4, !tbaa !62, !alias.scope !259, !noalias !228
  %i.hk = load float, ptr %i.hg, align 4, !tbaa !62, !alias.scope !259, !noalias !228
  %i.hl = load float, ptr %i.hh, align 4, !tbaa !62, !alias.scope !259, !noalias !228
  %i.hm = insertelement <4 x float> poison, float %i.hi, i64 0
  %i.hn = insertelement <4 x float> %i.hm, float %i.hj, i64 1
  %i.ho = insertelement <4 x float> %i.hn, float %i.hk, i64 2
  %i.hp = insertelement <4 x float> %i.ho, float %i.hl, i64 3
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %index
  store <4 x float> %i.hp, ptr %i.hq, align 4, !tbaa !188, !alias.scope !268, !noalias !269
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.hs = getelementptr inbounds nuw i8, ptr %i.go, i64 56
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gp, i64 88
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gq, i64 120
  %i.hv = load float, ptr %i.hr, align 4, !tbaa !62, !alias.scope !259, !noalias !228
  %i.hw = load float, ptr %i.hs, align 4, !tbaa !62, !alias.scope !259, !noalias !228
  %i.hx = load float, ptr %i.ht, align 4, !tbaa !62, !alias.scope !259, !noalias !228
  %i.hy = load float, ptr %i.hu, align 4, !tbaa !62, !alias.scope !259, !noalias !228
  %i.hz = insertelement <4 x float> poison, float %i.hv, i64 0
  %i.ia = insertelement <4 x float> %i.hz, float %i.hw, i64 1
  %i.ib = insertelement <4 x float> %i.ia, float %i.hx, i64 2
  %i.ic = insertelement <4 x float> %i.ib, float %i.hy, i64 3
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %index
  store <4 x float> %i.ic, ptr %i.id, align 4, !tbaa !188, !alias.scope !270, !noalias !271
  %i.ie = getelementptr inbounds nuw i8, ptr %i.gn, i64 28
  %i.if = getelementptr inbounds nuw i8, ptr %i.go, i64 60
  %i.ig = getelementptr inbounds nuw i8, ptr %i.gp, i64 92
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gq, i64 124
  %i.ii = load float, ptr %i.ie, align 4, !tbaa !62, !alias.scope !259, !noalias !228
  %i.ij = load float, ptr %i.if, align 4, !tbaa !62, !alias.scope !259, !noalias !228
  %i.ik = load float, ptr %i.ig, align 4, !tbaa !62, !alias.scope !259, !noalias !228
  %i.il = load float, ptr %i.ih, align 4, !tbaa !62, !alias.scope !259, !noalias !228
  %i.im = insertelement <4 x float> poison, float %i.ii, i64 0
  %i.in = insertelement <4 x float> %i.im, float %i.ij, i64 1
  %i.io = insertelement <4 x float> %i.in, float %i.ik, i64 2
  %i.ip = insertelement <4 x float> %i.io, float %i.il, i64 3
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %index
  store <4 x float> %i.ip, ptr %i.iq, align 4, !tbaa !188, !alias.scope !272, !noalias !273
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ir = icmp eq i64 %index.next, %n.vec
  br i1 %i.ir, label %scalar.ph.preheader, label %vector.body, !llvm.loop !274

scalar.ph188:                                     ; preds = %scalar.ph188.preheader, %scalar.ph188
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph188 ], [ %indvars.iv.i.ph, %scalar.ph188.preheader ] ; 5 uses
  %i.is = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %indvars.iv.i ; 4 uses
  %i.it = load float, ptr %i.is, align 4, !tbaa !62, !noalias !228
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %.0235323.i, i64 %indvars.iv.i ; 2 uses
  store float %i.it, ptr %i.iu, align 4, !tbaa !188, !noalias !228
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 4
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !62, !noalias !228
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.bu
  store float %i.iw, ptr %i.ix, align 4, !tbaa !188, !noalias !228
  %i.iy = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !62, !noalias !228
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv.i
  store float %i.iz, ptr %i.ja, align 4, !tbaa !188, !noalias !228
  %i.jb = getelementptr inbounds nuw i8, ptr %i.is, i64 12
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !62, !noalias !228
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv.i
  store float %i.jc, ptr %i.jd, align 4, !tbaa !188, !noalias !228
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond366.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond366.not.i, label %.lr.ph322.i, label %scalar.ph188, !llvm.loop !275

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv367.i = phi i64 [ %indvars.iv.next368.i, %scalar.ph ], [ %indvars.iv367.i.ph, %scalar.ph.preheader ] ; 6 uses
  %i.je = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %indvars.iv367.i ; 4 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !62, !noalias !228
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv367.i
  store float %i.jg, ptr %i.jh, align 4, !tbaa !188, !noalias !228
  %i.ji = getelementptr inbounds nuw i8, ptr %i.je, i64 20
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !62, !noalias !228
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv367.i
  store float %i.jj, ptr %i.jk, align 4, !tbaa !188, !noalias !228
  %i.jl = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !62, !noalias !228
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv367.i
  store float %i.jm, ptr %i.jn, align 4, !tbaa !188, !noalias !228
  %i.jo = getelementptr inbounds nuw i8, ptr %i.je, i64 28
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !62, !noalias !228
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv367.i
  store float %i.jp, ptr %i.jq, align 4, !tbaa !188, !noalias !228
  %indvars.iv.next368.i = add nuw nsw i64 %indvars.iv367.i, 1 ; 2 uses
  %exitcond371.not.i = icmp eq i64 %indvars.iv.next368.i, %wide.trip.count.i
  br i1 %exitcond371.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !276

._crit_edge.i:                                    ; preds = %scalar.ph, %bb.e
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %.0235323.i, i64 %i.bw ; 2 uses
  %i.js = add i32 %.0229324.i, 8                  ; 3 uses
  %i.jt = or disjoint i32 %i.js, 7
  %i.ju = icmp ult i32 %i.jt, %i.dh
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ju, label %bb.e, label %.loopexit311.i, !llvm.loop !277

bb.f:                                             ; preds = %bb.d
  %i.jv = lshr i32 %i.dh, 3
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.jv, i32 %i.y) ; 2 uses
  %i.jw = udiv i32 %i.dh, %spec.select.i
  %i.jx = and i32 %i.jw, -8                       ; 2 uses
  %i.jy = and i32 %i.dh, -8                       ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %bb.f
  %.1230319.i = phi i32 [ 0, %bb.f ], [ %i.kl, %bb.k ] ; 2 uses
  %.1236318.i = phi ptr [ %i.bk, %bb.f ], [ %i.kt, %bb.k ] ; 2 uses
  %i.jz = tail call ptr @opj_malloc(i64 noundef 64) #15, !noalias !228 ; 15 uses
  %.not267.i = icmp eq ptr %i.jz, null
  br i1 %.not267.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @opj_thread_pool_wait_completion(ptr noundef %i.d, i32 noundef 0) #15, !noalias !228
  br label %.critedge.sink.split.i

bb.i:                                             ; preds = %bb.g
  %i.ka = tail call ptr @opj_aligned_malloc(i64 noundef %i.bh) #15, !noalias !228 ; 2 uses
  store ptr %i.ka, ptr %i.jz, align 8, !tbaa !278, !noalias !228
  %.not268.i = icmp eq ptr %i.ka, null
  br i1 %.not268.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @opj_thread_pool_wait_completion(ptr noundef %i.d, i32 noundef 0) #15, !noalias !228
  tail call void @opj_free(ptr noundef nonnull %i.jz) #15, !noalias !228
  br label %.critedge.sink.split.i

bb.k:                                             ; preds = %bb.i
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  store i32 %i.di, ptr %i.kb, align 8, !tbaa !281, !noalias !228
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 12
  store i32 %.0225345.i, ptr %i.kc, align 4, !tbaa !282, !noalias !228
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  store i32 %i.dj, ptr %i.kd, align 8, !tbaa !283, !noalias !228
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jz, i64 20
  store i32 0, ptr %i.ke, align 4, !tbaa !284, !noalias !228
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jz, i64 24
  store i32 %.0225345.i, ptr %i.kf, align 8, !tbaa !285, !noalias !228
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jz, i64 28
  store i32 0, ptr %i.kg, align 4, !tbaa !286, !noalias !228
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jz, i64 32
  store i32 %i.di, ptr %i.kh, align 8, !tbaa !287, !noalias !228
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jz, i64 40
  store i32 %i.dc, ptr %i.ki, align 8, !tbaa !288, !noalias !228
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jz, i64 44
  store i32 %i.x, ptr %i.kj, align 4, !tbaa !289, !noalias !228
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jz, i64 48
  store ptr %.1236318.i, ptr %i.kk, align 8, !tbaa !290, !noalias !228
  %i.kl = add nuw nsw i32 %.1230319.i, 1          ; 2 uses
  %i.km = icmp eq i32 %i.kl, %spec.select.i       ; 2 uses
  %i.kn = mul i32 %.1230319.i, %i.jx
  %i.ko = sub i32 %i.jy, %i.kn
  %i.kp = select i1 %i.km, i32 %i.ko, i32 %i.jx   ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jz, i64 56
  store i32 %i.kp, ptr %i.kq, align 8, !tbaa !291, !noalias !228
  %i.kr = mul i32 %i.kp, %i.x
  %i.ks = zext i32 %i.kr to i64
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %.1236318.i, i64 %i.ks ; 2 uses
  %i.ku = tail call i32 @opj_thread_pool_submit_job(ptr noundef %i.d, ptr noundef nonnull @opj_dwt97_decode_h_func, ptr noundef nonnull %i.jz) #15, !noalias !228 ; 0 uses
  br i1 %i.km, label %bb.l, label %bb.g, !llvm.loop !292

bb.l:                                             ; preds = %bb.k
  tail call void @opj_thread_pool_wait_completion(ptr noundef %i.d, i32 noundef 0) #15, !noalias !228
  br label %.loopexit311.i

.loopexit311.i:                                   ; preds = %._crit_edge.i, %bb.l, %.preheader310.i
  %.4239.i = phi ptr [ %i.kt, %bb.l ], [ %i.bk, %.preheader310.i ], [ %i.jr, %._crit_edge.i ] ; 2 uses
  %.3232.i = phi i32 [ %i.jy, %bb.l ], [ 0, %.preheader310.i ], [ %i.js, %._crit_edge.i ] ; 2 uses
  %i.kv = icmp ult i32 %.3232.i, %i.dh
  br i1 %i.kv, label %bb.m, label %.loopexit309.i

bb.m:                                             ; preds = %.loopexit311.i
  %i.kw = sub nuw i32 %i.dh, %.3232.i             ; 3 uses
  call fastcc void @opj_v8dwt_interleave_h(ptr noundef nonnull %5, ptr noundef %.4239.i, i32 noundef %i.x, i32 noundef %i.kw), !noalias !228
  call fastcc void @opj_v8dwt_decode(ptr noundef nonnull %5), !noalias !228
  %.not353.i = icmp eq i32 %i.dc, 0
  br i1 %.not353.i, label %.loopexit309.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.m
  %umax375.i = tail call i32 @llvm.umax.i32(i32 %i.kw, i32 1)
  %wide.trip.count381.i = zext i32 %i.dc to i64
  %wide.trip.count376.i = zext i32 %umax375.i to i64 ; 2 uses
  %xtraiter211 = and i64 %wide.trip.count376.i, 3 ; 3 uses
  %i.kx = icmp ult i32 %i.kw, 4
  %unroll_iter214 = and i64 %wide.trip.count376.i, 4294967292
  %lcmp.mod212.not = icmp eq i64 %xtraiter211, 0
  %lcmp.mod213 = icmp ne i64 %xtraiter211, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge329.i, %.preheader.preheader.i
  %indvars.iv378.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next379.i, %._crit_edge329.i ] ; 3 uses
  %i.ky = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %indvars.iv378.i ; 5 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %.4239.i, i64 %indvars.iv378.i ; 5 uses
  br i1 %i.kx, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %indvars.iv372.i = phi i64 [ %indvars.iv.next373.i.3, %.preheader.i.new ], [ 0, %.preheader.i ] ; 6 uses
  %niter215 = phi i64 [ %niter215.next.3, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv372.i
  %i.la = load float, ptr %i.kz, align 4, !tbaa !62, !noalias !228
  %i.lb = mul nuw i64 %indvars.iv372.i, %i.bu
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.lb
  store float %i.la, ptr %gep.i, align 4, !tbaa !188, !noalias !228
  %indvars.iv.next373.i = or disjoint i64 %indvars.iv372.i, 1 ; 2 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.next373.i
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !62, !noalias !228
  %i.le = mul nuw i64 %indvars.iv.next373.i, %i.bu
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.le
  store float %i.ld, ptr %gep.i.1, align 4, !tbaa !188, !noalias !228
  %indvars.iv.next373.i.1 = or disjoint i64 %indvars.iv372.i, 2 ; 2 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.next373.i.1
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !62, !noalias !228
  %i.lh = mul nuw i64 %indvars.iv.next373.i.1, %i.bu
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.lh
  store float %i.lg, ptr %gep.i.2, align 4, !tbaa !188, !noalias !228
  %indvars.iv.next373.i.2 = or disjoint i64 %indvars.iv372.i, 3 ; 2 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.next373.i.2
  %i.lj = load float, ptr %i.li, align 4, !tbaa !62, !noalias !228
  %i.lk = mul nuw i64 %indvars.iv.next373.i.2, %i.bu
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.lk
  store float %i.lj, ptr %gep.i.3, align 4, !tbaa !188, !noalias !228
  %indvars.iv.next373.i.3 = add nuw nsw i64 %indvars.iv372.i, 4 ; 2 uses
  %niter215.next.3 = add i64 %niter215, 4         ; 2 uses
  %niter215.ncmp.3 = icmp eq i64 %niter215.next.3, %unroll_iter214
  br i1 %niter215.ncmp.3, label %._crit_edge329.i.unr-lcssa, label %.preheader.i.new, !llvm.loop !293

._crit_edge329.i.unr-lcssa:                       ; preds = %.preheader.i.new
  br i1 %lcmp.mod212.not, label %._crit_edge329.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge329.i.unr-lcssa, %.preheader.i
  %indvars.iv372.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next373.i.3, %._crit_edge329.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod213)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader
  %indvars.iv372.i.epil = phi i64 [ %indvars.iv372.i.epil.init, %.epil.preheader ], [ %indvars.iv.next373.i.epil, %bb.n ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.n ]
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv372.i.epil
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !62, !noalias !228
  %i.ln = mul nuw i64 %indvars.iv372.i.epil, %i.bu
  %gep.i.epil = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ln
  store float %i.lm, ptr %gep.i.epil, align 4, !tbaa !188, !noalias !228
  %indvars.iv.next373.i.epil = add nuw nsw i64 %indvars.iv372.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter211
  br i1 %epil.iter.cmp.not, label %._crit_edge329.i, label %bb.n, !llvm.loop !294

._crit_edge329.i:                                 ; preds = %bb.n, %._crit_edge329.i.unr-lcssa
  %indvars.iv.next379.i = add nuw nsw i64 %indvars.iv378.i, 1 ; 2 uses
  %exitcond382.not.i = icmp eq i64 %indvars.iv.next379.i, %wide.trip.count381.i
  br i1 %exitcond382.not.i, label %.loopexit309.i, label %.preheader.i, !llvm.loop !295

.loopexit309.i:                                   ; preds = %._crit_edge329.i, %bb.m, %.loopexit311.i
  %i.lo = sub i32 %i.dh, %.0250343.i              ; 10 uses
  store i32 %i.lo, ptr %i.bx, align 8, !tbaa !237, !noalias !228
  %i.lp = load i32, ptr %i.df, align 4, !tbaa !31, !noalias !228
  %i.lq = srem i32 %i.lp, 2                       ; 4 uses
  store i32 %i.lq, ptr %i.by, align 8, !tbaa !238, !noalias !228
  store i32 0, ptr %i.bz, align 4, !tbaa !239, !noalias !228
  store i32 %.0250343.i, ptr %i.ca, align 8, !tbaa !240, !noalias !228
  store i32 0, ptr %i.cb, align 4, !tbaa !241, !noalias !228
  store i32 %i.lo, ptr %i.cc, align 8, !tbaa !242, !noalias !228
  %i.lr = icmp ult i32 %i.dc, 16
  %or.cond7.i = select i1 %i.bt, i1 true, i1 %i.lr
  br i1 %or.cond7.i, label %.preheader307.i, label %bb.p

.preheader307.i:                                  ; preds = %.loopexit309.i
  %i.ls = icmp ugt i32 %i.dc, 7
  br i1 %i.ls, label %.lr.ph338.i, label %.loopexit308.i

.lr.ph338.i:                                      ; preds = %.preheader307.i
  %i.lt = sext i32 %i.lq to i64                   ; 2 uses
  %i.lu = getelementptr inbounds [32 x i8], ptr %i.bi, i64 %i.lt ; 3 uses
  %wide.trip.count.i.i = zext i32 %.0250343.i to i64 ; 3 uses
  %i.lv = mul nuw i64 %wide.trip.count.i.i, %i.bu
  %i.lw = sub nsw i64 0, %i.lt
  %i.lx = getelementptr inbounds [32 x i8], ptr %i.cf, i64 %i.lw ; 3 uses
  %.not305.i = icmp eq i32 %i.dh, %.0250343.i
  %wide.trip.count35.i.i = zext i32 %i.lo to i64  ; 2 uses
  %wide.trip.count388.i = zext i32 %i.dh to i64   ; 2 uses
  %xtraiter216 = and i64 %wide.trip.count.i.i, 1
  %i.ly = icmp eq i32 %.0250343.i, 1              ; 0 uses
  %unroll_iter220 = and i64 %wide.trip.count.i.i, 4294967294
  %lcmp.mod218.not = icmp eq i64 %xtraiter216, 0
  %lcmp.mod219 = trunc i32 %.0250343.i to i1
  %xtraiter222 = and i64 %wide.trip.count35.i.i, 1
  %i.lz = icmp eq i32 %i.lo, 1
  %unroll_iter226 = and i64 %wide.trip.count35.i.i, 4294967294
  %lcmp.mod224.not = icmp eq i64 %xtraiter222, 0
  %lcmp.mod225 = trunc i32 %i.lo to i1
  %xtraiter228 = and i64 %wide.trip.count388.i, 1
  %i.ma = icmp eq i32 %i.dh, 1                    ; 0 uses
  %unroll_iter232 = and i64 %wide.trip.count388.i, 4294967294
  %lcmp.mod230.not = icmp eq i64 %xtraiter228, 0
  %lcmp.mod231 = trunc i32 %i.dh to i1
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge335.i, %.lr.ph338.i
  %.4233337.i = phi i32 [ %i.dc, %.lr.ph338.i ], [ %i.nq, %._crit_edge335.i ]
  %.5240336.i = phi ptr [ %i.bk, %.lr.ph338.i ], [ %i.np, %._crit_edge335.i ] ; 8 uses
  switch i32 %.0250343.i, label %.lr.ph.i280.i [
    i32 0, label %._crit_edge.i.i
    i32 1, label %.lr.ph.i280.i.epil.preheader
  ]

.lr.ph.i280.i:                                    ; preds = %bb.o, %.lr.ph.i280.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i280.i ], [ 0, %bb.o ] ; 4 uses
  %niter221 = phi i64 [ %niter221.next.1, %.lr.ph.i280.i ], [ 0, %bb.o ]
  %i.mb = shl nuw nsw i64 %indvars.iv.i.i, 1
  %i.mc = and i64 %i.mb, 4294967292
  %i.md = getelementptr inbounds nuw [32 x i8], ptr %i.lu, i64 %i.mc
  %i.me = mul nuw i64 %indvars.iv.i.i, %i.bu
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %.5240336.i, i64 %i.me
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.md, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.mf, i64 32, i1 false), !noalias !296
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.mg = shl nuw nsw i64 %indvars.iv.next.i.i, 1
  %i.mh = and i64 %i.mg, 4294967294
  %i.mi = getelementptr inbounds nuw [32 x i8], ptr %i.lu, i64 %i.mh
  %i.mj = mul nuw i64 %indvars.iv.next.i.i, %i.bu
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %.5240336.i, i64 %i.mj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.mi, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.mk, i64 32, i1 false), !noalias !296
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter221.next.1 = add i64 %niter221, 2         ; 2 uses
  %niter221.ncmp.1 = icmp eq i64 %niter221.next.1, %unroll_iter220
  br i1 %niter221.ncmp.1, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph.i280.i, !llvm.loop !299

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i280.i
  br i1 %lcmp.mod218.not, label %._crit_edge.i.i, label %.lr.ph.i280.i.epil.preheader

.lr.ph.i280.i.epil.preheader:                     ; preds = %bb.o, %._crit_edge.i.i.loopexit.unr-lcssa
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %bb.o ], [ %indvars.iv.next.i.i.1, %._crit_edge.i.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod219)
  %i.ml = shl nuw nsw i64 %indvars.iv.i.i.epil.init, 1
  %i.mm = and i64 %i.ml, 4294967294
  %i.mn = getelementptr inbounds nuw [32 x i8], ptr %i.lu, i64 %i.mm
  %i.mo = mul nuw i64 %indvars.iv.i.i.epil.init, %i.bu
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %.5240336.i, i64 %i.mo
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.mn, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.mp, i64 32, i1 false), !noalias !296
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i280.i.epil.preheader, %._crit_edge.i.i.loopexit.unr-lcssa, %bb.o
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %.5240336.i, i64 %i.lv ; 3 uses
  br i1 %.not305.i, label %opj_v8dwt_interleave_v.exit.i, label %.lr.ph29.i.i.preheader

.lr.ph29.i.i.preheader:                           ; preds = %._crit_edge.i.i
  br i1 %i.lz, label %.lr.ph29.i.i.epil.preheader, label %.lr.ph29.i.i

.lr.ph29.i.i:                                     ; preds = %.lr.ph29.i.i.preheader, %.lr.ph29.i.i
  %indvars.iv32.i.i = phi i64 [ %indvars.iv.next33.i.i.1, %.lr.ph29.i.i ], [ 0, %.lr.ph29.i.i.preheader ] ; 4 uses
  %niter227 = phi i64 [ %niter227.next.1, %.lr.ph29.i.i ], [ 0, %.lr.ph29.i.i.preheader ]
  %i.mr = shl nuw i64 %indvars.iv32.i.i, 1
  %i.ms = and i64 %i.mr, 4294967292
  %i.mt = getelementptr inbounds nuw [32 x i8], ptr %i.lx, i64 %i.ms
  %i.mu = mul nuw i64 %indvars.iv32.i.i, %i.bu
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %i.mu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.mt, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.mv, i64 32, i1 false), !noalias !296
  %indvars.iv.next33.i.i = or disjoint i64 %indvars.iv32.i.i, 1 ; 2 uses
  %i.mw = shl nuw i64 %indvars.iv.next33.i.i, 1
  %i.mx = and i64 %i.mw, 4294967294
  %i.my = getelementptr inbounds nuw [32 x i8], ptr %i.lx, i64 %i.mx
  %i.mz = mul nuw i64 %indvars.iv.next33.i.i, %i.bu
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %i.mz
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.my, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.na, i64 32, i1 false), !noalias !296
  %indvars.iv.next33.i.i.1 = add nuw nsw i64 %indvars.iv32.i.i, 2 ; 2 uses
  %niter227.next.1 = add i64 %niter227, 2         ; 2 uses
  %niter227.ncmp.1 = icmp eq i64 %niter227.next.1, %unroll_iter226
  br i1 %niter227.ncmp.1, label %opj_v8dwt_interleave_v.exit.i.loopexit.unr-lcssa, label %.lr.ph29.i.i, !llvm.loop !300

opj_v8dwt_interleave_v.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph29.i.i
  br i1 %lcmp.mod224.not, label %opj_v8dwt_interleave_v.exit.i, label %.lr.ph29.i.i.epil.preheader

.lr.ph29.i.i.epil.preheader:                      ; preds = %opj_v8dwt_interleave_v.exit.i.loopexit.unr-lcssa, %.lr.ph29.i.i.preheader
  %indvars.iv32.i.i.epil.init = phi i64 [ 0, %.lr.ph29.i.i.preheader ], [ %indvars.iv.next33.i.i.1, %opj_v8dwt_interleave_v.exit.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod225)
  %i.nb = shl nuw i64 %indvars.iv32.i.i.epil.init, 1
  %i.nc = and i64 %i.nb, 4294967294
  %i.nd = getelementptr inbounds nuw [32 x i8], ptr %i.lx, i64 %i.nc
  %i.ne = mul nuw i64 %indvars.iv32.i.i.epil.init, %i.bu
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %i.ne
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.nd, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.nf, i64 32, i1 false), !noalias !296
  br label %opj_v8dwt_interleave_v.exit.i

opj_v8dwt_interleave_v.exit.i:                    ; preds = %.lr.ph29.i.i.epil.preheader, %opj_v8dwt_interleave_v.exit.i.loopexit.unr-lcssa, %._crit_edge.i.i
  call fastcc void @opj_v8dwt_decode(ptr noundef nonnull %6), !noalias !228
end_hunk_0
begin_hunk_1_@opj_dwt_decode_real:bb.a

bb.aa:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15, !noalias !309
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15, !noalias !309
  %i.qv = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !23, !alias.scope !309 ; 8 uses
  %i.qx = add i32 %2, -1                          ; 4 uses
  %i.qy = zext i32 %i.qx to i64
  %i.qz = getelementptr inbounds nuw [192 x i8], ptr %i.qw, i64 %i.qy ; 14 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  %i.rb = load i32, ptr %i.ra, align 8, !tbaa !24, !noalias !309
  %i.rc = load i32, ptr %i.qw, align 8, !tbaa !29, !noalias !309
  %i.rd = sub nsw i32 %i.rb, %i.rc
  %i.re = getelementptr inbounds nuw i8, ptr %i.qw, i64 12
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !30, !noalias !309
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qw, i64 4
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !31, !noalias !309
  %i.ri = sub nsw i32 %i.rf, %i.rh
  %i.rj = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.rk = load i32, ptr %i.rj, align 8, !tbaa !125, !alias.scope !309 ; 6 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !126, !alias.scope !309 ; 6 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ro = load i32, ptr %i.rn, align 8, !tbaa !127, !alias.scope !309 ; 6 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !128, !alias.scope !309 ; 6 uses
  %i.rr = load i32, ptr %i.qz, align 8, !tbaa !29, !noalias !309
  %i.rs = getelementptr inbounds nuw i8, ptr %i.qz, i64 8
  %i.rt = load i32, ptr %i.rs, align 8, !tbaa !24, !noalias !309
  %i.ru = icmp eq i32 %i.rr, %i.rt
  br i1 %i.ru, label %opj_dwt_decode_partial_97.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.rv = getelementptr inbounds nuw i8, ptr %i.qz, i64 4 ; 3 uses
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !31, !noalias !309
  %i.rx = getelementptr inbounds nuw i8, ptr %i.qz, i64 12
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !30, !noalias !309
  %i.rz = icmp eq i32 %i.rw, %i.ry
  br i1 %i.rz, label %opj_dwt_decode_partial_97.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.sa = tail call fastcc ptr @opj_dwt_init_sparse_array(ptr noundef nonnull readonly %1, i32 noundef %2) ; 17 uses
  %i.sb = icmp eq ptr %i.sa, null
  br i1 %i.sb, label %opj_dwt_decode_partial_97.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.sc = icmp eq i32 %2, 1
  br i1 %i.sc, label %bb.ae, label %.lr.ph.i.i6.preheader

.lr.ph.i.i6.preheader:                            ; preds = %bb.ad
  %xtraiter255 = and i32 %i.qx, 1
  %i.sd = icmp eq i32 %2, 2
  br i1 %i.sd, label %.lr.ph.i.i6.epil.preheader, label %.lr.ph.i.i6.preheader.new

.lr.ph.i.i6.preheader.new:                        ; preds = %.lr.ph.i.i6.preheader
  %unroll_iter260 = and i32 %i.qx, -2
  br label %.lr.ph.i.i6

bb.ae:                                            ; preds = %bb.ad
  %i.se = getelementptr inbounds nuw i8, ptr %i.qz, i64 176
  %i.sf = load i32, ptr %i.se, align 8, !tbaa !129, !noalias !309 ; 2 uses
  %i.sg = load i32, ptr %i.qz, align 8, !tbaa !29, !noalias !309 ; 2 uses
  %i.sh = sub i32 %i.sf, %i.sg
  %i.si = getelementptr inbounds nuw i8, ptr %i.qz, i64 180
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !130, !noalias !309
  %i.sk = load i32, ptr %i.rv, align 4, !tbaa !31, !noalias !309 ; 2 uses
  %i.sl = sub i32 %i.sj, %i.sk
  %i.sm = getelementptr inbounds nuw i8, ptr %i.qz, i64 184
  %i.sn = load i32, ptr %i.sm, align 8, !tbaa !131, !noalias !309 ; 2 uses
  %i.so = sub i32 %i.sn, %i.sg
  %i.sp = getelementptr inbounds nuw i8, ptr %i.qz, i64 188
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !132, !noalias !309
  %i.sr = sub i32 %i.sq, %i.sk
  %i.ss = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !133, !alias.scope !309
  %i.su = sub i32 %i.sn, %i.sf
  %i.sv = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.sa, i32 noundef %i.sh, i32 noundef %i.sl, i32 noundef %i.so, i32 noundef %i.sr, ptr noundef %i.st, i32 noundef 1, i32 noundef %i.su, i32 noundef 1) #15, !noalias !309 ; 0 uses
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.sa) #15, !noalias !309
  br label %opj_dwt_decode_partial_97.exit

.lr.ph.i.i6:                                      ; preds = %.lr.ph.i.i6, %.lr.ph.i.i6.preheader.new
  %.017.i.i7 = phi i32 [ 0, %.lr.ph.i.i6.preheader.new ], [ %.2.i.i10.1, %.lr.ph.i.i6 ]
  %.01116.i.i8 = phi ptr [ %i.qw, %.lr.ph.i.i6.preheader.new ], [ %i.tg, %.lr.ph.i.i6 ] ; 8 uses
  %niter261 = phi i32 [ 0, %.lr.ph.i.i6.preheader.new ], [ %niter261.next.1, %.lr.ph.i.i6 ]
  %i.sw = getelementptr inbounds nuw i8, ptr %.01116.i.i8, i64 192
  %i.sx = getelementptr inbounds nuw i8, ptr %.01116.i.i8, i64 200
  %i.sy = load i32, ptr %i.sx, align 8, !tbaa !24, !alias.scope !312, !noalias !309
  %i.sz = load i32, ptr %i.sw, align 8, !tbaa !29, !alias.scope !312, !noalias !309
  %i.ta = sub nsw i32 %i.sy, %i.sz
  %spec.select.i.i9 = tail call i32 @llvm.umax.i32(i32 %.017.i.i7, i32 %i.ta)
  %i.tb = getelementptr inbounds nuw i8, ptr %.01116.i.i8, i64 204
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !30, !alias.scope !312, !noalias !309
  %i.td = getelementptr inbounds nuw i8, ptr %.01116.i.i8, i64 196
  %i.te = load i32, ptr %i.td, align 4, !tbaa !31, !alias.scope !312, !noalias !309
  %i.tf = sub nsw i32 %i.tc, %i.te
  %.2.i.i10 = tail call i32 @llvm.umax.i32(i32 %spec.select.i.i9, i32 %i.tf)
  %i.tg = getelementptr inbounds nuw i8, ptr %.01116.i.i8, i64 384 ; 3 uses
  %i.th = getelementptr inbounds nuw i8, ptr %.01116.i.i8, i64 392
  %i.ti = load i32, ptr %i.th, align 8, !tbaa !24, !alias.scope !312, !noalias !309
  %i.tj = load i32, ptr %i.tg, align 8, !tbaa !29, !alias.scope !312, !noalias !309
  %i.tk = sub nsw i32 %i.ti, %i.tj
  %spec.select.i.i9.1 = tail call i32 @llvm.umax.i32(i32 %.2.i.i10, i32 %i.tk)
  %i.tl = getelementptr inbounds nuw i8, ptr %.01116.i.i8, i64 396
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !30, !alias.scope !312, !noalias !309
  %i.tn = getelementptr inbounds nuw i8, ptr %.01116.i.i8, i64 388
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !31, !alias.scope !312, !noalias !309
  %i.tp = sub nsw i32 %i.tm, %i.to
  %.2.i.i10.1 = tail call i32 @llvm.umax.i32(i32 %spec.select.i.i9.1, i32 %i.tp) ; 3 uses
  %niter261.next.1 = add i32 %niter261, 2         ; 2 uses
  %niter261.ncmp.1 = icmp eq i32 %niter261.next.1, %unroll_iter260
  br i1 %niter261.ncmp.1, label %opj_dwt_max_resolution.exit.i12.unr-lcssa, label %.lr.ph.i.i6, !llvm.loop !32

opj_dwt_max_resolution.exit.i12.unr-lcssa:        ; preds = %.lr.ph.i.i6
  %lcmp.mod257.not = icmp eq i32 %xtraiter255, 0
  br i1 %lcmp.mod257.not, label %opj_dwt_max_resolution.exit.i12, label %.lr.ph.i.i6.epil.preheader

.lr.ph.i.i6.epil.preheader:                       ; preds = %opj_dwt_max_resolution.exit.i12.unr-lcssa, %.lr.ph.i.i6.preheader
  %.017.i.i7.epil.init = phi i32 [ 0, %.lr.ph.i.i6.preheader ], [ %.2.i.i10.1, %opj_dwt_max_resolution.exit.i12.unr-lcssa ]
  %.01116.i.i8.epil.init = phi ptr [ %i.qw, %.lr.ph.i.i6.preheader ], [ %i.tg, %opj_dwt_max_resolution.exit.i12.unr-lcssa ] ; 4 uses
  %lcmp.mod259 = trunc i32 %i.qx to i1
  tail call void @llvm.assume(i1 %lcmp.mod259)
  %i.tq = getelementptr inbounds nuw i8, ptr %.01116.i.i8.epil.init, i64 192
  %i.tr = getelementptr inbounds nuw i8, ptr %.01116.i.i8.epil.init, i64 200
  %i.ts = load i32, ptr %i.tr, align 8, !tbaa !24, !alias.scope !312, !noalias !309
  %i.tt = load i32, ptr %i.tq, align 8, !tbaa !29, !alias.scope !312, !noalias !309
  %i.tu = sub nsw i32 %i.ts, %i.tt
  %spec.select.i.i9.epil = tail call i32 @llvm.umax.i32(i32 %.017.i.i7.epil.init, i32 %i.tu)
  %i.tv = getelementptr inbounds nuw i8, ptr %.01116.i.i8.epil.init, i64 204
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !30, !alias.scope !312, !noalias !309
  %i.tx = getelementptr inbounds nuw i8, ptr %.01116.i.i8.epil.init, i64 196
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !31, !alias.scope !312, !noalias !309
  %i.tz = sub nsw i32 %i.tw, %i.ty
  %.2.i.i10.epil = tail call i32 @llvm.umax.i32(i32 %spec.select.i.i9.epil, i32 %i.tz)
  br label %opj_dwt_max_resolution.exit.i12

opj_dwt_max_resolution.exit.i12:                  ; preds = %opj_dwt_max_resolution.exit.i12.unr-lcssa, %.lr.ph.i.i6.epil.preheader
  %.2.i.i10.lcssa = phi i32 [ %.2.i.i10.1, %opj_dwt_max_resolution.exit.i12.unr-lcssa ], [ %.2.i.i10.epil, %.lr.ph.i.i6.epil.preheader ]
  %i.ua = zext i32 %.2.i.i10.lcssa to i64
  %i.ub = shl nuw nsw i64 %i.ua, 5
  %i.uc = tail call ptr @opj_aligned_malloc(i64 noundef %i.ub) #15, !noalias !309 ; 13 uses
  store ptr %i.uc, ptr %3, align 8, !tbaa !234, !noalias !309
  %.not.i13 = icmp eq ptr %i.uc, null
  br i1 %.not.i13, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %opj_dwt_max_resolution.exit.i12
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.sa) #15, !noalias !309
  br label %opj_dwt_decode_partial_97.exit

bb.ag:                                            ; preds = %opj_dwt_max_resolution.exit.i12
  store ptr %i.uc, ptr %4, align 8, !tbaa !234, !noalias !309
  %.not278.i = icmp eq i32 %2, 0
  br i1 %.not278.i, label %._crit_edge277.i, label %.lr.ph276.i

.lr.ph276.i:                                      ; preds = %bb.ag
  %i.ud = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ue = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.uf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ug = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.uh = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ui = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.uj = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !22, !alias.scope !309 ; 2 uses
  %.not62.i.not.i = icmp eq i32 %i.rk, 0
  %i.ul = zext i32 %i.rk to i64
  %.not64.i.not.i = icmp eq i32 %i.rm, 0
  %i.um = zext i32 %i.rm to i64
  %.not66.i.not.i = icmp eq i32 %i.ro, 0
  %i.un = zext i32 %i.ro to i64
  %.not68.i.not.i = icmp eq i32 %i.rq, 0
  %i.uo = zext i32 %i.rq to i64
  %i.up = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.uq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ur = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.us = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ut = getelementptr inbounds nuw i8, ptr %i.uc, i64 32 ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.uv = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.uw = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.ux = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.uy = zext i32 %i.uk to i64
  %wide.trip.count.i14 = zext i32 %2 to i64
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge269.i, %.lr.ph276.i
  %indvars.iv.i15 = phi i64 [ 1, %.lr.ph276.i ], [ %indvars.iv.next.i17, %._crit_edge269.i ] ; 3 uses
  %.0155273.i = phi ptr [ %i.qw, %.lr.ph276.i ], [ %i.uz, %._crit_edge269.i ] ; 8 uses
  %.0156272.i = phi i32 [ %i.rd, %.lr.ph276.i ], [ %i.vd, %._crit_edge269.i ] ; 5 uses
  %.0157270.i = phi i32 [ %i.ri, %.lr.ph276.i ], [ %i.vi, %._crit_edge269.i ] ; 9 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %.0155273.i, i64 192 ; 2 uses
  store i32 %.0156272.i, ptr %i.ud, align 4, !tbaa !236, !noalias !309
  store i32 %.0157270.i, ptr %i.ue, align 4, !tbaa !236, !noalias !309
  %i.va = getelementptr inbounds nuw i8, ptr %.0155273.i, i64 200
  %i.vb = load i32, ptr %i.va, align 8, !tbaa !24, !noalias !309
  %i.vc = load i32, ptr %i.uz, align 8, !tbaa !29, !noalias !309 ; 2 uses
  %i.vd = sub nsw i32 %i.vb, %i.vc                ; 3 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %.0155273.i, i64 204
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !30, !noalias !309
  %i.vg = getelementptr inbounds nuw i8, ptr %.0155273.i, i64 196
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !31, !noalias !309 ; 2 uses
  %i.vi = sub nsw i32 %i.vf, %i.vh                ; 10 uses
  %i.vj = sub i32 %i.vd, %.0156272.i              ; 2 uses
  store i32 %i.vj, ptr %i.uf, align 8, !tbaa !237, !noalias !309
  %i.vk = srem i32 %i.vc, 2                       ; 3 uses
  store i32 %i.vk, ptr %i.ug, align 8, !tbaa !238, !noalias !309
  %i.vl = sub i32 %i.vi, %.0157270.i              ; 2 uses
  store i32 %i.vl, ptr %i.uh, align 8, !tbaa !237, !noalias !309
  %i.vm = srem i32 %i.vh, 2                       ; 3 uses
  store i32 %i.vm, ptr %i.ui, align 8, !tbaa !238, !noalias !309
  %i.vn = icmp eq i64 %indvars.iv.i15, %i.uy
  br i1 %i.vn, label %opj_dwt_get_band_coordinates.exit196.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.vo = trunc nuw i64 %indvars.iv.i15 to i32
  %i.vp = sub i32 %i.uk, %i.vo                    ; 2 uses
  %i.vq = zext i32 %i.vp to i64                   ; 9 uses
  %notmask.i.i = shl nsw i64 -1, %i.vq
  %i.vr = xor i64 %notmask.i.i, -1                ; 8 uses
  %i.vs = add nuw i64 %i.vr, %i.ul
  %i.vt = lshr i64 %i.vs, %i.vq
  %i.vu = trunc i64 %i.vt to i32
  %.ph.i = select i1 %.not62.i.not.i, i32 0, i32 %i.vu ; 2 uses
  %i.vv = add nuw i64 %i.vr, %i.um
  %i.vw = lshr i64 %i.vv, %i.vq
  %i.vx = trunc i64 %i.vw to i32
  %.ph247.i = select i1 %.not64.i.not.i, i32 0, i32 %i.vx ; 2 uses
  %i.vy = add nuw i64 %i.vr, %i.un
  %i.vz = lshr i64 %i.vy, %i.vq
  %i.wa = trunc i64 %i.vz to i32
  %.ph250.i = select i1 %.not66.i.not.i, i32 0, i32 %i.wa ; 2 uses
  %i.wb = add nuw i64 %i.vr, %i.uo
  %i.wc = lshr i64 %i.wb, %i.vq
  %i.wd = trunc i64 %i.wc to i32
  %.ph252.i = select i1 %.not68.i.not.i, i32 0, i32 %i.wd ; 2 uses
  %i.we = add i32 %i.vp, -1
  %i.wf = shl nuw i32 1, %i.we                    ; 8 uses
  %.not62.i187.i = icmp ugt i32 %i.rk, %i.wf
  %i.wg = sub nuw i32 %i.rk, %i.wf
  %i.wh = zext i32 %i.wg to i64
  %i.wi = add nuw i64 %i.wh, %i.vr
  %i.wj = lshr i64 %i.wi, %i.vq
  %i.wk = trunc i64 %i.wj to i32
  %.ph254.i = select i1 %.not62.i187.i, i32 %i.wk, i32 0 ; 2 uses
  %.not66.i188.i = icmp ugt i32 %i.ro, %i.wf
  %i.wl = sub nuw i32 %i.ro, %i.wf
  %i.wm = zext i32 %i.wl to i64
  %i.wn = add nuw i64 %i.wm, %i.vr
  %i.wo = lshr i64 %i.wn, %i.vq
  %i.wp = trunc i64 %i.wo to i32
  %.ph256.i = select i1 %.not66.i188.i, i32 %i.wp, i32 0 ; 2 uses
  %.not64.i192.i = icmp ugt i32 %i.rm, %i.wf
  %i.wq = sub nuw i32 %i.rm, %i.wf
  %i.wr = zext i32 %i.wq to i64
  %i.ws = add nuw i64 %i.wr, %i.vr
  %i.wt = lshr i64 %i.ws, %i.vq
  %i.wu = trunc i64 %i.wt to i32
  %.ph258.i = select i1 %.not64.i192.i, i32 %i.wu, i32 0 ; 2 uses
  %.not68.i193.i = icmp ugt i32 %i.rq, %i.wf
  br i1 %.not68.i193.i, label %bb.aj, label %opj_dwt_get_band_coordinates.exit196.i

bb.aj:                                            ; preds = %bb.ai
  %i.wv = sub nuw i32 %i.rq, %i.wf
  %i.ww = zext i32 %i.wv to i64
  %i.wx = add nuw i64 %i.ww, %i.vr
  %i.wy = lshr i64 %i.wx, %i.vq
  %i.wz = trunc i64 %i.wy to i32
  br label %opj_dwt_get_band_coordinates.exit196.i

opj_dwt_get_band_coordinates.exit196.i:           ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.xa = phi i32 [ %.ph258.i, %bb.ai ], [ %.ph258.i, %bb.aj ], [ %i.rm, %bb.ah ]
  %i.xb = phi i32 [ %.ph254.i, %bb.ai ], [ %.ph254.i, %bb.aj ], [ %i.rk, %bb.ah ]
  %i.xc = phi i32 [ %.ph250.i, %bb.ai ], [ %.ph250.i, %bb.aj ], [ %i.ro, %bb.ah ]
  %i.xd = phi i32 [ %.ph.i, %bb.ai ], [ %.ph.i, %bb.aj ], [ %i.rk, %bb.ah ]
  %i.xe = phi i32 [ %.ph247.i, %bb.ai ], [ %.ph247.i, %bb.aj ], [ %i.rm, %bb.ah ]
  %i.xf = phi i32 [ %.ph252.i, %bb.ai ], [ %.ph252.i, %bb.aj ], [ %i.rq, %bb.ah ]
  %i.xg = phi i32 [ %.ph256.i, %bb.ai ], [ %.ph256.i, %bb.aj ], [ %i.ro, %bb.ah ]
  %i.xh = phi i32 [ 0, %bb.ai ], [ %i.wz, %bb.aj ], [ %i.rq, %bb.ah ]
  %i.xi = getelementptr inbounds nuw i8, ptr %.0155273.i, i64 224
  %i.xj = getelementptr inbounds nuw i8, ptr %.0155273.i, i64 272
  %i.xk = load i32, ptr %i.xj, align 8, !tbaa !137, !noalias !309 ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %.0155273.i, i64 228
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !141, !noalias !309 ; 2 uses
  %i.xn = load i32, ptr %i.xi, align 8, !tbaa !137, !noalias !309 ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %.0155273.i, i64 276
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !141, !noalias !309 ; 2 uses
  %i.xq = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.xd, i32 %i.xk)
  %i.xr = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.xe, i32 %i.xm)
  %i.xs = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.xc, i32 %i.xk)
  %i.xt = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.xf, i32 %i.xm)
  %i.xu = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.xb, i32 %i.xn)
  %i.xv = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.xg, i32 %i.xn)
  %i.xw = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.xa, i32 %i.xp)
  %i.xx = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.xh, i32 %i.xp)
  %i.xy = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.xq, i32 4) ; 5 uses
  %i.xz = tail call range(i32 2, 0) i32 @llvm.uadd.sat.i32(i32 %i.xs, i32 range(i32 2, 5) 4)
  %i.ya = tail call noundef i32 @llvm.umin.i32(i32 %i.xz, i32 %.0156272.i) ; 4 uses
  %i.yb = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.xu, i32 4) ; 5 uses
  %i.yc = tail call range(i32 2, 0) i32 @llvm.uadd.sat.i32(i32 %i.xv, i32 range(i32 2, 5) 4)
  %i.yd = tail call noundef i32 @llvm.umin.i32(i32 %i.yc, i32 %i.vj) ; 4 uses
  %i.ye = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.xr, i32 4) ; 7 uses
  %i.yf = tail call range(i32 2, 0) i32 @llvm.uadd.sat.i32(i32 %i.xt, i32 range(i32 2, 5) 4)
  %i.yg = tail call noundef i32 @llvm.umin.i32(i32 %i.yf, i32 %.0157270.i) ; 6 uses
  %i.yh = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.xw, i32 4) ; 7 uses
  %i.yi = tail call range(i32 2, 0) i32 @llvm.uadd.sat.i32(i32 %i.xx, i32 range(i32 2, 5) 4)
  %i.yj = tail call noundef i32 @llvm.umin.i32(i32 %i.yi, i32 %i.vl) ; 6 uses
  %i.yk = icmp eq i32 %i.vk, 0                    ; 4 uses
  %..i = select i1 %i.yk, i32 %i.xy, i32 %i.yb
  %.314.i = select i1 %i.yk, i32 %i.yb, i32 %i.xy
  %.315.i = select i1 %i.yk, i32 %i.ya, i32 %i.yd
  %.316.i = select i1 %i.yk, i32 %i.yd, i32 %i.ya
  %i.yl = shl i32 %..i, 1
  %i.ym = shl i32 %.314.i, 1
  %i.yn = or disjoint i32 %i.ym, 1
  %i.yo = tail call noundef i32 @llvm.umin.i32(i32 %i.yl, i32 %i.yn) ; 6 uses
  %i.yp = shl i32 %.315.i, 1
  %i.yq = shl i32 %.316.i, 1
  %i.yr = or disjoint i32 %i.yq, 1
  %i.ys = tail call noundef i32 @llvm.umax.i32(i32 %i.yp, i32 %i.yr)
  %i.yt = tail call noundef i32 @llvm.umin.i32(i32 %i.ys, i32 %i.vd) ; 5 uses
  %i.yu = icmp eq i32 %i.vm, 0
  br i1 %i.yu, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %opj_dwt_get_band_coordinates.exit196.i
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %opj_dwt_get_band_coordinates.exit196.i
  %.sink313.i.a = phi i32 [ %i.yh, %bb.ak ], [ %i.ye, %opj_dwt_get_band_coordinates.exit196.i ]
  %.sink312.i = phi i32 [ %i.ye, %bb.ak ], [ %i.yh, %opj_dwt_get_band_coordinates.exit196.i ]
  %.sink308.i.a = phi i32 [ %i.yj, %bb.ak ], [ %i.yg, %opj_dwt_get_band_coordinates.exit196.i ]
  %.sink307.i = phi i32 [ %i.yg, %bb.ak ], [ %i.yj, %opj_dwt_get_band_coordinates.exit196.i ]
  %i.yv = shl i32 %.sink313.i.a, 1
  %i.yw = shl i32 %.sink312.i, 1
  %i.yx = or disjoint i32 %i.yw, 1
  %i.yy = tail call noundef i32 @llvm.umin.i32(i32 %i.yv, i32 %i.yx) ; 2 uses
  %i.yz = shl i32 %.sink308.i.a, 1
  %i.za = shl i32 %.sink307.i, 1
  %i.zb = or disjoint i32 %i.za, 1
  %i.zc = tail call noundef i32 @llvm.umax.i32(i32 %i.yz, i32 %i.zb)
  %i.zd = tail call noundef i32 @llvm.umin.i32(i32 %i.zc, i32 %i.vi)
  store i32 %i.xy, ptr %i.up, align 4, !tbaa !239, !noalias !309
  store i32 %i.ya, ptr %i.uq, align 8, !tbaa !240, !noalias !309
  store i32 %i.yb, ptr %i.ur, align 4, !tbaa !241, !noalias !309
  store i32 %i.yd, ptr %i.us, align 8, !tbaa !242, !noalias !309
  %i.ze = icmp ugt i32 %i.vi, 7
  br i1 %i.ze, label %.lr.ph.i19, label %._crit_edge.i16

.lr.ph.i19:                                       ; preds = %bb.al
  %i.zf = add i32 %i.yh, %.0157270.i
  %i.zg = add i32 %i.yj, %.0157270.i
  %i.zh = sext i32 %i.vk to i64                   ; 2 uses
  %i.zi = getelementptr inbounds [32 x i8], ptr %i.uc, i64 %i.zh
  %i.zj = shl i32 %i.xy, 1
  %i.zk = zext i32 %i.zj to i64
  %i.zl = getelementptr inbounds nuw [32 x i8], ptr %i.zi, i64 %i.zk
  %i.zm = add i32 %i.yb, %.0156272.i
  %i.zn = add i32 %i.yd, %.0156272.i
  %i.zo = sub nsw i64 0, %i.zh
  %i.zp = getelementptr inbounds [32 x i8], ptr %i.ut, i64 %i.zo
  %i.zq = shl i32 %i.yb, 1
  %i.zr = zext i32 %i.zq to i64
  %i.zs = getelementptr inbounds nuw [32 x i8], ptr %i.zp, i64 %i.zr
  %i.zt = zext i32 %i.yo to i64
  %i.zu = getelementptr inbounds nuw [32 x i8], ptr %i.uc, i64 %i.zt
  br label %bb.am

bb.am:                                            ; preds = %bb.aq, %.lr.ph.i19
  %.0164266.i = phi i32 [ 0, %.lr.ph.i19 ], [ %.pre-phi.i21, %bb.aq ] ; 9 uses
  %i.zv = or disjoint i32 %.0164266.i, 7          ; 2 uses
  %.not177.i = icmp uge i32 %i.zv, %i.ye
  %i.zw = icmp ult i32 %.0164266.i, %i.yg
  %or.cond.i20 = and i1 %i.zw, %.not177.i
  br i1 %or.cond.i20, label %7, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.not178.i = icmp uge i32 %i.zv, %i.zf
  %i.zx = icmp ult i32 %.0164266.i, %i.zg
  %or.cond261.i = and i1 %i.zx, %.not178.i
  br i1 %or.cond261.i, label %7, label %._crit_edge282.i

._crit_edge282.i:                                 ; preds = %bb.an
  %.pre.i = add i32 %.0164266.i, 8
  br label %bb.aq

7:                                                ; preds = %bb.an, %bb.am
  %.not.i197.i = icmp eq i32 %i.vi, %.0164266.i
  br i1 %.not.i197.i, label %opj_v8dwt_interleave_partial_h.exit.loopexit.i, label %.lr.ph.i198.i

.lr.ph.i198.i:                                    ; preds = %7
  %i.zy = sub i32 %i.vi, %.0164266.i
  %i.zz = tail call noundef i32 @llvm.umin.i32(i32 %i.zy, i32 8)
  %wide.trip.count.i.i22 = zext nneg i32 %i.zz to i64
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.lr.ph.i198.i
  %indvars.iv.i.i23 = phi i64 [ 0, %.lr.ph.i198.i ], [ %indvars.iv.next.i.i24, %bb.ao ] ; 4 uses
  %i.aaa = trunc nuw i64 %indvars.iv.i.i23 to i32
  %i.aab = add i32 %.0164266.i, %i.aaa            ; 3 uses
  %i.aac = add i32 %i.aab, 1                      ; 2 uses
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %indvars.iv.i.i23
  %i.aae = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.sa, i32 noundef %i.xy, i32 noundef %i.aab, i32 noundef %i.ya, i32 noundef %i.aac, ptr noundef nonnull %i.aad, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !309 ; 0 uses
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %i.zs, i64 %indvars.iv.i.i23
  %i.aag = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.sa, i32 noundef %i.zm, i32 noundef %i.aab, i32 noundef %i.zn, i32 noundef %i.aac, ptr noundef nonnull %i.aaf, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !309 ; 0 uses
  %indvars.iv.next.i.i24 = add nuw nsw i64 %indvars.iv.i.i23, 1 ; 2 uses
  %exitcond.not.i.i25 = icmp eq i64 %indvars.iv.next.i.i24, %wide.trip.count.i.i22
  br i1 %exitcond.not.i.i25, label %opj_v8dwt_interleave_partial_h.exit.loopexit.i, label %bb.ao, !llvm.loop !315

opj_v8dwt_interleave_partial_h.exit.loopexit.i:   ; preds = %bb.ao, %7
  call fastcc void @opj_v8dwt_decode(ptr noundef nonnull %3), !noalias !309
  %i.aah = add i32 %.0164266.i, 8                 ; 2 uses
  %i.aai = tail call i32 @opj_sparse_array_int32_write(ptr noundef nonnull %i.sa, i32 noundef %i.yo, i32 noundef %.0164266.i, i32 noundef %i.yt, i32 noundef %i.aah, ptr noundef nonnull %i.zu, i32 noundef 8, i32 noundef 1, i32 noundef 1) #15, !noalias !309
  %.not179.i = icmp eq i32 %i.aai, 0
  br i1 %.not179.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %opj_v8dwt_interleave_partial_h.exit.loopexit.i
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.sa) #15, !noalias !309
  tail call void @opj_aligned_free(ptr noundef nonnull %i.uc) #15, !noalias !309
  br label %opj_dwt_decode_partial_97.exit

bb.aq:                                            ; preds = %opj_v8dwt_interleave_partial_h.exit.loopexit.i, %._crit_edge282.i
  %.pre-phi.i21 = phi i32 [ %.pre.i, %._crit_edge282.i ], [ %i.aah, %opj_v8dwt_interleave_partial_h.exit.loopexit.i ] ; 3 uses
  %i.aaj = or disjoint i32 %.pre-phi.i21, 7       ; 2 uses
  %i.aak = icmp ult i32 %i.aaj, %i.vi
  br i1 %i.aak, label %bb.am, label %._crit_edge.i16, !llvm.loop !316

._crit_edge.i16:                                  ; preds = %bb.aq, %bb.al
  %.0164.lcssa.i = phi i32 [ 0, %bb.al ], [ %.pre-phi.i21, %bb.aq ] ; 6 uses
  %.lcssa.i = phi i32 [ 7, %bb.al ], [ %i.aaj, %bb.aq ] ; 2 uses
  %i.aal = icmp ult i32 %.0164.lcssa.i, %i.vi
  br i1 %i.aal, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %._crit_edge.i16
  %.not173.i = icmp uge i32 %.lcssa.i, %i.ye
  %i.aam = icmp ult i32 %.0164.lcssa.i, %i.yg
  %or.cond182.i = and i1 %i.aam, %.not173.i
  br i1 %or.cond182.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.aan = add i32 %i.yh, %.0157270.i
  %.not174.i = icmp uge i32 %.lcssa.i, %i.aan
  %i.aao = add i32 %i.yj, %.0157270.i
  %i.aap = icmp ult i32 %.0164.lcssa.i, %i.aao
  %or.cond263.i = and i1 %i.aap, %.not174.i
  br i1 %or.cond263.i, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.aaq = sub i32 %i.vi, %.0164.lcssa.i
  call fastcc void @opj_v8dwt_interleave_partial_h(ptr noundef %3, ptr noundef %i.sa, i32 noundef %.0164.lcssa.i, i32 noundef %i.aaq), !noalias !309
  call fastcc void @opj_v8dwt_decode(ptr noundef nonnull %3), !noalias !309
  %i.aar = zext i32 %i.yo to i64
  %i.aas = getelementptr inbounds nuw [32 x i8], ptr %i.uc, i64 %i.aar
  %i.aat = tail call i32 @opj_sparse_array_int32_write(ptr noundef nonnull %i.sa, i32 noundef %i.yo, i32 noundef %.0164.lcssa.i, i32 noundef %i.yt, i32 noundef %i.vi, ptr noundef nonnull %i.aas, i32 noundef 8, i32 noundef 1, i32 noundef 1) #15, !noalias !309
  %.not175.i = icmp eq i32 %i.aat, 0
  br i1 %.not175.i, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.sa) #15, !noalias !309
  tail call void @opj_aligned_free(ptr noundef nonnull %i.uc) #15, !noalias !309
  br label %opj_dwt_decode_partial_97.exit

bb.av:                                            ; preds = %bb.at, %bb.as, %._crit_edge.i16
  store i32 %i.ye, ptr %i.uu, align 4, !tbaa !239, !noalias !309
  store i32 %i.yg, ptr %i.uv, align 8, !tbaa !240, !noalias !309
  store i32 %i.yh, ptr %i.uw, align 4, !tbaa !241, !noalias !309
  store i32 %i.yj, ptr %i.ux, align 8, !tbaa !242, !noalias !309
  %i.aau = icmp ult i32 %i.yo, %i.yt
  br i1 %i.aau, label %.critedge.lr.ph.i, label %._crit_edge269.i

.critedge.lr.ph.i:                                ; preds = %bb.av
  %i.aav = sext i32 %i.vm to i64                  ; 2 uses
  %i.aaw = getelementptr inbounds [32 x i8], ptr %i.uc, i64 %i.aav
  %i.aax = shl i32 %i.ye, 1
  %i.aay = zext i32 %i.aax to i64
  %i.aaz = getelementptr inbounds nuw [32 x i8], ptr %i.aaw, i64 %i.aay
  %i.aba = add i32 %i.yh, %.0157270.i
  %i.abb = add i32 %i.yj, %.0157270.i
  %i.abc = sub nsw i64 0, %i.aav
  %i.abd = getelementptr inbounds [32 x i8], ptr %i.ut, i64 %i.abc
  %i.abe = shl i32 %i.yh, 1
  %i.abf = zext i32 %i.abe to i64
  %i.abg = getelementptr inbounds nuw [32 x i8], ptr %i.abd, i64 %i.abf
  %i.abh = zext i32 %i.yy to i64
  %i.abi = getelementptr inbounds nuw [32 x i8], ptr %i.uc, i64 %i.abh
  br label %.critedge.i

bb.aw:                                            ; preds = %.critedge.i
  %i.abj = add i32 %.1165268.i, 8                 ; 2 uses
  %i.abk = icmp ult i32 %i.abj, %i.yt
  br i1 %i.abk, label %.critedge.i, label %._crit_edge269.i, !llvm.loop !317

.critedge.i:                                      ; preds = %bb.aw, %.critedge.lr.ph.i
  %.1165268.i = phi i32 [ %i.yo, %.critedge.lr.ph.i ], [ %i.abj, %bb.aw ] ; 6 uses
  %i.abl = sub nuw i32 %i.yt, %.1165268.i
  %i.abm = tail call noundef i32 @llvm.umin.i32(i32 %i.abl, i32 8)
  %i.abn = add i32 %i.abm, %.1165268.i            ; 3 uses
  %i.abo = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.sa, i32 noundef %.1165268.i, i32 noundef %i.ye, i32 noundef %i.abn, i32 noundef %i.yg, ptr noundef nonnull %i.aaz, i32 noundef 1, i32 noundef 16, i32 noundef 1) #15, !noalias !318 ; 0 uses
  %i.abp = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.sa, i32 noundef %.1165268.i, i32 noundef %i.aba, i32 noundef %i.abn, i32 noundef %i.abb, ptr noundef nonnull %i.abg, i32 noundef 1, i32 noundef 16, i32 noundef 1) #15, !noalias !318 ; 0 uses
  call fastcc void @opj_v8dwt_decode(ptr noundef nonnull %4), !noalias !309
  %i.abq = tail call i32 @opj_sparse_array_int32_write(ptr noundef nonnull %i.sa, i32 noundef %.1165268.i, i32 noundef %i.yy, i32 noundef %i.abn, i32 noundef %i.zd, ptr noundef nonnull %i.abi, i32 noundef 1, i32 noundef 8, i32 noundef 1) #15, !noalias !309
  %.not176.not.i = icmp eq i32 %i.abq, 0
  br i1 %.not176.not.i, label %bb.ax, label %bb.aw

bb.ax:                                            ; preds = %.critedge.i
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.sa) #15, !noalias !309
  tail call void @opj_aligned_free(ptr noundef nonnull %i.uc) #15, !noalias !309
  br label %opj_dwt_decode_partial_97.exit

._crit_edge269.i:                                 ; preds = %bb.aw, %bb.av
  %indvars.iv.next.i17 = add nuw nsw i64 %indvars.iv.i15, 1 ; 2 uses
  %exitcond.not.i18 = icmp eq i64 %indvars.iv.next.i17, %wide.trip.count.i14
  br i1 %exitcond.not.i18, label %._crit_edge277.i, label %bb.ah, !llvm.loop !321

._crit_edge277.i:                                 ; preds = %._crit_edge269.i, %bb.ag
  %i.abr = getelementptr inbounds nuw i8, ptr %i.qz, i64 176
  %i.abs = load i32, ptr %i.abr, align 8, !tbaa !129, !noalias !309 ; 2 uses
  %i.abt = load i32, ptr %i.qz, align 8, !tbaa !29, !noalias !309 ; 2 uses
  %i.abu = sub i32 %i.abs, %i.abt
  %i.abv = getelementptr inbounds nuw i8, ptr %i.qz, i64 180
  %i.abw = load i32, ptr %i.abv, align 4, !tbaa !130, !noalias !309
  %i.abx = load i32, ptr %i.rv, align 4, !tbaa !31, !noalias !309 ; 2 uses
  %i.aby = sub i32 %i.abw, %i.abx
  %i.abz = getelementptr inbounds nuw i8, ptr %i.qz, i64 184
  %i.aca = load i32, ptr %i.abz, align 8, !tbaa !131, !noalias !309 ; 2 uses
  %i.acb = sub i32 %i.aca, %i.abt
  %i.acc = getelementptr inbounds nuw i8, ptr %i.qz, i64 188
  %i.acd = load i32, ptr %i.acc, align 4, !tbaa !132, !noalias !309
  %i.ace = sub i32 %i.acd, %i.abx
  %i.acf = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.acg = load ptr, ptr %i.acf, align 8, !tbaa !133, !alias.scope !309
  %i.ach = sub i32 %i.aca, %i.abs
  %i.aci = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.sa, i32 noundef %i.abu, i32 noundef %i.aby, i32 noundef %i.acb, i32 noundef %i.ace, ptr noundef %i.acg, i32 noundef 1, i32 noundef %i.ach, i32 noundef 1) #15, !noalias !309 ; 0 uses
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.sa) #15, !noalias !309
  tail call void @opj_aligned_free(ptr noundef nonnull %i.uc) #15, !noalias !309
  br label %opj_dwt_decode_partial_97.exit

opj_dwt_decode_partial_97.exit:                   ; preds = %bb.aa, %bb.ab, %bb.ac, %bb.ae, %bb.af, %bb.ap, %bb.au, %bb.ax, %._crit_edge277.i
  %.4.i = phi i32 [ 1, %._crit_edge277.i ], [ 1, %bb.aa ], [ 1, %bb.ae ], [ 0, %bb.af ], [ 0, %bb.ac ], [ 1, %bb.ab ], [ 0, %bb.ax ], [ 0, %bb.au ], [ 0, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15, !noalias !309
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15, !noalias !309
  br label %bb.ay

bb.ay:                                            ; preds = %opj_dwt_decode_partial_97.exit, %opj_dwt_decode_tile_97.exit
  %.0 = phi i32 [ %.10.i, %opj_dwt_decode_tile_97.exit ], [ %.4.i, %opj_dwt_decode_partial_97.exit ]
  ret i32 %.0
}

declare i32 @opj_thread_pool_get_thread_count(ptr noundef) local_unnamed_addr #8

declare ptr @opj_aligned_32_malloc(i64 noundef) local_unnamed_addr #8

declare ptr @opj_malloc(i64 noundef) local_unnamed_addr #8

declare void @opj_thread_pool_wait_completion(ptr noundef, i32 noundef) local_unnamed_addr #8

declare void @opj_aligned_free(ptr noundef) local_unnamed_addr #8

declare void @opj_free(ptr noundef) local_unnamed_addr #8

declare i32 @opj_thread_pool_submit_job(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal void @opj_dwt_encode_v_func(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !45   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.d = add i32 %i.b, 7
  %i.e = load i32, ptr %i.c, align 4, !tbaa !46   ; 2 uses
  %i.f = icmp ult i32 %i.d, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.025 = phi i32 [ %i.b, %.lr.ph ], [ %i.l, %bb.b ] ; 3 uses
  %i.l = add i32 %.025, 8                         ; 2 uses
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !44
  %i.o = zext i32 %.025 to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.o
  %i.q = load ptr, ptr %0, align 8, !tbaa !36
  %i.r = load i32, ptr %i.i, align 8, !tbaa !42
  %i.s = load i32, ptr %i.j, align 8, !tbaa !41
  %i.t = icmp eq i32 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %i.v = load i32, ptr %i.k, align 4, !tbaa !43
  tail call void %i.m(ptr noundef %i.p, ptr noundef %i.q, i32 noundef %i.r, i32 noundef %i.u, i32 noundef %i.v, i32 noundef 8) #15
  %i.w = add i32 %.025, 15
  %i.x = load i32, ptr %i.c, align 4, !tbaa !46   ; 2 uses
  %i.y = icmp ult i32 %i.w, %i.x
  br i1 %i.y, label %bb.b, label %._crit_edge, !llvm.loop !322

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i32 [ %i.b, %bb.a ], [ %i.l, %bb.b ] ; 3 uses
  %.lcssa = phi i32 [ %i.e, %bb.a ], [ %i.x, %bb.b ] ; 2 uses
  %i.z = icmp ult i32 %.0.lcssa, %.lcssa
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !47
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
end_hunk_1
