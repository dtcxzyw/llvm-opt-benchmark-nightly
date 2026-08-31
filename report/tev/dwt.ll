Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/dwt?download=true
inline.NumInlined: 158
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 79
begin_hunk_0_@opj_dwt_decode_real:bb.a
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 9 uses
  %i.gj = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %index ; 4 uses
  %i.gk = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %index ; 4 uses
  %i.gl = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %index ; 4 uses
  %i.gm = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %index ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 48
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 80
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 112
  %i.gr = load float, ptr %i.gn, align 4, !tbaa !65, !alias.scope !270, !noalias !239
  %i.gs = load float, ptr %i.go, align 4, !tbaa !65, !alias.scope !270, !noalias !239
  %i.gt = load float, ptr %i.gp, align 4, !tbaa !65, !alias.scope !270, !noalias !239
  %i.gu = load float, ptr %i.gq, align 4, !tbaa !65, !alias.scope !270, !noalias !239
  %i.gv = insertelement <4 x float> poison, float %i.gr, i64 0
  %i.gw = insertelement <4 x float> %i.gv, float %i.gs, i64 1
  %i.gx = insertelement <4 x float> %i.gw, float %i.gt, i64 2
  %i.gy = insertelement <4 x float> %i.gx, float %i.gu, i64 3
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %index
  store <4 x float> %i.gy, ptr %i.gz, align 4, !tbaa !199, !alias.scope !273, !noalias !275
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gj, i64 20
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gk, i64 52
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gl, i64 84
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gm, i64 116
  %i.he = load float, ptr %i.ha, align 4, !tbaa !65, !alias.scope !270, !noalias !239
  %i.hf = load float, ptr %i.hb, align 4, !tbaa !65, !alias.scope !270, !noalias !239
  %i.hg = load float, ptr %i.hc, align 4, !tbaa !65, !alias.scope !270, !noalias !239
  %i.hh = load float, ptr %i.hd, align 4, !tbaa !65, !alias.scope !270, !noalias !239
  %i.hi = insertelement <4 x float> poison, float %i.he, i64 0
  %i.hj = insertelement <4 x float> %i.hi, float %i.hf, i64 1
  %i.hk = insertelement <4 x float> %i.hj, float %i.hg, i64 2
  %i.hl = insertelement <4 x float> %i.hk, float %i.hh, i64 3
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %index
  store <4 x float> %i.hl, ptr %i.hm, align 4, !tbaa !199, !alias.scope !279, !noalias !280
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gk, i64 56
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gl, i64 88
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gm, i64 120
  %i.hr = load float, ptr %i.hn, align 4, !tbaa !65, !alias.scope !270, !noalias !239
  %i.hs = load float, ptr %i.ho, align 4, !tbaa !65, !alias.scope !270, !noalias !239
  %i.ht = load float, ptr %i.hp, align 4, !tbaa !65, !alias.scope !270, !noalias !239
  %i.hu = load float, ptr %i.hq, align 4, !tbaa !65, !alias.scope !270, !noalias !239
  %i.hv = insertelement <4 x float> poison, float %i.hr, i64 0
  %i.hw = insertelement <4 x float> %i.hv, float %i.hs, i64 1
  %i.hx = insertelement <4 x float> %i.hw, float %i.ht, i64 2
  %i.hy = insertelement <4 x float> %i.hx, float %i.hu, i64 3
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %index
  store <4 x float> %i.hy, ptr %i.hz, align 4, !tbaa !199, !alias.scope !281, !noalias !282
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gj, i64 28
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gk, i64 60
  %i.ic = getelementptr inbounds nuw i8, ptr %i.gl, i64 92
  %i.id = getelementptr inbounds nuw i8, ptr %i.gm, i64 124
  %i.ie = load float, ptr %i.ia, align 4, !tbaa !65, !alias.scope !270, !noalias !239
  %i.if = load float, ptr %i.ib, align 4, !tbaa !65, !alias.scope !270, !noalias !239
  %i.ig = load float, ptr %i.ic, align 4, !tbaa !65, !alias.scope !270, !noalias !239
  %i.ih = load float, ptr %i.id, align 4, !tbaa !65, !alias.scope !270, !noalias !239
  %i.ii = insertelement <4 x float> poison, float %i.ie, i64 0
  %i.ij = insertelement <4 x float> %i.ii, float %i.if, i64 1
  %i.ik = insertelement <4 x float> %i.ij, float %i.ig, i64 2
  %i.il = insertelement <4 x float> %i.ik, float %i.ih, i64 3
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %index
  store <4 x float> %i.il, ptr %i.im, align 4, !tbaa !199, !alias.scope !283, !noalias !284
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.in = icmp eq i64 %index.next, %n.vec
  br i1 %i.in, label %scalar.ph.preheader, label %vector.body, !llvm.loop !285

