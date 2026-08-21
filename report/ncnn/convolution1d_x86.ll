Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution1d_x86?download=true
inline.NumInlined: 21
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZNK4ncnn17Convolution1D_x867forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.go = mul nsw i32 %i.gn, 3
  %i.gp = sext i32 %i.go to i64
  %i.gq = shl nsw i32 %i.gn, 1
  %i.gr = sext i32 %i.gq to i64
  %i.gs = sext i32 %i.gn to i64
  %i.gt = sext i32 %i.gk to i64
  %i.gu = add i32 %i.gi, -1
  %i.gv = zext i32 %i.gu to i64
  %i.gw = shl nuw nsw i64 %i.gv, 5                ; 2 uses
  br i1 %i.dr, label %.preheader395.i.us.preheader, label %.lr.ph419.i.split

.preheader395.i.us.preheader:                     ; preds = %.lr.ph419.i
  %xtraiter = and i32 %i.gi, 1
  %i.gx = icmp eq i32 %i.gi, 1
  %unroll_iter = and i32 %i.gi, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod200 = trunc i32 %i.gi to i1
  br label %.preheader395.i.us

.preheader395.i.us:                               ; preds = %.preheader395.i.us.preheader, %.loopexit394.i.us
  %.0218418.i.us = phi i32 [ %i.ic, %.loopexit394.i.us ], [ 0, %.preheader395.i.us.preheader ] ; 2 uses
  %.0221417.i.us = phi ptr [ %.4225.i.us, %.loopexit394.i.us ], [ %i.fp, %.preheader395.i.us.preheader ] ; 4 uses
  %.0358416.i.us = phi <4 x float> [ %.4362.i.us, %.loopexit394.i.us ], [ zeroinitializer, %.preheader395.i.us.preheader ] ; 3 uses
  %.0363415.i.us = phi <4 x float> [ %.4367.i.us, %.loopexit394.i.us ], [ zeroinitializer, %.preheader395.i.us.preheader ] ; 3 uses
  br i1 %i.gj, label %.lr.ph.i.us.preheader, label %.loopexit394.i.us

.lr.ph.i.us.preheader:                            ; preds = %.preheader395.i.us
  %i.gy = lshr exact i32 %.0218418.i.us, 2
  %i.gz = zext nneg i32 %i.gy to i64
  %.reass.i.us = mul i64 %factor.op.mul.i, %i.gz
  %gep.i.us = getelementptr i8, ptr %invariant.gep.i, i64 %.reass.i.us ; 2 uses
  br i1 %i.gx, label %.lr.ph.i.us.epil.preheader, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader, %.lr.ph.i.us
  %.0215401.i.us = phi ptr [ %i.hs, %.lr.ph.i.us ], [ %gep.i.us, %.lr.ph.i.us.preheader ] ; 2 uses
  %.1222400.i.us = phi ptr [ %i.ht, %.lr.ph.i.us ], [ %.0221417.i.us, %.lr.ph.i.us.preheader ] ; 5 uses
  %.1359399.i.us = phi <4 x float> [ %i.hr, %.lr.ph.i.us ], [ %.0358416.i.us, %.lr.ph.i.us.preheader ]
  %.1364398.i.us = phi <4 x float> [ %i.hp, %.lr.ph.i.us ], [ %.0363415.i.us, %.lr.ph.i.us.preheader ]
  %niter = phi i32 [ %niter.next.1, %.lr.ph.i.us ], [ 0, %.lr.ph.i.us.preheader ]
  %i.ha = load <4 x float>, ptr %.0215401.i.us, align 16, !tbaa !227 ; 2 uses
  %i.hb = load <4 x float>, ptr %.1222400.i.us, align 16, !tbaa !227
  %i.hc = getelementptr inbounds nuw i8, ptr %.1222400.i.us, i64 16
  %i.hd = load <4 x float>, ptr %i.hc, align 16, !tbaa !227
  %i.he = fmul fast <4 x float> %i.hb, %i.ha
  %i.hf = fadd fast <4 x float> %i.he, %.1364398.i.us
  %i.hg = fmul fast <4 x float> %i.hd, %i.ha
  %i.hh = fadd fast <4 x float> %i.hg, %.1359399.i.us
  %i.hi = getelementptr inbounds [4 x i8], ptr %.0215401.i.us, i64 %i.gm ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.1222400.i.us, i64 32
  %i.hk = load <4 x float>, ptr %i.hi, align 16, !tbaa !227 ; 2 uses
  %i.hl = load <4 x float>, ptr %i.hj, align 16, !tbaa !227
  %i.hm = getelementptr inbounds nuw i8, ptr %.1222400.i.us, i64 48
  %i.hn = load <4 x float>, ptr %i.hm, align 16, !tbaa !227
  %i.ho = fmul fast <4 x float> %i.hl, %i.hk
  %i.hp = fadd fast <4 x float> %i.ho, %i.hf      ; 3 uses
  %i.hq = fmul fast <4 x float> %i.hn, %i.hk
  %i.hr = fadd fast <4 x float> %i.hq, %i.hh      ; 3 uses
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.hi, i64 %i.gm ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.1222400.i.us, i64 64 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit396.loopexit.i.us.unr-lcssa, label %.lr.ph.i.us, !llvm.loop !228

.loopexit396.loopexit.i.us.unr-lcssa:             ; preds = %.lr.ph.i.us
  br i1 %lcmp.mod.not, label %.loopexit396.loopexit.i.us, label %.lr.ph.i.us.epil.preheader

.lr.ph.i.us.epil.preheader:                       ; preds = %.loopexit396.loopexit.i.us.unr-lcssa, %.lr.ph.i.us.preheader
  %.0215401.i.us.epil.init = phi ptr [ %gep.i.us, %.lr.ph.i.us.preheader ], [ %i.hs, %.loopexit396.loopexit.i.us.unr-lcssa ]
  %.1222400.i.us.epil.init = phi ptr [ %.0221417.i.us, %.lr.ph.i.us.preheader ], [ %i.ht, %.loopexit396.loopexit.i.us.unr-lcssa ] ; 2 uses
  %.1359399.i.us.epil.init = phi <4 x float> [ %.0358416.i.us, %.lr.ph.i.us.preheader ], [ %i.hr, %.loopexit396.loopexit.i.us.unr-lcssa ]
  %.1364398.i.us.epil.init = phi <4 x float> [ %.0363415.i.us, %.lr.ph.i.us.preheader ], [ %i.hp, %.loopexit396.loopexit.i.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod200)
  %i.hu = load <4 x float>, ptr %.0215401.i.us.epil.init, align 16, !tbaa !227 ; 2 uses
  %i.hv = load <4 x float>, ptr %.1222400.i.us.epil.init, align 16, !tbaa !227
  %i.hw = getelementptr inbounds nuw i8, ptr %.1222400.i.us.epil.init, i64 16
  %i.hx = load <4 x float>, ptr %i.hw, align 16, !tbaa !227
  %i.hy = fmul fast <4 x float> %i.hv, %i.hu
  %i.hz = fadd fast <4 x float> %i.hy, %.1364398.i.us.epil.init
  %i.ia = fmul fast <4 x float> %i.hx, %i.hu
  %i.ib = fadd fast <4 x float> %i.ia, %.1359399.i.us.epil.init
  br label %.loopexit396.loopexit.i.us

.loopexit396.loopexit.i.us:                       ; preds = %.loopexit396.loopexit.i.us.unr-lcssa, %.lr.ph.i.us.epil.preheader
  %.lcssa194 = phi <4 x float> [ %i.hp, %.loopexit396.loopexit.i.us.unr-lcssa ], [ %i.hz, %.lr.ph.i.us.epil.preheader ]
  %.lcssa193 = phi <4 x float> [ %i.hr, %.loopexit396.loopexit.i.us.unr-lcssa ], [ %i.ib, %.lr.ph.i.us.epil.preheader ]
  %scevgep.i.us = getelementptr i8, ptr %.0221417.i.us, i64 32
  %scevgep617.i.us = getelementptr i8, ptr %scevgep.i.us, i64 %i.gw
  br label %.loopexit394.i.us

.loopexit394.i.us:                                ; preds = %.loopexit396.loopexit.i.us, %.preheader395.i.us
  %.4367.i.us = phi nsz <4 x float> [ %.0363415.i.us, %.preheader395.i.us ], [ %.lcssa194, %.loopexit396.loopexit.i.us ] ; 2 uses
  %.4362.i.us = phi nsz <4 x float> [ %.0358416.i.us, %.preheader395.i.us ], [ %.lcssa193, %.loopexit396.loopexit.i.us ] ; 2 uses
  %.4225.i.us = phi ptr [ %.0221417.i.us, %.preheader395.i.us ], [ %scevgep617.i.us, %.loopexit396.loopexit.i.us ] ; 2 uses
  %i.ic = add nuw nsw i32 %.0218418.i.us, 4       ; 2 uses
  %i.id = or disjoint i32 %i.ic, 3
  %i.ie = icmp slt i32 %i.id, %i.dh
  br i1 %i.ie, label %.preheader395.i.us, label %._crit_edge.i, !llvm.loop !229

.lr.ph419.i.split:                                ; preds = %.lr.ph419.i
  %i.if = icmp slt i32 %i.gi, 1
  %brmerge.i = select i1 %i.ds, i1 true, i1 %i.if
  br i1 %brmerge.i, label %._crit_edge.i, label %.loopexit396.i

.loopexit396.i:                                   ; preds = %.lr.ph419.i.split, %.loopexit394.loopexit.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit394.loopexit.i ], [ 0, %.lr.ph419.i.split ] ; 2 uses
  %.0221417.i = phi ptr [ %scevgep619.i, %.loopexit394.loopexit.i ], [ %i.fp, %.lr.ph419.i.split ] ; 2 uses
  %.0358416.i = phi <4 x float> [ %i.ix, %.loopexit394.loopexit.i ], [ zeroinitializer, %.lr.ph419.i.split ]
  %.0363415.i = phi <4 x float> [ %i.iv, %.loopexit394.loopexit.i ], [ zeroinitializer, %.lr.ph419.i.split ]
  %.reass.i = mul i64 %factor.op.mul.i, %indvars.iv
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %.reass.i
  br label %.lr.ph411.i

.lr.ph411.i:                                      ; preds = %.loopexit396.i, %.lr.ph411.i
  %.0213410.i = phi i32 [ %i.ja, %.lr.ph411.i ], [ 0, %.loopexit396.i ]
  %.2217409.i = phi ptr [ %i.iy, %.lr.ph411.i ], [ %gep.i, %.loopexit396.i ] ; 5 uses
  %.3224408.i = phi ptr [ %i.iz, %.lr.ph411.i ], [ %.0221417.i, %.loopexit396.i ] ; 3 uses
  %.3361407.i = phi <4 x float> [ %i.ix, %.lr.ph411.i ], [ %.0358416.i, %.loopexit396.i ]
  %.3366406.i = phi <4 x float> [ %i.iv, %.lr.ph411.i ], [ %.0363415.i, %.loopexit396.i ]
  %i.ig = getelementptr inbounds [4 x i8], ptr %.2217409.i, i64 %i.gp
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !53
  %i.ii = getelementptr inbounds [4 x i8], ptr %.2217409.i, i64 %i.gr
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !53
  %i.ik = getelementptr inbounds [4 x i8], ptr %.2217409.i, i64 %i.gs
  %i.il = load float, ptr %i.ik, align 4, !tbaa !53
  %i.im = load float, ptr %.2217409.i, align 4, !tbaa !53
  %i.in = insertelement <4 x float> poison, float %i.im, i64 0
  %i.io = insertelement <4 x float> %i.in, float %i.il, i64 1
  %i.ip = insertelement <4 x float> %i.io, float %i.ij, i64 2
  %i.iq = insertelement <4 x float> %i.ip, float %i.ih, i64 3 ; 2 uses
  %i.ir = load <4 x float>, ptr %.3224408.i, align 16, !tbaa !227
  %i.is = getelementptr inbounds nuw i8, ptr %.3224408.i, i64 16
  %i.it = load <4 x float>, ptr %i.is, align 16, !tbaa !227
  %i.iu = fmul fast <4 x float> %i.iq, %i.ir
  %i.iv = fadd fast <4 x float> %i.iu, %.3366406.i ; 3 uses
  %i.iw = fmul fast <4 x float> %i.iq, %i.it
  %i.ix = fadd fast <4 x float> %i.iw, %.3361407.i ; 3 uses
  %i.iy = getelementptr inbounds [4 x i8], ptr %.2217409.i, i64 %i.gt
  %i.iz = getelementptr inbounds nuw i8, ptr %.3224408.i, i64 32
  %i.ja = add nuw nsw i32 %.0213410.i, 1          ; 2 uses
  %exitcond620.not.i = icmp eq i32 %i.ja, %i.gi
  br i1 %exitcond620.not.i, label %.loopexit394.loopexit.i, label %.lr.ph411.i, !llvm.loop !230

.loopexit394.loopexit.i:                          ; preds = %.lr.ph411.i
  %scevgep618.i = getelementptr i8, ptr %.0221417.i, i64 32
  %scevgep619.i = getelementptr i8, ptr %scevgep618.i, i64 %i.gw ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.jb = icmp slt i64 %indvars.iv.next, %invariant.op
  br i1 %i.jb, label %.loopexit396.i, label %._crit_edge.i, !llvm.loop !229

._crit_edge.i:                                    ; preds = %.loopexit394.loopexit.i, %.loopexit394.i.us, %.lr.ph419.i.split, %_ZN4ncnn3MatD2Ev.exit250.i
  %.0363.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit250.i ], [ %.4367.i.us, %.loopexit394.i.us ], [ zeroinitializer, %.lr.ph419.i.split ], [ %i.iv, %.loopexit394.loopexit.i ] ; 2 uses
  %.0358.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit250.i ], [ %.4362.i.us, %.loopexit394.i.us ], [ zeroinitializer, %.lr.ph419.i.split ], [ %i.ix, %.loopexit394.loopexit.i ] ; 2 uses
  %.0221.lcssa.i = phi ptr [ %i.fp, %_ZN4ncnn3MatD2Ev.exit250.i ], [ %.4225.i.us, %.loopexit394.i.us ], [ %i.fp, %.lr.ph419.i.split ], [ %scevgep619.i, %.loopexit394.loopexit.i ] ; 2 uses
  %.0218.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit250.i ], [ %i.dz, %.loopexit394.i.us ], [ %i.dz, %.lr.ph419.i.split ], [ %i.dz, %.loopexit394.loopexit.i ] ; 3 uses
  %i.jc = shufflevector <4 x float> %.0363.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.jd = fadd fast <4 x float> %i.jc, %.0363.lcssa.i ; 2 uses
  %i.je = shufflevector <4 x float> %.0358.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.jf = fadd fast <4 x float> %i.je, %.0358.lcssa.i ; 2 uses
  %i.jg = shufflevector <4 x float> %i.jd, <4 x float> %i.jf, <2 x i32> <i32 1, i32 5>
  %i.jh = fadd fast <2 x float> %i.jg, %i.gf
  %i.ji = shufflevector <4 x float> %i.jd, <4 x float> %i.jf, <2 x i32> <i32 0, i32 4>
  %i.jj = fadd fast <2 x float> %i.jh, %i.ji      ; 3 uses
  %i.jk = or disjoint i32 %.0218.lcssa.i, 1
  %i.jl = icmp slt i32 %i.jk, %i.dh
  br i1 %i.jl, label %.lr.ph440.i, label %.preheader397.i

.lr.ph440.i:                                      ; preds = %._crit_edge.i
  %i.jm = mul nsw i64 %indvars.iv631.i, %i.fx
  %invariant.gep447.i = getelementptr [4 x i8], ptr %i.fy, i64 %i.jm
  %i.jn = load i32, ptr %i.e, align 4
  %i.jo = sext i32 %i.jn to i64                   ; 3 uses
  %i.jp = load i32, ptr %i.b, align 4
  %i.jq = sext i32 %i.jp to i64                   ; 2 uses
  br i1 %i.fs, label %.lr.ph430.us.preheader.i, label %._crit_edge468.i

.lr.ph430.us.preheader.i:                         ; preds = %.lr.ph440.i
  %i.jr = zext i32 %.0218.lcssa.i to i64
  br label %.lr.ph430.us.i

.lr.ph430.us.i:                                   ; preds = %._crit_edge431.us.i, %.lr.ph430.us.preheader.i
  %indvars.iv.i = phi i64 [ %i.jr, %.lr.ph430.us.preheader.i ], [ %indvars.iv.next.i, %._crit_edge431.us.i ] ; 2 uses
  %.5226437.us.i = phi ptr [ %.0221.lcssa.i, %.lr.ph430.us.preheader.i ], [ %scevgep622.i, %._crit_edge431.us.i ] ; 3 uses
  %i.js = phi <2 x float> [ %i.jj, %.lr.ph430.us.preheader.i ], [ %.lcssa195, %._crit_edge431.us.i ] ; 2 uses
  %.reass446.us.i = mul i64 %factor.op.mul.i, %indvars.iv.i
  %gep448.us.i = getelementptr i8, ptr %invariant.gep447.i, i64 %.reass446.us.i ; 2 uses
  br i1 %i.gc, label %.epil.preheader, label %.lr.ph430.us.i.new

.lr.ph430.us.i.new:                               ; preds = %.lr.ph430.us.i, %.lr.ph430.us.i.new
  %.0212427.us.i = phi ptr [ %i.ky, %.lr.ph430.us.i.new ], [ %gep448.us.i, %.lr.ph430.us.i ] ; 3 uses
  %.6227426.us.i = phi ptr [ %i.kz, %.lr.ph430.us.i.new ], [ %.5226437.us.i, %.lr.ph430.us.i ] ; 5 uses
  %i.jt = phi <2 x float> [ %i.kx, %.lr.ph430.us.i.new ], [ %i.js, %.lr.ph430.us.i ]
  %niter206 = phi i32 [ %niter206.next.1, %.lr.ph430.us.i.new ], [ 0, %.lr.ph430.us.i ]
  %i.ju = load float, ptr %.0212427.us.i, align 4, !tbaa !53
  %i.jv = getelementptr inbounds [4 x i8], ptr %.0212427.us.i, i64 %i.jo
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !53
  %i.jx = getelementptr inbounds nuw i8, ptr %.6227426.us.i, i64 8
  %i.jy = load <2 x float>, ptr %.6227426.us.i, align 4, !tbaa !53
  %i.jz = insertelement <2 x float> poison, float %i.ju, i64 0
  %i.ka = shufflevector <2 x float> %i.jz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kb = fmul fast <2 x float> %i.jy, %i.ka
  %i.kc = fadd fast <2 x float> %i.kb, %i.jt
  %i.kd = load <2 x float>, ptr %i.jx, align 4, !tbaa !53
  %i.ke = insertelement <2 x float> poison, float %i.jw, i64 0
  %i.kf = shufflevector <2 x float> %i.ke, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kg = fmul fast <2 x float> %i.kd, %i.kf
  %i.kh = fadd fast <2 x float> %i.kc, %i.kg
  %i.ki = getelementptr inbounds [4 x i8], ptr %.0212427.us.i, i64 %i.jq ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.6227426.us.i, i64 16
  %i.kk = load float, ptr %i.ki, align 4, !tbaa !53
  %i.kl = getelementptr inbounds [4 x i8], ptr %i.ki, i64 %i.jo
  %i.km = load float, ptr %i.kl, align 4, !tbaa !53
  %i.kn = getelementptr inbounds nuw i8, ptr %.6227426.us.i, i64 24
  %i.ko = load <2 x float>, ptr %i.kj, align 4, !tbaa !53
  %i.kp = insertelement <2 x float> poison, float %i.kk, i64 0
  %i.kq = shufflevector <2 x float> %i.kp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kr = fmul fast <2 x float> %i.ko, %i.kq
  %i.ks = fadd fast <2 x float> %i.kr, %i.kh
  %i.kt = load <2 x float>, ptr %i.kn, align 4, !tbaa !53
  %i.ku = insertelement <2 x float> poison, float %i.km, i64 0
  %i.kv = shufflevector <2 x float> %i.ku, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kw = fmul fast <2 x float> %i.kt, %i.kv
  %i.kx = fadd fast <2 x float> %i.ks, %i.kw      ; 3 uses
  %i.ky = getelementptr inbounds [4 x i8], ptr %i.ki, i64 %i.jq ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.6227426.us.i, i64 32 ; 2 uses
  %niter206.next.1 = add nuw nsw i32 %niter206, 2 ; 2 uses
  %niter206.ncmp.1 = icmp eq i32 %niter206.next.1, %unroll_iter205
  br i1 %niter206.ncmp.1, label %._crit_edge431.us.i.unr-lcssa, label %.lr.ph430.us.i.new, !llvm.loop !231

._crit_edge431.us.i.unr-lcssa:                    ; preds = %.lr.ph430.us.i.new
  br i1 %lcmp.mod202.not, label %._crit_edge431.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge431.us.i.unr-lcssa, %.lr.ph430.us.i
  %.0212427.us.i.epil.init = phi ptr [ %gep448.us.i, %.lr.ph430.us.i ], [ %i.ky, %._crit_edge431.us.i.unr-lcssa ] ; 2 uses
  %.6227426.us.i.epil.init = phi ptr [ %.5226437.us.i, %.lr.ph430.us.i ], [ %i.kz, %._crit_edge431.us.i.unr-lcssa ] ; 2 uses
  %.epil.init = phi <2 x float> [ %i.js, %.lr.ph430.us.i ], [ %i.kx, %._crit_edge431.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod204)
  %i.la = load float, ptr %.0212427.us.i.epil.init, align 4, !tbaa !53
  %i.lb = getelementptr inbounds [4 x i8], ptr %.0212427.us.i.epil.init, i64 %i.jo
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !53
  %i.ld = getelementptr inbounds nuw i8, ptr %.6227426.us.i.epil.init, i64 8
  %i.le = load <2 x float>, ptr %.6227426.us.i.epil.init, align 4, !tbaa !53
  %i.lf = insertelement <2 x float> poison, float %i.la, i64 0
  %i.lg = shufflevector <2 x float> %i.lf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lh = fmul fast <2 x float> %i.le, %i.lg
  %i.li = fadd fast <2 x float> %i.lh, %.epil.init
  %i.lj = load <2 x float>, ptr %i.ld, align 4, !tbaa !53
  %i.lk = insertelement <2 x float> poison, float %i.lc, i64 0
  %i.ll = shufflevector <2 x float> %i.lk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lm = fmul fast <2 x float> %i.lj, %i.ll
  %i.ln = fadd fast <2 x float> %i.li, %i.lm
  br label %._crit_edge431.us.i

._crit_edge431.us.i:                              ; preds = %._crit_edge431.us.i.unr-lcssa, %.epil.preheader
  %.lcssa195 = phi <2 x float> [ %i.kx, %._crit_edge431.us.i.unr-lcssa ], [ %i.ln, %.epil.preheader ] ; 2 uses
  %scevgep621.i = getelementptr i8, ptr %.5226437.us.i, i64 16
  %scevgep622.i = getelementptr i8, ptr %scevgep621.i, i64 %i.fv ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.lo = trunc i64 %indvars.iv.next.i to i32     ; 2 uses
  %i.lp = or i32 %i.lo, 1
  %i.lq = icmp slt i32 %i.lp, %i.dh
  br i1 %i.lq, label %.lr.ph430.us.i, label %.preheader397.i, !llvm.loop !232

.preheader397.i:                                  ; preds = %._crit_edge431.us.i, %._crit_edge.i
  %.5226.lcssa.i = phi ptr [ %.0221.lcssa.i, %._crit_edge.i ], [ %scevgep622.i, %._crit_edge431.us.i ]
  %.1219.lcssa.i = phi i32 [ %.0218.lcssa.i, %._crit_edge.i ], [ %i.lo, %._crit_edge431.us.i ] ; 2 uses
  %i.lr = phi <2 x float> [ %i.jj, %._crit_edge.i ], [ %.lcssa195, %._crit_edge431.us.i ] ; 3 uses
  %i.ls = icmp slt i32 %.1219.lcssa.i, %i.dh
  br i1 %i.ls, label %.lr.ph467.i, label %._crit_edge468.i

.lr.ph467.i:                                      ; preds = %.preheader397.i
  %i.lt = mul nsw i64 %indvars.iv631.i, %i.fx
  %invariant.gep473.i = getelementptr [4 x i8], ptr %i.fy, i64 %i.lt
  %i.lu = load i32, ptr %i.b, align 4
  %i.lv = sext i32 %i.lu to i64                   ; 5 uses
  br i1 %i.fs, label %.lr.ph458.us.preheader.i, label %._crit_edge468.i

.lr.ph458.us.preheader.i:                         ; preds = %.lr.ph467.i
  %i.lw = zext i32 %.1219.lcssa.i to i64
  br label %.lr.ph458.us.i

.lr.ph458.us.i:                                   ; preds = %._crit_edge459.us.i, %.lr.ph458.us.preheader.i
  %indvars.iv628.i = phi i64 [ %i.lw, %.lr.ph458.us.preheader.i ], [ %indvars.iv.next629.i, %._crit_edge459.us.i ] ; 2 uses
  %.7228465.us.i = phi ptr [ %.5226.lcssa.i, %.lr.ph458.us.preheader.i ], [ %scevgep626.i, %._crit_edge459.us.i ] ; 3 uses
  %i.lx = phi <2 x float> [ %i.lr, %.lr.ph458.us.preheader.i ], [ %.lcssa197, %._crit_edge459.us.i ] ; 2 uses
  %.reass472.us.i = mul i64 %factor.op.mul.i, %indvars.iv628.i
  %gep474.us.i = getelementptr i8, ptr %invariant.gep473.i, i64 %.reass472.us.i ; 2 uses
  br i1 %i.gd, label %.epil.preheader207, label %.lr.ph458.us.i.new

