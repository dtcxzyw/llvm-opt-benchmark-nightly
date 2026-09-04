Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_nmeig?download=true
inline.NumInlined: 385
inline.NumDeleted: 199
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_Z9gmx_nmeigiPPc:.noexc.i

.preheader432:                                    ; preds = %.lr.ph.preheader, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit
  %i.gk = load ptr, ptr %i.s, align 8, !tbaa !57  ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !100 ; 2 uses
  %i.gn = icmp sgt i32 %i.gm, 0
  br i1 %i.gn, label %.preheader431.lr.ph, label %._crit_edge442

.preheader431.lr.ph:                              ; preds = %.preheader432
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !101
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %i.gr = sext i32 %i.eq to i64
  %wide.trip.count478 = zext nneg i32 %i.gm to i64
  br label %.preheader431

bb.av:                                            ; preds = %bb.au, %._crit_edge442
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %.body

.preheader431:                                    ; preds = %.preheader431.lr.ph, %._crit_edge
  %indvars.iv475 = phi i64 [ 0, %.preheader431.lr.ph ], [ %indvars.iv.next476, %._crit_edge ] ; 5 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv475
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !53 ; 3 uses
  %i.gv = icmp sgt i32 %i.gu, 0
  br i1 %i.gv, label %.lr.ph440, label %._crit_edge

.lr.ph440:                                        ; preds = %.preheader431
  %i.gw = load ptr, ptr %i.gq, align 8, !tbaa !102
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv475
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !104 ; 5 uses
  %i.gz = mul nsw i64 %indvars.iv475, %i.gr
  %wide.trip.count = zext nneg i32 %i.gu to i64   ; 2 uses
  %i.ha = getelementptr [4 x i8], ptr %i.gd, i64 %i.gz ; 5 uses
  %i.hb = trunc nuw nsw i64 %indvars.iv475 to i32 ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.hc = icmp ult i32 %i.gu, 4
  br i1 %i.hc, label %.epil.preheader, label %.lr.ph440.new

.lr.ph440.new:                                    ; preds = %.lr.ph440
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %.lr.ph440.new
  %indvars.iv = phi i64 [ 0, %.lr.ph440.new ], [ %indvars.iv.next.3, %bb.aw ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph440.new ], [ %niter.next.3, %bb.aw ]
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv ; 2 uses
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !106 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !107 ; 2 uses
  %i.hh = sext i32 %i.he to i64
  %i.hi = getelementptr [4 x i8], ptr %i.ha, i64 %i.hh
  store float %i.hg, ptr %i.hi, align 4, !tbaa !96
  %i.hj = mul nsw i32 %i.he, %i.eq
  %i.hk = add nsw i32 %i.hj, %i.hb
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.hl
  store float %i.hg, ptr %i.hm, align 4, !tbaa !96
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !106 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 12
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !107 ; 2 uses
  %i.hs = sext i32 %i.hp to i64
  %i.ht = getelementptr [4 x i8], ptr %i.ha, i64 %i.hs
  store float %i.hr, ptr %i.ht, align 4, !tbaa !96
  %i.hu = mul nsw i32 %i.hp, %i.eq
  %i.hv = add nsw i32 %i.hu, %i.hb
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.hw
  store float %i.hr, ptr %i.hx, align 4, !tbaa !96
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !106 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 20
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !107 ; 2 uses
  %i.id = sext i32 %i.ia to i64
  %i.ie = getelementptr [4 x i8], ptr %i.ha, i64 %i.id
  store float %i.ic, ptr %i.ie, align 4, !tbaa !96
  %i.if = mul nsw i32 %i.ia, %i.eq
  %i.ig = add nsw i32 %i.if, %i.hb
  %i.ih = sext i32 %i.ig to i64
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.ih
  store float %i.ic, ptr %i.ii, align 4, !tbaa !96
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !106 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 28
  %i.in = load float, ptr %i.im, align 4, !tbaa !107 ; 2 uses
  %i.io = sext i32 %i.il to i64
  %i.ip = getelementptr [4 x i8], ptr %i.ha, i64 %i.io
  store float %i.in, ptr %i.ip, align 4, !tbaa !96
  %i.iq = mul nsw i32 %i.il, %i.eq
  %i.ir = add nsw i32 %i.iq, %i.hb
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.is
  store float %i.in, ptr %i.it, align 4, !tbaa !96
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.aw, !llvm.loop !29

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.aw
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph440
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph440 ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod676 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod676)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.ax ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ax ]
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv.epil ; 2 uses
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !106 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 4
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !107 ; 2 uses
  %i.iy = sext i32 %i.iv to i64
  %i.iz = getelementptr [4 x i8], ptr %i.ha, i64 %i.iy
  store float %i.ix, ptr %i.iz, align 4, !tbaa !96
  %i.ja = mul nsw i32 %i.iv, %i.eq
  %i.jb = add nsw i32 %i.ja, %i.hb
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.jc
  store float %i.ix, ptr %i.jd, align 4, !tbaa !96
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.ax, !llvm.loop !30

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.ax, %.preheader431
  %indvars.iv.next476 = add nuw nsw i64 %indvars.iv475, 1 ; 2 uses
  %exitcond479.not = icmp eq i64 %indvars.iv.next476, %wide.trip.count478
  br i1 %exitcond479.not, label %._crit_edge442, label %.preheader431, !llvm.loop !31

._crit_edge442:                                   ; preds = %._crit_edge, %.preheader432
  invoke void @_Z24gmx_sparsematrix_destroyP16gmx_sparsematrix(ptr noundef nonnull %i.gk)
          to label %bb.ay unwind label %bb.av

bb.ay:                                            ; preds = %._crit_edge442
  store ptr null, ptr %i.s, align 8, !tbaa !57
  %i.je = load ptr, ptr @stderr, align 8, !tbaa !95
  %i.jf = call i64 @fwrite(ptr nonnull @.str.74, i64 41, i64 1, ptr %i.je) #18 ; 0 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %_ZNSt10filesystem7__cxx114pathD2Ev.exit233
  %i.jg = load i32, ptr %i.w, align 4, !tbaa !53
  %i.jh = sext i32 %i.jg to i64
  %i.ji = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.68, i32 noundef 630, i64 noundef range(i64 -2147483648, 2147483648) %i.jh, i64 noundef 4)
          to label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit236 unwind label %bb.bf ; 17 uses

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit236:       ; preds = %bb.az
  %i.jj = load ptr, ptr %i.r, align 8, !tbaa !55
  %.not173 = icmp eq ptr %i.jj, null
  %i.jk = load i32, ptr %i.w, align 4, !tbaa !53  ; 4 uses
  br i1 %.not173, label %bb.bg, label %bb.ba

bb.ba:                                            ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit236
  %i.jl = load i32, ptr @_ZZ9gmx_nmeigiPPcE5begin, align 4, !tbaa !53
  %i.jm = load i32, ptr @_ZZ9gmx_nmeigiPPcE3end, align 4, !tbaa !53
  %reass.sub.i = sub i32 %i.jm, %i.jl
  %i.jn = add i32 %reass.sub.i, 1                 ; 2 uses
  %i.jo = sext i32 %i.jk to i64
  %i.jp = sext i32 %i.jn to i64
  %i.jq = mul nsw i64 %i.jp, %i.jo                ; 2 uses
  %i.jr = icmp ugt i64 %i.jq, 2147483647
  br i1 %i.jr, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA65_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 1 dereferenceable(65) @.str.68, i8 noundef zeroext 2)
          to label %.noexc237 unwind label %bb.bf

.noexc237:                                        ; preds = %bb.bb
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef 282, ptr noundef nonnull @.str.109, i32 noundef %i.jn, i32 noundef %i.jk, i32 noundef 2147483647, ptr noundef nonnull @.str.110) #19
          to label %bb.bc unwind label %bb.bd

bb.bc:                                            ; preds = %.noexc237
  unreachable

bb.bd:                                            ; preds = %.noexc237
  %i.js = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %.body

bb.be:                                            ; preds = %bb.ba
  %i.jt = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.68, i32 noundef 292, i64 noundef range(i64 -2147483648, 2147483648) %i.jq, i64 noundef 4)
          to label %_ZL20allocateEigenvectorsiiib.exit unwind label %bb.bf ; 6 uses

_ZL20allocateEigenvectorsiiib.exit:               ; preds = %bb.be
  %i.ju = load ptr, ptr %i.r, align 8, !tbaa !55  ; 4 uses
  %i.jv = load i32, ptr %i.w, align 4, !tbaa !53  ; 3 uses
  %i.jw = load i8, ptr @_ZZ9gmx_nmeigiPPcE2bM, align 1, !tbaa !70, !range !71, !noundef !72
  %i.jx = trunc nuw i8 %i.jw to i1                ; 2 uses
  %i.jy = load ptr, ptr %11, align 8, !tbaa !91   ; 14 uses
  %i.jz = load ptr, ptr %i.ei, align 8, !tbaa !90 ; 2 uses
  %i.ka = ptrtoint ptr %i.jy to i64               ; 2 uses
  %i.kb = load i32, ptr @_ZZ9gmx_nmeigiPPcE5begin, align 4, !tbaa !53 ; 4 uses
  %i.kc = load i32, ptr @_ZZ9gmx_nmeigiPPcE3end, align 4, !tbaa !53 ; 4 uses
  br i1 %i.jx, label %.preheader66.i, label %.loopexit67.i

.preheader66.i:                                   ; preds = %_ZL20allocateEigenvectorsiiib.exit
  %27 = ptrtoint ptr %i.jz to i64
  %28 = sub i64 %27, %i.ka                        ; 4 uses
  %i.kd = ashr exact i64 %28, 2                   ; 9 uses
  %i.ke = icmp sgt i64 %i.kd, 0
  br i1 %i.ke, label %.lr.ph.i239, label %.loopexit67.i

.lr.ph.i239:                                      ; preds = %.preheader66.i
  %i.kf = sext i32 %i.jv to i64                   ; 3 uses
  %i.kg = add nsw i64 %i.kd, -1                   ; 3 uses
  %i.kh = icmp eq i64 %i.kg, 0
  %unroll_iter682 = and i64 %i.kd, 9223372036854775806
  %i.ki = and i64 %28, 4
  %lcmp.mod680.not = icmp eq i64 %i.ki, 0
  %lcmp.mod681 = trunc i64 %i.kd to i1
  %i.kj = icmp eq i64 %i.kg, 0
  %unroll_iter689 = and i64 %i.kd, 9223372036854775806
  %i.kk = and i64 %28, 4
  %lcmp.mod687.not = icmp eq i64 %i.kk, 0
  %lcmp.mod688 = trunc i64 %i.kd to i1
  %i.kl = icmp eq i64 %i.kg, 0
  %unroll_iter696 = and i64 %i.kd, 9223372036854775806
  %i.km = and i64 %28, 4
  %lcmp.mod694.not = icmp eq i64 %i.km, 0
  %lcmp.mod695 = trunc i64 %i.kd to i1
  br label %.split.i

.split.i:                                         ; preds = %._crit_edge.2.i, %.lr.ph.i239
  %indvars.iv81.i = phi i64 [ 0, %.lr.ph.i239 ], [ %indvars.iv.next82.i, %._crit_edge.2.i ] ; 3 uses
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %indvars.iv81.i
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !53
  %i.kp = sext i32 %i.ko to i64
  %i.kq = mul nuw nsw i64 %indvars.iv81.i, 3      ; 3 uses
  %i.kr = getelementptr inbounds nuw [36 x i8], ptr %.sroa.5417.0.copyload, i64 %i.kp ; 9 uses
  %i.ks = mul nsw i64 %i.kq, %i.kf
  %i.kt = getelementptr [4 x i8], ptr %i.ju, i64 %i.ks ; 3 uses
  br i1 %i.kh, label %.epil.preheader677, label %.split.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.split.i.new
  br i1 %lcmp.mod680.not, label %._crit_edge.i, label %.epil.preheader677

