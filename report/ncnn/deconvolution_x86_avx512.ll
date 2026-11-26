Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolution_x86_avx512?download=true
inline.NumInlined: 20
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 115
begin_hunk_0_@_ZN4ncnn24Deconvolution_x86_avx51215create_pipelineERKNS_6OptionE:bb.a
bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 5, i32 noundef 0)
          to label %bb.aq unwind label %bb.bg

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 6, i32 noundef 1)
          to label %bb.ar unwind label %bb.bg

bb.ar:                                            ; preds = %bb.aq
  %i.db = load i32, ptr %i.br, align 8, !tbaa !50
  %i.dc = mul nsw i32 %i.db, %i.bn
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 7, i32 noundef %i.dc)
          to label %bb.as unwind label %bb.bg

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 8, i32 noundef 0)
          to label %bb.at unwind label %bb.bg

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 9, i32 noundef %i.bx)
          to label %bb.au unwind label %bb.bg

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 10, i32 noundef -1)
          to label %bb.av unwind label %bb.bg

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 11, i32 noundef 0)
          to label %bb.aw unwind label %bb.bg

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 12, i32 noundef %.053)
          to label %bb.ax unwind label %bb.bg

bb.ax:                                            ; preds = %bb.aw
  %i.dd = load ptr, ptr %i.da, align 8, !tbaa !54 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !12
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = invoke noundef i32 %i.dg(ptr noundef nonnull align 8 dereferenceable(208) %i.dd, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.ay unwind label %bb.bg     ; 0 uses

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  %i.di = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.dl = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.dn = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.do = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.dp = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  store i64 0, ptr %i.dp, align 16, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %11, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.dl, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.dr = load i32, ptr %i.br, align 8, !tbaa !50
  invoke void @_ZNK4ncnn3Mat7reshapeEiiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %12, ptr noundef nonnull align 8 dereferenceable(72) %i.dq, i32 noundef %i.bn, i32 noundef %i.bx, i32 noundef %i.dr, ptr noundef null)
          to label %bb.az unwind label %bb.bh

bb.az:                                            ; preds = %bb.ay
  %i.ds = load i32, ptr %i.br, align 8, !tbaa !50
  %i.dt = mul nsw i32 %i.ds, %i.bn
  invoke void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.dt, i32 noundef %i.bx, i64 noundef 4, ptr noundef null)
          to label %.preheader198 unwind label %bb.bi

.preheader198:                                    ; preds = %bb.az
  %i.du = icmp sgt i32 %i.bx, 0
  br i1 %i.du, label %.lr.ph, label %._crit_edge.split

.lr.ph:                                           ; preds = %.preheader198
  %i.dv = load ptr, ptr %11, align 16, !tbaa !20
  %i.dw = load i32, ptr %i.dn, align 4, !tbaa !55
  %i.dx = sext i32 %i.dw to i64
  %i.dy = load i64, ptr %i.dj, align 16, !tbaa !56
  %factor.op.mul250 = mul i64 %i.dy, %i.dx
  %i.dz = load i32, ptr %i.br, align 8, !tbaa !50 ; 2 uses
  %.not251 = icmp sgt i32 %.053, %i.dz
  %i.ea = icmp sgt i32 %i.bn, 0
  %i.eb = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.ec = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.ed = getelementptr inbounds nuw i8, ptr %12, i64 16
  br i1 %.not251, label %._crit_edge.split, label %.preheader197.lr.ph.preheader

.preheader197.lr.ph.preheader:                    ; preds = %.lr.ph
  %i.ee = add nsw i32 %.053, -1
  %i.ef = zext nneg i32 %.053 to i64              ; 9 uses
  %i.eg = zext nneg i32 %i.ee to i64
  %i.eh = zext nneg i32 %i.dz to i64
  %wide.trip.count307 = zext nneg i32 %i.bx to i64
  %.pre309 = load ptr, ptr %12, align 8
  %wide.trip.count299 = zext nneg i32 %i.bn to i64
  %i.ei = add nsw i64 %i.ef, -1                   ; 2 uses
  %i.ej = shl nuw nsw i64 %i.ef, 2
  %min.iters.check8040 = icmp samesign ult i32 %.053, 4
  %min.iters.check8046 = icmp samesign ult i32 %.053, 16
  %n.vec8048 = and i64 %i.ef, 16                  ; 2 uses
  %i.ek = shl nuw nsw i64 %n.vec8048, 2
  %n.vec8064 = and i64 %i.ef, 12                  ; 3 uses
  %i.el = shl nuw nsw i64 %n.vec8064, 2
  %i.em = icmp eq i64 %n.vec8064, 4
  %i.en = icmp eq i64 %n.vec8064, 8
  %xtraiter8166 = and i64 %i.ef, 1
  %i.eo = icmp samesign ult i32 %.053, 4
  %unroll_iter = and i64 %i.ef, 28
  %lcmp.mod8167.not = icmp eq i64 %xtraiter8166, 0
  %lcmp.mod8169 = trunc i32 %.053 to i1
  br label %.preheader197.lr.ph

._crit_edge.split:                                ; preds = %._crit_edge248, %.lr.ph, %.preheader198
  %i.ep = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !18 ; 2 uses
  %.not.i70 = icmp eq ptr %i.eq, null
  br i1 %.not.i70, label %_ZN4ncnn3MatD2Ev.exit68, label %bb.ba

bb.ba:                                            ; preds = %._crit_edge.split
  %i.er = atomicrmw add ptr %i.eq, i32 -1 acq_rel, align 4
  %i.es = icmp eq i32 %i.er, 1
  br i1 %i.es, label %bb.bb, label %_ZN4ncnn3MatD2Ev.exit68

bb.bb:                                            ; preds = %bb.ba
  %i.et = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !19 ; 3 uses
  %.not3.i71 = icmp eq ptr %i.eu, null
  %i.ev = load ptr, ptr %12, align 8, !tbaa !20   ; 3 uses
  br i1 %.not3.i71, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ew = load ptr, ptr %i.eu, align 8, !tbaa !12
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8
  invoke void %i.ey(ptr noundef nonnull align 8 dereferenceable(8) %i.eu, ptr noundef %i.ev)
          to label %_ZN4ncnn3MatD2Ev.exit68 unwind label %bb.bf, !inline_history !0

bb.bd:                                            ; preds = %bb.bb
  %.not.i108 = icmp eq ptr %i.ev, null
  br i1 %.not.i108, label %_ZN4ncnn3MatD2Ev.exit68, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @free(ptr noundef nonnull %i.ev) #9
  br label %_ZN4ncnn3MatD2Ev.exit68

bb.bf:                                            ; preds = %bb.bc
  %i.ez = landingpad { ptr, i32 }
          catch ptr null
  %i.fa = extractvalue { ptr, i32 } %i.ez, 0
  call void @__clang_call_terminate(ptr %i.fa) #24
  unreachable

_ZN4ncnn3MatD2Ev.exit68:                          ; preds = %bb.ba, %._crit_edge.split, %bb.bc, %bb.bd, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9
  %i.fb = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.fd = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.ff = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.fg = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 2 uses
  store i64 0, ptr %i.fg, align 16, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %13, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.fd, i8 0, i64 28, i1 false)
  %i.fh = load ptr, ptr %i.di, align 8, !tbaa !18 ; 2 uses
  %.not.i113 = icmp eq ptr %i.fh, null
  br i1 %.not.i113, label %.thread, label %bb.bj