.lr.ph458.us.i.new:                               ; preds = %.lr.ph458.us.i, %.lr.ph458.us.i.new
  %.0210455.us.i = phi ptr [ %i.nd, %.lr.ph458.us.i.new ], [ %gep474.us.i, %.lr.ph458.us.i ] ; 2 uses
  %.8229454.us.i = phi ptr [ %i.ne, %.lr.ph458.us.i.new ], [ %.7228465.us.i, %.lr.ph458.us.i ] ; 5 uses
  %i.ly = phi <2 x float> [ %i.nc, %.lr.ph458.us.i.new ], [ %i.lx, %.lr.ph458.us.i ]
  %niter215 = phi i32 [ %niter215.next.3, %.lr.ph458.us.i.new ], [ 0, %.lr.ph458.us.i ]
  %i.lz = load float, ptr %.0210455.us.i, align 4, !tbaa !53
  %i.ma = load <2 x float>, ptr %.8229454.us.i, align 4, !tbaa !53
  %i.mb = insertelement <2 x float> poison, float %i.lz, i64 0
  %i.mc = shufflevector <2 x float> %i.mb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.md = fmul fast <2 x float> %i.ma, %i.mc
  %i.me = fadd fast <2 x float> %i.md, %i.ly
  %i.mf = getelementptr inbounds [4 x i8], ptr %.0210455.us.i, i64 %i.lv ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.8229454.us.i, i64 8
  %i.mh = load float, ptr %i.mf, align 4, !tbaa !53
  %i.mi = load <2 x float>, ptr %i.mg, align 4, !tbaa !53
  %i.mj = insertelement <2 x float> poison, float %i.mh, i64 0
  %i.mk = shufflevector <2 x float> %i.mj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ml = fmul fast <2 x float> %i.mi, %i.mk
  %i.mm = fadd fast <2 x float> %i.ml, %i.me
  %i.mn = getelementptr inbounds [4 x i8], ptr %i.mf, i64 %i.lv ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.8229454.us.i, i64 16
  %i.mp = load float, ptr %i.mn, align 4, !tbaa !53
  %i.mq = load <2 x float>, ptr %i.mo, align 4, !tbaa !53
  %i.mr = insertelement <2 x float> poison, float %i.mp, i64 0
  %i.ms = shufflevector <2 x float> %i.mr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mt = fmul fast <2 x float> %i.mq, %i.ms
  %i.mu = fadd fast <2 x float> %i.mt, %i.mm
  %i.mv = getelementptr inbounds [4 x i8], ptr %i.mn, i64 %i.lv ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.8229454.us.i, i64 24
  %i.mx = load float, ptr %i.mv, align 4, !tbaa !53
  %i.my = load <2 x float>, ptr %i.mw, align 4, !tbaa !53
  %i.mz = insertelement <2 x float> poison, float %i.mx, i64 0
  %i.na = shufflevector <2 x float> %i.mz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nb = fmul fast <2 x float> %i.my, %i.na
  %i.nc = fadd fast <2 x float> %i.nb, %i.mu      ; 3 uses
  %i.nd = getelementptr inbounds [4 x i8], ptr %i.mv, i64 %i.lv ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %.8229454.us.i, i64 32 ; 2 uses
  %niter215.next.3 = add nuw nsw i32 %niter215, 4 ; 2 uses
  %niter215.ncmp.3 = icmp eq i32 %niter215.next.3, %unroll_iter214
  br i1 %niter215.ncmp.3, label %._crit_edge459.us.i.unr-lcssa, label %.lr.ph458.us.i.new, !llvm.loop !233

._crit_edge459.us.i.unr-lcssa:                    ; preds = %.lr.ph458.us.i.new
  br i1 %lcmp.mod211.not, label %._crit_edge459.us.i, label %.epil.preheader207

.epil.preheader207:                               ; preds = %._crit_edge459.us.i.unr-lcssa, %.lr.ph458.us.i
  %.0210455.us.i.epil.init = phi ptr [ %gep474.us.i, %.lr.ph458.us.i ], [ %i.nd, %._crit_edge459.us.i.unr-lcssa ]
  %.8229454.us.i.epil.init = phi ptr [ %.7228465.us.i, %.lr.ph458.us.i ], [ %i.ne, %._crit_edge459.us.i.unr-lcssa ]
  %.epil.init210 = phi <2 x float> [ %i.lx, %.lr.ph458.us.i ], [ %i.nc, %._crit_edge459.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod213)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader207
  %.0210455.us.i.epil = phi ptr [ %.0210455.us.i.epil.init, %.epil.preheader207 ], [ %i.nm, %bb.k ] ; 2 uses
  %.8229454.us.i.epil = phi ptr [ %.8229454.us.i.epil.init, %.epil.preheader207 ], [ %i.nn, %bb.k ] ; 2 uses
  %i.nf = phi <2 x float> [ %.epil.init210, %.epil.preheader207 ], [ %i.nl, %bb.k ]
  %epil.iter = phi i32 [ 0, %.epil.preheader207 ], [ %epil.iter.next, %bb.k ]
  %i.ng = load float, ptr %.0210455.us.i.epil, align 4, !tbaa !53
  %i.nh = load <2 x float>, ptr %.8229454.us.i.epil, align 4, !tbaa !53
  %i.ni = insertelement <2 x float> poison, float %i.ng, i64 0
  %i.nj = shufflevector <2 x float> %i.ni, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nk = fmul fast <2 x float> %i.nh, %i.nj
  %i.nl = fadd fast <2 x float> %i.nk, %i.nf      ; 2 uses
  %i.nm = getelementptr inbounds [4 x i8], ptr %.0210455.us.i.epil, i64 %i.lv
  %i.nn = getelementptr inbounds nuw i8, ptr %.8229454.us.i.epil, i64 8
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter208
  br i1 %epil.iter.cmp.not, label %._crit_edge459.us.i, label %bb.k, !llvm.loop !234

._crit_edge459.us.i:                              ; preds = %bb.k, %._crit_edge459.us.i.unr-lcssa
  %.lcssa197 = phi <2 x float> [ %i.nc, %._crit_edge459.us.i.unr-lcssa ], [ %i.nl, %bb.k ] ; 2 uses
  %scevgep625.i = getelementptr i8, ptr %.7228465.us.i, i64 8
  %scevgep626.i = getelementptr i8, ptr %scevgep625.i, i64 %i.fw
  %indvars.iv.next629.i = add nuw nsw i64 %indvars.iv628.i, 1 ; 2 uses
  %i.no = trunc nuw i64 %indvars.iv.next629.i to i32
  %i.np = icmp sgt i32 %i.dh, %i.no
  br i1 %i.np, label %.lr.ph458.us.i, label %._crit_edge468.i, !llvm.loop !235

._crit_edge468.i:                                 ; preds = %._crit_edge459.us.i, %.lr.ph440.i, %.lr.ph467.i, %.preheader397.i
  %i.nq = phi <2 x float> [ %i.lr, %.preheader397.i ], [ %i.lr, %.lr.ph467.i ], [ %i.jj, %.lr.ph440.i ], [ %.lcssa197, %._crit_edge459.us.i ] ; 12 uses
  switch i32 %i.dt, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit259.i [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit260.thread376.i
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit260.thread379.i
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit260.thread373.i
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit260.thread382.i
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit260.thread385.i
    i32 6, label %bb.l
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit260.thread376.i: ; preds = %._crit_edge468.i
  %i.nr = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.nq, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit259.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit260.thread379.i: ; preds = %._crit_edge468.i
  %i.ns = load ptr, ptr %i.cf, align 8, !tbaa !18
  %i.nt = load float, ptr %i.ns, align 4, !tbaa !53
  %i.nu = fcmp fast ogt <2 x float> %i.nq, zeroinitializer
  %i.nv = insertelement <2 x float> poison, float %i.nt, i64 0
  %i.nw = shufflevector <2 x float> %i.nv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nx = select <2 x i1> %i.nu, <2 x float> splat (float 1.000000e+00), <2 x float> %i.nw
  %i.ny = fmul fast <2 x float> %i.nx, %i.nq
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit259.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit260.thread373.i: ; preds = %._crit_edge468.i
  %i.nz = load ptr, ptr %i.cf, align 8, !tbaa !18 ; 2 uses
  %i.oa = load float, ptr %i.nz, align 4, !tbaa !53 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 4
  %i.oc = load float, ptr %i.ob, align 4, !tbaa !53 ; 4 uses
  %i.od = extractelement <2 x float> %i.nq, i64 0
  %.0347.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.od, float %i.oa) ; 2 uses
  %i.oe = fcmp fast ogt float %.0347.i, %i.oc
  %.1348375.i = select i1 %i.oe, float %i.oc, float %.0347.i
  %i.of = extractelement <2 x float> %i.nq, i64 1
  %.0349.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.of, float %i.oa) ; 2 uses
  %i.og = fcmp fast ogt float %.0349.i, %i.oc
  %i.oh = insertelement <2 x float> poison, float %.1348375.i, i64 0
  %i.oi = insertelement <2 x float> %i.oh, float %.0349.i, i64 1 ; 2 uses
  br i1 %i.og, label %bb.o, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit259.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit260.thread382.i: ; preds = %._crit_edge468.i
  %i.oj = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.nq, <2 x float> splat (float f0x42B0C0A5))
  %i.ok = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.oj, <2 x float> splat (float f0xC2B0C0A5))
  %i.ol = fneg fast <2 x float> %i.ok
  %i.om = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.ol)
  %i.on = fadd fast <2 x float> %i.om, splat (float 1.000000e+00)
  %i.oo = fdiv fast <2 x float> splat (float 1.000000e+00), %i.on
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit259.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit260.thread385.i: ; preds = %._crit_edge468.i
  %i.op = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.nq)
  %i.oq = fadd fast <2 x float> %i.op, splat (float 1.000000e+00)
  %i.or = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.oq)
  %i.os = call fast <2 x float> @llvm.tanh.v2f32(<2 x float> %i.or)
  %i.ot = fmul fast <2 x float> %i.os, %i.nq
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit259.i

bb.l:                                             ; preds = %._crit_edge468.i
  %i.ou = load ptr, ptr %i.cf, align 8, !tbaa !18 ; 2 uses
  %i.ov = load float, ptr %i.ou, align 4, !tbaa !53 ; 5 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ou, i64 4
  %i.ox = load float, ptr %i.ow, align 4, !tbaa !53 ; 3 uses
  %i.oy = fneg fast float %i.ox
  %i.oz = fdiv fast float %i.oy, %i.ov            ; 4 uses
  %i.pa = extractelement <2 x float> %i.nq, i64 0 ; 5 uses
  %i.pb = fcmp fast olt float %i.pa, %i.oz
  br i1 %i.pb, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit260.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.pc = fdiv fast float 1.000000e+00, %i.ov
  %i.pd = fadd fast float %i.oz, %i.pc
  %i.pe = fcmp fast ogt float %i.pa, %i.pd
  br i1 %i.pe, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit260.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.pf = fmul fast float %i.ov, %i.pa
  %i.pg = fadd fast float %i.pf, %i.ox
  %i.ph = fmul fast float %i.pg, %i.pa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit260.thread.i

bb.o:                                             ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit260.thread373.i
  %i.pi = insertelement <2 x float> %i.oi, float %i.oc, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit259.i

end_hunk_0
begin_hunk_1_@_ZNK4ncnn17Convolution1D_x867forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %bb.s, %bb.r
  %.0201.i = phi nsz float [ %i.qz, %bb.s ], [ 0.000000e+00, %bb.r ]
  br i1 %i.em, label %.lr.ph510.i, label %._crit_edge511.i

.lr.ph510.i:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit.i
  %i.ra = trunc nuw nsw i64 %indvars.iv658.i to i32
  %.reass569.i = mul i32 %factor.op.mul568.i, %i.ra
  %i.rb = sext i32 %.reass569.i to i64
  %invariant.gep517.i = getelementptr [4 x i8], ptr %i.qs, i64 %i.rb ; 2 uses
  %i.rc = load i32, ptr %i.a, align 4             ; 6 uses
  %i.rd = icmp slt i32 %i.rc, 1                   ; 2 uses
  %i.re = load i32, ptr %i.b, align 4             ; 2 uses
  %i.rf = shl nsw i32 %i.re, 2
  %i.rg = sext i32 %i.rf to i64                   ; 5 uses
  %i.rh = load i32, ptr %i.e, align 4             ; 3 uses
  %i.ri = mul nsw i32 %i.rh, 3
  %i.rj = sext i32 %i.ri to i64
  %i.rk = shl nsw i32 %i.rh, 1
  %i.rl = sext i32 %i.rk to i64
  %i.rm = sext i32 %i.rh to i64
  %i.rn = sext i32 %i.re to i64
  %i.ro = add i32 %i.rc, -1
  %i.rp = zext i32 %i.ro to i64
  %i.rq = shl nuw nsw i64 %i.rp, 4                ; 2 uses
  %brmerge582.i = select i1 %i.en, i1 true, i1 %i.rd
  br i1 %brmerge582.i, label %.lr.ph510.i.split.us, label %.lr.ph496.i.preheader.preheader

.lr.ph496.i.preheader.preheader:                  ; preds = %.lr.ph510.i
  %i.rr = add nsw i32 %i.rc, -1
  %xtraiter216 = and i32 %i.rc, 3                 ; 3 uses
  %i.rs = icmp ult i32 %i.rr, 3
  %unroll_iter221 = and i32 %i.rc, 2147483644
  %lcmp.mod218.not = icmp eq i32 %xtraiter216, 0
  %lcmp.mod220 = icmp ne i32 %xtraiter216, 0
  br label %.lr.ph496.i.preheader

.lr.ph510.i.split.us:                             ; preds = %.lr.ph510.i
  %brmerge585.i = select i1 %i.eo, i1 true, i1 %i.rd
  br i1 %brmerge585.i, label %._crit_edge511.i, label %.loopexit391.i.us

.loopexit391.i.us:                                ; preds = %.lr.ph510.i.split.us, %.loopexit.loopexit.i.us
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %.loopexit.loopexit.i.us ], [ 0, %.lr.ph510.i.split.us ] ; 2 uses
  %.0198508.i.us = phi ptr [ %scevgep644.i.us, %.loopexit.loopexit.i.us ], [ %i.qj, %.lr.ph510.i.split.us ] ; 2 uses
  %.0353507.i.us = phi <4 x float> [ %i.sg, %.loopexit.loopexit.i.us ], [ zeroinitializer, %.lr.ph510.i.split.us ]
  %.reass516.i.us = mul i64 %factor.op.mul515.i, %indvars.iv97
  %gep518.i.us = getelementptr i8, ptr %invariant.gep517.i, i64 %.reass516.i.us
  br label %.lr.ph504.i.us

.lr.ph504.i.us:                                   ; preds = %.loopexit391.i.us, %.lr.ph504.i.us
  %.0192503.i.us = phi i32 [ %i.sj, %.lr.ph504.i.us ], [ 0, %.loopexit391.i.us ]
  %.2502.i.us = phi ptr [ %i.sh, %.lr.ph504.i.us ], [ %gep518.i.us, %.loopexit391.i.us ] ; 5 uses
  %.3501.i.us = phi ptr [ %i.si, %.lr.ph504.i.us ], [ %.0198508.i.us, %.loopexit391.i.us ] ; 2 uses
  %.3356500.i.us = phi <4 x float> [ %i.sg, %.lr.ph504.i.us ], [ %.0353507.i.us, %.loopexit391.i.us ]
  %i.rt = getelementptr inbounds [4 x i8], ptr %.2502.i.us, i64 %i.rj
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !53
  %i.rv = getelementptr inbounds [4 x i8], ptr %.2502.i.us, i64 %i.rl
  %i.rw = load float, ptr %i.rv, align 4, !tbaa !53
  %i.rx = getelementptr inbounds [4 x i8], ptr %.2502.i.us, i64 %i.rm
  %i.ry = load float, ptr %i.rx, align 4, !tbaa !53
  %i.rz = load float, ptr %.2502.i.us, align 4, !tbaa !53
  %i.sa = insertelement <4 x float> poison, float %i.rz, i64 0
  %i.sb = insertelement <4 x float> %i.sa, float %i.ry, i64 1
  %i.sc = insertelement <4 x float> %i.sb, float %i.rw, i64 2
  %i.sd = insertelement <4 x float> %i.sc, float %i.ru, i64 3
  %i.se = load <4 x float>, ptr %.3501.i.us, align 16, !tbaa !227
  %i.sf = fmul fast <4 x float> %i.sd, %i.se
  %i.sg = fadd fast <4 x float> %i.sf, %.3356500.i.us ; 3 uses
  %i.sh = getelementptr inbounds [4 x i8], ptr %.2502.i.us, i64 %i.rn
  %i.si = getelementptr inbounds nuw i8, ptr %.3501.i.us, i64 16
  %i.sj = add nuw nsw i32 %.0192503.i.us, 1       ; 2 uses
  %exitcond645.not.i.us = icmp eq i32 %i.sj, %i.rc
  br i1 %exitcond645.not.i.us, label %.loopexit.loopexit.i.us, label %.lr.ph504.i.us, !llvm.loop !238

.loopexit.loopexit.i.us:                          ; preds = %.lr.ph504.i.us
  %scevgep643.i.us = getelementptr i8, ptr %.0198508.i.us, i64 16
  %scevgep644.i.us = getelementptr i8, ptr %scevgep643.i.us, i64 %i.rq ; 2 uses
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 4 ; 2 uses
  %i.sk = icmp slt i64 %indvars.iv.next98, %invariant.op169
  br i1 %i.sk, label %.loopexit391.i.us, label %._crit_edge511.i, !llvm.loop !239

.lr.ph496.i.preheader:                            ; preds = %.lr.ph496.i.preheader.preheader, %.loopexit391.thread.i
  %.0195509.i = phi i32 [ %i.tr, %.loopexit391.thread.i ], [ 0, %.lr.ph496.i.preheader.preheader ] ; 2 uses
  %.0198508.i = phi ptr [ %scevgep641.i, %.loopexit391.thread.i ], [ %i.qj, %.lr.ph496.i.preheader.preheader ] ; 3 uses
  %.0353507.i = phi <4 x float> [ %.lcssa, %.loopexit391.thread.i ], [ zeroinitializer, %.lr.ph496.i.preheader.preheader ] ; 2 uses
  %i.sl = lshr exact i32 %.0195509.i, 2
  %i.sm = zext nneg i32 %i.sl to i64
  %.reass516.i = mul i64 %factor.op.mul515.i, %i.sm
  %gep518.i = getelementptr i8, ptr %invariant.gep517.i, i64 %.reass516.i ; 2 uses
  br i1 %i.rs, label %.lr.ph496.i.epil.preheader, label %.lr.ph496.i

.lr.ph496.i:                                      ; preds = %.lr.ph496.i.preheader, %.lr.ph496.i
  %.0194494.i = phi ptr [ %i.tj, %.lr.ph496.i ], [ %gep518.i, %.lr.ph496.i.preheader ] ; 2 uses
  %.1199493.i = phi ptr [ %i.tk, %.lr.ph496.i ], [ %.0198508.i, %.lr.ph496.i.preheader ] ; 5 uses
  %.1354492.i = phi <4 x float> [ %i.ti, %.lr.ph496.i ], [ %.0353507.i, %.lr.ph496.i.preheader ]
  %niter222 = phi i32 [ %niter222.next.3, %.lr.ph496.i ], [ 0, %.lr.ph496.i.preheader ]
  %i.sn = load <4 x float>, ptr %.0194494.i, align 16, !tbaa !227
  %i.so = load <4 x float>, ptr %.1199493.i, align 16, !tbaa !227
  %i.sp = fmul fast <4 x float> %i.so, %i.sn
  %i.sq = fadd fast <4 x float> %i.sp, %.1354492.i
  %i.sr = getelementptr inbounds [4 x i8], ptr %.0194494.i, i64 %i.rg ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %.1199493.i, i64 16
  %i.st = load <4 x float>, ptr %i.sr, align 16, !tbaa !227
  %i.su = load <4 x float>, ptr %i.ss, align 16, !tbaa !227
  %i.sv = fmul fast <4 x float> %i.su, %i.st
  %i.sw = fadd fast <4 x float> %i.sv, %i.sq
  %i.sx = getelementptr inbounds [4 x i8], ptr %i.sr, i64 %i.rg ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %.1199493.i, i64 32
  %i.sz = load <4 x float>, ptr %i.sx, align 16, !tbaa !227
  %i.ta = load <4 x float>, ptr %i.sy, align 16, !tbaa !227
  %i.tb = fmul fast <4 x float> %i.ta, %i.sz
  %i.tc = fadd fast <4 x float> %i.tb, %i.sw
  %i.td = getelementptr inbounds [4 x i8], ptr %i.sx, i64 %i.rg ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %.1199493.i, i64 48
  %i.tf = load <4 x float>, ptr %i.td, align 16, !tbaa !227
  %i.tg = load <4 x float>, ptr %i.te, align 16, !tbaa !227
  %i.th = fmul fast <4 x float> %i.tg, %i.tf
  %i.ti = fadd fast <4 x float> %i.th, %i.tc      ; 3 uses
  %i.tj = getelementptr inbounds [4 x i8], ptr %i.td, i64 %i.rg ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %.1199493.i, i64 64 ; 2 uses
  %niter222.next.3 = add nuw nsw i32 %niter222, 4 ; 2 uses
  %niter222.ncmp.3 = icmp eq i32 %niter222.next.3, %unroll_iter221
  br i1 %niter222.ncmp.3, label %.loopexit391.thread.i.unr-lcssa, label %.lr.ph496.i, !llvm.loop !240

.loopexit391.thread.i.unr-lcssa:                  ; preds = %.lr.ph496.i
  br i1 %lcmp.mod218.not, label %.loopexit391.thread.i, label %.lr.ph496.i.epil.preheader

.lr.ph496.i.epil.preheader:                       ; preds = %.loopexit391.thread.i.unr-lcssa, %.lr.ph496.i.preheader
  %.0194494.i.epil.init = phi ptr [ %gep518.i, %.lr.ph496.i.preheader ], [ %i.tj, %.loopexit391.thread.i.unr-lcssa ]
  %.1199493.i.epil.init = phi ptr [ %.0198508.i, %.lr.ph496.i.preheader ], [ %i.tk, %.loopexit391.thread.i.unr-lcssa ]
  %.1354492.i.epil.init = phi <4 x float> [ %.0353507.i, %.lr.ph496.i.preheader ], [ %i.ti, %.loopexit391.thread.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod220)
  br label %.lr.ph496.i.epil

.lr.ph496.i.epil:                                 ; preds = %.lr.ph496.i.epil, %.lr.ph496.i.epil.preheader
  %.0194494.i.epil = phi ptr [ %i.tp, %.lr.ph496.i.epil ], [ %.0194494.i.epil.init, %.lr.ph496.i.epil.preheader ] ; 2 uses
  %.1199493.i.epil = phi ptr [ %i.tq, %.lr.ph496.i.epil ], [ %.1199493.i.epil.init, %.lr.ph496.i.epil.preheader ] ; 2 uses
  %.1354492.i.epil = phi <4 x float> [ %i.to, %.lr.ph496.i.epil ], [ %.1354492.i.epil.init, %.lr.ph496.i.epil.preheader ]
  %epil.iter217 = phi i32 [ %epil.iter217.next, %.lr.ph496.i.epil ], [ 0, %.lr.ph496.i.epil.preheader ]
  %i.tl = load <4 x float>, ptr %.0194494.i.epil, align 16, !tbaa !227
  %i.tm = load <4 x float>, ptr %.1199493.i.epil, align 16, !tbaa !227
  %i.tn = fmul fast <4 x float> %i.tm, %i.tl
  %i.to = fadd fast <4 x float> %i.tn, %.1354492.i.epil ; 2 uses
  %i.tp = getelementptr inbounds [4 x i8], ptr %.0194494.i.epil, i64 %i.rg
  %i.tq = getelementptr inbounds nuw i8, ptr %.1199493.i.epil, i64 16
  %epil.iter217.next = add i32 %epil.iter217, 1   ; 2 uses
  %epil.iter217.cmp.not = icmp eq i32 %epil.iter217.next, %xtraiter216
  br i1 %epil.iter217.cmp.not, label %.loopexit391.thread.i, label %.lr.ph496.i.epil, !llvm.loop !241

.loopexit391.thread.i:                            ; preds = %.lr.ph496.i.epil, %.loopexit391.thread.i.unr-lcssa
  %.lcssa = phi <4 x float> [ %i.ti, %.loopexit391.thread.i.unr-lcssa ], [ %i.to, %.lr.ph496.i.epil ] ; 2 uses
  %scevgep640.i = getelementptr i8, ptr %.0198508.i, i64 16
  %scevgep641.i = getelementptr i8, ptr %scevgep640.i, i64 %i.rq ; 2 uses
  %i.tr = add nuw nsw i32 %.0195509.i, 4          ; 2 uses
  %i.ts = or disjoint i32 %i.tr, 3
  %i.tt = icmp slt i32 %i.ts, %i.cj
  br i1 %i.tt, label %.lr.ph496.i.preheader, label %._crit_edge511.i, !llvm.loop !239

