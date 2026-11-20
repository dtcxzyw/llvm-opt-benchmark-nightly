Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_fma?download=true
inline.NumInlined: 397
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 126
loop-unroll.NumRuntimeUnrolled: 142
loop-unroll.NumUnrolled: 268
begin_hunk_0_@_ZN4ncnn19Convolution_x86_fma15create_pipelineERKNS_6OptionE:bb.a
  %i.uj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.uk = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.um = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.un = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.uo = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i64 0, ptr %i.uo, align 16, !tbaa !38
  %i.up = icmp eq i32 %i.sj, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.uk, i8 0, i64 28, i1 false)
  br i1 %i.up, label %bb.fy, label %bb.gw

bb.fy:                                            ; preds = %bb.fx
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  invoke void @_ZNK4ncnn3Mat7reshapeEiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(72) %i.sg, i32 noundef %i.sk, i32 noundef %i.rh, ptr noundef null)
          to label %bb.fz unwind label %bb.go

bb.fz:                                            ; preds = %bb.fy
  %i.uq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !35 ; 2 uses
  %.not.i109.i = icmp eq ptr %i.ur, null
  br i1 %.not.i109.i, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.us = atomicrmw add ptr %i.ur, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %i.ut = load ptr, ptr %i.uh, align 8, !tbaa !35 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ut, null
  br i1 %.not.i.i.i, label %bb.gh, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.uu = atomicrmw add ptr %i.ut, i32 -1 acq_rel, align 4
  %i.uv = icmp eq i32 %i.uu, 1
  br i1 %i.uv, label %bb.gd, label %bb.gh

bb.gd:                                            ; preds = %bb.gc
  %i.uw = load ptr, ptr %i.uk, align 16, !tbaa !36 ; 3 uses
  %.not3.i.i.i = icmp eq ptr %i.uw, null
  %i.ux = load ptr, ptr %2, align 16, !tbaa !37   ; 3 uses
  br i1 %.not3.i.i.i, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.uy = load ptr, ptr %i.uw, align 8, !tbaa !29
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 24
  %i.va = load ptr, ptr %i.uz, align 8
  invoke void %i.va(ptr noundef nonnull align 8 dereferenceable(8) %i.uw, ptr noundef %i.ux)
          to label %bb.gh unwind label %bb.gp, !inline_history !1

bb.gf:                                            ; preds = %bb.gd
  %.not.i18.i.i = icmp eq ptr %i.ux, null
  br i1 %.not.i18.i.i, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  call void @free(ptr noundef nonnull %i.ux) #12
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf, %bb.ge, %bb.gc, %bb.gb
  %i.vb = load ptr, ptr %i.uq, align 8, !tbaa !35 ; 2 uses
  %i.vc = load <2 x ptr>, ptr %3, align 16, !tbaa !78
  store <2 x ptr> %i.vc, ptr %2, align 16, !tbaa !78
  %i.vd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ve = load i64, ptr %i.vd, align 16, !tbaa !79
  store i64 %i.ve, ptr %i.ui, align 16, !tbaa !79
  %i.vf = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.vg = load i32, ptr %i.vf, align 8, !tbaa !80
  store i32 %i.vg, ptr %i.uj, align 8, !tbaa !80
  %i.vh = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.vi = load ptr, ptr %i.vh, align 16, !tbaa !36
  store ptr %i.vi, ptr %i.uk, align 16, !tbaa !36
  %i.vj = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.vk = load <4 x i32>, ptr %i.vj, align 8, !tbaa !81
  store <4 x i32> %i.vk, ptr %i.ul, align 8, !tbaa !81
  %i.vl = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.vm = load i32, ptr %i.vl, align 8, !tbaa !82
  store i32 %i.vm, ptr %i.un, align 8, !tbaa !82
  %i.vn = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.vo = load i64, ptr %i.vn, align 16, !tbaa !38
  store i64 %i.vo, ptr %i.uo, align 16, !tbaa !38
  %.not.i.i224 = icmp eq ptr %i.vb, null
  br i1 %.not.i.i224, label %_ZN4ncnn3MatD2Ev.exit71.i, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.vp = atomicrmw add ptr %i.vb, i32 -1 acq_rel, align 4
  %i.vq = icmp eq i32 %i.vp, 1
  br i1 %i.vq, label %bb.gj, label %_ZN4ncnn3MatD2Ev.exit71.i

bb.gj:                                            ; preds = %bb.gi
  %i.vr = load ptr, ptr %i.vh, align 16, !tbaa !36 ; 3 uses
  %.not3.i.i225 = icmp eq ptr %i.vr, null
  %i.vs = load ptr, ptr %3, align 16, !tbaa !37   ; 3 uses
  br i1 %.not3.i.i225, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.vt = load ptr, ptr %i.vr, align 8, !tbaa !29
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 24
  %i.vv = load ptr, ptr %i.vu, align 8
  invoke void %i.vv(ptr noundef nonnull align 8 dereferenceable(8) %i.vr, ptr noundef %i.vs)
          to label %_ZN4ncnn3MatD2Ev.exit71.i unwind label %bb.gn, !inline_history !0

bb.gl:                                            ; preds = %bb.gj
  %.not.i107.i = icmp eq ptr %i.vs, null
  br i1 %.not.i107.i, label %_ZN4ncnn3MatD2Ev.exit71.i, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  call void @free(ptr noundef nonnull %i.vs) #12
  br label %_ZN4ncnn3MatD2Ev.exit71.i

bb.gn:                                            ; preds = %bb.gk
  %i.vw = landingpad { ptr, i32 }
          catch ptr null
  %i.vx = extractvalue { ptr, i32 } %i.vw, 0
  call void @__clang_call_terminate(ptr %i.vx) #33
  unreachable

_ZN4ncnn3MatD2Ev.exit71.i:                        ; preds = %bb.gm, %bb.gl, %bb.gk, %bb.gi, %bb.gh
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.hm

bb.go:                                            ; preds = %bb.fy
  %i.vy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit70.i