bb.bg:                                            ; preds = %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.bh:                                            ; preds = %bb.ay
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit65

bb.bi:                                            ; preds = %bb.az
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 5 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !18 ; 2 uses
  %.not.i82 = icmp eq ptr %i.fm, null
  br i1 %.not.i82, label %_ZN4ncnn3MatD2Ev.exit65, label %bb.cd

.preheader197.lr.ph:                              ; preds = %.preheader197.lr.ph.preheader, %._crit_edge248
  %i.fn = phi ptr [ %.pre309, %.preheader197.lr.ph.preheader ], [ %i.ij, %._crit_edge248 ] ; 5 uses
  %indvars.iv304 = phi i64 [ 0, %.preheader197.lr.ph.preheader ], [ %indvars.iv.next305, %._crit_edge248 ] ; 4 uses
  %i.fo = load i32, ptr %i.eb, align 4
  %i.fp = load i64, ptr %i.ec, align 8            ; 5 uses
  %i.fq = load i64, ptr %i.ed, align 8            ; 6 uses
  %factor.op.mul = mul i64 %i.fp, %i.fq           ; 9 uses
  %i.fr = sext i32 %i.fo to i64                   ; 2 uses
  %i.fs = mul i64 %indvars.iv304, %i.fr
  %i.ft = mul i64 %i.fs, %i.fq                    ; 3 uses
  %invariant.gep = getelementptr i8, ptr %i.fn, i64 %i.ft
  br i1 %i.ea, label %.preheader197.us.preheader, label %._crit_edge248

.preheader197.us.preheader:                       ; preds = %.preheader197.lr.ph
  %.reass = mul i64 %factor.op.mul250, %indvars.iv304
  %i.fu = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.reass
  %i.fv = mul i64 %i.fq, %i.fp
  %i.fw = sub i64 0, %i.fv
  %i.fx = mul i64 %i.fq, %i.ef
  %i.fy = mul i64 %i.fx, %i.fp
  %i.fz = mul i64 %i.ei, %i.fp
  %i.ga = mul i64 %indvars.iv304, %i.fr
  %i.gb = add i64 %i.fz, %i.ga
  %i.gc = mul i64 %i.fq, %i.gb
  %i.gd = mul i64 %i.fq, %i.ef
  %i.ge = mul i64 %i.gd, %i.fp
  %i.gf = getelementptr i8, ptr %i.fn, i64 %i.ft
  %i.gg = icmp slt i64 %factor.op.mul, 0          ; 2 uses
  %i.gh = select i1 %i.gg, i64 %i.fw, i64 %factor.op.mul
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.gh, i64 %i.ei) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.gi = sub i64 0, %mul.result
  %i.gj = getelementptr i8, ptr %i.fn, i64 %i.ft
  %i.gk = getelementptr i8, ptr %i.fn, i64 %i.gc
  %broadcast.splatinsert8049 = insertelement <16 x i64> poison, i64 %factor.op.mul, i64 0
  %broadcast.splat8050 = shufflevector <16 x i64> %broadcast.splatinsert8049, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert8067 = insertelement <4 x i64> poison, i64 %factor.op.mul, i64 0
  %broadcast.splat8068 = shufflevector <4 x i64> %broadcast.splatinsert8067, <4 x i64> poison, <4 x i32> zeroinitializer ; 3 uses
  br label %.preheader197.us

.preheader197.us:                                 ; preds = %.preheader197.us.preheader, %._crit_edge.us
  %indvar8029 = phi i64 [ 0, %.preheader197.us.preheader ], [ %indvar.next8030, %._crit_edge.us ] ; 3 uses
  %indvars.iv301 = phi i64 [ 0, %.preheader197.us.preheader ], [ %indvars.iv.next302, %._crit_edge.us ] ; 8 uses
  %.042246.us = phi ptr [ %i.fu, %.preheader197.us.preheader ], [ %.lcssa, %._crit_edge.us ]
  %i.gl = mul i64 %i.ge, %indvar8029              ; 2 uses
  %i.gm = mul i64 %i.fy, %indvar8029
  %i.gn = getelementptr i8, ptr %i.gf, i64 %i.gm
  %i.go = getelementptr i8, ptr %i.gj, i64 %i.gl
  %i.gp = getelementptr i8, ptr %i.gk, i64 %i.gl
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %indvars.iv301, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert8065 = insertelement <4 x i64> poison, i64 %indvars.iv301, i64 0
  %broadcast.splat8066 = shufflevector <4 x i64> %broadcast.splatinsert8065, <4 x i64> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.gq = add nuw nsw <4 x i64> %broadcast.splat8066, <i64 0, i64 1, i64 2, i64 3>
  %i.gr = mul <4 x i64> %broadcast.splat8068, %i.gq
  %i.gs = add nuw nsw <4 x i64> %broadcast.splat8066, <i64 4, i64 5, i64 6, i64 7>
  %i.gt = mul <4 x i64> %broadcast.splat8068, %i.gs
  %i.gu = add nuw nsw <4 x i64> %broadcast.splat8066, <i64 8, i64 9, i64 10, i64 11>
  %i.gv = mul <4 x i64> %broadcast.splat8068, %i.gu
  br label %iter.check8058

.noexc112.us:                                     ; preds = %.noexc112.us.preheader, %.noexc112.us
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.noexc112.us ], [ 0, %.noexc112.us.preheader ] ; 5 uses
  %.2242.us = phi ptr [ %i.hh, %.noexc112.us ], [ %.1244.us, %.noexc112.us.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.noexc112.us ], [ 0, %.noexc112.us.preheader ]
  %i.gw = add nuw nsw i64 %indvars.iv, %indvars.iv301
  %.reass.us = mul i64 %factor.op.mul, %i.gw
  %gep241.us = getelementptr i8, ptr %invariant.gep240.us, i64 %.reass.us
  %i.gx = load float, ptr %gep241.us, align 4, !tbaa !39
  store float %i.gx, ptr %.2242.us, align 4, !tbaa !39
  %i.gy = getelementptr inbounds nuw i8, ptr %.2242.us, i64 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.gz = add nuw nsw i64 %indvars.iv.next, %indvars.iv301
  %.reass.us.1 = mul i64 %factor.op.mul, %i.gz
  %gep241.us.1 = getelementptr i8, ptr %invariant.gep240.us, i64 %.reass.us.1
  %i.ha = load float, ptr %gep241.us.1, align 4, !tbaa !39
  store float %i.ha, ptr %i.gy, align 4, !tbaa !39
  %i.hb = getelementptr inbounds nuw i8, ptr %.2242.us, i64 8
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %i.hc = add nuw nsw i64 %indvars.iv.next.1, %indvars.iv301
  %.reass.us.2 = mul i64 %factor.op.mul, %i.hc
  %gep241.us.2 = getelementptr i8, ptr %invariant.gep240.us, i64 %.reass.us.2
  %i.hd = load float, ptr %gep241.us.2, align 4, !tbaa !39
  store float %i.hd, ptr %i.hb, align 4, !tbaa !39
  %i.he = getelementptr inbounds nuw i8, ptr %.2242.us, i64 12
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %i.hf = add nuw nsw i64 %indvars.iv.next.2, %indvars.iv301
  %.reass.us.3 = mul i64 %factor.op.mul, %i.hf
  %gep241.us.3 = getelementptr i8, ptr %invariant.gep240.us, i64 %.reass.us.3
  %i.hg = load float, ptr %gep241.us.3, align 4, !tbaa !39
  store float %i.hg, ptr %i.he, align 4, !tbaa !39
  %i.hh = getelementptr inbounds nuw i8, ptr %.2242.us, i64 16 ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.noexc112.us, !llvm.loop !95