._crit_edge511.i:                                 ; preds = %.loopexit391.thread.i, %.loopexit.loopexit.i.us, %.lr.ph510.i.split.us, %_ZN4ncnn3MatD2Ev.exit.i
  %.0353.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.sg, %.loopexit.loopexit.i.us ], [ zeroinitializer, %.lr.ph510.i.split.us ], [ %.lcssa, %.loopexit391.thread.i ] ; 2 uses
  %.0198.lcssa.i = phi ptr [ %i.qj, %_ZN4ncnn3MatD2Ev.exit.i ], [ %scevgep644.i.us, %.loopexit.loopexit.i.us ], [ %i.qj, %.lr.ph510.i.split.us ], [ %scevgep641.i, %.loopexit391.thread.i ] ; 2 uses
  %.0195.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.ev, %.loopexit.loopexit.i.us ], [ %i.ev, %.lr.ph510.i.split.us ], [ %i.ev, %.loopexit391.thread.i ] ; 3 uses
  %i.tu = shufflevector <4 x float> %.0353.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.tv = fadd fast <4 x float> %i.tu, %.0353.lcssa.i ; 2 uses
  %i.tw = extractelement <4 x float> %i.tv, i64 1
  %i.tx = extractelement <4 x float> %i.tv, i64 0
  %i.ty = fadd fast float %i.tw, %.0201.i
  %i.tz = fadd fast float %i.ty, %i.tx            ; 3 uses
  %i.ua = or disjoint i32 %.0195.lcssa.i, 1
  %i.ub = icmp slt i32 %i.ua, %i.cj
  br i1 %i.ub, label %.lr.ph532.i, label %.preheader392.i

.lr.ph532.i:                                      ; preds = %._crit_edge511.i
  %i.uc = mul nsw i64 %indvars.iv658.i, %i.qr
  %invariant.gep538.i = getelementptr [4 x i8], ptr %i.qs, i64 %i.uc
  %i.ud = load i32, ptr %i.e, align 4
  %i.ue = sext i32 %i.ud to i64                   ; 3 uses
  %i.uf = load i32, ptr %i.b, align 4
  %i.ug = sext i32 %i.uf to i64                   ; 2 uses
  br i1 %i.qm, label %.lr.ph524.us.preheader.i, label %._crit_edge556.i

.lr.ph524.us.preheader.i:                         ; preds = %.lr.ph532.i
  %i.uh = zext i32 %.0195.lcssa.i to i64
  br label %.lr.ph524.us.i

.lr.ph524.us.i:                                   ; preds = %._crit_edge525.us.i, %.lr.ph524.us.preheader.i
  %indvars.iv649.i = phi i64 [ %i.uh, %.lr.ph524.us.preheader.i ], [ %indvars.iv.next650.i, %._crit_edge525.us.i ] ; 2 uses
  %.5529.us.i = phi ptr [ %.0198.lcssa.i, %.lr.ph524.us.preheader.i ], [ %scevgep647.i, %._crit_edge525.us.i ] ; 3 uses
  %.1202528.us.i = phi float [ %i.tz, %.lr.ph524.us.preheader.i ], [ %.lcssa187, %._crit_edge525.us.i ] ; 2 uses
  %.reass537.us.i = mul i64 %factor.op.mul515.i, %indvars.iv649.i
  %gep539.us.i = getelementptr i8, ptr %invariant.gep538.i, i64 %.reass537.us.i ; 2 uses
  br i1 %i.qw, label %.epil.preheader223, label %.lr.ph524.us.i.new

.lr.ph524.us.i.new:                               ; preds = %.lr.ph524.us.i, %.lr.ph524.us.i.new
  %.0191521.us.i = phi ptr [ %i.ve, %.lr.ph524.us.i.new ], [ %gep539.us.i, %.lr.ph524.us.i ] ; 3 uses
  %.6520.us.i = phi ptr [ %i.vf, %.lr.ph524.us.i.new ], [ %.5529.us.i, %.lr.ph524.us.i ] ; 5 uses
  %.2203519.us.i = phi float [ %i.vd, %.lr.ph524.us.i.new ], [ %.1202528.us.i, %.lr.ph524.us.i ]
  %niter230 = phi i32 [ %niter230.next.1, %.lr.ph524.us.i.new ], [ 0, %.lr.ph524.us.i ]
  %i.ui = load float, ptr %.0191521.us.i, align 4, !tbaa !53
  %i.uj = load float, ptr %.6520.us.i, align 4, !tbaa !53
  %i.uk = fmul fast float %i.uj, %i.ui
  %i.ul = fadd fast float %i.uk, %.2203519.us.i
  %i.um = getelementptr inbounds [4 x i8], ptr %.0191521.us.i, i64 %i.ue
  %i.un = load float, ptr %i.um, align 4, !tbaa !53
  %i.uo = getelementptr inbounds nuw i8, ptr %.6520.us.i, i64 4
  %i.up = load float, ptr %i.uo, align 4, !tbaa !53
  %i.uq = fmul fast float %i.up, %i.un
  %i.ur = fadd fast float %i.ul, %i.uq
  %i.us = getelementptr inbounds [4 x i8], ptr %.0191521.us.i, i64 %i.ug ; 3 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %.6520.us.i, i64 8
  %i.uu = load float, ptr %i.us, align 4, !tbaa !53
  %i.uv = load float, ptr %i.ut, align 4, !tbaa !53
  %i.uw = fmul fast float %i.uv, %i.uu
  %i.ux = fadd fast float %i.uw, %i.ur
  %i.uy = getelementptr inbounds [4 x i8], ptr %i.us, i64 %i.ue
  %i.uz = load float, ptr %i.uy, align 4, !tbaa !53
  %i.va = getelementptr inbounds nuw i8, ptr %.6520.us.i, i64 12
  %i.vb = load float, ptr %i.va, align 4, !tbaa !53
  %i.vc = fmul fast float %i.vb, %i.uz
  %i.vd = fadd fast float %i.ux, %i.vc            ; 3 uses
  %i.ve = getelementptr inbounds [4 x i8], ptr %i.us, i64 %i.ug ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %.6520.us.i, i64 16 ; 2 uses
  %niter230.next.1 = add nuw nsw i32 %niter230, 2 ; 2 uses
  %niter230.ncmp.1 = icmp eq i32 %niter230.next.1, %unroll_iter229
  br i1 %niter230.ncmp.1, label %._crit_edge525.us.i.unr-lcssa, label %.lr.ph524.us.i.new, !llvm.loop !242

._crit_edge525.us.i.unr-lcssa:                    ; preds = %.lr.ph524.us.i.new
  br i1 %lcmp.mod226.not, label %._crit_edge525.us.i, label %.epil.preheader223

.epil.preheader223:                               ; preds = %._crit_edge525.us.i.unr-lcssa, %.lr.ph524.us.i
  %.0191521.us.i.epil.init = phi ptr [ %gep539.us.i, %.lr.ph524.us.i ], [ %i.ve, %._crit_edge525.us.i.unr-lcssa ] ; 2 uses
  %.6520.us.i.epil.init = phi ptr [ %.5529.us.i, %.lr.ph524.us.i ], [ %i.vf, %._crit_edge525.us.i.unr-lcssa ] ; 2 uses
  %.2203519.us.i.epil.init = phi float [ %.1202528.us.i, %.lr.ph524.us.i ], [ %i.vd, %._crit_edge525.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod228)
  %i.vg = load float, ptr %.0191521.us.i.epil.init, align 4, !tbaa !53
  %i.vh = load float, ptr %.6520.us.i.epil.init, align 4, !tbaa !53
  %i.vi = fmul fast float %i.vh, %i.vg
  %i.vj = fadd fast float %i.vi, %.2203519.us.i.epil.init
  %i.vk = getelementptr inbounds [4 x i8], ptr %.0191521.us.i.epil.init, i64 %i.ue
  %i.vl = load float, ptr %i.vk, align 4, !tbaa !53
  %i.vm = getelementptr inbounds nuw i8, ptr %.6520.us.i.epil.init, i64 4
  %i.vn = load float, ptr %i.vm, align 4, !tbaa !53
  %i.vo = fmul fast float %i.vn, %i.vl
  %i.vp = fadd fast float %i.vj, %i.vo
  br label %._crit_edge525.us.i

._crit_edge525.us.i:                              ; preds = %._crit_edge525.us.i.unr-lcssa, %.epil.preheader223
  %.lcssa187 = phi float [ %i.vd, %._crit_edge525.us.i.unr-lcssa ], [ %i.vp, %.epil.preheader223 ] ; 2 uses
  %scevgep646.i = getelementptr i8, ptr %.5529.us.i, i64 8
  %scevgep647.i = getelementptr i8, ptr %scevgep646.i, i64 %i.qp ; 2 uses
  %indvars.iv.next650.i = add nuw nsw i64 %indvars.iv649.i, 2 ; 2 uses
  %i.vq = trunc i64 %indvars.iv.next650.i to i32  ; 2 uses
  %i.vr = or i32 %i.vq, 1
  %i.vs = icmp slt i32 %i.vr, %i.cj
  br i1 %i.vs, label %.lr.ph524.us.i, label %.preheader392.i, !llvm.loop !243

.preheader392.i:                                  ; preds = %._crit_edge525.us.i, %._crit_edge511.i
  %.1202.lcssa.i = phi float [ %i.tz, %._crit_edge511.i ], [ %.lcssa187, %._crit_edge525.us.i ] ; 3 uses
  %.5.lcssa.i = phi ptr [ %.0198.lcssa.i, %._crit_edge511.i ], [ %scevgep647.i, %._crit_edge525.us.i ]
  %.1196.lcssa.i = phi i32 [ %.0195.lcssa.i, %._crit_edge511.i ], [ %i.vq, %._crit_edge525.us.i ] ; 2 uses
  %i.vt = icmp slt i32 %.1196.lcssa.i, %i.cj
  br i1 %i.vt, label %.lr.ph555.i, label %._crit_edge556.i

.lr.ph555.i:                                      ; preds = %.preheader392.i
  %i.vu = mul nsw i64 %indvars.iv658.i, %i.qr
  %invariant.gep560.i = getelementptr [4 x i8], ptr %i.qs, i64 %i.vu
  %i.vv = load i32, ptr %i.b, align 4
  %i.vw = sext i32 %i.vv to i64                   ; 5 uses
  br i1 %i.qm, label %.lr.ph548.us.preheader.i, label %._crit_edge556.i

.lr.ph548.us.preheader.i:                         ; preds = %.lr.ph555.i
  %i.vx = zext i32 %.1196.lcssa.i to i64
  br label %.lr.ph548.us.i

.lr.ph548.us.i:                                   ; preds = %._crit_edge549.us.i, %.lr.ph548.us.preheader.i
  %indvars.iv655.i = phi i64 [ %i.vx, %.lr.ph548.us.preheader.i ], [ %indvars.iv.next656.i, %._crit_edge549.us.i ] ; 2 uses
  %.7553.us.i = phi ptr [ %.5.lcssa.i, %.lr.ph548.us.preheader.i ], [ %scevgep653.i, %._crit_edge549.us.i ] ; 3 uses
  %.3204552.us.i = phi float [ %.1202.lcssa.i, %.lr.ph548.us.preheader.i ], [ %.lcssa189, %._crit_edge549.us.i ] ; 2 uses
  %.reass559.us.i = mul i64 %factor.op.mul515.i, %indvars.iv655.i
  %gep561.us.i = getelementptr i8, ptr %invariant.gep560.i, i64 %.reass559.us.i ; 2 uses
  br i1 %i.qx, label %.epil.preheader231, label %.lr.ph548.us.i.new

.lr.ph548.us.i.new:                               ; preds = %.lr.ph548.us.i, %.lr.ph548.us.i.new
  %.0189545.us.i = phi ptr [ %i.wu, %.lr.ph548.us.i.new ], [ %gep561.us.i, %.lr.ph548.us.i ] ; 2 uses
  %.8544.us.i = phi ptr [ %i.wv, %.lr.ph548.us.i.new ], [ %.7553.us.i, %.lr.ph548.us.i ] ; 5 uses
  %.4205543.us.i = phi float [ %i.wt, %.lr.ph548.us.i.new ], [ %.3204552.us.i, %.lr.ph548.us.i ]
  %niter238 = phi i32 [ %niter238.next.3, %.lr.ph548.us.i.new ], [ 0, %.lr.ph548.us.i ]
  %i.vy = load float, ptr %.0189545.us.i, align 4, !tbaa !53
  %i.vz = load float, ptr %.8544.us.i, align 4, !tbaa !53
  %i.wa = fmul fast float %i.vz, %i.vy
  %i.wb = fadd fast float %i.wa, %.4205543.us.i
  %i.wc = getelementptr inbounds [4 x i8], ptr %.0189545.us.i, i64 %i.vw ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %.8544.us.i, i64 4
  %i.we = load float, ptr %i.wc, align 4, !tbaa !53
  %i.wf = load float, ptr %i.wd, align 4, !tbaa !53
  %i.wg = fmul fast float %i.wf, %i.we
  %i.wh = fadd fast float %i.wg, %i.wb
  %i.wi = getelementptr inbounds [4 x i8], ptr %i.wc, i64 %i.vw ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %.8544.us.i, i64 8
  %i.wk = load float, ptr %i.wi, align 4, !tbaa !53
  %i.wl = load float, ptr %i.wj, align 4, !tbaa !53
  %i.wm = fmul fast float %i.wl, %i.wk
  %i.wn = fadd fast float %i.wm, %i.wh
  %i.wo = getelementptr inbounds [4 x i8], ptr %i.wi, i64 %i.vw ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %.8544.us.i, i64 12
  %i.wq = load float, ptr %i.wo, align 4, !tbaa !53
  %i.wr = load float, ptr %i.wp, align 4, !tbaa !53
  %i.ws = fmul fast float %i.wr, %i.wq
  %i.wt = fadd fast float %i.ws, %i.wn            ; 3 uses
  %i.wu = getelementptr inbounds [4 x i8], ptr %i.wo, i64 %i.vw ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %.8544.us.i, i64 16 ; 2 uses
  %niter238.next.3 = add nuw nsw i32 %niter238, 4 ; 2 uses
  %niter238.ncmp.3 = icmp eq i32 %niter238.next.3, %unroll_iter237
  br i1 %niter238.ncmp.3, label %._crit_edge549.us.i.unr-lcssa, label %.lr.ph548.us.i.new, !llvm.loop !244

._crit_edge549.us.i.unr-lcssa:                    ; preds = %.lr.ph548.us.i.new
  br i1 %lcmp.mod234.not, label %._crit_edge549.us.i, label %.epil.preheader231

.epil.preheader231:                               ; preds = %._crit_edge549.us.i.unr-lcssa, %.lr.ph548.us.i
  %.0189545.us.i.epil.init = phi ptr [ %gep561.us.i, %.lr.ph548.us.i ], [ %i.wu, %._crit_edge549.us.i.unr-lcssa ]
  %.8544.us.i.epil.init = phi ptr [ %.7553.us.i, %.lr.ph548.us.i ], [ %i.wv, %._crit_edge549.us.i.unr-lcssa ]
  %.4205543.us.i.epil.init = phi float [ %.3204552.us.i, %.lr.ph548.us.i ], [ %i.wt, %._crit_edge549.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod236)
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.epil.preheader231
  %.0189545.us.i.epil = phi ptr [ %.0189545.us.i.epil.init, %.epil.preheader231 ], [ %i.xa, %bb.t ] ; 2 uses
  %.8544.us.i.epil = phi ptr [ %.8544.us.i.epil.init, %.epil.preheader231 ], [ %i.xb, %bb.t ] ; 2 uses
  %.4205543.us.i.epil = phi float [ %.4205543.us.i.epil.init, %.epil.preheader231 ], [ %i.wz, %bb.t ]
  %epil.iter233 = phi i32 [ 0, %.epil.preheader231 ], [ %epil.iter233.next, %bb.t ]
  %i.ww = load float, ptr %.0189545.us.i.epil, align 4, !tbaa !53
  %i.wx = load float, ptr %.8544.us.i.epil, align 4, !tbaa !53
  %i.wy = fmul fast float %i.wx, %i.ww
  %i.wz = fadd fast float %i.wy, %.4205543.us.i.epil ; 2 uses
  %i.xa = getelementptr inbounds [4 x i8], ptr %.0189545.us.i.epil, i64 %i.vw
  %i.xb = getelementptr inbounds nuw i8, ptr %.8544.us.i.epil, i64 4
  %epil.iter233.next = add i32 %epil.iter233, 1   ; 2 uses
  %epil.iter233.cmp.not = icmp eq i32 %epil.iter233.next, %xtraiter232
  br i1 %epil.iter233.cmp.not, label %._crit_edge549.us.i, label %bb.t, !llvm.loop !245

._crit_edge549.us.i:                              ; preds = %bb.t, %._crit_edge549.us.i.unr-lcssa
  %.lcssa189 = phi float [ %i.wt, %._crit_edge549.us.i.unr-lcssa ], [ %i.wz, %bb.t ] ; 2 uses
  %scevgep652.i = getelementptr i8, ptr %.7553.us.i, i64 4
  %scevgep653.i = getelementptr i8, ptr %scevgep652.i, i64 %i.qq
  %indvars.iv.next656.i = add nuw nsw i64 %indvars.iv655.i, 1 ; 2 uses
  %i.xc = trunc nuw i64 %indvars.iv.next656.i to i32
  %i.xd = icmp sgt i32 %i.cj, %i.xc
  br i1 %i.xd, label %.lr.ph548.us.i, label %._crit_edge556.i, !llvm.loop !246

._crit_edge556.i:                                 ; preds = %._crit_edge549.us.i, %.lr.ph532.i, %.lr.ph555.i, %.preheader392.i
  %.3204.lcssa.i = phi float [ %.1202.lcssa.i, %.preheader392.i ], [ %.1202.lcssa.i, %.lr.ph555.i ], [ %i.tz, %.lr.ph532.i ], [ %.lcssa189, %._crit_edge549.us.i ] ; 13 uses
  switch i32 %i.ep, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i [
    i32 1, label %bb.u
    i32 2, label %bb.v
    i32 3, label %bb.w
    i32 4, label %bb.y
    i32 5, label %bb.z
    i32 6, label %bb.aa
  ]

bb.u:                                             ; preds = %._crit_edge556.i
  %i.xe = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.3204.lcssa.i, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.v:                                             ; preds = %._crit_edge556.i
  %i.xf = load ptr, ptr %i.cf, align 8, !tbaa !18
  %i.xg = load float, ptr %i.xf, align 4, !tbaa !53
  %i.xh = fcmp fast ogt float %.3204.lcssa.i, 0.000000e+00
  %i.xi = select fast i1 %i.xh, float 1.000000e+00, float %i.xg
  %i.xj = fmul fast float %i.xi, %.3204.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.w:                                             ; preds = %._crit_edge556.i
  %i.xk = load ptr, ptr %i.cf, align 8, !tbaa !18 ; 2 uses
  %i.xl = load float, ptr %i.xk, align 4, !tbaa !53
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xk, i64 4
  %i.xn = load float, ptr %i.xm, align 4, !tbaa !53 ; 2 uses
  %.0351.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.3204.lcssa.i, float %i.xl) ; 2 uses
  %i.xo = fcmp fast ogt float %.0351.i, %i.xn
  br i1 %i.xo, label %bb.x, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.x:                                             ; preds = %bb.w
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.y:                                             ; preds = %._crit_edge556.i
  %.sroa.speculated308.i = call nnan ninf nsz float @llvm.minnum.f32(float %.3204.lcssa.i, float f0x42B0C0A5)
  %.sroa.speculated.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated308.i, float f0xC2B0C0A5)
  %i.xp = fneg fast float %.sroa.speculated.i
  %i.xq = call fast float @llvm.exp.f32(float %i.xp)
  %i.xr = fadd fast float %i.xq, 1.000000e+00
  %i.xs = fdiv fast float 1.000000e+00, %i.xr
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.z:                                             ; preds = %._crit_edge556.i
  %i.xt = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.3204.lcssa.i)
  %i.xu = fadd fast float %i.xt, 1.000000e+00
  %i.xv = call fast float @llvm.log.f32(float %i.xu)
  %i.xw = call fast float @llvm.tanh.f32(float %i.xv)
  %i.xx = fmul fast float %i.xw, %.3204.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.aa:                                            ; preds = %._crit_edge556.i
  %i.xy = load ptr, ptr %i.cf, align 8, !tbaa !18 ; 2 uses
  %i.xz = load float, ptr %i.xy, align 4, !tbaa !53 ; 3 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xy, i64 4
  %i.yb = load float, ptr %i.ya, align 4, !tbaa !53 ; 2 uses
  %i.yc = fneg fast float %i.yb
  %i.yd = fdiv fast float %i.yc, %i.xz            ; 2 uses
  %i.ye = fcmp fast olt float %.3204.lcssa.i, %i.yd
  br i1 %i.ye, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.yf = fdiv fast float 1.000000e+00, %i.xz
  %i.yg = fadd fast float %i.yd, %i.yf
  %i.yh = fcmp fast ogt float %.3204.lcssa.i, %i.yg
  br i1 %i.yh, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.yi = fmul fast float %i.xz, %.3204.lcssa.i
  %i.yj = fadd fast float %i.yi, %i.yb
  %i.yk = fmul fast float %i.yj, %.3204.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit.i:         ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %._crit_edge556.i
  %.1352.i = phi nsz float [ %.3204.lcssa.i, %._crit_edge556.i ], [ %i.xe, %bb.u ], [ %i.xj, %bb.v ], [ %i.xn, %bb.x ], [ %.0351.i, %bb.w ], [ %i.xs, %bb.y ], [ %i.xx, %bb.z ], [ %i.yk, %bb.ac ], [ %.3204.lcssa.i, %bb.ab ], [ 0.000000e+00, %bb.aa ]
  store float %.1352.i, ptr %.0207563.i, align 4, !tbaa !53
  %i.yl = getelementptr inbounds nuw i8, ptr %.0207563.i, i64 4
  %indvars.iv.next659.i = add nuw nsw i64 %indvars.iv658.i, 1 ; 2 uses
  %exitcond662.not.i = icmp eq i64 %indvars.iv.next659.i, %wide.trip.count661.i
  br i1 %exitcond662.not.i, label %._crit_edge567.i, label %bb.r, !llvm.loop !247

_ZN4ncnnL20convolution1d_packedERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.exit: ; preds = %._crit_edge567.i, %._crit_edge488.split.i, %.lr.ph572.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_ZNK4ncnn3Mat5emptyEv.exit42.thread

_ZNK4ncnn3Mat5emptyEv.exit42.thread:              ; preds = %bb.f, %bb.d, %_ZN4ncnnL20convolution1d_packedERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.exit, %_ZNK4ncnn3Mat5emptyEv.exit, %_ZNK4ncnn3Mat5emptyEv.exit42
end_hunk_1
begin_hunk_2_@_ZNK4ncnn17Convolution1D_x8613forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.fq = sext i32 %.reass492.i to i64
  %invariant.gep.i = getelementptr [2 x i8], ptr %i.fi, i64 %i.fq ; 2 uses
  %i.fr = load i32, ptr %i.a, align 4             ; 5 uses
  %i.fs = icmp sgt i32 %i.fr, 0
  %i.ft = load i32, ptr %i.b, align 4             ; 2 uses
  %i.fu = shl nsw i32 %i.ft, 2
  %i.fv = sext i32 %i.fu to i64
  %i.fw = load i32, ptr %i.e, align 4             ; 3 uses
  %i.fx = mul nsw i32 %i.fw, 3
  %i.fy = sext i32 %i.fx to i64
  %i.fz = shl nsw i32 %i.fw, 1
  %i.ga = sext i32 %i.fz to i64
  %i.gb = sext i32 %i.fw to i64
  %i.gc = sext i32 %i.ft to i64
  %i.gd = add i32 %i.fr, -1
  %i.ge = zext i32 %i.gd to i64
  %i.gf = shl nuw nsw i64 %i.ge, 4                ; 2 uses
  br i1 %i.db, label %.preheader403.i.us, label %.lr.ph427.i.split

.preheader403.i.us:                               ; preds = %.lr.ph427.i, %.loopexit402.i.us
  %.0218426.i.us = phi i32 [ %i.hf, %.loopexit402.i.us ], [ 0, %.lr.ph427.i ] ; 2 uses
  %.0221425.i.us = phi ptr [ %.4225.i.us, %.loopexit402.i.us ], [ %i.ez, %.lr.ph427.i ] ; 3 uses
  %.0366424.i.us = phi <4 x float> [ %.4370.i.us, %.loopexit402.i.us ], [ zeroinitializer, %.lr.ph427.i ] ; 2 uses
  %.0371423.i.us = phi <4 x float> [ %.4375.i.us, %.loopexit402.i.us ], [ zeroinitializer, %.lr.ph427.i ] ; 2 uses
  br i1 %i.fs, label %.lr.ph.i.us.preheader, label %.loopexit402.i.us

