inline.NumInlined: 12
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZNK4ncnn7Softmax15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.8:bb.a
  %.02935.i.epil.init = phi ptr [ %.02356, %.lr.ph.i ], [ %i.az, %.lr.ph40.i.preheader.unr-lcssa ]
  %.03234.i.epil.init = phi float [ f0xFF7FFFFF, %.lr.ph.i ], [ %.sroa.speculated.i.7, %.lr.ph40.i.preheader.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod81)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.02935.i.epil = phi ptr [ %.02935.i.epil.init, %.epil.preheader ], [ %i.bb, %bb.c ] ; 2 uses
  %.03234.i.epil = phi float [ %.03234.i.epil.init, %.epil.preheader ], [ %.sroa.speculated.i.epil, %bb.c ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ba = load float, ptr %.02935.i.epil, align 4, !tbaa !39
  %.sroa.speculated.i.epil = call nnan ninf nsz float @llvm.maxnum.f32(float %.03234.i.epil, float %i.ba) ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.02935.i.epil, i64 %i.aa
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph40.i.preheader, label %bb.c, !llvm.loop !107

.lr.ph40.i.preheader:                             ; preds = %bb.c, %.lr.ph40.i.preheader.unr-lcssa
  %.sroa.speculated.i.lcssa = phi float [ %.sroa.speculated.i.7, %.lr.ph40.i.preheader.unr-lcssa ], [ %.sroa.speculated.i.epil, %bb.c ] ; 5 uses
  br i1 %i.ag, label %.lr.ph40.i.epil.preheader, label %.lr.ph40.i

.lr.ph40.i:                                       ; preds = %.lr.ph40.i.preheader, %.lr.ph40.i
  %.02638.i = phi ptr [ %i.bv, %.lr.ph40.i ], [ %.02356, %.lr.ph40.i.preheader ] ; 3 uses
  %.02737.i = phi float [ %i.bu, %.lr.ph40.i ], [ 0.000000e+00, %.lr.ph40.i.preheader ]
  %niter88 = phi i32 [ %niter88.next.3, %.lr.ph40.i ], [ 0, %.lr.ph40.i.preheader ]
  %i.bc = load float, ptr %.02638.i, align 4, !tbaa !39
  %i.bd = fsub fast float %i.bc, %.sroa.speculated.i.lcssa
  %i.be = call fast float @llvm.exp.f32(float %i.bd) ; 2 uses
  store float %i.be, ptr %.02638.i, align 4, !tbaa !39
  %i.bf = fadd fast float %i.be, %.02737.i
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.02638.i, i64 %i.aa ; 3 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !39
  %i.bi = fsub fast float %i.bh, %.sroa.speculated.i.lcssa
  %i.bj = call fast float @llvm.exp.f32(float %i.bi) ; 2 uses
  store float %i.bj, ptr %i.bg, align 4, !tbaa !39
  %i.bk = fadd fast float %i.bj, %i.bf
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.aa ; 3 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !39
  %i.bn = fsub fast float %i.bm, %.sroa.speculated.i.lcssa
  %i.bo = call fast float @llvm.exp.f32(float %i.bn) ; 2 uses
  store float %i.bo, ptr %i.bl, align 4, !tbaa !39
  %i.bp = fadd fast float %i.bo, %i.bk
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.aa ; 3 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !39
  %i.bs = fsub fast float %i.br, %.sroa.speculated.i.lcssa
  %i.bt = call fast float @llvm.exp.f32(float %i.bs) ; 2 uses
  store float %i.bt, ptr %i.bq, align 4, !tbaa !39
  %i.bu = fadd fast float %i.bt, %i.bp            ; 3 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aa ; 2 uses
  %niter88.next.3 = add nuw nsw i32 %niter88, 4   ; 2 uses
  %niter88.ncmp.3 = icmp eq i32 %niter88.next.3, %unroll_iter87
  br i1 %niter88.ncmp.3, label %.lr.ph44.i.preheader.unr-lcssa, label %.lr.ph40.i, !llvm.loop !59

.lr.ph44.i.preheader.unr-lcssa:                   ; preds = %.lr.ph40.i
  br i1 %lcmp.mod84.not, label %.lr.ph44.i.preheader, label %.lr.ph40.i.epil.preheader

.lr.ph40.i.epil.preheader:                        ; preds = %.lr.ph44.i.preheader.unr-lcssa, %.lr.ph40.i.preheader
  %.02638.i.epil.init = phi ptr [ %.02356, %.lr.ph40.i.preheader ], [ %i.bv, %.lr.ph44.i.preheader.unr-lcssa ]
  %.02737.i.epil.init = phi float [ 0.000000e+00, %.lr.ph40.i.preheader ], [ %i.bu, %.lr.ph44.i.preheader.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod86)
  br label %.lr.ph40.i.epil

.lr.ph40.i.epil:                                  ; preds = %.lr.ph40.i.epil, %.lr.ph40.i.epil.preheader
  %.02638.i.epil = phi ptr [ %i.ca, %.lr.ph40.i.epil ], [ %.02638.i.epil.init, %.lr.ph40.i.epil.preheader ] ; 3 uses
  %.02737.i.epil = phi float [ %i.bz, %.lr.ph40.i.epil ], [ %.02737.i.epil.init, %.lr.ph40.i.epil.preheader ]
  %epil.iter83 = phi i32 [ %epil.iter83.next, %.lr.ph40.i.epil ], [ 0, %.lr.ph40.i.epil.preheader ]
  %i.bw = load float, ptr %.02638.i.epil, align 4, !tbaa !39
  %i.bx = fsub fast float %i.bw, %.sroa.speculated.i.lcssa
  %i.by = call fast float @llvm.exp.f32(float %i.bx) ; 2 uses
  store float %i.by, ptr %.02638.i.epil, align 4, !tbaa !39
  %i.bz = fadd fast float %i.by, %.02737.i.epil   ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.02638.i.epil, i64 %i.aa
  %epil.iter83.next = add i32 %epil.iter83, 1     ; 2 uses
  %epil.iter83.cmp.not = icmp eq i32 %epil.iter83.next, %xtraiter82
  br i1 %epil.iter83.cmp.not, label %.lr.ph44.i.preheader, label %.lr.ph40.i.epil, !llvm.loop !108

.lr.ph44.i.preheader:                             ; preds = %.lr.ph40.i.epil, %.lr.ph44.i.preheader.unr-lcssa
  %.lcssa = phi float [ %i.bu, %.lr.ph44.i.preheader.unr-lcssa ], [ %i.bz, %.lr.ph40.i.epil ] ; 5 uses
  br i1 %i.ah, label %.lr.ph44.i.epil.preheader, label %.lr.ph44.i.preheader.new

.lr.ph44.i.preheader.new:                         ; preds = %.lr.ph44.i.preheader
  %i.cb = fdiv fast float 1.000000e+00, %.lcssa
  %i.cc = fdiv fast float 1.000000e+00, %.lcssa
  %i.cd = fdiv fast float 1.000000e+00, %.lcssa
  %i.ce = fdiv fast float 1.000000e+00, %.lcssa
  br label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %.lr.ph44.i, %.lr.ph44.i.preheader.new
  %.02442.i = phi ptr [ %.02356, %.lr.ph44.i.preheader.new ], [ %i.cq, %.lr.ph44.i ] ; 3 uses
  %niter94 = phi i32 [ 0, %.lr.ph44.i.preheader.new ], [ %niter94.next.3, %.lr.ph44.i ]
  %i.cf = load float, ptr %.02442.i, align 4, !tbaa !39
  %i.cg = fmul fast float %i.cf, %i.cb
  store float %i.cg, ptr %.02442.i, align 4, !tbaa !39
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.02442.i, i64 %i.aa ; 3 uses
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !39
  %i.cj = fmul fast float %i.ci, %i.cc
  store float %i.cj, ptr %i.ch, align 4, !tbaa !39
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.aa ; 3 uses
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !39
  %i.cm = fmul fast float %i.cl, %i.cd
  store float %i.cm, ptr %i.ck, align 4, !tbaa !39
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.aa ; 3 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !39
  %i.cp = fmul fast float %i.co, %i.ce
  store float %i.cp, ptr %i.cn, align 4, !tbaa !39
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.aa ; 2 uses
  %niter94.next.3 = add nuw nsw i32 %niter94, 4   ; 2 uses
  %niter94.ncmp.3 = icmp eq i32 %niter94.next.3, %unroll_iter93
  br i1 %niter94.ncmp.3, label %_ZN4ncnnL7softmaxEPfii.exit.loopexit.unr-lcssa, label %.lr.ph44.i, !llvm.loop !61

_ZN4ncnnL7softmaxEPfii.exit.loopexit.unr-lcssa:   ; preds = %.lr.ph44.i
  br i1 %lcmp.mod91.not, label %_ZN4ncnnL7softmaxEPfii.exit.loopexit, label %.lr.ph44.i.epil.preheader

.lr.ph44.i.epil.preheader:                        ; preds = %_ZN4ncnnL7softmaxEPfii.exit.loopexit.unr-lcssa, %.lr.ph44.i.preheader
  %.02442.i.epil.init = phi ptr [ %.02356, %.lr.ph44.i.preheader ], [ %i.cq, %_ZN4ncnnL7softmaxEPfii.exit.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod92)
  %i.cr = fdiv fast float 1.000000e+00, %.lcssa
  br label %.lr.ph44.i.epil

.lr.ph44.i.epil:                                  ; preds = %.lr.ph44.i.epil, %.lr.ph44.i.epil.preheader
  %.02442.i.epil = phi ptr [ %i.cu, %.lr.ph44.i.epil ], [ %.02442.i.epil.init, %.lr.ph44.i.epil.preheader ] ; 3 uses
  %epil.iter90 = phi i32 [ %epil.iter90.next, %.lr.ph44.i.epil ], [ 0, %.lr.ph44.i.epil.preheader ]
  %i.cs = load float, ptr %.02442.i.epil, align 4, !tbaa !39
  %i.ct = fmul fast float %i.cs, %i.cr
  store float %i.ct, ptr %.02442.i.epil, align 4, !tbaa !39
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.02442.i.epil, i64 %i.aa
  %epil.iter90.next = add i32 %epil.iter90, 1     ; 2 uses
  %epil.iter90.cmp.not = icmp eq i32 %epil.iter90.next, %xtraiter89
  br i1 %epil.iter90.cmp.not, label %_ZN4ncnnL7softmaxEPfii.exit.loopexit, label %.lr.ph44.i.epil, !llvm.loop !109

_ZN4ncnnL7softmaxEPfii.exit.loopexit:             ; preds = %.lr.ph44.i.epil, %_ZN4ncnnL7softmaxEPfii.exit.loopexit.unr-lcssa
  %i.cv = getelementptr inbounds nuw i8, ptr %.02356, i64 4
  %i.cw = add nuw nsw i32 %.057, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.cw, %i.y
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !110

._crit_edge64.split:                              ; preds = %._crit_edge59, %.preheader.lr.ph, %.preheader.lr.ph.split.split, %.preheader.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge64.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn7Softmax15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.9(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !34     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !34
  %i.h = load i32, ptr %0, align 4, !tbaa !34     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !34
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !34
  %i.k = load i32, ptr %i.a, align 4, !tbaa !34   ; 2 uses
  %.not39 = icmp sgt i32 %i.k, %i.j
  br i1 %.not39, label %._crit_edge.split41, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !38, !noalias !111
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !72, !noalias !111
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !65, !noalias !111
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load i32, ptr %4, align 4, !tbaa !34     ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.noexc.lr.ph.split, label %._crit_edge.split41

.noexc.lr.ph.split:                               ; preds = %.noexc.lr.ph
  %i.s = load i32, ptr %5, align 4, !tbaa !34     ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.noexc.lr.ph.split.split, label %._crit_edge.split41

.noexc.lr.ph.split.split:                         ; preds = %.noexc.lr.ph.split
  %i.u = load i32, ptr %6, align 4, !tbaa !34     ; 11 uses
  %i.v = icmp sgt i32 %i.u, 0
  %i.w = sext i32 %i.u to i64
  br i1 %i.v, label %.noexc.us.preheader, label %._crit_edge.split41

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.split
  %i.x = sext i32 %i.k to i64
  %i.y = add nsw i32 %i.j, 1
  %i.z = zext nneg i32 %i.u to i64                ; 2 uses
  %min.iters.check79 = icmp ult i32 %i.u, 8
  %n.vec81 = and i64 %i.z, 2147483640             ; 4 uses
  %i.aa = trunc nuw nsw i64 %n.vec81 to i32
  %i.ab = shl nuw nsw i64 %n.vec81, 2
  %cmp.n91 = icmp eq i64 %n.vec81, %i.z
  %i.ac = zext nneg i32 %i.u to i64               ; 2 uses
  %min.iters.check62 = icmp ult i32 %i.u, 8
  %n.vec64 = and i64 %i.ac, 2147483640            ; 4 uses
  %i.ad = trunc nuw nsw i64 %n.vec64 to i32
  %i.ae = shl nuw nsw i64 %n.vec64, 2
  %cmp.n75 = icmp eq i64 %n.vec64, %i.ac
  %i.af = zext nneg i32 %i.u to i64               ; 2 uses
  %min.iters.check = icmp ult i32 %i.u, 4
  %n.vec = and i64 %i.af, 2147483644              ; 4 uses
  %i.ag = trunc nuw nsw i64 %n.vec to i32
  %i.ah = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %i.af
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._crit_edge36.split38.us.us
  %indvars.iv = phi i64 [ %i.x, %.noexc.us.preheader ], [ %indvars.iv.next, %._crit_edge36.split38.us.us ] ; 2 uses
  %.reass.us = mul i64 %factor.op.mul, %indvars.iv
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass.us
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge.split.us.us.us, %.noexc.us
  %.02235.us.us = phi i32 [ 0, %.noexc.us ], [ %8, %._crit_edge.split.us.us.us ]
  %.02334.us.us = phi ptr [ %i.ai, %.noexc.us ], [ %i.bj, %._crit_edge.split.us.us.us ]
  br label %.lr.ph.i.preheader.us.us.us

.lr.ph.i.preheader.us.us.us:                      ; preds = %_ZN4ncnnL7softmaxEPfi.exit.loopexit.us.us.us, %.preheader.us.us
  %.033.us.us.us = phi i32 [ 0, %.preheader.us.us ], [ %7, %_ZN4ncnnL7softmaxEPfi.exit.loopexit.us.us.us ]
  %.132.us.us.us = phi ptr [ %.02334.us.us, %.preheader.us.us ], [ %i.bj, %_ZN4ncnnL7softmaxEPfi.exit.loopexit.us.us.us ] ; 10 uses
  br i1 %min.iters.check79, label %.lr.ph.i.us.us.us.preheader, label %vector.ph80

vector.ph80:                                      ; preds = %.lr.ph.i.preheader.us.us.us
  %i.aj = getelementptr i8, ptr %.132.us.us.us, i64 %i.ab
  br label %vector.body82

vector.body82:                                    ; preds = %vector.body82, %vector.ph80
  %index83 = phi i64 [ 0, %vector.ph80 ], [ %index.next89, %vector.body82 ] ; 2 uses
  %vec.phi84 = phi <4 x float> [ splat (float f0xFF7FFFFF), %vector.ph80 ], [ %i.am, %vector.body82 ]
  %vec.phi85 = phi <4 x float> [ splat (float f0xFF7FFFFF), %vector.ph80 ], [ %i.an, %vector.body82 ]
  %i.ak = shl i64 %index83, 2
  %next.gep86 = getelementptr i8, ptr %.132.us.us.us, i64 %i.ak ; 2 uses
  %i.al = getelementptr i8, ptr %next.gep86, i64 16
  %wide.load87 = load <4 x float>, ptr %next.gep86, align 4, !tbaa !39
  %wide.load88 = load <4 x float>, ptr %i.al, align 4, !tbaa !39
  %i.am = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi84, <4 x float> %wide.load87) ; 2 uses
  %i.an = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi85, <4 x float> %wide.load88) ; 2 uses
  %index.next89 = add nuw i64 %index83, 8         ; 2 uses
  %i.ao = icmp eq i64 %index.next89, %n.vec81
  br i1 %i.ao, label %middle.block90, label %vector.body82, !llvm.loop !114