.loopexit.loopexit.unr-lcssa:                     ; preds = %.noexc112.us
  br i1 %lcmp.mod8167.not, label %.loopexit, label %.noexc112.us.epil.preheader

.noexc112.us.epil.preheader:                      ; preds = %.loopexit.loopexit.unr-lcssa, %.noexc112.us.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.noexc112.us.preheader ], [ %indvars.iv.next.3, %.loopexit.loopexit.unr-lcssa ]
  %.2242.us.epil.init = phi ptr [ %.1244.us, %.noexc112.us.preheader ], [ %i.hh, %.loopexit.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod8169)
  br label %.noexc112.us.epil

.noexc112.us.epil:                                ; preds = %.noexc112.us.epil, %.noexc112.us.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.noexc112.us.epil ], [ %indvars.iv.epil.init, %.noexc112.us.epil.preheader ] ; 2 uses
  %.2242.us.epil = phi ptr [ %i.hk, %.noexc112.us.epil ], [ %.2242.us.epil.init, %.noexc112.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.noexc112.us.epil ], [ 0, %.noexc112.us.epil.preheader ] ; 2 uses
  %i.hi = add nuw nsw i64 %indvars.iv.epil, %indvars.iv301
  %.reass.us.epil = mul i64 %factor.op.mul, %i.hi
  %gep241.us.epil = getelementptr i8, ptr %invariant.gep240.us, i64 %.reass.us.epil
  %i.hj = load float, ptr %gep241.us.epil, align 4, !tbaa !39
  store float %i.hj, ptr %.2242.us.epil, align 4, !tbaa !39
  %i.hk = getelementptr inbounds nuw i8, ptr %.2242.us.epil, i64 4 ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter, 0
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.noexc112.us.epil, !llvm.loop !96

.loopexit:                                        ; preds = %vector.body8051, %vec.epilog.ph8062, %vec.epilog.vector.body8071.1, %vec.epilog.vector.body8071.2, %.loopexit.loopexit.unr-lcssa, %.noexc112.us.epil
  %.lcssa = phi ptr [ %i.hk, %.noexc112.us.epil ], [ %i.ig, %vec.epilog.ph8062 ], [ %i.hh, %.loopexit.loopexit.unr-lcssa ], [ %i.ig, %vec.epilog.vector.body8071.2 ], [ %i.ig, %vec.epilog.vector.body8071.1 ], [ %i.ib, %vector.body8051 ] ; 2 uses
  %indvars.iv.next297 = add nuw nsw i64 %indvars.iv296, 1 ; 2 uses
  %exitcond300.not = icmp eq i64 %indvars.iv.next297, %wide.trip.count299
  br i1 %exitcond300.not, label %._crit_edge.us, label %iter.check8058, !llvm.loop !97

iter.check8058:                                   ; preds = %.preheader197.us, %.loopexit
  %indvars.iv296 = phi i64 [ 0, %.preheader197.us ], [ %indvars.iv.next297, %.loopexit ] ; 4 uses
  %.1244.us = phi ptr [ %.042246.us, %.preheader197.us ], [ %.lcssa, %.loopexit ] ; 10 uses
  %invariant.gep240.us = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv296 ; 9 uses
  br i1 %min.iters.check8040, label %.noexc112.us.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check8058
  %i.hl = shl nuw nsw i64 %indvars.iv296, 2
  %scevgep8031 = getelementptr i8, ptr %i.gn, i64 %i.hl ; 4 uses
  %i.hm = getelementptr i8, ptr %scevgep8031, i64 %mul.result
  %i.hn = getelementptr i8, ptr %scevgep8031, i64 %i.gi
  %i.ho = icmp ult ptr %i.hm, %scevgep8031
  %i.hp = icmp ugt ptr %i.hn, %scevgep8031
  %i.hq = select i1 %i.gg, i1 %i.hp, i1 %i.ho
  %i.hr = or i1 %i.hq, %mul.overflow
  br i1 %i.hr, label %.noexc112.us.preheader, label %vector.memcheck8041

vector.memcheck8041:                              ; preds = %vector.scevcheck
  %i.hs = getelementptr i8, ptr %.1244.us, i64 %i.ej
  %i.ht = shl nuw nsw i64 %indvars.iv296, 2       ; 2 uses
  %i.hu = getelementptr i8, ptr %i.go, i64 %i.ht  ; 4 uses
  %i.hv = getelementptr i8, ptr %i.gp, i64 %i.ht  ; 4 uses
  %i.hw = icmp ult ptr %i.hu, %i.hv
  %i.hx = select i1 %i.hw, ptr %i.hu, ptr %i.hv
  %i.hy = icmp ugt ptr %i.hu, %i.hv
  %i.hz = select i1 %i.hy, ptr %i.hu, ptr %i.hv
  %i.ia = getelementptr i8, ptr %i.hz, i64 4
  %bound08042 = icmp ult ptr %.1244.us, %i.ia
  %bound18043 = icmp ult ptr %i.hx, %i.hs
  %found.conflict8044 = and i1 %bound08042, %bound18043
  br i1 %found.conflict8044, label %.noexc112.us.preheader, label %vector.main.loop.iter.check8045

.noexc112.us.preheader:                           ; preds = %iter.check8058, %vector.scevcheck, %vector.memcheck8041
  br i1 %i.eo, label %.noexc112.us.epil.preheader, label %.noexc112.us

vector.main.loop.iter.check8045:                  ; preds = %vector.memcheck8041
  br i1 %min.iters.check8046, label %vec.epilog.ph8062, label %vector.ph8047

vector.ph8047:                                    ; preds = %vector.main.loop.iter.check8045
  %i.ib = getelementptr i8, ptr %.1244.us, i64 %i.ek
  br label %vector.body8051

vector.body8051:                                  ; preds = %vector.ph8047, %vector.body8051
  %index8052 = phi i64 [ 0, %vector.ph8047 ], [ %index.next8055, %vector.body8051 ] ; 2 uses
  %vec.ind = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph8047 ], [ %vec.ind.next, %vector.body8051 ] ; 2 uses
  %i.ic = shl i64 %index8052, 2
  %next.gep8053 = getelementptr i8, ptr %.1244.us, i64 %i.ic
  %i.id = add nuw nsw <16 x i64> %vec.ind, %broadcast.splat
  %i.ie = mul <16 x i64> %broadcast.splat8050, %i.id
  %wide.gep8054 = getelementptr i8, ptr %invariant.gep240.us, <16 x i64> %i.ie
  %wide.masked.gather = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %wide.gep8054, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !39, !alias.scope !718
  store <16 x float> %wide.masked.gather, ptr %next.gep8053, align 4, !tbaa !39, !alias.scope !719, !noalias !718
  %index.next8055 = add nuw i64 %index8052, 16    ; 2 uses
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %i.if = icmp eq i64 %index.next8055, %n.vec8048
  br i1 %i.if, label %.loopexit, label %vector.body8051, !llvm.loop !101

