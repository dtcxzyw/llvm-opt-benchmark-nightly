Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/sgemm?download=true
inline.NumInlined: 59
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_Z18MlasSgemmOperation15CBLAS_TRANSPOSES_mmmfPKfmS1_mfPfm:bb.a
  %i.gq = icmp ult i64 %.0212233, 4
  br i1 %i.gq, label %.unr-lcssa338, label %.preheader78.i

.preheader78.i:                                   ; preds = %.preheader78.i.prol.loopexit, %.preheader78.i
  %.066.i = phi ptr [ %i.hn, %.preheader78.i ], [ %.066.i.unr, %.preheader78.i.prol.loopexit ] ; 3 uses
  %.065.i = phi ptr [ %i.ho, %.preheader78.i ], [ %.065.i.unr, %.preheader78.i.prol.loopexit ] ; 6 uses
  %.064.i = phi i64 [ %i.hp, %.preheader78.i ], [ %.064.i.unr, %.preheader78.i.prol.loopexit ]
  %i.gr = load float, ptr %.065.i, align 4, !tbaa !22
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.065.i, i64 %7
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !22
  store float %i.gr, ptr %.066.i, align 4, !tbaa !22
  %i.gu = getelementptr inbounds nuw i8, ptr %.066.i, i64 4
  store float %i.gt, ptr %i.gu, align 4, !tbaa !22
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %.066.i, i64 %.sroa.speculated195 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.065.i, i64 4 ; 2 uses
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !22
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %7
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !22
  store float %i.gx, ptr %i.gv, align 4, !tbaa !22
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  store float %i.gz, ptr %i.ha, align 4, !tbaa !22
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %.sroa.speculated195 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.065.i, i64 8 ; 2 uses
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !22
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %7
  %i.hf = load float, ptr %i.he, align 4, !tbaa !22
  store float %i.hd, ptr %i.hb, align 4, !tbaa !22
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  store float %i.hf, ptr %i.hg, align 4, !tbaa !22
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %.sroa.speculated195 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.065.i, i64 12 ; 2 uses
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !22
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %7
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !22
  store float %i.hj, ptr %i.hh, align 4, !tbaa !22
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  store float %i.hl, ptr %i.hm, align 4, !tbaa !22
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %.sroa.speculated195
  %i.ho = getelementptr inbounds nuw i8, ptr %.065.i, i64 16
  %i.hp = add i64 %.064.i, -4                     ; 2 uses
  %.not.i187.3 = icmp eq i64 %i.hp, 0
  br i1 %.not.i187.3, label %.unr-lcssa338, label %.preheader78.i, !llvm.loop !4

.unr-lcssa338:                                    ; preds = %.preheader78.i, %.preheader78.i.prol.loopexit
  %i.hq = getelementptr inbounds nuw i8, ptr %.061.lcssa.i, i64 8
  %i.hr = getelementptr inbounds nuw i8, ptr %.062.lcssa.i, i64 %.idx74.i
  %i.hs = add nsw i64 %.067.lcssa.i, -2
  br label %bb.as

bb.as:                                            ; preds = %.unr-lcssa338, %._crit_edge.i185
  %.168.i = phi i64 [ %i.hs, %.unr-lcssa338 ], [ %.067.lcssa.i, %._crit_edge.i185 ]
  %.163.i = phi ptr [ %i.hr, %.unr-lcssa338 ], [ %.062.lcssa.i, %._crit_edge.i185 ] ; 2 uses
  %.1.i = phi ptr [ %i.hq, %.unr-lcssa338 ], [ %.061.lcssa.i, %._crit_edge.i185 ] ; 2 uses
  %.not72.i = icmp eq i64 %.168.i, 0
  br i1 %.not72.i, label %_Z19MlasSgemmTransposeAPfPKfmmm.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.as
  %xtraiter339 = and i64 %.sroa.speculated, 7     ; 2 uses
  %lcmp.mod340.not = icmp eq i64 %xtraiter339, 0
  br i1 %lcmp.mod340.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol

.preheader.i.prol:                                ; preds = %.preheader.i.preheader, %.preheader.i.prol
  %.060.i.prol = phi ptr [ %i.hu, %.preheader.i.prol ], [ %.1.i, %.preheader.i.preheader ] ; 2 uses
  %.059.i.prol = phi ptr [ %i.hv, %.preheader.i.prol ], [ %.163.i, %.preheader.i.preheader ] ; 2 uses
  %.0.i186.prol = phi i64 [ %i.hw, %.preheader.i.prol ], [ %.sroa.speculated, %.preheader.i.preheader ]
  %prol.iter341 = phi i64 [ %prol.iter341.next, %.preheader.i.prol ], [ 0, %.preheader.i.preheader ]
  %i.ht = load float, ptr %.059.i.prol, align 4, !tbaa !22
  store float %i.ht, ptr %.060.i.prol, align 4, !tbaa !22
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %.060.i.prol, i64 %.sroa.speculated195 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.059.i.prol, i64 4 ; 2 uses
  %i.hw = add i64 %.0.i186.prol, -1               ; 2 uses
  %prol.iter341.next = add i64 %prol.iter341, 1   ; 2 uses
  %prol.iter341.cmp.not = icmp eq i64 %prol.iter341.next, %xtraiter339
  br i1 %prol.iter341.cmp.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol, !llvm.loop !69

.preheader.i.prol.loopexit:                       ; preds = %.preheader.i.prol, %.preheader.i.preheader
  %.060.i.unr = phi ptr [ %.1.i, %.preheader.i.preheader ], [ %i.hu, %.preheader.i.prol ]
  %.059.i.unr = phi ptr [ %.163.i, %.preheader.i.preheader ], [ %i.hv, %.preheader.i.prol ]
  %.0.i186.unr = phi i64 [ %.sroa.speculated, %.preheader.i.preheader ], [ %i.hw, %.preheader.i.prol ]
  %i.hx = icmp ult i64 %.0212233, 8
  br i1 %i.hx, label %_Z19MlasSgemmTransposeAPfPKfmmm.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.prol.loopexit, %.preheader.i
  %.060.i = phi ptr [ %i.iu, %.preheader.i ], [ %.060.i.unr, %.preheader.i.prol.loopexit ] ; 2 uses
  %.059.i = phi ptr [ %i.iv, %.preheader.i ], [ %.059.i.unr, %.preheader.i.prol.loopexit ] ; 9 uses
  %.0.i186 = phi i64 [ %i.iw, %.preheader.i ], [ %.0.i186.unr, %.preheader.i.prol.loopexit ]
  %i.hy = load float, ptr %.059.i, align 4, !tbaa !22
  store float %i.hy, ptr %.060.i, align 4, !tbaa !22
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %.060.i, i64 %.sroa.speculated195 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.059.i, i64 4
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !22
  store float %i.ib, ptr %i.hz, align 4, !tbaa !22
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %.sroa.speculated195 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.059.i, i64 8
  %i.ie = load float, ptr %i.id, align 4, !tbaa !22
  store float %i.ie, ptr %i.ic, align 4, !tbaa !22
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %.sroa.speculated195 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.059.i, i64 12
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !22
  store float %i.ih, ptr %i.if, align 4, !tbaa !22
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %.sroa.speculated195 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.059.i, i64 16
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !22
  store float %i.ik, ptr %i.ii, align 4, !tbaa !22
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %.sroa.speculated195 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.059.i, i64 20
  %i.in = load float, ptr %i.im, align 4, !tbaa !22
  store float %i.in, ptr %i.il, align 4, !tbaa !22
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %.sroa.speculated195 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.059.i, i64 24
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !22
  store float %i.iq, ptr %i.io, align 4, !tbaa !22
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %.sroa.speculated195 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.059.i, i64 28
  %i.it = load float, ptr %i.is, align 4, !tbaa !22
  store float %i.it, ptr %i.ir, align 4, !tbaa !22
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %.sroa.speculated195
  %i.iv = getelementptr inbounds nuw i8, ptr %.059.i, i64 32
  %i.iw = add i64 %.0.i186, -8                    ; 2 uses
  %.not73.i.7 = icmp eq i64 %i.iw, 0
  br i1 %.not73.i.7, label %_Z19MlasSgemmTransposeAPfPKfmmm.exit, label %.preheader.i, !llvm.loop !5

_Z19MlasSgemmTransposeAPfPKfmmm.exit:             ; preds = %.preheader.i.prol.loopexit, %.preheader.i, %bb.as
  %i.ix = sub nuw i64 %.0212233, %.sroa.speculated ; 2 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %.0127235, i64 %.sroa.speculated
  br label %bb.at

bb.at:                                            ; preds = %_Z19MlasSgemmTransposeAPfPKfmmm.exit, %_Z15GetMlasPlatformv.exit189
  %.0.i231 = phi ptr [ %i.a, %_Z19MlasSgemmTransposeAPfPKfmmm.exit ], [ %i.ji, %_Z15GetMlasPlatformv.exit189 ] ; 2 uses
  %.019.i230 = phi ptr [ %.0128234, %_Z19MlasSgemmTransposeAPfPKfmmm.exit ], [ %i.jg, %_Z15GetMlasPlatformv.exit189 ] ; 2 uses
  %.020.i229 = phi i64 [ %.sroa.speculated, %_Z19MlasSgemmTransposeAPfPKfmmm.exit ], [ %i.jj, %_Z15GetMlasPlatformv.exit189 ] ; 2 uses
  %i.iz = load atomic i8, ptr @_ZGVZ15GetMlasPlatformvE12MlasPlatform acquire, align 8
  %i.ja = icmp eq i8 %i.iz, 0
  br i1 %i.ja, label %bb.au, label %_Z15GetMlasPlatformv.exit189, !prof !23

bb.au:                                            ; preds = %bb.at
  %i.jb = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #13
  %.not.i188 = icmp eq i32 %i.jb, 0
  br i1 %.not.i188, label %_Z15GetMlasPlatformv.exit189, label %bb.av

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN13MLAS_PLATFORMC1Ev(ptr noundef nonnull align 8 dereferenceable(584) @_ZZ15GetMlasPlatformvE12MlasPlatform)
          to label %bb.aw unwind label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void @__cxa_guard_release(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #13
  br label %_Z15GetMlasPlatformv.exit189

bb.ax:                                            ; preds = %bb.av
  %i.jc = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #13
  br label %common.resume

_Z15GetMlasPlatformv.exit189:                     ; preds = %bb.at, %bb.au, %bb.aw
  %i.jd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ15GetMlasPlatformvE12MlasPlatform, i64 72), align 8, !tbaa !39
  %i.je = call noundef i64 %i.jd(ptr noundef %.0.i231, ptr noundef nonnull %i.b, ptr noundef %.019.i230, i64 noundef %.sroa.speculated195, i64 noundef %.020.i229, i64 noundef %.sroa.speculated199, i64 noundef %.sroa.speculated195, i64 noundef %12, float noundef %5, i1 noundef zeroext %.0130241), !inline_history !6 ; 3 uses
  %i.jf = mul i64 %i.je, %12
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %.019.i230, i64 %i.jf ; 2 uses
  %i.jh = mul i64 %i.je, %.sroa.speculated195
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %.0.i231, i64 %i.jh
  %i.jj = sub i64 %.020.i229, %i.je               ; 2 uses
  %.not.i = icmp eq i64 %i.jj, 0
  br i1 %.not.i, label %_Z19MlasSgemmKernelLoopPKfS0_Pfmmmmmfb.exit.loopexit, label %bb.at, !llvm.loop !7

_Z19MlasSgemmKernelLoopPKfS0_Pfmmmmmfb.exit148:   ; preds = %_Z19MlasSgemmKernelLoopPKfS0_Pfmmmmmfb.exit.loopexit, %_Z15GetMlasPlatformv.exit183, %bb.aq, %bb.al
  %i.jk = add i64 %.sroa.speculated195, %.0129242 ; 2 uses
  %i.jl = icmp ult i64 %i.jk, %4
  br i1 %i.jl, label %bb.ah, label %bb.ag, !llvm.loop !70