scalar.ph178:                                     ; preds = %scalar.ph178.preheader, %scalar.ph178
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph178 ], [ %indvars.iv.i.ph, %scalar.ph178.preheader ] ; 5 uses
  %i.io = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %indvars.iv.i ; 4 uses
  %i.ip = load float, ptr %i.io, align 4, !tbaa !65, !noalias !239
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %.0226323.i, i64 %indvars.iv.i ; 2 uses
  store float %i.ip, ptr %i.iq, align 4, !tbaa !199, !noalias !239
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  %i.is = load float, ptr %i.ir, align 4, !tbaa !65, !noalias !239
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %i.bu
  store float %i.is, ptr %i.it, align 4, !tbaa !199, !noalias !239
  %i.iu = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !65, !noalias !239
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.i
  store float %i.iv, ptr %i.iw, align 4, !tbaa !199, !noalias !239
  %i.ix = getelementptr inbounds nuw i8, ptr %i.io, i64 12
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !65, !noalias !239
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.i
  store float %i.iy, ptr %i.iz, align 4, !tbaa !199, !noalias !239
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond366.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond366.not.i, label %.lr.ph322.i, label %scalar.ph178, !llvm.loop !286

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv367.i = phi i64 [ %indvars.iv.next368.i, %scalar.ph ], [ %indvars.iv367.i.ph, %scalar.ph.preheader ] ; 6 uses
  %i.ja = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %indvars.iv367.i ; 4 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !65, !noalias !239
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv367.i
  store float %i.jc, ptr %i.jd, align 4, !tbaa !199, !noalias !239
  %i.je = getelementptr inbounds nuw i8, ptr %i.ja, i64 20
  %i.jf = load float, ptr %i.je, align 4, !tbaa !65, !noalias !239
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv367.i
  store float %i.jf, ptr %i.jg, align 4, !tbaa !199, !noalias !239
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !65, !noalias !239
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv367.i
  store float %i.ji, ptr %i.jj, align 4, !tbaa !199, !noalias !239
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ja, i64 28
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !65, !noalias !239
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv367.i
  store float %i.jl, ptr %i.jm, align 4, !tbaa !199, !noalias !239
  %indvars.iv.next368.i = add nuw nsw i64 %indvars.iv367.i, 1 ; 2 uses
  %exitcond371.not.i = icmp eq i64 %indvars.iv.next368.i, %wide.trip.count.i
  br i1 %exitcond371.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !287

._crit_edge.i:                                    ; preds = %scalar.ph, %bb.e
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %.0226323.i, i64 %i.bw ; 2 uses
  %i.jo = add i32 %.0224324.i, 8                  ; 3 uses
  %i.jp = or disjoint i32 %i.jo, 7
  %i.jq = icmp ult i32 %i.jp, %i.db
  %indvar.next = add i64 %indvar, 1
  br i1 %i.jq, label %bb.e, label %.loopexit311.i, !llvm.loop !288