bb.gp:                                            ; preds = %bb.ge
  %i.vz = landingpad { ptr, i32 }
          cleanup                                 ; 5 uses
  %i.wa = load ptr, ptr %i.uq, align 8, !tbaa !35 ; 2 uses
  %.not.i72.i = icmp eq ptr %i.wa, null
  br i1 %.not.i72.i, label %_ZN4ncnn3MatD2Ev.exit70.i, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.wb = atomicrmw add ptr %i.wa, i32 -1 acq_rel, align 4
  %i.wc = icmp eq i32 %i.wb, 1
  br i1 %i.wc, label %bb.gr, label %_ZN4ncnn3MatD2Ev.exit70.i

bb.gr:                                            ; preds = %bb.gq
  %i.wd = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.we = load ptr, ptr %i.wd, align 16, !tbaa !36 ; 3 uses
  %.not3.i73.i = icmp eq ptr %i.we, null
  %i.wf = load ptr, ptr %3, align 16, !tbaa !37   ; 3 uses
  br i1 %.not3.i73.i, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.wg = load ptr, ptr %i.we, align 8, !tbaa !29
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 24
  %i.wi = load ptr, ptr %i.wh, align 8
  invoke void %i.wi(ptr noundef nonnull align 8 dereferenceable(8) %i.we, ptr noundef %i.wf)
          to label %_ZN4ncnn3MatD2Ev.exit70.i unwind label %bb.gv, !inline_history !0

bb.gt:                                            ; preds = %bb.gr
  %.not.i105.i = icmp eq ptr %i.wf, null
  br i1 %.not.i105.i, label %_ZN4ncnn3MatD2Ev.exit70.i, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  call void @free(ptr noundef nonnull %i.wf) #12
  br label %_ZN4ncnn3MatD2Ev.exit70.i

bb.gv:                                            ; preds = %bb.gs
  %i.wj = landingpad { ptr, i32 }
          catch ptr null
  %i.wk = extractvalue { ptr, i32 } %i.wj, 0
  call void @__clang_call_terminate(ptr %i.wk) #33
  unreachable

_ZN4ncnn3MatD2Ev.exit70.i:                        ; preds = %bb.gp, %bb.gq, %bb.gs, %bb.gt, %bb.gu, %bb.go
  %.pn62.i = phi { ptr, i32 } [ %i.vy, %bb.go ], [ %i.vz, %bb.gu ], [ %i.vz, %bb.gt ], [ %i.vz, %bb.gs ], [ %i.vz, %bb.gq ], [ %i.vz, %bb.gp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.hv

bb.gw:                                            ; preds = %bb.fx
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  invoke void @_ZNK4ncnn3Mat7reshapeEiiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %4, ptr noundef nonnull align 8 dereferenceable(72) %i.sg, i32 noundef %i.sj, i32 noundef %i.cj, i32 noundef %i.rh, ptr noundef null)
          to label %bb.gx unwind label %bb.he

bb.gx:                                            ; preds = %bb.gw
  invoke void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.sk, i32 noundef %i.rh, i64 noundef 4, ptr noundef null)
          to label %.preheader119.i unwind label %bb.hf

.preheader119.i:                                  ; preds = %bb.gx
  %i.wl = icmp sgt i32 %i.rh, 0
  br i1 %i.wl, label %.lr.ph.i, label %._crit_edge.split.i

.lr.ph.i:                                         ; preds = %.preheader119.i
  %i.wm = load ptr, ptr %2, align 16, !tbaa !37
  %i.wn = load i32, ptr %i.um, align 4, !tbaa !89
  %i.wo = sext i32 %i.wn to i64
  %i.wp = load i64, ptr %i.ui, align 16, !tbaa !79
  %factor.op.mul128.i = mul i64 %i.wp, %i.wo
  %.not.i223 = icmp sle i32 %.058.i, %i.cj
  %i.wq = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.wr = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ws = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.wt = icmp sgt i32 %i.sj, 0
  %or.cond.i = and i1 %i.wt, %.not.i223
  br i1 %or.cond.i, label %.preheader118.lr.ph.us.preheader.i, label %._crit_edge.split.i

.preheader118.lr.ph.us.preheader.i:               ; preds = %.lr.ph.i
  %i.wu = add nsw i32 %.058.i, -1
  %i.wv = zext i32 %.058.i to i64                 ; 3 uses
  %i.ww = zext nneg i32 %i.wu to i64
  %i.wx = zext nneg i32 %i.cj to i64
  %wide.trip.count145.i = zext nneg i32 %i.rh to i64
  %wide.trip.count137.i = zext nneg i32 %i.sj to i64
  %xtraiter1601 = and i64 %i.wv, 3                ; 3 uses
  %i.wy = add nsw i32 %.058.i, -1
  %i.wz = icmp ult i32 %i.wy, 3
  %unroll_iter = and i64 %i.wv, 4294967292
  %lcmp.mod1602.not = icmp eq i64 %xtraiter1601, 0
  %lcmp.mod1604 = icmp ne i64 %xtraiter1601, 0
  br label %.preheader118.lr.ph.us.i

.preheader118.lr.ph.us.i:                         ; preds = %._crit_edge126.split.us.us.i, %.preheader118.lr.ph.us.preheader.i
  %indvars.iv142.i = phi i64 [ 0, %.preheader118.lr.ph.us.preheader.i ], [ %indvars.iv.next143.i, %._crit_edge126.split.us.us.i ] ; 3 uses
  %.reass.us129.i = mul i64 %factor.op.mul128.i, %indvars.iv142.i
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wm, i64 %.reass.us129.i
  %i.xb = load i32, ptr %i.wq, align 4
  %i.xc = load ptr, ptr %4, align 8
  %i.xd = load i64, ptr %i.wr, align 8
  %i.xe = mul i64 %i.xd, %indvars.iv142.i
  %i.xf = load i64, ptr %i.ws, align 8            ; 2 uses
  %i.xg = mul i64 %i.xe, %i.xf
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xc, i64 %i.xg
  %i.xi = sext i32 %i.xb to i64
  %factor.op.mul.us.i = mul i64 %i.xf, %i.xi      ; 5 uses
  br label %.preheader118.us.us.i