_Z21MlasSgemmMultiplyBetaPfmmmf.exit:             ; preds = %bb.ag, %._crit_edge.i, %._crit_edge.us.i, %.loopexit, %.preheader22.lr.ph.split.i, %bb.b, %bb.aa, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z24MlasSgemmPackedOperation15CBLAS_TRANSPOSEmmmmfPKfmPKvmfPfm(i32 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, float noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef %8, i64 noundef %9, float noundef %10, ptr noundef %11, i64 noundef %12) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3072 x float], align 16          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge124, label %.lr.ph123

.lr.ph123:                                        ; preds = %bb.a
  %i.b = fcmp oeq float %10, 0.000000e+00         ; 3 uses
  %i.c = fcmp oeq float %10, 1.000000e+00
  %or.cond.not211 = or i1 %i.b, %i.c              ; 2 uses
  %i.d = insertelement <4 x float> poison, float %10, i64 0
  %i.e = shufflevector <4 x float> %i.d, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.f = add i64 %1, -1                           ; 4 uses
  %.not30.i = icmp eq i64 %1, 0                   ; 4 uses
  %.not167 = icmp eq i64 %4, 0
  %i.g = icmp eq i32 %0, 111                      ; 2 uses
  %.idx74.i = shl i64 %7, 3                       ; 4 uses
  %.idx75.i = mul i64 %7, 12                      ; 3 uses
  %.idx77.i = shl i64 %7, 4
  br i1 %.not167, label %.lr.ph123.split, label %.lr.ph123.split.us.preheader

.lr.ph123.split.us.preheader:                     ; preds = %.lr.ph123
  %broadcast.splatinsert229 = insertelement <2 x float> poison, float %10, i64 0
  %broadcast.splat230 = shufflevector <2 x float> %broadcast.splatinsert229, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <4 x float> poison, float %10, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph123.split.us

.lr.ph123.split.us:                               ; preds = %.lr.ph123.split.us.preheader, %._crit_edge.us
  %.065121.us = phi i64 [ %i.gp, %._crit_edge.us ], [ 0, %.lr.ph123.split.us.preheader ] ; 5 uses
  %i.h = add i64 %.065121.us, %2                  ; 2 uses
  %i.i = sub i64 %3, %.065121.us                  ; 4 uses
  %.sroa.speculated93.us = call i64 @llvm.umin.i64(i64 %i.i, i64 128) ; 9 uses
  br i1 %or.cond.not211, label %_Z21MlasSgemmMultiplyBetaPfmmmf.exit.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph123.split.us
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %.065121.us ; 3 uses
  br i1 %.not30.i, label %_Z21MlasSgemmMultiplyBetaPfmmmf.exit.us.thread, label %.preheader22.lr.ph.i.us

.preheader22.lr.ph.i.us:                          ; preds = %bb.b
  %i.k = icmp ugt i64 %i.i, 3
  br i1 %i.k, label %.preheader22.us.i.us.preheader, label %.preheader22.i.us.preheader

.preheader22.i.us.preheader:                      ; preds = %.preheader22.lr.ph.i.us
  %min.iters.check226 = icmp ult i64 %i.i, 2
  %n.vec228 = and i64 %.sroa.speculated93.us, 2   ; 2 uses
  %13 = shl nuw nsw i64 %n.vec228, 2
  %14 = and i64 %.sroa.speculated93.us, 1
  %cmp.n237 = icmp eq i64 %i.i, %n.vec228
  br label %.preheader22.i.us

.preheader22.us.i.us.preheader:                   ; preds = %.preheader22.lr.ph.i.us
  %i.l = add nsw i64 %.sroa.speculated93.us, -4   ; 2 uses
  %i.m = call i64 @llvm.umin.i64(i64 %i.l, i64 3)
  %i.n = xor i64 %i.m, -1
  %i.o = add nsw i64 %.sroa.speculated93.us, %i.n
  %i.p = and i64 %i.o, -4
  %i.q = sub nsw i64 %i.l, %i.p                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.q, 8
  %n.vec = and i64 %i.q, -8                       ; 4 uses
  %i.r = shl nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br label %.preheader22.us.i.us

.preheader22.i.us:                                ; preds = %.preheader22.i.us.preheader, %._crit_edge.i.us
  %i.s = phi i64 [ %i.z, %._crit_edge.i.us ], [ %i.f, %.preheader22.i.us.preheader ] ; 2 uses
  %.01931.i.us = phi ptr [ %i.y, %._crit_edge.i.us ], [ %i.j, %.preheader22.i.us.preheader ] ; 5 uses
  br i1 %min.iters.check226, label %.prol.loopexit.a, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader22.i.us
  %i.t = getelementptr i8, ptr %.01931.i.us, i64 %13
  %wide.load234 = load <2 x float>, ptr %.01931.i.us, align 1, !tbaa !16
  %15 = fmul <2 x float> %broadcast.splat230, %wide.load234
  store <2 x float> %15, ptr %.01931.i.us, align 1, !tbaa !16
  br i1 %cmp.n237, label %._crit_edge.i.us, label %.prol.loopexit.a

.prol.loopexit.a:                                 ; preds = %.preheader22.i.us, %.prol.preheader
  %.128.i.us.unr = phi i64 [ %.sroa.speculated93.us, %.preheader22.i.us ], [ %14, %.prol.preheader ]
  %.11827.i.us.unr = phi ptr [ %.01931.i.us, %.preheader22.i.us ], [ %i.t, %.prol.preheader ]
  br label %.preheader22.i.us.new

.preheader22.i.us.new:                            ; preds = %.prol.loopexit.a, %.preheader22.i.us.new
  %.128.i.us = phi i64 [ %i.x, %.preheader22.i.us.new ], [ %.128.i.us.unr, %.prol.loopexit.a ]
  %.11827.i.us = phi ptr [ %i.w, %.preheader22.i.us.new ], [ %.11827.i.us.unr, %.prol.loopexit.a ] ; 3 uses
  %i.u = load float, ptr %.11827.i.us, align 1, !tbaa !16
  %i.v = fmul float %10, %i.u
  store float %i.v, ptr %.11827.i.us, align 1, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %.11827.i.us, i64 4
  %i.x = add nsw i64 %.128.i.us, -1               ; 2 uses
  %.not21.i.us.3 = icmp eq i64 %i.x, 0
  br i1 %.not21.i.us.3, label %._crit_edge.i.us, label %.preheader22.i.us.new, !llvm.loop !71

._crit_edge.i.us:                                 ; preds = %.preheader22.i.us.new, %.prol.preheader
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.01931.i.us, i64 %12
  %i.z = add i64 %i.s, -1
  %.not.i74.us = icmp eq i64 %i.s, 0
  br i1 %.not.i74.us, label %_Z21MlasSgemmMultiplyBetaPfmmmf.exit.us, label %.preheader22.i.us, !llvm.loop !1