bb.f:                                             ; preds = %bb.d
  %i.jr = lshr i32 %i.db, 3
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.jr, i32 %i.y) ; 2 uses
  %i.js = udiv i32 %i.db, %spec.select.i
  %i.jt = and i32 %i.js, -8                       ; 2 uses
  %i.ju = and i32 %i.db, -8                       ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %bb.f
  %.1225319.i = phi i32 [ 0, %bb.f ], [ %i.kh, %bb.k ] ; 2 uses
  %.1227318.i = phi ptr [ %i.bk, %bb.f ], [ %i.kp, %bb.k ] ; 2 uses
  %i.jv = tail call ptr @opj_malloc(i64 noundef 64) #15, !noalias !239 ; 15 uses
  %.not267.i = icmp eq ptr %i.jv, null
  br i1 %.not267.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @opj_thread_pool_wait_completion(ptr noundef %i.d, i32 noundef 0) #15, !noalias !239
  br label %.critedge.sink.split.i

bb.i:                                             ; preds = %bb.g
  %i.jw = tail call ptr @opj_aligned_malloc(i64 noundef %i.bh) #15, !noalias !239 ; 2 uses
  store ptr %i.jw, ptr %i.jv, align 8, !tbaa !289, !noalias !239
  %.not268.i = icmp eq ptr %i.jw, null
  br i1 %.not268.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @opj_thread_pool_wait_completion(ptr noundef %i.d, i32 noundef 0) #15, !noalias !239
  tail call void @opj_free(ptr noundef nonnull %i.jv) #15, !noalias !239
  br label %.critedge.sink.split.i

bb.k:                                             ; preds = %bb.i
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  store i32 %i.dc, ptr %i.jx, align 8, !tbaa !292, !noalias !239
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 12
  store i32 %.0238344.i, ptr %i.jy, align 4, !tbaa !293, !noalias !239
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  store i32 %i.dd, ptr %i.jz, align 8, !tbaa !294, !noalias !239
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jv, i64 20
  store i32 0, ptr %i.ka, align 4, !tbaa !295, !noalias !239
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jv, i64 24
  store i32 %.0238344.i, ptr %i.kb, align 8, !tbaa !296, !noalias !239
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jv, i64 28
  store i32 0, ptr %i.kc, align 4, !tbaa !297, !noalias !239
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jv, i64 32
  store i32 %i.dc, ptr %i.kd, align 8, !tbaa !298, !noalias !239
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jv, i64 40
  store i32 %i.cw, ptr %i.ke, align 8, !tbaa !299, !noalias !239
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jv, i64 44
  store i32 %i.x, ptr %i.kf, align 4, !tbaa !300, !noalias !239
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jv, i64 48
  store ptr %.1227318.i, ptr %i.kg, align 8, !tbaa !301, !noalias !239
  %i.kh = add nuw nsw i32 %.1225319.i, 1          ; 2 uses
  %i.ki = icmp eq i32 %i.kh, %spec.select.i       ; 2 uses
  %i.kj = mul i32 %.1225319.i, %i.jt
  %i.kk = sub i32 %i.ju, %i.kj
  %i.kl = select i1 %i.ki, i32 %i.kk, i32 %i.jt   ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.jv, i64 56
  store i32 %i.kl, ptr %i.km, align 8, !tbaa !302, !noalias !239
  %i.kn = mul i32 %i.kl, %i.x
  %i.ko = zext i32 %i.kn to i64
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %.1227318.i, i64 %i.ko ; 2 uses
  %i.kq = tail call i32 @opj_thread_pool_submit_job(ptr noundef %i.d, ptr noundef nonnull @opj_dwt97_decode_h_func, ptr noundef nonnull %i.jv) #15, !noalias !239 ; 0 uses
  br i1 %i.ki, label %bb.l, label %bb.g, !llvm.loop !303

bb.l:                                             ; preds = %bb.k
  tail call void @opj_thread_pool_wait_completion(ptr noundef %i.d, i32 noundef 0) #15, !noalias !239
  br label %.loopexit311.i

.loopexit311.i:                                   ; preds = %._crit_edge.i, %bb.l, %.preheader310.i
  %.4230.i = phi ptr [ %i.kp, %bb.l ], [ %i.bk, %.preheader310.i ], [ %i.jn, %._crit_edge.i ] ; 2 uses
  %.3.i = phi i32 [ %i.ju, %bb.l ], [ 0, %.preheader310.i ], [ %i.jo, %._crit_edge.i ] ; 2 uses
  %i.kr = icmp ult i32 %.3.i, %i.db
  br i1 %i.kr, label %bb.m, label %.loopexit309.i