middle.block90:                                   ; preds = %vector.body82
  %rdx.minmax.select = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.am, <4 x float> %i.an)
  %i.ap = call nnan ninf nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax.select) ; 2 uses
  br i1 %cmp.n91, label %.lr.ph35.i.preheader.us.us.us, label %.lr.ph.i.us.us.us.preheader

.lr.ph.i.us.us.us.preheader:                      ; preds = %.lr.ph.i.preheader.us.us.us, %middle.block90
  %.02331.i.us.us.us.ph = phi i32 [ 0, %.lr.ph.i.preheader.us.us.us ], [ %i.aa, %middle.block90 ]
  %.02430.i.us.us.us.ph = phi ptr [ %.132.us.us.us, %.lr.ph.i.preheader.us.us.us ], [ %i.aj, %middle.block90 ]
  %.02729.i.us.us.us.ph = phi float [ f0xFF7FFFFF, %.lr.ph.i.preheader.us.us.us ], [ %i.ap, %middle.block90 ]
  br label %.lr.ph.i.us.us.us

.lr.ph.i.us.us.us:                                ; preds = %.lr.ph.i.us.us.us.preheader, %.lr.ph.i.us.us.us
  %.02331.i.us.us.us = phi i32 [ %i.as, %.lr.ph.i.us.us.us ], [ %.02331.i.us.us.us.ph, %.lr.ph.i.us.us.us.preheader ]
  %.02430.i.us.us.us = phi ptr [ %i.aq, %.lr.ph.i.us.us.us ], [ %.02430.i.us.us.us.ph, %.lr.ph.i.us.us.us.preheader ] ; 2 uses
  %.02729.i.us.us.us = phi float [ %.sroa.speculated.i.us.us.us, %.lr.ph.i.us.us.us ], [ %.02729.i.us.us.us.ph, %.lr.ph.i.us.us.us.preheader ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.02430.i.us.us.us, i64 4
  %i.ar = load float, ptr %.02430.i.us.us.us, align 4, !tbaa !39
  %.sroa.speculated.i.us.us.us = call nnan ninf nsz float @llvm.maxnum.f32(float %.02729.i.us.us.us, float %i.ar) ; 2 uses
  %i.as = add nuw nsw i32 %.02331.i.us.us.us, 1   ; 2 uses
  %exitcond.not.i.us.us.us = icmp eq i32 %i.as, %i.u
  br i1 %exitcond.not.i.us.us.us, label %.lr.ph35.i.preheader.us.us.us, label %.lr.ph.i.us.us.us, !llvm.loop !115

.lr.ph35.i.us.us.us:                              ; preds = %.lr.ph35.i.us.us.us.preheader, %.lr.ph35.i.us.us.us
  %.02034.i.us.us.us = phi i32 [ %i.ay, %.lr.ph35.i.us.us.us ], [ %.02034.i.us.us.us.ph, %.lr.ph35.i.us.us.us.preheader ]
  %.02133.i.us.us.us = phi ptr [ %i.ax, %.lr.ph35.i.us.us.us ], [ %.02133.i.us.us.us.ph, %.lr.ph35.i.us.us.us.preheader ] ; 3 uses
  %.02232.i.us.us.us = phi float [ %i.aw, %.lr.ph35.i.us.us.us ], [ %.02232.i.us.us.us.ph, %.lr.ph35.i.us.us.us.preheader ]
  %i.at = load float, ptr %.02133.i.us.us.us, align 4, !tbaa !39
  %i.au = fsub fast float %i.at, %.sroa.speculated.i.us.us.us.lcssa
  %i.av = call fast float @llvm.exp.f32(float %i.au) ; 2 uses
  store float %i.av, ptr %.02133.i.us.us.us, align 4, !tbaa !39
  %i.aw = fadd fast float %i.av, %.02232.i.us.us.us ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.02133.i.us.us.us, i64 4
  %i.ay = add nuw nsw i32 %.02034.i.us.us.us, 1   ; 2 uses
  %exitcond40.not.i.us.us.us = icmp eq i32 %i.ay, %i.u
  br i1 %exitcond40.not.i.us.us.us, label %.lr.ph39.i.preheader.us.us.us, label %.lr.ph35.i.us.us.us, !llvm.loop !116

.lr.ph39.i.us.us.us:                              ; preds = %.lr.ph39.i.us.us.us.preheader, %.lr.ph39.i.us.us.us
  %.038.i.us.us.us = phi i32 [ %i.bc, %.lr.ph39.i.us.us.us ], [ %.038.i.us.us.us.ph, %.lr.ph39.i.us.us.us.preheader ]
  %.01937.i.us.us.us = phi ptr [ %i.az, %.lr.ph39.i.us.us.us ], [ %.01937.i.us.us.us.ph, %.lr.ph39.i.us.us.us.preheader ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.01937.i.us.us.us, i64 4
  %i.ba = load float, ptr %.01937.i.us.us.us, align 4, !tbaa !39
  %i.bb = fmul fast float %i.ba, %i.bi
  store float %i.bb, ptr %.01937.i.us.us.us, align 4, !tbaa !39
  %i.bc = add nuw nsw i32 %.038.i.us.us.us, 1     ; 2 uses
  %exitcond41.not.i.us.us.us = icmp eq i32 %i.bc, %i.u
  br i1 %exitcond41.not.i.us.us.us, label %_ZN4ncnnL7softmaxEPfi.exit.loopexit.us.us.us, label %.lr.ph39.i.us.us.us, !llvm.loop !117

.lr.ph39.i.preheader.us.us.us:                    ; preds = %.lr.ph35.i.us.us.us, %middle.block74
  %.lcssa = phi float [ %i.bu, %middle.block74 ], [ %i.aw, %.lr.ph35.i.us.us.us ] ; 2 uses
  br i1 %min.iters.check, label %.lr.ph39.i.us.us.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph39.i.preheader.us.us.us
  %i.bd = getelementptr i8, ptr %.132.us.us.us, i64 %i.ah
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.lcssa, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.be = fdiv fast <4 x float> splat (float 1.000000e+00), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bf = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.132.us.us.us, i64 %i.bf ; 2 uses
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !39
  %i.bg = fmul fast <4 x float> %wide.load, %i.be
  store <4 x float> %i.bg, ptr %next.gep, align 4, !tbaa !39
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !118

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN4ncnnL7softmaxEPfi.exit.loopexit.us.us.us, label %.lr.ph39.i.us.us.us.preheader

.lr.ph39.i.us.us.us.preheader:                    ; preds = %.lr.ph39.i.preheader.us.us.us, %middle.block
  %.038.i.us.us.us.ph = phi i32 [ 0, %.lr.ph39.i.preheader.us.us.us ], [ %i.ag, %middle.block ]
  %.01937.i.us.us.us.ph = phi ptr [ %.132.us.us.us, %.lr.ph39.i.preheader.us.us.us ], [ %i.bd, %middle.block ]
  %i.bi = fdiv fast float 1.000000e+00, %.lcssa
  br label %.lr.ph39.i.us.us.us

_ZN4ncnnL7softmaxEPfi.exit.loopexit.us.us.us:     ; preds = %.lr.ph39.i.us.us.us, %middle.block
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.132.us.us.us, i64 %i.w ; 2 uses
  %7 = add nuw nsw i32 %.033.us.us.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %7, %i.s
  br i1 %exitcond.not, label %._crit_edge.split.us.us.us, label %.lr.ph.i.preheader.us.us.us, !llvm.loop !119

.lr.ph35.i.preheader.us.us.us:                    ; preds = %.lr.ph.i.us.us.us, %middle.block90
  %.sroa.speculated.i.us.us.us.lcssa = phi float [ %i.ap, %middle.block90 ], [ %.sroa.speculated.i.us.us.us, %.lr.ph.i.us.us.us ] ; 2 uses
  br i1 %min.iters.check62, label %.lr.ph35.i.us.us.us.preheader, label %vector.ph63

vector.ph63:                                      ; preds = %.lr.ph35.i.preheader.us.us.us
  %i.bk = getelementptr i8, ptr %.132.us.us.us, i64 %i.ae
  %broadcast.splatinsert65 = insertelement <4 x float> poison, float %.sroa.speculated.i.us.us.us.lcssa, i64 0
  %broadcast.splat66 = shufflevector <4 x float> %broadcast.splatinsert65, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body67

vector.body67:                                    ; preds = %vector.body67, %vector.ph63
  %index68 = phi i64 [ 0, %vector.ph63 ], [ %index.next73, %vector.body67 ] ; 2 uses
  %vec.phi = phi <4 x float> [ zeroinitializer, %vector.ph63 ], [ %i.br, %vector.body67 ]
  %vec.phi69 = phi <4 x float> [ zeroinitializer, %vector.ph63 ], [ %i.bs, %vector.body67 ]
  %i.bl = shl i64 %index68, 2
  %next.gep70 = getelementptr i8, ptr %.132.us.us.us, i64 %i.bl ; 3 uses
  %i.bm = getelementptr i8, ptr %next.gep70, i64 16 ; 2 uses
  %wide.load71 = load <4 x float>, ptr %next.gep70, align 4, !tbaa !39
  %wide.load72 = load <4 x float>, ptr %i.bm, align 4, !tbaa !39
  %i.bn = fsub fast <4 x float> %wide.load71, %broadcast.splat66
  %i.bo = fsub fast <4 x float> %wide.load72, %broadcast.splat66
  %i.bp = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.bn) ; 2 uses
  %i.bq = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.bo) ; 2 uses
  store <4 x float> %i.bp, ptr %next.gep70, align 4, !tbaa !39
  store <4 x float> %i.bq, ptr %i.bm, align 4, !tbaa !39
  %i.br = fadd fast <4 x float> %i.bp, %vec.phi   ; 2 uses
  %i.bs = fadd fast <4 x float> %i.bq, %vec.phi69 ; 2 uses
  %index.next73 = add nuw i64 %index68, 8         ; 2 uses
  %i.bt = icmp eq i64 %index.next73, %n.vec64
  br i1 %i.bt, label %middle.block74, label %vector.body67, !llvm.loop !120