.lr.ph.i.us.preheader:                            ; preds = %.preheader403.i.us
  %i.gg = lshr exact i32 %.0218426.i.us, 2
  %i.gh = zext nneg i32 %i.gg to i64
  %.reass.i.us = mul i64 %factor.op.mul.i, %i.gh
  %gep.i.us = getelementptr i8, ptr %invariant.gep.i, i64 %.reass.i.us
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader, %.lr.ph.i.us
  %.0214410.i.us = phi i32 [ %i.he, %.lr.ph.i.us ], [ 0, %.lr.ph.i.us.preheader ]
  %.0215409.i.us = phi ptr [ %i.hc, %.lr.ph.i.us ], [ %gep.i.us, %.lr.ph.i.us.preheader ] ; 2 uses
  %.1222408.i.us = phi ptr [ %i.hd, %.lr.ph.i.us ], [ %.0221425.i.us, %.lr.ph.i.us.preheader ] ; 3 uses
  %.1367407.i.us = phi <4 x float> [ %i.gz, %.lr.ph.i.us ], [ %.0366424.i.us, %.lr.ph.i.us.preheader ]
  %.1372406.i.us = phi <4 x float> [ %i.hb, %.lr.ph.i.us ], [ %.0371423.i.us, %.lr.ph.i.us.preheader ]
  %i.gi = load i64, ptr %.0215409.i.us, align 1, !tbaa !227
  %i.gj = insertelement <2 x i64> poison, i64 %i.gi, i64 0
  %i.gk = bitcast <2 x i64> %i.gj to <8 x i16>
  %i.gl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gm = bitcast <8 x i16> %i.gl to <4 x float>  ; 2 uses
  %i.gn = load i64, ptr %.1222408.i.us, align 1, !tbaa !227
  %i.go = insertelement <2 x i64> poison, i64 %i.gn, i64 0
  %i.gp = bitcast <2 x i64> %i.go to <8 x i16>
  %i.gq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gr = bitcast <8 x i16> %i.gq to <4 x float>
  %i.gs = getelementptr inbounds nuw i8, ptr %.1222408.i.us, i64 8
  %i.gt = load i64, ptr %i.gs, align 1, !tbaa !227
  %i.gu = insertelement <2 x i64> poison, i64 %i.gt, i64 0
  %i.gv = bitcast <2 x i64> %i.gu to <8 x i16>
  %i.gw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gx = bitcast <8 x i16> %i.gw to <4 x float>
  %i.gy = fmul fast <4 x float> %i.gr, %i.gm
  %i.gz = fadd fast <4 x float> %i.gy, %.1367407.i.us ; 2 uses
  %i.ha = fmul fast <4 x float> %i.gx, %i.gm
  %i.hb = fadd fast <4 x float> %i.ha, %.1372406.i.us ; 2 uses
  %i.hc = getelementptr inbounds [2 x i8], ptr %.0215409.i.us, i64 %i.fv
  %i.hd = getelementptr inbounds nuw i8, ptr %.1222408.i.us, i64 16
  %i.he = add nuw nsw i32 %.0214410.i.us, 1       ; 2 uses
  %exitcond.not.i.us = icmp eq i32 %i.he, %i.fr
  br i1 %exitcond.not.i.us, label %.loopexit404.loopexit.i.us, label %.lr.ph.i.us, !llvm.loop !296

.loopexit404.loopexit.i.us:                       ; preds = %.lr.ph.i.us
  %scevgep.i.us = getelementptr i8, ptr %.0221425.i.us, i64 16
  %scevgep625.i.us = getelementptr i8, ptr %scevgep.i.us, i64 %i.gf
  br label %.loopexit402.i.us

.loopexit402.i.us:                                ; preds = %.loopexit404.loopexit.i.us, %.preheader403.i.us
  %.4375.i.us = phi nsz <4 x float> [ %.0371423.i.us, %.preheader403.i.us ], [ %i.hb, %.loopexit404.loopexit.i.us ] ; 2 uses
  %.4370.i.us = phi nsz <4 x float> [ %.0366424.i.us, %.preheader403.i.us ], [ %i.gz, %.loopexit404.loopexit.i.us ] ; 2 uses
  %.4225.i.us = phi ptr [ %.0221425.i.us, %.preheader403.i.us ], [ %scevgep625.i.us, %.loopexit404.loopexit.i.us ] ; 2 uses
  %i.hf = add nuw nsw i32 %.0218426.i.us, 4       ; 2 uses
  %i.hg = or disjoint i32 %i.hf, 3
  %i.hh = icmp slt i32 %i.hg, %i.cr
  br i1 %i.hh, label %.preheader403.i.us, label %._crit_edge.i, !llvm.loop !297

.lr.ph427.i.split:                                ; preds = %.lr.ph427.i
  %i.hi = icmp slt i32 %i.fr, 1
  %brmerge.i = select i1 %i.dc, i1 true, i1 %i.hi
  br i1 %brmerge.i, label %._crit_edge.i, label %.loopexit404.i

.loopexit404.i:                                   ; preds = %.lr.ph427.i.split, %.loopexit402.loopexit.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit402.loopexit.i ], [ 0, %.lr.ph427.i.split ] ; 2 uses
  %.0221425.i = phi ptr [ %scevgep627.i, %.loopexit402.loopexit.i ], [ %i.ez, %.lr.ph427.i.split ] ; 2 uses
  %.0366424.i = phi <4 x float> [ %i.ij, %.loopexit402.loopexit.i ], [ zeroinitializer, %.lr.ph427.i.split ]
  %.0371423.i = phi <4 x float> [ %i.il, %.loopexit402.loopexit.i ], [ zeroinitializer, %.lr.ph427.i.split ]
  %.reass.i = mul i64 %factor.op.mul.i, %indvars.iv
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %.reass.i
  br label %.lr.ph419.i

.lr.ph419.i:                                      ; preds = %.loopexit404.i, %.lr.ph419.i
  %.0213418.i = phi i32 [ %i.io, %.lr.ph419.i ], [ 0, %.loopexit404.i ]
  %.2217417.i = phi ptr [ %i.im, %.lr.ph419.i ], [ %gep.i, %.loopexit404.i ] ; 5 uses
  %.3224416.i = phi ptr [ %i.in, %.lr.ph419.i ], [ %.0221425.i, %.loopexit404.i ] ; 3 uses
  %.3369415.i = phi <4 x float> [ %i.ij, %.lr.ph419.i ], [ %.0366424.i, %.loopexit404.i ]
  %.3374414.i = phi <4 x float> [ %i.il, %.lr.ph419.i ], [ %.0371423.i, %.loopexit404.i ]
  %i.hj = getelementptr inbounds [2 x i8], ptr %.2217417.i, i64 %i.fy
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !256
  %i.hl = getelementptr inbounds [2 x i8], ptr %.2217417.i, i64 %i.ga
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !256
  %i.hn = getelementptr inbounds [2 x i8], ptr %.2217417.i, i64 %i.gb
  %i.ho = load i16, ptr %i.hn, align 2, !tbaa !256
  %i.hp = load i16, ptr %.2217417.i, align 2, !tbaa !256
  %i.hq = insertelement <4 x i16> poison, i16 %i.hp, i64 0
  %i.hr = insertelement <4 x i16> %i.hq, i16 %i.ho, i64 1
  %i.hs = insertelement <4 x i16> %i.hr, i16 %i.hm, i64 2
  %i.ht = insertelement <4 x i16> %i.hs, i16 %i.hk, i64 3
  %i.hu = zext <4 x i16> %i.ht to <4 x i32>
  %i.hv = shl nuw <4 x i32> %i.hu, splat (i32 16)
  %i.hw = bitcast <4 x i32> %i.hv to <4 x float>  ; 2 uses
  %i.hx = load i64, ptr %.3224416.i, align 1, !tbaa !227
  %i.hy = insertelement <2 x i64> poison, i64 %i.hx, i64 0
  %i.hz = bitcast <2 x i64> %i.hy to <8 x i16>
  %i.ia = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ib = bitcast <8 x i16> %i.ia to <4 x float>
  %i.ic = getelementptr inbounds nuw i8, ptr %.3224416.i, i64 8
  %i.id = load i64, ptr %i.ic, align 1, !tbaa !227
  %i.ie = insertelement <2 x i64> poison, i64 %i.id, i64 0
  %i.if = bitcast <2 x i64> %i.ie to <8 x i16>
  %i.ig = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.if, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ih = bitcast <8 x i16> %i.ig to <4 x float>
  %i.ii = fmul fast <4 x float> %i.hw, %i.ib
  %i.ij = fadd fast <4 x float> %i.ii, %.3369415.i ; 3 uses
  %i.ik = fmul fast <4 x float> %i.hw, %i.ih
  %i.il = fadd fast <4 x float> %i.ik, %.3374414.i ; 3 uses
  %i.im = getelementptr inbounds [2 x i8], ptr %.2217417.i, i64 %i.gc
  %i.in = getelementptr inbounds nuw i8, ptr %.3224416.i, i64 16
  %i.io = add nuw nsw i32 %.0213418.i, 1          ; 2 uses
  %exitcond628.not.i = icmp eq i32 %i.io, %i.fr
  br i1 %exitcond628.not.i, label %.loopexit402.loopexit.i, label %.lr.ph419.i, !llvm.loop !298

.loopexit402.loopexit.i:                          ; preds = %.lr.ph419.i
  %scevgep626.i = getelementptr i8, ptr %.0221425.i, i64 16
  %scevgep627.i = getelementptr i8, ptr %scevgep626.i, i64 %i.gf ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.ip = icmp slt i64 %indvars.iv.next, %invariant.op
  br i1 %i.ip, label %.loopexit404.i, label %._crit_edge.i, !llvm.loop !297

._crit_edge.i:                                    ; preds = %.loopexit402.loopexit.i, %.loopexit402.i.us, %.lr.ph427.i.split, %_ZN4ncnn3MatD2Ev.exit250.i
  %.0371.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit250.i ], [ %.4375.i.us, %.loopexit402.i.us ], [ zeroinitializer, %.lr.ph427.i.split ], [ %i.il, %.loopexit402.loopexit.i ] ; 2 uses
  %.0366.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit250.i ], [ %.4370.i.us, %.loopexit402.i.us ], [ zeroinitializer, %.lr.ph427.i.split ], [ %i.ij, %.loopexit402.loopexit.i ] ; 2 uses
  %.0221.lcssa.i = phi ptr [ %i.ez, %_ZN4ncnn3MatD2Ev.exit250.i ], [ %.4225.i.us, %.loopexit402.i.us ], [ %i.ez, %.lr.ph427.i.split ], [ %scevgep627.i, %.loopexit402.loopexit.i ] ; 2 uses
  %.0218.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit250.i ], [ %i.dj, %.loopexit402.i.us ], [ %i.dj, %.lr.ph427.i.split ], [ %i.dj, %.loopexit402.loopexit.i ] ; 3 uses
  %i.iq = shufflevector <4 x float> %.0366.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ir = fadd fast <4 x float> %i.iq, %.0366.lcssa.i ; 2 uses
  %i.is = shufflevector <4 x float> %.0371.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.it = fadd fast <4 x float> %i.is, %.0371.lcssa.i ; 2 uses
  %i.iu = shufflevector <4 x float> %i.ir, <4 x float> %i.it, <2 x i32> <i32 1, i32 5>
  %i.iv = fadd fast <2 x float> %i.iu, %i.fo
  %i.iw = shufflevector <4 x float> %i.ir, <4 x float> %i.it, <2 x i32> <i32 0, i32 4>
  %i.ix = fadd fast <2 x float> %i.iv, %i.iw      ; 3 uses
  %i.iy = or disjoint i32 %.0218.lcssa.i, 1
  %i.iz = icmp slt i32 %i.iy, %i.cr
  br i1 %i.iz, label %.lr.ph448.i, label %.preheader405.i

.lr.ph448.i:                                      ; preds = %._crit_edge.i
  %i.ja = mul nsw i64 %indvars.iv639.i, %i.fh
  %invariant.gep455.i = getelementptr [2 x i8], ptr %i.fi, i64 %i.ja
  %i.jb = load i32, ptr %i.e, align 4
  %i.jc = sext i32 %i.jb to i64
  %i.jd = load i32, ptr %i.b, align 4
  %i.je = sext i32 %i.jd to i64
  br i1 %i.fc, label %.lr.ph438.us.preheader.i, label %._crit_edge476.i

.lr.ph438.us.preheader.i:                         ; preds = %.lr.ph448.i
  %i.jf = zext i32 %.0218.lcssa.i to i64
  br label %.lr.ph438.us.i

.lr.ph438.us.i:                                   ; preds = %._crit_edge439.us.i, %.lr.ph438.us.preheader.i
  %indvars.iv.i = phi i64 [ %i.jf, %.lr.ph438.us.preheader.i ], [ %indvars.iv.next.i, %._crit_edge439.us.i ] ; 2 uses
  %.5226445.us.i = phi ptr [ %.0221.lcssa.i, %.lr.ph438.us.preheader.i ], [ %scevgep630.i, %._crit_edge439.us.i ] ; 2 uses
  %i.jg = phi <2 x float> [ %i.ix, %.lr.ph438.us.preheader.i ], [ %i.kh, %._crit_edge439.us.i ]
  %.reass454.us.i = mul i64 %factor.op.mul.i, %indvars.iv.i
  %gep456.us.i = getelementptr i8, ptr %invariant.gep455.i, i64 %.reass454.us.i
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph438.us.i
  %.0211436.us.i = phi i32 [ 0, %.lr.ph438.us.i ], [ %i.kk, %bb.i ]
  %.0212435.us.i = phi ptr [ %gep456.us.i, %.lr.ph438.us.i ], [ %i.ki, %bb.i ] ; 3 uses
  %.6227434.us.i = phi ptr [ %.5226445.us.i, %.lr.ph438.us.i ], [ %i.kj, %bb.i ] ; 3 uses
  %i.jh = phi <2 x float> [ %i.jg, %.lr.ph438.us.i ], [ %i.kh, %bb.i ]
  %i.ji = load i16, ptr %.0212435.us.i, align 2, !tbaa !256
  %i.jj = zext i16 %i.ji to i32
  %i.jk = shl nuw i32 %i.jj, 16
  %i.jl = getelementptr inbounds [2 x i8], ptr %.0212435.us.i, i64 %i.jc
  %i.jm = load i16, ptr %i.jl, align 2, !tbaa !256
  %i.jn = zext i16 %i.jm to i32
  %i.jo = shl nuw i32 %i.jn, 16
  %i.jp = getelementptr inbounds nuw i8, ptr %.6227434.us.i, i64 4
  %i.jq = load <2 x i16>, ptr %.6227434.us.i, align 2, !tbaa !256
  %i.jr = zext <2 x i16> %i.jq to <2 x i32>
  %i.js = shl nuw <2 x i32> %i.jr, splat (i32 16)
  %i.jt = bitcast <2 x i32> %i.js to <2 x float>
  %i.ju = insertelement <2 x i32> poison, i32 %i.jk, i64 0
  %i.jv = bitcast <2 x i32> %i.ju to <2 x float>
  %i.jw = shufflevector <2 x float> %i.jv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jx = fmul fast <2 x float> %i.jw, %i.jt
  %i.jy = fadd fast <2 x float> %i.jx, %i.jh
  %i.jz = load <2 x i16>, ptr %i.jp, align 2, !tbaa !256
  %i.ka = zext <2 x i16> %i.jz to <2 x i32>
  %i.kb = shl nuw <2 x i32> %i.ka, splat (i32 16)
  %i.kc = bitcast <2 x i32> %i.kb to <2 x float>
  %i.kd = insertelement <2 x i32> poison, i32 %i.jo, i64 0
  %i.ke = bitcast <2 x i32> %i.kd to <2 x float>
  %i.kf = shufflevector <2 x float> %i.ke, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kg = fmul fast <2 x float> %i.kf, %i.kc
  %i.kh = fadd fast <2 x float> %i.jy, %i.kg      ; 3 uses
  %i.ki = getelementptr inbounds [2 x i8], ptr %.0212435.us.i, i64 %i.je
  %i.kj = getelementptr inbounds nuw i8, ptr %.6227434.us.i, i64 8
  %i.kk = add nuw nsw i32 %.0211436.us.i, 1       ; 2 uses
  %exitcond631.not.i = icmp eq i32 %i.kk, %i.fb
  br i1 %exitcond631.not.i, label %._crit_edge439.us.i, label %bb.i, !llvm.loop !299

._crit_edge439.us.i:                              ; preds = %bb.i
  %scevgep629.i = getelementptr i8, ptr %.5226445.us.i, i64 8
  %scevgep630.i = getelementptr i8, ptr %scevgep629.i, i64 %i.ff ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.kl = trunc i64 %indvars.iv.next.i to i32     ; 2 uses
  %i.km = or i32 %i.kl, 1
  %i.kn = icmp slt i32 %i.km, %i.cr
  br i1 %i.kn, label %.lr.ph438.us.i, label %.preheader405.i, !llvm.loop !300

.preheader405.i:                                  ; preds = %._crit_edge439.us.i, %._crit_edge.i
  %.5226.lcssa.i = phi ptr [ %.0221.lcssa.i, %._crit_edge.i ], [ %scevgep630.i, %._crit_edge439.us.i ]
  %.1219.lcssa.i = phi i32 [ %.0218.lcssa.i, %._crit_edge.i ], [ %i.kl, %._crit_edge439.us.i ] ; 2 uses
  %i.ko = phi <2 x float> [ %i.ix, %._crit_edge.i ], [ %i.kh, %._crit_edge439.us.i ] ; 3 uses
  %i.kp = icmp slt i32 %.1219.lcssa.i, %i.cr
  br i1 %i.kp, label %.lr.ph475.i, label %._crit_edge476.i

.lr.ph475.i:                                      ; preds = %.preheader405.i
  %i.kq = mul nsw i64 %indvars.iv639.i, %i.fh
  %invariant.gep481.i = getelementptr [2 x i8], ptr %i.fi, i64 %i.kq
  %i.kr = load i32, ptr %i.b, align 4
  %i.ks = sext i32 %i.kr to i64                   ; 2 uses
  br i1 %i.fc, label %.lr.ph466.us.preheader.i, label %._crit_edge476.i

.lr.ph466.us.preheader.i:                         ; preds = %.lr.ph475.i
  %i.kt = zext i32 %.1219.lcssa.i to i64
  br label %.lr.ph466.us.i

.lr.ph466.us.i:                                   ; preds = %._crit_edge467.us.i, %.lr.ph466.us.preheader.i
  %indvars.iv636.i = phi i64 [ %i.kt, %.lr.ph466.us.preheader.i ], [ %indvars.iv.next637.i, %._crit_edge467.us.i ] ; 2 uses
  %.7228473.us.i = phi ptr [ %.5226.lcssa.i, %.lr.ph466.us.preheader.i ], [ %scevgep634.i, %._crit_edge467.us.i ] ; 3 uses
  %i.ku = phi <2 x float> [ %i.ko, %.lr.ph466.us.preheader.i ], [ %.lcssa183, %._crit_edge467.us.i ] ; 2 uses
  %.reass480.us.i = mul i64 %factor.op.mul.i, %indvars.iv636.i
  %gep482.us.i = getelementptr i8, ptr %invariant.gep481.i, i64 %.reass480.us.i ; 2 uses
  br i1 %i.fm, label %.epil.preheader, label %.lr.ph466.us.i.new

.lr.ph466.us.i.new:                               ; preds = %.lr.ph466.us.i, %.lr.ph466.us.i.new
  %.0210463.us.i = phi ptr [ %i.lw, %.lr.ph466.us.i.new ], [ %gep482.us.i, %.lr.ph466.us.i ] ; 2 uses
  %.8229462.us.i = phi ptr [ %i.lx, %.lr.ph466.us.i.new ], [ %.7228473.us.i, %.lr.ph466.us.i ] ; 3 uses
  %i.kv = phi <2 x float> [ %i.lv, %.lr.ph466.us.i.new ], [ %i.ku, %.lr.ph466.us.i ]
  %niter = phi i32 [ %niter.next.1, %.lr.ph466.us.i.new ], [ 0, %.lr.ph466.us.i ]
  %i.kw = load i16, ptr %.0210463.us.i, align 2, !tbaa !256
  %i.kx = zext i16 %i.kw to i32
  %i.ky = shl nuw i32 %i.kx, 16
  %i.kz = load <2 x i16>, ptr %.8229462.us.i, align 2, !tbaa !256
  %i.la = zext <2 x i16> %i.kz to <2 x i32>
  %i.lb = shl nuw <2 x i32> %i.la, splat (i32 16)
  %i.lc = bitcast <2 x i32> %i.lb to <2 x float>
  %i.ld = insertelement <2 x i32> poison, i32 %i.ky, i64 0
  %i.le = bitcast <2 x i32> %i.ld to <2 x float>
  %i.lf = shufflevector <2 x float> %i.le, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lg = fmul fast <2 x float> %i.lf, %i.lc
  %i.lh = fadd fast <2 x float> %i.lg, %i.kv
  %i.li = getelementptr inbounds [2 x i8], ptr %.0210463.us.i, i64 %i.ks ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.8229462.us.i, i64 4
  %i.lk = load i16, ptr %i.li, align 2, !tbaa !256
  %i.ll = zext i16 %i.lk to i32
  %i.lm = shl nuw i32 %i.ll, 16
  %i.ln = load <2 x i16>, ptr %i.lj, align 2, !tbaa !256
  %i.lo = zext <2 x i16> %i.ln to <2 x i32>
  %i.lp = shl nuw <2 x i32> %i.lo, splat (i32 16)
  %i.lq = bitcast <2 x i32> %i.lp to <2 x float>
  %i.lr = insertelement <2 x i32> poison, i32 %i.lm, i64 0
  %i.ls = bitcast <2 x i32> %i.lr to <2 x float>
  %i.lt = shufflevector <2 x float> %i.ls, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lu = fmul fast <2 x float> %i.lt, %i.lq
  %i.lv = fadd fast <2 x float> %i.lu, %i.lh      ; 3 uses
  %i.lw = getelementptr inbounds [2 x i8], ptr %i.li, i64 %i.ks ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.8229462.us.i, i64 8 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge467.us.i.unr-lcssa, label %.lr.ph466.us.i.new, !llvm.loop !301

._crit_edge467.us.i.unr-lcssa:                    ; preds = %.lr.ph466.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge467.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge467.us.i.unr-lcssa, %.lr.ph466.us.i
  %.0210463.us.i.epil.init = phi ptr [ %gep482.us.i, %.lr.ph466.us.i ], [ %i.lw, %._crit_edge467.us.i.unr-lcssa ]
  %.8229462.us.i.epil.init = phi ptr [ %.7228473.us.i, %.lr.ph466.us.i ], [ %i.lx, %._crit_edge467.us.i.unr-lcssa ]
  %.epil.init = phi <2 x float> [ %i.ku, %.lr.ph466.us.i ], [ %i.lv, %._crit_edge467.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod185)
  %i.ly = load i16, ptr %.0210463.us.i.epil.init, align 2, !tbaa !256
  %i.lz = zext i16 %i.ly to i32
  %i.ma = shl nuw i32 %i.lz, 16
  %i.mb = load <2 x i16>, ptr %.8229462.us.i.epil.init, align 2, !tbaa !256
  %i.mc = zext <2 x i16> %i.mb to <2 x i32>
  %i.md = shl nuw <2 x i32> %i.mc, splat (i32 16)
  %i.me = bitcast <2 x i32> %i.md to <2 x float>
  %i.mf = insertelement <2 x i32> poison, i32 %i.ma, i64 0
  %i.mg = bitcast <2 x i32> %i.mf to <2 x float>
  %i.mh = shufflevector <2 x float> %i.mg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mi = fmul fast <2 x float> %i.mh, %i.me
  %i.mj = fadd fast <2 x float> %i.mi, %.epil.init
  br label %._crit_edge467.us.i

._crit_edge467.us.i:                              ; preds = %._crit_edge467.us.i.unr-lcssa, %.epil.preheader
  %.lcssa183 = phi <2 x float> [ %i.lv, %._crit_edge467.us.i.unr-lcssa ], [ %i.mj, %.epil.preheader ] ; 2 uses
  %scevgep633.i = getelementptr i8, ptr %.7228473.us.i, i64 4
  %scevgep634.i = getelementptr i8, ptr %scevgep633.i, i64 %i.fg
  %indvars.iv.next637.i = add nuw nsw i64 %indvars.iv636.i, 1 ; 2 uses
  %i.mk = trunc nuw i64 %indvars.iv.next637.i to i32
  %i.ml = icmp sgt i32 %i.cr, %i.mk
  br i1 %i.ml, label %.lr.ph466.us.i, label %._crit_edge476.i, !llvm.loop !302