.preheader118.us.us.i:                            ; preds = %._crit_edge.us.us.i, %.preheader118.lr.ph.us.i
  %indvars.iv139.i = phi i64 [ %indvars.iv.next140.i, %._crit_edge.us.us.i ], [ 0, %.preheader118.lr.ph.us.i ] ; 6 uses
  %.049124.us.us.i = phi ptr [ %.lcssa, %._crit_edge.us.us.i ], [ %i.xa, %.preheader118.lr.ph.us.i ]
  br label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %.epilog-lcssa, %.preheader118.us.us.i
  %indvars.iv134.i = phi i64 [ %indvars.iv.next135.i, %.epilog-lcssa ], [ 0, %.preheader118.us.us.i ] ; 2 uses
  %.1122.us.us.i = phi ptr [ %.lcssa, %.epilog-lcssa ], [ %.049124.us.us.i, %.preheader118.us.us.i ] ; 2 uses
  %invariant.gep.us.us.i = getelementptr [4 x i8], ptr %i.xh, i64 %indvars.iv134.i ; 5 uses
  br i1 %i.wz, label %_ZN4ncnn3MatD2Ev.exit69.us.us.i.epil.preheader, label %_ZN4ncnn3MatD2Ev.exit69.us.us.i

_ZN4ncnn3MatD2Ev.exit69.us.us.i:                  ; preds = %.preheader.us.us.i, %_ZN4ncnn3MatD2Ev.exit69.us.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %_ZN4ncnn3MatD2Ev.exit69.us.us.i ], [ 0, %.preheader.us.us.i ] ; 5 uses
  %.2120.us.us.i = phi ptr [ %i.xu, %_ZN4ncnn3MatD2Ev.exit69.us.us.i ], [ %.1122.us.us.i, %.preheader.us.us.i ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %_ZN4ncnn3MatD2Ev.exit69.us.us.i ], [ 0, %.preheader.us.us.i ]
  %i.xj = add nuw nsw i64 %indvars.iv.i, %indvars.iv139.i
  %.reass.us.us.i = mul i64 %factor.op.mul.us.i, %i.xj
  %gep.us.us.i = getelementptr i8, ptr %invariant.gep.us.us.i, i64 %.reass.us.us.i
  %i.xk = load float, ptr %gep.us.us.i, align 4, !tbaa !56
  store float %i.xk, ptr %.2120.us.us.i, align 4, !tbaa !56
  %i.xl = getelementptr inbounds nuw i8, ptr %.2120.us.us.i, i64 4
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.xm = add nuw nsw i64 %indvars.iv.next.i, %indvars.iv139.i
  %.reass.us.us.i.1 = mul i64 %factor.op.mul.us.i, %i.xm
  %gep.us.us.i.1 = getelementptr i8, ptr %invariant.gep.us.us.i, i64 %.reass.us.us.i.1
  %i.xn = load float, ptr %gep.us.us.i.1, align 4, !tbaa !56
  store float %i.xn, ptr %i.xl, align 4, !tbaa !56
  %i.xo = getelementptr inbounds nuw i8, ptr %.2120.us.us.i, i64 8
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2
  %i.xp = add nuw nsw i64 %indvars.iv.next.i.1, %indvars.iv139.i
  %.reass.us.us.i.2 = mul i64 %factor.op.mul.us.i, %i.xp
  %gep.us.us.i.2 = getelementptr i8, ptr %invariant.gep.us.us.i, i64 %.reass.us.us.i.2
  %i.xq = load float, ptr %gep.us.us.i.2, align 4, !tbaa !56
  store float %i.xq, ptr %i.xo, align 4, !tbaa !56
  %i.xr = getelementptr inbounds nuw i8, ptr %.2120.us.us.i, i64 12
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3
  %i.xs = add nuw nsw i64 %indvars.iv.next.i.2, %indvars.iv139.i
  %.reass.us.us.i.3 = mul i64 %factor.op.mul.us.i, %i.xs
  %gep.us.us.i.3 = getelementptr i8, ptr %invariant.gep.us.us.i, i64 %.reass.us.us.i.3
  %i.xt = load float, ptr %gep.us.us.i.3, align 4, !tbaa !56
  store float %i.xt, ptr %i.xr, align 4, !tbaa !56
  %i.xu = getelementptr inbounds nuw i8, ptr %.2120.us.us.i, i64 16 ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit69.us.us.i, !llvm.loop !124

.unr-lcssa:                                       ; preds = %_ZN4ncnn3MatD2Ev.exit69.us.us.i
  br i1 %lcmp.mod1602.not, label %.epilog-lcssa, label %_ZN4ncnn3MatD2Ev.exit69.us.us.i.epil.preheader

_ZN4ncnn3MatD2Ev.exit69.us.us.i.epil.preheader:   ; preds = %.unr-lcssa, %.preheader.us.us.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.us.us.i ], [ %indvars.iv.next.i.3, %.unr-lcssa ]
  %.2120.us.us.i.epil.init = phi ptr [ %.1122.us.us.i, %.preheader.us.us.i ], [ %i.xu, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1604)
  br label %_ZN4ncnn3MatD2Ev.exit69.us.us.i.epil

_ZN4ncnn3MatD2Ev.exit69.us.us.i.epil:             ; preds = %_ZN4ncnn3MatD2Ev.exit69.us.us.i.epil, %_ZN4ncnn3MatD2Ev.exit69.us.us.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %_ZN4ncnn3MatD2Ev.exit69.us.us.i.epil ], [ %indvars.iv.i.epil.init, %_ZN4ncnn3MatD2Ev.exit69.us.us.i.epil.preheader ] ; 2 uses
  %.2120.us.us.i.epil = phi ptr [ %i.xx, %_ZN4ncnn3MatD2Ev.exit69.us.us.i.epil ], [ %.2120.us.us.i.epil.init, %_ZN4ncnn3MatD2Ev.exit69.us.us.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZN4ncnn3MatD2Ev.exit69.us.us.i.epil ], [ 0, %_ZN4ncnn3MatD2Ev.exit69.us.us.i.epil.preheader ]
  %i.xv = add nuw nsw i64 %indvars.iv.i.epil, %indvars.iv139.i
  %.reass.us.us.i.epil = mul i64 %factor.op.mul.us.i, %i.xv
  %gep.us.us.i.epil = getelementptr i8, ptr %invariant.gep.us.us.i, i64 %.reass.us.us.i.epil
  %i.xw = load float, ptr %gep.us.us.i.epil, align 4, !tbaa !56
  store float %i.xw, ptr %.2120.us.us.i.epil, align 4, !tbaa !56
  %i.xx = getelementptr inbounds nuw i8, ptr %.2120.us.us.i.epil, i64 4 ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1601
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %_ZN4ncnn3MatD2Ev.exit69.us.us.i.epil, !llvm.loop !125