bb.m:                                             ; preds = %.loopexit311.i
  %i.ks = sub nuw i32 %i.db, %.3.i                ; 3 uses
  call fastcc void @opj_v8dwt_interleave_h(ptr noundef nonnull %5, ptr noundef %.4230.i, i32 noundef %i.x, i32 noundef %i.ks), !noalias !239
  call fastcc void @opj_v8dwt_decode(ptr noundef nonnull %5), !noalias !239
  %.not353.i = icmp eq i32 %i.cw, 0
  br i1 %.not353.i, label %.loopexit309.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.m
  %wide.trip.count380.i = zext i32 %i.cw to i64
  %wide.trip.count375.i = zext i32 %i.ks to i64   ; 2 uses
  %xtraiter200 = and i64 %wide.trip.count375.i, 3 ; 3 uses
  %i.kt = add i32 %i.ks, -1
  %i.ku = icmp ult i32 %i.kt, 3
  %unroll_iter203 = and i64 %wide.trip.count375.i, 4294967292
  %lcmp.mod201.not = icmp eq i64 %xtraiter200, 0
  %lcmp.mod202 = icmp ne i64 %xtraiter200, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge329.i, %.preheader.preheader.i
  %indvars.iv377.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next378.i, %._crit_edge329.i ] ; 3 uses
  %i.kv = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %indvars.iv377.i ; 5 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %.4230.i, i64 %indvars.iv377.i ; 5 uses
  br i1 %i.ku, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %indvars.iv372.i = phi i64 [ %indvars.iv.next373.i.3, %.preheader.i.new ], [ 0, %.preheader.i ] ; 6 uses
  %niter204 = phi i64 [ %niter204.next.3, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %indvars.iv372.i
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !65, !noalias !239
  %i.ky = mul nuw i64 %indvars.iv372.i, %i.bu
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ky
  store float %i.kx, ptr %gep.i, align 4, !tbaa !199, !noalias !239
  %indvars.iv.next373.i = or disjoint i64 %indvars.iv372.i, 1 ; 2 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %indvars.iv.next373.i
  %i.la = load float, ptr %i.kz, align 4, !tbaa !65, !noalias !239
  %i.lb = mul nuw i64 %indvars.iv.next373.i, %i.bu
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.lb
  store float %i.la, ptr %gep.i.1, align 4, !tbaa !199, !noalias !239
  %indvars.iv.next373.i.1 = or disjoint i64 %indvars.iv372.i, 2 ; 2 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %indvars.iv.next373.i.1
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !65, !noalias !239
  %i.le = mul nuw i64 %indvars.iv.next373.i.1, %i.bu
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.le
  store float %i.ld, ptr %gep.i.2, align 4, !tbaa !199, !noalias !239
  %indvars.iv.next373.i.2 = or disjoint i64 %indvars.iv372.i, 3 ; 2 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %indvars.iv.next373.i.2
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !65, !noalias !239
  %i.lh = mul nuw i64 %indvars.iv.next373.i.2, %i.bu
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.lh
  store float %i.lg, ptr %gep.i.3, align 4, !tbaa !199, !noalias !239
  %indvars.iv.next373.i.3 = add nuw nsw i64 %indvars.iv372.i, 4 ; 2 uses
  %niter204.next.3 = add i64 %niter204, 4         ; 2 uses
  %niter204.ncmp.3 = icmp eq i64 %niter204.next.3, %unroll_iter203
  br i1 %niter204.ncmp.3, label %._crit_edge329.i.unr-lcssa, label %.preheader.i.new, !llvm.loop !304

._crit_edge329.i.unr-lcssa:                       ; preds = %.preheader.i.new
  br i1 %lcmp.mod201.not, label %._crit_edge329.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge329.i.unr-lcssa, %.preheader.i
  %indvars.iv372.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next373.i.3, %._crit_edge329.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod202)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader
  %indvars.iv372.i.epil = phi i64 [ %indvars.iv372.i.epil.init, %.epil.preheader ], [ %indvars.iv.next373.i.epil, %bb.n ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.n ]
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %indvars.iv372.i.epil
  %i.lj = load float, ptr %i.li, align 4, !tbaa !65, !noalias !239
  %i.lk = mul nuw i64 %indvars.iv372.i.epil, %i.bu
  %gep.i.epil = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.lk
  store float %i.lj, ptr %gep.i.epil, align 4, !tbaa !199, !noalias !239
  %indvars.iv.next373.i.epil = add nuw nsw i64 %indvars.iv372.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter200
  br i1 %epil.iter.cmp.not, label %._crit_edge329.i, label %bb.n, !llvm.loop !305