._crit_edge476.i:                                 ; preds = %._crit_edge467.us.i, %.lr.ph448.i, %.lr.ph475.i, %.preheader405.i
  %i.mm = phi <2 x float> [ %i.ko, %.preheader405.i ], [ %i.ko, %.lr.ph475.i ], [ %i.ix, %.lr.ph448.i ], [ %.lcssa183, %._crit_edge467.us.i ] ; 12 uses
  switch i32 %i.dd, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit259.i [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit260.thread384.i
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit260.thread387.i
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit260.thread381.i
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit260.thread390.i
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit260.thread393.i
    i32 6, label %bb.j
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit260.thread384.i: ; preds = %._crit_edge476.i
  %i.mn = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.mm, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit259.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit260.thread387.i: ; preds = %._crit_edge476.i
  %i.mo = load ptr, ptr %i.bp, align 8, !tbaa !18
  %i.mp = load float, ptr %i.mo, align 4, !tbaa !53
  %i.mq = fcmp fast ogt <2 x float> %i.mm, zeroinitializer
  %i.mr = insertelement <2 x float> poison, float %i.mp, i64 0
  %i.ms = shufflevector <2 x float> %i.mr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mt = select <2 x i1> %i.mq, <2 x float> splat (float 1.000000e+00), <2 x float> %i.ms
  %i.mu = fmul fast <2 x float> %i.mt, %i.mm
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit259.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit260.thread381.i: ; preds = %._crit_edge476.i
  %i.mv = load ptr, ptr %i.bp, align 8, !tbaa !18 ; 2 uses
  %i.mw = load float, ptr %i.mv, align 4, !tbaa !53 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mv, i64 4
  %i.my = load float, ptr %i.mx, align 4, !tbaa !53 ; 4 uses
  %i.mz = extractelement <2 x float> %i.mm, i64 0
  %.0355.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.mz, float %i.mw) ; 2 uses
  %i.na = fcmp fast ogt float %.0355.i, %i.my
  %.1356383.i = select i1 %i.na, float %i.my, float %.0355.i
  %i.nb = extractelement <2 x float> %i.mm, i64 1
  %.0357.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.nb, float %i.mw) ; 2 uses
  %i.nc = fcmp fast ogt float %.0357.i, %i.my
  %i.nd = insertelement <2 x float> poison, float %.1356383.i, i64 0
  %i.ne = insertelement <2 x float> %i.nd, float %.0357.i, i64 1 ; 2 uses
  br i1 %i.nc, label %bb.m, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit259.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit260.thread390.i: ; preds = %._crit_edge476.i
  %i.nf = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.mm, <2 x float> splat (float f0x42B0C0A5))
  %i.ng = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.nf, <2 x float> splat (float f0xC2B0C0A5))
  %i.nh = fneg fast <2 x float> %i.ng
  %i.ni = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.nh)
  %i.nj = fadd fast <2 x float> %i.ni, splat (float 1.000000e+00)
  %i.nk = fdiv fast <2 x float> splat (float 1.000000e+00), %i.nj
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit259.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit260.thread393.i: ; preds = %._crit_edge476.i
  %i.nl = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.mm)
  %i.nm = fadd fast <2 x float> %i.nl, splat (float 1.000000e+00)
  %i.nn = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.nm)
  %i.no = call fast <2 x float> @llvm.tanh.v2f32(<2 x float> %i.nn)
  %i.np = fmul fast <2 x float> %i.no, %i.mm
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit259.i

bb.j:                                             ; preds = %._crit_edge476.i
  %i.nq = load ptr, ptr %i.bp, align 8, !tbaa !18 ; 2 uses
  %i.nr = load float, ptr %i.nq, align 4, !tbaa !53 ; 5 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nq, i64 4
  %i.nt = load float, ptr %i.ns, align 4, !tbaa !53 ; 3 uses
  %i.nu = fneg fast float %i.nt
  %i.nv = fdiv fast float %i.nu, %i.nr            ; 4 uses
  %i.nw = extractelement <2 x float> %i.mm, i64 0 ; 5 uses
  %i.nx = fcmp fast olt float %i.nw, %i.nv
  br i1 %i.nx, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit260.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ny = fdiv fast float 1.000000e+00, %i.nr
  %i.nz = fadd fast float %i.nv, %i.ny
  %i.oa = fcmp fast ogt float %i.nw, %i.nz
  br i1 %i.oa, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit260.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ob = fmul fast float %i.nr, %i.nw
  %i.oc = fadd fast float %i.ob, %i.nt
  %i.od = fmul fast float %i.oc, %i.nw
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit260.thread.i

bb.m:                                             ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit260.thread381.i
  %i.oe = insertelement <2 x float> %i.ne, float %i.my, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit259.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit260.thread.i: ; preds = %bb.l, %bb.k, %bb.j
  %.1356377.i = phi float [ %i.od, %bb.l ], [ 0.000000e+00, %bb.j ], [ %i.nw, %bb.k ] ; 2 uses
  %i.of = extractelement <2 x float> %i.mm, i64 1 ; 4 uses
  %i.og = fcmp fast olt float %i.of, %i.nv
  %i.oh = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.1356377.i, i64 0 ; 2 uses
  br i1 %i.og, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit259.i, label %bb.n
end_hunk_2
begin_hunk_3_@_ZNK4ncnn17Convolution1D_x8613forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.pv = add i32 %i.pk, -1                       ; 2 uses
  %xtraiter187 = and i32 %i.pk, 1
  %i.pw = icmp eq i32 %i.pv, 0
  %unroll_iter191 = and i32 %i.pk, 2147483646
  %lcmp.mod188.not = icmp eq i32 %xtraiter187, 0
  %lcmp.mod190 = trunc i32 %i.pk to i1
  %xtraiter194 = and i32 %i.pk, 1
  %i.px = icmp eq i32 %i.pv, 0
  %unroll_iter198 = and i32 %i.pk, 2147483646
  %lcmp.mod195.not = icmp eq i32 %xtraiter194, 0
  %lcmp.mod197 = trunc i32 %i.pk to i1
  br label %bb.p

._crit_edge575.i:                                 ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i
  %indvars.iv.next672.i = add nsw i64 %indvars.iv671.i, 1 ; 2 uses
  %i.py = icmp slt i64 %indvars.iv.next672.i, %i.ej
  br i1 %i.py, label %.lr.ph574.i, label %_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.exit, !llvm.loop !304

bb.p:                                             ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i, %.lr.ph574.i
  %indvars.iv666.i = phi i64 [ 0, %.lr.ph574.i ], [ %indvars.iv.next667.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i ] ; 4 uses
  %.0207571.i = phi ptr [ %i.oy, %.lr.ph574.i ], [ %i.yd, %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i ] ; 2 uses
  br i1 %.not.i33, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.pz = load float, ptr %i.oz, align 4, !tbaa !53
  br label %_ZN4ncnn3MatD2Ev.exit.i

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %bb.q, %bb.p
  %.0201.i = phi nsz float [ %i.pz, %bb.q ], [ 0.000000e+00, %bb.p ]
  br i1 %i.dw, label %.lr.ph518.i, label %._crit_edge519.i

.lr.ph518.i:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit.i
  %i.qa = trunc nuw nsw i64 %indvars.iv666.i to i32
  %.reass577.i = mul i32 %factor.op.mul576.i, %i.qa
  %i.qb = sext i32 %.reass577.i to i64
  %invariant.gep525.i = getelementptr [2 x i8], ptr %i.pr, i64 %i.qb ; 2 uses
  %i.qc = load i32, ptr %i.a, align 4             ; 4 uses
  %i.qd = icmp slt i32 %i.qc, 1                   ; 2 uses
  %i.qe = load i32, ptr %i.b, align 4             ; 2 uses
  %i.qf = shl nsw i32 %i.qe, 2
  %i.qg = sext i32 %i.qf to i64
  %i.qh = load i32, ptr %i.e, align 4             ; 3 uses
  %i.qi = mul nsw i32 %i.qh, 3
  %i.qj = sext i32 %i.qi to i64
  %i.qk = shl nsw i32 %i.qh, 1
  %i.ql = sext i32 %i.qk to i64
  %i.qm = sext i32 %i.qh to i64
  %i.qn = sext i32 %i.qe to i64
  %i.qo = add i32 %i.qc, -1
  %i.qp = zext i32 %i.qo to i64
  %i.qq = shl nuw nsw i64 %i.qp, 3                ; 2 uses
  %brmerge590.i = select i1 %i.dx, i1 true, i1 %i.qd
  br i1 %brmerge590.i, label %.lr.ph518.i.split.us, label %.lr.ph504.i.preheader

.lr.ph518.i.split.us:                             ; preds = %.lr.ph518.i
  %brmerge593.i = select i1 %i.dy, i1 true, i1 %i.qd
  br i1 %brmerge593.i, label %._crit_edge519.i, label %.loopexit399.i.us

.loopexit399.i.us:                                ; preds = %.lr.ph518.i.split.us, %.loopexit.loopexit.i.us
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %.loopexit.loopexit.i.us ], [ 0, %.lr.ph518.i.split.us ] ; 2 uses
  %.0198516.i.us = phi ptr [ %scevgep652.i.us, %.loopexit.loopexit.i.us ], [ %i.pi, %.lr.ph518.i.split.us ] ; 2 uses
  %.0361515.i.us = phi <4 x float> [ %i.rl, %.loopexit.loopexit.i.us ], [ zeroinitializer, %.lr.ph518.i.split.us ]
  %.reass524.i.us = mul i64 %factor.op.mul523.i, %indvars.iv87
  %gep526.i.us = getelementptr i8, ptr %invariant.gep525.i, i64 %.reass524.i.us
  br label %.lr.ph512.i.us

.lr.ph512.i.us:                                   ; preds = %.loopexit399.i.us, %.lr.ph512.i.us
  %.0192511.i.us = phi i32 [ %i.ro, %.lr.ph512.i.us ], [ 0, %.loopexit399.i.us ]
  %.2510.i.us = phi ptr [ %i.rm, %.lr.ph512.i.us ], [ %gep526.i.us, %.loopexit399.i.us ] ; 5 uses
  %.3509.i.us = phi ptr [ %i.rn, %.lr.ph512.i.us ], [ %.0198516.i.us, %.loopexit399.i.us ] ; 2 uses
  %.3364508.i.us = phi <4 x float> [ %i.rl, %.lr.ph512.i.us ], [ %.0361515.i.us, %.loopexit399.i.us ]
  %i.qr = getelementptr inbounds [2 x i8], ptr %.2510.i.us, i64 %i.qj
  %i.qs = load i16, ptr %i.qr, align 2, !tbaa !256
  %i.qt = getelementptr inbounds [2 x i8], ptr %.2510.i.us, i64 %i.ql
  %i.qu = load i16, ptr %i.qt, align 2, !tbaa !256
  %i.qv = getelementptr inbounds [2 x i8], ptr %.2510.i.us, i64 %i.qm
  %i.qw = load i16, ptr %i.qv, align 2, !tbaa !256
  %i.qx = load i16, ptr %.2510.i.us, align 2, !tbaa !256
  %i.qy = insertelement <4 x i16> poison, i16 %i.qx, i64 0
  %i.qz = insertelement <4 x i16> %i.qy, i16 %i.qw, i64 1
  %i.ra = insertelement <4 x i16> %i.qz, i16 %i.qu, i64 2
  %i.rb = insertelement <4 x i16> %i.ra, i16 %i.qs, i64 3
  %i.rc = zext <4 x i16> %i.rb to <4 x i32>
  %i.rd = shl nuw <4 x i32> %i.rc, splat (i32 16)
  %i.re = bitcast <4 x i32> %i.rd to <4 x float>
  %i.rf = load i64, ptr %.3509.i.us, align 1, !tbaa !227
  %i.rg = insertelement <2 x i64> poison, i64 %i.rf, i64 0
  %i.rh = bitcast <2 x i64> %i.rg to <8 x i16>
  %i.ri = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rj = bitcast <8 x i16> %i.ri to <4 x float>
  %i.rk = fmul fast <4 x float> %i.re, %i.rj
  %i.rl = fadd fast <4 x float> %i.rk, %.3364508.i.us ; 3 uses
  %i.rm = getelementptr inbounds [2 x i8], ptr %.2510.i.us, i64 %i.qn
  %i.rn = getelementptr inbounds nuw i8, ptr %.3509.i.us, i64 8
  %i.ro = add nuw nsw i32 %.0192511.i.us, 1       ; 2 uses
  %exitcond653.not.i.us = icmp eq i32 %i.ro, %i.qc
  br i1 %exitcond653.not.i.us, label %.loopexit.loopexit.i.us, label %.lr.ph512.i.us, !llvm.loop !305

.loopexit.loopexit.i.us:                          ; preds = %.lr.ph512.i.us
  %scevgep651.i.us = getelementptr i8, ptr %.0198516.i.us, i64 8
  %scevgep652.i.us = getelementptr i8, ptr %scevgep651.i.us, i64 %i.qq ; 2 uses
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 4 ; 2 uses
  %i.rp = icmp slt i64 %indvars.iv.next88, %invariant.op155
  br i1 %i.rp, label %.loopexit399.i.us, label %._crit_edge519.i, !llvm.loop !306

.lr.ph504.i.preheader:                            ; preds = %.lr.ph518.i, %.loopexit399.thread.i
  %.0195517.i = phi i32 [ %i.sh, %.loopexit399.thread.i ], [ 0, %.lr.ph518.i ] ; 2 uses
  %.0198516.i = phi ptr [ %scevgep649.i, %.loopexit399.thread.i ], [ %i.pi, %.lr.ph518.i ] ; 2 uses
  %.0361515.i = phi <4 x float> [ %i.sd, %.loopexit399.thread.i ], [ zeroinitializer, %.lr.ph518.i ]
  %i.rq = lshr exact i32 %.0195517.i, 2
  %i.rr = zext nneg i32 %i.rq to i64
  %.reass524.i = mul i64 %factor.op.mul523.i, %i.rr
  %gep526.i = getelementptr i8, ptr %invariant.gep525.i, i64 %.reass524.i
  br label %.lr.ph504.i

.lr.ph504.i:                                      ; preds = %.lr.ph504.i.preheader, %.lr.ph504.i
  %.0193503.i = phi i32 [ %i.sg, %.lr.ph504.i ], [ 0, %.lr.ph504.i.preheader ]
  %.0194502.i = phi ptr [ %i.se, %.lr.ph504.i ], [ %gep526.i, %.lr.ph504.i.preheader ] ; 2 uses
  %.1199501.i = phi ptr [ %i.sf, %.lr.ph504.i ], [ %.0198516.i, %.lr.ph504.i.preheader ] ; 2 uses
  %.1362500.i = phi <4 x float> [ %i.sd, %.lr.ph504.i ], [ %.0361515.i, %.lr.ph504.i.preheader ]
  %i.rs = load i64, ptr %.0194502.i, align 1, !tbaa !227
  %i.rt = insertelement <2 x i64> poison, i64 %i.rs, i64 0
  %i.ru = bitcast <2 x i64> %i.rt to <8 x i16>
  %i.rv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ru, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rw = bitcast <8 x i16> %i.rv to <4 x float>
  %i.rx = load i64, ptr %.1199501.i, align 1, !tbaa !227
  %i.ry = insertelement <2 x i64> poison, i64 %i.rx, i64 0
  %i.rz = bitcast <2 x i64> %i.ry to <8 x i16>
  %i.sa = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sb = bitcast <8 x i16> %i.sa to <4 x float>
  %i.sc = fmul fast <4 x float> %i.sb, %i.rw
  %i.sd = fadd fast <4 x float> %i.sc, %.1362500.i ; 3 uses
  %i.se = getelementptr inbounds [2 x i8], ptr %.0194502.i, i64 %i.qg
  %i.sf = getelementptr inbounds nuw i8, ptr %.1199501.i, i64 8
  %i.sg = add nuw nsw i32 %.0193503.i, 1          ; 2 uses
  %exitcond650.not.i = icmp eq i32 %i.sg, %i.qc
  br i1 %exitcond650.not.i, label %.loopexit399.thread.i, label %.lr.ph504.i, !llvm.loop !307

.loopexit399.thread.i:                            ; preds = %.lr.ph504.i
  %scevgep648.i = getelementptr i8, ptr %.0198516.i, i64 8
  %scevgep649.i = getelementptr i8, ptr %scevgep648.i, i64 %i.qq ; 2 uses
  %i.sh = add nuw nsw i32 %.0195517.i, 4          ; 2 uses
  %i.si = or disjoint i32 %i.sh, 3
  %i.sj = icmp slt i32 %i.si, %i.bt
  br i1 %i.sj, label %.lr.ph504.i.preheader, label %._crit_edge519.i, !llvm.loop !306

._crit_edge519.i:                                 ; preds = %.loopexit399.thread.i, %.loopexit.loopexit.i.us, %.lr.ph518.i.split.us, %_ZN4ncnn3MatD2Ev.exit.i
  %.0361.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.rl, %.loopexit.loopexit.i.us ], [ zeroinitializer, %.lr.ph518.i.split.us ], [ %i.sd, %.loopexit399.thread.i ] ; 2 uses
  %.0198.lcssa.i = phi ptr [ %i.pi, %_ZN4ncnn3MatD2Ev.exit.i ], [ %scevgep652.i.us, %.loopexit.loopexit.i.us ], [ %i.pi, %.lr.ph518.i.split.us ], [ %scevgep649.i, %.loopexit399.thread.i ] ; 2 uses
  %.0195.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.ef, %.loopexit.loopexit.i.us ], [ %i.ef, %.lr.ph518.i.split.us ], [ %i.ef, %.loopexit399.thread.i ] ; 3 uses
  %i.sk = shufflevector <4 x float> %.0361.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.sl = fadd fast <4 x float> %i.sk, %.0361.lcssa.i ; 2 uses
  %i.sm = extractelement <4 x float> %i.sl, i64 1
  %i.sn = extractelement <4 x float> %i.sl, i64 0
  %i.so = fadd fast float %i.sm, %.0201.i
  %i.sp = fadd fast float %i.so, %i.sn            ; 3 uses
  %i.sq = or disjoint i32 %.0195.lcssa.i, 1
  %i.sr = icmp slt i32 %i.sq, %i.bt
  br i1 %i.sr, label %.lr.ph540.i, label %.preheader400.i

.lr.ph540.i:                                      ; preds = %._crit_edge519.i
  %i.ss = mul nsw i64 %indvars.iv666.i, %i.pq
  %invariant.gep546.i = getelementptr [2 x i8], ptr %i.pr, i64 %i.ss
  %i.st = load i32, ptr %i.e, align 4
  %i.su = sext i32 %i.st to i64                   ; 3 uses
  %i.sv = load i32, ptr %i.b, align 4
  %i.sw = sext i32 %i.sv to i64                   ; 2 uses
  br i1 %i.pl, label %.lr.ph532.us.preheader.i, label %._crit_edge564.i

.lr.ph532.us.preheader.i:                         ; preds = %.lr.ph540.i
  %i.sx = zext i32 %.0195.lcssa.i to i64
  br label %.lr.ph532.us.i

.lr.ph532.us.i:                                   ; preds = %._crit_edge533.us.i, %.lr.ph532.us.preheader.i
  %indvars.iv657.i = phi i64 [ %i.sx, %.lr.ph532.us.preheader.i ], [ %indvars.iv.next658.i, %._crit_edge533.us.i ] ; 2 uses
  %.5537.us.i = phi ptr [ %.0198.lcssa.i, %.lr.ph532.us.preheader.i ], [ %scevgep655.i, %._crit_edge533.us.i ] ; 3 uses
  %.1202536.us.i = phi float [ %i.sp, %.lr.ph532.us.preheader.i ], [ %.lcssa173, %._crit_edge533.us.i ] ; 2 uses
  %.reass545.us.i = mul i64 %factor.op.mul523.i, %indvars.iv657.i
  %gep547.us.i = getelementptr i8, ptr %invariant.gep546.i, i64 %.reass545.us.i ; 2 uses
  br i1 %i.pw, label %.epil.preheader186, label %.lr.ph532.us.i.new

.lr.ph532.us.i.new:                               ; preds = %.lr.ph532.us.i, %.lr.ph532.us.i.new
  %.0191529.us.i = phi ptr [ %i.ui, %.lr.ph532.us.i.new ], [ %gep547.us.i, %.lr.ph532.us.i ] ; 3 uses
  %.6528.us.i = phi ptr [ %i.uj, %.lr.ph532.us.i.new ], [ %.5537.us.i, %.lr.ph532.us.i ] ; 3 uses
  %.2203527.us.i = phi float [ %i.uh, %.lr.ph532.us.i.new ], [ %.1202536.us.i, %.lr.ph532.us.i ]
  %niter192 = phi i32 [ %niter192.next.1, %.lr.ph532.us.i.new ], [ 0, %.lr.ph532.us.i ]
  %i.sy = load i16, ptr %.0191529.us.i, align 2, !tbaa !256
  %i.sz = getelementptr inbounds [2 x i8], ptr %.0191529.us.i, i64 %i.su
  %i.ta = load i16, ptr %i.sz, align 2, !tbaa !256
  %i.tb = insertelement <2 x i16> poison, i16 %i.sy, i64 0
  %i.tc = insertelement <2 x i16> %i.tb, i16 %i.ta, i64 1
  %i.td = zext <2 x i16> %i.tc to <2 x i32>
  %i.te = shl nuw <2 x i32> %i.td, splat (i32 16)
  %i.tf = bitcast <2 x i32> %i.te to <2 x float>
  %i.tg = load <2 x i16>, ptr %.6528.us.i, align 2, !tbaa !256
  %i.th = zext <2 x i16> %i.tg to <2 x i32>
  %i.ti = shl nuw <2 x i32> %i.th, splat (i32 16)
  %i.tj = bitcast <2 x i32> %i.ti to <2 x float>
  %i.tk = fmul fast <2 x float> %i.tj, %i.tf      ; 2 uses
  %i.tl = extractelement <2 x float> %i.tk, i64 0
  %i.tm = fadd fast float %i.tl, %.2203527.us.i
  %i.tn = extractelement <2 x float> %i.tk, i64 1
  %i.to = fadd fast float %i.tm, %i.tn
  %i.tp = getelementptr inbounds [2 x i8], ptr %.0191529.us.i, i64 %i.sw ; 3 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %.6528.us.i, i64 4
  %i.tr = load i16, ptr %i.tp, align 2, !tbaa !256
  %i.ts = getelementptr inbounds [2 x i8], ptr %i.tp, i64 %i.su
  %i.tt = load i16, ptr %i.ts, align 2, !tbaa !256
  %i.tu = insertelement <2 x i16> poison, i16 %i.tr, i64 0
  %i.tv = insertelement <2 x i16> %i.tu, i16 %i.tt, i64 1
  %i.tw = zext <2 x i16> %i.tv to <2 x i32>
  %i.tx = shl nuw <2 x i32> %i.tw, splat (i32 16)
  %i.ty = bitcast <2 x i32> %i.tx to <2 x float>
  %i.tz = load <2 x i16>, ptr %i.tq, align 2, !tbaa !256
  %i.ua = zext <2 x i16> %i.tz to <2 x i32>
  %i.ub = shl nuw <2 x i32> %i.ua, splat (i32 16)
  %i.uc = bitcast <2 x i32> %i.ub to <2 x float>
  %i.ud = fmul fast <2 x float> %i.uc, %i.ty      ; 2 uses
  %i.ue = extractelement <2 x float> %i.ud, i64 0
  %i.uf = fadd fast float %i.ue, %i.to
  %i.ug = extractelement <2 x float> %i.ud, i64 1
  %i.uh = fadd fast float %i.uf, %i.ug            ; 3 uses
  %i.ui = getelementptr inbounds [2 x i8], ptr %i.tp, i64 %i.sw ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %.6528.us.i, i64 8 ; 2 uses
  %niter192.next.1 = add nuw nsw i32 %niter192, 2 ; 2 uses
  %niter192.ncmp.1 = icmp eq i32 %niter192.next.1, %unroll_iter191
  br i1 %niter192.ncmp.1, label %._crit_edge533.us.i.unr-lcssa, label %.lr.ph532.us.i.new, !llvm.loop !308

._crit_edge533.us.i.unr-lcssa:                    ; preds = %.lr.ph532.us.i.new
  br i1 %lcmp.mod188.not, label %._crit_edge533.us.i, label %.epil.preheader186

.epil.preheader186:                               ; preds = %._crit_edge533.us.i.unr-lcssa, %.lr.ph532.us.i
  %.0191529.us.i.epil.init = phi ptr [ %gep547.us.i, %.lr.ph532.us.i ], [ %i.ui, %._crit_edge533.us.i.unr-lcssa ] ; 2 uses
  %.6528.us.i.epil.init = phi ptr [ %.5537.us.i, %.lr.ph532.us.i ], [ %i.uj, %._crit_edge533.us.i.unr-lcssa ]
  %.2203527.us.i.epil.init = phi float [ %.1202536.us.i, %.lr.ph532.us.i ], [ %i.uh, %._crit_edge533.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod190)
  %i.uk = load i16, ptr %.0191529.us.i.epil.init, align 2, !tbaa !256
  %i.ul = getelementptr inbounds [2 x i8], ptr %.0191529.us.i.epil.init, i64 %i.su
  %i.um = load i16, ptr %i.ul, align 2, !tbaa !256
  %i.un = insertelement <2 x i16> poison, i16 %i.uk, i64 0
  %i.uo = insertelement <2 x i16> %i.un, i16 %i.um, i64 1
  %i.up = zext <2 x i16> %i.uo to <2 x i32>
  %i.uq = shl nuw <2 x i32> %i.up, splat (i32 16)
  %i.ur = bitcast <2 x i32> %i.uq to <2 x float>
  %i.us = load <2 x i16>, ptr %.6528.us.i.epil.init, align 2, !tbaa !256
  %i.ut = zext <2 x i16> %i.us to <2 x i32>
  %i.uu = shl nuw <2 x i32> %i.ut, splat (i32 16)
  %i.uv = bitcast <2 x i32> %i.uu to <2 x float>
  %i.uw = fmul fast <2 x float> %i.uv, %i.ur      ; 2 uses
  %i.ux = extractelement <2 x float> %i.uw, i64 0
  %i.uy = fadd fast float %i.ux, %.2203527.us.i.epil.init
  %i.uz = extractelement <2 x float> %i.uw, i64 1
  %i.va = fadd fast float %i.uy, %i.uz
  br label %._crit_edge533.us.i