vec.epilog.ph8062:                                ; preds = %vector.main.loop.iter.check8045
  %i.ig = getelementptr i8, ptr %.1244.us, i64 %i.el ; 3 uses
  %wide.gep8075 = getelementptr i8, ptr %invariant.gep240.us, <4 x i64> %i.gr
  %wide.masked.gather8076 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep8075, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !39, !alias.scope !718
  store <4 x float> %wide.masked.gather8076, ptr %.1244.us, align 4, !tbaa !39, !alias.scope !719, !noalias !718
  br i1 %i.em, label %.loopexit, label %vec.epilog.vector.body8071.1

vec.epilog.vector.body8071.1:                     ; preds = %vec.epilog.ph8062
  %next.gep8074.1 = getelementptr i8, ptr %.1244.us, i64 16
  %wide.gep8075.1 = getelementptr i8, ptr %invariant.gep240.us, <4 x i64> %i.gt
  %wide.masked.gather8076.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep8075.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !39, !alias.scope !718
  store <4 x float> %wide.masked.gather8076.1, ptr %next.gep8074.1, align 4, !tbaa !39, !alias.scope !719, !noalias !718
  br i1 %i.en, label %.loopexit, label %vec.epilog.vector.body8071.2

vec.epilog.vector.body8071.2:                     ; preds = %vec.epilog.vector.body8071.1
  %next.gep8074.2 = getelementptr i8, ptr %.1244.us, i64 32
  %wide.gep8075.2 = getelementptr i8, ptr %invariant.gep240.us, <4 x i64> %i.gv
  %wide.masked.gather8076.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep8075.2, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !39, !alias.scope !718
  store <4 x float> %wide.masked.gather8076.2, ptr %next.gep8074.2, align 4, !tbaa !39, !alias.scope !719, !noalias !718
  br label %.loopexit

._crit_edge.us:                                   ; preds = %.loopexit
  %indvars.iv.next302 = add nuw nsw i64 %indvars.iv301, %i.ef ; 2 uses
  %i.ih = add nuw nsw i64 %indvars.iv.next302, %i.eg
  %i.ii = icmp samesign ult i64 %i.ih, %i.eh
  %indvar.next8030 = add i64 %indvar8029, 1
  br i1 %i.ii, label %.preheader197.us, label %._crit_edge248.loopexit, !llvm.loop !102

._crit_edge248.loopexit:                          ; preds = %._crit_edge.us
  %.pre = load ptr, ptr %12, align 8
  br label %._crit_edge248

._crit_edge248:                                   ; preds = %.preheader197.lr.ph, %._crit_edge248.loopexit
  %i.ij = phi ptr [ %.pre, %._crit_edge248.loopexit ], [ %i.fn, %.preheader197.lr.ph ]
  %indvars.iv.next305 = add nuw nsw i64 %indvars.iv304, 1 ; 2 uses
  %exitcond308.not = icmp eq i64 %indvars.iv.next305, %wide.trip.count307
  br i1 %exitcond308.not, label %._crit_edge.split, label %.preheader197.lr.ph, !llvm.loop !103

bb.bj:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit68
  %i.ik = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.il = atomicrmw add ptr %i.fh, i32 1 acq_rel, align 4 ; 0 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnn24Deconvolution_x86_avx51215create_pipelineERKNS_6OptionE:bb.a
  %i.fvn = getelementptr inbounds nuw i8, ptr %.178242025.i, i64 20
  %gep2022.5.i = getelementptr i8, ptr %invariant.gep2021.i, i64 %.reass2019.5.i
  %i.fvo = load float, ptr %gep2022.5.i, align 4, !tbaa !39
  store float %i.fvo, ptr %i.fvn, align 4, !tbaa !39
  %i.fvp = getelementptr inbounds nuw i8, ptr %.178242025.i, i64 24
  %gep2022.6.i = getelementptr i8, ptr %invariant.gep2021.i, i64 %.reass2019.6.i
  %i.fvq = load float, ptr %gep2022.6.i, align 4, !tbaa !39
  store float %i.fvq, ptr %i.fvp, align 4, !tbaa !39
  %i.fvr = getelementptr inbounds nuw i8, ptr %.178242025.i, i64 28
  %gep2022.7.i = getelementptr i8, ptr %invariant.gep2021.i, i64 %.reass2019.7.i
  %i.fvs = load float, ptr %gep2022.7.i, align 4, !tbaa !39
  store float %i.fvs, ptr %i.fvr, align 4, !tbaa !39
  %i.fvt = getelementptr inbounds nuw i8, ptr %.178242025.i, i64 32 ; 2 uses
  %indvars.iv.next2599.i = add nuw nsw i64 %indvars.iv2598.i, 1 ; 2 uses
  %exitcond2602.not.i = icmp eq i64 %indvars.iv.next2599.i, %wide.trip.count2531.i
  br i1 %exitcond2602.not.i, label %._crit_edge2027.i, label %.preheader1785.i, !llvm.loop !399

._crit_edge2027.i:                                ; preds = %.preheader1785.i, %vec.epilog.middle.block2340, %middle.block2318
  %.lcssa441 = phi ptr [ %i.fum, %vec.epilog.middle.block2340 ], [ %i.ftu, %middle.block2318 ], [ %i.fvt, %.preheader1785.i ]
  %indvars.iv.next2604.i = add nuw nsw i64 %indvars.iv2603.i, 1 ; 2 uses
  %i.fvu = trunc nuw i64 %indvars.iv.next2604.i to i32
  %i.fvv = icmp sgt i32 %i.bx, %i.fvu
  br i1 %i.fvv, label %iter.check2320, label %._crit_edge2031.split.i, !llvm.loop !400

._crit_edge2031.split.i:                          ; preds = %._crit_edge2027.i, %.preheader1790.lr.ph.i, %.preheader1795.i
  %indvars.iv.next2607.i = add nuw nsw i64 %indvars.iv2606.i, 8 ; 3 uses
  %i.fvw = icmp slt i64 %indvars.iv.next2607.i, %invariant.op2898.i
  %indvar.next2446 = add i64 %indvar2445, 1
  br i1 %i.fvw, label %.noexc1203.i, label %.preheader1780.loopexit.i, !llvm.loop !401

.preheader1761.i:                                 ; preds = %._crit_edge2145.split.i, %.preheader1780.i
  %.2866.lcssa.i = phi i32 [ %.1865.lcssa.i, %.preheader1780.i ], [ %i.ioo, %._crit_edge2145.split.i ] ; 3 uses
  %i.fvx = or disjoint i32 %.2866.lcssa.i, 1
  %i.fvy = icmp slt i32 %i.fvx, %i.bs
  br i1 %i.fvy, label %.noexc1179.lr.ph.i, label %.preheader1742.i