.preheader22.us.i.us:                             ; preds = %.preheader22.us.i.us.preheader, %._crit_edge.us.i.us
  %i.aa = phi i64 [ %i.as, %._crit_edge.us.i.us ], [ %i.f, %.preheader22.us.i.us.preheader ] ; 2 uses
  %.01931.us.i.us = phi ptr [ %i.ar, %._crit_edge.us.i.us ], [ %i.j, %.preheader22.us.i.us.preheader ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader22.us.i.us
  %.024.us.i.us = phi i64 [ %.sroa.speculated93.us, %.preheader22.us.i.us ], [ %i.ae, %bb.c ]
  %.01723.us.i.us = phi ptr [ %.01931.us.i.us, %.preheader22.us.i.us ], [ %i.ad, %bb.c ] ; 3 uses
  %i.ab = load <4 x float>, ptr %.01723.us.i.us, align 1, !tbaa !16
  %i.ac = fmul <4 x float> %i.e, %i.ab
  store <4 x float> %i.ac, ptr %.01723.us.i.us, align 1, !tbaa !16
  %i.ad = getelementptr inbounds nuw i8, ptr %.01723.us.i.us, i64 16 ; 4 uses
  %i.ae = add i64 %.024.us.i.us, -4               ; 5 uses
  %i.af = icmp ugt i64 %i.ae, 3
  br i1 %i.af, label %bb.c, label %..preheader_crit_edge.us.i.us, !llvm.loop !0

..preheader_crit_edge.us.i.us:                    ; preds = %bb.c
  %.not2126.us.i.us = icmp eq i64 %i.ae, 0
  br i1 %.not2126.us.i.us, label %._crit_edge.us.i.us, label %.lr.ph29.us.i.us.preheader

.lr.ph29.us.i.us.preheader:                       ; preds = %..preheader_crit_edge.us.i.us
  br i1 %min.iters.check, label %.lr.ph29.us.i.us.preheader245, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph29.us.i.us.preheader
  %i.ag = sub nsw i64 %i.ae, %n.vec
  %i.ah = getelementptr i8, ptr %i.ad, i64 %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ad, i64 %i.ai ; 3 uses
  %i.aj = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %next.gep, align 1, !tbaa !16
  %wide.load223 = load <4 x float>, ptr %i.aj, align 1, !tbaa !16
  %i.ak = fmul <4 x float> %broadcast.splat, %wide.load
  %i.al = fmul <4 x float> %broadcast.splat, %wide.load223
  store <4 x float> %i.ak, ptr %next.gep, align 1, !tbaa !16
  store <4 x float> %i.al, ptr %i.aj, align 1, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.i.us, label %.lr.ph29.us.i.us.preheader245

.lr.ph29.us.i.us.preheader245:                    ; preds = %.lr.ph29.us.i.us.preheader, %middle.block
  %.128.us.i.us.ph = phi i64 [ %i.ae, %.lr.ph29.us.i.us.preheader ], [ %i.ag, %middle.block ]
  %.11827.us.i.us.ph = phi ptr [ %i.ad, %.lr.ph29.us.i.us.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph29.us.i.us

.lr.ph29.us.i.us:                                 ; preds = %.lr.ph29.us.i.us.preheader245, %.lr.ph29.us.i.us
  %.128.us.i.us = phi i64 [ %i.aq, %.lr.ph29.us.i.us ], [ %.128.us.i.us.ph, %.lr.ph29.us.i.us.preheader245 ]
  %.11827.us.i.us = phi ptr [ %i.ap, %.lr.ph29.us.i.us ], [ %.11827.us.i.us.ph, %.lr.ph29.us.i.us.preheader245 ] ; 3 uses
  %i.an = load float, ptr %.11827.us.i.us, align 1, !tbaa !16
  %i.ao = fmul float %10, %i.an
  store float %i.ao, ptr %.11827.us.i.us, align 1, !tbaa !16
  %i.ap = getelementptr inbounds nuw i8, ptr %.11827.us.i.us, i64 4
  %i.aq = add nsw i64 %.128.us.i.us, -1           ; 2 uses
  %.not21.us.i.us = icmp eq i64 %i.aq, 0
  br i1 %.not21.us.i.us, label %._crit_edge.us.i.us, label %.lr.ph29.us.i.us, !llvm.loop !73

._crit_edge.us.i.us:                              ; preds = %.lr.ph29.us.i.us, %middle.block, %..preheader_crit_edge.us.i.us
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.01931.us.i.us, i64 %12
  %i.as = add i64 %i.aa, -1
  %.not.us.i.us = icmp eq i64 %i.aa, 0
  br i1 %.not.us.i.us, label %_Z21MlasSgemmMultiplyBetaPfmmmf.exit.us, label %.preheader22.us.i.us, !llvm.loop !1

_Z21MlasSgemmMultiplyBetaPfmmmf.exit.us:          ; preds = %._crit_edge.i.us, %._crit_edge.us.i.us, %.lr.ph123.split.us
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %.065121.us ; 2 uses
  br i1 %i.g, label %.lr.ph120.split.us.us, label %.lr.ph120.split.us125.preheader

_Z21MlasSgemmMultiplyBetaPfmmmf.exit.us.thread:   ; preds = %bb.b
  br i1 %i.g, label %._crit_edge.us, label %.lr.ph120.split.us125.preheader

.lr.ph120.split.us125.preheader:                  ; preds = %_Z21MlasSgemmMultiplyBetaPfmmmf.exit.us.thread, %_Z21MlasSgemmMultiplyBetaPfmmmf.exit.us
  %i.au = phi ptr [ %i.j, %_Z21MlasSgemmMultiplyBetaPfmmmf.exit.us.thread ], [ %i.at, %_Z21MlasSgemmMultiplyBetaPfmmmf.exit.us ]
  br label %.lr.ph120.split.us125

.lr.ph120.split.us125:                            ; preds = %.lr.ph120.split.us125.preheader, %_Z19MlasSgemmKernelLoopPKfS0_Pfmmmmmfb.exit73.loopexit99.us
  %.063119.us126 = phi i64 [ %i.fv, %_Z19MlasSgemmKernelLoopPKfS0_Pfmmmmmfb.exit73.loopexit99.us ], [ 0, %.lr.ph120.split.us125.preheader ] ; 4 uses
  %.064118.us127 = phi i1 [ false, %_Z19MlasSgemmKernelLoopPKfS0_Pfmmmmmfb.exit73.loopexit99.us ], [ %i.b, %.lr.ph120.split.us125.preheader ]
  %i.av = sub nuw i64 %4, %.063119.us126          ; 3 uses
  %.sroa.speculated88.us128 = call i64 @llvm.umin.i64(i64 %i.av, i64 256) ; 23 uses
  %i.aw = mul i64 %.063119.us126, %9
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.aw
  %i.ay = mul i64 %.sroa.speculated88.us128, %i.h
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ay
  br i1 %.not30.i, label %_Z19MlasSgemmKernelLoopPKfS0_Pfmmmmmfb.exit73.loopexit99.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph120.split.us125
  %i.ba = mul i64 %.063119.us126, %7
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ba
  %i.bc = icmp ugt i64 %i.av, 3
  br label %bb.d

bb.d:                                             ; preds = %_Z19MlasSgemmKernelLoopPKfS0_Pfmmmmmfb.exit.loopexit.us, %.lr.ph.us
  %.0112.us = phi ptr [ %i.bb, %.lr.ph.us ], [ %i.fk, %_Z19MlasSgemmKernelLoopPKfS0_Pfmmmmmfb.exit.loopexit.us ] ; 3 uses
  %.062111.us = phi ptr [ %i.au, %.lr.ph.us ], [ %i.fr, %_Z19MlasSgemmKernelLoopPKfS0_Pfmmmmmfb.exit.loopexit.us ]
  %.098110.us = phi i64 [ %1, %.lr.ph.us ], [ %i.fj, %_Z19MlasSgemmKernelLoopPKfS0_Pfmmmmmfb.exit.loopexit.us ] ; 5 uses
  %.sroa.speculated.us = call i64 @llvm.umin.i64(i64 %.098110.us, i64 12) ; 12 uses
  br i1 %i.bc, label %.preheader79.i.us.preheader, label %._crit_edge.i78.us

.preheader79.i.us.preheader:                      ; preds = %bb.d
  %xtraiter257 = and i64 %.sroa.speculated.us, 1
  %lcmp.mod258.not = icmp eq i64 %xtraiter257, 0
  %i.bd = add nsw i64 %.sroa.speculated.us, -1
  %i.be = icmp eq i64 %.098110.us, 1
  br label %.preheader79.i.us

.preheader79.i.us:                                ; preds = %.preheader79.i.us.preheader, %.unr-lcssa
  %.06182.i.us = phi ptr [ %i.cq, %.unr-lcssa ], [ %i.a, %.preheader79.i.us.preheader ] ; 7 uses
  %.06281.i.us = phi ptr [ %i.cr, %.unr-lcssa ], [ %.0112.us, %.preheader79.i.us.preheader ] ; 7 uses
  %.06780.i.us = phi i64 [ %i.cs, %.unr-lcssa ], [ %.sroa.speculated88.us128, %.preheader79.i.us.preheader ]
  br i1 %lcmp.mod258.not, label %.prol.loopexit256, label %.prol.loopexit256.unr-lcssa

.prol.loopexit256.unr-lcssa:                      ; preds = %.preheader79.i.us
  %i.bf = load float, ptr %.06281.i.us, align 4, !tbaa !22
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.06281.i.us, i64 %7
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !22
  %i.bi = getelementptr inbounds nuw i8, ptr %.06281.i.us, i64 %.idx74.i
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !22
  %i.bk = getelementptr inbounds nuw i8, ptr %.06281.i.us, i64 %.idx75.i
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !22
  store float %i.bf, ptr %.06182.i.us, align 4, !tbaa !22
  %i.bm = getelementptr inbounds nuw i8, ptr %.06182.i.us, i64 4
  store float %i.bh, ptr %i.bm, align 4, !tbaa !22
  %i.bn = getelementptr inbounds nuw i8, ptr %.06182.i.us, i64 8
  store float %i.bj, ptr %i.bn, align 4, !tbaa !22
  %i.bo = getelementptr inbounds nuw i8, ptr %.06182.i.us, i64 12
  store float %i.bl, ptr %i.bo, align 4, !tbaa !22
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.06182.i.us, i64 %.sroa.speculated88.us128
  %i.bq = getelementptr inbounds nuw i8, ptr %.06281.i.us, i64 4
  br label %.prol.loopexit256

.prol.loopexit256:                                ; preds = %.prol.loopexit256.unr-lcssa, %.preheader79.i.us
  %.071.i.us.unr = phi i64 [ %.sroa.speculated.us, %.preheader79.i.us ], [ %i.bd, %.prol.loopexit256.unr-lcssa ]
  %.070.i.us.unr = phi ptr [ %.06281.i.us, %.preheader79.i.us ], [ %i.bq, %.prol.loopexit256.unr-lcssa ]
  %.069.i.us.unr = phi ptr [ %.06182.i.us, %.preheader79.i.us ], [ %i.bp, %.prol.loopexit256.unr-lcssa ]
  br i1 %i.be, label %.unr-lcssa, label %.preheader79.i.us.new

.preheader79.i.us.new:                            ; preds = %.prol.loopexit256, %.preheader79.i.us.new
  %.071.i.us = phi i64 [ %i.cp, %.preheader79.i.us.new ], [ %.071.i.us.unr, %.prol.loopexit256 ]
  %.070.i.us = phi ptr [ %i.co, %.preheader79.i.us.new ], [ %.070.i.us.unr, %.prol.loopexit256 ] ; 6 uses
  %.069.i.us = phi ptr [ %i.cn, %.preheader79.i.us.new ], [ %.069.i.us.unr, %.prol.loopexit256 ] ; 5 uses
  %i.br = load float, ptr %.070.i.us, align 4, !tbaa !22
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.070.i.us, i64 %7
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !22
  %i.bu = getelementptr inbounds nuw i8, ptr %.070.i.us, i64 %.idx74.i
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !22
  %i.bw = getelementptr inbounds nuw i8, ptr %.070.i.us, i64 %.idx75.i
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !22
  store float %i.br, ptr %.069.i.us, align 4, !tbaa !22
  %i.by = getelementptr inbounds nuw i8, ptr %.069.i.us, i64 4
  store float %i.bt, ptr %i.by, align 4, !tbaa !22
  %i.bz = getelementptr inbounds nuw i8, ptr %.069.i.us, i64 8
  store float %i.bv, ptr %i.bz, align 4, !tbaa !22
  %i.ca = getelementptr inbounds nuw i8, ptr %.069.i.us, i64 12
  store float %i.bx, ptr %i.ca, align 4, !tbaa !22
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.069.i.us, i64 %.sroa.speculated88.us128 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.070.i.us, i64 4 ; 4 uses
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !22
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %7
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !22
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.idx74.i
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !22
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.idx75.i
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !22
  store float %i.cd, ptr %i.cb, align 4, !tbaa !22
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store float %i.cf, ptr %i.ck, align 4, !tbaa !22
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store float %i.ch, ptr %i.cl, align 4, !tbaa !22
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  store float %i.cj, ptr %i.cm, align 4, !tbaa !22
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %.sroa.speculated88.us128
  %i.co = getelementptr inbounds nuw i8, ptr %.070.i.us, i64 8
  %i.cp = add i64 %.071.i.us, -2                  ; 2 uses
  %.not76.i.us.1 = icmp eq i64 %i.cp, 0
  br i1 %.not76.i.us.1, label %.unr-lcssa, label %.preheader79.i.us.new, !llvm.loop !2

.unr-lcssa:                                       ; preds = %.preheader79.i.us.new, %.prol.loopexit256
  %i.cq = getelementptr inbounds nuw i8, ptr %.06182.i.us, i64 16 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.06281.i.us, i64 %.idx77.i ; 2 uses
  %i.cs = add i64 %.06780.i.us, -4                ; 3 uses
  %i.ct = icmp ugt i64 %i.cs, 3
  br i1 %i.ct, label %.preheader79.i.us, label %._crit_edge.i78.us, !llvm.loop !3

._crit_edge.i78.us:                               ; preds = %.unr-lcssa, %bb.d
  %.067.lcssa.i.us = phi i64 [ %i.av, %bb.d ], [ %i.cs, %.unr-lcssa ] ; 3 uses
  %.062.lcssa.i.us = phi ptr [ %.0112.us, %bb.d ], [ %i.cr, %.unr-lcssa ] ; 4 uses
  %.061.lcssa.i.us = phi ptr [ %i.a, %bb.d ], [ %i.cq, %.unr-lcssa ] ; 4 uses
  %i.cu = icmp samesign ugt i64 %.067.lcssa.i.us, 1
  br i1 %i.cu, label %.preheader78.i.us.preheader, label %bb.e

.preheader78.i.us.preheader:                      ; preds = %._crit_edge.i78.us
  %xtraiter260 = and i64 %.sroa.speculated.us, 3  ; 2 uses
  %lcmp.mod261.not = icmp eq i64 %xtraiter260, 0
  br i1 %lcmp.mod261.not, label %.preheader78.i.us.prol.loopexit, label %.preheader78.i.us.prol

.preheader78.i.us.prol:                           ; preds = %.preheader78.i.us.preheader, %.preheader78.i.us.prol
  %.066.i.us.prol = phi ptr [ %i.cz, %.preheader78.i.us.prol ], [ %.061.lcssa.i.us, %.preheader78.i.us.preheader ] ; 3 uses
  %.065.i.us.prol = phi ptr [ %i.da, %.preheader78.i.us.prol ], [ %.062.lcssa.i.us, %.preheader78.i.us.preheader ] ; 3 uses
  %.064.i.us.prol = phi i64 [ %i.db, %.preheader78.i.us.prol ], [ %.sroa.speculated.us, %.preheader78.i.us.preheader ]
  %prol.iter262 = phi i64 [ %prol.iter262.next, %.preheader78.i.us.prol ], [ 0, %.preheader78.i.us.preheader ]
  %i.cv = load float, ptr %.065.i.us.prol, align 4, !tbaa !22
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.065.i.us.prol, i64 %7
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !22
  store float %i.cv, ptr %.066.i.us.prol, align 4, !tbaa !22
  %i.cy = getelementptr inbounds nuw i8, ptr %.066.i.us.prol, i64 4
  store float %i.cx, ptr %i.cy, align 4, !tbaa !22
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.066.i.us.prol, i64 %.sroa.speculated88.us128 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.065.i.us.prol, i64 4 ; 2 uses
  %i.db = add i64 %.064.i.us.prol, -1             ; 2 uses
  %prol.iter262.next = add i64 %prol.iter262, 1   ; 2 uses
  %prol.iter262.cmp.not = icmp eq i64 %prol.iter262.next, %xtraiter260
  br i1 %prol.iter262.cmp.not, label %.preheader78.i.us.prol.loopexit, label %.preheader78.i.us.prol, !llvm.loop !74

.preheader78.i.us.prol.loopexit:                  ; preds = %.preheader78.i.us.prol, %.preheader78.i.us.preheader
  %.066.i.us.unr = phi ptr [ %.061.lcssa.i.us, %.preheader78.i.us.preheader ], [ %i.cz, %.preheader78.i.us.prol ]
  %.065.i.us.unr = phi ptr [ %.062.lcssa.i.us, %.preheader78.i.us.preheader ], [ %i.da, %.preheader78.i.us.prol ]
  %.064.i.us.unr = phi i64 [ %.sroa.speculated.us, %.preheader78.i.us.preheader ], [ %i.db, %.preheader78.i.us.prol ]
  %i.dc = icmp ult i64 %.098110.us, 4
  br i1 %i.dc, label %.unr-lcssa263, label %.preheader78.i.us

.preheader78.i.us:                                ; preds = %.preheader78.i.us.prol.loopexit, %.preheader78.i.us
  %.066.i.us = phi ptr [ %i.dz, %.preheader78.i.us ], [ %.066.i.us.unr, %.preheader78.i.us.prol.loopexit ] ; 3 uses
  %.065.i.us = phi ptr [ %i.ea, %.preheader78.i.us ], [ %.065.i.us.unr, %.preheader78.i.us.prol.loopexit ] ; 6 uses
  %.064.i.us = phi i64 [ %i.eb, %.preheader78.i.us ], [ %.064.i.us.unr, %.preheader78.i.us.prol.loopexit ]
  %i.dd = load float, ptr %.065.i.us, align 4, !tbaa !22
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.065.i.us, i64 %7
  %i.df = load float, ptr %i.de, align 4, !tbaa !22
  store float %i.dd, ptr %.066.i.us, align 4, !tbaa !22
  %i.dg = getelementptr inbounds nuw i8, ptr %.066.i.us, i64 4
  store float %i.df, ptr %i.dg, align 4, !tbaa !22
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.066.i.us, i64 %.sroa.speculated88.us128 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.065.i.us, i64 4 ; 2 uses
  %i.dj = load float, ptr %i.di, align 4, !tbaa !22
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %7
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !22
  store float %i.dj, ptr %i.dh, align 4, !tbaa !22
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  store float %i.dl, ptr %i.dm, align 4, !tbaa !22
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %.sroa.speculated88.us128 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.065.i.us, i64 8 ; 2 uses
  %i.dp = load float, ptr %i.do, align 4, !tbaa !22
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %7
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !22
  store float %i.dp, ptr %i.dn, align 4, !tbaa !22
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  store float %i.dr, ptr %i.ds, align 4, !tbaa !22
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.sroa.speculated88.us128 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.065.i.us, i64 12 ; 2 uses
  %i.dv = load float, ptr %i.du, align 4, !tbaa !22
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %7
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !22
  store float %i.dv, ptr %i.dt, align 4, !tbaa !22
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  store float %i.dx, ptr %i.dy, align 4, !tbaa !22
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %.sroa.speculated88.us128
  %i.ea = getelementptr inbounds nuw i8, ptr %.065.i.us, i64 16
  %i.eb = add i64 %.064.i.us, -4                  ; 2 uses
  %.not.i80.us.3 = icmp eq i64 %i.eb, 0
  br i1 %.not.i80.us.3, label %.unr-lcssa263, label %.preheader78.i.us, !llvm.loop !4

.unr-lcssa263:                                    ; preds = %.preheader78.i.us, %.preheader78.i.us.prol.loopexit
  %i.ec = getelementptr inbounds nuw i8, ptr %.061.lcssa.i.us, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %.062.lcssa.i.us, i64 %.idx74.i
  %i.ee = add nsw i64 %.067.lcssa.i.us, -2
  br label %bb.e

bb.e:                                             ; preds = %.unr-lcssa263, %._crit_edge.i78.us
  %.168.i.us = phi i64 [ %i.ee, %.unr-lcssa263 ], [ %.067.lcssa.i.us, %._crit_edge.i78.us ]
  %.163.i.us = phi ptr [ %i.ed, %.unr-lcssa263 ], [ %.062.lcssa.i.us, %._crit_edge.i78.us ] ; 2 uses
  %.1.i.us = phi ptr [ %i.ec, %.unr-lcssa263 ], [ %.061.lcssa.i.us, %._crit_edge.i78.us ] ; 2 uses
  %.not72.i.us = icmp eq i64 %.168.i.us, 0
  br i1 %.not72.i.us, label %_Z19MlasSgemmTransposeAPfPKfmmm.exit.us, label %.preheader.i.us.preheader

.preheader.i.us.preheader:                        ; preds = %bb.e
  %xtraiter264 = and i64 %.sroa.speculated.us, 7  ; 2 uses
  %lcmp.mod265.not = icmp eq i64 %xtraiter264, 0
  br i1 %lcmp.mod265.not, label %.preheader.i.us.prol.loopexit, label %.preheader.i.us.prol

.preheader.i.us.prol:                             ; preds = %.preheader.i.us.preheader, %.preheader.i.us.prol
  %.060.i.us.prol = phi ptr [ %i.eg, %.preheader.i.us.prol ], [ %.1.i.us, %.preheader.i.us.preheader ] ; 2 uses
  %.059.i.us.prol = phi ptr [ %i.eh, %.preheader.i.us.prol ], [ %.163.i.us, %.preheader.i.us.preheader ] ; 2 uses
  %.0.i79.us.prol = phi i64 [ %i.ei, %.preheader.i.us.prol ], [ %.sroa.speculated.us, %.preheader.i.us.preheader ]
  %prol.iter266 = phi i64 [ %prol.iter266.next, %.preheader.i.us.prol ], [ 0, %.preheader.i.us.preheader ]
  %i.ef = load float, ptr %.059.i.us.prol, align 4, !tbaa !22
  store float %i.ef, ptr %.060.i.us.prol, align 4, !tbaa !22
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %.060.i.us.prol, i64 %.sroa.speculated88.us128 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.059.i.us.prol, i64 4 ; 2 uses
  %i.ei = add i64 %.0.i79.us.prol, -1             ; 2 uses
  %prol.iter266.next = add i64 %prol.iter266, 1   ; 2 uses
  %prol.iter266.cmp.not = icmp eq i64 %prol.iter266.next, %xtraiter264
  br i1 %prol.iter266.cmp.not, label %.preheader.i.us.prol.loopexit, label %.preheader.i.us.prol, !llvm.loop !75

.preheader.i.us.prol.loopexit:                    ; preds = %.preheader.i.us.prol, %.preheader.i.us.preheader
  %.060.i.us.unr = phi ptr [ %.1.i.us, %.preheader.i.us.preheader ], [ %i.eg, %.preheader.i.us.prol ]
  %.059.i.us.unr = phi ptr [ %.163.i.us, %.preheader.i.us.preheader ], [ %i.eh, %.preheader.i.us.prol ]
  %.0.i79.us.unr = phi i64 [ %.sroa.speculated.us, %.preheader.i.us.preheader ], [ %i.ei, %.preheader.i.us.prol ]
  %i.ej = icmp ult i64 %.098110.us, 8
  br i1 %i.ej, label %_Z19MlasSgemmTransposeAPfPKfmmm.exit.us, label %.preheader.i.us

.preheader.i.us:                                  ; preds = %.preheader.i.us.prol.loopexit, %.preheader.i.us
  %.060.i.us = phi ptr [ %i.fg, %.preheader.i.us ], [ %.060.i.us.unr, %.preheader.i.us.prol.loopexit ] ; 2 uses
  %.059.i.us = phi ptr [ %i.fh, %.preheader.i.us ], [ %.059.i.us.unr, %.preheader.i.us.prol.loopexit ] ; 9 uses
  %.0.i79.us = phi i64 [ %i.fi, %.preheader.i.us ], [ %.0.i79.us.unr, %.preheader.i.us.prol.loopexit ]
  %i.ek = load float, ptr %.059.i.us, align 4, !tbaa !22
  store float %i.ek, ptr %.060.i.us, align 4, !tbaa !22
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.060.i.us, i64 %.sroa.speculated88.us128 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.059.i.us, i64 4
  %i.en = load float, ptr %i.em, align 4, !tbaa !22
  store float %i.en, ptr %i.el, align 4, !tbaa !22
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.sroa.speculated88.us128 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.059.i.us, i64 8
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !22
  store float %i.eq, ptr %i.eo, align 4, !tbaa !22
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %.sroa.speculated88.us128 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.059.i.us, i64 12
  %i.et = load float, ptr %i.es, align 4, !tbaa !22
  store float %i.et, ptr %i.er, align 4, !tbaa !22
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %.sroa.speculated88.us128 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.059.i.us, i64 16
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !22
  store float %i.ew, ptr %i.eu, align 4, !tbaa !22
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %.sroa.speculated88.us128 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.059.i.us, i64 20
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !22
  store float %i.ez, ptr %i.ex, align 4, !tbaa !22
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %.sroa.speculated88.us128 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.059.i.us, i64 24
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !22
  store float %i.fc, ptr %i.fa, align 4, !tbaa !22
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %.sroa.speculated88.us128 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.059.i.us, i64 28
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !22
  store float %i.ff, ptr %i.fd, align 4, !tbaa !22
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %.sroa.speculated88.us128
  %i.fh = getelementptr inbounds nuw i8, ptr %.059.i.us, i64 32
  %i.fi = add i64 %.0.i79.us, -8                  ; 2 uses
  %.not73.i.us.7 = icmp eq i64 %i.fi, 0
  br i1 %.not73.i.us.7, label %_Z19MlasSgemmTransposeAPfPKfmmm.exit.us, label %.preheader.i.us, !llvm.loop !5

_Z19MlasSgemmTransposeAPfPKfmmm.exit.us:          ; preds = %.preheader.i.us.prol.loopexit, %.preheader.i.us, %bb.e
  %i.fj = sub nuw i64 %.098110.us, %.sroa.speculated.us ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.0112.us, i64 %.sroa.speculated.us
  br label %bb.f

bb.f:                                             ; preds = %_Z15GetMlasPlatformv.exit82.us, %_Z19MlasSgemmTransposeAPfPKfmmm.exit.us
  %.0.i108.us = phi ptr [ %i.a, %_Z19MlasSgemmTransposeAPfPKfmmm.exit.us ], [ %i.ft, %_Z15GetMlasPlatformv.exit82.us ] ; 2 uses
  %.019.i107.us = phi ptr [ %.062111.us, %_Z19MlasSgemmTransposeAPfPKfmmm.exit.us ], [ %i.fr, %_Z15GetMlasPlatformv.exit82.us ] ; 2 uses
  %.020.i106.us = phi i64 [ %.sroa.speculated.us, %_Z19MlasSgemmTransposeAPfPKfmmm.exit.us ], [ %i.fu, %_Z15GetMlasPlatformv.exit82.us ] ; 2 uses
  %i.fl = load atomic i8, ptr @_ZGVZ15GetMlasPlatformvE12MlasPlatform acquire, align 8
  %i.fm = icmp eq i8 %i.fl, 0
  br i1 %i.fm, label %bb.g, label %_Z15GetMlasPlatformv.exit82.us, !prof !23

bb.g:                                             ; preds = %bb.f
  %i.fn = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #13
  %.not.i81.us = icmp eq i32 %i.fn, 0
  br i1 %.not.i81.us, label %_Z15GetMlasPlatformv.exit82.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN13MLAS_PLATFORMC1Ev(ptr noundef nonnull align 8 dereferenceable(584) @_ZZ15GetMlasPlatformvE12MlasPlatform)
          to label %bb.i unwind label %.split.us.split.us.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  call void @__cxa_guard_release(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #13
  br label %_Z15GetMlasPlatformv.exit82.us

_Z15GetMlasPlatformv.exit82.us:                   ; preds = %bb.i, %bb.g, %bb.f
  %i.fo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ15GetMlasPlatformvE12MlasPlatform, i64 72), align 8, !tbaa !39
  %i.fp = call noundef i64 %i.fo(ptr noundef %.0.i108.us, ptr noundef %i.az, ptr noundef %.019.i107.us, i64 noundef %.sroa.speculated88.us128, i64 noundef %.020.i106.us, i64 noundef %.sroa.speculated93.us, i64 noundef %.sroa.speculated88.us128, i64 noundef %12, float noundef %5, i1 noundef zeroext %.064118.us127), !inline_history !6 ; 3 uses
  %i.fq = mul i64 %i.fp, %12
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.019.i107.us, i64 %i.fq ; 2 uses
  %i.fs = mul i64 %i.fp, %.sroa.speculated88.us128
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.0.i108.us, i64 %i.fs
  %i.fu = sub i64 %.020.i106.us, %i.fp            ; 2 uses
  %.not.i.us = icmp eq i64 %i.fu, 0
  br i1 %.not.i.us, label %_Z19MlasSgemmKernelLoopPKfS0_Pfmmmmmfb.exit.loopexit.us, label %bb.f, !llvm.loop !7

_Z19MlasSgemmKernelLoopPKfS0_Pfmmmmmfb.exit.loopexit.us: ; preds = %_Z15GetMlasPlatformv.exit82.us
  %.not.us = icmp eq i64 %i.fj, 0
  br i1 %.not.us, label %_Z19MlasSgemmKernelLoopPKfS0_Pfmmmmmfb.exit73.loopexit99.us, label %bb.d, !llvm.loop !76

_Z19MlasSgemmKernelLoopPKfS0_Pfmmmmmfb.exit73.loopexit99.us: ; preds = %_Z19MlasSgemmKernelLoopPKfS0_Pfmmmmmfb.exit.loopexit.us, %.lr.ph120.split.us125
  %i.fv = add i64 %.sroa.speculated88.us128, %.063119.us126 ; 2 uses
  %i.fw = icmp ult i64 %i.fv, %4
  br i1 %i.fw, label %.lr.ph120.split.us125, label %._crit_edge.us, !llvm.loop !77

.lr.ph120.split.us.us:                            ; preds = %_Z21MlasSgemmMultiplyBetaPfmmmf.exit.us
  br i1 %.not30.i, label %._crit_edge.us, label %.lr.ph117.us.us

.lr.ph117.us.us:                                  ; preds = %.lr.ph120.split.us.us, %._Z19MlasSgemmKernelLoopPKfS0_Pfmmmmmfb.exit73.loopexit_crit_edge.us.us
  %.063119.us.us131 = phi i64 [ %i.gn, %._Z19MlasSgemmKernelLoopPKfS0_Pfmmmmmfb.exit73.loopexit_crit_edge.us.us ], [ 0, %.lr.ph120.split.us.us ] ; 4 uses
  %.064118.us.us = phi i1 [ false, %._Z19MlasSgemmKernelLoopPKfS0_Pfmmmmmfb.exit73.loopexit_crit_edge.us.us ], [ %i.b, %.lr.ph120.split.us.us ]
  %i.fx = sub nuw i64 %4, %.063119.us.us131
  %.sroa.speculated88.us.us132 = call i64 @llvm.umin.i64(i64 %i.fx, i64 256) ; 3 uses
  %i.fy = mul i64 %.063119.us.us131, %9
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.fy
  %i.ga = mul i64 %.sroa.speculated88.us.us132, %i.h
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.ga
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.063119.us.us131
  br label %bb.j

bb.j:                                             ; preds = %_Z15GetMlasPlatformv.exit.us.us, %.lr.ph117.us.us
  %.0.i71116.us.us = phi ptr [ %i.gc, %.lr.ph117.us.us ], [ %i.gl, %_Z15GetMlasPlatformv.exit.us.us ] ; 2 uses
  %.019.i70115.us.us = phi ptr [ %i.at, %.lr.ph117.us.us ], [ %i.gj, %_Z15GetMlasPlatformv.exit.us.us ] ; 2 uses
  %.020.i69114.us.us = phi i64 [ %1, %.lr.ph117.us.us ], [ %i.gm, %_Z15GetMlasPlatformv.exit.us.us ] ; 2 uses
  %i.gd = load atomic i8, ptr @_ZGVZ15GetMlasPlatformvE12MlasPlatform acquire, align 8
  %i.ge = icmp eq i8 %i.gd, 0
  br i1 %i.ge, label %bb.k, label %_Z15GetMlasPlatformv.exit.us.us, !prof !23

bb.k:                                             ; preds = %bb.j
  %i.gf = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #13
  %.not.i76.us.us = icmp eq i32 %i.gf, 0
  br i1 %.not.i76.us.us, label %_Z15GetMlasPlatformv.exit.us.us, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN13MLAS_PLATFORMC1Ev(ptr noundef nonnull align 8 dereferenceable(584) @_ZZ15GetMlasPlatformvE12MlasPlatform)
          to label %bb.m unwind label %.split.us.split.us.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  call void @__cxa_guard_release(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #13
  br label %_Z15GetMlasPlatformv.exit.us.us

_Z15GetMlasPlatformv.exit.us.us:                  ; preds = %bb.m, %bb.k, %bb.j
  %i.gg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ15GetMlasPlatformvE12MlasPlatform, i64 72), align 8, !tbaa !39
  %i.gh = call noundef i64 %i.gg(ptr noundef %.0.i71116.us.us, ptr noundef %i.gb, ptr noundef %.019.i70115.us.us, i64 noundef %.sroa.speculated88.us.us132, i64 noundef %.020.i69114.us.us, i64 noundef %.sroa.speculated93.us, i64 noundef %7, i64 noundef %12, float noundef %5, i1 noundef zeroext %.064118.us.us), !inline_history !6 ; 3 uses
  %i.gi = mul i64 %i.gh, %12
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %.019.i70115.us.us, i64 %i.gi
  %i.gk = mul i64 %i.gh, %7
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.0.i71116.us.us, i64 %i.gk
  %i.gm = sub i64 %.020.i69114.us.us, %i.gh       ; 2 uses
  %.not.i72.us.us = icmp eq i64 %i.gm, 0
  br i1 %.not.i72.us.us, label %._Z19MlasSgemmKernelLoopPKfS0_Pfmmmmmfb.exit73.loopexit_crit_edge.us.us, label %bb.j, !llvm.loop !7

._Z19MlasSgemmKernelLoopPKfS0_Pfmmmmmfb.exit73.loopexit_crit_edge.us.us: ; preds = %_Z15GetMlasPlatformv.exit.us.us
  %i.gn = add i64 %.sroa.speculated88.us.us132, %.063119.us.us131 ; 2 uses
  %i.go = icmp ult i64 %i.gn, %4
  br i1 %i.go, label %.lr.ph117.us.us, label %._crit_edge.us, !llvm.loop !77

._crit_edge.us:                                   ; preds = %_Z19MlasSgemmKernelLoopPKfS0_Pfmmmmmfb.exit73.loopexit99.us, %._Z19MlasSgemmKernelLoopPKfS0_Pfmmmmmfb.exit73.loopexit_crit_edge.us.us, %_Z21MlasSgemmMultiplyBetaPfmmmf.exit.us.thread, %.lr.ph120.split.us.us
  %i.gp = add i64 %.sroa.speculated93.us, %.065121.us ; 2 uses
  %i.gq = icmp ult i64 %i.gp, %3
  br i1 %i.gq, label %.lr.ph123.split.us, label %._crit_edge124, !llvm.loop !78

.split.us.split.us.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %bb.l
  %lpad.loopexit.split-lp244 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #13
  resume { ptr, i32 } %lpad.loopexit.split-lp244

.lr.ph123.split:                                  ; preds = %.lr.ph123
  %brmerge = or i1 %or.cond.not211, %.not30.i
  br i1 %brmerge, label %._crit_edge124, label %.preheader22.lr.ph.i.us138.preheader

.preheader22.lr.ph.i.us138.preheader:             ; preds = %.lr.ph123.split
  %broadcast.splatinsert260 = insertelement <2 x float> poison, float %10, i64 0
  %broadcast.splat261 = shufflevector <2 x float> %broadcast.splatinsert260, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert229.a = insertelement <4 x float> poison, float %10, i64 0
  %broadcast.splat230.a = shufflevector <4 x float> %broadcast.splatinsert229.a, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.preheader22.lr.ph.i.us138

.preheader22.lr.ph.i.us138:                       ; preds = %.preheader22.lr.ph.i.us138.preheader, %_Z21MlasSgemmMultiplyBetaPfmmmf.exit.us166
  %.065121.us136 = phi i64 [ %i.ic, %_Z21MlasSgemmMultiplyBetaPfmmmf.exit.us166 ], [ 0, %.preheader22.lr.ph.i.us138.preheader ] ; 3 uses
  %i.gr = sub nuw i64 %3, %.065121.us136          ; 4 uses
  %.sroa.speculated93.us137 = tail call i64 @llvm.umin.i64(i64 %i.gr, i64 128) ; 7 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %.065121.us136 ; 2 uses
  %i.gt = icmp ugt i64 %i.gr, 3
  br i1 %i.gt, label %.preheader22.us.i.us149.preheader, label %.preheader22.i.us140.preheader

.preheader22.i.us140.preheader:                   ; preds = %.preheader22.lr.ph.i.us138
  %min.iters.check257 = icmp ult i64 %i.gr, 2
  %n.vec259 = and i64 %.sroa.speculated93.us137, 2 ; 2 uses
  %16 = shl nuw nsw i64 %n.vec259, 2
  %17 = and i64 %.sroa.speculated93.us137, 1
  %cmp.n268 = icmp eq i64 %i.gr, %n.vec259
  br label %.preheader22.i.us140

.preheader22.us.i.us149.preheader:                ; preds = %.preheader22.lr.ph.i.us138
  %i.gu = add nsw i64 %.sroa.speculated93.us137, -4 ; 2 uses
  %i.gv = tail call i64 @llvm.umin.i64(i64 %i.gu, i64 3)
  %i.gw = xor i64 %i.gv, -1
  %i.gx = add nsw i64 %.sroa.speculated93.us137, %i.gw
  %i.gy = and i64 %i.gx, -4
  %i.gz = sub nsw i64 %i.gu, %i.gy                ; 3 uses
  %min.iters.check226.a = icmp ult i64 %i.gz, 8
  %n.vec228.a = and i64 %i.gz, -8                 ; 4 uses
  %i.ha = shl nsw i64 %n.vec228.a, 2
  %cmp.n238 = icmp eq i64 %i.gz, %n.vec228.a
  br label %.preheader22.us.i.us149

.preheader22.i.us140:                             ; preds = %.preheader22.i.us140.preheader, %._crit_edge.i.us145
  %i.hb = phi i64 [ %i.hi, %._crit_edge.i.us145 ], [ %i.f, %.preheader22.i.us140.preheader ] ; 2 uses
  %.01931.i.us141 = phi ptr [ %i.hh, %._crit_edge.i.us145 ], [ %i.gs, %.preheader22.i.us140.preheader ] ; 5 uses
  br i1 %min.iters.check257, label %.prol.loopexit268, label %.prol.preheader267

.prol.preheader267:                               ; preds = %.preheader22.i.us140
  %i.hc = getelementptr i8, ptr %.01931.i.us141, i64 %16
  %wide.load265 = load <2 x float>, ptr %.01931.i.us141, align 1, !tbaa !16
  %18 = fmul <2 x float> %broadcast.splat261, %wide.load265
  store <2 x float> %18, ptr %.01931.i.us141, align 1, !tbaa !16
  br i1 %cmp.n268, label %._crit_edge.i.us145, label %.prol.loopexit268

.prol.loopexit268:                                ; preds = %.preheader22.i.us140, %.prol.preheader267
  %.128.i.us142.unr = phi i64 [ %.sroa.speculated93.us137, %.preheader22.i.us140 ], [ %17, %.prol.preheader267 ]
  %.11827.i.us143.unr = phi ptr [ %.01931.i.us141, %.preheader22.i.us140 ], [ %i.hc, %.prol.preheader267 ]
  br label %.preheader22.i.us140.new

.preheader22.i.us140.new:                         ; preds = %.prol.loopexit268, %.preheader22.i.us140.new
  %.128.i.us142 = phi i64 [ %i.hg, %.preheader22.i.us140.new ], [ %.128.i.us142.unr, %.prol.loopexit268 ]
  %.11827.i.us143 = phi ptr [ %i.hf, %.preheader22.i.us140.new ], [ %.11827.i.us143.unr, %.prol.loopexit268 ] ; 3 uses
  %i.hd = load float, ptr %.11827.i.us143, align 1, !tbaa !16
  %i.he = fmul float %10, %i.hd
  store float %i.he, ptr %.11827.i.us143, align 1, !tbaa !16
  %i.hf = getelementptr inbounds nuw i8, ptr %.11827.i.us143, i64 4
  %i.hg = add nsw i64 %.128.i.us142, -1           ; 2 uses
  %.not21.i.us144.3 = icmp eq i64 %i.hg, 0
  br i1 %.not21.i.us144.3, label %._crit_edge.i.us145, label %.preheader22.i.us140.new, !llvm.loop !79

._crit_edge.i.us145:                              ; preds = %.preheader22.i.us140.new, %.prol.preheader267
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %.01931.i.us141, i64 %12
  %i.hi = add i64 %i.hb, -1
  %.not.i74.us146 = icmp eq i64 %i.hb, 0
  br i1 %.not.i74.us146, label %_Z21MlasSgemmMultiplyBetaPfmmmf.exit.us166, label %.preheader22.i.us140, !llvm.loop !1

.preheader22.us.i.us149:                          ; preds = %.preheader22.us.i.us149.preheader, %._crit_edge.us.i.us163
  %i.hj = phi i64 [ %i.ib, %._crit_edge.us.i.us163 ], [ %i.f, %.preheader22.us.i.us149.preheader ] ; 2 uses
  %.01931.us.i.us150 = phi ptr [ %i.ia, %._crit_edge.us.i.us163 ], [ %i.gs, %.preheader22.us.i.us149.preheader ] ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.preheader22.us.i.us149
  %.024.us.i.us151 = phi i64 [ %.sroa.speculated93.us137, %.preheader22.us.i.us149 ], [ %i.hn, %bb.n ]
  %.01723.us.i.us152 = phi ptr [ %.01931.us.i.us150, %.preheader22.us.i.us149 ], [ %i.hm, %bb.n ] ; 3 uses
  %i.hk = load <4 x float>, ptr %.01723.us.i.us152, align 1, !tbaa !16
  %i.hl = fmul <4 x float> %i.e, %i.hk
  store <4 x float> %i.hl, ptr %.01723.us.i.us152, align 1, !tbaa !16
  %i.hm = getelementptr inbounds nuw i8, ptr %.01723.us.i.us152, i64 16 ; 4 uses
  %i.hn = add i64 %.024.us.i.us151, -4            ; 5 uses
  %i.ho = icmp ugt i64 %i.hn, 3
  br i1 %i.ho, label %bb.n, label %..preheader_crit_edge.us.i.us153, !llvm.loop !0

..preheader_crit_edge.us.i.us153:                 ; preds = %bb.n
  %.not2126.us.i.us156 = icmp eq i64 %i.hn, 0
  br i1 %.not2126.us.i.us156, label %._crit_edge.us.i.us163, label %.lr.ph29.us.i.us158.preheader

.lr.ph29.us.i.us158.preheader:                    ; preds = %..preheader_crit_edge.us.i.us153
  br i1 %min.iters.check226.a, label %.lr.ph29.us.i.us158.preheader241, label %vector.ph227

vector.ph227:                                     ; preds = %.lr.ph29.us.i.us158.preheader
  %i.hp = sub nsw i64 %i.hn, %n.vec228.a
  %i.hq = getelementptr i8, ptr %i.hm, i64 %i.ha
  br label %vector.body231

vector.body231:                                   ; preds = %vector.body231, %vector.ph227
  %index232 = phi i64 [ 0, %vector.ph227 ], [ %index.next236, %vector.body231 ] ; 2 uses
  %i.hr = shl i64 %index232, 2
  %next.gep233 = getelementptr i8, ptr %i.hm, i64 %i.hr ; 3 uses
  %i.hs = getelementptr i8, ptr %next.gep233, i64 16 ; 2 uses
  %wide.load234.a = load <4 x float>, ptr %next.gep233, align 1, !tbaa !16
  %wide.load235 = load <4 x float>, ptr %i.hs, align 1, !tbaa !16
  %i.ht = fmul <4 x float> %broadcast.splat230.a, %wide.load234.a
  %i.hu = fmul <4 x float> %broadcast.splat230.a, %wide.load235
  store <4 x float> %i.ht, ptr %next.gep233, align 1, !tbaa !16
  store <4 x float> %i.hu, ptr %i.hs, align 1, !tbaa !16
  %index.next236 = add nuw i64 %index232, 8       ; 2 uses
  %i.hv = icmp eq i64 %index.next236, %n.vec228.a
  br i1 %i.hv, label %middle.block237, label %vector.body231, !llvm.loop !80

middle.block237:                                  ; preds = %vector.body231
  br i1 %cmp.n238, label %._crit_edge.us.i.us163, label %.lr.ph29.us.i.us158.preheader241

.lr.ph29.us.i.us158.preheader241:                 ; preds = %.lr.ph29.us.i.us158.preheader, %middle.block237
  %.128.us.i.us159.ph = phi i64 [ %i.hn, %.lr.ph29.us.i.us158.preheader ], [ %i.hp, %middle.block237 ]
  %.11827.us.i.us160.ph = phi ptr [ %i.hm, %.lr.ph29.us.i.us158.preheader ], [ %i.hq, %middle.block237 ]
  br label %.lr.ph29.us.i.us158

.lr.ph29.us.i.us158:                              ; preds = %.lr.ph29.us.i.us158.preheader241, %.lr.ph29.us.i.us158
  %.128.us.i.us159 = phi i64 [ %i.hz, %.lr.ph29.us.i.us158 ], [ %.128.us.i.us159.ph, %.lr.ph29.us.i.us158.preheader241 ]
  %.11827.us.i.us160 = phi ptr [ %i.hy, %.lr.ph29.us.i.us158 ], [ %.11827.us.i.us160.ph, %.lr.ph29.us.i.us158.preheader241 ] ; 3 uses
  %i.hw = load float, ptr %.11827.us.i.us160, align 1, !tbaa !16
  %i.hx = fmul float %10, %i.hw
  store float %i.hx, ptr %.11827.us.i.us160, align 1, !tbaa !16
  %i.hy = getelementptr inbounds nuw i8, ptr %.11827.us.i.us160, i64 4
  %i.hz = add nsw i64 %.128.us.i.us159, -1        ; 2 uses
  %.not21.us.i.us161 = icmp eq i64 %i.hz, 0
  br i1 %.not21.us.i.us161, label %._crit_edge.us.i.us163, label %.lr.ph29.us.i.us158, !llvm.loop !81

._crit_edge.us.i.us163:                           ; preds = %.lr.ph29.us.i.us158, %middle.block237, %..preheader_crit_edge.us.i.us153
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %.01931.us.i.us150, i64 %12
  %i.ib = add i64 %i.hj, -1
  %.not.us.i.us164 = icmp eq i64 %i.hj, 0
  br i1 %.not.us.i.us164, label %_Z21MlasSgemmMultiplyBetaPfmmmf.exit.us166, label %.preheader22.us.i.us149, !llvm.loop !1

_Z21MlasSgemmMultiplyBetaPfmmmf.exit.us166:       ; preds = %._crit_edge.i.us145, %._crit_edge.us.i.us163
  %i.ic = add i64 %.sroa.speculated93.us137, %.065121.us136 ; 2 uses
  %i.id = icmp ult i64 %i.ic, %3
  br i1 %i.id, label %.preheader22.lr.ph.i.us138, label %._crit_edge124, !llvm.loop !78

._crit_edge124:                                   ; preds = %._crit_edge.us, %_Z21MlasSgemmMultiplyBetaPfmmmf.exit.us166, %.lr.ph123.split, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z17MlasSgemmThreadedll15CBLAS_TRANSPOSES_mmmPK22MLAS_SGEMM_DATA_PARAMSl(i64 noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr nofree noundef readonly captures(none) %7, i64 noundef %8) local_unnamed_addr #4 {
bb.a:
  %i.a = sdiv i64 %8, %1                          ; 3 uses
  %i.b = srem i64 %8, %1                          ; 3 uses
  %i.c = udiv i64 %4, %0                          ; 3 uses
  %i.d = urem i64 %4, %0                          ; 2 uses
  %i.e = icmp ult i64 %i.a, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %i.c, 1                          ; 2 uses
  %i.g = mul i64 %i.f, %i.a
  br label %_Z17MlasPartitionWorkllmPmS_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = mul i64 %i.c, %i.a
  %i.i = add i64 %i.h, %i.d
  br label %_Z17MlasPartitionWorkllmPmS_.exit

_Z17MlasPartitionWorkllmPmS_.exit:                ; preds = %bb.b, %bb.c
  %storemerge17.i = phi i64 [ %i.i, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  %storemerge.i = phi i64 [ %i.c, %bb.c ], [ %i.f, %bb.b ] ; 2 uses
  %i.j = add i64 %5, 15                           ; 2 uses
  %i.k = lshr i64 %i.j, 4                         ; 2 uses
  %i.l = udiv i64 %i.k, %1                        ; 3 uses
  %i.m = urem i64 %i.k, %1                        ; 2 uses
  %i.n = icmp ult i64 %i.b, %i.m
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_Z17MlasPartitionWorkllmPmS_.exit
  %i.o = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %i.p = mul i64 %i.o, %i.b
  br label %_Z17MlasPartitionWorkllmPmS_.exit46

bb.e:                                             ; preds = %_Z17MlasPartitionWorkllmPmS_.exit
  %i.q = mul i64 %i.l, %i.b
  %i.r = add i64 %i.q, %i.m
  br label %_Z17MlasPartitionWorkllmPmS_.exit46

_Z17MlasPartitionWorkllmPmS_.exit46:              ; preds = %bb.d, %bb.e
  %storemerge17.i44 = phi i64 [ %i.r, %bb.e ], [ %i.p, %bb.d ]
  %storemerge.i45 = phi i64 [ %i.l, %bb.e ], [ %i.o, %bb.d ]
  %i.s = shl i64 %storemerge17.i44, 4             ; 4 uses
  %i.t = shl i64 %storemerge.i45, 4
  %i.u = sub i64 %5, %i.s
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.u) ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !84   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !85   ; 3 uses
  %i.z = load ptr, ptr %7, align 8, !tbaa !86
  %i.aa = icmp eq i32 %2, 111
  %i.ab = select i1 %i.aa, i64 %i.w, i64 1
  %i.ac = mul i64 %i.ab, %storemerge17.i
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !87
  %i.ag = mul i64 %i.y, %storemerge17.i
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.s ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !88, !range !41, !noundef !42
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !89 ; 2 uses
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_Z17MlasPartitionWorkllmPmS_.exit46
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !90
  %i.aq = and i64 %i.j, -16
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 52
  %i.as = load float, ptr %i.ar, align 4, !tbaa !91
  tail call void @_Z24MlasSgemmPackedOperation15CBLAS_TRANSPOSEmmmmfPKfmPKvmfPfm(i32 noundef %2, i64 noundef %storemerge.i, i64 noundef %i.s, i64 noundef %.sroa.speculated, i64 noundef %6, float noundef %i.ap, ptr noundef %i.ad, i64 noundef %i.w, ptr noundef %i.an, i64 noundef %i.aq, float noundef %i.as, ptr noundef %i.ai, i64 noundef %i.y)
  br label %bb.h

bb.g:                                             ; preds = %_Z17MlasPartitionWorkllmPmS_.exit46
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.au = load i64, ptr %i.at, align 8, !tbaa !92 ; 2 uses
  %i.av = icmp eq i32 %3, 111
  %i.aw = select i1 %i.av, i64 1, i64 %i.au
  %i.ax = mul i64 %i.aw, %i.s
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ba = load float, ptr %i.az, align 8, !tbaa !90
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 52
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !91
  tail call void @_Z18MlasSgemmOperation15CBLAS_TRANSPOSES_mmmfPKfmS1_mfPfm(i32 noundef %2, i32 noundef %3, i64 noundef %storemerge.i, i64 noundef %.sroa.speculated, i64 noundef %6, float noundef %i.ba, ptr noundef %i.ad, i64 noundef %i.w, ptr noundef %i.ay, i64 noundef %i.au, float noundef %i.bc, ptr noundef %i.ai, i64 noundef %i.y)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z13MlasGemmBatch15CBLAS_TRANSPOSES_mmmPK22MLAS_SGEMM_DATA_PARAMSmPN11onnxruntime11concurrency10ThreadPoolEPK35MLAS_BACKEND_KERNEL_SELECTOR_CONFIG(i32 noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, ptr nofree noundef readonly captures(address_is_null) %8) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::function", align 8     ; 12 uses
  %.not = icmp eq ptr %8, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %8, align 1, !tbaa !94, !range !41, !noundef !42
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load atomic i8, ptr @_ZGVZ15GetMlasPlatformvE12MlasPlatform acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.d, label %_Z15GetMlasPlatformv.exit, !prof !23

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #13
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_Z15GetMlasPlatformv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN13MLAS_PLATFORMC1Ev(ptr noundef nonnull align 8 dereferenceable(584) @_ZZ15GetMlasPlatformvE12MlasPlatform)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #13
  br label %_Z15GetMlasPlatformv.exit

common.resume:                                    ; preds = %_ZNSt14_Function_baseD2Ev.exit66, %bb.l, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.g ], [ %i.m, %bb.l ], [ %i.ao, %_ZNSt14_Function_baseD2Ev.exit66 ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #13
  br label %common.resume

_Z15GetMlasPlatformv.exit:                        ; preds = %bb.c, %bb.d, %bb.f
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ15GetMlasPlatformvE12MlasPlatform, i64 8), align 8, !tbaa !95
  %i.h = icmp ne ptr %i.g, null
  %i.i = icmp ne i32 %0, 112
  %or.cond = and i1 %i.i, %i.h
  br i1 %or.cond, label %bb.h, label %bb.m

bb.h:                                             ; preds = %_Z15GetMlasPlatformv.exit
  %i.j = load atomic i8, ptr @_ZGVZ15GetMlasPlatformvE12MlasPlatform acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.i, label %_Z15GetMlasPlatformv.exit63, !prof !23

bb.i:                                             ; preds = %bb.h
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #13
  %.not.i62 = icmp eq i32 %i.l, 0
  br i1 %.not.i62, label %_Z15GetMlasPlatformv.exit63, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN13MLAS_PLATFORMC1Ev(ptr noundef nonnull align 8 dereferenceable(584) @_ZZ15GetMlasPlatformvE12MlasPlatform)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #13
  br label %_Z15GetMlasPlatformv.exit63

bb.l:                                             ; preds = %bb.j
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #13
  br label %common.resume

_Z15GetMlasPlatformv.exit63:                      ; preds = %bb.h, %bb.i, %bb.k
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ15GetMlasPlatformvE12MlasPlatform, i64 8), align 8, !tbaa !95
  %i.o = tail call noundef zeroext i1 %i.n(i32 noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7)
  br i1 %i.o, label %bb.s, label %bb.m