._crit_edge533.us.i:                              ; preds = %._crit_edge533.us.i.unr-lcssa, %.epil.preheader186
  %.lcssa173 = phi float [ %i.uh, %._crit_edge533.us.i.unr-lcssa ], [ %i.va, %.epil.preheader186 ] ; 2 uses
  %scevgep654.i = getelementptr i8, ptr %.5537.us.i, i64 4
  %scevgep655.i = getelementptr i8, ptr %scevgep654.i, i64 %i.po ; 2 uses
  %indvars.iv.next658.i = add nuw nsw i64 %indvars.iv657.i, 2 ; 2 uses
  %i.vb = trunc i64 %indvars.iv.next658.i to i32  ; 2 uses
  %i.vc = or i32 %i.vb, 1
  %i.vd = icmp slt i32 %i.vc, %i.bt
  br i1 %i.vd, label %.lr.ph532.us.i, label %.preheader400.i, !llvm.loop !309

.preheader400.i:                                  ; preds = %._crit_edge533.us.i, %._crit_edge519.i
  %.1202.lcssa.i = phi float [ %i.sp, %._crit_edge519.i ], [ %.lcssa173, %._crit_edge533.us.i ] ; 3 uses
  %.5.lcssa.i = phi ptr [ %.0198.lcssa.i, %._crit_edge519.i ], [ %scevgep655.i, %._crit_edge533.us.i ]
  %.1196.lcssa.i = phi i32 [ %.0195.lcssa.i, %._crit_edge519.i ], [ %i.vb, %._crit_edge533.us.i ] ; 2 uses
  %i.ve = icmp slt i32 %.1196.lcssa.i, %i.bt
  br i1 %i.ve, label %.lr.ph563.i, label %._crit_edge564.i

.lr.ph563.i:                                      ; preds = %.preheader400.i
  %i.vf = mul nsw i64 %indvars.iv666.i, %i.pq
  %invariant.gep568.i = getelementptr [2 x i8], ptr %i.pr, i64 %i.vf
  %i.vg = load i32, ptr %i.b, align 4
  %i.vh = sext i32 %i.vg to i64                   ; 2 uses
  br i1 %i.pl, label %.lr.ph556.us.preheader.i, label %._crit_edge564.i

.lr.ph556.us.preheader.i:                         ; preds = %.lr.ph563.i
  %i.vi = zext i32 %.1196.lcssa.i to i64
  br label %.lr.ph556.us.i

.lr.ph556.us.i:                                   ; preds = %._crit_edge557.us.i, %.lr.ph556.us.preheader.i
  %indvars.iv663.i = phi i64 [ %i.vi, %.lr.ph556.us.preheader.i ], [ %indvars.iv.next664.i, %._crit_edge557.us.i ] ; 2 uses
  %.7561.us.i = phi ptr [ %.5.lcssa.i, %.lr.ph556.us.preheader.i ], [ %scevgep661.i, %._crit_edge557.us.i ] ; 3 uses
  %.3204560.us.i = phi float [ %.1202.lcssa.i, %.lr.ph556.us.preheader.i ], [ %.lcssa175, %._crit_edge557.us.i ] ; 2 uses
  %.reass567.us.i = mul i64 %factor.op.mul523.i, %indvars.iv663.i
  %gep569.us.i = getelementptr i8, ptr %invariant.gep568.i, i64 %.reass567.us.i ; 2 uses
  br i1 %i.px, label %.epil.preheader193, label %.lr.ph556.us.i.new

.lr.ph556.us.i.new:                               ; preds = %.lr.ph556.us.i, %.lr.ph556.us.i.new
  %.0189553.us.i = phi ptr [ %i.wf, %.lr.ph556.us.i.new ], [ %gep569.us.i, %.lr.ph556.us.i ] ; 2 uses
  %.8552.us.i = phi ptr [ %i.wg, %.lr.ph556.us.i.new ], [ %.7561.us.i, %.lr.ph556.us.i ] ; 3 uses
  %.4205551.us.i = phi float [ %i.we, %.lr.ph556.us.i.new ], [ %.3204560.us.i, %.lr.ph556.us.i ]
  %niter199 = phi i32 [ %niter199.next.1, %.lr.ph556.us.i.new ], [ 0, %.lr.ph556.us.i ]
  %i.vj = load i16, ptr %.0189553.us.i, align 2, !tbaa !256
  %i.vk = zext i16 %i.vj to i32
  %i.vl = shl nuw i32 %i.vk, 16
  %i.vm = bitcast i32 %i.vl to float
  %i.vn = load i16, ptr %.8552.us.i, align 2, !tbaa !256
  %i.vo = zext i16 %i.vn to i32
  %i.vp = shl nuw i32 %i.vo, 16
  %i.vq = bitcast i32 %i.vp to float
  %i.vr = fmul fast float %i.vq, %i.vm
  %i.vs = fadd fast float %i.vr, %.4205551.us.i
  %i.vt = getelementptr inbounds [2 x i8], ptr %.0189553.us.i, i64 %i.vh ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %.8552.us.i, i64 2
  %i.vv = load i16, ptr %i.vt, align 2, !tbaa !256
  %i.vw = zext i16 %i.vv to i32
  %i.vx = shl nuw i32 %i.vw, 16
  %i.vy = bitcast i32 %i.vx to float
  %i.vz = load i16, ptr %i.vu, align 2, !tbaa !256
  %i.wa = zext i16 %i.vz to i32
  %i.wb = shl nuw i32 %i.wa, 16
  %i.wc = bitcast i32 %i.wb to float
  %i.wd = fmul fast float %i.wc, %i.vy
  %i.we = fadd fast float %i.wd, %i.vs            ; 3 uses
  %i.wf = getelementptr inbounds [2 x i8], ptr %i.vt, i64 %i.vh ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %.8552.us.i, i64 4 ; 2 uses
  %niter199.next.1 = add nuw nsw i32 %niter199, 2 ; 2 uses
  %niter199.ncmp.1 = icmp eq i32 %niter199.next.1, %unroll_iter198
  br i1 %niter199.ncmp.1, label %._crit_edge557.us.i.unr-lcssa, label %.lr.ph556.us.i.new, !llvm.loop !310

._crit_edge557.us.i.unr-lcssa:                    ; preds = %.lr.ph556.us.i.new
  br i1 %lcmp.mod195.not, label %._crit_edge557.us.i, label %.epil.preheader193

.epil.preheader193:                               ; preds = %._crit_edge557.us.i.unr-lcssa, %.lr.ph556.us.i
  %.0189553.us.i.epil.init = phi ptr [ %gep569.us.i, %.lr.ph556.us.i ], [ %i.wf, %._crit_edge557.us.i.unr-lcssa ]
  %.8552.us.i.epil.init = phi ptr [ %.7561.us.i, %.lr.ph556.us.i ], [ %i.wg, %._crit_edge557.us.i.unr-lcssa ]
  %.4205551.us.i.epil.init = phi float [ %.3204560.us.i, %.lr.ph556.us.i ], [ %i.we, %._crit_edge557.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod197)
  %i.wh = load i16, ptr %.0189553.us.i.epil.init, align 2, !tbaa !256
  %i.wi = zext i16 %i.wh to i32
  %i.wj = shl nuw i32 %i.wi, 16
  %i.wk = bitcast i32 %i.wj to float
  %i.wl = load i16, ptr %.8552.us.i.epil.init, align 2, !tbaa !256
  %i.wm = zext i16 %i.wl to i32
  %i.wn = shl nuw i32 %i.wm, 16
  %i.wo = bitcast i32 %i.wn to float
  %i.wp = fmul fast float %i.wo, %i.wk
  %i.wq = fadd fast float %i.wp, %.4205551.us.i.epil.init
  br label %._crit_edge557.us.i

._crit_edge557.us.i:                              ; preds = %._crit_edge557.us.i.unr-lcssa, %.epil.preheader193
  %.lcssa175 = phi float [ %i.we, %._crit_edge557.us.i.unr-lcssa ], [ %i.wq, %.epil.preheader193 ] ; 2 uses
  %scevgep660.i = getelementptr i8, ptr %.7561.us.i, i64 2
  %scevgep661.i = getelementptr i8, ptr %scevgep660.i, i64 %i.pp
  %indvars.iv.next664.i = add nuw nsw i64 %indvars.iv663.i, 1 ; 2 uses
  %i.wr = trunc nuw i64 %indvars.iv.next664.i to i32
  %i.ws = icmp sgt i32 %i.bt, %i.wr
  br i1 %i.ws, label %.lr.ph556.us.i, label %._crit_edge564.i, !llvm.loop !311

._crit_edge564.i:                                 ; preds = %._crit_edge557.us.i, %.lr.ph540.i, %.lr.ph563.i, %.preheader400.i
  %.3204.lcssa.i = phi float [ %.1202.lcssa.i, %.preheader400.i ], [ %.1202.lcssa.i, %.lr.ph563.i ], [ %i.sp, %.lr.ph540.i ], [ %.lcssa175, %._crit_edge557.us.i ] ; 13 uses
  switch i32 %i.dz, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i [
    i32 1, label %bb.r
    i32 2, label %bb.s
    i32 3, label %bb.t
    i32 4, label %bb.v
    i32 5, label %bb.w
    i32 6, label %bb.x
  ]

bb.r:                                             ; preds = %._crit_edge564.i
  %i.wt = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.3204.lcssa.i, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.s:                                             ; preds = %._crit_edge564.i
  %i.wu = load ptr, ptr %i.bp, align 8, !tbaa !18
  %i.wv = load float, ptr %i.wu, align 4, !tbaa !53
  %i.ww = fcmp fast ogt float %.3204.lcssa.i, 0.000000e+00
  %i.wx = select fast i1 %i.ww, float 1.000000e+00, float %i.wv
  %i.wy = fmul fast float %i.wx, %.3204.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.t:                                             ; preds = %._crit_edge564.i
  %i.wz = load ptr, ptr %i.bp, align 8, !tbaa !18 ; 2 uses
  %i.xa = load float, ptr %i.wz, align 4, !tbaa !53
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wz, i64 4
  %i.xc = load float, ptr %i.xb, align 4, !tbaa !53 ; 2 uses
  %.0359.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.3204.lcssa.i, float %i.xa) ; 2 uses
  %i.xd = fcmp fast ogt float %.0359.i, %i.xc
  br i1 %i.xd, label %bb.u, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.u:                                             ; preds = %bb.t
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.v:                                             ; preds = %._crit_edge564.i
  %.sroa.speculated316.i = call nnan ninf nsz float @llvm.minnum.f32(float %.3204.lcssa.i, float f0x42B0C0A5)
  %.sroa.speculated.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated316.i, float f0xC2B0C0A5)
  %i.xe = fneg fast float %.sroa.speculated.i
  %i.xf = call fast float @llvm.exp.f32(float %i.xe)
  %i.xg = fadd fast float %i.xf, 1.000000e+00
  %i.xh = fdiv fast float 1.000000e+00, %i.xg
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.w:                                             ; preds = %._crit_edge564.i
  %i.xi = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.3204.lcssa.i)
  %i.xj = fadd fast float %i.xi, 1.000000e+00
  %i.xk = call fast float @llvm.log.f32(float %i.xj)
  %i.xl = call fast float @llvm.tanh.f32(float %i.xk)
  %i.xm = fmul fast float %i.xl, %.3204.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.x:                                             ; preds = %._crit_edge564.i
  %i.xn = load ptr, ptr %i.bp, align 8, !tbaa !18 ; 2 uses
  %i.xo = load float, ptr %i.xn, align 4, !tbaa !53 ; 3 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xn, i64 4
  %i.xq = load float, ptr %i.xp, align 4, !tbaa !53 ; 2 uses
  %i.xr = fneg fast float %i.xq
  %i.xs = fdiv fast float %i.xr, %i.xo            ; 2 uses
  %i.xt = fcmp fast olt float %.3204.lcssa.i, %i.xs
  br i1 %i.xt, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.xu = fdiv fast float 1.000000e+00, %i.xo
  %i.xv = fadd fast float %i.xs, %i.xu
  %i.xw = fcmp fast ogt float %.3204.lcssa.i, %i.xv
  br i1 %i.xw, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.xx = fmul fast float %i.xo, %.3204.lcssa.i
  %i.xy = fadd fast float %i.xx, %i.xq
  %i.xz = fmul fast float %i.xy, %.3204.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit.i:         ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %._crit_edge564.i
  %.1360.i = phi nsz float [ %.3204.lcssa.i, %._crit_edge564.i ], [ %i.wt, %bb.r ], [ %i.wy, %bb.s ], [ %i.xc, %bb.u ], [ %.0359.i, %bb.t ], [ %i.xh, %bb.v ], [ %i.xm, %bb.w ], [ %i.xz, %bb.z ], [ %.3204.lcssa.i, %bb.y ], [ 0.000000e+00, %bb.x ]
  %i.ya = bitcast float %.1360.i to i32
  %i.yb = lshr i32 %i.ya, 16
  %i.yc = trunc nuw i32 %i.yb to i16
  store i16 %i.yc, ptr %.0207571.i, align 2, !tbaa !256
  %i.yd = getelementptr inbounds nuw i8, ptr %.0207571.i, i64 2
  %indvars.iv.next667.i = add nuw nsw i64 %indvars.iv666.i, 1 ; 2 uses
  %exitcond670.not.i = icmp eq i64 %indvars.iv.next667.i, %wide.trip.count669.i
  br i1 %exitcond670.not.i, label %._crit_edge575.i, label %bb.p, !llvm.loop !312

_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.exit: ; preds = %._crit_edge575.i, %._crit_edge496.split.i, %.lr.ph580.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_ZNK4ncnn3Mat5emptyEv.exit32.thread

_ZNK4ncnn3Mat5emptyEv.exit32.thread:              ; preds = %bb.d, %bb.b, %_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.exit, %_ZNK4ncnn3Mat5emptyEv.exit, %_ZNK4ncnn3Mat5emptyEv.exit32
  %.1 = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit32 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ 0, %_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.exit ], [ -100, %bb.b ], [ -100, %bb.d ]
  %i.ye = load ptr, ptr %i.p, align 8, !tbaa !11  ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN4ncnnL20convolution1d_packedERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %.4294 = phi nsz <4 x float> [ %.0290346, %bb.e ], [ %.0290346, %.preheader ], [ %i.hf, %.loopexit.loopexit ], [ %i.fl, %.loopexit316.loopexit ], [ %.0290346, %.preheader315.a ] ; 2 uses
  %.4289 = phi nsz <4 x float> [ %.0285347, %bb.e ], [ %.0285347, %.preheader ], [ %i.hl, %.loopexit.loopexit ], [ %i.fr, %.loopexit316.loopexit ], [ %.0285347, %.preheader315.a ] ; 2 uses
  %.4 = phi ptr [ %.0116348, %bb.e ], [ %.0116348, %.preheader ], [ %scevgep432, %.loopexit.loopexit ], [ %scevgep430.a, %.loopexit316.loopexit ], [ %.0116348, %.preheader315.a ] ; 2 uses
  %i.hs = add nuw nsw i32 %.0113349, 4            ; 2 uses
  %i.ht = or disjoint i32 %i.hs, 3
  %i.hu = icmp slt i32 %i.ht, %i.aa
  br i1 %i.hu, label %bb.e, label %.preheader318.loopexit, !llvm.loop !322

.preheader317.loopexit:                           ; preds = %._crit_edge.us
  %i.hv = trunc nuw i64 %indvars.iv.next to i32
  br label %.preheader317

.preheader317:                                    ; preds = %.lr.ph370.split.preheader, %.preheader317.loopexit, %.preheader318
  %.6308.lcssa = phi <4 x float> [ %.1303.lcssa, %.preheader318 ], [ %.lcssa492, %.preheader317.loopexit ], [ %.1303.lcssa, %.lr.ph370.split.preheader ] ; 3 uses
  %.5300.lcssa = phi <4 x float> [ %.0295.lcssa, %.preheader318 ], [ %.lcssa491.a, %.preheader317.loopexit ], [ %.0295.lcssa, %.lr.ph370.split.preheader ]
  %.5.lcssa = phi ptr [ %.0116.lcssa, %.preheader318 ], [ %scevgep435, %.preheader317.loopexit ], [ %.0116.lcssa, %.lr.ph370.split.preheader ]
  %.1114.lcssa = phi i32 [ %.0113.lcssa, %.preheader318 ], [ %i.hv, %.preheader317.loopexit ], [ %i.ca, %.lr.ph370.split.preheader ] ; 2 uses
  %i.hw = icmp slt i32 %.1114.lcssa, %i.aa
  br i1 %i.hw, label %.lr.ph392, label %._crit_edge393

.lr.ph392:                                        ; preds = %.preheader317
  %i.hx = load ptr, ptr %4, align 8, !tbaa !18
  %i.hy = load i32, ptr %i.s, align 4, !tbaa !201
  %i.hz = sext i32 %i.hy to i64
  %i.ia = load i64, ptr %i.t, align 8, !tbaa !49
  %factor.op.mul395 = mul i64 %i.ia, %i.hz
  %i.ib = load i32, ptr %8, align 4, !tbaa !206
  %i.ic = mul nsw i32 %i.ib, %.0119402
  %i.id = sext i32 %i.ic to i64
  %invariant.gep397 = getelementptr [4 x i8], ptr %i.hx, i64 %i.id
  %i.ie = load i32, ptr %9, align 4, !tbaa !206   ; 5 uses
  %i.if = icmp sgt i32 %i.ie, 0
  br i1 %i.if, label %.lr.ph392.split.us, label %._crit_edge393

.lr.ph392.split.us:                               ; preds = %.lr.ph392
  %i.ig = load i32, ptr %10, align 4, !tbaa !206
  %i.ih = sext i32 %i.ig to i64                   ; 5 uses
  %i.ii = add nsw i32 %i.ie, -1
  %i.ij = zext nneg i32 %i.ii to i64
  %i.ik = shl nuw nsw i64 %i.ij, 4
  %i.il = zext i32 %.1114.lcssa to i64
  %xtraiter498 = and i32 %i.ie, 3                 ; 3 uses
  %i.im = icmp ult i32 %i.ie, 4
  %unroll_iter502 = and i32 %i.ie, 2147483644
  %lcmp.mod499.not = icmp eq i32 %xtraiter498, 0
  %lcmp.mod501 = icmp ne i32 %xtraiter498, 0
  br label %.lr.ph386.us

.lr.ph386.us:                                     ; preds = %._crit_edge.us399, %.lr.ph392.split.us
  %indvars.iv441 = phi i64 [ %indvars.iv.next442, %._crit_edge.us399 ], [ %i.il, %.lr.ph392.split.us ] ; 2 uses
  %.7390.us = phi ptr [ %scevgep439, %._crit_edge.us399 ], [ %.5.lcssa, %.lr.ph392.split.us ] ; 3 uses
  %.8310389.us = phi <4 x float> [ %.lcssa493, %._crit_edge.us399 ], [ %.6308.lcssa, %.lr.ph392.split.us ] ; 2 uses
  %.reass396.us = mul i64 %factor.op.mul395, %indvars.iv441
  %gep398.us = getelementptr i8, ptr %invariant.gep397, i64 %.reass396.us ; 2 uses
  br i1 %i.im, label %.epil.preheader497, label %.lr.ph386.us.new

.lr.ph386.us.new:                                 ; preds = %.lr.ph386.us, %.lr.ph386.us.new
  %.0107384.us = phi ptr [ %i.jr, %.lr.ph386.us.new ], [ %gep398.us, %.lr.ph386.us ] ; 2 uses
  %.8383.us = phi ptr [ %i.js, %.lr.ph386.us.new ], [ %.7390.us, %.lr.ph386.us ] ; 5 uses
  %.9382.us = phi <4 x float> [ %i.jq, %.lr.ph386.us.new ], [ %.8310389.us, %.lr.ph386.us ]
  %niter503 = phi i32 [ %niter503.next.3, %.lr.ph386.us.new ], [ 0, %.lr.ph386.us ]
  %i.in = load float, ptr %.0107384.us, align 4, !tbaa !53
  %i.io = insertelement <4 x float> poison, float %i.in, i64 0
  %i.ip = shufflevector <4 x float> %i.io, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iq = load <4 x float>, ptr %.8383.us, align 16, !tbaa !227
  %i.ir = fmul fast <4 x float> %i.ip, %i.iq
  %i.is = fadd fast <4 x float> %i.ir, %.9382.us
  %i.it = getelementptr inbounds [4 x i8], ptr %.0107384.us, i64 %i.ih ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.8383.us, i64 16
  %i.iv = load float, ptr %i.it, align 4, !tbaa !53
  %i.iw = insertelement <4 x float> poison, float %i.iv, i64 0
  %i.ix = shufflevector <4 x float> %i.iw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iy = load <4 x float>, ptr %i.iu, align 16, !tbaa !227
  %i.iz = fmul fast <4 x float> %i.ix, %i.iy
  %i.ja = fadd fast <4 x float> %i.iz, %i.is
  %i.jb = getelementptr inbounds [4 x i8], ptr %i.it, i64 %i.ih ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.8383.us, i64 32
  %i.jd = load float, ptr %i.jb, align 4, !tbaa !53
  %i.je = insertelement <4 x float> poison, float %i.jd, i64 0
  %i.jf = shufflevector <4 x float> %i.je, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jg = load <4 x float>, ptr %i.jc, align 16, !tbaa !227
  %i.jh = fmul fast <4 x float> %i.jf, %i.jg
  %i.ji = fadd fast <4 x float> %i.jh, %i.ja
  %i.jj = getelementptr inbounds [4 x i8], ptr %i.jb, i64 %i.ih ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.8383.us, i64 48
  %i.jl = load float, ptr %i.jj, align 4, !tbaa !53
  %i.jm = insertelement <4 x float> poison, float %i.jl, i64 0
  %i.jn = shufflevector <4 x float> %i.jm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jo = load <4 x float>, ptr %i.jk, align 16, !tbaa !227
  %i.jp = fmul fast <4 x float> %i.jn, %i.jo
  %i.jq = fadd fast <4 x float> %i.jp, %i.ji      ; 3 uses
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.jj, i64 %i.ih ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.8383.us, i64 64 ; 2 uses
  %niter503.next.3 = add nuw nsw i32 %niter503, 4 ; 2 uses
  %niter503.ncmp.3 = icmp eq i32 %niter503.next.3, %unroll_iter502
  br i1 %niter503.ncmp.3, label %._crit_edge.us399.unr-lcssa, label %.lr.ph386.us.new, !llvm.loop !323

._crit_edge.us399.unr-lcssa:                      ; preds = %.lr.ph386.us.new
  br i1 %lcmp.mod499.not, label %._crit_edge.us399, label %.epil.preheader497

.epil.preheader497:                               ; preds = %._crit_edge.us399.unr-lcssa, %.lr.ph386.us
  %.0107384.us.epil.init = phi ptr [ %gep398.us, %.lr.ph386.us ], [ %i.jr, %._crit_edge.us399.unr-lcssa ]
  %.8383.us.epil.init = phi ptr [ %.7390.us, %.lr.ph386.us ], [ %i.js, %._crit_edge.us399.unr-lcssa ]
  %.9382.us.epil.init = phi <4 x float> [ %.8310389.us, %.lr.ph386.us ], [ %i.jq, %._crit_edge.us399.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod501)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader497
  %.0107384.us.epil = phi ptr [ %.0107384.us.epil.init, %.epil.preheader497 ], [ %i.jz, %bb.h ] ; 2 uses
  %.8383.us.epil = phi ptr [ %.8383.us.epil.init, %.epil.preheader497 ], [ %i.ka, %bb.h ] ; 2 uses
  %.9382.us.epil = phi <4 x float> [ %.9382.us.epil.init, %.epil.preheader497 ], [ %i.jy, %bb.h ]
  %epil.iter = phi i32 [ 0, %.epil.preheader497 ], [ %epil.iter.next, %bb.h ]
  %i.jt = load float, ptr %.0107384.us.epil, align 4, !tbaa !53
  %i.ju = insertelement <4 x float> poison, float %i.jt, i64 0
  %i.jv = shufflevector <4 x float> %i.ju, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jw = load <4 x float>, ptr %.8383.us.epil, align 16, !tbaa !227
  %i.jx = fmul fast <4 x float> %i.jv, %i.jw
  %i.jy = fadd fast <4 x float> %i.jx, %.9382.us.epil ; 2 uses
  %i.jz = getelementptr inbounds [4 x i8], ptr %.0107384.us.epil, i64 %i.ih
  %i.ka = getelementptr inbounds nuw i8, ptr %.8383.us.epil, i64 16
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter498
  br i1 %epil.iter.cmp.not, label %._crit_edge.us399, label %bb.h, !llvm.loop !324

._crit_edge.us399:                                ; preds = %bb.h, %._crit_edge.us399.unr-lcssa
  %.lcssa493 = phi <4 x float> [ %i.jq, %._crit_edge.us399.unr-lcssa ], [ %i.jy, %bb.h ] ; 2 uses
  %scevgep438 = getelementptr i8, ptr %.7390.us, i64 16
  %scevgep439 = getelementptr i8, ptr %scevgep438, i64 %i.ik
  %indvars.iv.next442 = add nuw nsw i64 %indvars.iv441, 1 ; 2 uses
  %i.kb = trunc nuw i64 %indvars.iv.next442 to i32
  %i.kc = icmp sgt i32 %i.aa, %i.kb
  br i1 %i.kc, label %.lr.ph386.us, label %._crit_edge393, !llvm.loop !325