.epil.preheader677:                               ; preds = %._crit_edge.i.unr-lcssa, %.split.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.split.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod681)
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %indvars.iv.i.epil.init
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !53
  %i.kw = sext i32 %i.kv to i64
  %i.kx = load float, ptr %i.kr, align 4, !tbaa !112
  %i.ky = getelementptr inbounds nuw [36 x i8], ptr %.sroa.5417.0.copyload, i64 %i.kw
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !112
  %i.la = fmul float %i.kx, %i.kz
  %i.lb = call noundef float @sqrtf(float noundef %i.la) #16
  %i.lc = fdiv float 1.000000e+00, %i.lb          ; 2 uses
  %.idx93.i.epil = mul i64 %indvars.iv.i.epil.init, 12
  %i.ld = getelementptr i8, ptr %i.kt, i64 %.idx93.i.epil ; 3 uses
  %i.le = load <2 x float>, ptr %i.ld, align 4, !tbaa !96
  %i.lf = insertelement <2 x float> poison, float %i.lc, i64 0
  %i.lg = shufflevector <2 x float> %i.lf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lh = fmul <2 x float> %i.lg, %i.le
  store <2 x float> %i.lh, ptr %i.ld, align 4, !tbaa !96
  %i.li = getelementptr i8, ptr %i.ld, i64 8      ; 2 uses
  %i.lj = load float, ptr %i.li, align 4, !tbaa !96
  %i.lk = fmul float %i.lc, %i.lj
  store float %i.lk, ptr %i.li, align 4, !tbaa !96
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader677
  %i.ll = add nuw nsw i64 %i.kq, 1
  %i.lm = mul nsw i64 %i.ll, %i.kf
  %i.ln = getelementptr [4 x i8], ptr %i.ju, i64 %i.lm ; 3 uses
  br i1 %i.kj, label %.epil.preheader684, label %._crit_edge.i.new

._crit_edge.i.new:                                ; preds = %._crit_edge.i, %._crit_edge.i.new
  %indvars.iv.1.i = phi i64 [ %indvars.iv.next.1.i.1, %._crit_edge.i.new ], [ 0, %._crit_edge.i ] ; 4 uses
  %niter690 = phi i64 [ %niter690.next.1, %._crit_edge.i.new ], [ 0, %._crit_edge.i ]
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %indvars.iv.1.i
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !53
  %i.lq = sext i32 %i.lp to i64
  %i.lr = load float, ptr %i.kr, align 4, !tbaa !112
  %i.ls = getelementptr inbounds nuw [36 x i8], ptr %.sroa.5417.0.copyload, i64 %i.lq
  %i.lt = load float, ptr %i.ls, align 4, !tbaa !112
  %i.lu = fmul float %i.lr, %i.lt
  %i.lv = call noundef float @sqrtf(float noundef %i.lu) #16
  %i.lw = fdiv float 1.000000e+00, %i.lv          ; 2 uses
  %.idx94.i = mul i64 %indvars.iv.1.i, 12
  %i.lx = getelementptr i8, ptr %i.ln, i64 %.idx94.i ; 3 uses
  %i.ly = load <2 x float>, ptr %i.lx, align 4, !tbaa !96
  %i.lz = insertelement <2 x float> poison, float %i.lw, i64 0
  %i.ma = shufflevector <2 x float> %i.lz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mb = fmul <2 x float> %i.ma, %i.ly
  store <2 x float> %i.mb, ptr %i.lx, align 4, !tbaa !96
  %i.mc = getelementptr i8, ptr %i.lx, i64 8      ; 2 uses
  %i.md = load float, ptr %i.mc, align 4, !tbaa !96
  %i.me = fmul float %i.lw, %i.md
  store float %i.me, ptr %i.mc, align 4, !tbaa !96
  %indvars.iv.next.1.i = or disjoint i64 %indvars.iv.1.i, 1 ; 2 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %indvars.iv.next.1.i
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !53
  %i.mh = sext i32 %i.mg to i64
  %i.mi = load float, ptr %i.kr, align 4, !tbaa !112
  %i.mj = getelementptr inbounds nuw [36 x i8], ptr %.sroa.5417.0.copyload, i64 %i.mh
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !112
  %i.ml = fmul float %i.mi, %i.mk
  %i.mm = call noundef float @sqrtf(float noundef %i.ml) #16
  %i.mn = fdiv float 1.000000e+00, %i.mm          ; 2 uses
  %.idx94.i.1 = mul i64 %indvars.iv.next.1.i, 12
  %i.mo = getelementptr i8, ptr %i.ln, i64 %.idx94.i.1 ; 3 uses
  %i.mp = load <2 x float>, ptr %i.mo, align 4, !tbaa !96
  %i.mq = insertelement <2 x float> poison, float %i.mn, i64 0
  %i.mr = shufflevector <2 x float> %i.mq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ms = fmul <2 x float> %i.mr, %i.mp
  store <2 x float> %i.ms, ptr %i.mo, align 4, !tbaa !96
  %i.mt = getelementptr i8, ptr %i.mo, i64 8      ; 2 uses
  %i.mu = load float, ptr %i.mt, align 4, !tbaa !96
  %i.mv = fmul float %i.mn, %i.mu
  store float %i.mv, ptr %i.mt, align 4, !tbaa !96
  %indvars.iv.next.1.i.1 = add nuw nsw i64 %indvars.iv.1.i, 2 ; 2 uses
  %niter690.next.1 = add nuw nsw i64 %niter690, 2 ; 2 uses
  %niter690.ncmp.1 = icmp eq i64 %niter690.next.1, %unroll_iter689
  br i1 %niter690.ncmp.1, label %._crit_edge.1.i.unr-lcssa, label %._crit_edge.i.new, !llvm.loop !32

._crit_edge.1.i.unr-lcssa:                        ; preds = %._crit_edge.i.new
  br i1 %lcmp.mod687.not, label %._crit_edge.1.i, label %.epil.preheader684

.epil.preheader684:                               ; preds = %._crit_edge.1.i.unr-lcssa, %._crit_edge.i
  %indvars.iv.1.i.epil.init = phi i64 [ 0, %._crit_edge.i ], [ %indvars.iv.next.1.i.1, %._crit_edge.1.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod688)
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %indvars.iv.1.i.epil.init
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !53
  %i.my = sext i32 %i.mx to i64
  %i.mz = load float, ptr %i.kr, align 4, !tbaa !112
  %i.na = getelementptr inbounds nuw [36 x i8], ptr %.sroa.5417.0.copyload, i64 %i.my
  %i.nb = load float, ptr %i.na, align 4, !tbaa !112
  %i.nc = fmul float %i.mz, %i.nb
  %i.nd = call noundef float @sqrtf(float noundef %i.nc) #16
  %i.ne = fdiv float 1.000000e+00, %i.nd          ; 2 uses
  %.idx94.i.epil = mul i64 %indvars.iv.1.i.epil.init, 12
  %i.nf = getelementptr i8, ptr %i.ln, i64 %.idx94.i.epil ; 3 uses
  %i.ng = load <2 x float>, ptr %i.nf, align 4, !tbaa !96
  %i.nh = insertelement <2 x float> poison, float %i.ne, i64 0
  %i.ni = shufflevector <2 x float> %i.nh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nj = fmul <2 x float> %i.ni, %i.ng
  store <2 x float> %i.nj, ptr %i.nf, align 4, !tbaa !96
  %i.nk = getelementptr i8, ptr %i.nf, i64 8      ; 2 uses
  %i.nl = load float, ptr %i.nk, align 4, !tbaa !96
  %i.nm = fmul float %i.ne, %i.nl
  store float %i.nm, ptr %i.nk, align 4, !tbaa !96
  br label %._crit_edge.1.i

._crit_edge.1.i:                                  ; preds = %._crit_edge.1.i.unr-lcssa, %.epil.preheader684
  %i.nn = add nuw nsw i64 %i.kq, 2
  %i.no = mul nsw i64 %i.nn, %i.kf
  %i.np = getelementptr [4 x i8], ptr %i.ju, i64 %i.no ; 3 uses
  br i1 %i.kl, label %.epil.preheader691, label %._crit_edge.1.i.new

._crit_edge.1.i.new:                              ; preds = %._crit_edge.1.i, %._crit_edge.1.i.new
  %indvars.iv.2.i = phi i64 [ %indvars.iv.next.2.i.1, %._crit_edge.1.i.new ], [ 0, %._crit_edge.1.i ] ; 4 uses
  %niter697 = phi i64 [ %niter697.next.1, %._crit_edge.1.i.new ], [ 0, %._crit_edge.1.i ]
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %indvars.iv.2.i
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !53
  %i.ns = sext i32 %i.nr to i64
  %i.nt = load float, ptr %i.kr, align 4, !tbaa !112
  %i.nu = getelementptr inbounds nuw [36 x i8], ptr %.sroa.5417.0.copyload, i64 %i.ns
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !112
  %i.nw = fmul float %i.nt, %i.nv
  %i.nx = call noundef float @sqrtf(float noundef %i.nw) #16
  %i.ny = fdiv float 1.000000e+00, %i.nx          ; 2 uses
  %.idx95.i = mul i64 %indvars.iv.2.i, 12
  %i.nz = getelementptr i8, ptr %i.np, i64 %.idx95.i ; 3 uses
  %i.oa = load <2 x float>, ptr %i.nz, align 4, !tbaa !96
  %i.ob = insertelement <2 x float> poison, float %i.ny, i64 0
  %i.oc = shufflevector <2 x float> %i.ob, <2 x float> poison, <2 x i32> zeroinitializer
  %i.od = fmul <2 x float> %i.oc, %i.oa
  store <2 x float> %i.od, ptr %i.nz, align 4, !tbaa !96
  %i.oe = getelementptr i8, ptr %i.nz, i64 8      ; 2 uses
  %i.of = load float, ptr %i.oe, align 4, !tbaa !96
  %i.og = fmul float %i.ny, %i.of
  store float %i.og, ptr %i.oe, align 4, !tbaa !96
  %indvars.iv.next.2.i = or disjoint i64 %indvars.iv.2.i, 1 ; 2 uses
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %indvars.iv.next.2.i
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !53
  %i.oj = sext i32 %i.oi to i64
  %i.ok = load float, ptr %i.kr, align 4, !tbaa !112
  %i.ol = getelementptr inbounds nuw [36 x i8], ptr %.sroa.5417.0.copyload, i64 %i.oj
  %i.om = load float, ptr %i.ol, align 4, !tbaa !112
  %i.on = fmul float %i.ok, %i.om
  %i.oo = call noundef float @sqrtf(float noundef %i.on) #16
  %i.op = fdiv float 1.000000e+00, %i.oo          ; 2 uses
  %.idx95.i.1 = mul i64 %indvars.iv.next.2.i, 12
  %i.oq = getelementptr i8, ptr %i.np, i64 %.idx95.i.1 ; 3 uses
  %i.or = load <2 x float>, ptr %i.oq, align 4, !tbaa !96
  %i.os = insertelement <2 x float> poison, float %i.op, i64 0
  %i.ot = shufflevector <2 x float> %i.os, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ou = fmul <2 x float> %i.ot, %i.or
  store <2 x float> %i.ou, ptr %i.oq, align 4, !tbaa !96
  %i.ov = getelementptr i8, ptr %i.oq, i64 8      ; 2 uses
  %i.ow = load float, ptr %i.ov, align 4, !tbaa !96
  %i.ox = fmul float %i.op, %i.ow
  store float %i.ox, ptr %i.ov, align 4, !tbaa !96
  %indvars.iv.next.2.i.1 = add nuw nsw i64 %indvars.iv.2.i, 2 ; 2 uses
  %niter697.next.1 = add nuw nsw i64 %niter697, 2 ; 2 uses
  %niter697.ncmp.1 = icmp eq i64 %niter697.next.1, %unroll_iter696
  br i1 %niter697.ncmp.1, label %._crit_edge.2.i.unr-lcssa, label %._crit_edge.1.i.new, !llvm.loop !32