bb.m:                                             ; preds = %_Z15GetMlasPlatformv.exit63, %_Z15GetMlasPlatformv.exit, %bb.b
  %i.p = uitofp i64 %2 to double
  %i.q = uitofp i64 %3 to double
  %i.r = fmul nnan double %i.p, %i.q
  %i.s = uitofp i64 %4 to double
  %i.t = fmul double %i.r, %i.s
  %i.u = fmul double %i.t, f0x3EF0000000000000
  %i.v = fptosi double %i.u to i64
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = tail call i32 @opencv_dnn_mlas_max_threads()
  %i.y = sext i32 %i.x to i64
  %spec.select = tail call i64 @llvm.smin.i64(i64 %i.w, i64 %i.y)
  %i.z = add i64 %6, -1
  %i.aa = add i64 %i.z, %spec.select
  %i.ab = udiv i64 %i.aa, %6                      ; 2 uses
  %i.ac = icmp ugt i64 %3, %2
  br i1 %i.ac, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ad = add i64 %3, 15
  %i.ae = lshr i64 %i.ad, 4
  %spec.select60 = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.ae) ; 2 uses
  br label %"_ZNSt8functionIFvlEEC2IZ13MlasGemmBatch15CBLAS_TRANSPOSES3_mmmPK22MLAS_SGEMM_DATA_PARAMSmPN11onnxruntime11concurrency10ThreadPoolEPK35MLAS_BACKEND_KERNEL_SELECTOR_CONFIGE3$_0vEEOT_.exit"