._crit_edge329.i:                                 ; preds = %bb.n, %._crit_edge329.i.unr-lcssa
  %indvars.iv.next378.i = add nuw nsw i64 %indvars.iv377.i, 1 ; 2 uses
  %exitcond381.not.i = icmp eq i64 %indvars.iv.next378.i, %wide.trip.count380.i
  br i1 %exitcond381.not.i, label %.loopexit309.i, label %.preheader.i, !llvm.loop !306

.loopexit309.i:                                   ; preds = %._crit_edge329.i, %bb.m, %.loopexit311.i
  %i.ll = sub i32 %i.db, %.0237345.i              ; 10 uses
  store i32 %i.ll, ptr %i.bx, align 8, !tbaa !248, !noalias !239
  %i.lm = load i32, ptr %i.cz, align 4, !tbaa !33, !noalias !239
  %i.ln = srem i32 %i.lm, 2                       ; 4 uses
  store i32 %i.ln, ptr %i.by, align 8, !tbaa !249, !noalias !239
  store i32 0, ptr %i.bz, align 4, !tbaa !250, !noalias !239
  store i32 %.0237345.i, ptr %i.ca, align 8, !tbaa !251, !noalias !239
  store i32 0, ptr %i.cb, align 4, !tbaa !252, !noalias !239
  store i32 %i.ll, ptr %i.cc, align 8, !tbaa !253, !noalias !239
  %i.lo = icmp ult i32 %i.cw, 16
  %or.cond7.i = select i1 %i.bt, i1 true, i1 %i.lo
  br i1 %or.cond7.i, label %.preheader307.i, label %bb.p

.preheader307.i:                                  ; preds = %.loopexit309.i
  %i.lp = icmp ugt i32 %i.cw, 7
  br i1 %i.lp, label %.lr.ph338.i, label %.loopexit308.i

.lr.ph338.i:                                      ; preds = %.preheader307.i
  %i.lq = sext i32 %i.ln to i64                   ; 2 uses
  %i.lr = getelementptr inbounds [32 x i8], ptr %i.bi, i64 %i.lq ; 3 uses
  %wide.trip.count.i.i = zext i32 %.0237345.i to i64 ; 3 uses
  %i.ls = mul nuw i64 %wide.trip.count.i.i, %i.bu
  %i.lt = sub nsw i64 0, %i.lq
  %i.lu = getelementptr inbounds [32 x i8], ptr %i.cf, i64 %i.lt ; 3 uses
  %.not305.i = icmp eq i32 %i.db, %.0237345.i
  %wide.trip.count35.i.i = zext i32 %i.ll to i64  ; 2 uses
  %wide.trip.count386.i = zext i32 %i.db to i64   ; 2 uses
  %xtraiter205 = and i64 %wide.trip.count.i.i, 1
  %i.lv = icmp eq i32 %.0237345.i, 1              ; 0 uses
  %unroll_iter209 = and i64 %wide.trip.count.i.i, 4294967294
  %lcmp.mod207.not = icmp eq i64 %xtraiter205, 0
  %lcmp.mod208 = trunc i32 %.0237345.i to i1
  %xtraiter211 = and i64 %wide.trip.count35.i.i, 1
  %i.lw = icmp eq i32 %i.ll, 1
  %unroll_iter215 = and i64 %wide.trip.count35.i.i, 4294967294
  %lcmp.mod213.not = icmp eq i64 %xtraiter211, 0
  %lcmp.mod214 = trunc i32 %i.ll to i1
  %xtraiter217 = and i64 %wide.trip.count386.i, 1
  %i.lx = icmp eq i32 %i.db, 1                    ; 0 uses
  %unroll_iter221 = and i64 %wide.trip.count386.i, 4294967294
  %lcmp.mod219.not = icmp eq i64 %xtraiter217, 0
  %lcmp.mod220 = trunc i32 %i.db to i1
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge335.i, %.lr.ph338.i
  %.4337.i = phi i32 [ %i.cw, %.lr.ph338.i ], [ %i.nn, %._crit_edge335.i ]
  %.5231336.i = phi ptr [ %i.bk, %.lr.ph338.i ], [ %i.nm, %._crit_edge335.i ] ; 8 uses
  switch i32 %.0237345.i, label %.lr.ph.i280.i [
    i32 0, label %._crit_edge.i.i
    i32 1, label %.lr.ph.i280.i.epil.preheader
  ]