.epilog-lcssa:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit69.us.us.i.epil, %.unr-lcssa
  %.lcssa = phi ptr [ %i.xu, %.unr-lcssa ], [ %i.xx, %_ZN4ncnn3MatD2Ev.exit69.us.us.i.epil ] ; 2 uses
  %indvars.iv.next135.i = add nuw nsw i64 %indvars.iv134.i, 1 ; 2 uses
  %exitcond138.not.i = icmp eq i64 %indvars.iv.next135.i, %wide.trip.count137.i
  br i1 %exitcond138.not.i, label %._crit_edge.us.us.i, label %.preheader.us.us.i, !llvm.loop !126

._crit_edge.us.us.i:                              ; preds = %.epilog-lcssa
  %indvars.iv.next140.i = add nuw nsw i64 %indvars.iv139.i, %i.wv ; 2 uses
  %i.xy = add nuw nsw i64 %indvars.iv.next140.i, %i.ww
  %i.xz = icmp samesign ult i64 %i.xy, %i.wx
  br i1 %i.xz, label %.preheader118.us.us.i, label %._crit_edge126.split.us.us.i, !llvm.loop !127

._crit_edge126.split.us.us.i:                     ; preds = %._crit_edge.us.us.i
  %indvars.iv.next143.i = add nuw nsw i64 %indvars.iv142.i, 1 ; 2 uses
  %exitcond146.not.i = icmp eq i64 %indvars.iv.next143.i, %wide.trip.count145.i
  br i1 %exitcond146.not.i, label %._crit_edge.split.i, label %.preheader118.lr.ph.us.i, !llvm.loop !128

._crit_edge.split.i:                              ; preds = %._crit_edge126.split.us.us.i, %.lr.ph.i, %.preheader119.i
  %i.ya = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !35 ; 2 uses
  %.not.i80.i = icmp eq ptr %i.yb, null
  br i1 %.not.i80.i, label %_ZN4ncnn3MatD2Ev.exit68.i, label %bb.gy

bb.gy:                                            ; preds = %._crit_edge.split.i
  %i.yc = atomicrmw add ptr %i.yb, i32 -1 acq_rel, align 4
  %i.yd = icmp eq i32 %i.yc, 1
  br i1 %i.yd, label %bb.gz, label %_ZN4ncnn3MatD2Ev.exit68.i

bb.gz:                                            ; preds = %bb.gy
  %i.ye = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !36 ; 3 uses
  %.not3.i81.i = icmp eq ptr %i.yf, null
  %i.yg = load ptr, ptr %4, align 8, !tbaa !37    ; 3 uses
  br i1 %.not3.i81.i, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.yh = load ptr, ptr %i.yf, align 8, !tbaa !29
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 24
  %i.yj = load ptr, ptr %i.yi, align 8
  invoke void %i.yj(ptr noundef nonnull align 8 dereferenceable(8) %i.yf, ptr noundef %i.yg)
          to label %_ZN4ncnn3MatD2Ev.exit68.i unwind label %bb.hd, !inline_history !0

bb.hb:                                            ; preds = %bb.gz
  %.not.i101.i = icmp eq ptr %i.yg, null
  br i1 %.not.i101.i, label %_ZN4ncnn3MatD2Ev.exit68.i, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  call void @free(ptr noundef nonnull %i.yg) #12
  br label %_ZN4ncnn3MatD2Ev.exit68.i

bb.hd:                                            ; preds = %bb.ha
  %i.yk = landingpad { ptr, i32 }
          catch ptr null
  %i.yl = extractvalue { ptr, i32 } %i.yk, 0
  call void @__clang_call_terminate(ptr %i.yl) #33
  unreachable

_ZN4ncnn3MatD2Ev.exit68.i:                        ; preds = %bb.hc, %bb.hb, %bb.ha, %bb.gy, %._crit_edge.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.hm

bb.he:                                            ; preds = %bb.gw
  %i.ym = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit67.i

bb.hf:                                            ; preds = %bb.gx
  %i.yn = landingpad { ptr, i32 }
          cleanup                                 ; 5 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !35 ; 2 uses
  %.not.i84.i = icmp eq ptr %i.yp, null
  br i1 %.not.i84.i, label %_ZN4ncnn3MatD2Ev.exit67.i, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.yq = atomicrmw add ptr %i.yp, i32 -1 acq_rel, align 4
  %i.yr = icmp eq i32 %i.yq, 1
  br i1 %i.yr, label %bb.hh, label %_ZN4ncnn3MatD2Ev.exit67.i

bb.hh:                                            ; preds = %bb.hg
  %i.ys = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !36 ; 3 uses
  %.not3.i85.i = icmp eq ptr %i.yt, null
  %i.yu = load ptr, ptr %4, align 8, !tbaa !37    ; 3 uses
  br i1 %.not3.i85.i, label %bb.hj, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.yv = load ptr, ptr %i.yt, align 8, !tbaa !29
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 24
  %i.yx = load ptr, ptr %i.yw, align 8
  invoke void %i.yx(ptr noundef nonnull align 8 dereferenceable(8) %i.yt, ptr noundef %i.yu)
          to label %_ZN4ncnn3MatD2Ev.exit67.i unwind label %bb.hl, !inline_history !0

bb.hj:                                            ; preds = %bb.hh
  %.not.i99.i = icmp eq ptr %i.yu, null
  br i1 %.not.i99.i, label %_ZN4ncnn3MatD2Ev.exit67.i, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  call void @free(ptr noundef nonnull %i.yu) #12
  br label %_ZN4ncnn3MatD2Ev.exit67.i