middle.block74:                                   ; preds = %vector.body67
  %bin.rdx = fadd fast <4 x float> %i.bs, %i.br
  %i.bu = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx) ; 2 uses
  br i1 %cmp.n75, label %.lr.ph39.i.preheader.us.us.us, label %.lr.ph35.i.us.us.us.preheader

.lr.ph35.i.us.us.us.preheader:                    ; preds = %.lr.ph35.i.preheader.us.us.us, %middle.block74
  %.02034.i.us.us.us.ph = phi i32 [ 0, %.lr.ph35.i.preheader.us.us.us ], [ %i.ad, %middle.block74 ]
  %.02133.i.us.us.us.ph = phi ptr [ %.132.us.us.us, %.lr.ph35.i.preheader.us.us.us ], [ %i.bk, %middle.block74 ]
  %.02232.i.us.us.us.ph = phi float [ 0.000000e+00, %.lr.ph35.i.preheader.us.us.us ], [ %i.bu, %middle.block74 ]
  br label %.lr.ph35.i.us.us.us

._crit_edge.split.us.us.us:                       ; preds = %_ZN4ncnnL7softmaxEPfi.exit.loopexit.us.us.us
  %8 = add nuw nsw i32 %.02235.us.us, 1           ; 2 uses
  %exitcond48.not = icmp eq i32 %8, %i.q
  br i1 %exitcond48.not, label %._crit_edge36.split38.us.us, label %.preheader.us.us, !llvm.loop !121