.lr.ph.i280.i:                                    ; preds = %bb.o, %.lr.ph.i280.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i280.i ], [ 0, %bb.o ] ; 4 uses
  %niter210 = phi i64 [ %niter210.next.1, %.lr.ph.i280.i ], [ 0, %bb.o ]
  %i.ly = shl nuw nsw i64 %indvars.iv.i.i, 1
  %i.lz = and i64 %i.ly, 4294967292
  %i.ma = getelementptr inbounds nuw [32 x i8], ptr %i.lr, i64 %i.lz
  %i.mb = mul nuw i64 %indvars.iv.i.i, %i.bu
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %.5231336.i, i64 %i.mb
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ma, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.mc, i64 32, i1 false), !noalias !307
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.md = shl nuw nsw i64 %indvars.iv.next.i.i, 1
  %i.me = and i64 %i.md, 4294967294
  %i.mf = getelementptr inbounds nuw [32 x i8], ptr %i.lr, i64 %i.me
  %i.mg = mul nuw i64 %indvars.iv.next.i.i, %i.bu
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %.5231336.i, i64 %i.mg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.mf, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.mh, i64 32, i1 false), !noalias !307
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter210.next.1 = add i64 %niter210, 2         ; 2 uses
  %niter210.ncmp.1 = icmp eq i64 %niter210.next.1, %unroll_iter209
  br i1 %niter210.ncmp.1, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph.i280.i, !llvm.loop !310

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i280.i
  br i1 %lcmp.mod207.not, label %._crit_edge.i.i, label %.lr.ph.i280.i.epil.preheader

.lr.ph.i280.i.epil.preheader:                     ; preds = %bb.o, %._crit_edge.i.i.loopexit.unr-lcssa
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %bb.o ], [ %indvars.iv.next.i.i.1, %._crit_edge.i.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod208)
  %i.mi = shl nuw nsw i64 %indvars.iv.i.i.epil.init, 1
  %i.mj = and i64 %i.mi, 4294967294
  %i.mk = getelementptr inbounds nuw [32 x i8], ptr %i.lr, i64 %i.mj
  %i.ml = mul nuw i64 %indvars.iv.i.i.epil.init, %i.bu
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %.5231336.i, i64 %i.ml
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.mk, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.mm, i64 32, i1 false), !noalias !307
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i280.i.epil.preheader, %._crit_edge.i.i.loopexit.unr-lcssa, %bb.o
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %.5231336.i, i64 %i.ls ; 3 uses
  br i1 %.not305.i, label %opj_v8dwt_interleave_v.exit.i, label %.lr.ph29.i.i.preheader

.lr.ph29.i.i.preheader:                           ; preds = %._crit_edge.i.i
  br i1 %i.lw, label %.lr.ph29.i.i.epil.preheader, label %.lr.ph29.i.i