.noexc1179.lr.ph.i:                               ; preds = %.preheader1761.i
  %i.fvz = load ptr, ptr %i.lq, align 8, !tbaa !20, !noalias !972
  %i.fwa = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.fwb = load i64, ptr %i.fwa, align 8, !tbaa !21, !noalias !972
  %i.fwc = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.fwd = load i64, ptr %i.fwc, align 8, !tbaa !56, !noalias !972
  %factor.op.mul2262.i = mul i64 %i.fwd, %i.fwb
  %i.fwe = icmp sgt i32 %i.bx, 15
  %i.fwf = icmp sgt i32 %i.bn, 0                  ; 5 uses
  %i.fwg = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 5 uses
  %i.fwh = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 5 uses
  %i.fwi = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.fwj = and i32 %i.bx, -16                     ; 3 uses
  %i.fwk = sext i32 %i.bx to i64                  ; 2 uses
  %i.fwl = add i32 %i.bx, -8
  %i.fwm = add nsw i32 %i.bx, -4
  %i.fwn = add i32 %i.bx, -2
  %i.fwo = zext i32 %.2866.lcssa.i to i64
  %wide.trip.count2708.i = zext i32 %i.bn to i64  ; 40 uses
  %invariant.op2900.i = add nsw i64 %i.fwk, -15
  %i.fwp = or disjoint i32 %i.fwj, 7
  %i.fwq = icmp slt i32 %i.fwp, %i.bx
  %i.fwr = shl nuw nsw i64 %wide.trip.count2708.i, 2 ; 61 uses
  %i.fws = shl nuw nsw i64 %wide.trip.count2708.i, 3
  %i.fwt = shl nuw nsw i64 %wide.trip.count2708.i, 4
  %i.fwu = shl nuw nsw i64 %wide.trip.count2708.i, 5
  %i.fwv = shl nuw nsw i64 %wide.trip.count2708.i, 6
  %i.fww = add nsw i64 %i.fwk, -16                ; 3 uses
  %i.fwx = and i64 %i.fww, -16
  %i.fwy = and i64 %i.fww, -16                    ; 14 uses
  %i.fwz = or disjoint i64 %i.fwy, 1
  %i.fxa = or disjoint i64 %i.fwy, 2
  %i.fxb = or disjoint i64 %i.fwy, 3
  %i.fxc = or disjoint i64 %i.fwy, 4
  %i.fxd = or disjoint i64 %i.fwy, 5
  %i.fxe = or disjoint i64 %i.fwy, 6
  %i.fxf = or disjoint i64 %i.fwy, 7
  %i.fxg = or disjoint i64 %i.fwy, 8
  %i.fxh = or disjoint i64 %i.fwy, 9
  %i.fxi = or disjoint i64 %i.fwy, 10
  %i.fxj = or disjoint i64 %i.fwy, 11
  %i.fxk = or disjoint i64 %i.fwy, 12
  %i.fxl = or disjoint i64 %i.fwy, 13
  %i.fxm = or disjoint i64 %i.fwy, 14
  %i.fxn = or i64 %i.fww, 15
  %i.fxo = shl nuw nsw i64 %wide.trip.count2708.i, 7
  %min.iters.check7121 = icmp ult i32 %i.bn, 8
  %min.iters.check7252 = icmp ult i32 %i.bn, 16
  %i.fxp = and i64 %wide.trip.count2708.i, 8
  %n.vec7254 = and i64 %wide.trip.count2708.i, 2147483632 ; 5 uses
  %i.fxq = shl nuw nsw i64 %n.vec7254, 7
  %cmp.n7325 = icmp eq i64 %n.vec7254, %wide.trip.count2708.i
  %min.epilog.iters.check7329.not.not = icmp eq i64 %i.fxp, 0
  %n.vec7333 = and i64 %wide.trip.count2708.i, 2147483640 ; 4 uses
  %i.fxr = shl nuw nsw i64 %n.vec7333, 7
  %cmp.n7404 = icmp eq i64 %n.vec7333, %wide.trip.count2708.i
  %min.iters.check6645 = icmp ult i32 %i.bn, 8
  %min.iters.check6711 = icmp ult i32 %i.bn, 16
  %i.fxs = and i64 %wide.trip.count2708.i, 8
  %n.vec6713 = and i64 %wide.trip.count2708.i, 2147483632 ; 5 uses
  %i.fxt = shl nuw nsw i64 %n.vec6713, 6
  %cmp.n6752 = icmp eq i64 %n.vec6713, %wide.trip.count2708.i
  %min.epilog.iters.check6756.not.not = icmp eq i64 %i.fxs, 0
  %n.vec6760 = and i64 %wide.trip.count2708.i, 2147483640 ; 4 uses
  %i.fxu = shl nuw nsw i64 %n.vec6760, 6
  %cmp.n6799 = icmp eq i64 %n.vec6760, %wide.trip.count2708.i
  %min.iters.check6468 = icmp ult i32 %i.bn, 4
  %min.iters.check6502 = icmp ult i32 %i.bn, 16
  %i.fxv = and i64 %wide.trip.count2708.i, 12
  %n.vec6504 = and i64 %wide.trip.count2708.i, 2147483632 ; 5 uses
  %i.fxw = shl nuw nsw i64 %n.vec6504, 5
  %cmp.n6519 = icmp eq i64 %n.vec6504, %wide.trip.count2708.i
  %min.epilog.iters.check6523 = icmp eq i64 %i.fxv, 0
  %n.vec6526 = and i64 %wide.trip.count2708.i, 2147483644 ; 4 uses
  %i.fxx = shl nuw nsw i64 %n.vec6526, 5
  %cmp.n6541 = icmp eq i64 %n.vec6526, %wide.trip.count2708.i
  %min.iters.check6363 = icmp ult i32 %i.bn, 4
  %min.iters.check6381 = icmp ult i32 %i.bn, 16
  %i.fxy = and i64 %wide.trip.count2708.i, 12
  %n.vec6383 = and i64 %wide.trip.count2708.i, 2147483632 ; 5 uses
  %i.fxz = shl nuw nsw i64 %n.vec6383, 4
  %cmp.n6394 = icmp eq i64 %n.vec6383, %wide.trip.count2708.i
  %min.epilog.iters.check6398 = icmp eq i64 %i.fxy, 0
  %n.vec6401 = and i64 %wide.trip.count2708.i, 2147483644 ; 4 uses
  %i.fya = shl nuw nsw i64 %n.vec6401, 4
  %cmp.n6412 = icmp eq i64 %n.vec6401, %wide.trip.count2708.i
  %xtraiter8151 = and i64 %wide.trip.count2708.i, 1
  %lcmp.mod8152.not = icmp eq i64 %xtraiter8151, 0
  %i.fyb = add nsw i64 %wide.trip.count2708.i, -1
  %min.iters.check6293 = icmp ult i32 %i.bn, 4
  %min.iters.check6304 = icmp ult i32 %i.bn, 16
  %i.fyc = and i64 %wide.trip.count2708.i, 12
  %n.vec6306 = and i64 %wide.trip.count2708.i, 2147483632 ; 5 uses
  %i.fyd = shl nuw nsw i64 %n.vec6306, 3
  %cmp.n6315 = icmp eq i64 %n.vec6306, %wide.trip.count2708.i
  %min.epilog.iters.check6319 = icmp eq i64 %i.fyc, 0
  %n.vec6322 = and i64 %wide.trip.count2708.i, 2147483644 ; 4 uses
  %i.fye = shl nuw nsw i64 %n.vec6322, 3
  %cmp.n6331 = icmp eq i64 %n.vec6322, %wide.trip.count2708.i
  %xtraiter8154 = and i64 %wide.trip.count2708.i, 3 ; 2 uses
  %lcmp.mod8155.not = icmp eq i64 %xtraiter8154, 0
  br label %.noexc1179.i