._crit_edge36.split38.us.us:                      ; preds = %._crit_edge.split.us.us.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond50.not = icmp eq i32 %i.y, %lftr.wideiv
  br i1 %exitcond50.not, label %._crit_edge.split41, label %.noexc.us

._crit_edge.split41:                              ; preds = %._crit_edge36.split38.us.us, %.noexc.lr.ph.split.split, %.noexc.lr.ph, %.noexc.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.split41, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmax.v4f32(<4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { builtin nounwind }
attributes #13 = { cold }

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
!9 = !{!10, !6, i64 208}
!10 = !{!"_ZTSN4ncnn7SoftmaxE", !11, i64 0, !6, i64 208}
!11 = !{!"_ZTSN4ncnn5LayerE", !12, i64 8, !12, i64 9, !12, i64 10, !12, i64 11, !12, i64 12, !12, i64 13, !12, i64 14, !12, i64 15, !12, i64 16, !12, i64 17, !12, i64 18, !12, i64 19, !12, i64 20, !12, i64 21, !12, i64 22, !12, i64 23, !12, i64 24, !12, i64 25, !12, i64 26, !12, i64 27, !6, i64 28, !13, i64 32, !6, i64 40, !14, i64 48, !14, i64 80, !18, i64 112, !18, i64 136, !23, i64 160, !23, i64 184}
!12 = !{!"bool", !7, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !17, i64 8, !7, i64 16}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !16, i64 0}
!16 = !{!"p1 omnipotent char", !13, i64 0}
!17 = !{!"long", !7, i64 0}
!18 = !{!"_ZTSSt6vectorIiSaIiEE", !19, i64 0}
!19 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !20, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !21, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !22, i64 0, !22, i64 8, !22, i64 16}
!22 = !{!"p1 int", !13, i64 0}
!23 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !24, i64 0}
!24 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !25, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !26, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!27 = !{!"p1 _ZTSN4ncnn3MatE", !13, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!30 = !{!31, !6, i64 40}
!31 = !{!"_ZTSN4ncnn3MatE", !13, i64 0, !22, i64 8, !17, i64 16, !6, i64 24, !32, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !17, i64 64}
!32 = !{!"p1 _ZTSN4ncnn9AllocatorE", !13, i64 0}
!33 = !{!31, !6, i64 44}
!34 = !{!6, !6, i64 0}
!35 = !{!31, !6, i64 48}
!36 = !{!31, !6, i64 52}
!37 = !{!31, !6, i64 56}
!38 = !{!31, !13, i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"float", !7, i64 0}
!41 = distinct !{!41, !42, !43, !44}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!"llvm.loop.isvectorized", i32 1}
!44 = !{!"llvm.loop.unroll.runtime.disable"}
!45 = distinct !{!45, !42, !44, !43}
!46 = distinct !{!46, !42, !43, !44}
!47 = distinct !{!47, !42, !44, !43}
!48 = distinct !{!48, !42, !43, !44}
!49 = distinct !{!49, !42, !44, !43}
!50 = !{!51, !6, i64 4}
!51 = !{!"_ZTSN4ncnn6OptionE", !12, i64 0, !12, i64 1, !12, i64 2, !12, i64 3, !6, i64 4, !32, i64 8, !32, i64 16, !6, i64 24, !12, i64 28, !12, i64 29, !12, i64 30, !12, i64 31, !12, i64 32, !12, i64 33, !12, i64 34, !12, i64 35, !12, i64 36, !12, i64 37, !12, i64 38, !12, i64 39, !6, i64 40, !12, i64 44, !12, i64 45, !12, i64 46, !12, i64 47, !7, i64 48, !12, i64 49, !12, i64 50, !12, i64 51, !12, i64 52, !12, i64 53, !12, i64 54, !12, i64 55, !12, i64 56, !12, i64 57, !12, i64 58, !12, i64 59, !12, i64 60, !12, i64 61, !12, i64 62, !12, i64 63}
!52 = !{!53, !53, i64 0}
!53 = !{!"vtable pointer", !8, i64 0}
!54 = !{!11, !12, i64 8}
!55 = !{!11, !12, i64 9}
!56 = distinct !{!56, !42}
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = distinct !{!59, !42}
!60 = distinct !{!60, !58}
!61 = distinct !{!61, !42}
!62 = distinct !{!62, !58}
!63 = !{!64}
!64 = !{i64 2, i64 -1, i64 -1, i1 true}
!65 = !{!31, !17, i64 16}
!66 = distinct !{!66, !42, !43, !44}
!67 = distinct !{!67, !42, !44, !43}
!68 = distinct !{!68, !42, !43, !44}
!69 = distinct !{!69, !42, !44, !43}
!70 = distinct !{!70, !42, !43, !44}
!71 = distinct !{!71, !42, !44, !43}
!72 = !{!31, !17, i64 64}
!73 = distinct !{!73, !58}
!74 = distinct !{!74, !58}
!75 = distinct !{!75, !58}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!78 = distinct !{!78, !"_ZN4ncnn3Mat7channelEi"}
!79 = distinct !{!79, !58}
!80 = distinct !{!80, !58}
!81 = distinct !{!81, !58}
!82 = distinct !{!82, !42}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!85 = distinct !{!85, !"_ZN4ncnn3Mat7channelEi"}
!86 = distinct !{!86, !42, !43, !44}
!87 = distinct !{!87, !42, !44, !43}
!88 = distinct !{!88, !42, !43, !44}
!89 = distinct !{!89, !42, !44, !43}
!90 = distinct !{!90, !42, !43, !44}
!91 = distinct !{!91, !42, !44, !43}
!92 = distinct !{!92, !42}
!93 = distinct !{!93, !58}
!94 = distinct !{!94, !58}
!95 = distinct !{!95, !58}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!98 = distinct !{!98, !"_ZN4ncnn3Mat7channelEi"}
!99 = distinct !{!99, !58}
!100 = distinct !{!100, !58}
!101 = distinct !{!101, !58}
!102 = distinct !{!102, !42}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!105 = distinct !{!105, !"_ZN4ncnn3Mat7channelEi"}
!106 = distinct !{!106, !42}
!107 = distinct !{!107, !58}
!108 = distinct !{!108, !58}
!109 = distinct !{!109, !58}
!110 = distinct !{!110, !42}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!113 = distinct !{!113, !"_ZN4ncnn3Mat7channelEi"}
!114 = distinct !{!114, !42, !43, !44}
!115 = distinct !{!115, !42, !44, !43}
!116 = distinct !{!116, !42, !44, !43}
!117 = distinct !{!117, !42, !44, !43}
!118 = distinct !{!118, !42, !43, !44}
!119 = distinct !{!119, !42}
!120 = distinct !{!120, !42, !43, !44}
!121 = distinct !{!121, !42}
end_hunk_0