.lr.ph29.i.i:                                     ; preds = %.lr.ph29.i.i.preheader, %.lr.ph29.i.i
  %indvars.iv32.i.i = phi i64 [ %indvars.iv.next33.i.i.1, %.lr.ph29.i.i ], [ 0, %.lr.ph29.i.i.preheader ] ; 4 uses
  %niter216 = phi i64 [ %niter216.next.1, %.lr.ph29.i.i ], [ 0, %.lr.ph29.i.i.preheader ]
  %i.mo = shl nuw i64 %indvars.iv32.i.i, 1
  %i.mp = and i64 %i.mo, 4294967292
  %i.mq = getelementptr inbounds nuw [32 x i8], ptr %i.lu, i64 %i.mp
  %i.mr = mul nuw i64 %indvars.iv32.i.i, %i.bu
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %i.mr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.mq, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.ms, i64 32, i1 false), !noalias !307
  %indvars.iv.next33.i.i = or disjoint i64 %indvars.iv32.i.i, 1 ; 2 uses
  %i.mt = shl nuw i64 %indvars.iv.next33.i.i, 1
  %i.mu = and i64 %i.mt, 4294967294
  %i.mv = getelementptr inbounds nuw [32 x i8], ptr %i.lu, i64 %i.mu
  %i.mw = mul nuw i64 %indvars.iv.next33.i.i, %i.bu
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %i.mw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.mv, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.mx, i64 32, i1 false), !noalias !307
  %indvars.iv.next33.i.i.1 = add nuw nsw i64 %indvars.iv32.i.i, 2 ; 2 uses
  %niter216.next.1 = add i64 %niter216, 2         ; 2 uses
  %niter216.ncmp.1 = icmp eq i64 %niter216.next.1, %unroll_iter215
  br i1 %niter216.ncmp.1, label %opj_v8dwt_interleave_v.exit.i.loopexit.unr-lcssa, label %.lr.ph29.i.i, !llvm.loop !311

opj_v8dwt_interleave_v.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph29.i.i
  br i1 %lcmp.mod213.not, label %opj_v8dwt_interleave_v.exit.i, label %.lr.ph29.i.i.epil.preheader

.lr.ph29.i.i.epil.preheader:                      ; preds = %opj_v8dwt_interleave_v.exit.i.loopexit.unr-lcssa, %.lr.ph29.i.i.preheader
  %indvars.iv32.i.i.epil.init = phi i64 [ 0, %.lr.ph29.i.i.preheader ], [ %indvars.iv.next33.i.i.1, %opj_v8dwt_interleave_v.exit.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod214)
  %i.my = shl nuw i64 %indvars.iv32.i.i.epil.init, 1
  %i.mz = and i64 %i.my, 4294967294
  %i.na = getelementptr inbounds nuw [32 x i8], ptr %i.lu, i64 %i.mz
  %i.nb = mul nuw i64 %indvars.iv32.i.i.epil.init, %i.bu
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %i.nb
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.na, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.nc, i64 32, i1 false), !noalias !307
  br label %opj_v8dwt_interleave_v.exit.i

opj_v8dwt_interleave_v.exit.i:                    ; preds = %.lr.ph29.i.i.epil.preheader, %opj_v8dwt_interleave_v.exit.i.loopexit.unr-lcssa, %._crit_edge.i.i
  call fastcc void @opj_v8dwt_decode(ptr noundef nonnull %6), !noalias !239
  switch i32 %i.db, label %.lr.ph334.i [
    i32 0, label %._crit_edge335.i
    i32 1, label %.lr.ph334.i.epil.preheader
  ]