.noexc1191.i:                                     ; preds = %._crit_edge2145.split.i, %.noexc1191.lr.ph.i
  %indvar4268 = phi i64 [ %indvar.next4269, %._crit_edge2145.split.i ], [ 0, %.noexc1191.lr.ph.i ] ; 5 uses
  %indvars.iv2694.i = phi i64 [ %indvars.iv.next2695.i, %._crit_edge2145.split.i ], [ %i.dad, %.noexc1191.lr.ph.i ] ; 27 uses
  %i.fyf = shl i64 %indvar4268, 2                 ; 3 uses
  %i.fyg = add i64 %i.dan, %i.fyf                 ; 2 uses
  %i.fyh = add i64 %i.dar, %i.fyf                 ; 2 uses
  %i.fyi = add i64 %i.das, %i.fyf                 ; 2 uses
  %i.fyj = shl i64 %indvar4268, 2                 ; 3 uses
  %i.fyk = add i64 %i.dan, %i.fyj
  %i.fyl = add i64 %i.dak, %i.fyj
  %i.fym = add i64 %i.dai, %i.fyj
  %i.fyn = shl i64 %indvar4268, 2                 ; 2 uses
  %i.fyo = add i64 %i.dak, %i.fyn
  %i.fyp = add i64 %i.dai, %i.fyn
  %i.fyq = shl i64 %indvar4268, 2
  %i.fyr = add i64 %i.dai, %i.fyq
  %i.fys = trunc i64 %indvars.iv2694.i to i32     ; 3 uses
  %i.fyt = lshr i32 %i.fys, 4
  %i.fyu = lshr i32 %i.fys, 3
  %i.fyv = and i32 %i.fyu, 1
  %i.fyw = add nuw nsw i32 %i.fyv, %i.fyt
  %i.fyx = lshr i32 %i.fys, 2
  %i.fyy = and i32 %i.fyx, 1
  %i.fyz = add nuw nsw i32 %i.fyw, %i.fyy
  %i.fza = zext nneg i32 %i.fyz to i64
  %.reass2153.i = mul i64 %factor.op.mul2152.i, %i.fza
  %i.fzb = getelementptr inbounds nuw i8, ptr %i.czo, i64 %.reass2153.i ; 4 uses
  br i1 %i.czt, label %.preheader1775.lr.ph.i, label %.preheader1779.i

.preheader1775.lr.ph.i:                           ; preds = %.noexc1191.i
  %i.fzc = load i32, ptr %i.czv, align 4
  %i.fzd = load ptr, ptr %3, align 8              ; 131 uses
  %i.fze = load i64, ptr %i.czx, align 8          ; 130 uses
  %i.fzf = sext i32 %i.fzc to i64                 ; 36 uses
  %factor.op.mul2047.i = mul i64 %i.fze, %i.fzf   ; 16 uses
  br i1 %i.czu, label %.preheader1775.us.preheader.i, label %.preheader1779.i.thread