bb.hl:                                            ; preds = %bb.hi
  %i.yy = landingpad { ptr, i32 }
          catch ptr null
  %i.yz = extractvalue { ptr, i32 } %i.yy, 0
  call void @__clang_call_terminate(ptr %i.yz) #33
  unreachable

_ZN4ncnn3MatD2Ev.exit67.i:                        ; preds = %bb.hf, %bb.hg, %bb.hi, %bb.hj, %bb.hk, %bb.he
  %.pn.pn.i = phi { ptr, i32 } [ %i.ym, %bb.he ], [ %i.yn, %bb.hk ], [ %i.yn, %bb.hj ], [ %i.yn, %bb.hi ], [ %i.yn, %bb.hg ], [ %i.yn, %bb.hf ]
end_hunk_0
begin_hunk_1_@_ZN4ncnn19Convolution_x86_fma21create_pipeline_bf16sERKNS_6OptionE:bb.a
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.hn = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.hp = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.hr = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i64 0, ptr %i.hr, align 16, !tbaa !38
  %i.hs = icmp eq i32 %i.fk, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.hn, i8 0, i64 28, i1 false)
  br i1 %i.hs, label %bb.av, label %bb.bt

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  invoke void @_ZNK4ncnn3Mat7reshapeEiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(72) %i.fh, i32 noundef %i.fl, i32 noundef %i.eg, ptr noundef null)
          to label %bb.aw unwind label %bb.bl

bb.aw:                                            ; preds = %bb.av
  %i.ht = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !35 ; 2 uses
  %.not.i109.i = icmp eq ptr %i.hu, null
  br i1 %.not.i109.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hv = atomicrmw add ptr %i.hu, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.hw = load ptr, ptr %i.hk, align 8, !tbaa !35 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.hw, null
  br i1 %.not.i.i.i, label %bb.be, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hx = atomicrmw add ptr %i.hw, i32 -1 acq_rel, align 4
  %i.hy = icmp eq i32 %i.hx, 1
  br i1 %i.hy, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %bb.az
  %i.hz = load ptr, ptr %i.hn, align 16, !tbaa !36 ; 3 uses
  %.not3.i.i.i = icmp eq ptr %i.hz, null
  %i.ia = load ptr, ptr %2, align 16, !tbaa !37   ; 3 uses
  br i1 %.not3.i.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ib = load ptr, ptr %i.hz, align 8, !tbaa !29
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 24
  %i.id = load ptr, ptr %i.ic, align 8
  invoke void %i.id(ptr noundef nonnull align 8 dereferenceable(8) %i.hz, ptr noundef %i.ia)
          to label %bb.be unwind label %bb.bm, !inline_history !1

bb.bc:                                            ; preds = %bb.ba
  %.not.i18.i.i = icmp eq ptr %i.ia, null
  br i1 %.not.i18.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @free(ptr noundef nonnull %i.ia) #12
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.az, %bb.ay
  %i.ie = load ptr, ptr %i.ht, align 8, !tbaa !35 ; 2 uses
  %i.if = load <2 x ptr>, ptr %3, align 16, !tbaa !78
  store <2 x ptr> %i.if, ptr %2, align 16, !tbaa !78
  %i.ig = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ih = load i64, ptr %i.ig, align 16, !tbaa !79
  store i64 %i.ih, ptr %i.hl, align 16, !tbaa !79
  %i.ii = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !80
  store i32 %i.ij, ptr %i.hm, align 8, !tbaa !80
  %i.ik = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.il = load ptr, ptr %i.ik, align 16, !tbaa !36
  store ptr %i.il, ptr %i.hn, align 16, !tbaa !36
  %i.im = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.in = load <4 x i32>, ptr %i.im, align 8, !tbaa !81
  store <4 x i32> %i.in, ptr %i.ho, align 8, !tbaa !81
  %i.io = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !82
  store i32 %i.ip, ptr %i.hq, align 8, !tbaa !82
  %i.iq = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ir = load i64, ptr %i.iq, align 16, !tbaa !38
  store i64 %i.ir, ptr %i.hr, align 16, !tbaa !38
  %.not.i.i = icmp eq ptr %i.ie, null
  br i1 %.not.i.i, label %_ZN4ncnn3MatD2Ev.exit71.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.is = atomicrmw add ptr %i.ie, i32 -1 acq_rel, align 4
  %i.it = icmp eq i32 %i.is, 1
  br i1 %i.it, label %bb.bg, label %_ZN4ncnn3MatD2Ev.exit71.i

bb.bg:                                            ; preds = %bb.bf
  %i.iu = load ptr, ptr %i.ik, align 16, !tbaa !36 ; 3 uses
  %.not3.i.i = icmp eq ptr %i.iu, null
  %i.iv = load ptr, ptr %3, align 16, !tbaa !37   ; 3 uses
  br i1 %.not3.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.iw = load ptr, ptr %i.iu, align 8, !tbaa !29
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8
  invoke void %i.iy(ptr noundef nonnull align 8 dereferenceable(8) %i.iu, ptr noundef %i.iv)
          to label %_ZN4ncnn3MatD2Ev.exit71.i unwind label %bb.bk, !inline_history !0

bb.bi:                                            ; preds = %bb.bg
  %.not.i107.i = icmp eq ptr %i.iv, null
  br i1 %.not.i107.i, label %_ZN4ncnn3MatD2Ev.exit71.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @free(ptr noundef nonnull %i.iv) #12
  br label %_ZN4ncnn3MatD2Ev.exit71.i

bb.bk:                                            ; preds = %bb.bh
  %i.iz = landingpad { ptr, i32 }
          catch ptr null
  %i.ja = extractvalue { ptr, i32 } %i.iz, 0
  call void @__clang_call_terminate(ptr %i.ja) #33
  unreachable

_ZN4ncnn3MatD2Ev.exit71.i:                        ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bf, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.cj

bb.bl:                                            ; preds = %bb.av
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit70.i

bb.bm:                                            ; preds = %bb.bb
  %i.jc = landingpad { ptr, i32 }
          cleanup                                 ; 5 uses
  %i.jd = load ptr, ptr %i.ht, align 8, !tbaa !35 ; 2 uses
  %.not.i72.i = icmp eq ptr %i.jd, null
  br i1 %.not.i72.i, label %_ZN4ncnn3MatD2Ev.exit70.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.je = atomicrmw add ptr %i.jd, i32 -1 acq_rel, align 4
  %i.jf = icmp eq i32 %i.je, 1
  br i1 %i.jf, label %bb.bo, label %_ZN4ncnn3MatD2Ev.exit70.i