bb.o:                                             ; preds = %bb.m
  %spec.select61 = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 %2) ; 2 uses
  br label %"_ZNSt8functionIFvlEEC2IZ13MlasGemmBatch15CBLAS_TRANSPOSES3_mmmPK22MLAS_SGEMM_DATA_PARAMSmPN11onnxruntime11concurrency10ThreadPoolEPK35MLAS_BACKEND_KERNEL_SELECTOR_CONFIGE3$_0vEEOT_.exit"

"_ZNSt8functionIFvlEEC2IZ13MlasGemmBatch15CBLAS_TRANSPOSES3_mmmPK22MLAS_SGEMM_DATA_PARAMSmPN11onnxruntime11concurrency10ThreadPoolEPK35MLAS_BACKEND_KERNEL_SELECTOR_CONFIGE3$_0vEEOT_.exit": ; preds = %bb.o, %bb.n
  %.2 = phi i64 [ %spec.select60, %bb.n ], [ %spec.select61, %bb.o ] ; 2 uses
  %.048 = phi i64 [ 1, %bb.n ], [ %spec.select61, %bb.o ]
  %.047 = phi i64 [ %spec.select60, %bb.n ], [ 1, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.ag, align 8
  %i.ah = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #14 ; 10 uses
  %i.ai = mul nsw i64 %.2, %6
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 %.2, ptr %i.ah, align 16, !tbaa !43
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %.048, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !43
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %.047, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !43
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i32 %0, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !45
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  store i32 %1, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !45
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store i64 %2, ptr %.sroa.9.0..sroa_idx, align 16, !tbaa !43
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i64 %3, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !43
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  store i64 %4, ptr %.sroa.11.0..sroa_idx, align 16, !tbaa !43
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  store ptr %5, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !47
  store ptr %i.ah, ptr %9, align 8, !tbaa !38
  store ptr @"_ZNSt17_Function_handlerIFvlEZ13MlasGemmBatch15CBLAS_TRANSPOSES1_mmmPK22MLAS_SGEMM_DATA_PARAMSmPN11onnxruntime11concurrency10ThreadPoolEPK35MLAS_BACKEND_KERNEL_SELECTOR_CONFIGE3$_0E9_M_invokeERKSt9_Any_dataOl", ptr %i.aj, align 8, !tbaa !98
  store ptr @"_ZNSt17_Function_handlerIFvlEZ13MlasGemmBatch15CBLAS_TRANSPOSES1_mmmPK22MLAS_SGEMM_DATA_PARAMSmPN11onnxruntime11concurrency10ThreadPoolEPK35MLAS_BACKEND_KERNEL_SELECTOR_CONFIGE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation", ptr %i.af, align 8, !tbaa !99
  invoke void @_Z21MlasTrySimpleParallelPN11onnxruntime11concurrency10ThreadPoolElRKSt8functionIFvlEE(ptr noundef %7, i64 noundef %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %"_ZNSt8functionIFvlEEC2IZ13MlasGemmBatch15CBLAS_TRANSPOSES3_mmmPK22MLAS_SGEMM_DATA_PARAMSmPN11onnxruntime11concurrency10ThreadPoolEPK35MLAS_BACKEND_KERNEL_SELECTOR_CONFIGE3$_0vEEOT_.exit"
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !99 ; 2 uses
  %.not.i64 = icmp eq ptr %i.ak, null
  br i1 %.not.i64, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = invoke noundef zeroext i1 %i.ak(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #15
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %bb.s

bb.s:                                             ; preds = %_Z15GetMlasPlatformv.exit63, %_ZNSt14_Function_baseD2Ev.exit
  ret void

bb.t:                                             ; preds = %"_ZNSt8functionIFvlEEC2IZ13MlasGemmBatch15CBLAS_TRANSPOSES3_mmmPK22MLAS_SGEMM_DATA_PARAMSmPN11onnxruntime11concurrency10ThreadPoolEPK35MLAS_BACKEND_KERNEL_SELECTOR_CONFIGE3$_0vEEOT_.exit"
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = load ptr, ptr %i.af, align 8, !tbaa !99 ; 2 uses
  %.not.i65 = icmp eq ptr %i.ap, null
  br i1 %.not.i65, label %_ZNSt14_Function_baseD2Ev.exit66, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aq = invoke noundef zeroext i1 %i.ap(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit66 unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #15
  unreachable

_ZNSt14_Function_baseD2Ev.exit66:                 ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %common.resume
}

declare void @_Z21MlasTrySimpleParallelPN11onnxruntime11concurrency10ThreadPoolElRKSt8functionIFvlEE(ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_Z17MlasGemmPackBSize15CBLAS_TRANSPOSES_mmPK35MLAS_BACKEND_KERNEL_SELECTOR_CONFIG(i32 noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readnone captures(none) %4) local_unnamed_addr #4 {
bb.a:
  %i.a = add i64 %2, 15
  %i.b = and i64 %i.a, 4611686018427387888
  %i.c = shl i64 %3, 2
  %i.d = mul i64 %i.c, %i.b
  %i.e = tail call noundef i64 @_Z31MlasGetPreferredBufferAlignmentv() ; 2 uses
  %i.f = add i64 %i.d, -1
  %i.g = add i64 %i.f, %i.e
  %i.h = sub i64 0, %i.e
  %i.i = and i64 %i.g, %i.h
  ret i64 %i.i
}

declare noundef i64 @_Z31MlasGetPreferredBufferAlignmentv() local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_Z13MlasGemmPackB15CBLAS_TRANSPOSES_mmPKfmPvPK35MLAS_BACKEND_KERNEL_SELECTOR_CONFIG(i32 noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, ptr nofree noundef readnone captures(none) %7) local_unnamed_addr #4 {
bb.a:
  %i.a = add i64 %2, 15
  %i.b = and i64 %i.a, -16                        ; 2 uses
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = icmp eq i32 %1, 111
  br i1 %i.c, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.029.us = phi i64 [ %i.i, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 3 uses
  %.02328.us = phi ptr [ %i.h, %.lr.ph.split.us ], [ %6, %.lr.ph ] ; 2 uses
  %i.d = sub nuw i64 %3, %.029.us
  %.sroa.speculated.us = tail call i64 @llvm.umin.i64(i64 %i.d, i64 256) ; 3 uses
  %i.e = mul i64 %.029.us, %5
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.e
  tail call void @_Z18MlasSgemmCopyPackBPfPKfmmm(ptr noundef %.02328.us, ptr noundef %i.f, i64 noundef %5, i64 noundef %2, i64 noundef %.sroa.speculated.us)
  %i.g = mul i64 %.sroa.speculated.us, %i.b
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %.02328.us, i64 %i.g
  %i.i = add i64 %.sroa.speculated.us, %.029.us   ; 2 uses
  %i.j = icmp ult i64 %i.i, %3
  br i1 %i.j, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !100

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.a
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.029 = phi i64 [ %i.o, %.lr.ph.split ], [ 0, %.lr.ph ] ; 3 uses
  %.02328 = phi ptr [ %i.n, %.lr.ph.split ], [ %6, %.lr.ph ] ; 2 uses
  %i.k = sub nuw i64 %3, %.029
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.k, i64 256) ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.029
  tail call void @_Z23MlasSgemmTransposePackBPfPKfmmm(ptr noundef %.02328, ptr noundef %i.l, i64 noundef %5, i64 noundef %2, i64 noundef %.sroa.speculated)
  %i.m = mul i64 %.sroa.speculated, %i.b
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.02328, i64 %i.m
  %i.o = add i64 %.sroa.speculated, %.029         ; 2 uses
  %i.p = icmp ult i64 %i.o, %3
  br i1 %i.p, label %.lr.ph.split, label %._crit_edge, !llvm.loop !100
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #6

declare void @_ZN13MLAS_PLATFORMC1Ev(ptr noundef nonnull align 8 dereferenceable(584)) unnamed_addr #5

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #6

declare i32 @opencv_dnn_mlas_max_threads() local_unnamed_addr #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #13 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvlEZ13MlasGemmBatch15CBLAS_TRANSPOSES1_mmmPK22MLAS_SGEMM_DATA_PARAMSmPN11onnxruntime11concurrency10ThreadPoolEPK35MLAS_BACKEND_KERNEL_SELECTOR_CONFIGE3$_0E9_M_invokeERKSt9_Any_dataOl"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #4 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !38    ; 9 uses
  %.val2 = load i64, ptr %1, align 8, !tbaa !43   ; 2 uses
  %i.a = load i64, ptr %.val, align 8, !tbaa !102 ; 2 uses
  %i.b = sdiv i64 %.val2, %i.a
  %i.c = srem i64 %.val2, %i.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !103
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !104
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !105
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 28
  %i.k = load i32, ptr %i.j, align 4, !tbaa !106
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !107
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !108
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.q = load i64, ptr %i.p, align 8, !tbaa !109
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !110
  %i.t = getelementptr inbounds [64 x i8], ptr %i.s, i64 %i.b
  tail call void @_Z17MlasSgemmThreadedll15CBLAS_TRANSPOSES_mmmPK22MLAS_SGEMM_DATA_PARAMSl(i64 noundef %i.e, i64 noundef %i.g, i32 noundef %i.i, i32 noundef %i.k, i64 noundef %i.m, i64 noundef %i.o, i64 noundef %i.q, ptr noundef %i.t, i64 noundef %i.c)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvlEZ13MlasGemmBatch15CBLAS_TRANSPOSES1_mmmPK22MLAS_SGEMM_DATA_PARAMSmPN11onnxruntime11concurrency10ThreadPoolEPK35MLAS_BACKEND_KERNEL_SELECTOR_CONFIGE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #4 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZ13MlasGemmBatch15CBLAS_TRANSPOSES1_mmmPK22MLAS_SGEMM_DATA_PARAMSmPN11onnxruntime11concurrency10ThreadPoolEPK35MLAS_BACKEND_KERNEL_SELECTOR_CONFIGE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZ13MlasGemmBatch15CBLAS_TRANSPOSES_mmmPK22MLAS_SGEMM_DATA_PARAMSmPN11onnxruntime11concurrency10ThreadPoolEPK35MLAS_BACKEND_KERNEL_SELECTOR_CONFIGE3$_0", ptr %0, align 8, !tbaa !112
  br label %"_ZNSt14_Function_base13_Base_managerIZ13MlasGemmBatch15CBLAS_TRANSPOSES1_mmmPK22MLAS_SGEMM_DATA_PARAMSmPN11onnxruntime11concurrency10ThreadPoolEPK35MLAS_BACKEND_KERNEL_SELECTOR_CONFIGE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !38
  store ptr %.val, ptr %0, align 8, !tbaa !38
  br label %"_ZNSt14_Function_base13_Base_managerIZ13MlasGemmBatch15CBLAS_TRANSPOSES1_mmmPK22MLAS_SGEMM_DATA_PARAMSmPN11onnxruntime11concurrency10ThreadPoolEPK35MLAS_BACKEND_KERNEL_SELECTOR_CONFIGE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #14 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %.val6, i64 64, i1 false), !tbaa.struct !113
  store ptr %i.a, ptr %0, align 8, !tbaa !38
  br label %"_ZNSt14_Function_base13_Base_managerIZ13MlasGemmBatch15CBLAS_TRANSPOSES1_mmmPK22MLAS_SGEMM_DATA_PARAMSmPN11onnxruntime11concurrency10ThreadPoolEPK35MLAS_BACKEND_KERNEL_SELECTOR_CONFIGE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !38 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZ13MlasGemmBatch15CBLAS_TRANSPOSES1_mmmPK22MLAS_SGEMM_DATA_PARAMSmPN11onnxruntime11concurrency10ThreadPoolEPK35MLAS_BACKEND_KERNEL_SELECTOR_CONFIGE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 64) #16
  br label %"_ZNSt14_Function_base13_Base_managerIZ13MlasGemmBatch15CBLAS_TRANSPOSES1_mmmPK22MLAS_SGEMM_DATA_PARAMSmPN11onnxruntime11concurrency10ThreadPoolEPK35MLAS_BACKEND_KERNEL_SELECTOR_CONFIGE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZ13MlasGemmBatch15CBLAS_TRANSPOSES1_mmmPK22MLAS_SGEMM_DATA_PARAMSmPN11onnxruntime11concurrency10ThreadPoolEPK35MLAS_BACKEND_KERNEL_SELECTOR_CONFIGE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { builtin allocsize(0) }
attributes #15 = { noreturn nounwind }
attributes #16 = { builtin nounwind }

!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !18}
!1 = distinct !{!1, !18}
!2 = distinct !{!2, !18}
!3 = distinct !{!3, !18}
!4 = distinct !{!4, !18}
!5 = distinct !{!5, !18}
!6 = distinct !{null}
!7 = distinct !{!7, !18}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!12, !12, i64 0}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"float", !12, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"branch_weights", i32 1, i32 1048575}
!24 = !{!"bool", !12, i64 0}
!25 = !{!"any pointer", !12, i64 0}
!26 = !{!"p1 _ZTS24MLAS_GEMM_QUANT_DISPATCH", !25, i64 0}
!27 = !{!"p1 _ZTS24MLAS_SYMM_QGEMM_DISPATCH", !25, i64 0}
!28 = !{!"p1 _ZTS22MLAS_CONV_SYM_DISPATCH", !25, i64 0}
!29 = !{!"p1 _ZTS22MLAS_FPQ4GEMM_DISPATCH", !25, i64 0}
!30 = !{!"p1 _ZTS22MLAS_Q8Q4GEMM_DISPATCH", !25, i64 0}
!31 = !{!"p1 _ZTS24MLAS_QNBIT_GEMM_DISPATCH", !25, i64 0}
!32 = !{!"p1 _ZTS28MLAS_QNBIT_LUT_GEMM_DISPATCH", !25, i64 0}
!33 = !{!"p1 _ZTS18MLAS_ROPE_DISPATCH", !25, i64 0}
!34 = !{!"p1 _ZTS19MLAS_HGEMM_DISPATCH", !25, i64 0}
!35 = !{!"p1 _ZTS21MLAS_SOFTMAX_DISPATCH", !25, i64 0}
!36 = !{!"p1 _ZTS21MLAS_ELTWISE_DISPATCH", !25, i64 0}
!37 = !{!"_ZTS13MLAS_PLATFORM", !24, i64 0, !24, i64 1, !24, i64 2, !25, i64 8, !25, i64 16, !25, i64 24, !25, i64 32, !25, i64 40, !25, i64 48, !25, i64 56, !25, i64 64, !25, i64 72, !26, i64 80, !26, i64 88, !26, i64 96, !26, i64 104, !27, i64 112, !28, i64 120, !28, i64 128, !25, i64 136, !25, i64 144, !25, i64 152, !25, i64 160, !25, i64 168, !25, i64 176, !25, i64 184, !25, i64 192, !25, i64 200, !25, i64 208, !25, i64 216, !25, i64 224, !25, i64 232, !25, i64 240, !25, i64 248, !25, i64 256, !25, i64 264, !25, i64 272, !25, i64 280, !25, i64 288, !25, i64 296, !25, i64 304, !25, i64 312, !25, i64 320, !25, i64 328, !25, i64 336, !25, i64 344, !25, i64 352, !12, i64 360, !25, i64 384, !25, i64 392, !25, i64 400, !25, i64 408, !25, i64 416, !25, i64 424, !25, i64 432, !25, i64 440, !25, i64 448, !25, i64 456, !25, i64 464, !25, i64 472, !25, i64 480, !13, i64 488, !13, i64 492, !13, i64 496, !29, i64 504, !30, i64 512, !31, i64 520, !32, i64 528, !25, i64 536, !25, i64 544, !33, i64 552, !34, i64 560, !35, i64 568, !36, i64 576}
!38 = !{!25, !25, i64 0}
!39 = !{!37, !25, i64 72}
!40 = !{!"long", !12, i64 0}
!41 = !{i8 0, i8 2}
!42 = !{}
!43 = !{!40, !40, i64 0}
!44 = !{!"_ZTS15CBLAS_TRANSPOSE", !12, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!"p1 _ZTS22MLAS_SGEMM_DATA_PARAMS", !25, i64 0}
!47 = !{!46, !46, i64 0}
!48 = distinct !{!48, !17}
!49 = distinct !{!49, !18, !19, !20}
!50 = distinct !{!50, !17}
!51 = distinct !{!51, !17}
!52 = distinct !{!52, !18}
!53 = distinct !{!53, !18}
!54 = distinct !{!54, !18}
!55 = distinct !{!55, !17}
!56 = distinct !{!56, !18}
!57 = distinct !{!57, !18}
!58 = distinct !{!58, !18}
!59 = distinct !{!59, !18}
!60 = !{!37, !25, i64 272}
!61 = distinct !{!61, !17}
!62 = distinct !{!62, !18, !19, !20}
!63 = distinct !{!63, !18}
!64 = distinct !{!64, !17}
!65 = distinct !{!65, !18, !19, !20}
!66 = distinct !{!66, !18}
!67 = distinct !{!67, !18}
!68 = distinct !{!68, !17}
!69 = distinct !{!69, !17}
!70 = distinct !{!70, !18}
!71 = distinct !{!71, !18, !19, !20}
!72 = distinct !{!72, !18, !20, !19}
!73 = distinct !{!73, !18, !19, !20}
!74 = distinct !{!74, !17}
!75 = distinct !{!75, !17}
!76 = distinct !{!76, !18}
!77 = distinct !{!77, !18}
!78 = distinct !{!78, !18}
!79 = distinct !{!79, !18, !19, !20}
!80 = distinct !{!80, !18, !20, !19}
!81 = distinct !{!81, !18, !19, !20}
!82 = !{!"p1 float", !25, i64 0}
!83 = !{!"_ZTS22MLAS_SGEMM_DATA_PARAMS", !82, i64 0, !40, i64 8, !82, i64 16, !40, i64 24, !82, i64 32, !40, i64 40, !21, i64 48, !21, i64 52, !24, i64 56}
!84 = !{!83, !40, i64 8}
!85 = !{!83, !40, i64 40}
!86 = !{!83, !82, i64 0}
!87 = !{!83, !82, i64 32}
!88 = !{!83, !24, i64 56}
!89 = !{!83, !82, i64 16}
!90 = !{!83, !21, i64 48}
!91 = !{!83, !21, i64 52}
!92 = !{!83, !40, i64 24}
!93 = !{!"_ZTS35MLAS_BACKEND_KERNEL_SELECTOR_CONFIG", !24, i64 0}
!94 = !{!93, !24, i64 0}
!95 = !{!37, !25, i64 8}
!96 = !{!"_ZTSSt14_Function_base", !12, i64 0, !25, i64 16}
!97 = !{!"_ZTSSt8functionIFvlEE", !96, i64 0, !25, i64 24}
!98 = !{!97, !25, i64 24}
!99 = !{!96, !25, i64 16}
!100 = distinct !{!100, !18}
!101 = !{!"_ZTSZ13MlasGemmBatch15CBLAS_TRANSPOSES_mmmPK22MLAS_SGEMM_DATA_PARAMSmPN11onnxruntime11concurrency10ThreadPoolEPK35MLAS_BACKEND_KERNEL_SELECTOR_CONFIGE3$_0", !40, i64 0, !40, i64 8, !40, i64 16, !44, i64 24, !44, i64 28, !40, i64 32, !40, i64 40, !40, i64 48, !46, i64 56}
!102 = !{!101, !40, i64 0}
!103 = !{!101, !40, i64 8}
!104 = !{!101, !40, i64 16}
!105 = !{!101, !44, i64 24}
!106 = !{!101, !44, i64 28}
!107 = !{!101, !40, i64 32}
!108 = !{!101, !40, i64 40}
!109 = !{!101, !40, i64 48}
!110 = !{!101, !46, i64 56}
!111 = !{!"p1 _ZTSSt9type_info", !25, i64 0}
!112 = !{!111, !111, i64 0}
!113 = !{i64 0, i64 8, !43, i64 8, i64 8, !43, i64 16, i64 8, !43, i64 24, i64 4, !45, i64 28, i64 4, !45, i64 32, i64 8, !43, i64 40, i64 8, !43, i64 48, i64 8, !43, i64 56, i64 8, !47}
end_hunk_0