._crit_edge393:                                   ; preds = %._crit_edge.us399, %.lr.ph392, %.preheader317
  %.8310.lcssa = phi <4 x float> [ %.6308.lcssa, %.preheader317 ], [ %.6308.lcssa, %.lr.ph392 ], [ %.lcssa493, %._crit_edge.us399 ]
  %i.kd = fadd fast <4 x float> %.0285.lcssa, %.5300.lcssa
  %i.ke = fadd fast <4 x float> %i.kd, %.8310.lcssa ; 10 uses
  %i.kf = load i32, ptr %12, align 4, !tbaa !206
  switch i32 %i.kf, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.i
    i32 2, label %.noexc127
    i32 3, label %bb.j
    i32 4, label %.noexc128
    i32 5, label %.noexc129
    i32 6, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge393
  %i.kg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ke, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc127:                                        ; preds = %._crit_edge393
  %i.kh = load ptr, ptr %13, align 8, !tbaa !18
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !53
  %i.kj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ke)
  %i.kk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ke)
  %i.kl = insertelement <4 x float> poison, float %i.ki, i64 0
  %i.km = shufflevector <4 x float> %i.kl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kn = fmul fast <4 x float> %i.km, %i.kk
  %i.ko = fadd fast <4 x float> %i.kn, %i.kj
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.j:                                             ; preds = %._crit_edge393
  %i.kp = load ptr, ptr %13, align 8, !tbaa !18   ; 2 uses
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !53
  %i.kr = insertelement <4 x float> poison, float %i.kq, i64 0
  %i.ks = shufflevector <4 x float> %i.kr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kp, i64 4
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !53
  %i.kv = insertelement <4 x float> poison, float %i.ku, i64 0
  %i.kw = shufflevector <4 x float> %i.kv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ke, <4 x float> nofpclass(nan inf) %i.ks)
  %i.ky = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.kx, <4 x float> nofpclass(nan inf) %i.kw)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc128:                                        ; preds = %._crit_edge393
  %i.kz = fneg fast <4 x float> %i.ke
  %i.la = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.kz, <4 x float> splat (float f0x42B0C0A5))
  %i.lb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.la, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.lc = fmul fast <4 x float> %i.lb, splat (float f0x3FB8AA3B)
  %i.ld = fadd fast <4 x float> %i.lc, splat (float 5.000000e-01) ; 2 uses
  %i.le = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ld)
  %i.lf = sitofp fast <4 x i32> %i.le to <4 x float> ; 2 uses
  %i.lg = fcmp fast olt <4 x float> %i.ld, %i.lf
  %i.lh = select <4 x i1> %i.lg, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.li = fsub fast <4 x float> %i.lf, %i.lh      ; 2 uses
  %i.lj = fmul fast <4 x float> %i.li, splat (float f0x3F317218)
  %i.lk = fsub fast <4 x float> %i.lb, %i.lj      ; 8 uses
  %i.ll = fmul fast <4 x float> %i.lk, %i.lk
  %i.lm = fmul fast <4 x float> %i.lk, splat (float f0x39506967)
  %i.ln = fadd fast <4 x float> %i.lm, splat (float f0x3AB743CE)
  %i.lo = fmul fast <4 x float> %i.ln, %i.lk
  %i.lp = fadd fast <4 x float> %i.lo, splat (float f0x3C088908)
  %i.lq = fmul fast <4 x float> %i.lp, %i.lk
  %i.lr = fadd fast <4 x float> %i.lq, splat (float f0x3D2AA9C1)
  %i.ls = fmul fast <4 x float> %i.lr, %i.lk
  %i.lt = fadd fast <4 x float> %i.ls, splat (float f0x3E2AAAAA)
  %i.lu = fmul fast <4 x float> %i.lt, %i.lk
  %i.lv = fadd fast <4 x float> %i.lu, splat (float 5.000000e-01)
  %i.lw = fmul fast <4 x float> %i.ll, %i.lv
  %i.lx = fadd fast <4 x float> %i.lk, splat (float 1.000000e+00)
  %i.ly = fadd fast <4 x float> %i.lx, %i.lw
  %i.lz = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.li)
  %i.ma = shl <4 x i32> %i.lz, splat (i32 23)
  %i.mb = add <4 x i32> %i.ma, splat (i32 1065353216)
  %i.mc = bitcast <4 x i32> %i.mb to <4 x float>
  %i.md = fmul fast <4 x float> %i.ly, %i.mc
  %i.me = fadd fast <4 x float> %i.md, splat (float 1.000000e+00)
  %i.mf = fdiv fast <4 x float> splat (float 1.000000e+00), %i.me
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc129:                                        ; preds = %._crit_edge393
  %i.mg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ke, <4 x float> splat (float f0x42B0C0A5))
  %i.mh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.mg, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.mi = fmul fast <4 x float> %i.mh, splat (float f0x3FB8AA3B)
  %i.mj = fadd fast <4 x float> %i.mi, splat (float 5.000000e-01) ; 2 uses
  %i.mk = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mj)
  %i.ml = sitofp fast <4 x i32> %i.mk to <4 x float> ; 2 uses
  %i.mm = fcmp fast olt <4 x float> %i.mj, %i.ml
  %i.mn = select <4 x i1> %i.mm, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.mo = fsub fast <4 x float> %i.ml, %i.mn      ; 2 uses
  %i.mp = fmul fast <4 x float> %i.mo, splat (float f0x3F317218)
  %i.mq = fsub fast <4 x float> %i.mh, %i.mp      ; 8 uses
  %i.mr = fmul fast <4 x float> %i.mq, %i.mq
  %i.ms = fmul fast <4 x float> %i.mq, splat (float f0x39506967)
  %i.mt = fadd fast <4 x float> %i.ms, splat (float f0x3AB743CE)
  %i.mu = fmul fast <4 x float> %i.mt, %i.mq
  %i.mv = fadd fast <4 x float> %i.mu, splat (float f0x3C088908)
  %i.mw = fmul fast <4 x float> %i.mv, %i.mq
  %i.mx = fadd fast <4 x float> %i.mw, splat (float f0x3D2AA9C1)
  %i.my = fmul fast <4 x float> %i.mx, %i.mq
  %i.mz = fadd fast <4 x float> %i.my, splat (float f0x3E2AAAAA)
  %i.na = fmul fast <4 x float> %i.mz, %i.mq
  %i.nb = fadd fast <4 x float> %i.na, splat (float 5.000000e-01)
  %i.nc = fmul fast <4 x float> %i.mr, %i.nb
  %i.nd = fadd fast <4 x float> %i.mq, splat (float 1.000000e+00)
  %i.ne = fadd fast <4 x float> %i.nd, %i.nc
  %i.nf = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mo)
  %i.ng = shl <4 x i32> %i.nf, splat (i32 23)
  %i.nh = add <4 x i32> %i.ng, splat (i32 1065353216)
  %i.ni = bitcast <4 x i32> %i.nh to <4 x float>
  %i.nj = fmul fast <4 x float> %i.ne, %i.ni
  %i.nk = fadd fast <4 x float> %i.nj, splat (float 1.000000e+00) ; 2 uses
  %i.nl = fcmp fast ole <4 x float> %i.nk, zeroinitializer
  %i.nm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.nk, <4 x float> splat (float f0x00800000))
  %i.nn = bitcast <4 x float> %i.nm to <4 x i32>  ; 2 uses
  %i.no = lshr <4 x i32> %i.nn, splat (i32 23)
  %i.np = and <4 x i32> %i.nn, splat (i32 -2139095041)
  %i.nq = or disjoint <4 x i32> %i.np, splat (i32 1056964608)
  %i.nr = bitcast <4 x i32> %i.nq to <4 x float>  ; 3 uses
  %i.ns = add nsw <4 x i32> %i.no, splat (i32 -127)
  %i.nt = sitofp fast <4 x i32> %i.ns to <4 x float> ; 2 uses
  %i.nu = fadd fast <4 x float> %i.nt, splat (float 1.000000e+00)
  %i.nv = fcmp fast olt <4 x float> %i.nr, splat (float f0x3F3504F3) ; 2 uses
  %i.nw = select <4 x i1> %i.nv, <4 x float> %i.nr, <4 x float> zeroinitializer
  %i.nx = fadd fast <4 x float> %i.nr, splat (float -1.000000e+00)
  %i.ny = select fast <4 x i1> %i.nv, <4 x float> %i.nt, <4 x float> %i.nu
  %i.nz = fadd fast <4 x float> %i.nx, %i.nw      ; 12 uses
  %i.oa = fmul fast <4 x float> %i.nz, %i.nz
  %i.ob = fmul fast <4 x float> %i.nz, splat (float f0x3D9021BB)
  %i.oc = fadd fast <4 x float> %i.ob, splat (float f0xBDEBD1B8)
  %i.od = fmul fast <4 x float> %i.oc, %i.nz
  %i.oe = fadd fast <4 x float> %i.od, splat (float f0x3DEF251A)
  %i.of = fmul fast <4 x float> %i.oe, %i.nz
  %i.og = fadd fast <4 x float> %i.of, splat (float f0xBDFE5D4F)
  %i.oh = fmul fast <4 x float> %i.og, %i.nz
  %i.oi = fadd fast <4 x float> %i.oh, splat (float f0x3E11E9BF)
  %i.oj = fmul fast <4 x float> %i.oi, %i.nz
  %i.ok = fadd fast <4 x float> %i.oj, splat (float f0xBE2AAE50)
  %i.ol = fmul fast <4 x float> %i.ok, %i.nz
  %i.om = fadd fast <4 x float> %i.ol, splat (float f0x3E4CCEAC)
  %i.on = fmul fast <4 x float> %i.om, %i.nz
  %i.oo = fadd fast <4 x float> %i.on, splat (float f0xBE7FFFFC)
  %i.op = fmul fast <4 x float> %i.oo, %i.nz
  %i.oq = fadd fast <4 x float> %i.op, splat (float f0x3EAAAAAA)
  %i.or = fmul fast <4 x float> %i.oq, %i.nz
  %reass.mul.a = fmul fast <4 x float> %i.ny, splat (float f0x3F317218)
  %reass.add313 = fadd fast <4 x float> %i.or, splat (float -5.000000e-01)
  %reass.mul314 = fmul fast <4 x float> %i.oa, %reass.add313
  %i.os = fadd fast <4 x float> %reass.mul.a, %i.nz
  %i.ot = fadd fast <4 x float> %i.os, %reass.mul314
  %.neg = fmul fast <4 x float> %i.ot, splat (float -2.000000e+00)
  %i.ou = select fast <4 x i1> %i.nl, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.ov = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ou, <4 x float> splat (float f0x42B0C0A5))
  %i.ow = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ov, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ox = fmul fast <4 x float> %i.ow, splat (float f0x3FB8AA3B)
  %i.oy = fadd fast <4 x float> %i.ox, splat (float 5.000000e-01) ; 2 uses
  %i.oz = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.oy)
  %i.pa = sitofp fast <4 x i32> %i.oz to <4 x float> ; 2 uses
  %i.pb = fcmp fast olt <4 x float> %i.oy, %i.pa
  %i.pc = select <4 x i1> %i.pb, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.pd = fsub fast <4 x float> %i.pa, %i.pc      ; 2 uses
  %i.pe = fmul fast <4 x float> %i.pd, splat (float f0x3F317218)
  %i.pf = fsub fast <4 x float> %i.ow, %i.pe      ; 8 uses
  %i.pg = fmul fast <4 x float> %i.pf, %i.pf
  %i.ph = fmul fast <4 x float> %i.pf, splat (float f0x39506967)
  %i.pi = fadd fast <4 x float> %i.ph, splat (float f0x3AB743CE)
  %i.pj = fmul fast <4 x float> %i.pi, %i.pf
  %i.pk = fadd fast <4 x float> %i.pj, splat (float f0x3C088908)
  %i.pl = fmul fast <4 x float> %i.pk, %i.pf
  %i.pm = fadd fast <4 x float> %i.pl, splat (float f0x3D2AA9C1)
  %i.pn = fmul fast <4 x float> %i.pm, %i.pf
  %i.po = fadd fast <4 x float> %i.pn, splat (float f0x3E2AAAAA)
  %i.pp = fmul fast <4 x float> %i.po, %i.pf
  %i.pq = fadd fast <4 x float> %i.pp, splat (float 5.000000e-01)
  %i.pr = fmul fast <4 x float> %i.pg, %i.pq
  %i.ps = fadd fast <4 x float> %i.pf, splat (float 1.000000e+00)
  %i.pt = fadd fast <4 x float> %i.ps, %i.pr
  %i.pu = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.pd)
  %i.pv = shl <4 x i32> %i.pu, splat (i32 23)
  %i.pw = add <4 x i32> %i.pv, splat (i32 1065353216)
  %i.px = bitcast <4 x i32> %i.pw to <4 x float>
  %i.py = fmul fast <4 x float> %i.pt, %i.px
  %i.pz = fadd fast <4 x float> %i.py, splat (float 1.000000e+00)
  %i.qa = fdiv fast <4 x float> splat (float 2.000000e+00), %i.pz
  %i.qb = fadd fast <4 x float> %i.qa, splat (float -1.000000e+00)
  %i.qc = fmul fast <4 x float> %i.qb, %i.ke
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.k:                                             ; preds = %._crit_edge393
  %i.qd = load ptr, ptr %13, align 8, !tbaa !18   ; 2 uses
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !53
  %i.qf = insertelement <4 x float> poison, float %i.qe, i64 0
  %i.qg = shufflevector <4 x float> %i.qf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qd, i64 4
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !53
  %i.qj = insertelement <4 x float> poison, float %i.qi, i64 0
  %i.qk = shufflevector <4 x float> %i.qj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ql = fmul fast <4 x float> %i.qg, %i.ke
  %i.qm = fadd fast <4 x float> %i.ql, %i.qk
  %i.qn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.qm, <4 x float> zeroinitializer)
  %i.qo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.qn, <4 x float> splat (float 1.000000e+00))
  %i.qp = fmul fast <4 x float> %i.qo, %i.ke
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.k, %.noexc129, %.noexc128, %bb.j, %.noexc127, %bb.i, %._crit_edge393
  %.0.i = phi nsz <4 x float> [ %i.qp, %bb.k ], [ %i.kg, %bb.i ], [ %i.ko, %.noexc127 ], [ %i.ky, %bb.j ], [ %i.mf, %.noexc128 ], [ %i.qc, %.noexc129 ], [ %i.ke, %._crit_edge393 ] ; 5 uses
  switch i32 %i.ab, label %bb.m [
    i32 4, label %.thread
    i32 1, label %bb.l
  ]

.thread:                                          ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  store <4 x float> %.0.i, ptr %.0120401, align 1, !tbaa !227
  %i.qq = getelementptr inbounds nuw i8, ptr %.0120401, i64 16
  br label %bb.m

bb.l:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %.sroa.0.0.vec.extract = extractelement <4 x float> %.0.i, i64 0
  store float %.sroa.0.0.vec.extract, ptr %.0120401, align 4, !tbaa !53
  %.sroa.0.4.vec.extract = extractelement <4 x float> %.0.i, i64 1
  %i.qr = load i32, ptr %14, align 4, !tbaa !206  ; 3 uses
  %i.qs = sext i32 %i.qr to i64
  %i.qt = getelementptr inbounds [4 x i8], ptr %.0120401, i64 %i.qs
  store float %.sroa.0.4.vec.extract, ptr %i.qt, align 4, !tbaa !53
  %.sroa.0.8.vec.extract = extractelement <4 x float> %.0.i, i64 2
  %i.qu = shl nsw i32 %i.qr, 1
  %i.qv = sext i32 %i.qu to i64
  %i.qw = getelementptr inbounds [4 x i8], ptr %.0120401, i64 %i.qv
  store float %.sroa.0.8.vec.extract, ptr %i.qw, align 4, !tbaa !53
  %.sroa.0.12.vec.extract = extractelement <4 x float> %.0.i, i64 3
  %i.qx = mul nsw i32 %i.qr, 3
  %i.qy = sext i32 %i.qx to i64
  %i.qz = getelementptr inbounds [4 x i8], ptr %.0120401, i64 %i.qy
  store float %.sroa.0.12.vec.extract, ptr %i.qz, align 4, !tbaa !53
  %i.ra = getelementptr inbounds nuw i8, ptr %.0120401, i64 4
  br label %bb.m

bb.m:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %.thread, %bb.l
  %.2122 = phi ptr [ %i.ra, %bb.l ], [ %.0120401, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %i.qq, %.thread ]
  %i.rb = add nuw nsw i32 %.0119402, 1            ; 2 uses
  %exitcond444.not = icmp eq i32 %i.rb, %i.x
  br i1 %exitcond444.not, label %._crit_edge, label %bb.c, !llvm.loop !326

._crit_edge408:                                   ; preds = %._crit_edge, %.lr.ph407, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge408, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare !callback !327 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tanh.f32(float) #14

declare void @_ZN4ncnn7flattenERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN4ncnn24cast_bfloat16_to_float32ERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare noundef ptr @_ZN4ncnn16create_layer_cpuEi(i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn9ParamDictC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn9ParamDict3setEif(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, float noundef nofpclass(nan inf)) local_unnamed_addr #1

declare void @_ZN4ncnn9ParamDict3setEiRKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

declare void @_ZN4ncnn20ModelBinFromMatArrayC1EPKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN4ncnn20ModelBinFromMatArrayD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #5

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14) #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !206    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !tbaa !206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 %i.g, ptr %i.b, align 4, !tbaa !206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i32 1, ptr %i.c, align 4, !tbaa !206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i32 0, ptr %i.d, align 4, !tbaa !206
  %i.h = load i32, ptr %0, align 4, !tbaa !206    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !206
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !206
  %i.k = load i32, ptr %i.a, align 4, !tbaa !206  ; 2 uses
  %.not416 = icmp sgt i32 %i.k, %i.j
  br i1 %.not416, label %._crit_edge420, label %.lr.ph419

.lr.ph419:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.u = load i32, ptr %i.n, align 4, !tbaa !201  ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph419.split, label %._crit_edge420

.lr.ph419.splitthread-pre-split:                  ; preds = %._crit_edge
  %i.w = add i32 %.0123417, 1
  %.pr = load i32, ptr %i.n, align 4, !tbaa !201
  br label %.lr.ph419.split

.lr.ph419.split:                                  ; preds = %.lr.ph419, %.lr.ph419.splitthread-pre-split
  %i.x = phi i32 [ %.pr, %.lr.ph419.splitthread-pre-split ], [ %i.u, %.lr.ph419 ] ; 3 uses
  %.0123417 = phi i32 [ %i.w, %.lr.ph419.splitthread-pre-split ], [ %i.k, %.lr.ph419 ] ; 3 uses
  %i.y = load i32, ptr %i.l, align 8, !tbaa !203  ; 4 uses
  %i.z = load i32, ptr %i.m, align 8, !tbaa !216
  %i.aa = mul i32 %i.z, %i.y                      ; 8 uses
  %i.ab = load i32, ptr %i.o, align 8, !tbaa !203 ; 2 uses
  %i.ac = icmp sgt i32 %i.x, 0
  br i1 %i.ac, label %.lr.ph415, label %._crit_edge

.lr.ph415:                                        ; preds = %.lr.ph419.split
  %i.ad = load ptr, ptr %5, align 8, !tbaa !18
  %i.ae = load i32, ptr %3, align 4, !tbaa !206
  %i.af = shl nsw i32 %.0123417, 2
  %i.ag = add nsw i32 %i.ae, %i.af                ; 3 uses
end_hunk_4
begin_hunk_5_@_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.hd = shl nuw i32 %i.hc, 16
  %i.he = insertelement <4 x i32> poison, i32 %i.hd, i64 0
  %i.hf = bitcast <4 x i32> %i.he to <4 x float>
  %i.hg = shufflevector <4 x float> %i.hf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hh = fmul fast <4 x float> %i.hg, %i.gi
  %i.hi = fadd fast <4 x float> %i.hh, %.4318343  ; 2 uses
  %i.hj = getelementptr inbounds [2 x i8], ptr %.2348, i64 %i.fx
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !256
  %i.hl = zext i16 %i.hk to i32
  %i.hm = shl nuw i32 %i.hl, 16
  %i.hn = insertelement <4 x i32> poison, i32 %i.hm, i64 0
  %i.ho = bitcast <4 x i32> %i.hn to <4 x float>
  %i.hp = shufflevector <4 x float> %i.ho, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hq = fmul fast <4 x float> %i.hp, %i.go
  %i.hr = fadd fast <4 x float> %i.hq, %.3310344  ; 2 uses
  %i.hs = getelementptr inbounds [2 x i8], ptr %.2348, i64 %i.fz
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !256
  %i.hu = zext i16 %i.ht to i32
  %i.hv = shl nuw i32 %i.hu, 16
  %i.hw = insertelement <4 x i32> poison, i32 %i.hv, i64 0
  %i.hx = bitcast <4 x i32> %i.hw to <4 x float>
  %i.hy = shufflevector <4 x float> %i.hx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hz = fmul fast <4 x float> %i.hy, %i.gu
  %i.ia = fadd fast <4 x float> %i.hz, %.3305345  ; 2 uses
  %i.ib = getelementptr inbounds [2 x i8], ptr %.2348, i64 %i.gb
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !256
  %i.id = zext i16 %i.ic to i32
  %i.ie = shl nuw i32 %i.id, 16
  %i.if = insertelement <4 x i32> poison, i32 %i.ie, i64 0
  %i.ig = bitcast <4 x i32> %i.if to <4 x float>
  %i.ih = shufflevector <4 x float> %i.ig, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ii = fmul fast <4 x float> %i.ih, %i.ha
  %i.ij = fadd fast <4 x float> %i.ii, %.3300346  ; 2 uses
  %i.ik = getelementptr inbounds [2 x i8], ptr %.2348, i64 %i.gd
  %i.il = getelementptr inbounds nuw i8, ptr %.3347, i64 32
  %i.im = add nuw nsw i32 %.0110349, 1            ; 2 uses
  %exitcond445.not = icmp eq i32 %i.im, %i.fu
  br i1 %exitcond445.not, label %.loopexit.loopexit, label %bb.h, !llvm.loop !336

.loopexit.loopexit:                               ; preds = %bb.h
  %scevgep443 = getelementptr i8, ptr %.0116360, i64 32
  %i.in = add nsw i32 %i.fu, -1
  %i.io = zext nneg i32 %i.in to i64
  %i.ip = shl nuw nsw i64 %i.io, 5
  %scevgep444 = getelementptr i8, ptr %scevgep443, i64 %i.ip
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %.preheader327.a, %.loopexit328.loopexit, %.loopexit.loopexit, %.preheader
  %.5319 = phi nsz <4 x float> [ %.1315356, %bb.f ], [ %.1315356, %.preheader ], [ %i.hi, %.loopexit.loopexit ], [ %i.fb, %.loopexit328.loopexit ], [ %.1315356, %.preheader327.a ] ; 2 uses
  %.4311 = phi nsz <4 x float> [ %.0307357, %bb.f ], [ %.0307357, %.preheader ], [ %i.hr, %.loopexit.loopexit ], [ %i.ff, %.loopexit328.loopexit ], [ %.0307357, %.preheader327.a ] ; 2 uses
  %.4306 = phi nsz <4 x float> [ %.0302358, %bb.f ], [ %.0302358, %.preheader ], [ %i.ia, %.loopexit.loopexit ], [ %i.fj, %.loopexit328.loopexit ], [ %.0302358, %.preheader327.a ] ; 2 uses
  %.4301 = phi nsz <4 x float> [ %.0297359, %bb.f ], [ %.0297359, %.preheader ], [ %i.ij, %.loopexit.loopexit ], [ %i.fn, %.loopexit328.loopexit ], [ %.0297359, %.preheader327.a ] ; 2 uses
  %.4 = phi ptr [ %.0116360, %bb.f ], [ %.0116360, %.preheader ], [ %scevgep444, %.loopexit.loopexit ], [ %scevgep442.a, %.loopexit328.loopexit ], [ %.0116360, %.preheader327.a ] ; 2 uses
  %i.iq = add nuw nsw i32 %.0113361, 4            ; 2 uses
  %i.ir = or disjoint i32 %i.iq, 3
  %i.is = icmp slt i32 %i.ir, %i.aa
  br i1 %i.is, label %bb.f, label %.preheader330.loopexit, !llvm.loop !337

.preheader329.loopexit:                           ; preds = %._crit_edge.us
  %i.it = trunc nuw i64 %indvars.iv.next to i32
  br label %.preheader329

.preheader329:                                    ; preds = %.lr.ph382.split.preheader, %.preheader329.loopexit, %.preheader330
  %.6320.lcssa = phi <4 x float> [ %.1315.lcssa, %.preheader330 ], [ %i.db, %.preheader329.loopexit ], [ %.1315.lcssa, %.lr.ph382.split.preheader ] ; 3 uses
  %.5312.lcssa = phi <4 x float> [ %.0307.lcssa, %.preheader330 ], [ %i.dk, %.preheader329.loopexit ], [ %.0307.lcssa, %.lr.ph382.split.preheader ]
  %.5.lcssa = phi ptr [ %.0116.lcssa, %.preheader330 ], [ %scevgep447, %.preheader329.loopexit ], [ %.0116.lcssa, %.lr.ph382.split.preheader ]
  %.1114.lcssa = phi i32 [ %.0113.lcssa, %.preheader330 ], [ %i.it, %.preheader329.loopexit ], [ %i.ca, %.lr.ph382.split.preheader ] ; 2 uses
  %i.iu = icmp slt i32 %.1114.lcssa, %i.aa
  br i1 %i.iu, label %.lr.ph404, label %._crit_edge405