.preheader1775.us.preheader.i:                    ; preds = %.preheader1775.lr.ph.i
  %i.fzg = load i64, ptr %i.czw, align 8          ; 8 uses
  %factor.op.mul2040.i = mul i64 %i.fzg, %i.fze   ; 4 uses
  %.reass2041.us.i = mul i64 %factor.op.mul2040.i, %indvars.iv2694.i ; 49 uses
  %i.fzh = or disjoint i64 %indvars.iv2694.i, 1
  %.reass2041.us.1.i = mul i64 %factor.op.mul2040.i, %i.fzh ; 48 uses
  %i.fzi = or disjoint i64 %indvars.iv2694.i, 2
  %.reass2041.us.2.i = mul i64 %factor.op.mul2040.i, %i.fzi ; 48 uses
  %i.fzj = or disjoint i64 %indvars.iv2694.i, 3
  %.reass2041.us.3.i = mul i64 %factor.op.mul2040.i, %i.fzj ; 48 uses
  %i.fzk = shl i64 %i.fze, 4
  %i.fzl = mul i64 %i.fzk, %i.fzf
  %scevgep5537 = getelementptr i8, ptr %i.fzd, i64 %i.dam
  %i.fzm = mul i64 %i.daq, %i.fzf                 ; 4 uses
  %i.fzn = mul i64 %i.fzg, %indvars.iv2694.i      ; 31 uses
  %i.fzo = add i64 %i.fzm, %i.fzn
  %i.fzp = mul i64 %i.fze, %i.fzo
  %scevgep5538 = getelementptr i8, ptr %scevgep5537, i64 %i.fzp
  %scevgep5539 = getelementptr i8, ptr %i.fzd, i64 %.reass2041.us.i
  %scevgep5540 = getelementptr i8, ptr %i.fzd, i64 %i.dam
  %i.fzq = mul i64 %i.fzg, %i.fyg                 ; 31 uses
  %i.fzr = add i64 %i.fzm, %i.fzq
  %i.fzs = mul i64 %i.fze, %i.fzr
  %scevgep5541 = getelementptr i8, ptr %scevgep5540, i64 %i.fzs
  %i.fzt = mul i64 %i.fze, %i.fzg
  %i.fzu = mul i64 %i.fzt, %i.fyg
  %scevgep5542 = getelementptr i8, ptr %i.fzd, i64 %i.fzu
  %scevgep5543 = getelementptr i8, ptr %i.fzd, i64 %i.dam
  %i.fzv = mul i64 %i.fzg, %i.fyh                 ; 31 uses
  %i.fzw = add i64 %i.fzm, %i.fzv
  %i.fzx = mul i64 %i.fze, %i.fzw
  %scevgep5544 = getelementptr i8, ptr %scevgep5543, i64 %i.fzx
  %i.fzy = mul i64 %i.fze, %i.fzg
  %i.fzz = mul i64 %i.fzy, %i.fyh
  %scevgep5545 = getelementptr i8, ptr %i.fzd, i64 %i.fzz
  %scevgep5546 = getelementptr i8, ptr %i.fzd, i64 %i.dam
  %i.gaa = mul i64 %i.fzg, %i.fyi                 ; 31 uses
  %i.gab = add i64 %i.fzm, %i.gaa
  %i.gac = mul i64 %i.fze, %i.gab
  %scevgep5547 = getelementptr i8, ptr %scevgep5546, i64 %i.gac
  %i.gad = mul i64 %i.fze, %i.fzg
  %i.gae = mul i64 %i.gad, %i.fyi
  %scevgep5548 = getelementptr i8, ptr %i.fzd, i64 %i.gae
  %scevgep5549 = getelementptr i8, ptr %i.fzd, i64 %i.dam
  %i.gaf = mul i64 %i.dau, %i.fzf                 ; 4 uses
  %i.gag = add i64 %i.fzn, %i.gaf
  %i.gah = mul i64 %i.fze, %i.gag
  %scevgep5550 = getelementptr i8, ptr %scevgep5549, i64 %i.gah
  %i.gai = add i64 %i.fzn, %i.fzf
  %i.gaj = mul i64 %i.fze, %i.gai
  %scevgep5551 = getelementptr i8, ptr %i.fzd, i64 %i.gaj
  %scevgep5552 = getelementptr i8, ptr %i.fzd, i64 %i.dam
  %i.gak = add i64 %i.fzq, %i.gaf
  %i.gal = mul i64 %i.fze, %i.gak
  %scevgep5553 = getelementptr i8, ptr %scevgep5552, i64 %i.gal
  %i.gam = add i64 %i.fzq, %i.fzf
  %i.gan = mul i64 %i.fze, %i.gam
  %scevgep5554 = getelementptr i8, ptr %i.fzd, i64 %i.gan
  %scevgep5555 = getelementptr i8, ptr %i.fzd, i64 %i.dam
  %i.gao = add i64 %i.fzv, %i.gaf
  %i.gap = mul i64 %i.fze, %i.gao
  %scevgep5556 = getelementptr i8, ptr %scevgep5555, i64 %i.gap
  %i.gaq = add i64 %i.fzv, %i.fzf
  %i.gar = mul i64 %i.fze, %i.gaq
  %scevgep5557 = getelementptr i8, ptr %i.fzd, i64 %i.gar
  %scevgep5558 = getelementptr i8, ptr %i.fzd, i64 %i.dam
  %i.gas = add i64 %i.gaa, %i.gaf
  %i.gat = mul i64 %i.fze, %i.gas
  %scevgep5559 = getelementptr i8, ptr %scevgep5558, i64 %i.gat
  %i.gau = add i64 %i.gaa, %i.fzf
  %i.gav = mul i64 %i.fze, %i.gau
  %scevgep5560 = getelementptr i8, ptr %i.fzd, i64 %i.gav
  %scevgep5561 = getelementptr i8, ptr %i.fzd, i64 %i.dam
  %i.gaw = mul i64 %i.dav, %i.fzf                 ; 4 uses
  %i.gax = add i64 %i.fzn, %i.gaw
  %i.gay = mul i64 %i.fze, %i.gax
  %scevgep5562 = getelementptr i8, ptr %scevgep5561, i64 %i.gay
  %i.gaz = shl nsw i64 %i.fzf, 1                  ; 4 uses
  %i.gba = add i64 %i.fzn, %i.gaz
  %i.gbb = mul i64 %i.fze, %i.gba
  %scevgep5563 = getelementptr i8, ptr %i.fzd, i64 %i.gbb
  %scevgep5564 = getelementptr i8, ptr %i.fzd, i64 %i.dam
  %i.gbc = add i64 %i.fzq, %i.gaw
  %i.gbd = mul i64 %i.fze, %i.gbc
  %scevgep5565 = getelementptr i8, ptr %scevgep5564, i64 %i.gbd
  %i.gbe = add i64 %i.fzq, %i.gaz
  %i.gbf = mul i64 %i.fze, %i.gbe
  %scevgep5566 = getelementptr i8, ptr %i.fzd, i64 %i.gbf
  %scevgep5567 = getelementptr i8, ptr %i.fzd, i64 %i.dam
  %i.gbg = add i64 %i.fzv, %i.gaw
  %i.gbh = mul i64 %i.fze, %i.gbg
  %scevgep5568 = getelementptr i8, ptr %scevgep5567, i64 %i.gbh
  %i.gbi = add i64 %i.fzv, %i.gaz
  %i.gbj = mul i64 %i.fze, %i.gbi
  %scevgep5569 = getelementptr i8, ptr %i.fzd, i64 %i.gbj
  %scevgep5570 = getelementptr i8, ptr %i.fzd, i64 %i.dam
  %i.gbk = add i64 %i.gaa, %i.gaw
  %i.gbl = mul i64 %i.fze, %i.gbk
  %scevgep5571 = getelementptr i8, ptr %scevgep5570, i64 %i.gbl
  %i.gbm = add i64 %i.gaa, %i.gaz
  %i.gbn = mul i64 %i.fze, %i.gbm
  %scevgep5572 = getelementptr i8, ptr %i.fzd, i64 %i.gbn
  %scevgep5573 = getelementptr i8, ptr %i.fzd, i64 %i.dam
  %i.gbo = mul i64 %i.daw, %i.fzf                 ; 4 uses
  %i.gbp = add i64 %i.fzn, %i.gbo
  %i.gbq = mul i64 %i.fze, %i.gbp
  %scevgep5574 = getelementptr i8, ptr %scevgep5573, i64 %i.gbq
  %i.gbr = mul nsw i64 %i.fzf, 3                  ; 4 uses
  %i.gbs = add i64 %i.fzn, %i.gbr
  %i.gbt = mul i64 %i.fze, %i.gbs
  %scevgep5575 = getelementptr i8, ptr %i.fzd, i64 %i.gbt
  %scevgep5576 = getelementptr i8, ptr %i.fzd, i64 %i.dam
  %i.gbu = add i64 %i.fzq, %i.gbo
  %i.gbv = mul i64 %i.fze, %i.gbu
  %scevgep5577 = getelementptr i8, ptr %scevgep5576, i64 %i.gbv
  %i.gbw = add i64 %i.fzq, %i.gbr
  %i.gbx = mul i64 %i.fze, %i.gbw
  %scevgep5578 = getelementptr i8, ptr %i.fzd, i64 %i.gbx
  %scevgep5579 = getelementptr i8, ptr %i.fzd, i64 %i.dam
  %i.gby = add i64 %i.fzv, %i.gbo
  %i.gbz = mul i64 %i.fze, %i.gby
  %scevgep5580 = getelementptr i8, ptr %scevgep5579, i64 %i.gbz
  %i.gca = add i64 %i.fzv, %i.gbr
  %i.gcb = mul i64 %i.fze, %i.gca
  %scevgep5581 = getelementptr i8, ptr %i.fzd, i64 %i.gcb
  %scevgep5582 = getelementptr i8, ptr %i.fzd, i64 %i.dam
  %i.gcc = add i64 %i.gaa, %i.gbo
  %i.gcd = mul i64 %i.fze, %i.gcc
  %scevgep5583 = getelementptr i8, ptr %scevgep5582, i64 %i.gcd
  %i.gce = add i64 %i.gaa, %i.gbr
  %i.gcf = mul i64 %i.fze, %i.gce
  %scevgep5584 = getelementptr i8, ptr %i.fzd, i64 %i.gcf
  %scevgep5585 = getelementptr i8, ptr %i.fzd, i64 %i.dam
  %i.gcg = mul i64 %i.dax, %i.fzf                 ; 4 uses
  %i.gch = add i64 %i.fzn, %i.gcg
  %i.gci = mul i64 %i.fze, %i.gch
  %scevgep5586 = getelementptr i8, ptr %scevgep5585, i64 %i.gci
  %i.gcj = shl nsw i64 %i.fzf, 2                  ; 4 uses
  %i.gck = add i64 %i.fzn, %i.gcj
  %i.gcl = mul i64 %i.fze, %i.gck
  %scevgep5587 = getelementptr i8, ptr %i.fzd, i64 %i.gcl
  %scevgep5588 = getelementptr i8, ptr %i.fzd, i64 %i.dam
  %i.gcm = add i64 %i.fzq, %i.gcg
  %i.gcn = mul i64 %i.fze, %i.gcm
  %scevgep5589 = getelementptr i8, ptr %scevgep5588, i64 %i.gcn
  %i.gco = add i64 %i.fzq, %i.gcj
  %i.gcp = mul i64 %i.fze, %i.gco
  %scevgep5590 = getelementptr i8, ptr %i.fzd, i64 %i.gcp
  %scevgep5591 = getelementptr i8, ptr %i.fzd, i64 %i.dam
  %i.gcq = add i64 %i.fzv, %i.gcg
  %i.gcr = mul i64 %i.fze, %i.gcq
  %scevgep5592 = getelementptr i8, ptr %scevgep5591, i64 %i.gcr
  %i.gcs = add i64 %i.fzv, %i.gcj
  %i.gct = mul i64 %i.fze, %i.gcs
  %scevgep5593 = getelementptr i8, ptr %i.fzd, i64 %i.gct
  %scevgep5594 = getelementptr i8, ptr %i.fzd, i64 %i.dam
  %i.gcu = add i64 %i.gaa, %i.gcg
  %i.gcv = mul i64 %i.fze, %i.gcu
  %scevgep5595 = getelementptr i8, ptr %scevgep5594, i64 %i.gcv
  %i.gcw = add i64 %i.gaa, %i.gcj
  %i.gcx = mul i64 %i.fze, %i.gcw
  %scevgep5596 = getelementptr i8, ptr %i.fzd, i64 %i.gcx
  %scevgep5597 = getelementptr i8, ptr %i.fzd, i64 %i.dam
  %i.gcy = mul i64 %i.day, %i.fzf                 ; 4 uses
  %i.gcz = add i64 %i.fzn, %i.gcy
  %i.gda = mul i64 %i.fze, %i.gcz
  %scevgep5598 = getelementptr i8, ptr %scevgep5597, i64 %i.gda
  %i.gdb = mul nsw i64 %i.fzf, 5                  ; 4 uses
  %i.gdc = add i64 %i.fzn, %i.gdb
  %i.gdd = mul i64 %i.fze, %i.gdc
  %scevgep5599 = getelementptr i8, ptr %i.fzd, i64 %i.gdd
  %scevgep5600 = getelementptr i8, ptr %i.fzd, i64 %i.dam
  %i.gde = add i64 %i.fzq, %i.gcy
  %i.gdf = mul i64 %i.fze, %i.gde
  %scevgep5601 = getelementptr i8, ptr %scevgep5600, i64 %i.gdf
  %i.gdg = add i64 %i.fzq, %i.gdb
  %i.gdh = mul i64 %i.fze, %i.gdg
  %scevgep5602 = getelementptr i8, ptr %i.fzd, i64 %i.gdh
  %scevgep5603 = getelementptr i8, ptr %i.fzd, i64 %i.dam
  %i.gdi = add i64 %i.fzv, %i.gcy
  %i.gdj = mul i64 %i.fze, %i.gdi
  %scevgep5604 = getelementptr i8, ptr %scevgep5603, i64 %i.gdj
  %i.gdk = add i64 %i.fzv, %i.gdb
  %i.gdl = mul i64 %i.fze, %i.gdk
  %scevgep5605 = getelementptr i8, ptr %i.fzd, i64 %i.gdl
  %scevgep5606 = getelementptr i8, ptr %i.fzd, i64 %i.dam
  %i.gdm = add i64 %i.gaa, %i.gcy
  %i.gdn = mul i64 %i.fze, %i.gdm
  %scevgep5607 = getelementptr i8, ptr %scevgep5606, i64 %i.gdn
  %i.gdo = add i64 %i.gaa, %i.gdb
  %i.gdp = mul i64 %i.fze, %i.gdo
  %scevgep5608 = getelementptr i8, ptr %i.fzd, i64 %i.gdp
  %scevgep5609 = getelementptr i8, ptr %i.fzd, i64 %i.dam
  %i.gdq = mul i64 %i.daz, %i.fzf                 ; 4 uses
  %i.gdr = add i64 %i.fzn, %i.gdq
  %i.gds = mul i64 %i.fze, %i.gdr
  %scevgep5610 = getelementptr i8, ptr %scevgep5609, i64 %i.gds
  %i.gdt = mul nsw i64 %i.fzf, 6                  ; 4 uses
  %i.gdu = add i64 %i.fzn, %i.gdt
  %i.gdv = mul i64 %i.fze, %i.gdu
  %scevgep5611 = getelementptr i8, ptr %i.fzd, i64 %i.gdv
  %scevgep5612 = getelementptr i8, ptr %i.fzd, i64 %i.dam
  %i.gdw = add i64 %i.fzq, %i.gdq
  %i.gdx = mul i64 %i.fze, %i.gdw
  %scevgep5613 = getelementptr i8, ptr %scevgep5612, i64 %i.gdx
  %i.gdy = add i64 %i.fzq, %i.gdt
  %i.gdz = mul i64 %i.fze, %i.gdy
  %scevgep5614 = getelementptr i8, ptr %i.fzd, i64 %i.gdz
  %scevgep5615 = getelementptr i8, ptr %i.fzd, i64 %i.dam
  %i.gea = add i64 %i.fzv, %i.gdq
  %i.geb = mul i64 %i.fze, %i.gea
  %scevgep5616 = getelementptr i8, ptr %scevgep5615, i64 %i.geb
  %i.gec = add i64 %i.fzv, %i.gdt
  %i.ged = mul i64 %i.fze, %i.gec
  %scevgep5617 = getelementptr i8, ptr %i.fzd, i64 %i.ged
  %scevgep5618 = getelementptr i8, ptr %i.fzd, i64 %i.dam
  %i.gee = add i64 %i.gaa, %i.gdq
  %i.gef = mul i64 %i.fze, %i.gee
  %scevgep5619 = getelementptr i8, ptr %scevgep5618, i64 %i.gef
  %i.geg = add i64 %i.gaa, %i.gdt
  %i.geh = mul i64 %i.fze, %i.geg
  %scevgep5620 = getelementptr i8, ptr %i.fzd, i64 %i.geh
  %scevgep5621 = getelementptr i8, ptr %i.fzd, i64 %i.dam
  %i.gei = mul i64 %i.dba, %i.fzf                 ; 4 uses
  %i.gej = add i64 %i.fzn, %i.gei
  %i.gek = mul i64 %i.fze, %i.gej
  %scevgep5622 = getelementptr i8, ptr %scevgep5621, i64 %i.gek
  %i.gel = mul nsw i64 %i.fzf, 7                  ; 4 uses
  %i.gem = add i64 %i.fzn, %i.gel
  %i.gen = mul i64 %i.fze, %i.gem
  %scevgep5623 = getelementptr i8, ptr %i.fzd, i64 %i.gen
  %scevgep5624 = getelementptr i8, ptr %i.fzd, i64 %i.dam
  %i.geo = add i64 %i.fzq, %i.gei
  %i.gep = mul i64 %i.fze, %i.geo
  %scevgep5625 = getelementptr i8, ptr %scevgep5624, i64 %i.gep
  %i.geq = add i64 %i.fzq, %i.gel
  %i.ger = mul i64 %i.fze, %i.geq
  %scevgep5626 = getelementptr i8, ptr %i.fzd, i64 %i.ger
  %scevgep5627 = getelementptr i8, ptr %i.fzd, i64 %i.dam
  %i.ges = add i64 %i.fzv, %i.gei
  %i.get = mul i64 %i.fze, %i.ges
end_hunk_1