._crit_edge.2.i.unr-lcssa:                        ; preds = %._crit_edge.1.i.new
  br i1 %lcmp.mod694.not, label %._crit_edge.2.i, label %.epil.preheader691

.epil.preheader691:                               ; preds = %._crit_edge.2.i.unr-lcssa, %._crit_edge.1.i
  %indvars.iv.2.i.epil.init = phi i64 [ 0, %._crit_edge.1.i ], [ %indvars.iv.next.2.i.1, %._crit_edge.2.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod695)
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %indvars.iv.2.i.epil.init
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !53
  %i.pa = sext i32 %i.oz to i64
  %i.pb = load float, ptr %i.kr, align 4, !tbaa !112
  %i.pc = getelementptr inbounds nuw [36 x i8], ptr %.sroa.5417.0.copyload, i64 %i.pa
  %i.pd = load float, ptr %i.pc, align 4, !tbaa !112
  %i.pe = fmul float %i.pb, %i.pd
  %i.pf = call noundef float @sqrtf(float noundef %i.pe) #16
  %i.pg = fdiv float 1.000000e+00, %i.pf          ; 2 uses
  %.idx95.i.epil = mul i64 %indvars.iv.2.i.epil.init, 12
  %i.ph = getelementptr i8, ptr %i.np, i64 %.idx95.i.epil ; 3 uses
  %i.pi = load <2 x float>, ptr %i.ph, align 4, !tbaa !96
  %i.pj = insertelement <2 x float> poison, float %i.pg, i64 0
  %i.pk = shufflevector <2 x float> %i.pj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pl = fmul <2 x float> %i.pk, %i.pi
  store <2 x float> %i.pl, ptr %i.ph, align 4, !tbaa !96
  %i.pm = getelementptr i8, ptr %i.ph, i64 8      ; 2 uses
  %i.pn = load float, ptr %i.pm, align 4, !tbaa !96
  %i.po = fmul float %i.pg, %i.pn
  store float %i.po, ptr %i.pm, align 4, !tbaa !96
  br label %._crit_edge.2.i

._crit_edge.2.i:                                  ; preds = %._crit_edge.2.i.unr-lcssa, %.epil.preheader691
  %indvars.iv.next82.i = add nuw nsw i64 %indvars.iv81.i, 1 ; 2 uses
  %exitcond84.not.i = icmp eq i64 %indvars.iv.next82.i, %i.kd
  br i1 %exitcond84.not.i, label %.loopexit67.i, label %.split.i, !llvm.loop !33

.split.i.new:                                     ; preds = %.split.i, %.split.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.split.i.new ], [ 0, %.split.i ] ; 4 uses
  %niter683 = phi i64 [ %niter683.next.1, %.split.i.new ], [ 0, %.split.i ]
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %indvars.iv.i
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !53
  %i.pr = sext i32 %i.pq to i64
  %i.ps = load float, ptr %i.kr, align 4, !tbaa !112
  %i.pt = getelementptr inbounds nuw [36 x i8], ptr %.sroa.5417.0.copyload, i64 %i.pr
  %i.pu = load float, ptr %i.pt, align 4, !tbaa !112
  %i.pv = fmul float %i.ps, %i.pu
  %i.pw = call noundef float @sqrtf(float noundef %i.pv) #16
  %i.px = fdiv float 1.000000e+00, %i.pw          ; 2 uses
  %.idx93.i = mul i64 %indvars.iv.i, 12
  %i.py = getelementptr i8, ptr %i.kt, i64 %.idx93.i ; 3 uses
  %i.pz = load <2 x float>, ptr %i.py, align 4, !tbaa !96
  %i.qa = insertelement <2 x float> poison, float %i.px, i64 0
  %i.qb = shufflevector <2 x float> %i.qa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qc = fmul <2 x float> %i.qb, %i.pz
  store <2 x float> %i.qc, ptr %i.py, align 4, !tbaa !96
  %i.qd = getelementptr i8, ptr %i.py, i64 8      ; 2 uses
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !96
  %i.qf = fmul float %i.px, %i.qe
  store float %i.qf, ptr %i.qd, align 4, !tbaa !96
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %indvars.iv.next.i
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !53
  %i.qi = sext i32 %i.qh to i64
  %i.qj = load float, ptr %i.kr, align 4, !tbaa !112
  %i.qk = getelementptr inbounds nuw [36 x i8], ptr %.sroa.5417.0.copyload, i64 %i.qi
  %i.ql = load float, ptr %i.qk, align 4, !tbaa !112
  %i.qm = fmul float %i.qj, %i.ql
  %i.qn = call noundef float @sqrtf(float noundef %i.qm) #16
  %i.qo = fdiv float 1.000000e+00, %i.qn          ; 2 uses
  %.idx93.i.1 = mul i64 %indvars.iv.next.i, 12
  %i.qp = getelementptr i8, ptr %i.kt, i64 %.idx93.i.1 ; 3 uses
  %i.qq = load <2 x float>, ptr %i.qp, align 4, !tbaa !96
  %i.qr = insertelement <2 x float> poison, float %i.qo, i64 0
  %i.qs = shufflevector <2 x float> %i.qr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qt = fmul <2 x float> %i.qs, %i.qq
  store <2 x float> %i.qt, ptr %i.qp, align 4, !tbaa !96
  %i.qu = getelementptr i8, ptr %i.qp, i64 8      ; 2 uses
  %i.qv = load float, ptr %i.qu, align 4, !tbaa !96
  %i.qw = fmul float %i.qo, %i.qv
  store float %i.qw, ptr %i.qu, align 4, !tbaa !96
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter683.next.1 = add nuw nsw i64 %niter683, 2 ; 2 uses
  %niter683.ncmp.1 = icmp eq i64 %niter683.next.1, %unroll_iter682
  br i1 %niter683.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.split.i.new, !llvm.loop !32

.loopexit67.i:                                    ; preds = %._crit_edge.2.i, %.preheader66.i, %_ZL20allocateEigenvectorsiiib.exit
  %i.qx = load ptr, ptr @stderr, align 8, !tbaa !95
  %i.qy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qx, ptr noundef nonnull @.str.112, i32 noundef %i.kb, i32 noundef %i.kc) #20 ; 0 uses
  %i.qz = load ptr, ptr @stderr, align 8, !tbaa !95
  %i.ra = call i32 @fflush(ptr noundef %i.qz)     ; 0 uses
  %i.rb = add nsw i32 %i.kb, -1
  %i.rc = add nsw i32 %i.kc, -1
  invoke void @_Z11eigensolverPfiiiS_S_(ptr noundef %i.ju, i32 noundef %i.jv, i32 noundef %i.rb, i32 noundef %i.rc, ptr noundef %i.ji, ptr noundef %i.jt)
          to label %.noexc240 unwind label %bb.bf

.noexc240:                                        ; preds = %.loopexit67.i
  %i.rd = icmp ne ptr %i.jt, null
  %.not77.i = icmp sge i32 %i.kc, %i.kb
  %i.re = and i1 %i.rd, %.not77.i
  %or.cond96.not.i = and i1 %i.re, %i.jx
  br i1 %or.cond96.not.i, label %.preheader.lr.ph.i, label %_ZL16nma_full_hessianPfibPK10t_topologyN3gmx8ArrayRefIKiEEiiS_S_.exit

.preheader.lr.ph.i:                               ; preds = %.noexc240
  %29 = ptrtoint ptr %i.jz to i64
  %30 = sub i64 %29, %i.ka                        ; 3 uses
  %i.rf = ashr exact i64 %30, 2                   ; 3 uses
  %i.rg = icmp sgt i64 %i.rf, 0
  br i1 %i.rg, label %.preheader.lr.ph.split.i, label %_ZL16nma_full_hessianPfibPK10t_topologyN3gmx8ArrayRefIKiEEiiS_S_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.rh = sext i32 %i.jv to i64
  %reass.sub = sub i32 %i.kc, %i.kb
  %i.ri = add i32 %reass.sub, 1
  %wide.trip.count.i = zext i32 %i.ri to i64
  %i.rj = icmp eq i64 %30, 4
  %unroll_iter703 = and i64 %i.rf, 9223372036854775806
  %i.rk = and i64 %30, 4
  %lcmp.mod701.not = icmp eq i64 %i.rk, 0
  %lcmp.mod702 = trunc i64 %i.rf to i1
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge76.i, %.preheader.lr.ph.split.i
  %indvars.iv87.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %indvars.iv.next88.i, %._crit_edge76.i ] ; 2 uses
  %i.rl = mul nsw i64 %indvars.iv87.i, %i.rh
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.jt, i64 %i.rl ; 3 uses
  br i1 %i.rj, label %.epil.preheader698, label %.preheader.i.new

._crit_edge76.i.unr-lcssa:                        ; preds = %.preheader.i.new
  br i1 %lcmp.mod701.not, label %._crit_edge76.i, label %.epil.preheader698

.epil.preheader698:                               ; preds = %._crit_edge76.i.unr-lcssa, %.preheader.i
  %.04974.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %i.td, %._crit_edge76.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod702)
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %.04974.i.epil.init
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !53
  %i.ro = sext i32 %i.rn to i64
  %i.rp = getelementptr inbounds nuw [36 x i8], ptr %.sroa.5417.0.copyload, i64 %i.ro
  %i.rq = load float, ptr %i.rp, align 4, !tbaa !112
  %i.rr = call noundef float @sqrtf(float noundef %i.rq) #16
  %i.rs = fdiv float 1.000000e+00, %i.rr          ; 2 uses
  %.idx.i.epil = mul i64 %.04974.i.epil.init, 12
  %gep.i.epil = getelementptr i8, ptr %invariant.gep.i, i64 %.idx.i.epil ; 3 uses
  %i.rt = load <2 x float>, ptr %gep.i.epil, align 4, !tbaa !96
  %i.ru = insertelement <2 x float> poison, float %i.rs, i64 0
  %i.rv = shufflevector <2 x float> %i.ru, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rw = fmul <2 x float> %i.rv, %i.rt
  store <2 x float> %i.rw, ptr %gep.i.epil, align 4, !tbaa !96
  %i.rx = getelementptr i8, ptr %gep.i.epil, i64 8 ; 2 uses
  %i.ry = load float, ptr %i.rx, align 4, !tbaa !96
  %i.rz = fmul float %i.rs, %i.ry
  store float %i.rz, ptr %i.rx, align 4, !tbaa !96
  br label %._crit_edge76.i