bb.bo:                                            ; preds = %bb.bn
  %i.jg = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.jh = load ptr, ptr %i.jg, align 16, !tbaa !36 ; 3 uses
  %.not3.i73.i = icmp eq ptr %i.jh, null
  %i.ji = load ptr, ptr %3, align 16, !tbaa !37   ; 3 uses
  br i1 %.not3.i73.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jj = load ptr, ptr %i.jh, align 8, !tbaa !29
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 24
  %i.jl = load ptr, ptr %i.jk, align 8
  invoke void %i.jl(ptr noundef nonnull align 8 dereferenceable(8) %i.jh, ptr noundef %i.ji)
          to label %_ZN4ncnn3MatD2Ev.exit70.i unwind label %bb.bs, !inline_history !0

bb.bq:                                            ; preds = %bb.bo
  %.not.i105.i = icmp eq ptr %i.ji, null
  br i1 %.not.i105.i, label %_ZN4ncnn3MatD2Ev.exit70.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @free(ptr noundef nonnull %i.ji) #12
  br label %_ZN4ncnn3MatD2Ev.exit70.i

bb.bs:                                            ; preds = %bb.bp
  %i.jm = landingpad { ptr, i32 }
          catch ptr null
  %i.jn = extractvalue { ptr, i32 } %i.jm, 0
  call void @__clang_call_terminate(ptr %i.jn) #33
  unreachable

_ZN4ncnn3MatD2Ev.exit70.i:                        ; preds = %bb.bm, %bb.bn, %bb.bp, %bb.bq, %bb.br, %bb.bl
  %.pn62.i = phi { ptr, i32 } [ %i.jb, %bb.bl ], [ %i.jc, %bb.br ], [ %i.jc, %bb.bq ], [ %i.jc, %bb.bp ], [ %i.jc, %bb.bn ], [ %i.jc, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.cs

bb.bt:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  invoke void @_ZNK4ncnn3Mat7reshapeEiiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %4, ptr noundef nonnull align 8 dereferenceable(72) %i.fh, i32 noundef %i.fk, i32 noundef %i.p, i32 noundef %i.eg, ptr noundef null)
          to label %bb.bu unwind label %bb.cb

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.fl, i32 noundef %i.eg, i64 noundef 4, ptr noundef null)
          to label %.preheader119.i unwind label %bb.cc

.preheader119.i:                                  ; preds = %bb.bu
  %i.jo = icmp sgt i32 %i.eg, 0
  br i1 %i.jo, label %.lr.ph.i, label %._crit_edge.split.i

.lr.ph.i:                                         ; preds = %.preheader119.i
  %i.jp = load ptr, ptr %2, align 16, !tbaa !37
  %i.jq = load i32, ptr %i.hp, align 4, !tbaa !89
  %i.jr = sext i32 %i.jq to i64
  %i.js = load i64, ptr %i.hl, align 16, !tbaa !79
  %factor.op.mul128.i = mul i64 %i.js, %i.jr
  %.not.i103 = icmp sle i32 %.058.i, %i.p
  %i.jt = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.ju = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.jv = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.jw = icmp sgt i32 %i.fk, 0
  %or.cond.i = and i1 %i.jw, %.not.i103
  br i1 %or.cond.i, label %.preheader118.lr.ph.us.preheader.i, label %._crit_edge.split.i

.preheader118.lr.ph.us.preheader.i:               ; preds = %.lr.ph.i
  %i.jx = add nsw i32 %.058.i, -1
  %i.jy = zext i32 %.058.i to i64                 ; 3 uses
  %i.jz = zext nneg i32 %i.jx to i64
  %i.ka = zext nneg i32 %i.p to i64
  %wide.trip.count145.i = zext nneg i32 %i.eg to i64
  %wide.trip.count137.i = zext nneg i32 %i.fk to i64
  %xtraiter = and i64 %i.jy, 3                    ; 3 uses
  %i.kb = add nsw i32 %.058.i, -1
  %i.kc = icmp ult i32 %i.kb, 3
  %unroll_iter = and i64 %i.jy, 4294967292
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod731 = icmp ne i64 %xtraiter, 0
  br label %.preheader118.lr.ph.us.i

.preheader118.lr.ph.us.i:                         ; preds = %._crit_edge126.split.us.us.i, %.preheader118.lr.ph.us.preheader.i
  %indvars.iv142.i = phi i64 [ 0, %.preheader118.lr.ph.us.preheader.i ], [ %indvars.iv.next143.i, %._crit_edge126.split.us.us.i ] ; 3 uses
  %.reass.us129.i = mul i64 %factor.op.mul128.i, %indvars.iv142.i
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jp, i64 %.reass.us129.i
  %i.ke = load i32, ptr %i.jt, align 4
  %i.kf = load ptr, ptr %4, align 8
  %i.kg = load i64, ptr %i.ju, align 8
  %i.kh = mul i64 %i.kg, %indvars.iv142.i
  %i.ki = load i64, ptr %i.jv, align 8            ; 2 uses
  %i.kj = mul i64 %i.kh, %i.ki
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.kj
  %i.kl = sext i32 %i.ke to i64
  %factor.op.mul.us.i = mul i64 %i.ki, %i.kl      ; 5 uses
  br label %.preheader118.us.us.i

.preheader118.us.us.i:                            ; preds = %._crit_edge.us.us.i, %.preheader118.lr.ph.us.i
  %indvars.iv139.i = phi i64 [ %indvars.iv.next140.i, %._crit_edge.us.us.i ], [ 0, %.preheader118.lr.ph.us.i ] ; 6 uses
  %.049124.us.us.i = phi ptr [ %.lcssa, %._crit_edge.us.us.i ], [ %i.kd, %.preheader118.lr.ph.us.i ]
  br label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %.epilog-lcssa, %.preheader118.us.us.i
  %indvars.iv134.i = phi i64 [ %indvars.iv.next135.i, %.epilog-lcssa ], [ 0, %.preheader118.us.us.i ] ; 2 uses
  %.1122.us.us.i = phi ptr [ %.lcssa, %.epilog-lcssa ], [ %.049124.us.us.i, %.preheader118.us.us.i ] ; 2 uses
  %invariant.gep.us.us.i = getelementptr [4 x i8], ptr %i.kk, i64 %indvars.iv134.i ; 5 uses
  br i1 %i.kc, label %_ZN4ncnn3MatD2Ev.exit69.us.us.i.epil.preheader, label %_ZN4ncnn3MatD2Ev.exit69.us.us.i