.lr.ph334.i:                                      ; preds = %opj_v8dwt_interleave_v.exit.i, %.lr.ph334.i
  %indvars.iv383.i = phi i64 [ %indvars.iv.next384.i.1, %.lr.ph334.i ], [ 0, %opj_v8dwt_interleave_v.exit.i ] ; 4 uses
  %niter222 = phi i64 [ %niter222.next.1, %.lr.ph334.i ], [ 0, %opj_v8dwt_interleave_v.exit.i ]
  %i.nd = mul nuw i64 %indvars.iv383.i, %i.bu
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %.5231336.i, i64 %i.nd
  %i.nf = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %indvars.iv383.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ne, ptr noundef nonnull align 4 dereferenceable(32) %i.nf, i64 32, i1 false), !noalias !239
  %indvars.iv.next384.i = or disjoint i64 %indvars.iv383.i, 1 ; 2 uses
  %i.ng = mul nuw i64 %indvars.iv.next384.i, %i.bu
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %.5231336.i, i64 %i.ng
  %i.ni = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %indvars.iv.next384.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.nh, ptr noundef nonnull align 4 dereferenceable(32) %i.ni, i64 32, i1 false), !noalias !239
  %indvars.iv.next384.i.1 = add nuw nsw i64 %indvars.iv383.i, 2 ; 2 uses
  %niter222.next.1 = add i64 %niter222, 2         ; 2 uses
  %niter222.ncmp.1 = icmp eq i64 %niter222.next.1, %unroll_iter221
  br i1 %niter222.ncmp.1, label %._crit_edge335.i.loopexit.unr-lcssa, label %.lr.ph334.i, !llvm.loop !312

._crit_edge335.i.loopexit.unr-lcssa:              ; preds = %.lr.ph334.i
  br i1 %lcmp.mod219.not, label %._crit_edge335.i, label %.lr.ph334.i.epil.preheader

.lr.ph334.i.epil.preheader:                       ; preds = %opj_v8dwt_interleave_v.exit.i, %._crit_edge335.i.loopexit.unr-lcssa
  %indvars.iv383.i.epil.init = phi i64 [ 0, %opj_v8dwt_interleave_v.exit.i ], [ %indvars.iv.next384.i.1, %._crit_edge335.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod220)
  %i.nj = mul nuw i64 %indvars.iv383.i.epil.init, %i.bu
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %.5231336.i, i64 %i.nj
  %i.nl = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %indvars.iv383.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.nk, ptr noundef nonnull align 4 dereferenceable(32) %i.nl, i64 32, i1 false), !noalias !239
  br label %._crit_edge335.i

._crit_edge335.i:                                 ; preds = %.lr.ph334.i.epil.preheader, %._crit_edge335.i.loopexit.unr-lcssa, %opj_v8dwt_interleave_v.exit.i
  %i.nm = getelementptr inbounds nuw i8, ptr %.5231336.i, i64 32 ; 2 uses
  %i.nn = add i32 %.4337.i, -8                    ; 2 uses
  %i.no = icmp ugt i32 %i.nn, 7
  br i1 %i.no, label %bb.o, label %.loopexit308.i, !llvm.loop !313

bb.p:                                             ; preds = %.loopexit309.i
  %i.np = lshr i32 %i.cw, 3
  %spec.select279.i = tail call i32 @llvm.umin.i32(i32 %i.np, i32 %i.ce) ; 2 uses
  %i.nq = udiv i32 %i.cw, %spec.select279.i
  %i.nr = and i32 %i.nq, -8                       ; 2 uses
  %i.ns = and i32 %i.cw, -8
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %bb.p
  %.5332.i = phi i32 [ 0, %bb.p ], [ %i.of, %bb.u ] ; 2 uses
  %.6331.i = phi ptr [ %i.bk, %bb.p ], [ %i.om, %bb.u ] ; 2 uses
  %i.nt = tail call ptr @opj_malloc(i64 noundef 64) #15, !noalias !239 ; 15 uses
  %.not270.i = icmp eq ptr %i.nt, null
  br i1 %.not270.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @opj_thread_pool_wait_completion(ptr noundef %i.d, i32 noundef 0) #15, !noalias !239
  br label %.critedge.sink.split.i

bb.s:                                             ; preds = %bb.q
  %i.nu = tail call ptr @opj_aligned_malloc(i64 noundef %i.bh) #15, !noalias !239 ; 2 uses
  store ptr %i.nu, ptr %i.nt, align 8, !tbaa !289, !noalias !239
  %.not271.i = icmp eq ptr %i.nu, null
  br i1 %.not271.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
end_hunk_0