._crit_edge76.i:                                  ; preds = %._crit_edge76.i.unr-lcssa, %.epil.preheader698
  %indvars.iv.next88.i = add nuw nsw i64 %indvars.iv87.i, 1 ; 2 uses
  %exitcond90.not.i = icmp eq i64 %indvars.iv.next88.i, %wide.trip.count.i
  br i1 %exitcond90.not.i, label %_ZL16nma_full_hessianPfibPK10t_topologyN3gmx8ArrayRefIKiEEiiS_S_.exit, label %.preheader.i, !llvm.loop !34

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %.04974.i = phi i64 [ %i.td, %.preheader.i.new ], [ 0, %.preheader.i ] ; 4 uses
  %niter704 = phi i64 [ %niter704.next.1, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %.04974.i
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !53
  %i.sc = sext i32 %i.sb to i64
  %i.sd = getelementptr inbounds nuw [36 x i8], ptr %.sroa.5417.0.copyload, i64 %i.sc
  %i.se = load float, ptr %i.sd, align 4, !tbaa !112
  %i.sf = call noundef float @sqrtf(float noundef %i.se) #16
  %i.sg = fdiv float 1.000000e+00, %i.sf          ; 2 uses
  %.idx.i = mul i64 %.04974.i, 12
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %.idx.i ; 3 uses
  %i.sh = load <2 x float>, ptr %gep.i, align 4, !tbaa !96
  %i.si = insertelement <2 x float> poison, float %i.sg, i64 0
  %i.sj = shufflevector <2 x float> %i.si, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sk = fmul <2 x float> %i.sj, %i.sh
  store <2 x float> %i.sk, ptr %gep.i, align 4, !tbaa !96
  %i.sl = getelementptr i8, ptr %gep.i, i64 8     ; 2 uses
  %i.sm = load float, ptr %i.sl, align 4, !tbaa !96
  %i.sn = fmul float %i.sg, %i.sm
  store float %i.sn, ptr %i.sl, align 4, !tbaa !96
  %i.so = or disjoint i64 %.04974.i, 1            ; 2 uses
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %i.so
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !53
  %i.sr = sext i32 %i.sq to i64
  %i.ss = getelementptr inbounds nuw [36 x i8], ptr %.sroa.5417.0.copyload, i64 %i.sr
  %i.st = load float, ptr %i.ss, align 4, !tbaa !112
  %i.su = call noundef float @sqrtf(float noundef %i.st) #16
  %i.sv = fdiv float 1.000000e+00, %i.su          ; 2 uses
  %.idx.i.1 = mul i64 %i.so, 12
  %gep.i.1 = getelementptr i8, ptr %invariant.gep.i, i64 %.idx.i.1 ; 3 uses
  %i.sw = load <2 x float>, ptr %gep.i.1, align 4, !tbaa !96
  %i.sx = insertelement <2 x float> poison, float %i.sv, i64 0
  %i.sy = shufflevector <2 x float> %i.sx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sz = fmul <2 x float> %i.sy, %i.sw
  store <2 x float> %i.sz, ptr %gep.i.1, align 4, !tbaa !96
  %i.ta = getelementptr i8, ptr %gep.i.1, i64 8   ; 2 uses
  %i.tb = load float, ptr %i.ta, align 4, !tbaa !96
  %i.tc = fmul float %i.sv, %i.tb
  store float %i.tc, ptr %i.ta, align 4, !tbaa !96
  %i.td = add nuw nsw i64 %.04974.i, 2            ; 2 uses
  %niter704.next.1 = add nuw nsw i64 %niter704, 2 ; 2 uses
  %niter704.ncmp.1 = icmp eq i64 %niter704.next.1, %unroll_iter703
  br i1 %niter704.ncmp.1, label %._crit_edge76.i.unr-lcssa, label %.preheader.i.new, !llvm.loop !35

bb.bf:                                            ; preds = %.loopexit63.i, %bb.bl, %bb.bk, %bb.bh, %.loopexit67.i, %bb.be, %bb.bb, %bb.az
  %i.te = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bg:                                            ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit236
  %i.tf = load i32, ptr @_ZZ9gmx_nmeigiPPcE3end, align 4, !tbaa !53 ; 2 uses
  %i.tg = sext i32 %i.jk to i64
  %i.th = sext i32 %i.tf to i64
  %i.ti = mul nsw i64 %i.th, %i.tg                ; 2 uses
  %i.tj = icmp ugt i64 %i.ti, 2147483647
  br i1 %i.tj, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA65_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 1 dereferenceable(65) @.str.68, i8 noundef zeroext 2)
          to label %.noexc242 unwind label %bb.bf

.noexc242:                                        ; preds = %bb.bh
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 282, ptr noundef nonnull @.str.109, i32 noundef %i.tf, i32 noundef %i.jk, i32 noundef 2147483647, ptr noundef nonnull @.str.88) #19
          to label %bb.bi unwind label %bb.bj

bb.bi:                                            ; preds = %.noexc242
  unreachable

bb.bj:                                            ; preds = %.noexc242
  %i.tk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %.body

bb.bk:                                            ; preds = %bb.bg
  %i.tl = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.68, i32 noundef 292, i64 noundef range(i64 -2147483648, 2147483648) %i.ti, i64 noundef 4)
          to label %_ZL20allocateEigenvectorsiiib.exit246 unwind label %bb.bf ; 5 uses

_ZL20allocateEigenvectorsiiib.exit246:            ; preds = %bb.bk
  %i.tm = load ptr, ptr %i.s, align 8, !tbaa !57  ; 4 uses
  %i.tn = load i8, ptr @_ZZ9gmx_nmeigiPPcE2bM, align 1, !tbaa !70, !range !71, !noundef !72
  %i.to = trunc nuw i8 %i.tn to i1                ; 2 uses
  %i.tp = load ptr, ptr %11, align 8, !tbaa !91   ; 8 uses
  %i.tq = load ptr, ptr %i.ei, align 8, !tbaa !90
  %i.tr = ptrtoint ptr %i.tp to i64
  %31 = load i32, ptr @_ZZ9gmx_nmeigiPPcE3end, align 4, !tbaa !53 ; 4 uses
  %32 = ptrtoint ptr %i.tq to i64
  %33 = sub i64 %32, %i.tr                        ; 3 uses
  %i.ts = ashr exact i64 %33, 2                   ; 5 uses
  %i.tt = mul nsw i64 %i.ts, 3
  %.not.i247 = icmp eq ptr %i.tm, null
  br i1 %.not.i247, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %_ZL20allocateEigenvectorsiiib.exit246
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.115, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZL18nma_sparse_hessianP16gmx_sparsematrixbPK10t_topologyN3gmx8ArrayRefIKiEEiPfS8_ENK3$_0clEv", ptr noundef nonnull @.str.68, i32 noundef 218) #19
          to label %.noexc263 unwind label %bb.bf

.noexc263:                                        ; preds = %bb.bl
  unreachable

bb.bm:                                            ; preds = %_ZL20allocateEigenvectorsiiib.exit246
  %i.tu = icmp sgt i64 %i.ts, 0                   ; 2 uses
  %or.cond73.i = select i1 %i.to, i1 %i.tu, i1 false
  br i1 %or.cond73.i, label %.lr.ph67.i, label %.loopexit63.i

.lr.ph67.i:                                       ; preds = %bb.bm
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tm, i64 8
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !101 ; 3 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tm, i64 24 ; 3 uses
  br label %bb.bn

bb.bn:                                            ; preds = %._crit_edge.2.i254, %.lr.ph67.i
  %indvars.iv76.i = phi i64 [ 0, %.lr.ph67.i ], [ %indvars.iv.next77.i, %._crit_edge.2.i254 ] ; 4 uses
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.tp, i64 %indvars.iv76.i
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !53
  %i.ua = sext i32 %i.tz to i64                   ; 3 uses
  %i.ub = mul nuw nsw i64 %indvars.iv76.i, 3      ; 2 uses
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.tw, i64 %i.ub ; 2 uses
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !53
  %i.ue = icmp sgt i32 %i.ud, 0
  br i1 %i.ue, label %.lr.ph.i260, label %._crit_edge.i252

.lr.ph.i260:                                      ; preds = %bb.bn
  %i.uf = load ptr, ptr %i.tx, align 8, !tbaa !102
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %i.uf, i64 %i.ub
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !104
  %i.ui = getelementptr inbounds nuw [36 x i8], ptr %.sroa.5417.0.copyload, i64 %i.ua
  %i.uj = load float, ptr %i.ui, align 4, !tbaa !112
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %.lr.ph.i260
  %indvars.iv.i261 = phi i64 [ 0, %.lr.ph.i260 ], [ %indvars.iv.next.i262, %bb.bo ] ; 2 uses
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %i.uh, i64 %indvars.iv.i261 ; 2 uses
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !106
  %i.um = sdiv i32 %i.ul, 3
  %i.un = sext i32 %i.um to i64
  %i.uo = getelementptr inbounds [4 x i8], ptr %i.tp, i64 %i.un
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !53
  %i.uq = sext i32 %i.up to i64
  %i.ur = getelementptr inbounds nuw [36 x i8], ptr %.sroa.5417.0.copyload, i64 %i.uq
  %i.us = load float, ptr %i.ur, align 4, !tbaa !112
  %i.ut = fmul float %i.uj, %i.us
  %i.uu = call noundef float @sqrtf(float noundef %i.ut) #16
  %i.uv = fdiv float 1.000000e+00, %i.uu
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uk, i64 4 ; 2 uses
  %i.ux = load float, ptr %i.uw, align 4, !tbaa !107
  %i.uy = fmul float %i.ux, %i.uv
  store float %i.uy, ptr %i.uw, align 4, !tbaa !107
  %indvars.iv.next.i262 = add nuw nsw i64 %indvars.iv.i261, 1 ; 2 uses
  %i.uz = load i32, ptr %i.uc, align 4, !tbaa !53
  %i.va = sext i32 %i.uz to i64
  %i.vb = icmp slt i64 %indvars.iv.next.i262, %i.va
  br i1 %i.vb, label %bb.bo, label %._crit_edge.i252, !llvm.loop !36

._crit_edge.i252:                                 ; preds = %bb.bo, %bb.bn
  %i.vc = mul i64 %indvars.iv76.i, 12884901888    ; 2 uses
  %sext.i = add i64 %i.vc, 4294967296
  %i.vd = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.ve = getelementptr inbounds [4 x i8], ptr %i.tw, i64 %i.vd ; 2 uses
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !53
  %i.vg = icmp sgt i32 %i.vf, 0
  br i1 %i.vg, label %.lr.ph.1.i, label %._crit_edge.1.i253

.lr.ph.1.i:                                       ; preds = %._crit_edge.i252
  %i.vh = load ptr, ptr %i.tx, align 8, !tbaa !102
  %i.vi = getelementptr inbounds [8 x i8], ptr %i.vh, i64 %i.vd
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !104
  %i.vk = getelementptr inbounds nuw [36 x i8], ptr %.sroa.5417.0.copyload, i64 %i.ua
  %i.vl = load float, ptr %i.vk, align 4, !tbaa !112
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bp, %.lr.ph.1.i
  %indvars.iv.1.i258 = phi i64 [ 0, %.lr.ph.1.i ], [ %indvars.iv.next.1.i259, %bb.bp ] ; 2 uses
  %i.vm = getelementptr inbounds nuw [8 x i8], ptr %i.vj, i64 %indvars.iv.1.i258 ; 2 uses
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !106
  %i.vo = sdiv i32 %i.vn, 3
  %i.vp = sext i32 %i.vo to i64
  %i.vq = getelementptr inbounds [4 x i8], ptr %i.tp, i64 %i.vp
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !53
  %i.vs = sext i32 %i.vr to i64
  %i.vt = getelementptr inbounds nuw [36 x i8], ptr %.sroa.5417.0.copyload, i64 %i.vs
  %i.vu = load float, ptr %i.vt, align 4, !tbaa !112
  %i.vv = fmul float %i.vl, %i.vu
  %i.vw = call noundef float @sqrtf(float noundef %i.vv) #16
  %i.vx = fdiv float 1.000000e+00, %i.vw
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vm, i64 4 ; 2 uses
  %i.vz = load float, ptr %i.vy, align 4, !tbaa !107
  %i.wa = fmul float %i.vz, %i.vx
  store float %i.wa, ptr %i.vy, align 4, !tbaa !107
  %indvars.iv.next.1.i259 = add nuw nsw i64 %indvars.iv.1.i258, 1 ; 2 uses
  %i.wb = load i32, ptr %i.ve, align 4, !tbaa !53
  %i.wc = sext i32 %i.wb to i64
  %i.wd = icmp slt i64 %indvars.iv.next.1.i259, %i.wc
  br i1 %i.wd, label %bb.bp, label %._crit_edge.1.i253, !llvm.loop !36

._crit_edge.1.i253:                               ; preds = %bb.bp, %._crit_edge.i252
  %sext91.i = add i64 %i.vc, 8589934592
  %i.we = ashr exact i64 %sext91.i, 32            ; 2 uses
  %i.wf = getelementptr inbounds [4 x i8], ptr %i.tw, i64 %i.we ; 2 uses
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !53
  %i.wh = icmp sgt i32 %i.wg, 0
  br i1 %i.wh, label %.lr.ph.2.i, label %._crit_edge.2.i254