_ZN4ncnn3MatD2Ev.exit69.us.us.i:                  ; preds = %.preheader.us.us.i, %_ZN4ncnn3MatD2Ev.exit69.us.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %_ZN4ncnn3MatD2Ev.exit69.us.us.i ], [ 0, %.preheader.us.us.i ] ; 5 uses
  %.2120.us.us.i = phi ptr [ %i.kx, %_ZN4ncnn3MatD2Ev.exit69.us.us.i ], [ %.1122.us.us.i, %.preheader.us.us.i ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %_ZN4ncnn3MatD2Ev.exit69.us.us.i ], [ 0, %.preheader.us.us.i ]
  %i.km = add nuw nsw i64 %indvars.iv.i, %indvars.iv139.i
  %.reass.us.us.i = mul i64 %factor.op.mul.us.i, %i.km
  %gep.us.us.i = getelementptr i8, ptr %invariant.gep.us.us.i, i64 %.reass.us.us.i
  %i.kn = load float, ptr %gep.us.us.i, align 4, !tbaa !56
  store float %i.kn, ptr %.2120.us.us.i, align 4, !tbaa !56
  %i.ko = getelementptr inbounds nuw i8, ptr %.2120.us.us.i, i64 4
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.kp = add nuw nsw i64 %indvars.iv.next.i, %indvars.iv139.i
  %.reass.us.us.i.1 = mul i64 %factor.op.mul.us.i, %i.kp
  %gep.us.us.i.1 = getelementptr i8, ptr %invariant.gep.us.us.i, i64 %.reass.us.us.i.1
  %i.kq = load float, ptr %gep.us.us.i.1, align 4, !tbaa !56
  store float %i.kq, ptr %i.ko, align 4, !tbaa !56
  %i.kr = getelementptr inbounds nuw i8, ptr %.2120.us.us.i, i64 8
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2
  %i.ks = add nuw nsw i64 %indvars.iv.next.i.1, %indvars.iv139.i
  %.reass.us.us.i.2 = mul i64 %factor.op.mul.us.i, %i.ks
  %gep.us.us.i.2 = getelementptr i8, ptr %invariant.gep.us.us.i, i64 %.reass.us.us.i.2
  %i.kt = load float, ptr %gep.us.us.i.2, align 4, !tbaa !56
  store float %i.kt, ptr %i.kr, align 4, !tbaa !56
  %i.ku = getelementptr inbounds nuw i8, ptr %.2120.us.us.i, i64 12
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3
  %i.kv = add nuw nsw i64 %indvars.iv.next.i.2, %indvars.iv139.i
  %.reass.us.us.i.3 = mul i64 %factor.op.mul.us.i, %i.kv
  %gep.us.us.i.3 = getelementptr i8, ptr %invariant.gep.us.us.i, i64 %.reass.us.us.i.3
  %i.kw = load float, ptr %gep.us.us.i.3, align 4, !tbaa !56
  store float %i.kw, ptr %i.ku, align 4, !tbaa !56
  %i.kx = getelementptr inbounds nuw i8, ptr %.2120.us.us.i, i64 16 ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit69.us.us.i, !llvm.loop !587

.unr-lcssa:                                       ; preds = %_ZN4ncnn3MatD2Ev.exit69.us.us.i
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %_ZN4ncnn3MatD2Ev.exit69.us.us.i.epil.preheader

_ZN4ncnn3MatD2Ev.exit69.us.us.i.epil.preheader:   ; preds = %.unr-lcssa, %.preheader.us.us.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.us.us.i ], [ %indvars.iv.next.i.3, %.unr-lcssa ]
  %.2120.us.us.i.epil.init = phi ptr [ %.1122.us.us.i, %.preheader.us.us.i ], [ %i.kx, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod731)
  br label %_ZN4ncnn3MatD2Ev.exit69.us.us.i.epil

_ZN4ncnn3MatD2Ev.exit69.us.us.i.epil:             ; preds = %_ZN4ncnn3MatD2Ev.exit69.us.us.i.epil, %_ZN4ncnn3MatD2Ev.exit69.us.us.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %_ZN4ncnn3MatD2Ev.exit69.us.us.i.epil ], [ %indvars.iv.i.epil.init, %_ZN4ncnn3MatD2Ev.exit69.us.us.i.epil.preheader ] ; 2 uses
  %.2120.us.us.i.epil = phi ptr [ %i.la, %_ZN4ncnn3MatD2Ev.exit69.us.us.i.epil ], [ %.2120.us.us.i.epil.init, %_ZN4ncnn3MatD2Ev.exit69.us.us.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZN4ncnn3MatD2Ev.exit69.us.us.i.epil ], [ 0, %_ZN4ncnn3MatD2Ev.exit69.us.us.i.epil.preheader ]
  %i.ky = add nuw nsw i64 %indvars.iv.i.epil, %indvars.iv139.i
  %.reass.us.us.i.epil = mul i64 %factor.op.mul.us.i, %i.ky
  %gep.us.us.i.epil = getelementptr i8, ptr %invariant.gep.us.us.i, i64 %.reass.us.us.i.epil
  %i.kz = load float, ptr %gep.us.us.i.epil, align 4, !tbaa !56
  store float %i.kz, ptr %.2120.us.us.i.epil, align 4, !tbaa !56
  %i.la = getelementptr inbounds nuw i8, ptr %.2120.us.us.i.epil, i64 4 ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %_ZN4ncnn3MatD2Ev.exit69.us.us.i.epil, !llvm.loop !588