.lr.ph404:                                        ; preds = %.preheader329
  %i.iv = load ptr, ptr %4, align 8, !tbaa !18
  %i.iw = load i32, ptr %i.s, align 4, !tbaa !201
  %i.ix = sext i32 %i.iw to i64
  %i.iy = load i64, ptr %i.t, align 8, !tbaa !49
  %factor.op.mul407 = mul i64 %i.iy, %i.ix
  %i.iz = load i32, ptr %8, align 4, !tbaa !206
  %i.ja = mul nsw i32 %i.iz, %.0119414
  %i.jb = sext i32 %i.ja to i64
  %invariant.gep409 = getelementptr [2 x i8], ptr %i.iv, i64 %i.jb
  %i.jc = load i32, ptr %9, align 4, !tbaa !206   ; 3 uses
  %i.jd = icmp sgt i32 %i.jc, 0
  br i1 %i.jd, label %.lr.ph404.split.us, label %._crit_edge405

.lr.ph404.split.us:                               ; preds = %.lr.ph404
  %i.je = load i32, ptr %10, align 4, !tbaa !206
  %i.jf = sext i32 %i.je to i64
  %i.jg = add nsw i32 %i.jc, -1
  %i.jh = zext nneg i32 %i.jg to i64
  %i.ji = shl nuw nsw i64 %i.jh, 3
  %i.jj = zext i32 %.1114.lcssa to i64
  br label %.lr.ph398.us

.lr.ph398.us:                                     ; preds = %._crit_edge.us411, %.lr.ph404.split.us
  %indvars.iv453 = phi i64 [ %indvars.iv.next454, %._crit_edge.us411 ], [ %i.jj, %.lr.ph404.split.us ] ; 2 uses
  %.7402.us = phi ptr [ %scevgep451, %._crit_edge.us411 ], [ %.5.lcssa, %.lr.ph404.split.us ] ; 2 uses
  %.8322401.us = phi <4 x float> [ %i.jw, %._crit_edge.us411 ], [ %.6320.lcssa, %.lr.ph404.split.us ]
  %.reass408.us = mul i64 %factor.op.mul407, %indvars.iv453
  %gep410.us = getelementptr i8, ptr %invariant.gep409, i64 %.reass408.us
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph398.us, %bb.i
  %.0397.us = phi i32 [ 0, %.lr.ph398.us ], [ %i.jz, %bb.i ]
  %.0107396.us = phi ptr [ %gep410.us, %.lr.ph398.us ], [ %i.jx, %bb.i ] ; 2 uses
  %.8395.us = phi ptr [ %.7402.us, %.lr.ph398.us ], [ %i.jy, %bb.i ] ; 2 uses
  %.9394.us = phi <4 x float> [ %.8322401.us, %.lr.ph398.us ], [ %i.jw, %bb.i ]
  %i.jk = load i16, ptr %.0107396.us, align 2, !tbaa !256
  %i.jl = zext i16 %i.jk to i32
  %i.jm = shl nuw i32 %i.jl, 16
  %i.jn = insertelement <4 x i32> poison, i32 %i.jm, i64 0
  %i.jo = bitcast <4 x i32> %i.jn to <4 x float>
  %i.jp = shufflevector <4 x float> %i.jo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jq = load i64, ptr %.8395.us, align 1, !tbaa !227
  %i.jr = insertelement <2 x i64> poison, i64 %i.jq, i64 0
  %i.js = bitcast <2 x i64> %i.jr to <8 x i16>
  %i.jt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.js, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ju = bitcast <8 x i16> %i.jt to <4 x float>
  %i.jv = fmul fast <4 x float> %i.jp, %i.ju
  %i.jw = fadd fast <4 x float> %i.jv, %.9394.us  ; 3 uses
  %i.jx = getelementptr inbounds [2 x i8], ptr %.0107396.us, i64 %i.jf
  %i.jy = getelementptr inbounds nuw i8, ptr %.8395.us, i64 8
  %i.jz = add nuw nsw i32 %.0397.us, 1            ; 2 uses
  %exitcond452.not = icmp eq i32 %i.jz, %i.jc
  br i1 %exitcond452.not, label %._crit_edge.us411, label %bb.i, !llvm.loop !338

._crit_edge.us411:                                ; preds = %bb.i
  %scevgep450 = getelementptr i8, ptr %.7402.us, i64 8
  %scevgep451 = getelementptr i8, ptr %scevgep450, i64 %i.ji
  %indvars.iv.next454 = add nuw nsw i64 %indvars.iv453, 1 ; 2 uses
  %i.ka = trunc nuw i64 %indvars.iv.next454 to i32
  %i.kb = icmp sgt i32 %i.aa, %i.ka
  br i1 %i.kb, label %.lr.ph398.us, label %._crit_edge405, !llvm.loop !339

._crit_edge405:                                   ; preds = %._crit_edge.us411, %.lr.ph404, %.preheader329
  %.8322.lcssa = phi <4 x float> [ %.6320.lcssa, %.preheader329 ], [ %.6320.lcssa, %.lr.ph404 ], [ %i.jw, %._crit_edge.us411 ]
  %i.kc = fadd fast <4 x float> %.0297.lcssa, %.5312.lcssa
  %i.kd = fadd fast <4 x float> %i.kc, %.8322.lcssa ; 10 uses
  %i.ke = load i32, ptr %12, align 4, !tbaa !206
  switch i32 %i.ke, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.j
    i32 2, label %.noexc127
    i32 3, label %bb.k
    i32 4, label %.noexc128
    i32 5, label %.noexc129
    i32 6, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge405
  %i.kf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.kd, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc127:                                        ; preds = %._crit_edge405
  %i.kg = load ptr, ptr %13, align 8, !tbaa !18
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !53
  %i.ki = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.kd)
  %i.kj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.kd)
  %i.kk = insertelement <4 x float> poison, float %i.kh, i64 0
  %i.kl = shufflevector <4 x float> %i.kk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.km = fmul fast <4 x float> %i.kl, %i.kj
  %i.kn = fadd fast <4 x float> %i.km, %i.ki
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.k:                                             ; preds = %._crit_edge405
  %i.ko = load ptr, ptr %13, align 8, !tbaa !18   ; 2 uses
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !53
  %i.kq = insertelement <4 x float> poison, float %i.kp, i64 0
  %i.kr = shufflevector <4 x float> %i.kq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ko, i64 4
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !53
  %i.ku = insertelement <4 x float> poison, float %i.kt, i64 0
  %i.kv = shufflevector <4 x float> %i.ku, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.kd, <4 x float> nofpclass(nan inf) %i.kr)
  %i.kx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.kw, <4 x float> nofpclass(nan inf) %i.kv)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc128:                                        ; preds = %._crit_edge405
  %i.ky = fneg fast <4 x float> %i.kd
  %i.kz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ky, <4 x float> splat (float f0x42B0C0A5))
  %i.la = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.kz, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.lb = fmul fast <4 x float> %i.la, splat (float f0x3FB8AA3B)
  %i.lc = fadd fast <4 x float> %i.lb, splat (float 5.000000e-01) ; 2 uses
  %i.ld = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.lc)
  %i.le = sitofp fast <4 x i32> %i.ld to <4 x float> ; 2 uses
  %i.lf = fcmp fast olt <4 x float> %i.lc, %i.le
  %i.lg = select <4 x i1> %i.lf, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.lh = fsub fast <4 x float> %i.le, %i.lg      ; 2 uses
  %i.li = fmul fast <4 x float> %i.lh, splat (float f0x3F317218)
  %i.lj = fsub fast <4 x float> %i.la, %i.li      ; 8 uses
  %i.lk = fmul fast <4 x float> %i.lj, %i.lj
  %i.ll = fmul fast <4 x float> %i.lj, splat (float f0x39506967)
  %i.lm = fadd fast <4 x float> %i.ll, splat (float f0x3AB743CE)
  %i.ln = fmul fast <4 x float> %i.lm, %i.lj
  %i.lo = fadd fast <4 x float> %i.ln, splat (float f0x3C088908)
  %i.lp = fmul fast <4 x float> %i.lo, %i.lj
  %i.lq = fadd fast <4 x float> %i.lp, splat (float f0x3D2AA9C1)
  %i.lr = fmul fast <4 x float> %i.lq, %i.lj
  %i.ls = fadd fast <4 x float> %i.lr, splat (float f0x3E2AAAAA)
  %i.lt = fmul fast <4 x float> %i.ls, %i.lj
  %i.lu = fadd fast <4 x float> %i.lt, splat (float 5.000000e-01)
  %i.lv = fmul fast <4 x float> %i.lk, %i.lu
  %i.lw = fadd fast <4 x float> %i.lj, splat (float 1.000000e+00)
  %i.lx = fadd fast <4 x float> %i.lw, %i.lv
  %i.ly = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.lh)
  %i.lz = shl <4 x i32> %i.ly, splat (i32 23)
  %i.ma = add <4 x i32> %i.lz, splat (i32 1065353216)
  %i.mb = bitcast <4 x i32> %i.ma to <4 x float>
  %i.mc = fmul fast <4 x float> %i.lx, %i.mb
  %i.md = fadd fast <4 x float> %i.mc, splat (float 1.000000e+00)
  %i.me = fdiv fast <4 x float> splat (float 1.000000e+00), %i.md
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc129:                                        ; preds = %._crit_edge405
  %i.mf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.kd, <4 x float> splat (float f0x42B0C0A5))
  %i.mg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.mf, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.mh = fmul fast <4 x float> %i.mg, splat (float f0x3FB8AA3B)
  %i.mi = fadd fast <4 x float> %i.mh, splat (float 5.000000e-01) ; 2 uses
  %i.mj = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mi)
  %i.mk = sitofp fast <4 x i32> %i.mj to <4 x float> ; 2 uses
  %i.ml = fcmp fast olt <4 x float> %i.mi, %i.mk
  %i.mm = select <4 x i1> %i.ml, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.mn = fsub fast <4 x float> %i.mk, %i.mm      ; 2 uses
  %i.mo = fmul fast <4 x float> %i.mn, splat (float f0x3F317218)
  %i.mp = fsub fast <4 x float> %i.mg, %i.mo      ; 8 uses
  %i.mq = fmul fast <4 x float> %i.mp, %i.mp
  %i.mr = fmul fast <4 x float> %i.mp, splat (float f0x39506967)
  %i.ms = fadd fast <4 x float> %i.mr, splat (float f0x3AB743CE)
  %i.mt = fmul fast <4 x float> %i.ms, %i.mp
  %i.mu = fadd fast <4 x float> %i.mt, splat (float f0x3C088908)
  %i.mv = fmul fast <4 x float> %i.mu, %i.mp
  %i.mw = fadd fast <4 x float> %i.mv, splat (float f0x3D2AA9C1)
  %i.mx = fmul fast <4 x float> %i.mw, %i.mp
  %i.my = fadd fast <4 x float> %i.mx, splat (float f0x3E2AAAAA)
  %i.mz = fmul fast <4 x float> %i.my, %i.mp
  %i.na = fadd fast <4 x float> %i.mz, splat (float 5.000000e-01)
  %i.nb = fmul fast <4 x float> %i.mq, %i.na
  %i.nc = fadd fast <4 x float> %i.mp, splat (float 1.000000e+00)
  %i.nd = fadd fast <4 x float> %i.nc, %i.nb
  %i.ne = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mn)
  %i.nf = shl <4 x i32> %i.ne, splat (i32 23)
  %i.ng = add <4 x i32> %i.nf, splat (i32 1065353216)
  %i.nh = bitcast <4 x i32> %i.ng to <4 x float>
  %i.ni = fmul fast <4 x float> %i.nd, %i.nh
  %i.nj = fadd fast <4 x float> %i.ni, splat (float 1.000000e+00) ; 2 uses
  %i.nk = fcmp fast ole <4 x float> %i.nj, zeroinitializer
  %i.nl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.nj, <4 x float> splat (float f0x00800000))
  %i.nm = bitcast <4 x float> %i.nl to <4 x i32>  ; 2 uses
  %i.nn = lshr <4 x i32> %i.nm, splat (i32 23)
  %i.no = and <4 x i32> %i.nm, splat (i32 -2139095041)
  %i.np = or disjoint <4 x i32> %i.no, splat (i32 1056964608)
  %i.nq = bitcast <4 x i32> %i.np to <4 x float>  ; 3 uses
  %i.nr = add nsw <4 x i32> %i.nn, splat (i32 -127)
  %i.ns = sitofp fast <4 x i32> %i.nr to <4 x float> ; 2 uses
  %i.nt = fadd fast <4 x float> %i.ns, splat (float 1.000000e+00)
  %i.nu = fcmp fast olt <4 x float> %i.nq, splat (float f0x3F3504F3) ; 2 uses
  %i.nv = select <4 x i1> %i.nu, <4 x float> %i.nq, <4 x float> zeroinitializer
  %i.nw = fadd fast <4 x float> %i.nq, splat (float -1.000000e+00)
  %i.nx = select fast <4 x i1> %i.nu, <4 x float> %i.ns, <4 x float> %i.nt
  %i.ny = fadd fast <4 x float> %i.nw, %i.nv      ; 12 uses
  %i.nz = fmul fast <4 x float> %i.ny, %i.ny
  %i.oa = fmul fast <4 x float> %i.ny, splat (float f0x3D9021BB)
  %i.ob = fadd fast <4 x float> %i.oa, splat (float f0xBDEBD1B8)
  %i.oc = fmul fast <4 x float> %i.ob, %i.ny
  %i.od = fadd fast <4 x float> %i.oc, splat (float f0x3DEF251A)
  %i.oe = fmul fast <4 x float> %i.od, %i.ny
  %i.of = fadd fast <4 x float> %i.oe, splat (float f0xBDFE5D4F)
  %i.og = fmul fast <4 x float> %i.of, %i.ny
  %i.oh = fadd fast <4 x float> %i.og, splat (float f0x3E11E9BF)
  %i.oi = fmul fast <4 x float> %i.oh, %i.ny
  %i.oj = fadd fast <4 x float> %i.oi, splat (float f0xBE2AAE50)
  %i.ok = fmul fast <4 x float> %i.oj, %i.ny
  %i.ol = fadd fast <4 x float> %i.ok, splat (float f0x3E4CCEAC)
  %i.om = fmul fast <4 x float> %i.ol, %i.ny
  %i.on = fadd fast <4 x float> %i.om, splat (float f0xBE7FFFFC)
  %i.oo = fmul fast <4 x float> %i.on, %i.ny
  %i.op = fadd fast <4 x float> %i.oo, splat (float f0x3EAAAAAA)
  %i.oq = fmul fast <4 x float> %i.op, %i.ny
  %reass.mul.a = fmul fast <4 x float> %i.nx, splat (float f0x3F317218)
  %reass.add325 = fadd fast <4 x float> %i.oq, splat (float -5.000000e-01)
  %reass.mul326 = fmul fast <4 x float> %i.nz, %reass.add325
  %i.or = fadd fast <4 x float> %reass.mul.a, %i.ny
  %i.os = fadd fast <4 x float> %i.or, %reass.mul326
  %.neg = fmul fast <4 x float> %i.os, splat (float -2.000000e+00)
  %i.ot = select fast <4 x i1> %i.nk, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.ou = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ot, <4 x float> splat (float f0x42B0C0A5))
  %i.ov = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ou, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ow = fmul fast <4 x float> %i.ov, splat (float f0x3FB8AA3B)
  %i.ox = fadd fast <4 x float> %i.ow, splat (float 5.000000e-01) ; 2 uses
  %i.oy = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ox)
  %i.oz = sitofp fast <4 x i32> %i.oy to <4 x float> ; 2 uses
  %i.pa = fcmp fast olt <4 x float> %i.ox, %i.oz
  %i.pb = select <4 x i1> %i.pa, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.pc = fsub fast <4 x float> %i.oz, %i.pb      ; 2 uses
  %i.pd = fmul fast <4 x float> %i.pc, splat (float f0x3F317218)
  %i.pe = fsub fast <4 x float> %i.ov, %i.pd      ; 8 uses
  %i.pf = fmul fast <4 x float> %i.pe, %i.pe
  %i.pg = fmul fast <4 x float> %i.pe, splat (float f0x39506967)
  %i.ph = fadd fast <4 x float> %i.pg, splat (float f0x3AB743CE)
  %i.pi = fmul fast <4 x float> %i.ph, %i.pe
  %i.pj = fadd fast <4 x float> %i.pi, splat (float f0x3C088908)
  %i.pk = fmul fast <4 x float> %i.pj, %i.pe
  %i.pl = fadd fast <4 x float> %i.pk, splat (float f0x3D2AA9C1)
  %i.pm = fmul fast <4 x float> %i.pl, %i.pe
  %i.pn = fadd fast <4 x float> %i.pm, splat (float f0x3E2AAAAA)
  %i.po = fmul fast <4 x float> %i.pn, %i.pe
  %i.pp = fadd fast <4 x float> %i.po, splat (float 5.000000e-01)
  %i.pq = fmul fast <4 x float> %i.pf, %i.pp
  %i.pr = fadd fast <4 x float> %i.pe, splat (float 1.000000e+00)
  %i.ps = fadd fast <4 x float> %i.pr, %i.pq
  %i.pt = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.pc)
  %i.pu = shl <4 x i32> %i.pt, splat (i32 23)
  %i.pv = add <4 x i32> %i.pu, splat (i32 1065353216)
  %i.pw = bitcast <4 x i32> %i.pv to <4 x float>
  %i.px = fmul fast <4 x float> %i.ps, %i.pw
  %i.py = fadd fast <4 x float> %i.px, splat (float 1.000000e+00)
  %i.pz = fdiv fast <4 x float> splat (float 2.000000e+00), %i.py
  %i.qa = fadd fast <4 x float> %i.pz, splat (float -1.000000e+00)
  %i.qb = fmul fast <4 x float> %i.qa, %i.kd
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.l:                                             ; preds = %._crit_edge405
  %i.qc = load ptr, ptr %13, align 8, !tbaa !18   ; 2 uses
  %i.qd = load float, ptr %i.qc, align 4, !tbaa !53
  %i.qe = insertelement <4 x float> poison, float %i.qd, i64 0
  %i.qf = shufflevector <4 x float> %i.qe, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qc, i64 4
  %i.qh = load float, ptr %i.qg, align 4, !tbaa !53
  %i.qi = insertelement <4 x float> poison, float %i.qh, i64 0
  %i.qj = shufflevector <4 x float> %i.qi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qk = fmul fast <4 x float> %i.qf, %i.kd
  %i.ql = fadd fast <4 x float> %i.qk, %i.qj
  %i.qm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ql, <4 x float> zeroinitializer)
  %i.qn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.qm, <4 x float> splat (float 1.000000e+00))
  %i.qo = fmul fast <4 x float> %i.qn, %i.kd
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.l, %.noexc129, %.noexc128, %bb.k, %.noexc127, %bb.j, %._crit_edge405
  %.0.i = phi nsz <4 x float> [ %i.qo, %bb.l ], [ %i.kf, %bb.j ], [ %i.kn, %.noexc127 ], [ %i.kx, %bb.k ], [ %i.me, %.noexc128 ], [ %i.qb, %.noexc129 ], [ %i.kd, %._crit_edge405 ] ; 2 uses
  switch i32 %i.ab, label %bb.n [
    i32 4, label %.thread
    i32 1, label %bb.m
  ]

.thread:                                          ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %i.qp = bitcast <4 x float> %.0.i to <8 x i16>
  %i.qq = shufflevector <8 x i16> %i.qp, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.qr = bitcast <8 x i16> %i.qq to <4 x float>
  %i.qs = shufflevector <4 x float> %i.qr, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.qt = bitcast <4 x float> %i.qs to <2 x i64>
  %i.qu = extractelement <2 x i64> %i.qt, i64 0
  store i64 %i.qu, ptr %.0120413, align 1, !tbaa !227
  %i.qv = getelementptr inbounds nuw i8, ptr %.0120413, i64 8
  br label %bb.n

bb.m:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %i.qw = bitcast <4 x float> %.0.i to <8 x i16>  ; 4 uses
  %i.qx = extractelement <8 x i16> %i.qw, i64 1
  store i16 %i.qx, ptr %.0120413, align 2, !tbaa !256
  %i.qy = extractelement <8 x i16> %i.qw, i64 3
  %i.qz = load i32, ptr %14, align 4, !tbaa !206  ; 3 uses
  %i.ra = sext i32 %i.qz to i64
  %i.rb = getelementptr inbounds [2 x i8], ptr %.0120413, i64 %i.ra
  store i16 %i.qy, ptr %i.rb, align 2, !tbaa !256
  %i.rc = extractelement <8 x i16> %i.qw, i64 5
  %i.rd = shl nsw i32 %i.qz, 1
  %i.re = sext i32 %i.rd to i64
  %i.rf = getelementptr inbounds [2 x i8], ptr %.0120413, i64 %i.re
  store i16 %i.rc, ptr %i.rf, align 2, !tbaa !256
  %i.rg = extractelement <8 x i16> %i.qw, i64 7
  %i.rh = mul nsw i32 %i.qz, 3
  %i.ri = sext i32 %i.rh to i64
  %i.rj = getelementptr inbounds [2 x i8], ptr %.0120413, i64 %i.ri
  store i16 %i.rg, ptr %i.rj, align 2, !tbaa !256
  %i.rk = getelementptr inbounds nuw i8, ptr %.0120413, i64 2
  br label %bb.n

bb.n:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %.thread, %bb.m
  %.2122 = phi ptr [ %i.rk, %bb.m ], [ %.0120413, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %i.qv, %.thread ]
  %i.rl = add nuw nsw i32 %.0119414, 1            ; 2 uses
  %exitcond456.not = icmp eq i32 %i.rl, %i.x
  br i1 %exitcond456.not, label %._crit_edge, label %bb.c, !llvm.loop !340

._crit_edge420:                                   ; preds = %._crit_edge, %.lr.ph419, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge420, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.exp.v2f32(<2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.log.v2f32(<2 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.tanh.v2f32(<2 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { noreturn nounwind }
attributes #19 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{!12, !14, i64 8}
!12 = !{!"_ZTSN4ncnn3MatE", !13, i64 0, !14, i64 8, !15, i64 16, !6, i64 24, !16, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !15, i64 64}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 int", !13, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 _ZTSN4ncnn9AllocatorE", !13, i64 0}
!17 = !{!12, !16, i64 32}
!18 = !{!12, !13, i64 0}
!19 = distinct !{null}
!20 = !{!12, !15, i64 64}
!21 = !{ptr @_ZN4ncnn17Convolution1D_x86D2Ev}
!22 = !{!23, !6, i64 320}
!23 = !{!"_ZTSN4ncnn13Convolution1DE", !24, i64 0, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !38, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !12, i64 248, !6, i64 320, !12, i64 328, !12, i64 400}
!24 = !{!"_ZTSN4ncnn5LayerE", !25, i64 8, !25, i64 9, !25, i64 10, !25, i64 11, !25, i64 12, !25, i64 13, !25, i64 14, !25, i64 15, !25, i64 16, !25, i64 17, !25, i64 18, !25, i64 19, !25, i64 20, !25, i64 21, !25, i64 22, !25, i64 23, !25, i64 24, !25, i64 25, !25, i64 26, !25, i64 27, !6, i64 28, !13, i64 32, !6, i64 40, !26, i64 48, !26, i64 80, !29, i64 112, !29, i64 136, !33, i64 160, !33, i64 184}
!25 = !{!"bool", !7, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !27, i64 0, !15, i64 8, !7, i64 16}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !28, i64 0}
!28 = !{!"p1 omnipotent char", !13, i64 0}
!29 = !{!"_ZTSSt6vectorIiSaIiEE", !30, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !31, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !32, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!33 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !34, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !35, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !36, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!37 = !{!"p1 _ZTSN4ncnn3MatE", !13, i64 0}
!38 = !{!"float", !7, i64 0}
!39 = !{!40, !25, i64 32}
!40 = !{!"_ZTSN4ncnn6OptionE", !25, i64 0, !25, i64 1, !25, i64 2, !25, i64 3, !6, i64 4, !16, i64 8, !16, i64 16, !6, i64 24, !25, i64 28, !25, i64 29, !25, i64 30, !25, i64 31, !25, i64 32, !25, i64 33, !25, i64 34, !25, i64 35, !25, i64 36, !25, i64 37, !25, i64 38, !25, i64 39, !6, i64 40, !25, i64 44, !25, i64 45, !25, i64 46, !25, i64 47, !7, i64 48, !25, i64 49, !25, i64 50, !25, i64 51, !25, i64 52, !25, i64 53, !25, i64 54, !25, i64 55, !25, i64 56, !25, i64 57, !25, i64 58, !25, i64 59, !25, i64 60, !25, i64 61, !25, i64 62, !25, i64 63}
!41 = !{i8 0, i8 2}
!42 = !{}
!43 = !{!23, !6, i64 240}
!44 = !{!23, !6, i64 212}
!45 = !{!23, !6, i64 208}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!48 = distinct !{!48, !"_ZN4ncnn3Mat7channelEi"}
!49 = !{!12, !15, i64 16}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!52 = distinct !{!52, !"_ZN4ncnn3Mat7channelEi"}
!53 = !{!38, !38, i64 0}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = distinct !{!56, !55}
!57 = !{!58}
!58 = distinct !{!58, !59}
!59 = distinct !{!59, !"LVerDomain"}
end_hunk_5