.lr.ph.2.i:                                       ; preds = %._crit_edge.1.i253
  %i.wi = load ptr, ptr %i.tx, align 8, !tbaa !102
  %i.wj = getelementptr inbounds [8 x i8], ptr %i.wi, i64 %i.we
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !104
  %i.wl = getelementptr inbounds nuw [36 x i8], ptr %.sroa.5417.0.copyload, i64 %i.ua
  %i.wm = load float, ptr %i.wl, align 4, !tbaa !112
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bq, %.lr.ph.2.i
  %indvars.iv.2.i256 = phi i64 [ 0, %.lr.ph.2.i ], [ %indvars.iv.next.2.i257, %bb.bq ] ; 2 uses
  %i.wn = getelementptr inbounds nuw [8 x i8], ptr %i.wk, i64 %indvars.iv.2.i256 ; 2 uses
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !106
  %i.wp = sdiv i32 %i.wo, 3
  %i.wq = sext i32 %i.wp to i64
  %i.wr = getelementptr inbounds [4 x i8], ptr %i.tp, i64 %i.wq
  %i.ws = load i32, ptr %i.wr, align 4, !tbaa !53
  %i.wt = sext i32 %i.ws to i64
  %i.wu = getelementptr inbounds nuw [36 x i8], ptr %.sroa.5417.0.copyload, i64 %i.wt
  %i.wv = load float, ptr %i.wu, align 4, !tbaa !112
  %i.ww = fmul float %i.wm, %i.wv
  %i.wx = call noundef float @sqrtf(float noundef %i.ww) #16
  %i.wy = fdiv float 1.000000e+00, %i.wx
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wn, i64 4 ; 2 uses
  %i.xa = load float, ptr %i.wz, align 4, !tbaa !107
  %i.xb = fmul float %i.xa, %i.wy
  store float %i.xb, ptr %i.wz, align 4, !tbaa !107
  %indvars.iv.next.2.i257 = add nuw nsw i64 %indvars.iv.2.i256, 1 ; 2 uses
  %i.xc = load i32, ptr %i.wf, align 4, !tbaa !53
  %i.xd = sext i32 %i.xc to i64
  %i.xe = icmp slt i64 %indvars.iv.next.2.i257, %i.xd
  br i1 %i.xe, label %bb.bq, label %._crit_edge.2.i254, !llvm.loop !36

._crit_edge.2.i254:                               ; preds = %bb.bq, %._crit_edge.1.i253
  %indvars.iv.next77.i = add nuw nsw i64 %indvars.iv76.i, 1 ; 2 uses
  %exitcond.not.i255 = icmp eq i64 %indvars.iv.next77.i, %i.ts
  br i1 %exitcond.not.i255, label %.loopexit63.i, label %bb.bn, !llvm.loop !37

.loopexit63.i:                                    ; preds = %._crit_edge.2.i254, %bb.bm
  %i.xf = load ptr, ptr @stderr, align 8, !tbaa !95
  %i.xg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.xf, ptr noundef nonnull @.str.113, i32 noundef %31) #20 ; 0 uses
  %i.xh = load ptr, ptr @stderr, align 8, !tbaa !95
  %i.xi = call i32 @fflush(ptr noundef %i.xh)     ; 0 uses
  invoke void @_Z18sparse_eigensolverP16gmx_sparsematrixiPfS1_i(ptr noundef nonnull %i.tm, i32 noundef %31, ptr noundef %i.ji, ptr noundef %i.tl, i32 noundef 10000000)
          to label %.noexc264 unwind label %bb.bf

.noexc264:                                        ; preds = %.loopexit63.i
  %i.xj = icmp ne ptr %i.tl, null
  %i.xk = icmp sgt i32 %31, 0
  %i.xl = and i1 %i.xj, %i.xk
  %or.cond74.i = and i1 %i.xl, %i.to
  %i.xm = select i1 %or.cond74.i, i1 %i.tu, i1 false
  br i1 %i.xm, label %.preheader.lr.ph.split.i248, label %_ZL16nma_full_hessianPfibPK10t_topologyN3gmx8ArrayRefIKiEEiiS_S_.exit

.preheader.lr.ph.split.i248:                      ; preds = %.noexc264
  %wide.trip.count.i249 = zext nneg i32 %31 to i64
  %i.xn = icmp eq i64 %33, 4
  %unroll_iter710 = and i64 %i.ts, 9223372036854775806
  %i.xo = and i64 %33, 4
  %lcmp.mod708.not = icmp eq i64 %i.xo, 0
  %lcmp.mod709 = trunc i64 %i.ts to i1
  br label %.preheader.i250

.preheader.i250:                                  ; preds = %._crit_edge71.i, %.preheader.lr.ph.split.i248
  %indvars.iv84.i = phi i64 [ 0, %.preheader.lr.ph.split.i248 ], [ %indvars.iv.next85.i, %._crit_edge71.i ] ; 2 uses
  %i.xp = mul i64 %i.tt, %indvars.iv84.i
  %i.xq = getelementptr [4 x i8], ptr %i.tl, i64 %i.xp ; 3 uses
  br i1 %i.xn, label %.epil.preheader705, label %.preheader.i250.new

._crit_edge71.i.unr-lcssa:                        ; preds = %.preheader.i250.new
  br i1 %lcmp.mod708.not, label %._crit_edge71.i, label %.epil.preheader705

.epil.preheader705:                               ; preds = %._crit_edge71.i.unr-lcssa, %.preheader.i250
  %.069.i.epil.init = phi i64 [ 0, %.preheader.i250 ], [ %i.zl, %._crit_edge71.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod709)
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %i.tp, i64 %.069.i.epil.init
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !53
  %i.xt = sext i32 %i.xs to i64
  %i.xu = getelementptr inbounds nuw [36 x i8], ptr %.sroa.5417.0.copyload, i64 %i.xt
  %i.xv = load float, ptr %i.xu, align 4, !tbaa !112
  %i.xw = call noundef float @sqrtf(float noundef %i.xv) #16
  %i.xx = fdiv float 1.000000e+00, %i.xw          ; 2 uses
  %.idx.i251.epil = mul i64 %.069.i.epil.init, 12
  %i.xy = getelementptr i8, ptr %i.xq, i64 %.idx.i251.epil ; 3 uses
  %i.xz = load <2 x float>, ptr %i.xy, align 4, !tbaa !96
  %i.ya = insertelement <2 x float> poison, float %i.xx, i64 0
  %i.yb = shufflevector <2 x float> %i.ya, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yc = fmul <2 x float> %i.yb, %i.xz
  store <2 x float> %i.yc, ptr %i.xy, align 4, !tbaa !96
  %i.yd = getelementptr i8, ptr %i.xy, i64 8      ; 2 uses
  %i.ye = load float, ptr %i.yd, align 4, !tbaa !96
  %i.yf = fmul float %i.xx, %i.ye
  store float %i.yf, ptr %i.yd, align 4, !tbaa !96
  br label %._crit_edge71.i

._crit_edge71.i:                                  ; preds = %._crit_edge71.i.unr-lcssa, %.epil.preheader705
  %indvars.iv.next85.i = add nuw nsw i64 %indvars.iv84.i, 1 ; 2 uses
  %exitcond87.not.i = icmp eq i64 %indvars.iv.next85.i, %wide.trip.count.i249
  br i1 %exitcond87.not.i, label %_ZL16nma_full_hessianPfibPK10t_topologyN3gmx8ArrayRefIKiEEiiS_S_.exit, label %.preheader.i250, !llvm.loop !38

.preheader.i250.new:                              ; preds = %.preheader.i250, %.preheader.i250.new
  %.069.i = phi i64 [ %i.zl, %.preheader.i250.new ], [ 0, %.preheader.i250 ] ; 4 uses
  %niter711 = phi i64 [ %niter711.next.1, %.preheader.i250.new ], [ 0, %.preheader.i250 ]
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %i.tp, i64 %.069.i
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !53
  %i.yi = sext i32 %i.yh to i64
  %i.yj = getelementptr inbounds nuw [36 x i8], ptr %.sroa.5417.0.copyload, i64 %i.yi
  %i.yk = load float, ptr %i.yj, align 4, !tbaa !112
  %i.yl = call noundef float @sqrtf(float noundef %i.yk) #16
  %i.ym = fdiv float 1.000000e+00, %i.yl          ; 2 uses
  %.idx.i251 = mul i64 %.069.i, 12
  %i.yn = getelementptr i8, ptr %i.xq, i64 %.idx.i251 ; 3 uses
  %i.yo = load <2 x float>, ptr %i.yn, align 4, !tbaa !96
  %i.yp = insertelement <2 x float> poison, float %i.ym, i64 0
  %i.yq = shufflevector <2 x float> %i.yp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yr = fmul <2 x float> %i.yq, %i.yo
  store <2 x float> %i.yr, ptr %i.yn, align 4, !tbaa !96
  %i.ys = getelementptr i8, ptr %i.yn, i64 8      ; 2 uses
  %i.yt = load float, ptr %i.ys, align 4, !tbaa !96
  %i.yu = fmul float %i.ym, %i.yt
  store float %i.yu, ptr %i.ys, align 4, !tbaa !96
  %i.yv = or disjoint i64 %.069.i, 1              ; 2 uses
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.tp, i64 %i.yv
  %i.yx = load i32, ptr %i.yw, align 4, !tbaa !53
  %i.yy = sext i32 %i.yx to i64
  %i.yz = getelementptr inbounds nuw [36 x i8], ptr %.sroa.5417.0.copyload, i64 %i.yy
  %i.za = load float, ptr %i.yz, align 4, !tbaa !112
  %i.zb = call noundef float @sqrtf(float noundef %i.za) #16
  %i.zc = fdiv float 1.000000e+00, %i.zb          ; 2 uses
  %.idx.i251.1 = mul i64 %i.yv, 12
  %i.zd = getelementptr i8, ptr %i.xq, i64 %.idx.i251.1 ; 3 uses
  %i.ze = load <2 x float>, ptr %i.zd, align 4, !tbaa !96
  %i.zf = insertelement <2 x float> poison, float %i.zc, i64 0
  %i.zg = shufflevector <2 x float> %i.zf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zh = fmul <2 x float> %i.zg, %i.ze
  store <2 x float> %i.zh, ptr %i.zd, align 4, !tbaa !96
  %i.zi = getelementptr i8, ptr %i.zd, i64 8      ; 2 uses
  %i.zj = load float, ptr %i.zi, align 4, !tbaa !96
  %i.zk = fmul float %i.zc, %i.zj
  store float %i.zk, ptr %i.zi, align 4, !tbaa !96
  %i.zl = add nuw nsw i64 %.069.i, 2              ; 2 uses
  %niter711.next.1 = add nuw nsw i64 %niter711, 2 ; 2 uses
  %niter711.ncmp.1 = icmp eq i64 %niter711.next.1, %unroll_iter710
  br i1 %niter711.ncmp.1, label %._crit_edge71.i.unr-lcssa, label %.preheader.i250.new, !llvm.loop !39

_ZL16nma_full_hessianPfibPK10t_topologyN3gmx8ArrayRefIKiEEiiS_S_.exit: ; preds = %._crit_edge76.i, %._crit_edge71.i, %.noexc264, %.preheader.lr.ph.i, %.noexc240
  %.0157 = phi ptr [ %i.tl, %._crit_edge71.i ], [ %i.jt, %.noexc240 ], [ %i.jt, %.preheader.lr.ph.i ], [ %i.tl, %.noexc264 ], [ %i.jt, %._crit_edge76.i ] ; 2 uses
  %i.zm = load i32, ptr @_ZZ9gmx_nmeigiPPcE5begin, align 4, !tbaa !53 ; 2 uses
  %i.zn = icmp slt i32 %i.zm, 7
  br i1 %i.zn, label %iter.check, label %.critedge