.epilog-lcssa:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit69.us.us.i.epil, %.unr-lcssa
  %.lcssa = phi ptr [ %i.kx, %.unr-lcssa ], [ %i.la, %_ZN4ncnn3MatD2Ev.exit69.us.us.i.epil ] ; 2 uses
  %indvars.iv.next135.i = add nuw nsw i64 %indvars.iv134.i, 1 ; 2 uses
  %exitcond138.not.i = icmp eq i64 %indvars.iv.next135.i, %wide.trip.count137.i
  br i1 %exitcond138.not.i, label %._crit_edge.us.us.i, label %.preheader.us.us.i, !llvm.loop !589

._crit_edge.us.us.i:                              ; preds = %.epilog-lcssa
  %indvars.iv.next140.i = add nuw nsw i64 %indvars.iv139.i, %i.jy ; 2 uses
  %i.lb = add nuw nsw i64 %indvars.iv.next140.i, %i.jz
  %i.lc = icmp samesign ult i64 %i.lb, %i.ka
  br i1 %i.lc, label %.preheader118.us.us.i, label %._crit_edge126.split.us.us.i, !llvm.loop !590

._crit_edge126.split.us.us.i:                     ; preds = %._crit_edge.us.us.i
  %indvars.iv.next143.i = add nuw nsw i64 %indvars.iv142.i, 1 ; 2 uses
  %exitcond146.not.i = icmp eq i64 %indvars.iv.next143.i, %wide.trip.count145.i
  br i1 %exitcond146.not.i, label %._crit_edge.split.i, label %.preheader118.lr.ph.us.i, !llvm.loop !591

._crit_edge.split.i:                              ; preds = %._crit_edge126.split.us.us.i, %.lr.ph.i, %.preheader119.i
  %i.ld = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !35 ; 2 uses
  %.not.i80.i = icmp eq ptr %i.le, null
  br i1 %.not.i80.i, label %_ZN4ncnn3MatD2Ev.exit68.i, label %bb.bv

bb.bv:                                            ; preds = %._crit_edge.split.i
  %i.lf = atomicrmw add ptr %i.le, i32 -1 acq_rel, align 4
  %i.lg = icmp eq i32 %i.lf, 1
  br i1 %i.lg, label %bb.bw, label %_ZN4ncnn3MatD2Ev.exit68.i

bb.bw:                                            ; preds = %bb.bv
  %i.lh = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !36 ; 3 uses
  %.not3.i81.i = icmp eq ptr %i.li, null
  %i.lj = load ptr, ptr %4, align 8, !tbaa !37    ; 3 uses
  br i1 %.not3.i81.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.lk = load ptr, ptr %i.li, align 8, !tbaa !29
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 24
  %i.lm = load ptr, ptr %i.ll, align 8
  invoke void %i.lm(ptr noundef nonnull align 8 dereferenceable(8) %i.li, ptr noundef %i.lj)
          to label %_ZN4ncnn3MatD2Ev.exit68.i unwind label %bb.ca, !inline_history !0

bb.by:                                            ; preds = %bb.bw
  %.not.i101.i = icmp eq ptr %i.lj, null
  br i1 %.not.i101.i, label %_ZN4ncnn3MatD2Ev.exit68.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @free(ptr noundef nonnull %i.lj) #12
  br label %_ZN4ncnn3MatD2Ev.exit68.i

bb.ca:                                            ; preds = %bb.bx
  %i.ln = landingpad { ptr, i32 }
          catch ptr null
  %i.lo = extractvalue { ptr, i32 } %i.ln, 0
  call void @__clang_call_terminate(ptr %i.lo) #33
  unreachable

_ZN4ncnn3MatD2Ev.exit68.i:                        ; preds = %bb.bz, %bb.by, %bb.bx, %bb.bv, %._crit_edge.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.cj

bb.cb:                                            ; preds = %bb.bt
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit67.i

bb.cc:                                            ; preds = %bb.bu
  %i.lq = landingpad { ptr, i32 }
          cleanup                                 ; 5 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !35 ; 2 uses
  %.not.i84.i = icmp eq ptr %i.ls, null
  br i1 %.not.i84.i, label %_ZN4ncnn3MatD2Ev.exit67.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.lt = atomicrmw add ptr %i.ls, i32 -1 acq_rel, align 4
  %i.lu = icmp eq i32 %i.lt, 1
  br i1 %i.lu, label %bb.ce, label %_ZN4ncnn3MatD2Ev.exit67.i

bb.ce:                                            ; preds = %bb.cd
  %i.lv = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !36 ; 3 uses
  %.not3.i85.i = icmp eq ptr %i.lw, null
  %i.lx = load ptr, ptr %4, align 8, !tbaa !37    ; 3 uses
  br i1 %.not3.i85.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ly = load ptr, ptr %i.lw, align 8, !tbaa !29
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 24
  %i.ma = load ptr, ptr %i.lz, align 8
  invoke void %i.ma(ptr noundef nonnull align 8 dereferenceable(8) %i.lw, ptr noundef %i.lx)
          to label %_ZN4ncnn3MatD2Ev.exit67.i unwind label %bb.ci, !inline_history !0

bb.cg:                                            ; preds = %bb.ce
  %.not.i99.i = icmp eq ptr %i.lx, null
  br i1 %.not.i99.i, label %_ZN4ncnn3MatD2Ev.exit67.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @free(ptr noundef nonnull %i.lx) #12
  br label %_ZN4ncnn3MatD2Ev.exit67.i

bb.ci:                                            ; preds = %bb.cf
  %i.mb = landingpad { ptr, i32 }
          catch ptr null
  %i.mc = extractvalue { ptr, i32 } %i.mb, 0
  call void @__clang_call_terminate(ptr %i.mc) #33
  unreachable

_ZN4ncnn3MatD2Ev.exit67.i:                        ; preds = %bb.cc, %bb.cd, %bb.cf, %bb.cg, %bb.ch, %bb.cb
  %.pn.pn.i = phi { ptr, i32 } [ %i.lp, %bb.cb ], [ %i.lq, %bb.ch ], [ %i.lq, %bb.cg ], [ %i.lq, %bb.cf ], [ %i.lq, %bb.cd ], [ %i.lq, %bb.cc ]
end_hunk_1