iter.check:                                       ; preds = %_ZL16nma_full_hessianPfibPK10t_topologyN3gmx8ArrayRefIKiEEiiS_S_.exit
  %i.zo = add i32 %i.zm, -1
  %i.zp = sext i32 %i.zo to i64                   ; 7 uses
  %smax = call i64 @llvm.smax.i64(i64 %i.zp, i64 5)
  %i.zq = add nuw i64 %smax, 1
  %i.zr = sub i64 %i.zq, %i.zp                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.zr, 4
  br i1 %min.iters.check, label %.lr.ph445.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check638 = icmp ult i64 %i.zr, 32
  br i1 %min.iters.check638, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.zs = and i64 %i.zr, 28
  %n.vec = and i64 %i.zr, -32                     ; 4 uses
  %i.zt = add i64 %n.vec, %i.zp
  %invariant.gep = getelementptr [4 x i8], ptr %i.ji, i64 %i.zp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.aaj, %vector.body ]
  %vec.phi639 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.aak, %vector.body ]
  %vec.phi640 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.aal, %vector.body ]
  %vec.phi641 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.aam, %vector.body ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.zv = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.zw = getelementptr inbounds nuw i8, ptr %gep, i64 96
  %wide.load = load <8 x float>, ptr %gep, align 4, !tbaa !96
  %wide.load642 = load <8 x float>, ptr %i.zu, align 4, !tbaa !96
  %wide.load643 = load <8 x float>, ptr %i.zv, align 4, !tbaa !96
  %wide.load644 = load <8 x float>, ptr %i.zw, align 4, !tbaa !96
  %i.zx = call <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load)
  %i.zy = call <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load642)
  %i.zz = call <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load643)
  %i.aaa = call <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load644)
  %i.aab = fpext <8 x float> %i.zx to <8 x double>
  %i.aac = fpext <8 x float> %i.zy to <8 x double>
  %i.aad = fpext <8 x float> %i.zz to <8 x double>
  %i.aae = fpext <8 x float> %i.aaa to <8 x double>
  %i.aaf = fcmp ogt <8 x double> %i.aab, splat (double 1.000000e-03)
  %i.aag = fcmp ogt <8 x double> %i.aac, splat (double 1.000000e-03)
  %i.aah = fcmp ogt <8 x double> %i.aad, splat (double 1.000000e-03)
  %i.aai = fcmp ogt <8 x double> %i.aae, splat (double 1.000000e-03)
  %i.aaj = or <8 x i1> %vec.phi, %i.aaf           ; 2 uses
  %i.aak = or <8 x i1> %vec.phi639, %i.aag        ; 2 uses
  %i.aal = or <8 x i1> %vec.phi640, %i.aah        ; 2 uses
  %i.aam = or <8 x i1> %vec.phi641, %i.aai        ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aan = icmp eq i64 %index.next, %n.vec
  br i1 %i.aan, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <8 x i1> %i.aak, %i.aaj
  %bin.rdx645 = or <8 x i1> %i.aal, %bin.rdx
  %bin.rdx646 = or <8 x i1> %i.aam, %bin.rdx645
  %bin.rdx646.fr = freeze <8 x i1> %bin.rdx646
  %i.aao = bitcast <8 x i1> %bin.rdx646.fr to i8
  %i.aap = icmp ne i8 %i.aao, 0                   ; 3 uses
  %cmp.n = icmp eq i64 %i.zr, %n.vec
  br i1 %cmp.n, label %._crit_edge446, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.zs, 0
  br i1 %min.epilog.iters.check, label %.lr.ph445.preheader, label %vec.epilog.ph, !prof !115

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.aap, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %n.vec647 = and i64 %i.zr, -4                   ; 3 uses
  %i.aaq = add i64 %n.vec647, %i.zp
  %broadcast.splatinsert = insertelement <4 x i1> poison, i1 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <4 x i1> %broadcast.splatinsert, <4 x i1> poison, <4 x i32> zeroinitializer
  %invariant.gep723 = getelementptr [4 x i8], ptr %i.ji, i64 %i.zp
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index648 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next651, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi649 = phi <4 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %i.aau, %vec.epilog.vector.body ]
  %gep724 = getelementptr [4 x i8], ptr %invariant.gep723, i64 %index648
  %wide.load650 = load <4 x float>, ptr %gep724, align 4, !tbaa !96
  %wide.load650.fr = freeze <4 x float> %wide.load650
  %i.aar = call <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load650.fr)
  %i.aas = fpext <4 x float> %i.aar to <4 x double>
  %i.aat = fcmp ogt <4 x double> %i.aas, splat (double 1.000000e-03)
  %i.aau = or <4 x i1> %vec.phi649, %i.aat        ; 2 uses
  %index.next651 = add nuw i64 %index648, 4       ; 2 uses
  %i.aav = icmp eq i64 %index.next651, %n.vec647
  br i1 %i.aav, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !41

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.aaw = bitcast <4 x i1> %i.aau to i4
  %i.aax = icmp ne i4 %i.aaw, 0                   ; 2 uses
  %cmp.n652 = icmp eq i64 %i.zr, %n.vec647
  br i1 %cmp.n652, label %._crit_edge446, label %.lr.ph445.preheader

.lr.ph445.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv480.ph = phi i64 [ %i.zp, %iter.check ], [ %i.zt, %vec.epilog.iter.check ], [ %i.aaq, %vec.epilog.middle.block ]
  %.0106444.ph = phi i1 [ false, %iter.check ], [ %i.aap, %vec.epilog.iter.check ], [ %i.aax, %vec.epilog.middle.block ]
  br label %.lr.ph445

.lr.ph445:                                        ; preds = %.lr.ph445.preheader, %.lr.ph445
  %indvars.iv480 = phi i64 [ %indvars.iv.next481, %.lr.ph445 ], [ %indvars.iv480.ph, %.lr.ph445.preheader ] ; 3 uses
  %.0106444 = phi i1 [ %spec.select, %.lr.ph445 ], [ %.0106444.ph, %.lr.ph445.preheader ]
  %i.aay = getelementptr inbounds [4 x i8], ptr %i.ji, i64 %indvars.iv480
  %i.aaz = load float, ptr %i.aay, align 4, !tbaa !96
end_hunk_0
begin_hunk_1_@_Z9gmx_nmeigiPPc:.noexc.i
  %i.akp = fmul float %i.ako, %i.ako
  %i.akq = fmul float %i.akp, 2.000000e+00
  %i.akr = fdiv float %i.akn, %i.akq
  %i.aks = call noundef float @expf(float noundef %i.akr) #16
  %i.akt = getelementptr inbounds nuw [4 x i8], ptr %.0423, i64 %indvars.iv488 ; 2 uses
  %i.aku = load float, ptr %i.akt, align 4, !tbaa !96
  %i.akv = call float @llvm.fmuladd.f32(float %i.akg, float %i.aks, float %i.aku)
  store float %i.akv, ptr %i.akt, align 4, !tbaa !96
  %indvars.iv.next489 = add nuw nsw i64 %indvars.iv488, 1 ; 2 uses
  %exitcond492.not = icmp eq i64 %indvars.iv.next489, %wide.trip.count491
  br i1 %exitcond492.not, label %.loopexit, label %.lr.ph457, !llvm.loop !44

.loopexit:                                        ; preds = %.lr.ph457, %bb.dp, %bb.do
  br i1 %.not200, label %bb.du, label %bb.dq

bb.dq:                                            ; preds = %.loopexit
  %i.akw = fpext float %i.ajs to double
  %i.akx = load float, ptr @_ZZ9gmx_nmeigiPPcE1T, align 4, !tbaa !96
  %i.aky = fpext float %i.akx to double           ; 2 uses
  %i.akz = fmul double %i.akw, f0x3FD989BA751137D3
  %i.ala = fmul double %i.aky, f0x3F81072C483AF26D ; 3 uses
  %i.alb = fdiv double %i.akz, %i.ala             ; 5 uses
  %i.alc = call double @exp(double noundef %i.alb) #16 ; 2 uses
  %i.ald = fcmp ugt double %i.ajr, f0x3690000000000000
  br i1 %i.ald, label %bb.dr, label %_ZL6u_corrdd.exit

bb.dr:                                            ; preds = %bb.dq
  %i.ale = fmul double %i.alb, %i.alb
  %i.alf = fmul double %i.alc, %i.ale
  %i.alg = fadd double %i.alc, -1.000000e+00      ; 3 uses
  %i.alh = fmul double %i.alg, %i.alg
  %i.ali = call double @llvm.fmuladd.f64(double %i.alb, double 5.000000e-01, double -1.000000e+00)
  %i.alj = insertelement <2 x double> poison, double %i.alf, i64 0
  %i.alk = insertelement <2 x double> %i.alj, double %i.alb, i64 1
  %i.all = insertelement <2 x double> poison, double %i.alh, i64 0
  %i.alm = insertelement <2 x double> %i.all, double %i.alg, i64 1
  %i.aln = fdiv <2 x double> %i.alk, %i.alm
  %i.alo = insertelement <2 x double> <double -1.000000e+00, double poison>, double %i.ali, i64 1
  %i.alp = fadd <2 x double> %i.alo, %i.aln       ; 2 uses
  %i.alq = extractelement <2 x double> %i.alp, i64 0
  %i.alr = fmul double %i.alq, f0x4020A1013E8990BE
  %i.als = fptrunc double %i.alr to float
  %i.alt = extractelement <2 x double> %i.alp, i64 1
  %i.alu = fmul double %i.ala, %i.alt
  br label %_ZL6u_corrdd.exit

_ZL6u_corrdd.exit:                                ; preds = %bb.dq, %bb.dr
  %i.alv = phi float [ %i.als, %bb.dr ], [ f0x4105080A, %bb.dq ] ; 2 uses
  %.0.i367 = phi double [ %i.alu, %bb.dr ], [ %i.ala, %bb.dq ]
  %i.alw = fptrunc double %.0.i367 to float       ; 2 uses
  %i.alx = load i32, ptr @_ZZ9gmx_nmeigiPPcE3end, align 4, !tbaa !53
  %i.aly = sub nsw i32 %i.alx, %.0107
  %i.alz = icmp sgt i32 %.5148461, %i.aly
  br i1 %i.alz, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %_ZL6u_corrdd.exit
  %i.ama = fpext float %i.alv to double
  %i.amb = fadd double %i.ama, f0x4020A1013E8990BE
  %i.amc = fptrunc double %i.amb to float
  %i.amd = fpext float %i.alw to double
  %i.ame = call double @llvm.fmuladd.f64(double %i.aky, double f0x3F81072C483AF26D, double %i.amd)
  %i.amf = fptrunc double %i.ame to float
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %_ZL6u_corrdd.exit
  %.0150 = phi float [ %i.amc, %bb.ds ], [ %i.alv, %_ZL6u_corrdd.exit ] ; 2 uses
  %.0149 = phi float [ %i.amf, %bb.ds ], [ %i.alw, %_ZL6u_corrdd.exit ] ; 2 uses
  %i.amg = fpext float %.0150 to double
  %i.amh = fpext float %.0149 to double
  %i.ami = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0159, ptr noundef nonnull @.str.95, i32 noundef %.5148461, double noundef %i.amg, double noundef %i.amh) #16 ; 0 uses
  %i.amj = fadd float %.1155459, %.0150
  %i.amk = fadd float %.1152460, %.0149
  br label %bb.du

bb.du:                                            ; preds = %.loopexit, %bb.dt
  %.2156 = phi float [ %i.amj, %bb.dt ], [ %.1155459, %.loopexit ] ; 2 uses
  %.2153 = phi float [ %i.amk, %bb.dt ], [ %.1152460, %.loopexit ] ; 2 uses
  %i.aml = add nsw i32 %.5148461, 1
  %i.amm = load i32, ptr @_ZZ9gmx_nmeigiPPcE3end, align 4, !tbaa !53
  %.not191.not = icmp slt i32 %.5148461, %i.amm
  br i1 %.not191.not, label %bb.dn, label %._crit_edge464.loopexit, !llvm.loop !45

._crit_edge464.loopexit:                          ; preds = %bb.du
  %i.amn = fpext float %.2156 to double
  %i.amo = fpext float %.2153 to double
  br label %._crit_edge464

._crit_edge464:                                   ; preds = %._crit_edge464.loopexit, %.loopexit429
  %.1155.lcssa = phi double [ 0.000000e+00, %.loopexit429 ], [ %i.amn, %._crit_edge464.loopexit ]
  %.1152.lcssa = phi double [ 0.000000e+00, %.loopexit429 ], [ %i.amo, %._crit_edge464.loopexit ]
  %.0139.lcssa = phi float [ 0.000000e+00, %.loopexit429 ], [ %i.ajt, %._crit_edge464.loopexit ] ; 2 uses
  invoke void @_Z9xvgrcloseP8_IO_FILE(ptr noundef %i.afx)
          to label %bb.dv unwind label %.loopexit.split-lp

bb.dv:                                            ; preds = %._crit_edge464
  %i.amp = load i32, ptr @_ZZ9gmx_nmeigiPPcE7maxspec, align 4, !tbaa !53
  %i.amq = sitofp i32 %i.amp to float
  %i.amr = fcmp ult float %.0139.lcssa, %i.amq
  br i1 %i.amr, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.ams = fpext float %.0139.lcssa to double
  %i.amt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.96, double noundef %i.ams) ; 0 uses
  %puts192 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %puts193 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %.not194 = icmp eq ptr %.0158, null
  br i1 %.not194, label %bb.dy, label %.preheader

.preheader:                                       ; preds = %bb.dx
  %i.amu = load i32, ptr @_ZZ9gmx_nmeigiPPcE7maxspec, align 4, !tbaa !53
  %i.amv = icmp sgt i32 %i.amu, 0
  br i1 %i.amv, label %.lr.ph469, label %._crit_edge470

.lr.ph469:                                        ; preds = %.preheader, %.lr.ph469
  %indvars.iv493 = phi i64 [ %indvars.iv.next494, %.lr.ph469 ], [ 0, %.preheader ] ; 3 uses
  %i.amw = trunc nuw nsw i64 %indvars.iv493 to i32
  %i.amx = uitofp nneg i32 %i.amw to double
  %i.amy = getelementptr inbounds nuw [4 x i8], ptr %.0423, i64 %indvars.iv493
  %i.amz = load float, ptr %i.amy, align 4, !tbaa !96
  %i.ana = fpext float %i.amz to double
  %i.anb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0158, ptr noundef nonnull @.str.99, double noundef %i.amx, double noundef %i.ana) #16 ; 0 uses
  %indvars.iv.next494 = add nuw nsw i64 %indvars.iv493, 1 ; 2 uses
  %i.anc = load i32, ptr @_ZZ9gmx_nmeigiPPcE7maxspec, align 4, !tbaa !53
  %i.and = sext i32 %i.anc to i64
  %i.ane = icmp slt i64 %indvars.iv.next494, %i.and
  br i1 %i.ane, label %.lr.ph469, label %._crit_edge470, !llvm.loop !46

._crit_edge470:                                   ; preds = %.lr.ph469, %.preheader
  invoke void @_Z9xvgrcloseP8_IO_FILE(ptr noundef nonnull %.0158)
          to label %bb.dy unwind label %.loopexit.split-lp

bb.dy:                                            ; preds = %._crit_edge470, %bb.dx
  %.not195 = icmp eq ptr %.0159, null
  br i1 %.not195, label %bb.eb, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %puts196 = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %puts197 = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %i.anf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.102, i32 noundef %.0107) ; 0 uses
  %i.ang = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.103, double noundef %.1155.lcssa) ; 0 uses
  %i.anh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.104, double noundef %.1152.lcssa) ; 0 uses
  invoke void @_Z9xvgrcloseP8_IO_FILE(ptr noundef nonnull %.0159)
          to label %bb.ea unwind label %.loopexit.split-lp

bb.ea:                                            ; preds = %bb.dz
  %i.ani = load ptr, ptr @stdout, align 8, !tbaa !95
  invoke void @_Z11please_citeP8_IO_FILEPKc(ptr noundef %i.ani, ptr noundef nonnull @.str.105)
          to label %bb.eb unwind label %.loopexit.split-lp

bb.eb:                                            ; preds = %bb.ea, %bb.dy
  %i.anj = load ptr, ptr %i.r, align 8, !tbaa !55
  %.not198 = icmp eq ptr %i.anj, null
  br i1 %.not198, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.ank = load i32, ptr @_ZZ9gmx_nmeigiPPcE5begin, align 4, !tbaa !53
  %i.anl = add nsw i32 %i.ank, -1
  %i.anm = sext i32 %i.anl to i64
  %i.ann = load ptr, ptr %i.ei, align 8, !tbaa !90
  %i.ano = load ptr, ptr %11, align 8, !tbaa !91
  %i.anp = ptrtoint ptr %i.ann to i64
  %i.anq = ptrtoint ptr %i.ano to i64
  %i.anr = sub i64 %i.anp, %i.anq
  %i.ans = ashr exact i64 %i.anr, 2
  %i.ant = mul i64 %i.ans, %i.anm
  %i.anu = getelementptr inbounds nuw [4 x i8], ptr %.0157, i64 %i.ant
  br label %bb.ed

bb.ed:                                            ; preds = %bb.eb, %bb.ec
  %.0 = phi ptr [ %i.anu, %bb.ec ], [ %.0157, %bb.eb ]
  %i.anv = invoke noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.65, i32 noundef 7, ptr noundef nonnull %7)
          to label %bb.ee unwind label %bb.fo

bb.ee:                                            ; preds = %bb.ed
  %i.anw = load ptr, ptr %i.ei, align 8, !tbaa !90
  %i.anx = load ptr, ptr %11, align 8, !tbaa !91
  %i.any = ptrtoint ptr %i.anw to i64
  %i.anz = ptrtoint ptr %i.anx to i64
  %i.aoa = sub i64 %i.any, %i.anz
  %i.aob = lshr exact i64 %i.aoa, 2
  %i.aoc = trunc i64 %i.aob to i32
  %i.aod = load i32, ptr @_ZZ9gmx_nmeigiPPcE5begin, align 4, !tbaa !53
  %i.aoe = load i32, ptr @_ZZ9gmx_nmeigiPPcE3end, align 4, !tbaa !53
  %i.aof = load i8, ptr @_ZZ9gmx_nmeigiPPcE2bM, align 1, !tbaa !70, !range !71, !noundef !72
  %i.aog = trunc nuw i8 %i.aof to i1
  invoke void @_Z18write_eigenvectorsPKciPKfbiiiPA3_S1_bS4_bS2_(ptr noundef %i.anv, i32 noundef %i.aoc, ptr noundef %.0, i1 noundef zeroext false, i32 noundef %i.aod, i32 noundef %i.aoe, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, ptr noundef %i.cr, i1 noundef zeroext %i.aog, ptr noundef %i.ji)
          to label %bb.ef unwind label %bb.fo

bb.ef:                                            ; preds = %bb.ee
  %i.aoh = load i32, ptr @_ZZ9gmx_nmeigiPPcE5begin, align 4, !tbaa !53 ; 2 uses
  %i.aoi = icmp eq i32 %i.aoh, 1
  br i1 %i.aoi, label %bb.eg, label %bb.fp

bb.eg:                                            ; preds = %bb.ef
  %i.aoj = load ptr, ptr @stdout, align 8, !tbaa !95 ; 7 uses
  %i.aok = load ptr, ptr %11, align 8, !tbaa !91  ; 3 uses
  %i.aol = load ptr, ptr %i.ei, align 8, !tbaa !90 ; 2 uses
  %i.aom = ptrtoint ptr %i.aok to i64
  %i.aon = load float, ptr @_ZZ9gmx_nmeigiPPcE1T, align 4, !tbaa !96 ; 6 uses
  %i.aoo = load float, ptr @_ZZ9gmx_nmeigiPPcE1P, align 4, !tbaa !96
  %i.aop = load i32, ptr @_ZZ9gmx_nmeigiPPcE7sigma_r, align 4, !tbaa !53
  %i.aoq = load float, ptr @_ZZ9gmx_nmeigiPPcE12scale_factor, align 4, !tbaa !96 ; 4 uses
  %i.aor = load float, ptr @_ZZ9gmx_nmeigiPPcE12linear_toler, align 4, !tbaa !96 ; 2 uses
  %34 = ptrtoint ptr %i.aol to i64
  %35 = sub i64 %34, %i.aom                       ; 5 uses
  %i.aos = icmp ugt i64 %35, 9223372036854775804
  br i1 %i.aos, label %.noexc.i.i, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i

.noexc.i.i:                                       ; preds = %bb.eg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.129) #19
          to label %.noexc377 unwind label %bb.fo

.noexc377:                                        ; preds = %.noexc.i.i
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i: ; preds = %bb.eg
  %.not.i.i.i.i = icmp eq ptr %i.aol, %i.aok
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.thread.i.i.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.thread.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.aot = getelementptr inbounds nuw i8, ptr null, i64 %35
  br label %_ZNSt6vectorIiSaIiEEC2IN3gmx12ArrayRefIterIKiEEvEET_S7_RKS0_.exit.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.aou = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %35) #21
          to label %.noexc378 unwind label %bb.fo ; 3 uses

.noexc378:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i
  %i.aov = getelementptr i8, ptr %i.aou, i64 %35  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aou, ptr align 4 %i.aok, i64 %35, i1 false), !tbaa !53
  %i.aow = ptrtoint ptr %i.aov to i64
  br label %_ZNSt6vectorIiSaIiEEC2IN3gmx12ArrayRefIterIKiEEvEET_S7_RKS0_.exit.i

_ZNSt6vectorIiSaIiEEC2IN3gmx12ArrayRefIterIKiEEvEET_S7_RKS0_.exit.i: ; preds = %.noexc378, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.thread.i.i.i
  %.sroa.20.0.i = phi ptr [ %i.aot, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.thread.i.i.i ], [ %i.aov, %.noexc378 ] ; 2 uses
  %.sroa.024.0.i = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.thread.i.i.i ], [ %i.aou, %.noexc378 ] ; 8 uses
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.thread.i.i.i ], [ %i.aow, %.noexc378 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.aox = ptrtoint ptr %.sroa.024.0.i to i64     ; 3 uses
  %i.aoy = sub i64 %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i, %i.aox
  %i.aoz = ashr exact i64 %i.aoy, 2               ; 2 uses
  %i.apa = trunc i64 %i.aoz to i32                ; 3 uses
  %i.apb = invoke noundef float @_Z8calc_xcmPA3_KfiPKiPK6t_atomPfb(ptr noundef %i.cr, i32 noundef %i.apa, ptr noundef %.sroa.024.0.i, ptr noundef %.sroa.5417.0.copyload, ptr noundef nonnull %i.a, i1 noundef zeroext false)
          to label %bb.eh unwind label %bb.el

bb.eh:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2IN3gmx12ArrayRefIterIKiEEvEET_S7_RKS0_.exit.i
  %i.apc = invoke noundef double @_Z24calcTranslationalEntropyfff(float noundef %i.apb, float noundef %i.aon, float noundef %i.aoo)
          to label %bb.ei unwind label %bb.em     ; 2 uses

bb.ei:                                            ; preds = %bb.eh
  %i.apd = sext i32 %.sroa.4.0.copyload to i64    ; 2 uses
  %.not42.i = icmp eq i32 %.sroa.4.0.copyload, 0
  br i1 %.not42.i, label %._crit_edge.i373, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.ape = icmp slt i32 %.sroa.4.0.copyload, 0
  br i1 %i.ape, label %bb.ek, label %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ek:                                            ; preds = %bb.ej
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.130) #19
          to label %.noexc.i376 unwind label %bb.en

.noexc.i376:                                      ; preds = %bb.ek
  unreachable

_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ej
  %i.apf = mul nuw nsw i64 %i.apd, 12
  %i.apg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.apf) #21
          to label %.lr.ph.preheader.i unwind label %bb.en ; 10 uses

.lr.ph.preheader.i:                               ; preds = %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %wide.trip.count.i368 = zext nneg i32 %.sroa.4.0.copyload to i64 ; 6 uses
  %min.iters.check656 = icmp ult i32 %.sroa.4.0.copyload, 8
  br i1 %min.iters.check656, label %.lr.ph.i369.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.aph = mul nuw nsw i64 %wide.trip.count.i368, 12 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.apg, i64 %i.aph
  %scevgep655 = getelementptr i8, ptr %i.cr, i64 %i.aph
  %bound0 = icmp ult ptr %i.apg, %scevgep655
  %bound1 = icmp ult ptr %i.cr, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i369.preheader, label %vector.ph657

vector.ph657:                                     ; preds = %vector.memcheck
  %n.vec658 = and i64 %wide.trip.count.i368, 2147483640 ; 3 uses
  br label %vector.body659

vector.body659:                                   ; preds = %vector.body659, %vector.ph657
  %index660 = phi i64 [ 0, %vector.ph657 ], [ %index.next663, %vector.body659 ] ; 3 uses
  %i.api = getelementptr inbounds nuw [12 x i8], ptr %i.cr, i64 %index660
  %i.apj = getelementptr inbounds nuw [12 x i8], ptr %i.apg, i64 %index660
  %wide.vec = load <24 x float>, ptr %i.api, align 4, !tbaa !96, !alias.scope !118
  store <24 x float> %wide.vec, ptr %i.apj, align 4, !tbaa !96, !alias.scope !119, !noalias !118
  %index.next663 = add nuw i64 %index660, 8       ; 2 uses
  %i.apk = icmp eq i64 %index.next663, %n.vec658
  br i1 %i.apk, label %middle.block664, label %vector.body659, !llvm.loop !50

middle.block664:                                  ; preds = %vector.body659
  %cmp.n665 = icmp eq i64 %n.vec658, %wide.trip.count.i368
  br i1 %cmp.n665, label %._crit_edge.i373.loopexit, label %.lr.ph.i369.preheader

.lr.ph.i369.preheader:                            ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block664
  %indvars.iv.i370.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i ], [ %n.vec658, %middle.block664 ] ; 3 uses
  %xtraiter712 = and i64 %wide.trip.count.i368, 3 ; 2 uses
  %lcmp.mod713.not = icmp eq i64 %xtraiter712, 0
  br i1 %lcmp.mod713.not, label %.lr.ph.i369.prol.loopexit, label %.lr.ph.i369.prol

.lr.ph.i369.prol:                                 ; preds = %.lr.ph.i369.preheader, %.lr.ph.i369.prol
  %indvars.iv.i370.prol = phi i64 [ %indvars.iv.next.i371.prol, %.lr.ph.i369.prol ], [ %indvars.iv.i370.ph, %.lr.ph.i369.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i369.prol ], [ 0, %.lr.ph.i369.preheader ]
  %i.apl = getelementptr inbounds nuw [12 x i8], ptr %i.cr, i64 %indvars.iv.i370.prol ; 3 uses
  %i.apm = getelementptr inbounds nuw [12 x i8], ptr %i.apg, i64 %indvars.iv.i370.prol ; 3 uses
  %i.apn = load float, ptr %i.apl, align 4, !tbaa !96
  store float %i.apn, ptr %i.apm, align 4, !tbaa !96
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apl, i64 4
  %i.app = load float, ptr %i.apo, align 4, !tbaa !96
  %i.apq = getelementptr inbounds nuw i8, ptr %i.apm, i64 4
  store float %i.app, ptr %i.apq, align 4, !tbaa !96
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apl, i64 8
  %i.aps = load float, ptr %i.apr, align 4, !tbaa !96
  %i.apt = getelementptr inbounds nuw i8, ptr %i.apm, i64 8
  store float %i.aps, ptr %i.apt, align 4, !tbaa !96
  %indvars.iv.next.i371.prol = add nuw nsw i64 %indvars.iv.i370.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter712
  br i1 %prol.iter.cmp.not, label %.lr.ph.i369.prol.loopexit, label %.lr.ph.i369.prol, !llvm.loop !51

.lr.ph.i369.prol.loopexit:                        ; preds = %.lr.ph.i369.prol, %.lr.ph.i369.preheader
  %indvars.iv.i370.unr = phi i64 [ %indvars.iv.i370.ph, %.lr.ph.i369.preheader ], [ %indvars.iv.next.i371.prol, %.lr.ph.i369.prol ]
  %i.apu = sub nsw i64 %indvars.iv.i370.ph, %wide.trip.count.i368
  %i.apv = icmp ugt i64 %i.apu, -4
  br i1 %i.apv, label %._crit_edge.i373.loopexit, label %.lr.ph.i369

bb.el:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2IN3gmx12ArrayRefIterIKiEEvEET_S7_RKS0_.exit.i
  %i.apw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit94.i

bb.em:                                            ; preds = %bb.eh
  %i.apx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit94.i

bb.en:                                            ; preds = %._crit_edge.i373, %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.ek
  %.sroa.15.1.i = phi ptr [ null, %bb.ek ], [ %.sroa.15.054.i, %._crit_edge.i373 ], [ null, %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ]
  %.sroa.014.1.i = phi ptr [ null, %bb.ek ], [ %.sroa.014.059.i, %._crit_edge.i373 ], [ null, %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ]
  %i.apy = landingpad { ptr, i32 }
          cleanup
  br label %bb.fl

.lr.ph.i369:                                      ; preds = %.lr.ph.i369.prol.loopexit, %.lr.ph.i369
  %indvars.iv.i370 = phi i64 [ %indvars.iv.next.i371.3, %.lr.ph.i369 ], [ %indvars.iv.i370.unr, %.lr.ph.i369.prol.loopexit ] ; 6 uses
  %i.apz = getelementptr inbounds nuw [12 x i8], ptr %i.cr, i64 %indvars.iv.i370 ; 3 uses
  %i.aqa = getelementptr inbounds nuw [12 x i8], ptr %i.apg, i64 %indvars.iv.i370 ; 3 uses
  %i.aqb = load float, ptr %i.apz, align 4, !tbaa !96
  store float %i.aqb, ptr %i.aqa, align 4, !tbaa !96
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.apz, i64 4
  %i.aqd = load float, ptr %i.aqc, align 4, !tbaa !96
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aqa, i64 4
  store float %i.aqd, ptr %i.aqe, align 4, !tbaa !96
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.apz, i64 8
  %i.aqg = load float, ptr %i.aqf, align 4, !tbaa !96
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqa, i64 8
  store float %i.aqg, ptr %i.aqh, align 4, !tbaa !96
  %indvars.iv.next.i371 = add nuw nsw i64 %indvars.iv.i370, 1 ; 2 uses
  %i.aqi = getelementptr inbounds nuw [12 x i8], ptr %i.cr, i64 %indvars.iv.next.i371 ; 3 uses
  %i.aqj = getelementptr inbounds nuw [12 x i8], ptr %i.apg, i64 %indvars.iv.next.i371 ; 3 uses
  %i.aqk = load float, ptr %i.aqi, align 4, !tbaa !96
  store float %i.aqk, ptr %i.aqj, align 4, !tbaa !96
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqi, i64 4
  %i.aqm = load float, ptr %i.aql, align 4, !tbaa !96
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aqj, i64 4
  store float %i.aqm, ptr %i.aqn, align 4, !tbaa !96
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqi, i64 8
  %i.aqp = load float, ptr %i.aqo, align 4, !tbaa !96
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqj, i64 8
  store float %i.aqp, ptr %i.aqq, align 4, !tbaa !96
  %indvars.iv.next.i371.1 = add nuw nsw i64 %indvars.iv.i370, 2 ; 2 uses
  %i.aqr = getelementptr inbounds nuw [12 x i8], ptr %i.cr, i64 %indvars.iv.next.i371.1 ; 3 uses
  %i.aqs = getelementptr inbounds nuw [12 x i8], ptr %i.apg, i64 %indvars.iv.next.i371.1 ; 3 uses
  %i.aqt = load float, ptr %i.aqr, align 4, !tbaa !96
  store float %i.aqt, ptr %i.aqs, align 4, !tbaa !96
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqr, i64 4
  %i.aqv = load float, ptr %i.aqu, align 4, !tbaa !96
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqs, i64 4
  store float %i.aqv, ptr %i.aqw, align 4, !tbaa !96
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqr, i64 8
  %i.aqy = load float, ptr %i.aqx, align 4, !tbaa !96
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqs, i64 8
  store float %i.aqy, ptr %i.aqz, align 4, !tbaa !96
  %indvars.iv.next.i371.2 = add nuw nsw i64 %indvars.iv.i370, 3 ; 2 uses
  %i.ara = getelementptr inbounds nuw [12 x i8], ptr %i.cr, i64 %indvars.iv.next.i371.2 ; 3 uses
  %i.arb = getelementptr inbounds nuw [12 x i8], ptr %i.apg, i64 %indvars.iv.next.i371.2 ; 3 uses
  %i.arc = load float, ptr %i.ara, align 4, !tbaa !96
  store float %i.arc, ptr %i.arb, align 4, !tbaa !96
  %i.ard = getelementptr inbounds nuw i8, ptr %i.ara, i64 4
  %i.are = load float, ptr %i.ard, align 4, !tbaa !96
  %i.arf = getelementptr inbounds nuw i8, ptr %i.arb, i64 4
  store float %i.are, ptr %i.arf, align 4, !tbaa !96
  %i.arg = getelementptr inbounds nuw i8, ptr %i.ara, i64 8
  %i.arh = load float, ptr %i.arg, align 4, !tbaa !96
  %i.ari = getelementptr inbounds nuw i8, ptr %i.arb, i64 8
  store float %i.arh, ptr %i.ari, align 4, !tbaa !96
  %indvars.iv.next.i371.3 = add nuw nsw i64 %indvars.iv.i370, 4 ; 2 uses
  %exitcond.not.i372.3 = icmp eq i64 %indvars.iv.next.i371.3, %wide.trip.count.i368
  br i1 %exitcond.not.i372.3, label %._crit_edge.i373.loopexit, label %.lr.ph.i369, !llvm.loop !52

._crit_edge.i373.loopexit:                        ; preds = %.lr.ph.i369.prol.loopexit, %.lr.ph.i369, %middle.block664
  %i.arj = getelementptr inbounds nuw [12 x i8], ptr %i.apg, i64 %i.apd
  br label %._crit_edge.i373

._crit_edge.i373:                                 ; preds = %._crit_edge.i373.loopexit, %bb.ei
  %.sroa.014.059.i = phi ptr [ null, %bb.ei ], [ %i.apg, %._crit_edge.i373.loopexit ] ; 7 uses
  %.sroa.15.054.i = phi ptr [ null, %bb.ei ], [ %i.arj, %._crit_edge.i373.loopexit ] ; 3 uses
  %i.ark = invoke noundef float @_Z7sub_xcmPA3_fiPKiPK6t_atomPfb(ptr noundef %.sroa.014.059.i, i32 noundef %i.apa, ptr noundef %.sroa.024.0.i, ptr noundef %.sroa.5417.0.copyload, ptr noundef nonnull %i.a, i1 noundef zeroext false)
          to label %bb.eo unwind label %bb.en     ; 0 uses

bb.eo:                                            ; preds = %._crit_edge.i373
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  invoke void @_Z14principal_compiPKiP6t_atomPA3_fS4_Pf(i32 noundef %i.apa, ptr noundef %.sroa.024.0.i, ptr noundef %.sroa.5417.0.copyload, ptr noundef %.sroa.014.059.i, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b)
          to label %bb.ep unwind label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.arl = load float, ptr %i.b, align 4, !tbaa !96 ; 3 uses
  %i.arm = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.arn = load <2 x float>, ptr %i.arm, align 4  ; 3 uses
  %i.aro = extractelement <2 x float> %i.arn, i64 0 ; 2 uses
  %i.arp = fdiv float %i.arl, %i.aro
end_hunk_1
