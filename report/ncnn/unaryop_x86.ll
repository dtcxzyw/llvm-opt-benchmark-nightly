inline.NumInlined: 57
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN4ncnnL16unary_op_inplaceINS_19UnaryOp_x86_functor14unary_op_rsqrtEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %.140 = phi i32 [ %i.bq, %.lr.ph41 ], [ %.140.ph, %.lr.ph41.preheader70 ]
  %.12639 = phi ptr [ %i.bp, %.lr.ph41 ], [ %.12639.ph, %.lr.ph41.preheader70 ] ; 3 uses
  %i.bm = load float, ptr %.12639, align 4, !tbaa !51
  %i.bn = call fast float @llvm.sqrt.f32(float %i.bm)
  %i.bo = fdiv fast float 1.000000e+00, %i.bn
  store float %i.bo, ptr %.12639, align 4, !tbaa !51
  %i.bp = getelementptr inbounds nuw i8, ptr %.12639, i64 4
  %i.bq = add nuw nsw i32 %.140, 1                ; 2 uses
  %exitcond51.not = icmp eq i32 %i.bq, %i.ar
  br i1 %exitcond51.not, label %._crit_edge, label %.lr.ph41, !llvm.loop !104

._crit_edge:                                      ; preds = %.lr.ph41, %middle.block, %.preheader
  %indvars.iv.next53 = add nsw i64 %indvars.iv52, 1 ; 2 uses
  %lftr.wideiv55 = trunc i64 %indvars.iv.next53 to i32
  %exitcond56.not = icmp eq i32 %i.q, %lftr.wideiv55
  br i1 %exitcond56.not, label %._crit_edge44, label %.noexc, !llvm.loop !105

._crit_edge44:                                    ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge44, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.rsqrt.ps(<4 x float>) #10

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_19UnaryOp_x86_functor12unary_op_expEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !40     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !40
  %i.h = load i32, ptr %0, align 4, !tbaa !40     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !40
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !40
  %i.k = load i32, ptr %i.a, align 4, !tbaa !40   ; 3 uses
  %.not65 = icmp sgt i32 %i.k, %i.j
  br i1 %.not65, label %._crit_edge67, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !40     ; 5 uses
  %i.o = icmp sgt i32 %i.n, 3
  br i1 %i.o, label %.noexc.preheader, label %.noexc.lr.ph.split.us

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  br label %.noexc

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.r = load ptr, ptr %3, align 8, !tbaa !46, !noalias !106
  %i.s = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !106
  %i.t = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !106
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.noexc.us.preheader, label %._crit_edge67

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.us
  %i.v = sext i32 %i.k to i64
  %i.w = add nsw i32 %i.j, 1
  %exitcond.not = icmp eq i32 %i.n, 1
  %exitcond.not.1 = icmp eq i32 %i.n, 2
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.v, %.noexc.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass ; 4 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !51
  %i.z = call fast noundef nofpclass(nan inf) float @llvm.exp.f32(float %i.y)
  store float %i.z, ptr %i.x, align 4, !tbaa !51
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %.noexc.us
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !51
  %i.ac = call fast noundef nofpclass(nan inf) float @llvm.exp.f32(float %i.ab)
  store float %i.ac, ptr %i.aa, align 4, !tbaa !51
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !51
  %i.af = call fast noundef nofpclass(nan inf) float @llvm.exp.f32(float %i.ae)
  store float %i.af, ptr %i.ad, align 4, !tbaa !51
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.d, %bb.c, %.noexc.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond73.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond73.not, label %._crit_edge67, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ag = phi i32 [ %i.n, %.noexc.preheader ], [ %i.ao, %._crit_edge ] ; 2 uses
  %indvars.iv75 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next76, %._crit_edge ] ; 2 uses
  %i.ah = load ptr, ptr %3, align 8, !tbaa !46, !noalias !106
  %i.ai = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !106
  %i.aj = mul i64 %i.ai, %indvars.iv75
  %i.ak = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !106
  %i.al = mul i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.al ; 2 uses
  %i.an = icmp sgt i32 %i.ag, 3
  br i1 %i.an, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.ao = phi i32 [ %i.ag, %.noexc ], [ %i.cj, %.lr.ph ] ; 4 uses
  %.025.lcssa = phi ptr [ %i.am, %.noexc ], [ %i.cg, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.ch, %.lr.ph ] ; 4 uses
  %i.ap = icmp slt i32 %.0.lcssa, %i.ao
  br i1 %i.ap, label %.lr.ph64.preheader, label %._crit_edge

.lr.ph64.preheader:                               ; preds = %.preheader
  %i.aq = xor i32 %.0.lcssa, -1
  %i.ar = add i32 %i.ao, %i.aq                    ; 2 uses
  %i.as = zext i32 %i.ar to i64
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ar, 3
  br i1 %min.iters.check, label %.lr.ph64.preheader93, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph64.preheader
  %n.vec = and i64 %i.at, 8589934588              ; 4 uses
  %i.au = trunc i64 %n.vec to i32
  %i.av = add i32 %.0.lcssa, %i.au
  %i.aw = shl nuw nsw i64 %n.vec, 2
  %i.ax = getelementptr i8, ptr %.025.lcssa, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.025.lcssa, i64 %i.ay ; 2 uses
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !51
  %i.az = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %wide.load)
  store <4 x float> %i.az, ptr %next.gep, align 4, !tbaa !51
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !109

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph64.preheader93

.lr.ph64.preheader93:                             ; preds = %.lr.ph64.preheader, %middle.block
  %.163.ph = phi i32 [ %.0.lcssa, %.lr.ph64.preheader ], [ %i.av, %middle.block ]
  %.12662.ph = phi ptr [ %.025.lcssa, %.lr.ph64.preheader ], [ %i.ax, %middle.block ]
  br label %.lr.ph64

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.059 = phi i32 [ %i.ch, %.lr.ph ], [ 0, %.noexc ]
  %.02558 = phi ptr [ %i.cg, %.lr.ph ], [ %i.am, %.noexc ] ; 3 uses
  %i.bb = load <4 x float>, ptr %.02558, align 16, !tbaa !57
  %i.bc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.bb, <4 x float> splat (float f0x42B0C0A5))
  %i.bd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bc, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.be = fmul fast <4 x float> %i.bd, splat (float f0x3FB8AA3B)
  %i.bf = fadd fast <4 x float> %i.be, splat (float 5.000000e-01) ; 2 uses
  %i.bg = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bf)
  %i.bh = sitofp fast <4 x i32> %i.bg to <4 x float> ; 2 uses
  %i.bi = fcmp fast olt <4 x float> %i.bf, %i.bh
  %i.bj = select <4 x i1> %i.bi, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.bk = fsub fast <4 x float> %i.bh, %i.bj      ; 2 uses
  %i.bl = fmul fast <4 x float> %i.bk, splat (float f0x3F317218)
  %i.bm = fsub fast <4 x float> %i.bd, %i.bl      ; 8 uses
  %i.bn = fmul fast <4 x float> %i.bm, %i.bm
  %i.bo = fmul fast <4 x float> %i.bm, splat (float f0x39506967)
  %i.bp = fadd fast <4 x float> %i.bo, splat (float f0x3AB743CE)
  %i.bq = fmul fast <4 x float> %i.bp, %i.bm
  %i.br = fadd fast <4 x float> %i.bq, splat (float f0x3C088908)
  %i.bs = fmul fast <4 x float> %i.br, %i.bm
  %i.bt = fadd fast <4 x float> %i.bs, splat (float f0x3D2AA9C1)
  %i.bu = fmul fast <4 x float> %i.bt, %i.bm
  %i.bv = fadd fast <4 x float> %i.bu, splat (float f0x3E2AAAAA)
  %i.bw = fmul fast <4 x float> %i.bv, %i.bm
  %i.bx = fadd fast <4 x float> %i.bw, splat (float 5.000000e-01)
  %i.by = fmul fast <4 x float> %i.bn, %i.bx
  %i.bz = fadd fast <4 x float> %i.bm, %i.by
  %i.ca = fadd fast <4 x float> %i.bz, splat (float 1.000000e+00)
  %i.cb = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bk)
  %i.cc = shl <4 x i32> %i.cb, splat (i32 23)
  %i.cd = add <4 x i32> %i.cc, splat (i32 1065353216)
  %i.ce = bitcast <4 x i32> %i.cd to <4 x float>
  %i.cf = fmul fast <4 x float> %i.ca, %i.ce
  store <4 x float> %i.cf, ptr %.02558, align 16, !tbaa !57
  %i.cg = getelementptr inbounds nuw i8, ptr %.02558, i64 16 ; 2 uses
  %i.ch = add nuw nsw i32 %.059, 4                ; 3 uses
  %i.ci = or disjoint i32 %i.ch, 3
  %i.cj = load i32, ptr %4, align 4, !tbaa !40    ; 2 uses
  %i.ck = icmp slt i32 %i.ci, %i.cj
  br i1 %i.ck, label %.lr.ph, label %.preheader, !llvm.loop !110

.lr.ph64:                                         ; preds = %.lr.ph64.preheader93, %.lr.ph64
  %.163 = phi i32 [ %i.co, %.lr.ph64 ], [ %.163.ph, %.lr.ph64.preheader93 ]
  %.12662 = phi ptr [ %i.cn, %.lr.ph64 ], [ %.12662.ph, %.lr.ph64.preheader93 ] ; 3 uses
  %i.cl = load float, ptr %.12662, align 4, !tbaa !51
  %i.cm = call fast noundef nofpclass(nan inf) float @llvm.exp.f32(float %i.cl)
  store float %i.cm, ptr %.12662, align 4, !tbaa !51
  %i.cn = getelementptr inbounds nuw i8, ptr %.12662, i64 4
  %i.co = add nuw nsw i32 %.163, 1                ; 2 uses
  %exitcond74.not = icmp eq i32 %i.co, %i.ao
  br i1 %exitcond74.not, label %._crit_edge, label %.lr.ph64, !llvm.loop !111

._crit_edge:                                      ; preds = %.lr.ph64, %middle.block, %.preheader
  %indvars.iv.next76 = add nsw i64 %indvars.iv75, 1 ; 2 uses
  %lftr.wideiv78 = trunc i64 %indvars.iv.next76 to i32
  %exitcond79.not = icmp eq i32 %i.q, %lftr.wideiv78
  br i1 %exitcond79.not, label %._crit_edge67, label %.noexc, !llvm.loop !112

._crit_edge67:                                    ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge67, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #9

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_19UnaryOp_x86_functor12unary_op_logEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !40     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !40
  %i.h = load i32, ptr %0, align 4, !tbaa !40     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !40
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !40
  %i.k = load i32, ptr %i.a, align 4, !tbaa !40   ; 3 uses
  %.not77 = icmp sgt i32 %i.k, %i.j
  br i1 %.not77, label %._crit_edge79, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !40     ; 5 uses
  %i.o = icmp sgt i32 %i.n, 3
  br i1 %i.o, label %.noexc.preheader, label %.noexc.lr.ph.split.us

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  br label %.noexc

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.r = load ptr, ptr %3, align 8, !tbaa !46, !noalias !113
  %i.s = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !113
  %i.t = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !113
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.noexc.us.preheader, label %._crit_edge79

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.us
  %i.v = sext i32 %i.k to i64
  %i.w = add nsw i32 %i.j, 1
  %exitcond.not = icmp eq i32 %i.n, 1
  %exitcond.not.1 = icmp eq i32 %i.n, 2
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.v, %.noexc.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass ; 4 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !51
  %i.z = call fast noundef nofpclass(nan inf) float @llvm.log.f32(float %i.y)
  store float %i.z, ptr %i.x, align 4, !tbaa !51
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %.noexc.us
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !51
  %i.ac = call fast noundef nofpclass(nan inf) float @llvm.log.f32(float %i.ab)
  store float %i.ac, ptr %i.aa, align 4, !tbaa !51
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !51
  %i.af = call fast noundef nofpclass(nan inf) float @llvm.log.f32(float %i.ae)
  store float %i.af, ptr %i.ad, align 4, !tbaa !51
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.d, %bb.c, %.noexc.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond85.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond85.not, label %._crit_edge79, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ag = phi i32 [ %i.n, %.noexc.preheader ], [ %i.ao, %._crit_edge ] ; 2 uses
  %indvars.iv87 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next88, %._crit_edge ] ; 2 uses
  %i.ah = load ptr, ptr %3, align 8, !tbaa !46, !noalias !113
  %i.ai = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !113
  %i.aj = mul i64 %i.ai, %indvars.iv87
  %i.ak = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !113
  %i.al = mul i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.al ; 2 uses
  %i.an = icmp sgt i32 %i.ag, 3
  br i1 %i.an, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.ao = phi i32 [ %i.ag, %.noexc ], [ %i.cp, %.lr.ph ] ; 4 uses
  %.025.lcssa = phi ptr [ %i.am, %.noexc ], [ %i.cm, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.cn, %.lr.ph ] ; 4 uses
  %i.ap = icmp slt i32 %.0.lcssa, %i.ao
  br i1 %i.ap, label %.lr.ph76.preheader, label %._crit_edge

.lr.ph76.preheader:                               ; preds = %.preheader
  %i.aq = xor i32 %.0.lcssa, -1
  %i.ar = add i32 %i.ao, %i.aq                    ; 2 uses
  %i.as = zext i32 %i.ar to i64
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ar, 3
  br i1 %min.iters.check, label %.lr.ph76.preheader105, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph76.preheader
  %n.vec = and i64 %i.at, 8589934588              ; 4 uses
  %i.au = trunc i64 %n.vec to i32
  %i.av = add i32 %.0.lcssa, %i.au
  %i.aw = shl nuw nsw i64 %n.vec, 2
  %i.ax = getelementptr i8, ptr %.025.lcssa, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.025.lcssa, i64 %i.ay ; 2 uses
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !51
  %i.az = call fast <4 x float> @llvm.log.v4f32(<4 x float> %wide.load)
  store <4 x float> %i.az, ptr %next.gep, align 4, !tbaa !51
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !116

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph76.preheader105

.lr.ph76.preheader105:                            ; preds = %.lr.ph76.preheader, %middle.block
  %.175.ph = phi i32 [ %.0.lcssa, %.lr.ph76.preheader ], [ %i.av, %middle.block ]
  %.12674.ph = phi ptr [ %.025.lcssa, %.lr.ph76.preheader ], [ %i.ax, %middle.block ]
  br label %.lr.ph76

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.071 = phi i32 [ %i.cn, %.lr.ph ], [ 0, %.noexc ]
  %.02570 = phi ptr [ %i.cm, %.lr.ph ], [ %i.am, %.noexc ] ; 3 uses
  %i.bb = load <4 x float>, ptr %.02570, align 16, !tbaa !57 ; 2 uses
  %i.bc = fcmp fast ole <4 x float> %i.bb, zeroinitializer
  %i.bd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bb, <4 x float> splat (float f0x00800000))
  %i.be = bitcast <4 x float> %i.bd to <4 x i32>  ; 2 uses
  %i.bf = lshr <4 x i32> %i.be, splat (i32 23)
  %i.bg = and <4 x i32> %i.be, splat (i32 -2139095041)
  %i.bh = or disjoint <4 x i32> %i.bg, splat (i32 1056964608)
  %i.bi = bitcast <4 x i32> %i.bh to <4 x float>  ; 3 uses
  %i.bj = add nsw <4 x i32> %i.bf, splat (i32 -127)
  %i.bk = sitofp fast <4 x i32> %i.bj to <4 x float> ; 2 uses
  %i.bl = fadd fast <4 x float> %i.bk, splat (float 1.000000e+00)
  %i.bm = fcmp fast olt <4 x float> %i.bi, splat (float f0x3F3504F3) ; 2 uses
  %i.bn = select <4 x i1> %i.bm, <4 x float> %i.bi, <4 x float> zeroinitializer
  %i.bo = fadd fast <4 x float> %i.bi, splat (float -1.000000e+00)
  %i.bp = select fast <4 x i1> %i.bm, <4 x float> %i.bk, <4 x float> %i.bl
  %i.bq = fadd fast <4 x float> %i.bo, %i.bn      ; 12 uses
  %i.br = fmul fast <4 x float> %i.bq, %i.bq      ; 2 uses
  %i.bs = fmul fast <4 x float> %i.bq, splat (float f0x3D9021BB)
  %i.bt = fadd fast <4 x float> %i.bs, splat (float f0xBDEBD1B8)
  %i.bu = fmul fast <4 x float> %i.bt, %i.bq
  %i.bv = fadd fast <4 x float> %i.bu, splat (float f0x3DEF251A)
  %i.bw = fmul fast <4 x float> %i.bv, %i.bq
  %i.bx = fadd fast <4 x float> %i.bw, splat (float f0xBDFE5D4F)
  %i.by = fmul fast <4 x float> %i.bx, %i.bq
  %i.bz = fadd fast <4 x float> %i.by, splat (float f0x3E11E9BF)
  %i.ca = fmul fast <4 x float> %i.bz, %i.bq
  %i.cb = fadd fast <4 x float> %i.ca, splat (float f0xBE2AAE50)
  %i.cc = fmul fast <4 x float> %i.cb, %i.bq
  %i.cd = fadd fast <4 x float> %i.cc, splat (float f0x3E4CCEAC)
  %i.ce = fmul fast <4 x float> %i.cd, %i.bq
  %i.cf = fadd fast <4 x float> %i.ce, splat (float f0xBE7FFFFC)
  %i.cg = fmul fast <4 x float> %i.cf, %i.bq
  %i.ch = fadd fast <4 x float> %i.cg, splat (float f0x3EAAAAAA)
  %i.ci = fmul fast <4 x float> %i.br, %i.bq
  %reass.mul.a = fmul fast <4 x float> %i.ci, %i.ch
  %.neg = fmul fast <4 x float> %i.br, splat (float -5.000000e-01)
  %reass.mul69 = fmul fast <4 x float> %i.bp, splat (float f0x3F317218)
  %6 = fadd fast <4 x float> %i.bq, %.neg
  %i.cj = fadd fast <4 x float> %reass.mul.a, %6
  %i.ck = fadd fast <4 x float> %i.cj, %reass.mul69
  %i.cl = select <4 x i1> %i.bc, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.ck
  store <4 x float> %i.cl, ptr %.02570, align 16, !tbaa !57
  %i.cm = getelementptr inbounds nuw i8, ptr %.02570, i64 16 ; 2 uses
  %i.cn = add nuw nsw i32 %.071, 4                ; 3 uses
  %i.co = or disjoint i32 %i.cn, 3
  %i.cp = load i32, ptr %4, align 4, !tbaa !40    ; 2 uses
  %i.cq = icmp slt i32 %i.co, %i.cp
  br i1 %i.cq, label %.lr.ph, label %.preheader, !llvm.loop !117

.lr.ph76:                                         ; preds = %.lr.ph76.preheader105, %.lr.ph76
  %.175 = phi i32 [ %i.cu, %.lr.ph76 ], [ %.175.ph, %.lr.ph76.preheader105 ]
  %.12674 = phi ptr [ %i.ct, %.lr.ph76 ], [ %.12674.ph, %.lr.ph76.preheader105 ] ; 3 uses
  %i.cr = load float, ptr %.12674, align 4, !tbaa !51
  %i.cs = call fast noundef nofpclass(nan inf) float @llvm.log.f32(float %i.cr)
  store float %i.cs, ptr %.12674, align 4, !tbaa !51
  %i.ct = getelementptr inbounds nuw i8, ptr %.12674, i64 4
  %i.cu = add nuw nsw i32 %.175, 1                ; 2 uses
  %exitcond86.not = icmp eq i32 %i.cu, %i.ao
  br i1 %exitcond86.not, label %._crit_edge, label %.lr.ph76, !llvm.loop !118

._crit_edge:                                      ; preds = %.lr.ph76, %middle.block, %.preheader
  %indvars.iv.next88 = add nsw i64 %indvars.iv87, 1 ; 2 uses
  %lftr.wideiv90 = trunc i64 %indvars.iv.next88 to i32
  %exitcond91.not = icmp eq i32 %i.q, %lftr.wideiv90
  br i1 %exitcond91.not, label %._crit_edge79, label %.noexc, !llvm.loop !119

._crit_edge79:                                    ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge79, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #9

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_19UnaryOp_x86_functor12unary_op_sinEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !40     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !40
  %i.h = load i32, ptr %0, align 4, !tbaa !40     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !40
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !40
  %i.k = load i32, ptr %i.a, align 4, !tbaa !40   ; 3 uses
  %.not77 = icmp sgt i32 %i.k, %i.j
  br i1 %.not77, label %._crit_edge79, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !40     ; 5 uses
  %i.o = icmp sgt i32 %i.n, 3
  br i1 %i.o, label %.noexc.preheader, label %.noexc.lr.ph.split.us

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  br label %.noexc

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.r = load ptr, ptr %3, align 8, !tbaa !46, !noalias !120
  %i.s = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !120
  %i.t = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !120
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.noexc.us.preheader, label %._crit_edge79

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.us
  %i.v = sext i32 %i.k to i64
  %i.w = add nsw i32 %i.j, 1
  %exitcond.not = icmp eq i32 %i.n, 1
  %exitcond.not.1 = icmp eq i32 %i.n, 2
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.v, %.noexc.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass ; 4 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !51
  %i.z = call fast noundef nofpclass(nan inf) float @llvm.sin.f32(float %i.y)
  store float %i.z, ptr %i.x, align 4, !tbaa !51
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %.noexc.us
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !51
  %i.ac = call fast noundef nofpclass(nan inf) float @llvm.sin.f32(float %i.ab)
  store float %i.ac, ptr %i.aa, align 4, !tbaa !51
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !51
  %i.af = call fast noundef nofpclass(nan inf) float @llvm.sin.f32(float %i.ae)
  store float %i.af, ptr %i.ad, align 4, !tbaa !51
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.d, %bb.c, %.noexc.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond85.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond85.not, label %._crit_edge79, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ag = phi i32 [ %i.n, %.noexc.preheader ], [ %i.ao, %._crit_edge ] ; 2 uses
  %indvars.iv87 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next88, %._crit_edge ] ; 2 uses
  %i.ah = load ptr, ptr %3, align 8, !tbaa !46, !noalias !120
  %i.ai = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !120
  %i.aj = mul i64 %i.ai, %indvars.iv87
  %i.ak = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !120
  %i.al = mul i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.al ; 2 uses
  %i.an = icmp sgt i32 %i.ag, 3
  br i1 %i.an, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.ao = phi i32 [ %i.ag, %.noexc ], [ %i.ci, %.lr.ph ] ; 4 uses
  %.025.lcssa = phi ptr [ %i.am, %.noexc ], [ %i.cf, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.cg, %.lr.ph ] ; 4 uses
  %i.ap = icmp slt i32 %.0.lcssa, %i.ao
  br i1 %i.ap, label %.lr.ph76.preheader, label %._crit_edge

.lr.ph76.preheader:                               ; preds = %.preheader
  %i.aq = xor i32 %.0.lcssa, -1
  %i.ar = add i32 %i.ao, %i.aq                    ; 2 uses
  %i.as = zext i32 %i.ar to i64
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ar, 3
  br i1 %min.iters.check, label %.lr.ph76.preheader105, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph76.preheader
  %n.vec = and i64 %i.at, 8589934588              ; 4 uses
  %i.au = trunc i64 %n.vec to i32
  %i.av = add i32 %.0.lcssa, %i.au
  %i.aw = shl nuw nsw i64 %n.vec, 2
  %i.ax = getelementptr i8, ptr %.025.lcssa, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.025.lcssa, i64 %i.ay ; 2 uses
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !51
  %i.az = call fast <4 x float> @llvm.sin.v4f32(<4 x float> %wide.load)
  store <4 x float> %i.az, ptr %next.gep, align 4, !tbaa !51
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph76.preheader105

.lr.ph76.preheader105:                            ; preds = %.lr.ph76.preheader, %middle.block
  %.175.ph = phi i32 [ %.0.lcssa, %.lr.ph76.preheader ], [ %i.av, %middle.block ]
  %.12674.ph = phi ptr [ %.025.lcssa, %.lr.ph76.preheader ], [ %i.ax, %middle.block ]
  br label %.lr.ph76

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.071 = phi i32 [ %i.cg, %.lr.ph ], [ 0, %.noexc ]
  %.02570 = phi ptr [ %i.cf, %.lr.ph ], [ %i.am, %.noexc ] ; 3 uses
  %i.bb = load <4 x i32>, ptr %.02570, align 16, !tbaa !57 ; 2 uses
  %i.bc = and <4 x i32> %i.bb, splat (i32 2147483647)
  %i.bd = bitcast <4 x i32> %i.bc to <4 x float>  ; 2 uses
  %i.be = fmul fast <4 x float> %i.bd, splat (float f0x3FA2F983)
  %i.bf = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.be)
  %i.bg = add <4 x i32> %i.bf, splat (i32 1)      ; 3 uses
  %i.bh = and <4 x i32> %i.bg, splat (i32 -2)
  %i.bi = sitofp fast <4 x i32> %i.bh to <4 x float>
  %i.bj = shl <4 x i32> %i.bg, splat (i32 29)
  %i.bk = and <4 x i32> %i.bg, splat (i32 2)
  %.not66 = icmp eq <4 x i32> %i.bk, zeroinitializer
  %i.bl = xor <4 x i32> %i.bj, %i.bb
  %i.bm = and <4 x i32> %i.bl, splat (i32 -2147483648)
  %reass.mul.a = fmul fast <4 x float> %i.bi, splat (float f0xBF490FDB)
end_hunk_0
begin_hunk_1_@_ZN4ncnnL16unary_op_inplaceINS_19UnaryOp_x86_functor19unary_op_reciprocalEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  br i1 %i.bh, label %.lr.ph, label %.preheader, !llvm.loop !166

.lr.ph41:                                         ; preds = %.lr.ph41.preheader70, %.lr.ph41
  %.140 = phi i32 [ %i.bl, %.lr.ph41 ], [ %.140.ph, %.lr.ph41.preheader70 ]
  %.12639 = phi ptr [ %i.bk, %.lr.ph41 ], [ %.12639.ph, %.lr.ph41.preheader70 ] ; 3 uses
  %i.bi = load float, ptr %.12639, align 4, !tbaa !51
  %i.bj = fdiv fast float 1.000000e+00, %i.bi
  store float %i.bj, ptr %.12639, align 4, !tbaa !51
  %i.bk = getelementptr inbounds nuw i8, ptr %.12639, i64 4
  %i.bl = add nuw nsw i32 %.140, 1                ; 2 uses
  %exitcond51.not = icmp eq i32 %i.bl, %i.ao
  br i1 %exitcond51.not, label %._crit_edge, label %.lr.ph41, !llvm.loop !167

._crit_edge:                                      ; preds = %.lr.ph41, %middle.block, %.preheader
  %indvars.iv.next53 = add nsw i64 %indvars.iv52, 1 ; 2 uses
  %lftr.wideiv55 = trunc i64 %indvars.iv.next53 to i32
  %exitcond56.not = icmp eq i32 %i.q, %lftr.wideiv55
  br i1 %exitcond56.not, label %._crit_edge44, label %.noexc, !llvm.loop !168

._crit_edge44:                                    ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge44, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_19UnaryOp_x86_functor13unary_op_tanhEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !40     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !40
  %i.h = load i32, ptr %0, align 4, !tbaa !40     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !40
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !40
  %i.k = load i32, ptr %i.a, align 4, !tbaa !40   ; 3 uses
  %.not67 = icmp sgt i32 %i.k, %i.j
  br i1 %.not67, label %._crit_edge69, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !40     ; 5 uses
  %i.o = icmp sgt i32 %i.n, 3
  br i1 %i.o, label %.noexc.preheader, label %.noexc.lr.ph.split.us

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  br label %.noexc

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.r = load ptr, ptr %3, align 8, !tbaa !46, !noalias !169
  %i.s = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !169
  %i.t = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !169
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.noexc.us.preheader, label %._crit_edge69

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.us
  %i.v = sext i32 %i.k to i64
  %i.w = add nsw i32 %i.j, 1
  %exitcond.not = icmp eq i32 %i.n, 1
  %exitcond.not.1 = icmp eq i32 %i.n, 2
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.v, %.noexc.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass ; 4 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !51
  %i.z = call fast noundef nofpclass(nan inf) float @llvm.tanh.f32(float %i.y)
  store float %i.z, ptr %i.x, align 4, !tbaa !51
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %.noexc.us
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !51
  %i.ac = call fast noundef nofpclass(nan inf) float @llvm.tanh.f32(float %i.ab)
  store float %i.ac, ptr %i.aa, align 4, !tbaa !51
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !51
  %i.af = call fast noundef nofpclass(nan inf) float @llvm.tanh.f32(float %i.ae)
  store float %i.af, ptr %i.ad, align 4, !tbaa !51
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.d, %bb.c, %.noexc.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond75.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond75.not, label %._crit_edge69, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ag = phi i32 [ %i.n, %.noexc.preheader ], [ %i.ao, %._crit_edge ] ; 2 uses
  %indvars.iv77 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next78, %._crit_edge ] ; 2 uses
  %i.ah = load ptr, ptr %3, align 8, !tbaa !46, !noalias !169
  %i.ai = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !169
  %i.aj = mul i64 %i.ai, %indvars.iv77
  %i.ak = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !169
  %i.al = mul i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.al ; 2 uses
  %i.an = icmp sgt i32 %i.ag, 3
  br i1 %i.an, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.ao = phi i32 [ %i.ag, %.noexc ], [ %i.cn, %.lr.ph ] ; 4 uses
  %.025.lcssa = phi ptr [ %i.am, %.noexc ], [ %i.ck, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.cl, %.lr.ph ] ; 4 uses
  %i.ap = icmp slt i32 %.0.lcssa, %i.ao
  br i1 %i.ap, label %.lr.ph66.preheader, label %._crit_edge

.lr.ph66.preheader:                               ; preds = %.preheader
  %i.aq = xor i32 %.0.lcssa, -1
  %i.ar = add i32 %i.ao, %i.aq                    ; 2 uses
  %i.as = zext i32 %i.ar to i64
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ar, 3
  br i1 %min.iters.check, label %.lr.ph66.preheader95, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph66.preheader
  %n.vec = and i64 %i.at, 8589934588              ; 4 uses
  %i.au = trunc i64 %n.vec to i32
  %i.av = add i32 %.0.lcssa, %i.au
  %i.aw = shl nuw nsw i64 %n.vec, 2
  %i.ax = getelementptr i8, ptr %.025.lcssa, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.025.lcssa, i64 %i.ay ; 2 uses
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !51
  %i.az = call fast <4 x float> @llvm.tanh.v4f32(<4 x float> %wide.load)
  store <4 x float> %i.az, ptr %next.gep, align 4, !tbaa !51
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !172

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph66.preheader95

.lr.ph66.preheader95:                             ; preds = %.lr.ph66.preheader, %middle.block
  %.165.ph = phi i32 [ %.0.lcssa, %.lr.ph66.preheader ], [ %i.av, %middle.block ]
  %.12664.ph = phi ptr [ %.025.lcssa, %.lr.ph66.preheader ], [ %i.ax, %middle.block ]
  br label %.lr.ph66

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.061 = phi i32 [ %i.cl, %.lr.ph ], [ 0, %.noexc ]
  %.02560 = phi ptr [ %i.ck, %.lr.ph ], [ %i.am, %.noexc ] ; 3 uses
  %i.bb = load <4 x float>, ptr %.02560, align 16, !tbaa !57
  %i.bc = fmul fast <4 x float> %i.bb, splat (float -2.000000e+00)
  %i.bd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.bc, <4 x float> splat (float f0x42B0C0A5))
  %i.be = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bd, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bf = fmul fast <4 x float> %i.be, splat (float f0x3FB8AA3B)
  %i.bg = fadd fast <4 x float> %i.bf, splat (float 5.000000e-01) ; 2 uses
  %i.bh = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bg)
  %i.bi = sitofp fast <4 x i32> %i.bh to <4 x float> ; 2 uses
  %i.bj = fcmp fast olt <4 x float> %i.bg, %i.bi
  %i.bk = select <4 x i1> %i.bj, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.bl = fsub fast <4 x float> %i.bi, %i.bk      ; 2 uses
  %i.bm = fmul fast <4 x float> %i.bl, splat (float f0x3F317218)
  %i.bn = fsub fast <4 x float> %i.be, %i.bm      ; 8 uses
  %i.bo = fmul fast <4 x float> %i.bn, %i.bn
  %i.bp = fmul fast <4 x float> %i.bn, splat (float f0x39506967)
  %i.bq = fadd fast <4 x float> %i.bp, splat (float f0x3AB743CE)
  %i.br = fmul fast <4 x float> %i.bq, %i.bn
  %i.bs = fadd fast <4 x float> %i.br, splat (float f0x3C088908)
  %i.bt = fmul fast <4 x float> %i.bs, %i.bn
  %i.bu = fadd fast <4 x float> %i.bt, splat (float f0x3D2AA9C1)
  %i.bv = fmul fast <4 x float> %i.bu, %i.bn
  %i.bw = fadd fast <4 x float> %i.bv, splat (float f0x3E2AAAAA)
  %i.bx = fmul fast <4 x float> %i.bw, %i.bn
  %i.by = fadd fast <4 x float> %i.bx, splat (float 5.000000e-01)
  %i.bz = fmul fast <4 x float> %i.bo, %i.by
  %i.ca = fadd fast <4 x float> %i.bn, %i.bz
  %i.cb = fadd fast <4 x float> %i.ca, splat (float 1.000000e+00)
  %i.cc = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bl)
  %i.cd = shl <4 x i32> %i.cc, splat (i32 23)
  %i.ce = add <4 x i32> %i.cd, splat (i32 1065353216)
  %i.cf = bitcast <4 x i32> %i.ce to <4 x float>
  %i.cg = fmul fast <4 x float> %i.cb, %i.cf
  %i.ch = fadd fast <4 x float> %i.cg, splat (float 1.000000e+00)
  %i.ci = fdiv fast <4 x float> splat (float 2.000000e+00), %i.ch
  %i.cj = fadd fast <4 x float> %i.ci, splat (float -1.000000e+00)
  store <4 x float> %i.cj, ptr %.02560, align 16, !tbaa !57
  %i.ck = getelementptr inbounds nuw i8, ptr %.02560, i64 16 ; 2 uses
  %i.cl = add nuw nsw i32 %.061, 4                ; 3 uses
  %i.cm = or disjoint i32 %i.cl, 3
  %i.cn = load i32, ptr %4, align 4, !tbaa !40    ; 2 uses
  %i.co = icmp slt i32 %i.cm, %i.cn
  br i1 %i.co, label %.lr.ph, label %.preheader, !llvm.loop !173

.lr.ph66:                                         ; preds = %.lr.ph66.preheader95, %.lr.ph66
  %.165 = phi i32 [ %i.cs, %.lr.ph66 ], [ %.165.ph, %.lr.ph66.preheader95 ]
  %.12664 = phi ptr [ %i.cr, %.lr.ph66 ], [ %.12664.ph, %.lr.ph66.preheader95 ] ; 3 uses
  %i.cp = load float, ptr %.12664, align 4, !tbaa !51
  %i.cq = call fast noundef nofpclass(nan inf) float @llvm.tanh.f32(float %i.cp)
  store float %i.cq, ptr %.12664, align 4, !tbaa !51
  %i.cr = getelementptr inbounds nuw i8, ptr %.12664, i64 4
  %i.cs = add nuw nsw i32 %.165, 1                ; 2 uses
  %exitcond76.not = icmp eq i32 %i.cs, %i.ao
  br i1 %exitcond76.not, label %._crit_edge, label %.lr.ph66, !llvm.loop !174

._crit_edge:                                      ; preds = %.lr.ph66, %middle.block, %.preheader
  %indvars.iv.next78 = add nsw i64 %indvars.iv77, 1 ; 2 uses
  %lftr.wideiv80 = trunc i64 %indvars.iv.next78 to i32
  %exitcond81.not = icmp eq i32 %i.q, %lftr.wideiv80
  br i1 %exitcond81.not, label %._crit_edge69, label %.noexc, !llvm.loop !175

._crit_edge69:                                    ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge69, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tanh.f32(float) #11

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_19UnaryOp_x86_functor14unary_op_log10EEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !40     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !40
  %i.h = load i32, ptr %0, align 4, !tbaa !40     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !40
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !40
  %i.k = load i32, ptr %i.a, align 4, !tbaa !40   ; 3 uses
  %.not76 = icmp sgt i32 %i.k, %i.j
  br i1 %.not76, label %._crit_edge78, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !40     ; 5 uses
  %i.o = icmp sgt i32 %i.n, 3
  br i1 %i.o, label %.noexc.preheader, label %.noexc.lr.ph.split.us

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  br label %.noexc

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.r = load ptr, ptr %3, align 8, !tbaa !46, !noalias !176
  %i.s = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !176
  %i.t = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !176
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.noexc.us.preheader, label %._crit_edge78

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.us
  %i.v = sext i32 %i.k to i64
  %i.w = add nsw i32 %i.j, 1
  %exitcond.not = icmp eq i32 %i.n, 1
  %exitcond.not.1 = icmp eq i32 %i.n, 2
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.v, %.noexc.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass ; 4 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !51
  %i.z = call fast noundef nofpclass(nan inf) float @llvm.log10.f32(float %i.y)
  store float %i.z, ptr %i.x, align 4, !tbaa !51
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %.noexc.us
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !51
  %i.ac = call fast noundef nofpclass(nan inf) float @llvm.log10.f32(float %i.ab)
  store float %i.ac, ptr %i.aa, align 4, !tbaa !51
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !51
  %i.af = call fast noundef nofpclass(nan inf) float @llvm.log10.f32(float %i.ae)
  store float %i.af, ptr %i.ad, align 4, !tbaa !51
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.d, %bb.c, %.noexc.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond84.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond84.not, label %._crit_edge78, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ag = phi i32 [ %i.n, %.noexc.preheader ], [ %i.ao, %._crit_edge ] ; 2 uses
  %indvars.iv86 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next87, %._crit_edge ] ; 2 uses
  %i.ah = load ptr, ptr %3, align 8, !tbaa !46, !noalias !176
  %i.ai = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !176
  %i.aj = mul i64 %i.ai, %indvars.iv86
  %i.ak = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !176
  %i.al = mul i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.al ; 2 uses
  %i.an = icmp sgt i32 %i.ag, 3
  br i1 %i.an, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.ao = phi i32 [ %i.ag, %.noexc ], [ %i.cq, %.lr.ph ] ; 4 uses
  %.025.lcssa = phi ptr [ %i.am, %.noexc ], [ %i.cn, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.co, %.lr.ph ] ; 4 uses
  %i.ap = icmp slt i32 %.0.lcssa, %i.ao
  br i1 %i.ap, label %.lr.ph75.preheader, label %._crit_edge

.lr.ph75.preheader:                               ; preds = %.preheader
  %i.aq = xor i32 %.0.lcssa, -1
  %i.ar = add i32 %i.ao, %i.aq                    ; 2 uses
  %i.as = zext i32 %i.ar to i64
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ar, 3
  br i1 %min.iters.check, label %.lr.ph75.preheader104, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph75.preheader
  %n.vec = and i64 %i.at, 8589934588              ; 4 uses
  %i.au = trunc i64 %n.vec to i32
  %i.av = add i32 %.0.lcssa, %i.au
  %i.aw = shl nuw nsw i64 %n.vec, 2
  %i.ax = getelementptr i8, ptr %.025.lcssa, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.025.lcssa, i64 %i.ay ; 2 uses
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !51
  %i.az = call fast <4 x float> @llvm.log10.v4f32(<4 x float> %wide.load)
  store <4 x float> %i.az, ptr %next.gep, align 4, !tbaa !51
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !179

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph75.preheader104

.lr.ph75.preheader104:                            ; preds = %.lr.ph75.preheader, %middle.block
  %.174.ph = phi i32 [ %.0.lcssa, %.lr.ph75.preheader ], [ %i.av, %middle.block ]
  %.12673.ph = phi ptr [ %.025.lcssa, %.lr.ph75.preheader ], [ %i.ax, %middle.block ]
  br label %.lr.ph75

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.070 = phi i32 [ %i.co, %.lr.ph ], [ 0, %.noexc ]
  %.02569 = phi ptr [ %i.cn, %.lr.ph ], [ %i.am, %.noexc ] ; 3 uses
  %i.bb = load <4 x float>, ptr %.02569, align 16, !tbaa !57 ; 2 uses
  %i.bc = fcmp fast ole <4 x float> %i.bb, zeroinitializer
  %i.bd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bb, <4 x float> splat (float f0x00800000))
  %i.be = bitcast <4 x float> %i.bd to <4 x i32>  ; 2 uses
  %i.bf = lshr <4 x i32> %i.be, splat (i32 23)
  %i.bg = and <4 x i32> %i.be, splat (i32 -2139095041)
  %i.bh = or disjoint <4 x i32> %i.bg, splat (i32 1056964608)
  %i.bi = bitcast <4 x i32> %i.bh to <4 x float>  ; 3 uses
  %i.bj = add nsw <4 x i32> %i.bf, splat (i32 -127)
  %i.bk = sitofp fast <4 x i32> %i.bj to <4 x float> ; 2 uses
  %i.bl = fadd fast <4 x float> %i.bk, splat (float 1.000000e+00)
  %i.bm = fcmp fast olt <4 x float> %i.bi, splat (float f0x3F3504F3) ; 2 uses
  %i.bn = select <4 x i1> %i.bm, <4 x float> %i.bi, <4 x float> zeroinitializer
  %i.bo = fadd fast <4 x float> %i.bi, splat (float -1.000000e+00)
  %i.bp = select fast <4 x i1> %i.bm, <4 x float> %i.bk, <4 x float> %i.bl
  %i.bq = fadd fast <4 x float> %i.bo, %i.bn      ; 12 uses
  %i.br = fmul fast <4 x float> %i.bq, %i.bq      ; 2 uses
  %i.bs = fmul fast <4 x float> %i.bq, splat (float f0x3D9021BB)
  %i.bt = fadd fast <4 x float> %i.bs, splat (float f0xBDEBD1B8)
  %i.bu = fmul fast <4 x float> %i.bt, %i.bq
  %i.bv = fadd fast <4 x float> %i.bu, splat (float f0x3DEF251A)
  %i.bw = fmul fast <4 x float> %i.bv, %i.bq
  %i.bx = fadd fast <4 x float> %i.bw, splat (float f0xBDFE5D4F)
  %i.by = fmul fast <4 x float> %i.bx, %i.bq
  %i.bz = fadd fast <4 x float> %i.by, splat (float f0x3E11E9BF)
  %i.ca = fmul fast <4 x float> %i.bz, %i.bq
  %i.cb = fadd fast <4 x float> %i.ca, splat (float f0xBE2AAE50)
  %i.cc = fmul fast <4 x float> %i.cb, %i.bq
  %i.cd = fadd fast <4 x float> %i.cc, splat (float f0x3E4CCEAC)
  %i.ce = fmul fast <4 x float> %i.cd, %i.bq
  %i.cf = fadd fast <4 x float> %i.ce, splat (float f0xBE7FFFFC)
  %i.cg = fmul fast <4 x float> %i.cf, %i.bq
  %i.ch = fadd fast <4 x float> %i.cg, splat (float f0x3EAAAAAA)
  %i.ci = fmul fast <4 x float> %i.br, %i.bq
  %reass.mul.a = fmul fast <4 x float> %i.ci, %i.ch
  %.neg = fmul fast <4 x float> %i.br, splat (float -5.000000e-01)
  %reass.mul68 = fmul fast <4 x float> %i.bp, splat (float f0x3F317218)
  %6 = fadd fast <4 x float> %i.bq, %.neg
  %i.cj = fadd fast <4 x float> %reass.mul.a, %6
  %i.ck = fadd fast <4 x float> %i.cj, %reass.mul68
  %i.cl = fmul fast <4 x float> %i.ck, splat (float f0x3EDE5BD9)
  %i.cm = select <4 x i1> %i.bc, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.cl
  store <4 x float> %i.cm, ptr %.02569, align 16, !tbaa !57
  %i.cn = getelementptr inbounds nuw i8, ptr %.02569, i64 16 ; 2 uses
  %i.co = add nuw nsw i32 %.070, 4                ; 3 uses
  %i.cp = or disjoint i32 %i.co, 3
  %i.cq = load i32, ptr %4, align 4, !tbaa !40    ; 2 uses
  %i.cr = icmp slt i32 %i.cp, %i.cq
  br i1 %i.cr, label %.lr.ph, label %.preheader, !llvm.loop !180

.lr.ph75:                                         ; preds = %.lr.ph75.preheader104, %.lr.ph75
  %.174 = phi i32 [ %i.cv, %.lr.ph75 ], [ %.174.ph, %.lr.ph75.preheader104 ]
  %.12673 = phi ptr [ %i.cu, %.lr.ph75 ], [ %.12673.ph, %.lr.ph75.preheader104 ] ; 3 uses
  %i.cs = load float, ptr %.12673, align 4, !tbaa !51
  %i.ct = call fast noundef nofpclass(nan inf) float @llvm.log10.f32(float %i.cs)
  store float %i.ct, ptr %.12673, align 4, !tbaa !51
  %i.cu = getelementptr inbounds nuw i8, ptr %.12673, i64 4
  %i.cv = add nuw nsw i32 %.174, 1                ; 2 uses
  %exitcond85.not = icmp eq i32 %i.cv, %i.ao
  br i1 %exitcond85.not, label %._crit_edge, label %.lr.ph75, !llvm.loop !181

._crit_edge:                                      ; preds = %.lr.ph75, %middle.block, %.preheader
  %indvars.iv.next87 = add nsw i64 %indvars.iv86, 1 ; 2 uses
  %lftr.wideiv89 = trunc i64 %indvars.iv.next87 to i32
  %exitcond90.not = icmp eq i32 %i.q, %lftr.wideiv89
  br i1 %exitcond90.not, label %._crit_edge78, label %.noexc, !llvm.loop !182

._crit_edge78:                                    ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge78, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log10.f32(float) #9

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_19UnaryOp_x86_functor14unary_op_roundEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !40     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !40
  %i.h = load i32, ptr %0, align 4, !tbaa !40     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !40
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !40
  %i.k = load i32, ptr %i.a, align 4, !tbaa !40   ; 3 uses
  %.not42 = icmp sgt i32 %i.k, %i.j
  br i1 %.not42, label %._crit_edge44, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !40     ; 5 uses
  %i.o = icmp sgt i32 %i.n, 3
  br i1 %i.o, label %.noexc.preheader, label %.noexc.lr.ph.split.us

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  br label %.noexc

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.r = load ptr, ptr %3, align 8, !tbaa !46, !noalias !183
  %i.s = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !183
  %i.t = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !183
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.noexc.us.preheader, label %._crit_edge44

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.us
  %i.v = sext i32 %i.k to i64
  %i.w = add nsw i32 %i.j, 1
  %exitcond.not = icmp eq i32 %i.n, 1
  %exitcond.not.1 = icmp eq i32 %i.n, 2
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.v, %.noexc.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass ; 4 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !51
  %i.z = call fast noundef nofpclass(nan inf) float @llvm.nearbyint.f32(float %i.y)
  store float %i.z, ptr %i.x, align 4, !tbaa !51
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %.noexc.us
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !51
  %i.ac = call fast noundef nofpclass(nan inf) float @llvm.nearbyint.f32(float %i.ab)
  store float %i.ac, ptr %i.aa, align 4, !tbaa !51
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !51
  %i.af = call fast noundef nofpclass(nan inf) float @llvm.nearbyint.f32(float %i.ae)
  store float %i.af, ptr %i.ad, align 4, !tbaa !51
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.d, %bb.c, %.noexc.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond50.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond50.not, label %._crit_edge44, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ag = phi i32 [ %i.n, %.noexc.preheader ], [ %i.ao, %._crit_edge ] ; 2 uses
  %indvars.iv52 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next53, %._crit_edge ] ; 2 uses
  %i.ah = load ptr, ptr %3, align 8, !tbaa !46, !noalias !183
  %i.ai = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !183
  %i.aj = mul i64 %i.ai, %indvars.iv52
  %i.ak = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !183
  %i.al = mul i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.al ; 2 uses
  %i.an = icmp sgt i32 %i.ag, 3
  br i1 %i.an, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.ao = phi i32 [ %i.ag, %.noexc ], [ %i.bh, %.lr.ph ] ; 4 uses
  %.025.lcssa = phi ptr [ %i.am, %.noexc ], [ %i.be, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.bf, %.lr.ph ] ; 4 uses
  %i.ap = icmp slt i32 %.0.lcssa, %i.ao
  br i1 %i.ap, label %.lr.ph41.preheader, label %._crit_edge

.lr.ph41.preheader:                               ; preds = %.preheader
  %i.aq = xor i32 %.0.lcssa, -1
  %i.ar = add i32 %i.ao, %i.aq                    ; 2 uses
  %i.as = zext i32 %i.ar to i64
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ar, 3
  br i1 %min.iters.check, label %.lr.ph41.preheader70, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph41.preheader
  %n.vec = and i64 %i.at, 8589934588              ; 4 uses
  %i.au = trunc i64 %n.vec to i32
  %i.av = add i32 %.0.lcssa, %i.au
  %i.aw = shl nuw nsw i64 %n.vec, 2
  %i.ax = getelementptr i8, ptr %.025.lcssa, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.025.lcssa, i64 %i.ay ; 2 uses
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !51
  %i.az = call fast <4 x float> @llvm.nearbyint.v4f32(<4 x float> %wide.load)
  store <4 x float> %i.az, ptr %next.gep, align 4, !tbaa !51
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !186

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph41.preheader70

.lr.ph41.preheader70:                             ; preds = %.lr.ph41.preheader, %middle.block
  %.140.ph = phi i32 [ %.0.lcssa, %.lr.ph41.preheader ], [ %i.av, %middle.block ]
  %.12639.ph = phi ptr [ %.025.lcssa, %.lr.ph41.preheader ], [ %i.ax, %middle.block ]
  br label %.lr.ph41

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.036 = phi i32 [ %i.bf, %.lr.ph ], [ 0, %.noexc ]
  %.02535 = phi ptr [ %i.be, %.lr.ph ], [ %i.am, %.noexc ] ; 3 uses
  %i.bb = load <4 x float>, ptr %.02535, align 16, !tbaa !57
  %i.bc = call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> nofpclass(nan inf) %i.bb)
  %i.bd = sitofp fast <4 x i32> %i.bc to <4 x float>
  store <4 x float> %i.bd, ptr %.02535, align 16, !tbaa !57
  %i.be = getelementptr inbounds nuw i8, ptr %.02535, i64 16 ; 2 uses
  %i.bf = add nuw nsw i32 %.036, 4                ; 3 uses
  %i.bg = or disjoint i32 %i.bf, 3
  %i.bh = load i32, ptr %4, align 4, !tbaa !40    ; 2 uses
  %i.bi = icmp slt i32 %i.bg, %i.bh
  br i1 %i.bi, label %.lr.ph, label %.preheader, !llvm.loop !187

.lr.ph41:                                         ; preds = %.lr.ph41.preheader70, %.lr.ph41
  %.140 = phi i32 [ %i.bm, %.lr.ph41 ], [ %.140.ph, %.lr.ph41.preheader70 ]
end_hunk_1
begin_hunk_2_@_ZN4ncnnL16unary_op_inplaceINS_19UnaryOp_x86_functor13unary_op_signEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %i.bk = fcmp fast ogt <4 x float> %wide.load70, zeroinitializer
  %i.bl = fcmp fast olt <4 x float> %wide.load, zeroinitializer
  %i.bm = fcmp fast olt <4 x float> %wide.load70, zeroinitializer
  %i.bn = select fast <4 x i1> %i.bl, <4 x float> splat (float -1.000000e+00), <4 x float> zeroinitializer
  %i.bo = select fast <4 x i1> %i.bm, <4 x float> splat (float -1.000000e+00), <4 x float> zeroinitializer
  %i.bp = select fast <4 x i1> %i.bj, <4 x float> splat (float 1.000000e+00), <4 x float> %i.bn
  %i.bq = select fast <4 x i1> %i.bk, <4 x float> splat (float 1.000000e+00), <4 x float> %i.bo
  store <4 x float> %i.bp, ptr %next.gep, align 4, !tbaa !51
  store <4 x float> %i.bq, ptr %i.bi, align 4, !tbaa !51
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !200

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bc, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph42.preheader72

.lr.ph42.preheader72:                             ; preds = %.lr.ph42.preheader, %middle.block
  %.141.ph = phi i32 [ %.0.lcssa, %.lr.ph42.preheader ], [ %i.be, %middle.block ]
  %.12640.ph = phi ptr [ %.025.lcssa, %.lr.ph42.preheader ], [ %i.bg, %middle.block ]
  br label %.lr.ph42

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.037 = phi i32 [ %i.bz, %.lr.ph ], [ 0, %.noexc ]
  %.02536 = phi ptr [ %i.by, %.lr.ph ], [ %i.av, %.noexc ] ; 3 uses
  %i.bs = load <4 x float>, ptr %.02536, align 16, !tbaa !57 ; 2 uses
  %i.bt = fcmp fast ogt <4 x float> %i.bs, zeroinitializer
  %i.bu = select <4 x i1> %i.bt, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.bv = fcmp fast olt <4 x float> %i.bs, zeroinitializer
  %i.bw = select <4 x i1> %i.bv, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.bx = fsub fast <4 x float> %i.bu, %i.bw
  store <4 x float> %i.bx, ptr %.02536, align 16, !tbaa !57
  %i.by = getelementptr inbounds nuw i8, ptr %.02536, i64 16 ; 2 uses
  %i.bz = add nuw nsw i32 %.037, 4                ; 3 uses
  %i.ca = or disjoint i32 %i.bz, 3
  %i.cb = load i32, ptr %4, align 4, !tbaa !40    ; 2 uses
  %i.cc = icmp slt i32 %i.ca, %i.cb
  br i1 %i.cc, label %.lr.ph, label %.preheader, !llvm.loop !201

.lr.ph42:                                         ; preds = %.lr.ph42.preheader72, %.lr.ph42
  %.141 = phi i32 [ %i.cj, %.lr.ph42 ], [ %.141.ph, %.lr.ph42.preheader72 ]
  %.12640 = phi ptr [ %i.ci, %.lr.ph42 ], [ %.12640.ph, %.lr.ph42.preheader72 ] ; 3 uses
  %i.cd = load float, ptr %.12640, align 4, !tbaa !51 ; 2 uses
  %i.ce = fcmp fast ogt float %i.cd, 0.000000e+00
  %i.cf = fcmp fast olt float %i.cd, 0.000000e+00
  %i.cg = select fast i1 %i.cf, float -1.000000e+00, float 0.000000e+00
  %i.ch = select fast i1 %i.ce, float 1.000000e+00, float %i.cg
  store float %i.ch, ptr %.12640, align 4, !tbaa !51
  %i.ci = getelementptr inbounds nuw i8, ptr %.12640, i64 4
  %i.cj = add nuw nsw i32 %.141, 1                ; 2 uses
  %exitcond52.not = icmp eq i32 %i.cj, %i.ax
  br i1 %exitcond52.not, label %._crit_edge, label %.lr.ph42, !llvm.loop !202

._crit_edge:                                      ; preds = %.lr.ph42, %middle.block, %.preheader
  %indvars.iv.next54 = add nsw i64 %indvars.iv53, 1 ; 2 uses
  %lftr.wideiv56 = trunc i64 %indvars.iv.next54 to i32
  %exitcond57.not = icmp eq i32 %i.q, %lftr.wideiv56
  br i1 %exitcond57.not, label %._crit_edge45, label %.noexc, !llvm.loop !203

._crit_edge45:                                    ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge45, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_19UnaryOp_x86_functor14unary_op_expm1EEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !40     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !40
  %i.h = load i32, ptr %0, align 4, !tbaa !40     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !40
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !40
  %i.k = load i32, ptr %i.a, align 4, !tbaa !40   ; 3 uses
  %.not69 = icmp sgt i32 %i.k, %i.j
  br i1 %.not69, label %._crit_edge71, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !40     ; 4 uses
  %i.o = icmp sgt i32 %i.n, 3
  br i1 %i.o, label %.noexc.preheader, label %.noexc.lr.ph.split.us

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  br label %.noexc

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.r = load ptr, ptr %3, align 8, !tbaa !46, !noalias !204
  %i.s = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !204
  %i.t = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !204
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.noexc.us.preheader, label %._crit_edge71

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.us
  %i.v = sext i32 %i.k to i64
  %i.w = add nsw i32 %i.j, 1
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.v, %.noexc.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass
  br label %bb.c

bb.c:                                             ; preds = %.noexc.us, %bb.c
  %.167.us = phi i32 [ 0, %.noexc.us ], [ %i.ab, %bb.c ]
  %.12666.us = phi ptr [ %i.x, %.noexc.us ], [ %i.aa, %bb.c ] ; 3 uses
  %i.y = load float, ptr %.12666.us, align 4, !tbaa !51
  %i.z = call fast noundef nofpclass(nan inf) float @expm1f(float noundef nofpclass(nan inf) %i.y) #20
  store float %i.z, ptr %.12666.us, align 4, !tbaa !51
  %i.aa = getelementptr inbounds nuw i8, ptr %.12666.us, i64 4
  %i.ab = add nuw nsw i32 %.167.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ab, %i.n
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !207

._crit_edge.us:                                   ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond77.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond77.not, label %._crit_edge71, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ac = phi i32 [ %i.n, %.noexc.preheader ], [ %i.ak, %._crit_edge ] ; 2 uses
  %indvars.iv79 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next80, %._crit_edge ] ; 2 uses
  %i.ad = load ptr, ptr %3, align 8, !tbaa !46, !noalias !204
  %i.ae = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !204
  %i.af = mul i64 %i.ae, %indvars.iv79
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !204
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ah ; 2 uses
  %i.aj = icmp sgt i32 %i.ac, 3
  br i1 %i.aj, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.ak = phi i32 [ %i.ac, %.noexc ], [ %i.cc, %.lr.ph ] ; 3 uses
  %.025.lcssa = phi ptr [ %i.ai, %.noexc ], [ %i.bz, %.lr.ph ]
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.ca, %.lr.ph ] ; 2 uses
  %i.al = icmp slt i32 %.0.lcssa, %i.ak
  br i1 %i.al, label %.lr.ph68, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.063 = phi i32 [ %i.ca, %.lr.ph ], [ 0, %.noexc ]
  %.02562 = phi ptr [ %i.bz, %.lr.ph ], [ %i.ai, %.noexc ] ; 3 uses
  %i.am = load <4 x float>, ptr %.02562, align 16, !tbaa !57 ; 6 uses
  %i.an = fmul fast <4 x float> %i.am, %i.am
  %i.ao = fmul fast <4 x float> %i.am, splat (float f0x3E2AAAAB)
  %i.ap = fadd fast <4 x float> %i.ao, splat (float 5.000000e-01)
  %i.aq = fmul fast <4 x float> %i.an, %i.ap
  %i.ar = fadd fast <4 x float> %i.aq, %i.am
  %i.as = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.am, <4 x float> splat (float f0x42B0C0A5))
  %i.at = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.as, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.au = fmul fast <4 x float> %i.at, splat (float f0x3FB8AA3B)
  %i.av = fadd fast <4 x float> %i.au, splat (float 5.000000e-01) ; 2 uses
  %i.aw = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.av)
  %i.ax = sitofp fast <4 x i32> %i.aw to <4 x float> ; 2 uses
  %i.ay = fcmp fast olt <4 x float> %i.av, %i.ax
  %i.az = select <4 x i1> %i.ay, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ba = fsub fast <4 x float> %i.ax, %i.az      ; 2 uses
  %i.bb = fmul fast <4 x float> %i.ba, splat (float f0x3F317218)
  %i.bc = fsub fast <4 x float> %i.at, %i.bb      ; 8 uses
  %i.bd = fmul fast <4 x float> %i.bc, %i.bc
  %i.be = fmul fast <4 x float> %i.bc, splat (float f0x39506967)
  %i.bf = fadd fast <4 x float> %i.be, splat (float f0x3AB743CE)
  %i.bg = fmul fast <4 x float> %i.bf, %i.bc
  %i.bh = fadd fast <4 x float> %i.bg, splat (float f0x3C088908)
  %i.bi = fmul fast <4 x float> %i.bh, %i.bc
  %i.bj = fadd fast <4 x float> %i.bi, splat (float f0x3D2AA9C1)
  %i.bk = fmul fast <4 x float> %i.bj, %i.bc
  %i.bl = fadd fast <4 x float> %i.bk, splat (float f0x3E2AAAAA)
  %i.bm = fmul fast <4 x float> %i.bl, %i.bc
  %i.bn = fadd fast <4 x float> %i.bm, splat (float 5.000000e-01)
  %i.bo = fmul fast <4 x float> %i.bd, %i.bn
  %i.bp = fadd fast <4 x float> %i.bc, %i.bo
  %i.bq = fadd fast <4 x float> %i.bp, splat (float 1.000000e+00)
  %i.br = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ba)
  %i.bs = shl <4 x i32> %i.br, splat (i32 23)
  %i.bt = add <4 x i32> %i.bs, splat (i32 1065353216)
  %i.bu = bitcast <4 x i32> %i.bt to <4 x float>
  %i.bv = fmul fast <4 x float> %i.bq, %i.bu
  %i.bw = fadd fast <4 x float> %i.bv, splat (float -1.000000e+00)
  %i.bx = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.am)
  %i.by = fcmp fast uge <4 x float> %i.bx, splat (float f0x38D1B717)
  %.v = select <4 x i1> %i.by, <4 x float> %i.bw, <4 x float> %i.ar
  store <4 x float> %.v, ptr %.02562, align 16, !tbaa !57
  %i.bz = getelementptr inbounds nuw i8, ptr %.02562, i64 16 ; 2 uses
  %i.ca = add nuw nsw i32 %.063, 4                ; 3 uses
  %i.cb = or disjoint i32 %i.ca, 3
  %i.cc = load i32, ptr %4, align 4, !tbaa !40    ; 2 uses
  %i.cd = icmp slt i32 %i.cb, %i.cc
  br i1 %i.cd, label %.lr.ph, label %.preheader, !llvm.loop !208

.lr.ph68:                                         ; preds = %.preheader, %.lr.ph68
  %.167 = phi i32 [ %i.ch, %.lr.ph68 ], [ %.0.lcssa, %.preheader ]
  %.12666 = phi ptr [ %i.cg, %.lr.ph68 ], [ %.025.lcssa, %.preheader ] ; 3 uses
  %i.ce = load float, ptr %.12666, align 4, !tbaa !51
  %i.cf = call fast noundef nofpclass(nan inf) float @expm1f(float noundef nofpclass(nan inf) %i.ce) #20
  store float %i.cf, ptr %.12666, align 4, !tbaa !51
  %i.cg = getelementptr inbounds nuw i8, ptr %.12666, i64 4
  %i.ch = add nuw nsw i32 %.167, 1                ; 2 uses
  %exitcond78.not = icmp eq i32 %i.ch, %i.ak
  br i1 %exitcond78.not, label %._crit_edge, label %.lr.ph68, !llvm.loop !207

._crit_edge:                                      ; preds = %.lr.ph68, %.preheader
  %indvars.iv.next80 = add nsw i64 %indvars.iv79, 1 ; 2 uses
  %lftr.wideiv82 = trunc i64 %indvars.iv.next80 to i32
  %exitcond83.not = icmp eq i32 %i.q, %lftr.wideiv82
  br i1 %exitcond83.not, label %._crit_edge71, label %.noexc, !llvm.loop !209

._crit_edge71:                                    ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge71, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare nofpclass(nan inf) float @expm1f(float noundef nofpclass(nan inf)) local_unnamed_addr #12

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_19UnaryOp_x86_functor13unary_op_sinhEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !40     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !40
  %i.h = load i32, ptr %0, align 4, !tbaa !40     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !40
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !40
  %i.k = load i32, ptr %i.a, align 4, !tbaa !40   ; 3 uses
  %.not98 = icmp sgt i32 %i.k, %i.j
  br i1 %.not98, label %._crit_edge100, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !40     ; 5 uses
  %i.o = icmp sgt i32 %i.n, 3
  br i1 %i.o, label %.noexc.preheader, label %.noexc.lr.ph.split.us

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  br label %.noexc

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.r = load ptr, ptr %3, align 8, !tbaa !46, !noalias !210
  %i.s = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !210
  %i.t = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !210
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.noexc.us.preheader, label %._crit_edge100

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.us
  %i.v = sext i32 %i.k to i64
  %i.w = add nsw i32 %i.j, 1
  %exitcond.not = icmp eq i32 %i.n, 1
  %exitcond.not.1 = icmp eq i32 %i.n, 2
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.v, %.noexc.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass ; 4 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !51
  %i.z = call fast noundef nofpclass(nan inf) float @llvm.sinh.f32(float %i.y)
  store float %i.z, ptr %i.x, align 4, !tbaa !51
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %.noexc.us
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !51
  %i.ac = call fast noundef nofpclass(nan inf) float @llvm.sinh.f32(float %i.ab)
  store float %i.ac, ptr %i.aa, align 4, !tbaa !51
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !51
  %i.af = call fast noundef nofpclass(nan inf) float @llvm.sinh.f32(float %i.ae)
  store float %i.af, ptr %i.ad, align 4, !tbaa !51
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.d, %bb.c, %.noexc.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond106.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond106.not, label %._crit_edge100, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ag = phi i32 [ %i.n, %.noexc.preheader ], [ %i.ao, %._crit_edge ] ; 2 uses
  %indvars.iv108 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next109, %._crit_edge ] ; 2 uses
  %i.ah = load ptr, ptr %3, align 8, !tbaa !46, !noalias !210
  %i.ai = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !210
  %i.aj = mul i64 %i.ai, %indvars.iv108
  %i.ak = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !210
  %i.al = mul i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.al ; 2 uses
  %i.an = icmp sgt i32 %i.ag, 3
  br i1 %i.an, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.ao = phi i32 [ %i.ag, %.noexc ], [ %i.ec, %.lr.ph ] ; 4 uses
  %.025.lcssa = phi ptr [ %i.am, %.noexc ], [ %i.dz, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.ea, %.lr.ph ] ; 4 uses
  %i.ap = icmp slt i32 %.0.lcssa, %i.ao
  br i1 %i.ap, label %.lr.ph97.preheader, label %._crit_edge

.lr.ph97.preheader:                               ; preds = %.preheader
  %i.aq = xor i32 %.0.lcssa, -1
  %i.ar = add i32 %i.ao, %i.aq                    ; 2 uses
  %i.as = zext i32 %i.ar to i64
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ar, 3
  br i1 %min.iters.check, label %.lr.ph97.preheader126, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph97.preheader
  %n.vec = and i64 %i.at, 8589934588              ; 4 uses
  %i.au = trunc i64 %n.vec to i32
  %i.av = add i32 %.0.lcssa, %i.au
  %i.aw = shl nuw nsw i64 %n.vec, 2
  %i.ax = getelementptr i8, ptr %.025.lcssa, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.025.lcssa, i64 %i.ay ; 2 uses
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !51
  %i.az = call fast <4 x float> @llvm.sinh.v4f32(<4 x float> %wide.load)
  store <4 x float> %i.az, ptr %next.gep, align 4, !tbaa !51
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !213

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph97.preheader126

.lr.ph97.preheader126:                            ; preds = %.lr.ph97.preheader, %middle.block
  %.196.ph = phi i32 [ %.0.lcssa, %.lr.ph97.preheader ], [ %i.av, %middle.block ]
  %.12695.ph = phi ptr [ %.025.lcssa, %.lr.ph97.preheader ], [ %i.ax, %middle.block ]
  br label %.lr.ph97

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.092 = phi i32 [ %i.ea, %.lr.ph ], [ 0, %.noexc ]
  %.02591 = phi ptr [ %i.dz, %.lr.ph ], [ %i.am, %.noexc ] ; 3 uses
  %i.bb = load <4 x float>, ptr %.02591, align 16, !tbaa !57 ; 8 uses
  %i.bc = fmul fast <4 x float> %i.bb, %i.bb      ; 2 uses
  %i.bd = fmul fast <4 x float> %i.bb, splat (float f0x3E2AAAAB) ; 2 uses
  %i.be = fadd fast <4 x float> %i.bd, splat (float 5.000000e-01)
  %i.bf = fmul fast <4 x float> %i.bc, %i.be
  %i.bg = fadd fast <4 x float> %i.bf, %i.bb
  %i.bh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.bb, <4 x float> splat (float f0x42B0C0A5))
  %i.bi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bh, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bj = fmul fast <4 x float> %i.bi, splat (float f0x3FB8AA3B)
  %i.bk = fadd fast <4 x float> %i.bj, splat (float 5.000000e-01) ; 2 uses
  %i.bl = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bk)
  %i.bm = sitofp fast <4 x i32> %i.bl to <4 x float> ; 2 uses
  %i.bn = fcmp fast olt <4 x float> %i.bk, %i.bm
  %i.bo = select <4 x i1> %i.bn, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.bp = fsub fast <4 x float> %i.bm, %i.bo      ; 2 uses
  %i.bq = fmul fast <4 x float> %i.bp, splat (float f0x3F317218)
  %i.br = fsub fast <4 x float> %i.bi, %i.bq      ; 8 uses
  %i.bs = fmul fast <4 x float> %i.br, %i.br
  %i.bt = fmul fast <4 x float> %i.br, splat (float f0x39506967)
  %i.bu = fadd fast <4 x float> %i.bt, splat (float f0x3AB743CE)
  %i.bv = fmul fast <4 x float> %i.bu, %i.br
  %i.bw = fadd fast <4 x float> %i.bv, splat (float f0x3C088908)
  %i.bx = fmul fast <4 x float> %i.bw, %i.br
  %i.by = fadd fast <4 x float> %i.bx, splat (float f0x3D2AA9C1)
  %i.bz = fmul fast <4 x float> %i.by, %i.br
  %i.ca = fadd fast <4 x float> %i.bz, splat (float f0x3E2AAAAA)
  %i.cb = fmul fast <4 x float> %i.ca, %i.br
  %i.cc = fadd fast <4 x float> %i.cb, splat (float 5.000000e-01)
  %i.cd = fmul fast <4 x float> %i.bs, %i.cc
  %i.ce = fadd fast <4 x float> %i.br, %i.cd
  %i.cf = fadd fast <4 x float> %i.ce, splat (float 1.000000e+00)
  %i.cg = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bp)
  %i.ch = shl <4 x i32> %i.cg, splat (i32 23)
  %i.ci = add <4 x i32> %i.ch, splat (i32 1065353216)
  %i.cj = bitcast <4 x i32> %i.ci to <4 x float>
  %i.ck = fmul fast <4 x float> %i.cf, %i.cj
  %i.cl = fadd fast <4 x float> %i.ck, splat (float -1.000000e+00)
  %i.cm = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bb)
  %i.cn = fcmp fast uge <4 x float> %i.cm, splat (float f0x38D1B717) ; 2 uses
  %.v = select <4 x i1> %i.cn, <4 x float> %i.cl, <4 x float> %i.bg
  %i.co = fneg fast <4 x float> %i.bb
  %i.cp = fsub fast <4 x float> splat (float 5.000000e-01), %i.bd
  %i.cq = fmul fast <4 x float> %i.bc, %i.cp
  %i.cr = fsub fast <4 x float> %i.cq, %i.bb
  %i.cs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.co, <4 x float> splat (float f0x42B0C0A5))
  %i.ct = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cs, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cu = fmul fast <4 x float> %i.ct, splat (float f0x3FB8AA3B)
  %i.cv = fadd fast <4 x float> %i.cu, splat (float 5.000000e-01) ; 2 uses
  %i.cw = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cv)
  %i.cx = sitofp fast <4 x i32> %i.cw to <4 x float> ; 2 uses
  %i.cy = fcmp fast olt <4 x float> %i.cv, %i.cx
  %i.cz = select <4 x i1> %i.cy, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.da = fsub fast <4 x float> %i.cx, %i.cz      ; 2 uses
  %i.db = fmul fast <4 x float> %i.da, splat (float f0x3F317218)
  %i.dc = fsub fast <4 x float> %i.ct, %i.db      ; 8 uses
  %i.dd = fmul fast <4 x float> %i.dc, %i.dc
  %i.de = fmul fast <4 x float> %i.dc, splat (float f0x39506967)
  %i.df = fadd fast <4 x float> %i.de, splat (float f0x3AB743CE)
  %i.dg = fmul fast <4 x float> %i.df, %i.dc
  %i.dh = fadd fast <4 x float> %i.dg, splat (float f0x3C088908)
  %i.di = fmul fast <4 x float> %i.dh, %i.dc
  %i.dj = fadd fast <4 x float> %i.di, splat (float f0x3D2AA9C1)
  %i.dk = fmul fast <4 x float> %i.dj, %i.dc
  %i.dl = fadd fast <4 x float> %i.dk, splat (float f0x3E2AAAAA)
  %i.dm = fmul fast <4 x float> %i.dl, %i.dc
  %i.dn = fadd fast <4 x float> %i.dm, splat (float 5.000000e-01)
  %i.do = fmul fast <4 x float> %i.dd, %i.dn
  %i.dp = fadd fast <4 x float> %i.dc, %i.do
  %i.dq = fadd fast <4 x float> %i.dp, splat (float 1.000000e+00)
  %i.dr = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.da)
  %i.ds = shl <4 x i32> %i.dr, splat (i32 23)
  %i.dt = add <4 x i32> %i.ds, splat (i32 1065353216)
  %i.du = bitcast <4 x i32> %i.dt to <4 x float>
  %i.dv = fmul fast <4 x float> %i.dq, %i.du
  %i.dw = fadd fast <4 x float> %i.dv, splat (float -1.000000e+00)
  %.v90 = select <4 x i1> %i.cn, <4 x float> %i.dw, <4 x float> %i.cr
  %i.dx = fsub fast <4 x float> %.v, %.v90
  %i.dy = fmul fast <4 x float> %i.dx, splat (float 5.000000e-01)
  store <4 x float> %i.dy, ptr %.02591, align 16, !tbaa !57
  %i.dz = getelementptr inbounds nuw i8, ptr %.02591, i64 16 ; 2 uses
  %i.ea = add nuw nsw i32 %.092, 4                ; 3 uses
  %i.eb = or disjoint i32 %i.ea, 3
  %i.ec = load i32, ptr %4, align 4, !tbaa !40    ; 2 uses
  %i.ed = icmp slt i32 %i.eb, %i.ec
  br i1 %i.ed, label %.lr.ph, label %.preheader, !llvm.loop !214

.lr.ph97:                                         ; preds = %.lr.ph97.preheader126, %.lr.ph97
  %.196 = phi i32 [ %i.eh, %.lr.ph97 ], [ %.196.ph, %.lr.ph97.preheader126 ]
  %.12695 = phi ptr [ %i.eg, %.lr.ph97 ], [ %.12695.ph, %.lr.ph97.preheader126 ] ; 3 uses
  %i.ee = load float, ptr %.12695, align 4, !tbaa !51
  %i.ef = call fast noundef nofpclass(nan inf) float @llvm.sinh.f32(float %i.ee)
  store float %i.ef, ptr %.12695, align 4, !tbaa !51
  %i.eg = getelementptr inbounds nuw i8, ptr %.12695, i64 4
  %i.eh = add nuw nsw i32 %.196, 1                ; 2 uses
  %exitcond107.not = icmp eq i32 %i.eh, %i.ao
  br i1 %exitcond107.not, label %._crit_edge, label %.lr.ph97, !llvm.loop !215

._crit_edge:                                      ; preds = %.lr.ph97, %middle.block, %.preheader
  %indvars.iv.next109 = add nsw i64 %indvars.iv108, 1 ; 2 uses
  %lftr.wideiv111 = trunc i64 %indvars.iv.next109 to i32
  %exitcond112.not = icmp eq i32 %i.q, %lftr.wideiv111
  br i1 %exitcond112.not, label %._crit_edge100, label %.noexc, !llvm.loop !216

._crit_edge100:                                   ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge100, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sinh.f32(float) #11

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_19UnaryOp_x86_functor14unary_op_asinhEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !40     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !40
  %i.h = load i32, ptr %0, align 4, !tbaa !40     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !40
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !40
  %i.k = load i32, ptr %i.a, align 4, !tbaa !40   ; 3 uses
  %.not119 = icmp sgt i32 %i.k, %i.j
  br i1 %.not119, label %._crit_edge121, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !40     ; 4 uses
  %i.o = icmp sgt i32 %i.n, 3
  br i1 %i.o, label %.noexc.preheader, label %.noexc.lr.ph.split.us

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  br label %.noexc

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.r = load ptr, ptr %3, align 8, !tbaa !46, !noalias !217
  %i.s = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !217
  %i.t = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !217
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.noexc.us.preheader, label %._crit_edge121

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.us
  %i.v = sext i32 %i.k to i64
  %i.w = add nsw i32 %i.j, 1
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.v, %.noexc.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass
  br label %bb.c

bb.c:                                             ; preds = %.noexc.us, %bb.c
  %.1117.us = phi i32 [ 0, %.noexc.us ], [ %i.ab, %bb.c ]
  %.126116.us = phi ptr [ %i.x, %.noexc.us ], [ %i.aa, %bb.c ] ; 3 uses
  %i.y = load float, ptr %.126116.us, align 4, !tbaa !51
  %i.z = call fast noundef nofpclass(nan inf) float @asinhf(float noundef nofpclass(nan inf) %i.y) #20
  store float %i.z, ptr %.126116.us, align 4, !tbaa !51
  %i.aa = getelementptr inbounds nuw i8, ptr %.126116.us, i64 4
  %i.ab = add nuw nsw i32 %.1117.us, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ab, %i.n
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !220

._crit_edge.us:                                   ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond127.not.a = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond127.not.a, label %._crit_edge121, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ac = phi i32 [ %i.n, %.noexc.preheader ], [ %i.ak, %._crit_edge ] ; 2 uses
  %indvars.iv129 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next130, %._crit_edge ] ; 2 uses
  %i.ad = load ptr, ptr %3, align 8, !tbaa !46, !noalias !217
  %i.ae = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !217
  %i.af = mul i64 %i.ae, %indvars.iv129
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !217
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ah ; 2 uses
  %i.aj = icmp sgt i32 %i.ac, 3
  br i1 %i.aj, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.ak = phi i32 [ %i.ac, %.noexc ], [ %i.dv, %.lr.ph ] ; 3 uses
  %.025.lcssa = phi ptr [ %i.ai, %.noexc ], [ %i.ds, %.lr.ph ]
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.dt, %.lr.ph ] ; 2 uses
  %i.al = icmp slt i32 %.0.lcssa, %i.ak
  br i1 %i.al, label %.lr.ph118, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0113 = phi i32 [ %i.dt, %.lr.ph ], [ 0, %.noexc ]
  %.025112 = phi ptr [ %i.ds, %.lr.ph ], [ %i.ai, %.noexc ] ; 3 uses
  %i.am = load <4 x i32>, ptr %.025112, align 16, !tbaa !57 ; 2 uses
  %i.an = and <4 x i32> %i.am, splat (i32 2147483647)
  %i.ao = bitcast <4 x i32> %i.an to <4 x float>  ; 5 uses
  %i.ap = fmul fast <4 x float> %i.ao, %i.ao
  %i.aq = fadd fast <4 x float> %i.ap, splat (float 1.000000e+00)
  %i.ar = call fast noundef nofpclass(nan inf) <4 x float> @llvm.sqrt.v4f32(<4 x float> nofpclass(nan inf) %i.aq)
  %i.as = fadd fast <4 x float> %i.ar, %i.ao      ; 2 uses
  %i.at = fcmp fast ole <4 x float> %i.as, zeroinitializer
  %i.au = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.as, <4 x float> splat (float f0x00800000))
  %i.av = bitcast <4 x float> %i.au to <4 x i32>  ; 2 uses
  %i.aw = lshr <4 x i32> %i.av, splat (i32 23)
  %i.ax = and <4 x i32> %i.av, splat (i32 -2139095041)
  %i.ay = or disjoint <4 x i32> %i.ax, splat (i32 1056964608)
  %i.az = bitcast <4 x i32> %i.ay to <4 x float>  ; 3 uses
  %i.ba = add nsw <4 x i32> %i.aw, splat (i32 -127)
  %i.bb = sitofp fast <4 x i32> %i.ba to <4 x float> ; 2 uses
  %i.bc = fadd fast <4 x float> %i.bb, splat (float 1.000000e+00)
  %i.bd = fcmp fast olt <4 x float> %i.az, splat (float f0x3F3504F3) ; 2 uses
  %i.be = select <4 x i1> %i.bd, <4 x float> %i.az, <4 x float> zeroinitializer
  %i.bf = fadd fast <4 x float> %i.az, splat (float -1.000000e+00)
  %i.bg = select fast <4 x i1> %i.bd, <4 x float> %i.bb, <4 x float> %i.bc
  %i.bh = fadd fast <4 x float> %i.bf, %i.be      ; 12 uses
  %i.bi = fmul fast <4 x float> %i.bh, %i.bh      ; 2 uses
  %i.bj = fmul fast <4 x float> %i.bh, splat (float f0x3D9021BB)
  %i.bk = fadd fast <4 x float> %i.bj, splat (float f0xBDEBD1B8)
  %i.bl = fmul fast <4 x float> %i.bk, %i.bh
  %i.bm = fadd fast <4 x float> %i.bl, splat (float f0x3DEF251A)
  %i.bn = fmul fast <4 x float> %i.bm, %i.bh
  %i.bo = fadd fast <4 x float> %i.bn, splat (float f0xBDFE5D4F)
  %i.bp = fmul fast <4 x float> %i.bo, %i.bh
  %i.bq = fadd fast <4 x float> %i.bp, splat (float f0x3E11E9BF)
  %i.br = fmul fast <4 x float> %i.bq, %i.bh
  %i.bs = fadd fast <4 x float> %i.br, splat (float f0xBE2AAE50)
  %i.bt = fmul fast <4 x float> %i.bs, %i.bh
  %i.bu = fadd fast <4 x float> %i.bt, splat (float f0x3E4CCEAC)
  %i.bv = fmul fast <4 x float> %i.bu, %i.bh
  %i.bw = fadd fast <4 x float> %i.bv, splat (float f0xBE7FFFFC)
  %i.bx = fmul fast <4 x float> %i.bw, %i.bh
  %i.by = fadd fast <4 x float> %i.bx, splat (float f0x3EAAAAAA)
  %i.bz = fmul fast <4 x float> %i.bi, %i.bh
  %reass.mul.a = fmul fast <4 x float> %i.bz, %i.by
  %.neg = fmul fast <4 x float> %i.bi, splat (float -5.000000e-01)
  %reass.mul109 = fmul fast <4 x float> %i.bg, splat (float f0x3F317218)
  %6 = fadd fast <4 x float> %i.bh, %.neg
  %i.ca = fadd fast <4 x float> %reass.mul.a, %6
  %i.cb = fadd fast <4 x float> %i.ca, %reass.mul109
  %i.cc = bitcast <4 x float> %i.cb to <4 x i32>
  %i.cd = select <4 x i1> %i.at, <4 x i32> splat (i32 -1), <4 x i32> %i.cc
  %i.ce = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ao, <4 x float> splat (float f0x00800000))
  %i.cf = bitcast <4 x float> %i.ce to <4 x i32>  ; 2 uses
  %i.cg = lshr <4 x i32> %i.cf, splat (i32 23)
  %i.ch = and <4 x i32> %i.cf, splat (i32 -2139095041)
  %i.ci = or disjoint <4 x i32> %i.ch, splat (i32 1056964608)
  %i.cj = bitcast <4 x i32> %i.ci to <4 x float>  ; 3 uses
  %i.ck = add nsw <4 x i32> %i.cg, splat (i32 -127)
  %i.cl = sitofp fast <4 x i32> %i.ck to <4 x float> ; 2 uses
  %i.cm = fadd fast <4 x float> %i.cl, splat (float 1.000000e+00)
  %i.cn = fcmp fast olt <4 x float> %i.cj, splat (float f0x3F3504F3) ; 2 uses
  %i.co = select <4 x i1> %i.cn, <4 x float> %i.cj, <4 x float> zeroinitializer
  %i.cp = fadd fast <4 x float> %i.cj, splat (float -1.000000e+00)
  %i.cq = select fast <4 x i1> %i.cn, <4 x float> %i.cl, <4 x float> %i.cm ; 2 uses
  %i.cr = fadd fast <4 x float> %i.cp, %i.co      ; 12 uses
  %i.cs = fmul fast <4 x float> %i.cr, %i.cr      ; 2 uses
  %i.ct = fmul fast <4 x float> %i.cr, splat (float f0x3D9021BB)
  %i.cu = fadd fast <4 x float> %i.ct, splat (float f0xBDEBD1B8)
  %i.cv = fmul fast <4 x float> %i.cu, %i.cr
  %i.cw = fadd fast <4 x float> %i.cv, splat (float f0x3DEF251A)
  %i.cx = fmul fast <4 x float> %i.cw, %i.cr
  %i.cy = fadd fast <4 x float> %i.cx, splat (float f0xBDFE5D4F)
  %i.cz = fmul fast <4 x float> %i.cy, %i.cr
  %i.da = fadd fast <4 x float> %i.cz, splat (float f0x3E11E9BF)
  %i.db = fmul fast <4 x float> %i.da, %i.cr
  %i.dc = fadd fast <4 x float> %i.db, splat (float f0xBE2AAE50)
  %i.dd = fmul fast <4 x float> %i.dc, %i.cr
  %i.de = fadd fast <4 x float> %i.dd, splat (float f0x3E4CCEAC)
  %i.df = fmul fast <4 x float> %i.de, %i.cr
  %i.dg = fadd fast <4 x float> %i.df, splat (float f0xBE7FFFFC)
  %i.dh = fmul fast <4 x float> %i.dg, %i.cr
  %i.di = fadd fast <4 x float> %i.dh, splat (float f0x3EAAAAAA)
  %7 = fmul fast <4 x float> %i.cs, %i.cr
  %i.dj = fmul fast <4 x float> %7, %i.di
  %reass.mul107 = fmul fast <4 x float> %i.cq, splat (float f0xB95E8083)
  %reass.add110 = fadd fast <4 x float> %reass.mul107, %i.dj
  %reass.mul111 = fmul fast <4 x float> %i.cs, splat (float -5.000000e-01)
  %8 = fadd fast <4 x float> %reass.mul111, %reass.add110
  %i.dk = fadd fast <4 x float> %i.cr, %8
  %9 = fmul fast <4 x float> %i.cq, splat (float f0x3F318000)
  %i.dl = fadd fast <4 x float> %9, %i.dk
  %i.dm = fadd fast <4 x float> %i.dl, splat (float f0x3F317218)
  %i.dn = fcmp fast ule <4 x float> %i.ao, splat (float f0x5F0AC723)
  %i.do = bitcast <4 x float> %i.dm to <4 x i32>
  %i.dp = select <4 x i1> %i.dn, <4 x i32> %i.cd, <4 x i32> %i.do
  %i.dq = and <4 x i32> %i.am, splat (i32 -2147483648)
  %i.dr = or <4 x i32> %i.dp, %i.dq
  store <4 x i32> %i.dr, ptr %.025112, align 16, !tbaa !57
  %i.ds = getelementptr inbounds nuw i8, ptr %.025112, i64 16 ; 2 uses
  %i.dt = add nuw nsw i32 %.0113, 4               ; 3 uses
  %i.du = or disjoint i32 %i.dt, 3
  %i.dv = load i32, ptr %4, align 4, !tbaa !40    ; 2 uses
  %i.dw = icmp slt i32 %i.du, %i.dv
  br i1 %i.dw, label %.lr.ph, label %.preheader, !llvm.loop !221

.lr.ph118:                                        ; preds = %.preheader, %.lr.ph118
  %.1117 = phi i32 [ %i.ea, %.lr.ph118 ], [ %.0.lcssa, %.preheader ]
  %.126116 = phi ptr [ %i.dz, %.lr.ph118 ], [ %.025.lcssa, %.preheader ] ; 3 uses
  %i.dx = load float, ptr %.126116, align 4, !tbaa !51
  %i.dy = call fast noundef nofpclass(nan inf) float @asinhf(float noundef nofpclass(nan inf) %i.dx) #20
  store float %i.dy, ptr %.126116, align 4, !tbaa !51
  %i.dz = getelementptr inbounds nuw i8, ptr %.126116, i64 4
  %i.ea = add nuw nsw i32 %.1117, 1               ; 2 uses
  %exitcond128.not = icmp eq i32 %i.ea, %i.ak
  br i1 %exitcond128.not, label %._crit_edge, label %.lr.ph118, !llvm.loop !220

._crit_edge:                                      ; preds = %.lr.ph118, %.preheader
  %indvars.iv.next130 = add nsw i64 %indvars.iv129, 1 ; 2 uses
  %lftr.wideiv132 = trunc i64 %indvars.iv.next130 to i32
  %exitcond133.not = icmp eq i32 %i.q, %lftr.wideiv132
  br i1 %exitcond133.not, label %._crit_edge121, label %.noexc, !llvm.loop !222

._crit_edge121:                                   ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge121, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare nofpclass(nan inf) float @asinhf(float noundef nofpclass(nan inf)) local_unnamed_addr #13

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_19UnaryOp_x86_functor13unary_op_coshEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !40     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !40
  %i.h = load i32, ptr %0, align 4, !tbaa !40     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !40
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !40
  %i.k = load i32, ptr %i.a, align 4, !tbaa !40   ; 3 uses
  %.not89 = icmp sgt i32 %i.k, %i.j
  br i1 %.not89, label %._crit_edge91, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !40     ; 5 uses
  %i.o = icmp sgt i32 %i.n, 3
  br i1 %i.o, label %.noexc.preheader, label %.noexc.lr.ph.split.us

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  br label %.noexc

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.r = load ptr, ptr %3, align 8, !tbaa !46, !noalias !223
  %i.s = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !223
  %i.t = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !223
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.noexc.us.preheader, label %._crit_edge91

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.us
  %i.v = sext i32 %i.k to i64
  %i.w = add nsw i32 %i.j, 1
  %exitcond.not = icmp eq i32 %i.n, 1
  %exitcond.not.1 = icmp eq i32 %i.n, 2
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.v, %.noexc.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass ; 4 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !51
  %i.z = call fast noundef nofpclass(nan inf) float @llvm.cosh.f32(float %i.y)
  store float %i.z, ptr %i.x, align 4, !tbaa !51
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %.noexc.us
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !51
  %i.ac = call fast noundef nofpclass(nan inf) float @llvm.cosh.f32(float %i.ab)
  store float %i.ac, ptr %i.aa, align 4, !tbaa !51
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !51
  %i.af = call fast noundef nofpclass(nan inf) float @llvm.cosh.f32(float %i.ae)
  store float %i.af, ptr %i.ad, align 4, !tbaa !51
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.d, %bb.c, %.noexc.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond97.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond97.not, label %._crit_edge91, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ag = phi i32 [ %i.n, %.noexc.preheader ], [ %i.ao, %._crit_edge ] ; 2 uses
  %indvars.iv99 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next100, %._crit_edge ] ; 2 uses
  %i.ah = load ptr, ptr %3, align 8, !tbaa !46, !noalias !223
  %i.ai = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !223
  %i.aj = mul i64 %i.ai, %indvars.iv99
  %i.ak = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !223
  %i.al = mul i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.al ; 2 uses
  %i.an = icmp sgt i32 %i.ag, 3
  br i1 %i.an, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.ao = phi i32 [ %i.ag, %.noexc ], [ %i.dq, %.lr.ph ] ; 4 uses
  %.025.lcssa = phi ptr [ %i.am, %.noexc ], [ %i.dn, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.do, %.lr.ph ] ; 4 uses
  %i.ap = icmp slt i32 %.0.lcssa, %i.ao
  br i1 %i.ap, label %.lr.ph88.preheader, label %._crit_edge

.lr.ph88.preheader:                               ; preds = %.preheader
  %i.aq = xor i32 %.0.lcssa, -1
  %i.ar = add i32 %i.ao, %i.aq                    ; 2 uses
  %i.as = zext i32 %i.ar to i64
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ar, 3
  br i1 %min.iters.check, label %.lr.ph88.preheader117, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph88.preheader
  %n.vec = and i64 %i.at, 8589934588              ; 4 uses
  %i.au = trunc i64 %n.vec to i32
  %i.av = add i32 %.0.lcssa, %i.au
  %i.aw = shl nuw nsw i64 %n.vec, 2
  %i.ax = getelementptr i8, ptr %.025.lcssa, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.025.lcssa, i64 %i.ay ; 2 uses
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !51
  %i.az = call fast <4 x float> @llvm.cosh.v4f32(<4 x float> %wide.load)
  store <4 x float> %i.az, ptr %next.gep, align 4, !tbaa !51
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !226

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph88.preheader117

.lr.ph88.preheader117:                            ; preds = %.lr.ph88.preheader, %middle.block
  %.187.ph = phi i32 [ %.0.lcssa, %.lr.ph88.preheader ], [ %i.av, %middle.block ]
  %.12686.ph = phi ptr [ %.025.lcssa, %.lr.ph88.preheader ], [ %i.ax, %middle.block ]
  br label %.lr.ph88

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.083 = phi i32 [ %i.do, %.lr.ph ], [ 0, %.noexc ]
  %.02582 = phi ptr [ %i.dn, %.lr.ph ], [ %i.am, %.noexc ] ; 3 uses
  %i.bb = load <4 x float>, ptr %.02582, align 16, !tbaa !57 ; 2 uses
  %i.bc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.bb, <4 x float> splat (float f0x42B0C0A5))
  %i.bd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bc, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.be = fmul fast <4 x float> %i.bd, splat (float f0x3FB8AA3B)
  %i.bf = fadd fast <4 x float> %i.be, splat (float 5.000000e-01) ; 2 uses
  %i.bg = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bf)
  %i.bh = sitofp fast <4 x i32> %i.bg to <4 x float> ; 2 uses
  %i.bi = fcmp fast olt <4 x float> %i.bf, %i.bh
  %i.bj = select <4 x i1> %i.bi, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.bk = fsub fast <4 x float> %i.bh, %i.bj      ; 2 uses
  %i.bl = fmul fast <4 x float> %i.bk, splat (float f0x3F317218)
  %i.bm = fsub fast <4 x float> %i.bd, %i.bl      ; 8 uses
  %i.bn = fmul fast <4 x float> %i.bm, %i.bm
  %i.bo = fmul fast <4 x float> %i.bm, splat (float f0x39506967)
  %i.bp = fadd fast <4 x float> %i.bo, splat (float f0x3AB743CE)
  %i.bq = fmul fast <4 x float> %i.bp, %i.bm
  %i.br = fadd fast <4 x float> %i.bq, splat (float f0x3C088908)
  %i.bs = fmul fast <4 x float> %i.br, %i.bm
  %i.bt = fadd fast <4 x float> %i.bs, splat (float f0x3D2AA9C1)
  %i.bu = fmul fast <4 x float> %i.bt, %i.bm
  %i.bv = fadd fast <4 x float> %i.bu, splat (float f0x3E2AAAAA)
  %i.bw = fmul fast <4 x float> %i.bv, %i.bm
  %i.bx = fadd fast <4 x float> %i.bw, splat (float 5.000000e-01)
  %i.by = fmul fast <4 x float> %i.bn, %i.bx
  %i.bz = fadd fast <4 x float> %i.bm, %i.by
  %i.ca = fadd fast <4 x float> %i.bz, splat (float 1.000000e+00)
  %i.cb = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bk)
  %i.cc = shl <4 x i32> %i.cb, splat (i32 23)
  %i.cd = add <4 x i32> %i.cc, splat (i32 1065353216)
  %i.ce = bitcast <4 x i32> %i.cd to <4 x float>
  %i.cf = fmul fast <4 x float> %i.ca, %i.ce
  %i.cg = fneg fast <4 x float> %i.bb
  %i.ch = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cg, <4 x float> splat (float f0x42B0C0A5))
  %i.ci = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ch, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cj = fmul fast <4 x float> %i.ci, splat (float f0x3FB8AA3B)
  %i.ck = fadd fast <4 x float> %i.cj, splat (float 5.000000e-01) ; 2 uses
  %i.cl = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ck)
  %i.cm = sitofp fast <4 x i32> %i.cl to <4 x float> ; 2 uses
  %i.cn = fcmp fast olt <4 x float> %i.ck, %i.cm
  %i.co = select <4 x i1> %i.cn, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.cp = fsub fast <4 x float> %i.cm, %i.co      ; 2 uses
  %i.cq = fmul fast <4 x float> %i.cp, splat (float f0x3F317218)
  %i.cr = fsub fast <4 x float> %i.ci, %i.cq      ; 8 uses
  %i.cs = fmul fast <4 x float> %i.cr, %i.cr
  %i.ct = fmul fast <4 x float> %i.cr, splat (float f0x39506967)
  %i.cu = fadd fast <4 x float> %i.ct, splat (float f0x3AB743CE)
  %i.cv = fmul fast <4 x float> %i.cu, %i.cr
  %i.cw = fadd fast <4 x float> %i.cv, splat (float f0x3C088908)
  %i.cx = fmul fast <4 x float> %i.cw, %i.cr
  %i.cy = fadd fast <4 x float> %i.cx, splat (float f0x3D2AA9C1)
  %i.cz = fmul fast <4 x float> %i.cy, %i.cr
  %i.da = fadd fast <4 x float> %i.cz, splat (float f0x3E2AAAAA)
  %i.db = fmul fast <4 x float> %i.da, %i.cr
  %i.dc = fadd fast <4 x float> %i.db, splat (float 5.000000e-01)
  %i.dd = fmul fast <4 x float> %i.cs, %i.dc
  %i.de = fadd fast <4 x float> %i.cr, %i.dd
  %i.df = fadd fast <4 x float> %i.de, splat (float 1.000000e+00)
  %i.dg = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cp)
  %i.dh = shl <4 x i32> %i.dg, splat (i32 23)
  %i.di = add <4 x i32> %i.dh, splat (i32 1065353216)
  %i.dj = bitcast <4 x i32> %i.di to <4 x float>
  %i.dk = fmul fast <4 x float> %i.df, %i.dj
  %i.dl = fadd fast <4 x float> %i.dk, %i.cf
  %i.dm = fmul fast <4 x float> %i.dl, splat (float 5.000000e-01)
  store <4 x float> %i.dm, ptr %.02582, align 16, !tbaa !57
  %i.dn = getelementptr inbounds nuw i8, ptr %.02582, i64 16 ; 2 uses
  %i.do = add nuw nsw i32 %.083, 4                ; 3 uses
  %i.dp = or disjoint i32 %i.do, 3
  %i.dq = load i32, ptr %4, align 4, !tbaa !40    ; 2 uses
  %i.dr = icmp slt i32 %i.dp, %i.dq
  br i1 %i.dr, label %.lr.ph, label %.preheader, !llvm.loop !227

.lr.ph88:                                         ; preds = %.lr.ph88.preheader117, %.lr.ph88
  %.187 = phi i32 [ %i.dv, %.lr.ph88 ], [ %.187.ph, %.lr.ph88.preheader117 ]
  %.12686 = phi ptr [ %i.du, %.lr.ph88 ], [ %.12686.ph, %.lr.ph88.preheader117 ] ; 3 uses
  %i.ds = load float, ptr %.12686, align 4, !tbaa !51
  %i.dt = call fast noundef nofpclass(nan inf) float @llvm.cosh.f32(float %i.ds)
  store float %i.dt, ptr %.12686, align 4, !tbaa !51
  %i.du = getelementptr inbounds nuw i8, ptr %.12686, i64 4
  %i.dv = add nuw nsw i32 %.187, 1                ; 2 uses
  %exitcond98.not = icmp eq i32 %i.dv, %i.ao
  br i1 %exitcond98.not, label %._crit_edge, label %.lr.ph88, !llvm.loop !228

._crit_edge:                                      ; preds = %.lr.ph88, %middle.block, %.preheader
  %indvars.iv.next100 = add nsw i64 %indvars.iv99, 1 ; 2 uses
  %lftr.wideiv102 = trunc i64 %indvars.iv.next100 to i32
  %exitcond103.not = icmp eq i32 %i.q, %lftr.wideiv102
  br i1 %exitcond103.not, label %._crit_edge91, label %.noexc, !llvm.loop !229

._crit_edge91:                                    ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge91, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.cosh.f32(float) #11

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_19UnaryOp_x86_functor14unary_op_acoshEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !40     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !40
  %i.h = load i32, ptr %0, align 4, !tbaa !40     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !40
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !40
  %i.k = load i32, ptr %i.a, align 4, !tbaa !40   ; 3 uses
  %.not118 = icmp sgt i32 %i.k, %i.j
  br i1 %.not118, label %._crit_edge120, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !40     ; 4 uses
  %i.o = icmp sgt i32 %i.n, 3
  br i1 %i.o, label %.noexc.preheader, label %.noexc.lr.ph.split.us

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  br label %.noexc

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.r = load ptr, ptr %3, align 8, !tbaa !46, !noalias !230
  %i.s = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !230
  %i.t = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !230
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.noexc.us.preheader, label %._crit_edge120

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.us
  %i.v = sext i32 %i.k to i64
  %i.w = add nsw i32 %i.j, 1
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.v, %.noexc.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass
  br label %bb.c

bb.c:                                             ; preds = %.noexc.us, %bb.c
  %.1116.us = phi i32 [ 0, %.noexc.us ], [ %i.ab, %bb.c ]
  %.126115.us = phi ptr [ %i.x, %.noexc.us ], [ %i.aa, %bb.c ] ; 3 uses
  %i.y = load float, ptr %.126115.us, align 4, !tbaa !51
  %i.z = call fast noundef nofpclass(nan inf) float @acoshf(float noundef nofpclass(nan inf) %i.y) #20
  store float %i.z, ptr %.126115.us, align 4, !tbaa !51
  %i.aa = getelementptr inbounds nuw i8, ptr %.126115.us, i64 4
  %i.ab = add nuw nsw i32 %.1116.us, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ab, %i.n
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !233

._crit_edge.us:                                   ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond126.not.a = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond126.not.a, label %._crit_edge120, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ac = phi i32 [ %i.n, %.noexc.preheader ], [ %i.ak, %._crit_edge ] ; 2 uses
  %indvars.iv128 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next129, %._crit_edge ] ; 2 uses
  %i.ad = load ptr, ptr %3, align 8, !tbaa !46, !noalias !230
  %i.ae = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !230
  %i.af = mul i64 %i.ae, %indvars.iv128
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !230
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ah ; 2 uses
  %i.aj = icmp sgt i32 %i.ac, 3
  br i1 %i.aj, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.ak = phi i32 [ %i.ac, %.noexc ], [ %i.dq, %.lr.ph ] ; 3 uses
  %.025.lcssa = phi ptr [ %i.ai, %.noexc ], [ %i.dn, %.lr.ph ]
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.do, %.lr.ph ] ; 2 uses
  %i.al = icmp slt i32 %.0.lcssa, %i.ak
  br i1 %i.al, label %.lr.ph117, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0112 = phi i32 [ %i.do, %.lr.ph ], [ 0, %.noexc ]
  %.025111 = phi ptr [ %i.dn, %.lr.ph ], [ %i.ai, %.noexc ] ; 3 uses
  %i.am = load <4 x float>, ptr %.025111, align 16, !tbaa !57 ; 5 uses
  %i.an = fadd fast <4 x float> %i.am, splat (float -1.000000e+00)
  %i.ao = fadd fast <4 x float> %i.am, splat (float 1.000000e+00)
  %i.ap = fmul fast <4 x float> %i.an, %i.ao
  %i.aq = call fast <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.ap)
  %i.ar = fadd fast <4 x float> %i.aq, %i.am      ; 2 uses
  %i.as = fcmp fast ole <4 x float> %i.ar, zeroinitializer
  %i.at = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ar, <4 x float> splat (float f0x00800000))
  %i.au = bitcast <4 x float> %i.at to <4 x i32>  ; 2 uses
  %i.av = lshr <4 x i32> %i.au, splat (i32 23)
  %i.aw = and <4 x i32> %i.au, splat (i32 -2139095041)
  %i.ax = or disjoint <4 x i32> %i.aw, splat (i32 1056964608)
  %i.ay = bitcast <4 x i32> %i.ax to <4 x float>  ; 3 uses
  %i.az = add nsw <4 x i32> %i.av, splat (i32 -127)
  %i.ba = sitofp fast <4 x i32> %i.az to <4 x float> ; 2 uses
  %i.bb = fadd fast <4 x float> %i.ba, splat (float 1.000000e+00)
  %i.bc = fcmp fast olt <4 x float> %i.ay, splat (float f0x3F3504F3) ; 2 uses
  %i.bd = select <4 x i1> %i.bc, <4 x float> %i.ay, <4 x float> zeroinitializer
  %i.be = fadd fast <4 x float> %i.ay, splat (float -1.000000e+00)
  %i.bf = select fast <4 x i1> %i.bc, <4 x float> %i.ba, <4 x float> %i.bb
  %i.bg = fadd fast <4 x float> %i.be, %i.bd      ; 12 uses
  %i.bh = fmul fast <4 x float> %i.bg, %i.bg      ; 2 uses
  %i.bi = fmul fast <4 x float> %i.bg, splat (float f0x3D9021BB)
  %i.bj = fadd fast <4 x float> %i.bi, splat (float f0xBDEBD1B8)
  %i.bk = fmul fast <4 x float> %i.bj, %i.bg
  %i.bl = fadd fast <4 x float> %i.bk, splat (float f0x3DEF251A)
  %i.bm = fmul fast <4 x float> %i.bl, %i.bg
  %i.bn = fadd fast <4 x float> %i.bm, splat (float f0xBDFE5D4F)
  %i.bo = fmul fast <4 x float> %i.bn, %i.bg
  %i.bp = fadd fast <4 x float> %i.bo, splat (float f0x3E11E9BF)
  %i.bq = fmul fast <4 x float> %i.bp, %i.bg
  %i.br = fadd fast <4 x float> %i.bq, splat (float f0xBE2AAE50)
  %i.bs = fmul fast <4 x float> %i.br, %i.bg
  %i.bt = fadd fast <4 x float> %i.bs, splat (float f0x3E4CCEAC)
  %i.bu = fmul fast <4 x float> %i.bt, %i.bg
  %i.bv = fadd fast <4 x float> %i.bu, splat (float f0xBE7FFFFC)
  %i.bw = fmul fast <4 x float> %i.bv, %i.bg
  %i.bx = fadd fast <4 x float> %i.bw, splat (float f0x3EAAAAAA)
  %i.by = fmul fast <4 x float> %i.bh, %i.bg
  %reass.mul.a = fmul fast <4 x float> %i.by, %i.bx
  %.neg = fmul fast <4 x float> %i.bh, splat (float -5.000000e-01)
  %reass.mul108 = fmul fast <4 x float> %i.bf, splat (float f0x3F317218)
  %6 = fadd fast <4 x float> %i.bg, %.neg
  %i.bz = fadd fast <4 x float> %reass.mul.a, %6
  %i.ca = fadd fast <4 x float> %i.bz, %reass.mul108
  %i.cb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.am, <4 x float> splat (float f0x00800000))
  %i.cc = bitcast <4 x float> %i.cb to <4 x i32>  ; 2 uses
  %i.cd = lshr <4 x i32> %i.cc, splat (i32 23)
  %i.ce = and <4 x i32> %i.cc, splat (i32 -2139095041)
  %i.cf = or disjoint <4 x i32> %i.ce, splat (i32 1056964608)
  %i.cg = bitcast <4 x i32> %i.cf to <4 x float>  ; 3 uses
  %i.ch = add nsw <4 x i32> %i.cd, splat (i32 -127)
  %i.ci = sitofp fast <4 x i32> %i.ch to <4 x float> ; 2 uses
  %i.cj = fadd fast <4 x float> %i.ci, splat (float 1.000000e+00)
  %i.ck = fcmp fast olt <4 x float> %i.cg, splat (float f0x3F3504F3) ; 2 uses
  %i.cl = select <4 x i1> %i.ck, <4 x float> %i.cg, <4 x float> zeroinitializer
  %i.cm = fadd fast <4 x float> %i.cg, splat (float -1.000000e+00)
  %i.cn = select fast <4 x i1> %i.ck, <4 x float> %i.ci, <4 x float> %i.cj ; 2 uses
  %i.co = fadd fast <4 x float> %i.cm, %i.cl      ; 12 uses
  %i.cp = fmul fast <4 x float> %i.co, %i.co      ; 2 uses
  %i.cq = fmul fast <4 x float> %i.co, splat (float f0x3D9021BB)
  %i.cr = fadd fast <4 x float> %i.cq, splat (float f0xBDEBD1B8)
  %i.cs = fmul fast <4 x float> %i.cr, %i.co
  %i.ct = fadd fast <4 x float> %i.cs, splat (float f0x3DEF251A)
  %i.cu = fmul fast <4 x float> %i.ct, %i.co
  %i.cv = fadd fast <4 x float> %i.cu, splat (float f0xBDFE5D4F)
  %i.cw = fmul fast <4 x float> %i.cv, %i.co
  %i.cx = fadd fast <4 x float> %i.cw, splat (float f0x3E11E9BF)
  %i.cy = fmul fast <4 x float> %i.cx, %i.co
  %i.cz = fadd fast <4 x float> %i.cy, splat (float f0xBE2AAE50)
  %i.da = fmul fast <4 x float> %i.cz, %i.co
  %i.db = fadd fast <4 x float> %i.da, splat (float f0x3E4CCEAC)
  %i.dc = fmul fast <4 x float> %i.db, %i.co
  %i.dd = fadd fast <4 x float> %i.dc, splat (float f0xBE7FFFFC)
  %i.de = fmul fast <4 x float> %i.dd, %i.co
  %i.df = fadd fast <4 x float> %i.de, splat (float f0x3EAAAAAA)
  %7 = fmul fast <4 x float> %i.cp, %i.co
  %i.dg = fmul fast <4 x float> %7, %i.df
  %reass.mul106 = fmul fast <4 x float> %i.cn, splat (float f0xB95E8083)
  %reass.add109 = fadd fast <4 x float> %reass.mul106, %i.dg
  %reass.mul110 = fmul fast <4 x float> %i.cp, splat (float -5.000000e-01)
  %8 = fadd fast <4 x float> %reass.mul110, %reass.add109
  %i.dh = fadd fast <4 x float> %i.co, %8
  %9 = fmul fast <4 x float> %i.cn, splat (float f0x3F318000)
  %i.di = fadd fast <4 x float> %9, %i.dh
  %i.dj = fadd fast <4 x float> %i.di, splat (float f0x3F317218)
  %i.dk = fcmp fast ule <4 x float> %i.am, splat (float f0x5F0AC723)
  %i.dl = select <4 x i1> %i.as, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.ca
  %i.dm = select <4 x i1> %i.dk, <4 x float> %i.dl, <4 x float> %i.dj
  store <4 x float> %i.dm, ptr %.025111, align 16, !tbaa !57
  %i.dn = getelementptr inbounds nuw i8, ptr %.025111, i64 16 ; 2 uses
  %i.do = add nuw nsw i32 %.0112, 4               ; 3 uses
  %i.dp = or disjoint i32 %i.do, 3
  %i.dq = load i32, ptr %4, align 4, !tbaa !40    ; 2 uses
  %i.dr = icmp slt i32 %i.dp, %i.dq
  br i1 %i.dr, label %.lr.ph, label %.preheader, !llvm.loop !234

.lr.ph117:                                        ; preds = %.preheader, %.lr.ph117
  %.1116 = phi i32 [ %i.dv, %.lr.ph117 ], [ %.0.lcssa, %.preheader ]
  %.126115 = phi ptr [ %i.du, %.lr.ph117 ], [ %.025.lcssa, %.preheader ] ; 3 uses
  %i.ds = load float, ptr %.126115, align 4, !tbaa !51
  %i.dt = call fast noundef nofpclass(nan inf) float @acoshf(float noundef nofpclass(nan inf) %i.ds) #20
  store float %i.dt, ptr %.126115, align 4, !tbaa !51
  %i.du = getelementptr inbounds nuw i8, ptr %.126115, i64 4
  %i.dv = add nuw nsw i32 %.1116, 1               ; 2 uses
  %exitcond127.not = icmp eq i32 %i.dv, %i.ak
  br i1 %exitcond127.not, label %._crit_edge, label %.lr.ph117, !llvm.loop !233

._crit_edge:                                      ; preds = %.lr.ph117, %.preheader
  %indvars.iv.next129 = add nsw i64 %indvars.iv128, 1 ; 2 uses
  %lftr.wideiv131 = trunc i64 %indvars.iv.next129 to i32
  %exitcond132.not = icmp eq i32 %i.q, %lftr.wideiv131
  br i1 %exitcond132.not, label %._crit_edge120, label %.noexc, !llvm.loop !235

._crit_edge120:                                   ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge120, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare nofpclass(nan inf) float @acoshf(float noundef nofpclass(nan inf)) local_unnamed_addr #14

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_19UnaryOp_x86_functor14unary_op_atanhEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !40     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !40
  %i.h = load i32, ptr %0, align 4, !tbaa !40     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !40
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !40
  %i.k = load i32, ptr %i.a, align 4, !tbaa !40   ; 3 uses
  %.not128 = icmp sgt i32 %i.k, %i.j
  br i1 %.not128, label %._crit_edge130, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !40     ; 4 uses
  %i.o = icmp sgt i32 %i.n, 3
  br i1 %i.o, label %.noexc.preheader, label %.noexc.lr.ph.split.us

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  br label %.noexc

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.r = load ptr, ptr %3, align 8, !tbaa !46, !noalias !236
  %i.s = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !236
  %i.t = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !236
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.noexc.us.preheader, label %._crit_edge130

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.us
  %i.v = sext i32 %i.k to i64
  %i.w = add nsw i32 %i.j, 1
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.v, %.noexc.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass
  br label %bb.c

bb.c:                                             ; preds = %.noexc.us, %bb.c
  %.1126.us = phi i32 [ 0, %.noexc.us ], [ %i.ab, %bb.c ]
  %.126125.us = phi ptr [ %i.x, %.noexc.us ], [ %i.aa, %bb.c ] ; 3 uses
  %i.y = load float, ptr %.126125.us, align 4, !tbaa !51
  %i.z = call fast noundef nofpclass(nan inf) float @atanhf(float noundef nofpclass(nan inf) %i.y) #20
  store float %i.z, ptr %.126125.us, align 4, !tbaa !51
  %i.aa = getelementptr inbounds nuw i8, ptr %.126125.us, i64 4
  %i.ab = add nuw nsw i32 %.1126.us, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ab, %i.n
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !239

._crit_edge.us:                                   ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond136.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond136.not, label %._crit_edge130, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ac = phi i32 [ %i.n, %.noexc.preheader ], [ %i.ak, %._crit_edge ] ; 2 uses
  %indvars.iv138 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next139, %._crit_edge ] ; 2 uses
  %i.ad = load ptr, ptr %3, align 8, !tbaa !46, !noalias !236
  %i.ae = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !236
  %i.af = mul i64 %i.ae, %indvars.iv138
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !236
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ah ; 2 uses
  %i.aj = icmp sgt i32 %i.ac, 3
  br i1 %i.aj, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.ak = phi i32 [ %i.ac, %.noexc ], [ %i.dw, %.lr.ph ] ; 3 uses
  %.025.lcssa = phi ptr [ %i.ai, %.noexc ], [ %i.dt, %.lr.ph ]
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.du, %.lr.ph ] ; 2 uses
  %i.al = icmp slt i32 %.0.lcssa, %i.ak
  br i1 %i.al, label %.lr.ph127, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0122 = phi i32 [ %i.du, %.lr.ph ], [ 0, %.noexc ]
  %.025121 = phi ptr [ %i.dt, %.lr.ph ], [ %i.ai, %.noexc ] ; 3 uses
  %i.am = load <4 x float>, ptr %.025121, align 16, !tbaa !57 ; 8 uses
  %i.an = fmul fast <4 x float> %i.am, %i.am      ; 2 uses
  %i.ao = fmul fast <4 x float> %i.am, splat (float f0x3EAAAAAB) ; 2 uses
  %i.ap = fadd fast <4 x float> %i.ao, splat (float -5.000000e-01)
  %i.aq = fmul fast <4 x float> %i.an, %i.ap
  %i.ar = fadd fast <4 x float> %i.aq, %i.am
  %i.as = fadd fast <4 x float> %i.am, splat (float 1.000000e+00)
  %i.at = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.as, <4 x float> splat (float f0x00800000))
  %i.au = bitcast <4 x float> %i.at to <4 x i32>  ; 2 uses
  %i.av = lshr <4 x i32> %i.au, splat (i32 23)
  %i.aw = and <4 x i32> %i.au, splat (i32 -2139095041)
  %i.ax = or disjoint <4 x i32> %i.aw, splat (i32 1056964608)
  %i.ay = bitcast <4 x i32> %i.ax to <4 x float>  ; 3 uses
  %i.az = add nsw <4 x i32> %i.av, splat (i32 -127)
  %i.ba = sitofp fast <4 x i32> %i.az to <4 x float> ; 2 uses
  %i.bb = fadd fast <4 x float> %i.ba, splat (float 1.000000e+00)
  %i.bc = fcmp fast olt <4 x float> %i.ay, splat (float f0x3F3504F3) ; 2 uses
  %i.bd = select <4 x i1> %i.bc, <4 x float> %i.ay, <4 x float> zeroinitializer
  %i.be = fadd fast <4 x float> %i.ay, splat (float -1.000000e+00)
  %i.bf = select fast <4 x i1> %i.bc, <4 x float> %i.ba, <4 x float> %i.bb
  %i.bg = fadd fast <4 x float> %i.be, %i.bd      ; 12 uses
  %i.bh = fmul fast <4 x float> %i.bg, %i.bg      ; 2 uses
  %i.bi = fmul fast <4 x float> %i.bg, splat (float f0x3D9021BB)
  %i.bj = fadd fast <4 x float> %i.bi, splat (float f0xBDEBD1B8)
  %i.bk = fmul fast <4 x float> %i.bj, %i.bg
  %i.bl = fadd fast <4 x float> %i.bk, splat (float f0x3DEF251A)
  %i.bm = fmul fast <4 x float> %i.bl, %i.bg
  %i.bn = fadd fast <4 x float> %i.bm, splat (float f0xBDFE5D4F)
  %i.bo = fmul fast <4 x float> %i.bn, %i.bg
  %i.bp = fadd fast <4 x float> %i.bo, splat (float f0x3E11E9BF)
  %i.bq = fmul fast <4 x float> %i.bp, %i.bg
  %i.br = fadd fast <4 x float> %i.bq, splat (float f0xBE2AAE50)
  %i.bs = fmul fast <4 x float> %i.br, %i.bg
  %i.bt = fadd fast <4 x float> %i.bs, splat (float f0x3E4CCEAC)
  %i.bu = fmul fast <4 x float> %i.bt, %i.bg
  %i.bv = fadd fast <4 x float> %i.bu, splat (float f0xBE7FFFFC)
  %i.bw = fmul fast <4 x float> %i.bv, %i.bg
  %i.bx = fadd fast <4 x float> %i.bw, splat (float f0x3EAAAAAA)
  %i.by = fmul fast <4 x float> %i.bh, %i.bg
  %reass.mul.a = fmul fast <4 x float> %i.by, %i.bx
  %.neg = fmul fast <4 x float> %i.bh, splat (float -5.000000e-01)
  %reass.mul118 = fmul fast <4 x float> %i.bf, splat (float f0x3F317218)
  %6 = fadd fast <4 x float> %i.bg, %.neg
  %i.bz = fadd fast <4 x float> %reass.mul.a, %6
  %i.ca = fadd fast <4 x float> %i.bz, %reass.mul118
  %i.cb = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.am)
  %i.cc = fcmp fast uge <4 x float> %i.cb, splat (float f0x38D1B717) ; 2 uses
  %i.cd = select <4 x i1> %i.cc, <4 x float> %i.ca, <4 x float> %i.ar
  %i.ce = fsub fast <4 x float> splat (float -5.000000e-01), %i.ao
  %i.cf = fmul fast <4 x float> %i.an, %i.ce
  %i.cg = fsub fast <4 x float> %i.cf, %i.am
  %i.ch = fsub fast <4 x float> splat (float 1.000000e+00), %i.am
  %i.ci = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ch, <4 x float> splat (float f0x00800000))
  %i.cj = bitcast <4 x float> %i.ci to <4 x i32>  ; 2 uses
  %i.ck = lshr <4 x i32> %i.cj, splat (i32 23)
  %i.cl = and <4 x i32> %i.cj, splat (i32 -2139095041)
  %i.cm = or disjoint <4 x i32> %i.cl, splat (i32 1056964608)
  %i.cn = bitcast <4 x i32> %i.cm to <4 x float>  ; 3 uses
  %i.co = add nsw <4 x i32> %i.ck, splat (i32 -127)
  %i.cp = sitofp fast <4 x i32> %i.co to <4 x float> ; 2 uses
  %i.cq = fadd fast <4 x float> %i.cp, splat (float 1.000000e+00)
  %i.cr = fcmp fast olt <4 x float> %i.cn, splat (float f0x3F3504F3) ; 2 uses
  %i.cs = select <4 x i1> %i.cr, <4 x float> %i.cn, <4 x float> zeroinitializer
  %i.ct = fadd fast <4 x float> %i.cn, splat (float -1.000000e+00)
  %i.cu = select fast <4 x i1> %i.cr, <4 x float> %i.cp, <4 x float> %i.cq
  %i.cv = fadd fast <4 x float> %i.ct, %i.cs      ; 12 uses
  %i.cw = fmul fast <4 x float> %i.cv, %i.cv      ; 2 uses
  %i.cx = fmul fast <4 x float> %i.cv, splat (float f0x3D9021BB)
  %i.cy = fadd fast <4 x float> %i.cx, splat (float f0xBDEBD1B8)
  %i.cz = fmul fast <4 x float> %i.cy, %i.cv
  %i.da = fadd fast <4 x float> %i.cz, splat (float f0x3DEF251A)
  %i.db = fmul fast <4 x float> %i.da, %i.cv
  %i.dc = fadd fast <4 x float> %i.db, splat (float f0xBDFE5D4F)
  %i.dd = fmul fast <4 x float> %i.dc, %i.cv
  %i.de = fadd fast <4 x float> %i.dd, splat (float f0x3E11E9BF)
  %i.df = fmul fast <4 x float> %i.de, %i.cv
  %i.dg = fadd fast <4 x float> %i.df, splat (float f0xBE2AAE50)
  %i.dh = fmul fast <4 x float> %i.dg, %i.cv
  %i.di = fadd fast <4 x float> %i.dh, splat (float f0x3E4CCEAC)
  %i.dj = fmul fast <4 x float> %i.di, %i.cv
  %i.dk = fadd fast <4 x float> %i.dj, splat (float f0xBE7FFFFC)
  %i.dl = fmul fast <4 x float> %i.dk, %i.cv
  %i.dm = fadd fast <4 x float> %i.dl, splat (float f0x3EAAAAAA)
  %i.dn = fmul fast <4 x float> %i.cw, %i.cv
  %reass.mul116.a = fmul fast <4 x float> %i.dn, %i.dm
  %.neg114 = fmul fast <4 x float> %i.cw, splat (float -5.000000e-01)
  %reass.mul120 = fmul fast <4 x float> %i.cu, splat (float f0x3F317218)
  %7 = fadd fast <4 x float> %i.cv, %.neg114
  %i.do = fadd fast <4 x float> %reass.mul116.a, %7
  %i.dp = fadd fast <4 x float> %i.do, %reass.mul120
  %i.dq = select <4 x i1> %i.cc, <4 x float> %i.dp, <4 x float> %i.cg
  %i.dr = fsub fast <4 x float> %i.cd, %i.dq
  %i.ds = fmul fast <4 x float> %i.dr, splat (float 5.000000e-01)
  store <4 x float> %i.ds, ptr %.025121, align 16, !tbaa !57
  %i.dt = getelementptr inbounds nuw i8, ptr %.025121, i64 16 ; 2 uses
  %i.du = add nuw nsw i32 %.0122, 4               ; 3 uses
  %i.dv = or disjoint i32 %i.du, 3
  %i.dw = load i32, ptr %4, align 4, !tbaa !40    ; 2 uses
  %i.dx = icmp slt i32 %i.dv, %i.dw
  br i1 %i.dx, label %.lr.ph, label %.preheader, !llvm.loop !240

.lr.ph127:                                        ; preds = %.preheader, %.lr.ph127
  %.1126 = phi i32 [ %i.eb, %.lr.ph127 ], [ %.0.lcssa, %.preheader ]
  %.126125 = phi ptr [ %i.ea, %.lr.ph127 ], [ %.025.lcssa, %.preheader ] ; 3 uses
  %i.dy = load float, ptr %.126125, align 4, !tbaa !51
  %i.dz = call fast noundef nofpclass(nan inf) float @atanhf(float noundef nofpclass(nan inf) %i.dy) #20
  store float %i.dz, ptr %.126125, align 4, !tbaa !51
  %i.ea = getelementptr inbounds nuw i8, ptr %.126125, i64 4
  %i.eb = add nuw nsw i32 %.1126, 1               ; 2 uses
  %exitcond137.not = icmp eq i32 %i.eb, %i.ak
  br i1 %exitcond137.not, label %._crit_edge, label %.lr.ph127, !llvm.loop !239

._crit_edge:                                      ; preds = %.lr.ph127, %.preheader
  %indvars.iv.next139 = add nsw i64 %indvars.iv138, 1 ; 2 uses
  %lftr.wideiv141 = trunc i64 %indvars.iv.next139 to i32
  %exitcond142.not = icmp eq i32 %i.q, %lftr.wideiv141
  br i1 %exitcond142.not, label %._crit_edge130, label %.noexc, !llvm.loop !241

._crit_edge130:                                   ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge130, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare nofpclass(nan inf) float @atanhf(float noundef nofpclass(nan inf)) local_unnamed_addr #15

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_19UnaryOp_x86_functor14unary_op_log1pEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !40     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !40
  %i.h = load i32, ptr %0, align 4, !tbaa !40     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !40
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !40
  %i.k = load i32, ptr %i.a, align 4, !tbaa !40   ; 3 uses
  %.not81 = icmp sgt i32 %i.k, %i.j
  br i1 %.not81, label %._crit_edge83, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !40     ; 4 uses
  %i.o = icmp sgt i32 %i.n, 3
  br i1 %i.o, label %.noexc.preheader, label %.noexc.lr.ph.split.us

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  br label %.noexc

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.r = load ptr, ptr %3, align 8, !tbaa !46, !noalias !242
  %i.s = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !242
  %i.t = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !242
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.noexc.us.preheader, label %._crit_edge83

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.us
  %i.v = sext i32 %i.k to i64
  %i.w = add nsw i32 %i.j, 1
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.v, %.noexc.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass
  br label %bb.c

bb.c:                                             ; preds = %.noexc.us, %bb.c
  %.179.us = phi i32 [ 0, %.noexc.us ], [ %i.ab, %bb.c ]
  %.12678.us = phi ptr [ %i.x, %.noexc.us ], [ %i.aa, %bb.c ] ; 3 uses
  %i.y = load float, ptr %.12678.us, align 4, !tbaa !51
  %i.z = call fast noundef nofpclass(nan inf) float @log1pf(float noundef nofpclass(nan inf) %i.y) #20
  store float %i.z, ptr %.12678.us, align 4, !tbaa !51
  %i.aa = getelementptr inbounds nuw i8, ptr %.12678.us, i64 4
  %i.ab = add nuw nsw i32 %.179.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ab, %i.n
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !245

._crit_edge.us:                                   ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond89.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond89.not, label %._crit_edge83, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ac = phi i32 [ %i.n, %.noexc.preheader ], [ %i.ak, %._crit_edge ] ; 2 uses
  %indvars.iv91 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next92, %._crit_edge ] ; 2 uses
  %i.ad = load ptr, ptr %3, align 8, !tbaa !46, !noalias !242
  %i.ae = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !242
  %i.af = mul i64 %i.ae, %indvars.iv91
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !242
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ah ; 2 uses
  %i.aj = icmp sgt i32 %i.ac, 3
  br i1 %i.aj, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.ak = phi i32 [ %i.ac, %.noexc ], [ %i.cj, %.lr.ph ] ; 3 uses
  %.025.lcssa = phi ptr [ %i.ai, %.noexc ], [ %i.cg, %.lr.ph ]
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.ch, %.lr.ph ] ; 2 uses
  %i.al = icmp slt i32 %.0.lcssa, %i.ak
  br i1 %i.al, label %.lr.ph80, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.075 = phi i32 [ %i.ch, %.lr.ph ], [ 0, %.noexc ]
  %.02574 = phi ptr [ %i.cg, %.lr.ph ], [ %i.ai, %.noexc ] ; 3 uses
  %i.am = load <4 x float>, ptr %.02574, align 16, !tbaa !57 ; 6 uses
  %i.an = fmul fast <4 x float> %i.am, %i.am
  %i.ao = fmul fast <4 x float> %i.am, splat (float f0x3EAAAAAB)
  %i.ap = fadd fast <4 x float> %i.ao, splat (float -5.000000e-01)
  %i.aq = fmul fast <4 x float> %i.an, %i.ap
  %i.ar = fadd fast <4 x float> %i.aq, %i.am
  %i.as = fadd fast <4 x float> %i.am, splat (float 1.000000e+00) ; 2 uses
  %i.at = fcmp fast ole <4 x float> %i.as, zeroinitializer
  %i.au = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.as, <4 x float> splat (float f0x00800000))
  %i.av = bitcast <4 x float> %i.au to <4 x i32>  ; 2 uses
  %i.aw = lshr <4 x i32> %i.av, splat (i32 23)
  %i.ax = and <4 x i32> %i.av, splat (i32 -2139095041)
  %i.ay = or disjoint <4 x i32> %i.ax, splat (i32 1056964608)
  %i.az = bitcast <4 x i32> %i.ay to <4 x float>  ; 3 uses
  %i.ba = add nsw <4 x i32> %i.aw, splat (i32 -127)
  %i.bb = sitofp fast <4 x i32> %i.ba to <4 x float> ; 2 uses
  %i.bc = fadd fast <4 x float> %i.bb, splat (float 1.000000e+00)
  %i.bd = fcmp fast olt <4 x float> %i.az, splat (float f0x3F3504F3) ; 2 uses
  %i.be = select <4 x i1> %i.bd, <4 x float> %i.az, <4 x float> zeroinitializer
  %i.bf = fadd fast <4 x float> %i.az, splat (float -1.000000e+00)
  %i.bg = select fast <4 x i1> %i.bd, <4 x float> %i.bb, <4 x float> %i.bc
  %i.bh = fadd fast <4 x float> %i.bf, %i.be      ; 12 uses
  %i.bi = fmul fast <4 x float> %i.bh, %i.bh      ; 2 uses
  %i.bj = fmul fast <4 x float> %i.bh, splat (float f0x3D9021BB)
  %i.bk = fadd fast <4 x float> %i.bj, splat (float f0xBDEBD1B8)
  %i.bl = fmul fast <4 x float> %i.bk, %i.bh
  %i.bm = fadd fast <4 x float> %i.bl, splat (float f0x3DEF251A)
  %i.bn = fmul fast <4 x float> %i.bm, %i.bh
  %i.bo = fadd fast <4 x float> %i.bn, splat (float f0xBDFE5D4F)
  %i.bp = fmul fast <4 x float> %i.bo, %i.bh
  %i.bq = fadd fast <4 x float> %i.bp, splat (float f0x3E11E9BF)
  %i.br = fmul fast <4 x float> %i.bq, %i.bh
  %i.bs = fadd fast <4 x float> %i.br, splat (float f0xBE2AAE50)
  %i.bt = fmul fast <4 x float> %i.bs, %i.bh
  %i.bu = fadd fast <4 x float> %i.bt, splat (float f0x3E4CCEAC)
  %i.bv = fmul fast <4 x float> %i.bu, %i.bh
  %i.bw = fadd fast <4 x float> %i.bv, splat (float f0xBE7FFFFC)
  %i.bx = fmul fast <4 x float> %i.bw, %i.bh
  %i.by = fadd fast <4 x float> %i.bx, splat (float f0x3EAAAAAA)
  %i.bz = fmul fast <4 x float> %i.bi, %i.bh
  %reass.mul.a = fmul fast <4 x float> %i.bz, %i.by
  %.neg = fmul fast <4 x float> %i.bi, splat (float -5.000000e-01)
  %reass.mul73 = fmul fast <4 x float> %i.bg, splat (float f0x3F317218)
  %6 = fadd fast <4 x float> %i.bh, %.neg
  %i.ca = fadd fast <4 x float> %reass.mul.a, %6
  %i.cb = fadd fast <4 x float> %i.ca, %reass.mul73
  %i.cc = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.am)
  %i.cd = fcmp fast uge <4 x float> %i.cc, splat (float f0x38D1B717)
  %i.ce = select <4 x i1> %i.at, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.cb
  %i.cf = select <4 x i1> %i.cd, <4 x float> %i.ce, <4 x float> %i.ar
  store <4 x float> %i.cf, ptr %.02574, align 16, !tbaa !57
  %i.cg = getelementptr inbounds nuw i8, ptr %.02574, i64 16 ; 2 uses
  %i.ch = add nuw nsw i32 %.075, 4                ; 3 uses
  %i.ci = or disjoint i32 %i.ch, 3
  %i.cj = load i32, ptr %4, align 4, !tbaa !40    ; 2 uses
  %i.ck = icmp slt i32 %i.ci, %i.cj
  br i1 %i.ck, label %.lr.ph, label %.preheader, !llvm.loop !246

.lr.ph80:                                         ; preds = %.preheader, %.lr.ph80
  %.179 = phi i32 [ %i.co, %.lr.ph80 ], [ %.0.lcssa, %.preheader ]
  %.12678 = phi ptr [ %i.cn, %.lr.ph80 ], [ %.025.lcssa, %.preheader ] ; 3 uses
  %i.cl = load float, ptr %.12678, align 4, !tbaa !51
  %i.cm = call fast noundef nofpclass(nan inf) float @log1pf(float noundef nofpclass(nan inf) %i.cl) #20
  store float %i.cm, ptr %.12678, align 4, !tbaa !51
  %i.cn = getelementptr inbounds nuw i8, ptr %.12678, i64 4
  %i.co = add nuw nsw i32 %.179, 1                ; 2 uses
  %exitcond90.not = icmp eq i32 %i.co, %i.ak
  br i1 %exitcond90.not, label %._crit_edge, label %.lr.ph80, !llvm.loop !245

._crit_edge:                                      ; preds = %.lr.ph80, %.preheader
  %indvars.iv.next92 = add nsw i64 %indvars.iv91, 1 ; 2 uses
  %lftr.wideiv94 = trunc i64 %indvars.iv.next92 to i32
  %exitcond95.not = icmp eq i32 %i.q, %lftr.wideiv94
  br i1 %exitcond95.not, label %._crit_edge83, label %.noexc, !llvm.loop !247

._crit_edge83:                                    ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge83, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare nofpclass(nan inf) float @log1pf(float noundef nofpclass(nan inf)) local_unnamed_addr #16

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor12unary_op_absEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !40     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !40
  %i.h = load i32, ptr %0, align 4, !tbaa !40     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !40
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !40
  %i.k = load i32, ptr %i.a, align 4, !tbaa !40   ; 3 uses
  %.not47 = icmp sgt i32 %i.k, %i.j
  br i1 %.not47, label %._crit_edge49, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !40     ; 5 uses
  %i.o = icmp sgt i32 %i.n, 3
  br i1 %i.o, label %.noexc.preheader, label %.noexc.lr.ph.split.us

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  br label %.noexc

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.r = load ptr, ptr %3, align 8, !tbaa !46, !noalias !248
  %i.s = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !248
  %i.t = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !248
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.noexc.us.preheader, label %._crit_edge49

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.us
  %i.v = sext i32 %i.k to i64
  %i.w = add nsw i32 %i.j, 1
  %exitcond.not = icmp eq i32 %i.n, 1
  %exitcond.not.1 = icmp eq i32 %i.n, 2
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.v, %.noexc.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass ; 4 uses
  %i.y = load i16, ptr %i.x, align 2, !tbaa !251
  %i.z = zext i16 %i.y to i32
  %i.aa = shl nuw i32 %i.z, 16
  %i.ab = bitcast i32 %i.aa to float
  %i.ac = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float %i.ab)
  %i.ad = bitcast float %i.ac to i32
  %i.ae = lshr i32 %i.ad, 16
  %i.af = trunc nuw nsw i32 %i.ae to i16
  store i16 %i.af, ptr %i.x, align 2, !tbaa !251
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %.noexc.us
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 2 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !251
  %i.ai = zext i16 %i.ah to i32
  %i.aj = shl nuw i32 %i.ai, 16
  %i.ak = bitcast i32 %i.aj to float
  %i.al = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float %i.ak)
  %i.am = bitcast float %i.al to i32
  %i.an = lshr i32 %i.am, 16
  %i.ao = trunc nuw nsw i32 %i.an to i16
  store i16 %i.ao, ptr %i.ag, align 2, !tbaa !251
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !251
  %i.ar = zext i16 %i.aq to i32
  %i.as = shl nuw i32 %i.ar, 16
  %i.at = bitcast i32 %i.as to float
  %i.au = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float %i.at)
  %i.av = bitcast float %i.au to i32
  %i.aw = lshr i32 %i.av, 16
  %i.ax = trunc nuw nsw i32 %i.aw to i16
  store i16 %i.ax, ptr %i.ap, align 2, !tbaa !251
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.d, %bb.c, %.noexc.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond55.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond55.not, label %._crit_edge49, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ay = phi i32 [ %i.n, %.noexc.preheader ], [ %i.bg, %._crit_edge ] ; 2 uses
  %indvars.iv57 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next58, %._crit_edge ] ; 2 uses
  %i.az = load ptr, ptr %3, align 8, !tbaa !46, !noalias !248
  %i.ba = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !248
  %i.bb = mul i64 %i.ba, %indvars.iv57
  %i.bc = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !248
  %i.bd = mul i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bd ; 2 uses
  %i.bf = icmp sgt i32 %i.ay, 3
  br i1 %i.bf, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.bg = phi i32 [ %i.ay, %.noexc ], [ %i.ce, %.lr.ph ] ; 4 uses
  %.025.lcssa = phi ptr [ %i.be, %.noexc ], [ %i.cb, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.cc, %.lr.ph ] ; 4 uses
  %i.bh = icmp slt i32 %.0.lcssa, %i.bg
  br i1 %i.bh, label %.lr.ph46.preheader, label %._crit_edge

.lr.ph46.preheader:                               ; preds = %.preheader
  %i.bi = xor i32 %.0.lcssa, -1
  %i.bj = add i32 %i.bg, %i.bi                    ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bj, 7
  br i1 %min.iters.check, label %.lr.ph46.preheader75, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph46.preheader
  %n.vec = and i64 %i.bl, 8589934584              ; 4 uses
  %i.bm = trunc i64 %n.vec to i32
  %i.bn = add i32 %.0.lcssa, %i.bm
  %i.bo = shl nuw nsw i64 %n.vec, 1
  %i.bp = getelementptr i8, ptr %.025.lcssa, i64 %i.bo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.025.lcssa, i64 %i.bq ; 2 uses
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !251
  %i.br = zext <8 x i16> %wide.load to <8 x i32>
  %i.bs = shl nuw <8 x i32> %i.br, splat (i32 16)
  %i.bt = bitcast <8 x i32> %i.bs to <8 x float>
  %i.bu = call fast <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bt)
  %i.bv = bitcast <8 x float> %i.bu to <8 x i32>
  %i.bw = lshr <8 x i32> %i.bv, splat (i32 16)
  %i.bx = trunc nuw nsw <8 x i32> %i.bw to <8 x i16>
  store <8 x i16> %i.bx, ptr %next.gep, align 2, !tbaa !251
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !253
end_hunk_2
begin_hunk_3_@_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor14unary_op_rsqrtEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
bb.e:                                             ; preds = %._crit_edge47, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor12unary_op_expEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !40     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !40
  %i.h = load i32, ptr %0, align 4, !tbaa !40     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !40
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !40
  %i.k = load i32, ptr %i.a, align 4, !tbaa !40   ; 3 uses
  %.not68 = icmp sgt i32 %i.k, %i.j
  br i1 %.not68, label %._crit_edge70, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !40     ; 5 uses
  %i.o = icmp sgt i32 %i.n, 3
  br i1 %i.o, label %.noexc.preheader, label %.noexc.lr.ph.split.us

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  br label %.noexc

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.r = load ptr, ptr %3, align 8, !tbaa !46, !noalias !301
  %i.s = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !301
  %i.t = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !301
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.noexc.us.preheader, label %._crit_edge70

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.us
  %i.v = sext i32 %i.k to i64
  %i.w = add nsw i32 %i.j, 1
  %exitcond.not = icmp eq i32 %i.n, 1
  %exitcond.not.1 = icmp eq i32 %i.n, 2
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.v, %.noexc.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass ; 4 uses
  %i.y = load i16, ptr %i.x, align 2, !tbaa !251
  %i.z = zext i16 %i.y to i32
  %i.aa = shl nuw i32 %i.z, 16
  %i.ab = bitcast i32 %i.aa to float
  %i.ac = call fast noundef nofpclass(nan inf) float @llvm.exp.f32(float %i.ab)
  %i.ad = bitcast float %i.ac to i32
  %i.ae = lshr i32 %i.ad, 16
  %i.af = trunc nuw nsw i32 %i.ae to i16
  store i16 %i.af, ptr %i.x, align 2, !tbaa !251
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %.noexc.us
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 2 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !251
  %i.ai = zext i16 %i.ah to i32
  %i.aj = shl nuw i32 %i.ai, 16
  %i.ak = bitcast i32 %i.aj to float
  %i.al = call fast noundef nofpclass(nan inf) float @llvm.exp.f32(float %i.ak)
  %i.am = bitcast float %i.al to i32
  %i.an = lshr i32 %i.am, 16
  %i.ao = trunc nuw nsw i32 %i.an to i16
  store i16 %i.ao, ptr %i.ag, align 2, !tbaa !251
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !251
  %i.ar = zext i16 %i.aq to i32
  %i.as = shl nuw i32 %i.ar, 16
  %i.at = bitcast i32 %i.as to float
  %i.au = call fast noundef nofpclass(nan inf) float @llvm.exp.f32(float %i.at)
  %i.av = bitcast float %i.au to i32
  %i.aw = lshr i32 %i.av, 16
  %i.ax = trunc nuw nsw i32 %i.aw to i16
  store i16 %i.ax, ptr %i.ap, align 2, !tbaa !251
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.d, %bb.c, %.noexc.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond76.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond76.not, label %._crit_edge70, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ay = phi i32 [ %i.n, %.noexc.preheader ], [ %i.bg, %._crit_edge ] ; 2 uses
  %indvars.iv78 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next79, %._crit_edge ] ; 2 uses
  %i.az = load ptr, ptr %3, align 8, !tbaa !46, !noalias !301
  %i.ba = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !301
  %i.bb = mul i64 %i.ba, %indvars.iv78
  %i.bc = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !301
  %i.bd = mul i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bd ; 2 uses
  %i.bf = icmp sgt i32 %i.ay, 3
  br i1 %i.bf, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.bg = phi i32 [ %i.ay, %.noexc ], [ %i.dr, %.lr.ph ] ; 4 uses
  %.025.lcssa = phi ptr [ %i.be, %.noexc ], [ %i.do, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.dp, %.lr.ph ] ; 4 uses
  %i.bh = icmp slt i32 %.0.lcssa, %i.bg
  br i1 %i.bh, label %.lr.ph67.preheader, label %._crit_edge

.lr.ph67.preheader:                               ; preds = %.preheader
  %i.bi = xor i32 %.0.lcssa, -1
  %i.bj = add i32 %i.bg, %i.bi                    ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bj, 7
  br i1 %min.iters.check, label %.lr.ph67.preheader96, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph67.preheader
  %n.vec = and i64 %i.bl, 8589934584              ; 4 uses
  %i.bm = trunc i64 %n.vec to i32
  %i.bn = add i32 %.0.lcssa, %i.bm
  %i.bo = shl nuw nsw i64 %n.vec, 1
  %i.bp = getelementptr i8, ptr %.025.lcssa, i64 %i.bo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.025.lcssa, i64 %i.bq ; 2 uses
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !251
  %i.br = zext <8 x i16> %wide.load to <8 x i32>
  %i.bs = shl nuw <8 x i32> %i.br, splat (i32 16)
  %i.bt = bitcast <8 x i32> %i.bs to <8 x float>
  %i.bu = call fast <8 x float> @llvm.exp.v8f32(<8 x float> %i.bt)
  %i.bv = bitcast <8 x float> %i.bu to <8 x i32>
  %i.bw = lshr <8 x i32> %i.bv, splat (i32 16)
  %i.bx = trunc nuw nsw <8 x i32> %i.bw to <8 x i16>
  store <8 x i16> %i.bx, ptr %next.gep, align 2, !tbaa !251
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !304

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph67.preheader96

.lr.ph67.preheader96:                             ; preds = %.lr.ph67.preheader, %middle.block
  %.166.ph = phi i32 [ %.0.lcssa, %.lr.ph67.preheader ], [ %i.bn, %middle.block ]
  %.12665.ph = phi ptr [ %.025.lcssa, %.lr.ph67.preheader ], [ %i.bp, %middle.block ]
  br label %.lr.ph67

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.062 = phi i32 [ %i.dp, %.lr.ph ], [ 0, %.noexc ]
  %.02561 = phi ptr [ %i.do, %.lr.ph ], [ %i.be, %.noexc ] ; 3 uses
  %i.bz = load i64, ptr %.02561, align 1, !tbaa !57
  %i.ca = insertelement <2 x i64> poison, i64 %i.bz, i64 0
  %i.cb = bitcast <2 x i64> %i.ca to <8 x i16>
  %i.cc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cd = bitcast <8 x i16> %i.cc to <4 x float>
  %i.ce = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cd, <4 x float> splat (float f0x42B0C0A5))
  %i.cf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ce, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cg = fmul fast <4 x float> %i.cf, splat (float f0x3FB8AA3B)
  %i.ch = fadd fast <4 x float> %i.cg, splat (float 5.000000e-01) ; 2 uses
  %i.ci = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ch)
  %i.cj = sitofp fast <4 x i32> %i.ci to <4 x float> ; 2 uses
  %i.ck = fcmp fast olt <4 x float> %i.ch, %i.cj
  %i.cl = select <4 x i1> %i.ck, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.cm = fsub fast <4 x float> %i.cj, %i.cl      ; 2 uses
  %i.cn = fmul fast <4 x float> %i.cm, splat (float f0x3F317218)
  %i.co = fsub fast <4 x float> %i.cf, %i.cn      ; 8 uses
  %i.cp = fmul fast <4 x float> %i.co, %i.co
  %i.cq = fmul fast <4 x float> %i.co, splat (float f0x39506967)
  %i.cr = fadd fast <4 x float> %i.cq, splat (float f0x3AB743CE)
  %i.cs = fmul fast <4 x float> %i.cr, %i.co
  %i.ct = fadd fast <4 x float> %i.cs, splat (float f0x3C088908)
  %i.cu = fmul fast <4 x float> %i.ct, %i.co
  %i.cv = fadd fast <4 x float> %i.cu, splat (float f0x3D2AA9C1)
  %i.cw = fmul fast <4 x float> %i.cv, %i.co
  %i.cx = fadd fast <4 x float> %i.cw, splat (float f0x3E2AAAAA)
  %i.cy = fmul fast <4 x float> %i.cx, %i.co
  %i.cz = fadd fast <4 x float> %i.cy, splat (float 5.000000e-01)
  %i.da = fmul fast <4 x float> %i.cp, %i.cz
  %i.db = fadd fast <4 x float> %i.co, %i.da
  %i.dc = fadd fast <4 x float> %i.db, splat (float 1.000000e+00)
  %i.dd = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cm)
  %i.de = shl <4 x i32> %i.dd, splat (i32 23)
  %i.df = add <4 x i32> %i.de, splat (i32 1065353216)
  %i.dg = bitcast <4 x i32> %i.df to <4 x float>
  %i.dh = fmul fast <4 x float> %i.dc, %i.dg
  %i.di = bitcast <4 x float> %i.dh to <8 x i16>
  %i.dj = shufflevector <8 x i16> %i.di, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.dk = bitcast <8 x i16> %i.dj to <4 x float>
  %i.dl = shufflevector <4 x float> %i.dk, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.dm = bitcast <4 x float> %i.dl to <2 x i64>
  %i.dn = extractelement <2 x i64> %i.dm, i64 0
  store i64 %i.dn, ptr %.02561, align 1, !tbaa !57
  %i.do = getelementptr inbounds nuw i8, ptr %.02561, i64 8 ; 2 uses
  %i.dp = add nuw nsw i32 %.062, 4                ; 3 uses
  %i.dq = or disjoint i32 %i.dp, 3
  %i.dr = load i32, ptr %4, align 4, !tbaa !40    ; 2 uses
  %i.ds = icmp slt i32 %i.dq, %i.dr
  br i1 %i.ds, label %.lr.ph, label %.preheader, !llvm.loop !305

.lr.ph67:                                         ; preds = %.lr.ph67.preheader96, %.lr.ph67
  %.166 = phi i32 [ %i.ec, %.lr.ph67 ], [ %.166.ph, %.lr.ph67.preheader96 ]
  %.12665 = phi ptr [ %i.eb, %.lr.ph67 ], [ %.12665.ph, %.lr.ph67.preheader96 ] ; 3 uses
  %i.dt = load i16, ptr %.12665, align 2, !tbaa !251
  %i.du = zext i16 %i.dt to i32
  %i.dv = shl nuw i32 %i.du, 16
  %i.dw = bitcast i32 %i.dv to float
  %i.dx = call fast noundef nofpclass(nan inf) float @llvm.exp.f32(float %i.dw)
  %i.dy = bitcast float %i.dx to i32
  %i.dz = lshr i32 %i.dy, 16
  %i.ea = trunc nuw nsw i32 %i.dz to i16
  store i16 %i.ea, ptr %.12665, align 2, !tbaa !251
  %i.eb = getelementptr inbounds nuw i8, ptr %.12665, i64 2
  %i.ec = add nuw nsw i32 %.166, 1                ; 2 uses
  %exitcond77.not = icmp eq i32 %i.ec, %i.bg
  br i1 %exitcond77.not, label %._crit_edge, label %.lr.ph67, !llvm.loop !306

._crit_edge:                                      ; preds = %.lr.ph67, %middle.block, %.preheader
  %indvars.iv.next79 = add nsw i64 %indvars.iv78, 1 ; 2 uses
  %lftr.wideiv81 = trunc i64 %indvars.iv.next79 to i32
  %exitcond82.not = icmp eq i32 %i.q, %lftr.wideiv81
  br i1 %exitcond82.not, label %._crit_edge70, label %.noexc, !llvm.loop !307

._crit_edge70:                                    ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge70, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor12unary_op_logEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !40     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !40
  %i.h = load i32, ptr %0, align 4, !tbaa !40     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !40
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !40
  %i.k = load i32, ptr %i.a, align 4, !tbaa !40   ; 3 uses
  %.not80 = icmp sgt i32 %i.k, %i.j
  br i1 %.not80, label %._crit_edge82, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !40     ; 5 uses
  %i.o = icmp sgt i32 %i.n, 3
  br i1 %i.o, label %.noexc.preheader, label %.noexc.lr.ph.split.us

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  br label %.noexc

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.r = load ptr, ptr %3, align 8, !tbaa !46, !noalias !308
  %i.s = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !308
  %i.t = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !308
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.noexc.us.preheader, label %._crit_edge82

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.us
  %i.v = sext i32 %i.k to i64
  %i.w = add nsw i32 %i.j, 1
  %exitcond.not = icmp eq i32 %i.n, 1
  %exitcond.not.1 = icmp eq i32 %i.n, 2
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.v, %.noexc.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass ; 4 uses
  %i.y = load i16, ptr %i.x, align 2, !tbaa !251
  %i.z = zext i16 %i.y to i32
  %i.aa = shl nuw i32 %i.z, 16
  %i.ab = bitcast i32 %i.aa to float
  %i.ac = call fast noundef nofpclass(nan inf) float @llvm.log.f32(float %i.ab)
  %i.ad = bitcast float %i.ac to i32
  %i.ae = lshr i32 %i.ad, 16
  %i.af = trunc nuw i32 %i.ae to i16
  store i16 %i.af, ptr %i.x, align 2, !tbaa !251
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %.noexc.us
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 2 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !251
  %i.ai = zext i16 %i.ah to i32
  %i.aj = shl nuw i32 %i.ai, 16
  %i.ak = bitcast i32 %i.aj to float
  %i.al = call fast noundef nofpclass(nan inf) float @llvm.log.f32(float %i.ak)
  %i.am = bitcast float %i.al to i32
  %i.an = lshr i32 %i.am, 16
  %i.ao = trunc nuw i32 %i.an to i16
  store i16 %i.ao, ptr %i.ag, align 2, !tbaa !251
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !251
  %i.ar = zext i16 %i.aq to i32
  %i.as = shl nuw i32 %i.ar, 16
  %i.at = bitcast i32 %i.as to float
  %i.au = call fast noundef nofpclass(nan inf) float @llvm.log.f32(float %i.at)
  %i.av = bitcast float %i.au to i32
  %i.aw = lshr i32 %i.av, 16
  %i.ax = trunc nuw i32 %i.aw to i16
  store i16 %i.ax, ptr %i.ap, align 2, !tbaa !251
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.d, %bb.c, %.noexc.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond88.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond88.not, label %._crit_edge82, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ay = phi i32 [ %i.n, %.noexc.preheader ], [ %i.bg, %._crit_edge ] ; 2 uses
  %indvars.iv90 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next91, %._crit_edge ] ; 2 uses
  %i.az = load ptr, ptr %3, align 8, !tbaa !46, !noalias !308
  %i.ba = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !308
  %i.bb = mul i64 %i.ba, %indvars.iv90
  %i.bc = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !308
  %i.bd = mul i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bd ; 2 uses
  %i.bf = icmp sgt i32 %i.ay, 3
  br i1 %i.bf, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.bg = phi i32 [ %i.ay, %.noexc ], [ %i.dx, %.lr.ph ] ; 4 uses
  %.025.lcssa = phi ptr [ %i.be, %.noexc ], [ %i.du, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.dv, %.lr.ph ] ; 4 uses
  %i.bh = icmp slt i32 %.0.lcssa, %i.bg
  br i1 %i.bh, label %.lr.ph79.preheader, label %._crit_edge

.lr.ph79.preheader:                               ; preds = %.preheader
  %i.bi = xor i32 %.0.lcssa, -1
  %i.bj = add i32 %i.bg, %i.bi                    ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bj, 7
  br i1 %min.iters.check, label %.lr.ph79.preheader108, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph79.preheader
  %n.vec = and i64 %i.bl, 8589934584              ; 4 uses
  %i.bm = trunc i64 %n.vec to i32
  %i.bn = add i32 %.0.lcssa, %i.bm
  %i.bo = shl nuw nsw i64 %n.vec, 1
  %i.bp = getelementptr i8, ptr %.025.lcssa, i64 %i.bo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.025.lcssa, i64 %i.bq ; 2 uses
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !251
  %i.br = zext <8 x i16> %wide.load to <8 x i32>
  %i.bs = shl nuw <8 x i32> %i.br, splat (i32 16)
  %i.bt = bitcast <8 x i32> %i.bs to <8 x float>
  %i.bu = call fast <8 x float> @llvm.log.v8f32(<8 x float> %i.bt)
  %i.bv = bitcast <8 x float> %i.bu to <8 x i32>
  %i.bw = lshr <8 x i32> %i.bv, splat (i32 16)
  %i.bx = trunc nuw <8 x i32> %i.bw to <8 x i16>
  store <8 x i16> %i.bx, ptr %next.gep, align 2, !tbaa !251
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !311

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph79.preheader108

.lr.ph79.preheader108:                            ; preds = %.lr.ph79.preheader, %middle.block
  %.178.ph = phi i32 [ %.0.lcssa, %.lr.ph79.preheader ], [ %i.bn, %middle.block ]
  %.12677.ph = phi ptr [ %.025.lcssa, %.lr.ph79.preheader ], [ %i.bp, %middle.block ]
  br label %.lr.ph79

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.074 = phi i32 [ %i.dv, %.lr.ph ], [ 0, %.noexc ]
  %.02573 = phi ptr [ %i.du, %.lr.ph ], [ %i.be, %.noexc ] ; 3 uses
  %i.bz = load i64, ptr %.02573, align 1, !tbaa !57
  %i.ca = insertelement <2 x i64> poison, i64 %i.bz, i64 0
  %i.cb = bitcast <2 x i64> %i.ca to <8 x i16>
  %i.cc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cd = bitcast <8 x i16> %i.cc to <4 x float>  ; 2 uses
  %i.ce = fcmp fast ole <4 x float> %i.cd, zeroinitializer
  %i.cf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cd, <4 x float> splat (float f0x00800000))
  %i.cg = bitcast <4 x float> %i.cf to <4 x i32>  ; 2 uses
  %i.ch = lshr <4 x i32> %i.cg, splat (i32 23)
  %i.ci = and <4 x i32> %i.cg, splat (i32 -2139095041)
  %i.cj = or disjoint <4 x i32> %i.ci, splat (i32 1056964608)
  %i.ck = bitcast <4 x i32> %i.cj to <4 x float>  ; 3 uses
  %i.cl = add nsw <4 x i32> %i.ch, splat (i32 -127)
  %i.cm = sitofp fast <4 x i32> %i.cl to <4 x float> ; 2 uses
  %i.cn = fadd fast <4 x float> %i.cm, splat (float 1.000000e+00)
  %i.co = fcmp fast olt <4 x float> %i.ck, splat (float f0x3F3504F3) ; 2 uses
  %i.cp = select <4 x i1> %i.co, <4 x float> %i.ck, <4 x float> zeroinitializer
  %i.cq = fadd fast <4 x float> %i.ck, splat (float -1.000000e+00)
  %i.cr = select fast <4 x i1> %i.co, <4 x float> %i.cm, <4 x float> %i.cn
  %i.cs = fadd fast <4 x float> %i.cq, %i.cp      ; 12 uses
  %i.ct = fmul fast <4 x float> %i.cs, %i.cs      ; 2 uses
  %i.cu = fmul fast <4 x float> %i.cs, splat (float f0x3D9021BB)
  %i.cv = fadd fast <4 x float> %i.cu, splat (float f0xBDEBD1B8)
  %i.cw = fmul fast <4 x float> %i.cv, %i.cs
  %i.cx = fadd fast <4 x float> %i.cw, splat (float f0x3DEF251A)
  %i.cy = fmul fast <4 x float> %i.cx, %i.cs
  %i.cz = fadd fast <4 x float> %i.cy, splat (float f0xBDFE5D4F)
  %i.da = fmul fast <4 x float> %i.cz, %i.cs
  %i.db = fadd fast <4 x float> %i.da, splat (float f0x3E11E9BF)
  %i.dc = fmul fast <4 x float> %i.db, %i.cs
  %i.dd = fadd fast <4 x float> %i.dc, splat (float f0xBE2AAE50)
  %i.de = fmul fast <4 x float> %i.dd, %i.cs
  %i.df = fadd fast <4 x float> %i.de, splat (float f0x3E4CCEAC)
  %i.dg = fmul fast <4 x float> %i.df, %i.cs
  %i.dh = fadd fast <4 x float> %i.dg, splat (float f0xBE7FFFFC)
  %i.di = fmul fast <4 x float> %i.dh, %i.cs
  %i.dj = fadd fast <4 x float> %i.di, splat (float f0x3EAAAAAA)
  %i.dk = fmul fast <4 x float> %i.ct, %i.cs
  %reass.mul.a = fmul fast <4 x float> %i.dk, %i.dj
  %.neg = fmul fast <4 x float> %i.ct, splat (float -5.000000e-01)
  %reass.mul72 = fmul fast <4 x float> %i.cr, splat (float f0x3F317218)
  %6 = fadd fast <4 x float> %i.cs, %.neg
  %i.dl = fadd fast <4 x float> %reass.mul.a, %6
  %i.dm = fadd fast <4 x float> %i.dl, %reass.mul72
  %i.dn = select <4 x i1> %i.ce, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.dm
  %i.do = bitcast <4 x float> %i.dn to <8 x i16>
  %i.dp = shufflevector <8 x i16> %i.do, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.dq = bitcast <8 x i16> %i.dp to <4 x float>
  %i.dr = shufflevector <4 x float> %i.dq, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ds = bitcast <4 x float> %i.dr to <2 x i64>
  %i.dt = extractelement <2 x i64> %i.ds, i64 0
  store i64 %i.dt, ptr %.02573, align 1, !tbaa !57
  %i.du = getelementptr inbounds nuw i8, ptr %.02573, i64 8 ; 2 uses
  %i.dv = add nuw nsw i32 %.074, 4                ; 3 uses
  %i.dw = or disjoint i32 %i.dv, 3
  %i.dx = load i32, ptr %4, align 4, !tbaa !40    ; 2 uses
  %i.dy = icmp slt i32 %i.dw, %i.dx
  br i1 %i.dy, label %.lr.ph, label %.preheader, !llvm.loop !312

.lr.ph79:                                         ; preds = %.lr.ph79.preheader108, %.lr.ph79
  %.178 = phi i32 [ %i.ei, %.lr.ph79 ], [ %.178.ph, %.lr.ph79.preheader108 ]
  %.12677 = phi ptr [ %i.eh, %.lr.ph79 ], [ %.12677.ph, %.lr.ph79.preheader108 ] ; 3 uses
  %i.dz = load i16, ptr %.12677, align 2, !tbaa !251
  %i.ea = zext i16 %i.dz to i32
  %i.eb = shl nuw i32 %i.ea, 16
  %i.ec = bitcast i32 %i.eb to float
  %i.ed = call fast noundef nofpclass(nan inf) float @llvm.log.f32(float %i.ec)
  %i.ee = bitcast float %i.ed to i32
  %i.ef = lshr i32 %i.ee, 16
  %i.eg = trunc nuw i32 %i.ef to i16
  store i16 %i.eg, ptr %.12677, align 2, !tbaa !251
  %i.eh = getelementptr inbounds nuw i8, ptr %.12677, i64 2
  %i.ei = add nuw nsw i32 %.178, 1                ; 2 uses
  %exitcond89.not = icmp eq i32 %i.ei, %i.bg
  br i1 %exitcond89.not, label %._crit_edge, label %.lr.ph79, !llvm.loop !313

._crit_edge:                                      ; preds = %.lr.ph79, %middle.block, %.preheader
  %indvars.iv.next91 = add nsw i64 %indvars.iv90, 1 ; 2 uses
  %lftr.wideiv93 = trunc i64 %indvars.iv.next91 to i32
  %exitcond94.not = icmp eq i32 %i.q, %lftr.wideiv93
  br i1 %exitcond94.not, label %._crit_edge82, label %.noexc, !llvm.loop !314

._crit_edge82:                                    ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge82, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor12unary_op_sinEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !40     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !40
  %i.h = load i32, ptr %0, align 4, !tbaa !40     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !40
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !40
  %i.k = load i32, ptr %i.a, align 4, !tbaa !40   ; 3 uses
  %.not80 = icmp sgt i32 %i.k, %i.j
  br i1 %.not80, label %._crit_edge82, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !40     ; 5 uses
  %i.o = icmp sgt i32 %i.n, 3
  br i1 %i.o, label %.noexc.preheader, label %.noexc.lr.ph.split.us

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  br label %.noexc

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.r = load ptr, ptr %3, align 8, !tbaa !46, !noalias !315
  %i.s = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !315
  %i.t = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !315
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.noexc.us.preheader, label %._crit_edge82

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.us
  %i.v = sext i32 %i.k to i64
  %i.w = add nsw i32 %i.j, 1
  %exitcond.not = icmp eq i32 %i.n, 1
  %exitcond.not.1 = icmp eq i32 %i.n, 2
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.v, %.noexc.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass ; 4 uses
  %i.y = load i16, ptr %i.x, align 2, !tbaa !251
  %i.z = zext i16 %i.y to i32
  %i.aa = shl nuw i32 %i.z, 16
  %i.ab = bitcast i32 %i.aa to float
  %i.ac = call fast noundef nofpclass(nan inf) float @llvm.sin.f32(float %i.ab)
  %i.ad = bitcast float %i.ac to i32
  %i.ae = lshr i32 %i.ad, 16
  %i.af = trunc nuw i32 %i.ae to i16
  store i16 %i.af, ptr %i.x, align 2, !tbaa !251
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %.noexc.us
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 2 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !251
  %i.ai = zext i16 %i.ah to i32
  %i.aj = shl nuw i32 %i.ai, 16
  %i.ak = bitcast i32 %i.aj to float
  %i.al = call fast noundef nofpclass(nan inf) float @llvm.sin.f32(float %i.ak)
  %i.am = bitcast float %i.al to i32
  %i.an = lshr i32 %i.am, 16
  %i.ao = trunc nuw i32 %i.an to i16
  store i16 %i.ao, ptr %i.ag, align 2, !tbaa !251
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !251
  %i.ar = zext i16 %i.aq to i32
  %i.as = shl nuw i32 %i.ar, 16
  %i.at = bitcast i32 %i.as to float
  %i.au = call fast noundef nofpclass(nan inf) float @llvm.sin.f32(float %i.at)
  %i.av = bitcast float %i.au to i32
  %i.aw = lshr i32 %i.av, 16
  %i.ax = trunc nuw i32 %i.aw to i16
  store i16 %i.ax, ptr %i.ap, align 2, !tbaa !251
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.d, %bb.c, %.noexc.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond88.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond88.not, label %._crit_edge82, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ay = phi i32 [ %i.n, %.noexc.preheader ], [ %i.bg, %._crit_edge ] ; 2 uses
  %indvars.iv90 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next91, %._crit_edge ] ; 2 uses
  %i.az = load ptr, ptr %3, align 8, !tbaa !46, !noalias !315
  %i.ba = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !315
  %i.bb = mul i64 %i.ba, %indvars.iv90
  %i.bc = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !315
  %i.bd = mul i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bd ; 2 uses
  %i.bf = icmp sgt i32 %i.ay, 3
  br i1 %i.bf, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.bg = phi i32 [ %i.ay, %.noexc ], [ %i.dr, %.lr.ph ] ; 4 uses
  %.025.lcssa = phi ptr [ %i.be, %.noexc ], [ %i.do, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.dp, %.lr.ph ] ; 4 uses
  %i.bh = icmp slt i32 %.0.lcssa, %i.bg
  br i1 %i.bh, label %.lr.ph79.preheader, label %._crit_edge

.lr.ph79.preheader:                               ; preds = %.preheader
  %i.bi = xor i32 %.0.lcssa, -1
  %i.bj = add i32 %i.bg, %i.bi                    ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bj, 7
  br i1 %min.iters.check, label %.lr.ph79.preheader108, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph79.preheader
  %n.vec = and i64 %i.bl, 8589934584              ; 4 uses
  %i.bm = trunc i64 %n.vec to i32
  %i.bn = add i32 %.0.lcssa, %i.bm
  %i.bo = shl nuw nsw i64 %n.vec, 1
  %i.bp = getelementptr i8, ptr %.025.lcssa, i64 %i.bo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.025.lcssa, i64 %i.bq ; 2 uses
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !251
  %i.br = zext <8 x i16> %wide.load to <8 x i32>
  %i.bs = shl nuw <8 x i32> %i.br, splat (i32 16)
  %i.bt = bitcast <8 x i32> %i.bs to <8 x float>
  %i.bu = call fast <8 x float> @llvm.sin.v8f32(<8 x float> %i.bt)
  %i.bv = bitcast <8 x float> %i.bu to <8 x i32>
end_hunk_3
begin_hunk_4_@_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor19unary_op_reciprocalEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor13unary_op_tanhEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !40     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !40
  %i.h = load i32, ptr %0, align 4, !tbaa !40     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !40
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !40
  %i.k = load i32, ptr %i.a, align 4, !tbaa !40   ; 3 uses
  %.not70 = icmp sgt i32 %i.k, %i.j
  br i1 %.not70, label %._crit_edge72, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !40     ; 5 uses
  %i.o = icmp sgt i32 %i.n, 3
  br i1 %i.o, label %.noexc.preheader, label %.noexc.lr.ph.split.us

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  br label %.noexc

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.r = load ptr, ptr %3, align 8, !tbaa !46, !noalias !364
  %i.s = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !364
  %i.t = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !364
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.noexc.us.preheader, label %._crit_edge72

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.us
  %i.v = sext i32 %i.k to i64
  %i.w = add nsw i32 %i.j, 1
  %exitcond.not = icmp eq i32 %i.n, 1
  %exitcond.not.1 = icmp eq i32 %i.n, 2
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.v, %.noexc.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass ; 4 uses
  %i.y = load i16, ptr %i.x, align 2, !tbaa !251
  %i.z = zext i16 %i.y to i32
  %i.aa = shl nuw i32 %i.z, 16
  %i.ab = bitcast i32 %i.aa to float
  %i.ac = call fast noundef nofpclass(nan inf) float @llvm.tanh.f32(float %i.ab)
  %i.ad = bitcast float %i.ac to i32
  %i.ae = lshr i32 %i.ad, 16
  %i.af = trunc nuw i32 %i.ae to i16
  store i16 %i.af, ptr %i.x, align 2, !tbaa !251
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %.noexc.us
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 2 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !251
  %i.ai = zext i16 %i.ah to i32
  %i.aj = shl nuw i32 %i.ai, 16
  %i.ak = bitcast i32 %i.aj to float
  %i.al = call fast noundef nofpclass(nan inf) float @llvm.tanh.f32(float %i.ak)
  %i.am = bitcast float %i.al to i32
  %i.an = lshr i32 %i.am, 16
  %i.ao = trunc nuw i32 %i.an to i16
  store i16 %i.ao, ptr %i.ag, align 2, !tbaa !251
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !251
  %i.ar = zext i16 %i.aq to i32
  %i.as = shl nuw i32 %i.ar, 16
  %i.at = bitcast i32 %i.as to float
  %i.au = call fast noundef nofpclass(nan inf) float @llvm.tanh.f32(float %i.at)
  %i.av = bitcast float %i.au to i32
  %i.aw = lshr i32 %i.av, 16
  %i.ax = trunc nuw i32 %i.aw to i16
  store i16 %i.ax, ptr %i.ap, align 2, !tbaa !251
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.d, %bb.c, %.noexc.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond78.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond78.not, label %._crit_edge72, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ay = phi i32 [ %i.n, %.noexc.preheader ], [ %i.bg, %._crit_edge ] ; 2 uses
  %indvars.iv80 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next81, %._crit_edge ] ; 2 uses
  %i.az = load ptr, ptr %3, align 8, !tbaa !46, !noalias !364
  %i.ba = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !364
  %i.bb = mul i64 %i.ba, %indvars.iv80
  %i.bc = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !364
  %i.bd = mul i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bd ; 2 uses
  %i.bf = icmp sgt i32 %i.ay, 3
  br i1 %i.bf, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.bg = phi i32 [ %i.ay, %.noexc ], [ %i.dv, %.lr.ph ] ; 4 uses
  %.025.lcssa = phi ptr [ %i.be, %.noexc ], [ %i.ds, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.dt, %.lr.ph ] ; 4 uses
  %i.bh = icmp slt i32 %.0.lcssa, %i.bg
  br i1 %i.bh, label %.lr.ph69.preheader, label %._crit_edge

.lr.ph69.preheader:                               ; preds = %.preheader
  %i.bi = xor i32 %.0.lcssa, -1
  %i.bj = add i32 %i.bg, %i.bi                    ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bj, 7
  br i1 %min.iters.check, label %.lr.ph69.preheader98, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph69.preheader
  %n.vec = and i64 %i.bl, 8589934584              ; 4 uses
  %i.bm = trunc i64 %n.vec to i32
  %i.bn = add i32 %.0.lcssa, %i.bm
  %i.bo = shl nuw nsw i64 %n.vec, 1
  %i.bp = getelementptr i8, ptr %.025.lcssa, i64 %i.bo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.025.lcssa, i64 %i.bq ; 2 uses
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !251
  %i.br = zext <8 x i16> %wide.load to <8 x i32>
  %i.bs = shl nuw <8 x i32> %i.br, splat (i32 16)
  %i.bt = bitcast <8 x i32> %i.bs to <8 x float>
  %i.bu = call fast <8 x float> @llvm.tanh.v8f32(<8 x float> %i.bt)
  %i.bv = bitcast <8 x float> %i.bu to <8 x i32>
  %i.bw = lshr <8 x i32> %i.bv, splat (i32 16)
  %i.bx = trunc nuw <8 x i32> %i.bw to <8 x i16>
  store <8 x i16> %i.bx, ptr %next.gep, align 2, !tbaa !251
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !367

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph69.preheader98

.lr.ph69.preheader98:                             ; preds = %.lr.ph69.preheader, %middle.block
  %.168.ph = phi i32 [ %.0.lcssa, %.lr.ph69.preheader ], [ %i.bn, %middle.block ]
  %.12667.ph = phi ptr [ %.025.lcssa, %.lr.ph69.preheader ], [ %i.bp, %middle.block ]
  br label %.lr.ph69

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.064 = phi i32 [ %i.dt, %.lr.ph ], [ 0, %.noexc ]
  %.02563 = phi ptr [ %i.ds, %.lr.ph ], [ %i.be, %.noexc ] ; 3 uses
  %i.bz = load i64, ptr %.02563, align 1, !tbaa !57
  %i.ca = insertelement <2 x i64> poison, i64 %i.bz, i64 0
  %i.cb = bitcast <2 x i64> %i.ca to <8 x i16>
  %i.cc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cd = bitcast <8 x i16> %i.cc to <4 x float>
  %i.ce = fmul fast <4 x float> %i.cd, splat (float -2.000000e+00)
  %i.cf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ce, <4 x float> splat (float f0x42B0C0A5))
  %i.cg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cf, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ch = fmul fast <4 x float> %i.cg, splat (float f0x3FB8AA3B)
  %i.ci = fadd fast <4 x float> %i.ch, splat (float 5.000000e-01) ; 2 uses
  %i.cj = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ci)
  %i.ck = sitofp fast <4 x i32> %i.cj to <4 x float> ; 2 uses
  %i.cl = fcmp fast olt <4 x float> %i.ci, %i.ck
  %i.cm = select <4 x i1> %i.cl, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.cn = fsub fast <4 x float> %i.ck, %i.cm      ; 2 uses
  %i.co = fmul fast <4 x float> %i.cn, splat (float f0x3F317218)
  %i.cp = fsub fast <4 x float> %i.cg, %i.co      ; 8 uses
  %i.cq = fmul fast <4 x float> %i.cp, %i.cp
  %i.cr = fmul fast <4 x float> %i.cp, splat (float f0x39506967)
  %i.cs = fadd fast <4 x float> %i.cr, splat (float f0x3AB743CE)
  %i.ct = fmul fast <4 x float> %i.cs, %i.cp
  %i.cu = fadd fast <4 x float> %i.ct, splat (float f0x3C088908)
  %i.cv = fmul fast <4 x float> %i.cu, %i.cp
  %i.cw = fadd fast <4 x float> %i.cv, splat (float f0x3D2AA9C1)
  %i.cx = fmul fast <4 x float> %i.cw, %i.cp
  %i.cy = fadd fast <4 x float> %i.cx, splat (float f0x3E2AAAAA)
  %i.cz = fmul fast <4 x float> %i.cy, %i.cp
  %i.da = fadd fast <4 x float> %i.cz, splat (float 5.000000e-01)
  %i.db = fmul fast <4 x float> %i.cq, %i.da
  %i.dc = fadd fast <4 x float> %i.cp, %i.db
  %i.dd = fadd fast <4 x float> %i.dc, splat (float 1.000000e+00)
  %i.de = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cn)
  %i.df = shl <4 x i32> %i.de, splat (i32 23)
  %i.dg = add <4 x i32> %i.df, splat (i32 1065353216)
  %i.dh = bitcast <4 x i32> %i.dg to <4 x float>
  %i.di = fmul fast <4 x float> %i.dd, %i.dh
  %i.dj = fadd fast <4 x float> %i.di, splat (float 1.000000e+00)
  %i.dk = fdiv fast <4 x float> splat (float 2.000000e+00), %i.dj
  %i.dl = fadd fast <4 x float> %i.dk, splat (float -1.000000e+00)
  %i.dm = bitcast <4 x float> %i.dl to <8 x i16>
  %i.dn = shufflevector <8 x i16> %i.dm, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.do = bitcast <8 x i16> %i.dn to <4 x float>
  %i.dp = shufflevector <4 x float> %i.do, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.dq = bitcast <4 x float> %i.dp to <2 x i64>
  %i.dr = extractelement <2 x i64> %i.dq, i64 0
  store i64 %i.dr, ptr %.02563, align 1, !tbaa !57
  %i.ds = getelementptr inbounds nuw i8, ptr %.02563, i64 8 ; 2 uses
  %i.dt = add nuw nsw i32 %.064, 4                ; 3 uses
  %i.du = or disjoint i32 %i.dt, 3
  %i.dv = load i32, ptr %4, align 4, !tbaa !40    ; 2 uses
  %i.dw = icmp slt i32 %i.du, %i.dv
  br i1 %i.dw, label %.lr.ph, label %.preheader, !llvm.loop !368

.lr.ph69:                                         ; preds = %.lr.ph69.preheader98, %.lr.ph69
  %.168 = phi i32 [ %i.eg, %.lr.ph69 ], [ %.168.ph, %.lr.ph69.preheader98 ]
  %.12667 = phi ptr [ %i.ef, %.lr.ph69 ], [ %.12667.ph, %.lr.ph69.preheader98 ] ; 3 uses
  %i.dx = load i16, ptr %.12667, align 2, !tbaa !251
  %i.dy = zext i16 %i.dx to i32
  %i.dz = shl nuw i32 %i.dy, 16
  %i.ea = bitcast i32 %i.dz to float
  %i.eb = call fast noundef nofpclass(nan inf) float @llvm.tanh.f32(float %i.ea)
  %i.ec = bitcast float %i.eb to i32
  %i.ed = lshr i32 %i.ec, 16
  %i.ee = trunc nuw i32 %i.ed to i16
  store i16 %i.ee, ptr %.12667, align 2, !tbaa !251
  %i.ef = getelementptr inbounds nuw i8, ptr %.12667, i64 2
  %i.eg = add nuw nsw i32 %.168, 1                ; 2 uses
  %exitcond79.not = icmp eq i32 %i.eg, %i.bg
  br i1 %exitcond79.not, label %._crit_edge, label %.lr.ph69, !llvm.loop !369

._crit_edge:                                      ; preds = %.lr.ph69, %middle.block, %.preheader
  %indvars.iv.next81 = add nsw i64 %indvars.iv80, 1 ; 2 uses
  %lftr.wideiv83 = trunc i64 %indvars.iv.next81 to i32
  %exitcond84.not = icmp eq i32 %i.q, %lftr.wideiv83
  br i1 %exitcond84.not, label %._crit_edge72, label %.noexc, !llvm.loop !370

._crit_edge72:                                    ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge72, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor14unary_op_log10EEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !40     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !40
  %i.h = load i32, ptr %0, align 4, !tbaa !40     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !40
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !40
  %i.k = load i32, ptr %i.a, align 4, !tbaa !40   ; 3 uses
  %.not79 = icmp sgt i32 %i.k, %i.j
  br i1 %.not79, label %._crit_edge81, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !40     ; 5 uses
  %i.o = icmp sgt i32 %i.n, 3
  br i1 %i.o, label %.noexc.preheader, label %.noexc.lr.ph.split.us

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  br label %.noexc

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.r = load ptr, ptr %3, align 8, !tbaa !46, !noalias !371
  %i.s = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !371
  %i.t = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !371
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.noexc.us.preheader, label %._crit_edge81

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.us
  %i.v = sext i32 %i.k to i64
  %i.w = add nsw i32 %i.j, 1
  %exitcond.not = icmp eq i32 %i.n, 1
  %exitcond.not.1 = icmp eq i32 %i.n, 2
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.v, %.noexc.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass ; 4 uses
  %i.y = load i16, ptr %i.x, align 2, !tbaa !251
  %i.z = zext i16 %i.y to i32
  %i.aa = shl nuw i32 %i.z, 16
  %i.ab = bitcast i32 %i.aa to float
  %i.ac = call fast noundef nofpclass(nan inf) float @llvm.log10.f32(float %i.ab)
  %i.ad = bitcast float %i.ac to i32
  %i.ae = lshr i32 %i.ad, 16
  %i.af = trunc nuw i32 %i.ae to i16
  store i16 %i.af, ptr %i.x, align 2, !tbaa !251
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %.noexc.us
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 2 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !251
  %i.ai = zext i16 %i.ah to i32
  %i.aj = shl nuw i32 %i.ai, 16
  %i.ak = bitcast i32 %i.aj to float
  %i.al = call fast noundef nofpclass(nan inf) float @llvm.log10.f32(float %i.ak)
  %i.am = bitcast float %i.al to i32
  %i.an = lshr i32 %i.am, 16
  %i.ao = trunc nuw i32 %i.an to i16
  store i16 %i.ao, ptr %i.ag, align 2, !tbaa !251
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !251
  %i.ar = zext i16 %i.aq to i32
  %i.as = shl nuw i32 %i.ar, 16
  %i.at = bitcast i32 %i.as to float
  %i.au = call fast noundef nofpclass(nan inf) float @llvm.log10.f32(float %i.at)
  %i.av = bitcast float %i.au to i32
  %i.aw = lshr i32 %i.av, 16
  %i.ax = trunc nuw i32 %i.aw to i16
  store i16 %i.ax, ptr %i.ap, align 2, !tbaa !251
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.d, %bb.c, %.noexc.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond87.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond87.not, label %._crit_edge81, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ay = phi i32 [ %i.n, %.noexc.preheader ], [ %i.bg, %._crit_edge ] ; 2 uses
  %indvars.iv89 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next90, %._crit_edge ] ; 2 uses
  %i.az = load ptr, ptr %3, align 8, !tbaa !46, !noalias !371
  %i.ba = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !371
  %i.bb = mul i64 %i.ba, %indvars.iv89
  %i.bc = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !371
  %i.bd = mul i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bd ; 2 uses
  %i.bf = icmp sgt i32 %i.ay, 3
  br i1 %i.bf, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.bg = phi i32 [ %i.ay, %.noexc ], [ %i.dy, %.lr.ph ] ; 4 uses
  %.025.lcssa = phi ptr [ %i.be, %.noexc ], [ %i.dv, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.dw, %.lr.ph ] ; 4 uses
  %i.bh = icmp slt i32 %.0.lcssa, %i.bg
  br i1 %i.bh, label %.lr.ph78.preheader, label %._crit_edge

.lr.ph78.preheader:                               ; preds = %.preheader
  %i.bi = xor i32 %.0.lcssa, -1
  %i.bj = add i32 %i.bg, %i.bi                    ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bj, 7
  br i1 %min.iters.check, label %.lr.ph78.preheader107, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph78.preheader
  %n.vec = and i64 %i.bl, 8589934584              ; 4 uses
  %i.bm = trunc i64 %n.vec to i32
  %i.bn = add i32 %.0.lcssa, %i.bm
  %i.bo = shl nuw nsw i64 %n.vec, 1
  %i.bp = getelementptr i8, ptr %.025.lcssa, i64 %i.bo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.025.lcssa, i64 %i.bq ; 2 uses
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !251
  %i.br = zext <8 x i16> %wide.load to <8 x i32>
  %i.bs = shl nuw <8 x i32> %i.br, splat (i32 16)
  %i.bt = bitcast <8 x i32> %i.bs to <8 x float>
  %i.bu = call fast <8 x float> @llvm.log10.v8f32(<8 x float> %i.bt)
  %i.bv = bitcast <8 x float> %i.bu to <8 x i32>
  %i.bw = lshr <8 x i32> %i.bv, splat (i32 16)
  %i.bx = trunc nuw <8 x i32> %i.bw to <8 x i16>
  store <8 x i16> %i.bx, ptr %next.gep, align 2, !tbaa !251
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !374

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph78.preheader107

.lr.ph78.preheader107:                            ; preds = %.lr.ph78.preheader, %middle.block
  %.177.ph = phi i32 [ %.0.lcssa, %.lr.ph78.preheader ], [ %i.bn, %middle.block ]
  %.12676.ph = phi ptr [ %.025.lcssa, %.lr.ph78.preheader ], [ %i.bp, %middle.block ]
  br label %.lr.ph78

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.073 = phi i32 [ %i.dw, %.lr.ph ], [ 0, %.noexc ]
  %.02572 = phi ptr [ %i.dv, %.lr.ph ], [ %i.be, %.noexc ] ; 3 uses
  %i.bz = load i64, ptr %.02572, align 1, !tbaa !57
  %i.ca = insertelement <2 x i64> poison, i64 %i.bz, i64 0
  %i.cb = bitcast <2 x i64> %i.ca to <8 x i16>
  %i.cc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cd = bitcast <8 x i16> %i.cc to <4 x float>  ; 2 uses
  %i.ce = fcmp fast ole <4 x float> %i.cd, zeroinitializer
  %i.cf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cd, <4 x float> splat (float f0x00800000))
  %i.cg = bitcast <4 x float> %i.cf to <4 x i32>  ; 2 uses
  %i.ch = lshr <4 x i32> %i.cg, splat (i32 23)
  %i.ci = and <4 x i32> %i.cg, splat (i32 -2139095041)
  %i.cj = or disjoint <4 x i32> %i.ci, splat (i32 1056964608)
  %i.ck = bitcast <4 x i32> %i.cj to <4 x float>  ; 3 uses
  %i.cl = add nsw <4 x i32> %i.ch, splat (i32 -127)
  %i.cm = sitofp fast <4 x i32> %i.cl to <4 x float> ; 2 uses
  %i.cn = fadd fast <4 x float> %i.cm, splat (float 1.000000e+00)
  %i.co = fcmp fast olt <4 x float> %i.ck, splat (float f0x3F3504F3) ; 2 uses
  %i.cp = select <4 x i1> %i.co, <4 x float> %i.ck, <4 x float> zeroinitializer
  %i.cq = fadd fast <4 x float> %i.ck, splat (float -1.000000e+00)
  %i.cr = select fast <4 x i1> %i.co, <4 x float> %i.cm, <4 x float> %i.cn
  %i.cs = fadd fast <4 x float> %i.cq, %i.cp      ; 12 uses
  %i.ct = fmul fast <4 x float> %i.cs, %i.cs      ; 2 uses
  %i.cu = fmul fast <4 x float> %i.cs, splat (float f0x3D9021BB)
  %i.cv = fadd fast <4 x float> %i.cu, splat (float f0xBDEBD1B8)
  %i.cw = fmul fast <4 x float> %i.cv, %i.cs
  %i.cx = fadd fast <4 x float> %i.cw, splat (float f0x3DEF251A)
  %i.cy = fmul fast <4 x float> %i.cx, %i.cs
  %i.cz = fadd fast <4 x float> %i.cy, splat (float f0xBDFE5D4F)
  %i.da = fmul fast <4 x float> %i.cz, %i.cs
  %i.db = fadd fast <4 x float> %i.da, splat (float f0x3E11E9BF)
  %i.dc = fmul fast <4 x float> %i.db, %i.cs
  %i.dd = fadd fast <4 x float> %i.dc, splat (float f0xBE2AAE50)
  %i.de = fmul fast <4 x float> %i.dd, %i.cs
  %i.df = fadd fast <4 x float> %i.de, splat (float f0x3E4CCEAC)
  %i.dg = fmul fast <4 x float> %i.df, %i.cs
  %i.dh = fadd fast <4 x float> %i.dg, splat (float f0xBE7FFFFC)
  %i.di = fmul fast <4 x float> %i.dh, %i.cs
  %i.dj = fadd fast <4 x float> %i.di, splat (float f0x3EAAAAAA)
  %i.dk = fmul fast <4 x float> %i.ct, %i.cs
  %reass.mul.a = fmul fast <4 x float> %i.dk, %i.dj
  %.neg = fmul fast <4 x float> %i.ct, splat (float -5.000000e-01)
  %reass.mul71 = fmul fast <4 x float> %i.cr, splat (float f0x3F317218)
  %6 = fadd fast <4 x float> %i.cs, %.neg
  %i.dl = fadd fast <4 x float> %reass.mul.a, %6
  %i.dm = fadd fast <4 x float> %i.dl, %reass.mul71
  %i.dn = fmul fast <4 x float> %i.dm, splat (float f0x3EDE5BD9)
  %i.do = select <4 x i1> %i.ce, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.dn
  %i.dp = bitcast <4 x float> %i.do to <8 x i16>
  %i.dq = shufflevector <8 x i16> %i.dp, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.dr = bitcast <8 x i16> %i.dq to <4 x float>
  %i.ds = shufflevector <4 x float> %i.dr, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.dt = bitcast <4 x float> %i.ds to <2 x i64>
  %i.du = extractelement <2 x i64> %i.dt, i64 0
  store i64 %i.du, ptr %.02572, align 1, !tbaa !57
  %i.dv = getelementptr inbounds nuw i8, ptr %.02572, i64 8 ; 2 uses
  %i.dw = add nuw nsw i32 %.073, 4                ; 3 uses
  %i.dx = or disjoint i32 %i.dw, 3
  %i.dy = load i32, ptr %4, align 4, !tbaa !40    ; 2 uses
  %i.dz = icmp slt i32 %i.dx, %i.dy
  br i1 %i.dz, label %.lr.ph, label %.preheader, !llvm.loop !375

.lr.ph78:                                         ; preds = %.lr.ph78.preheader107, %.lr.ph78
  %.177 = phi i32 [ %i.ej, %.lr.ph78 ], [ %.177.ph, %.lr.ph78.preheader107 ]
  %.12676 = phi ptr [ %i.ei, %.lr.ph78 ], [ %.12676.ph, %.lr.ph78.preheader107 ] ; 3 uses
  %i.ea = load i16, ptr %.12676, align 2, !tbaa !251
  %i.eb = zext i16 %i.ea to i32
  %i.ec = shl nuw i32 %i.eb, 16
  %i.ed = bitcast i32 %i.ec to float
  %i.ee = call fast noundef nofpclass(nan inf) float @llvm.log10.f32(float %i.ed)
  %i.ef = bitcast float %i.ee to i32
  %i.eg = lshr i32 %i.ef, 16
  %i.eh = trunc nuw i32 %i.eg to i16
  store i16 %i.eh, ptr %.12676, align 2, !tbaa !251
  %i.ei = getelementptr inbounds nuw i8, ptr %.12676, i64 2
  %i.ej = add nuw nsw i32 %.177, 1                ; 2 uses
  %exitcond88.not = icmp eq i32 %i.ej, %i.bg
  br i1 %exitcond88.not, label %._crit_edge, label %.lr.ph78, !llvm.loop !376

._crit_edge:                                      ; preds = %.lr.ph78, %middle.block, %.preheader
  %indvars.iv.next90 = add nsw i64 %indvars.iv89, 1 ; 2 uses
  %lftr.wideiv92 = trunc i64 %indvars.iv.next90 to i32
  %exitcond93.not = icmp eq i32 %i.q, %lftr.wideiv92
  br i1 %exitcond93.not, label %._crit_edge81, label %.noexc, !llvm.loop !377

._crit_edge81:                                    ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge81, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor14unary_op_roundEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !40     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !40
  %i.h = load i32, ptr %0, align 4, !tbaa !40     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !40
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !40
  %i.k = load i32, ptr %i.a, align 4, !tbaa !40   ; 3 uses
  %.not45 = icmp sgt i32 %i.k, %i.j
  br i1 %.not45, label %._crit_edge47, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !40     ; 5 uses
  %i.o = icmp sgt i32 %i.n, 3
  br i1 %i.o, label %.noexc.preheader, label %.noexc.lr.ph.split.us

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  br label %.noexc

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.r = load ptr, ptr %3, align 8, !tbaa !46, !noalias !378
  %i.s = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !378
  %i.t = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !378
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.noexc.us.preheader, label %._crit_edge47

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.us
  %i.v = sext i32 %i.k to i64
  %i.w = add nsw i32 %i.j, 1
  %exitcond.not = icmp eq i32 %i.n, 1
  %exitcond.not.1 = icmp eq i32 %i.n, 2
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.v, %.noexc.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass ; 4 uses
  %i.y = load i16, ptr %i.x, align 2, !tbaa !251
  %i.z = zext i16 %i.y to i32
  %i.aa = shl nuw i32 %i.z, 16
  %i.ab = bitcast i32 %i.aa to float
  %i.ac = call fast noundef nofpclass(nan inf) float @llvm.nearbyint.f32(float %i.ab)
  %i.ad = bitcast float %i.ac to i32
  %i.ae = lshr i32 %i.ad, 16
  %i.af = trunc nuw i32 %i.ae to i16
  store i16 %i.af, ptr %i.x, align 2, !tbaa !251
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %.noexc.us
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 2 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !251
  %i.ai = zext i16 %i.ah to i32
  %i.aj = shl nuw i32 %i.ai, 16
  %i.ak = bitcast i32 %i.aj to float
  %i.al = call fast noundef nofpclass(nan inf) float @llvm.nearbyint.f32(float %i.ak)
  %i.am = bitcast float %i.al to i32
  %i.an = lshr i32 %i.am, 16
  %i.ao = trunc nuw i32 %i.an to i16
  store i16 %i.ao, ptr %i.ag, align 2, !tbaa !251
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !251
  %i.ar = zext i16 %i.aq to i32
  %i.as = shl nuw i32 %i.ar, 16
  %i.at = bitcast i32 %i.as to float
  %i.au = call fast noundef nofpclass(nan inf) float @llvm.nearbyint.f32(float %i.at)
  %i.av = bitcast float %i.au to i32
  %i.aw = lshr i32 %i.av, 16
  %i.ax = trunc nuw i32 %i.aw to i16
  store i16 %i.ax, ptr %i.ap, align 2, !tbaa !251
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.d, %bb.c, %.noexc.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond53.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond53.not, label %._crit_edge47, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ay = phi i32 [ %i.n, %.noexc.preheader ], [ %i.bg, %._crit_edge ] ; 2 uses
  %indvars.iv55 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next56, %._crit_edge ] ; 2 uses
  %i.az = load ptr, ptr %3, align 8, !tbaa !46, !noalias !378
  %i.ba = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !378
  %i.bb = mul i64 %i.ba, %indvars.iv55
  %i.bc = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !378
  %i.bd = mul i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bd ; 2 uses
  %i.bf = icmp sgt i32 %i.ay, 3
  br i1 %i.bf, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.bg = phi i32 [ %i.ay, %.noexc ], [ %i.cp, %.lr.ph ] ; 4 uses
  %.025.lcssa = phi ptr [ %i.be, %.noexc ], [ %i.cm, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.cn, %.lr.ph ] ; 4 uses
  %i.bh = icmp slt i32 %.0.lcssa, %i.bg
  br i1 %i.bh, label %.lr.ph44.preheader, label %._crit_edge

.lr.ph44.preheader:                               ; preds = %.preheader
  %i.bi = xor i32 %.0.lcssa, -1
  %i.bj = add i32 %i.bg, %i.bi                    ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bj, 7
  br i1 %min.iters.check, label %.lr.ph44.preheader73, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph44.preheader
  %n.vec = and i64 %i.bl, 8589934584              ; 4 uses
  %i.bm = trunc i64 %n.vec to i32
  %i.bn = add i32 %.0.lcssa, %i.bm
  %i.bo = shl nuw nsw i64 %n.vec, 1
  %i.bp = getelementptr i8, ptr %.025.lcssa, i64 %i.bo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.025.lcssa, i64 %i.bq ; 2 uses
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !251
  %i.br = zext <8 x i16> %wide.load to <8 x i32>
  %i.bs = shl nuw <8 x i32> %i.br, splat (i32 16)
  %i.bt = bitcast <8 x i32> %i.bs to <8 x float>
  %i.bu = call fast <8 x float> @llvm.nearbyint.v8f32(<8 x float> %i.bt)
end_hunk_4
begin_hunk_5_@_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor13unary_op_signEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %.040 = phi i32 [ %i.cq, %.lr.ph ], [ 0, %.noexc ]
  %.02539 = phi ptr [ %i.cp, %.lr.ph ], [ %i.be, %.noexc ] ; 3 uses
  %i.bz = load i64, ptr %.02539, align 1, !tbaa !57
  %i.ca = insertelement <2 x i64> poison, i64 %i.bz, i64 0
  %i.cb = bitcast <2 x i64> %i.ca to <8 x i16>
  %i.cc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cd = bitcast <8 x i16> %i.cc to <4 x float>  ; 2 uses
  %i.ce = fcmp fast ogt <4 x float> %i.cd, zeroinitializer
  %i.cf = select <4 x i1> %i.ce, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.cg = fcmp fast olt <4 x float> %i.cd, zeroinitializer
  %i.ch = select <4 x i1> %i.cg, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ci = fsub fast <4 x float> %i.cf, %i.ch
  %i.cj = bitcast <4 x float> %i.ci to <8 x i16>
  %i.ck = shufflevector <8 x i16> %i.cj, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.cl = bitcast <8 x i16> %i.ck to <4 x float>
  %i.cm = shufflevector <4 x float> %i.cl, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.cn = bitcast <4 x float> %i.cm to <2 x i64>
  %i.co = extractelement <2 x i64> %i.cn, i64 0
  store i64 %i.co, ptr %.02539, align 1, !tbaa !57
  %i.cp = getelementptr inbounds nuw i8, ptr %.02539, i64 8 ; 2 uses
  %i.cq = add nuw nsw i32 %.040, 4                ; 3 uses
  %i.cr = or disjoint i32 %i.cq, 3
  %i.cs = load i32, ptr %4, align 4, !tbaa !40    ; 2 uses
  %i.ct = icmp slt i32 %i.cr, %i.cs
  br i1 %i.ct, label %.lr.ph, label %.preheader, !llvm.loop !396

.lr.ph45:                                         ; preds = %.lr.ph45.preheader74, %.lr.ph45
  %.144 = phi i32 [ %i.dd, %.lr.ph45 ], [ %.144.ph, %.lr.ph45.preheader74 ]
  %.12643 = phi ptr [ %i.dc, %.lr.ph45 ], [ %.12643.ph, %.lr.ph45.preheader74 ] ; 3 uses
  %i.cu = load i16, ptr %.12643, align 2, !tbaa !251
  %i.cv = zext i16 %i.cu to i32
  %i.cw = shl nuw i32 %i.cv, 16
  %i.cx = bitcast i32 %i.cw to float              ; 2 uses
  %i.cy = fcmp fast ogt float %i.cx, 0.000000e+00
  %i.cz = fcmp fast olt float %i.cx, 0.000000e+00
  %i.da = select i1 %i.cz, i16 -16512, i16 0
  %i.db = select i1 %i.cy, i16 16256, i16 %i.da
  store i16 %i.db, ptr %.12643, align 2, !tbaa !251
  %i.dc = getelementptr inbounds nuw i8, ptr %.12643, i64 2
  %i.dd = add nuw nsw i32 %.144, 1                ; 2 uses
  %exitcond55.not = icmp eq i32 %i.dd, %i.bg
  br i1 %exitcond55.not, label %._crit_edge, label %.lr.ph45, !llvm.loop !397

._crit_edge:                                      ; preds = %.lr.ph45, %middle.block, %.preheader
  %indvars.iv.next57 = add nsw i64 %indvars.iv56, 1 ; 2 uses
  %lftr.wideiv59 = trunc i64 %indvars.iv.next57 to i32
  %exitcond60.not = icmp eq i32 %i.q, %lftr.wideiv59
  br i1 %exitcond60.not, label %._crit_edge48, label %.noexc, !llvm.loop !398

._crit_edge48:                                    ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge48, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor14unary_op_expm1EEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !40     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !40
  %i.h = load i32, ptr %0, align 4, !tbaa !40     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !40
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !40
  %i.k = load i32, ptr %i.a, align 4, !tbaa !40   ; 3 uses
  %.not72 = icmp sgt i32 %i.k, %i.j
  br i1 %.not72, label %._crit_edge74, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !40     ; 4 uses
  %i.o = icmp sgt i32 %i.n, 3
  br i1 %i.o, label %.noexc.preheader, label %.noexc.lr.ph.split.us

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  br label %.noexc

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.r = load ptr, ptr %3, align 8, !tbaa !46, !noalias !399
  %i.s = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !399
  %i.t = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !399
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.noexc.us.preheader, label %._crit_edge74

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.us
  %i.v = sext i32 %i.k to i64
  %i.w = add nsw i32 %i.j, 1
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.v, %.noexc.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass
  br label %bb.c

bb.c:                                             ; preds = %.noexc.us, %bb.c
  %.170.us = phi i32 [ 0, %.noexc.us ], [ %i.ah, %bb.c ]
  %.12669.us = phi ptr [ %i.x, %.noexc.us ], [ %i.ag, %bb.c ] ; 3 uses
  %i.y = load i16, ptr %.12669.us, align 2, !tbaa !251
  %i.z = zext i16 %i.y to i32
  %i.aa = shl nuw i32 %i.z, 16
  %i.ab = bitcast i32 %i.aa to float
  %i.ac = call fast noundef nofpclass(nan inf) float @expm1f(float noundef nofpclass(nan inf) %i.ab) #20
  %i.ad = bitcast float %i.ac to i32
  %i.ae = lshr i32 %i.ad, 16
  %i.af = trunc nuw i32 %i.ae to i16
  store i16 %i.af, ptr %.12669.us, align 2, !tbaa !251
  %i.ag = getelementptr inbounds nuw i8, ptr %.12669.us, i64 2
  %i.ah = add nuw nsw i32 %.170.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ah, %i.n
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !402

._crit_edge.us:                                   ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond80.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond80.not, label %._crit_edge74, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ai = phi i32 [ %i.n, %.noexc.preheader ], [ %i.aq, %._crit_edge ] ; 2 uses
  %indvars.iv82 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next83, %._crit_edge ] ; 2 uses
  %i.aj = load ptr, ptr %3, align 8, !tbaa !46, !noalias !399
  %i.ak = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !399
  %i.al = mul i64 %i.ak, %indvars.iv82
  %i.am = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !399
  %i.an = mul i64 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.an ; 2 uses
  %i.ap = icmp sgt i32 %i.ai, 3
  br i1 %i.ap, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.aq = phi i32 [ %i.ai, %.noexc ], [ %i.cu, %.lr.ph ] ; 3 uses
  %.025.lcssa = phi ptr [ %i.ao, %.noexc ], [ %i.cr, %.lr.ph ]
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.cs, %.lr.ph ] ; 2 uses
  %i.ar = icmp slt i32 %.0.lcssa, %i.aq
  br i1 %i.ar, label %.lr.ph71, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.066 = phi i32 [ %i.cs, %.lr.ph ], [ 0, %.noexc ]
  %.02565 = phi ptr [ %i.cr, %.lr.ph ], [ %i.ao, %.noexc ] ; 3 uses
  %i.as = load i64, ptr %.02565, align 1, !tbaa !57
  %i.at = insertelement <2 x i64> poison, i64 %i.as, i64 0
  %i.au = bitcast <2 x i64> %i.at to <8 x i16>
  %i.av = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.au, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.aw = bitcast <8 x i16> %i.av to <4 x float>  ; 5 uses
  %i.ax = fmul fast <4 x float> %i.aw, %i.aw
  %i.ay = fmul fast <4 x float> %i.aw, splat (float f0x3E2AAAAB)
  %i.az = fadd fast <4 x float> %i.ay, splat (float 5.000000e-01)
  %i.ba = fmul fast <4 x float> %i.ax, %i.az
  %i.bb = fadd fast <4 x float> %i.ba, %i.aw
  %i.bc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aw, <4 x float> splat (float f0x42B0C0A5))
  %i.bd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bc, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.be = fmul fast <4 x float> %i.bd, splat (float f0x3FB8AA3B)
  %i.bf = fadd fast <4 x float> %i.be, splat (float 5.000000e-01) ; 2 uses
  %i.bg = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bf)
  %i.bh = sitofp fast <4 x i32> %i.bg to <4 x float> ; 2 uses
  %i.bi = fcmp fast olt <4 x float> %i.bf, %i.bh
  %i.bj = select <4 x i1> %i.bi, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.bk = fsub fast <4 x float> %i.bh, %i.bj      ; 2 uses
  %i.bl = fmul fast <4 x float> %i.bk, splat (float f0x3F317218)
  %i.bm = fsub fast <4 x float> %i.bd, %i.bl      ; 8 uses
  %i.bn = fmul fast <4 x float> %i.bm, %i.bm
  %i.bo = fmul fast <4 x float> %i.bm, splat (float f0x39506967)
  %i.bp = fadd fast <4 x float> %i.bo, splat (float f0x3AB743CE)
  %i.bq = fmul fast <4 x float> %i.bp, %i.bm
  %i.br = fadd fast <4 x float> %i.bq, splat (float f0x3C088908)
  %i.bs = fmul fast <4 x float> %i.br, %i.bm
  %i.bt = fadd fast <4 x float> %i.bs, splat (float f0x3D2AA9C1)
  %i.bu = fmul fast <4 x float> %i.bt, %i.bm
  %i.bv = fadd fast <4 x float> %i.bu, splat (float f0x3E2AAAAA)
  %i.bw = fmul fast <4 x float> %i.bv, %i.bm
  %i.bx = fadd fast <4 x float> %i.bw, splat (float 5.000000e-01)
  %i.by = fmul fast <4 x float> %i.bn, %i.bx
  %i.bz = fadd fast <4 x float> %i.bm, %i.by
  %i.ca = fadd fast <4 x float> %i.bz, splat (float 1.000000e+00)
  %i.cb = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bk)
  %i.cc = shl <4 x i32> %i.cb, splat (i32 23)
  %i.cd = add <4 x i32> %i.cc, splat (i32 1065353216)
  %i.ce = bitcast <4 x i32> %i.cd to <4 x float>
  %i.cf = fmul fast <4 x float> %i.ca, %i.ce
  %i.cg = fadd fast <4 x float> %i.cf, splat (float -1.000000e+00)
  %i.ch = bitcast <8 x i16> %i.av to <4 x i32>
  %i.ci = and <4 x i32> %i.ch, splat (i32 2147418112)
  %i.cj = bitcast <4 x i32> %i.ci to <4 x float>
  %i.ck = fcmp fast uge <4 x float> %i.cj, splat (float f0x38D1B717)
  %.v = select <4 x i1> %i.ck, <4 x float> %i.cg, <4 x float> %i.bb
  %i.cl = bitcast <4 x float> %.v to <8 x i16>
  %i.cm = shufflevector <8 x i16> %i.cl, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.cn = bitcast <8 x i16> %i.cm to <4 x float>
  %i.co = shufflevector <4 x float> %i.cn, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.cp = bitcast <4 x float> %i.co to <2 x i64>
  %i.cq = extractelement <2 x i64> %i.cp, i64 0
  store i64 %i.cq, ptr %.02565, align 1, !tbaa !57
  %i.cr = getelementptr inbounds nuw i8, ptr %.02565, i64 8 ; 2 uses
  %i.cs = add nuw nsw i32 %.066, 4                ; 3 uses
  %i.ct = or disjoint i32 %i.cs, 3
  %i.cu = load i32, ptr %4, align 4, !tbaa !40    ; 2 uses
  %i.cv = icmp slt i32 %i.ct, %i.cu
  br i1 %i.cv, label %.lr.ph, label %.preheader, !llvm.loop !403

.lr.ph71:                                         ; preds = %.preheader, %.lr.ph71
  %.170 = phi i32 [ %i.df, %.lr.ph71 ], [ %.0.lcssa, %.preheader ]
  %.12669 = phi ptr [ %i.de, %.lr.ph71 ], [ %.025.lcssa, %.preheader ] ; 3 uses
  %i.cw = load i16, ptr %.12669, align 2, !tbaa !251
  %i.cx = zext i16 %i.cw to i32
  %i.cy = shl nuw i32 %i.cx, 16
  %i.cz = bitcast i32 %i.cy to float
  %i.da = call fast noundef nofpclass(nan inf) float @expm1f(float noundef nofpclass(nan inf) %i.cz) #20
  %i.db = bitcast float %i.da to i32
  %i.dc = lshr i32 %i.db, 16
  %i.dd = trunc nuw i32 %i.dc to i16
  store i16 %i.dd, ptr %.12669, align 2, !tbaa !251
  %i.de = getelementptr inbounds nuw i8, ptr %.12669, i64 2
  %i.df = add nuw nsw i32 %.170, 1                ; 2 uses
  %exitcond81.not = icmp eq i32 %i.df, %i.aq
  br i1 %exitcond81.not, label %._crit_edge, label %.lr.ph71, !llvm.loop !402

._crit_edge:                                      ; preds = %.lr.ph71, %.preheader
  %indvars.iv.next83 = add nsw i64 %indvars.iv82, 1 ; 2 uses
  %lftr.wideiv85 = trunc i64 %indvars.iv.next83 to i32
  %exitcond86.not = icmp eq i32 %i.q, %lftr.wideiv85
  br i1 %exitcond86.not, label %._crit_edge74, label %.noexc, !llvm.loop !404

._crit_edge74:                                    ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge74, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor13unary_op_sinhEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !40     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !40
  %i.h = load i32, ptr %0, align 4, !tbaa !40     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !40
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !40
  %i.k = load i32, ptr %i.a, align 4, !tbaa !40   ; 3 uses
  %.not101 = icmp sgt i32 %i.k, %i.j
  br i1 %.not101, label %._crit_edge103, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !40     ; 5 uses
  %i.o = icmp sgt i32 %i.n, 3
  br i1 %i.o, label %.noexc.preheader, label %.noexc.lr.ph.split.us

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  br label %.noexc

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.r = load ptr, ptr %3, align 8, !tbaa !46, !noalias !405
  %i.s = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !405
  %i.t = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !405
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.noexc.us.preheader, label %._crit_edge103

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.us
  %i.v = sext i32 %i.k to i64
  %i.w = add nsw i32 %i.j, 1
  %exitcond.not = icmp eq i32 %i.n, 1
  %exitcond.not.1 = icmp eq i32 %i.n, 2
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.v, %.noexc.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass ; 4 uses
  %i.y = load i16, ptr %i.x, align 2, !tbaa !251
  %i.z = zext i16 %i.y to i32
  %i.aa = shl nuw i32 %i.z, 16
  %i.ab = bitcast i32 %i.aa to float
  %i.ac = call fast noundef nofpclass(nan inf) float @llvm.sinh.f32(float %i.ab)
  %i.ad = bitcast float %i.ac to i32
  %i.ae = lshr i32 %i.ad, 16
  %i.af = trunc nuw i32 %i.ae to i16
  store i16 %i.af, ptr %i.x, align 2, !tbaa !251
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %.noexc.us
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 2 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !251
  %i.ai = zext i16 %i.ah to i32
  %i.aj = shl nuw i32 %i.ai, 16
  %i.ak = bitcast i32 %i.aj to float
  %i.al = call fast noundef nofpclass(nan inf) float @llvm.sinh.f32(float %i.ak)
  %i.am = bitcast float %i.al to i32
  %i.an = lshr i32 %i.am, 16
  %i.ao = trunc nuw i32 %i.an to i16
  store i16 %i.ao, ptr %i.ag, align 2, !tbaa !251
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !251
  %i.ar = zext i16 %i.aq to i32
  %i.as = shl nuw i32 %i.ar, 16
  %i.at = bitcast i32 %i.as to float
  %i.au = call fast noundef nofpclass(nan inf) float @llvm.sinh.f32(float %i.at)
  %i.av = bitcast float %i.au to i32
  %i.aw = lshr i32 %i.av, 16
  %i.ax = trunc nuw i32 %i.aw to i16
  store i16 %i.ax, ptr %i.ap, align 2, !tbaa !251
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.d, %bb.c, %.noexc.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond109.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond109.not, label %._crit_edge103, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ay = phi i32 [ %i.n, %.noexc.preheader ], [ %i.bg, %._crit_edge ] ; 2 uses
  %indvars.iv111 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next112, %._crit_edge ] ; 2 uses
  %i.az = load ptr, ptr %3, align 8, !tbaa !46, !noalias !405
  %i.ba = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !405
  %i.bb = mul i64 %i.ba, %indvars.iv111
  %i.bc = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !405
  %i.bd = mul i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bd ; 2 uses
  %i.bf = icmp sgt i32 %i.ay, 3
  br i1 %i.bf, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.bg = phi i32 [ %i.ay, %.noexc ], [ %i.fo, %.lr.ph ] ; 4 uses
  %.025.lcssa = phi ptr [ %i.be, %.noexc ], [ %i.fl, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.fm, %.lr.ph ] ; 4 uses
  %i.bh = icmp slt i32 %.0.lcssa, %i.bg
  br i1 %i.bh, label %.lr.ph100.preheader, label %._crit_edge

.lr.ph100.preheader:                              ; preds = %.preheader
  %i.bi = xor i32 %.0.lcssa, -1
  %i.bj = add i32 %i.bg, %i.bi                    ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bj, 7
  br i1 %min.iters.check, label %.lr.ph100.preheader129, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph100.preheader
  %n.vec = and i64 %i.bl, 8589934584              ; 4 uses
  %i.bm = trunc i64 %n.vec to i32
  %i.bn = add i32 %.0.lcssa, %i.bm
  %i.bo = shl nuw nsw i64 %n.vec, 1
  %i.bp = getelementptr i8, ptr %.025.lcssa, i64 %i.bo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.025.lcssa, i64 %i.bq ; 2 uses
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !251
  %i.br = zext <8 x i16> %wide.load to <8 x i32>
  %i.bs = shl nuw <8 x i32> %i.br, splat (i32 16)
  %i.bt = bitcast <8 x i32> %i.bs to <8 x float>
  %i.bu = call fast <8 x float> @llvm.sinh.v8f32(<8 x float> %i.bt)
  %i.bv = bitcast <8 x float> %i.bu to <8 x i32>
  %i.bw = lshr <8 x i32> %i.bv, splat (i32 16)
  %i.bx = trunc nuw <8 x i32> %i.bw to <8 x i16>
  store <8 x i16> %i.bx, ptr %next.gep, align 2, !tbaa !251
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !408

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph100.preheader129

.lr.ph100.preheader129:                           ; preds = %.lr.ph100.preheader, %middle.block
  %.199.ph = phi i32 [ %.0.lcssa, %.lr.ph100.preheader ], [ %i.bn, %middle.block ]
  %.12698.ph = phi ptr [ %.025.lcssa, %.lr.ph100.preheader ], [ %i.bp, %middle.block ]
  br label %.lr.ph100

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.095 = phi i32 [ %i.fm, %.lr.ph ], [ 0, %.noexc ]
  %.02594 = phi ptr [ %i.fl, %.lr.ph ], [ %i.be, %.noexc ] ; 3 uses
  %i.bz = load i64, ptr %.02594, align 1, !tbaa !57
  %i.ca = insertelement <2 x i64> poison, i64 %i.bz, i64 0
  %i.cb = bitcast <2 x i64> %i.ca to <8 x i16>
  %i.cc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.cd = bitcast <8 x i16> %i.cc to <4 x float>  ; 8 uses
  %i.ce = fmul fast <4 x float> %i.cd, %i.cd      ; 2 uses
  %i.cf = fmul fast <4 x float> %i.cd, splat (float f0x3E2AAAAB) ; 2 uses
  %i.cg = fadd fast <4 x float> %i.cf, splat (float 5.000000e-01)
  %i.ch = fmul fast <4 x float> %i.ce, %i.cg
  %i.ci = fadd fast <4 x float> %i.ch, %i.cd
  %i.cj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cd, <4 x float> splat (float f0x42B0C0A5))
  %i.ck = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cj, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cl = fmul fast <4 x float> %i.ck, splat (float f0x3FB8AA3B)
  %i.cm = fadd fast <4 x float> %i.cl, splat (float 5.000000e-01) ; 2 uses
  %i.cn = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cm)
  %i.co = sitofp fast <4 x i32> %i.cn to <4 x float> ; 2 uses
  %i.cp = fcmp fast olt <4 x float> %i.cm, %i.co
  %i.cq = select <4 x i1> %i.cp, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.cr = fsub fast <4 x float> %i.co, %i.cq      ; 2 uses
  %i.cs = fmul fast <4 x float> %i.cr, splat (float f0x3F317218)
  %i.ct = fsub fast <4 x float> %i.ck, %i.cs      ; 8 uses
  %i.cu = fmul fast <4 x float> %i.ct, %i.ct
  %i.cv = fmul fast <4 x float> %i.ct, splat (float f0x39506967)
  %i.cw = fadd fast <4 x float> %i.cv, splat (float f0x3AB743CE)
  %i.cx = fmul fast <4 x float> %i.cw, %i.ct
  %i.cy = fadd fast <4 x float> %i.cx, splat (float f0x3C088908)
  %i.cz = fmul fast <4 x float> %i.cy, %i.ct
  %i.da = fadd fast <4 x float> %i.cz, splat (float f0x3D2AA9C1)
  %i.db = fmul fast <4 x float> %i.da, %i.ct
  %i.dc = fadd fast <4 x float> %i.db, splat (float f0x3E2AAAAA)
  %i.dd = fmul fast <4 x float> %i.dc, %i.ct
  %i.de = fadd fast <4 x float> %i.dd, splat (float 5.000000e-01)
  %i.df = fmul fast <4 x float> %i.cu, %i.de
  %i.dg = fadd fast <4 x float> %i.ct, %i.df
  %i.dh = fadd fast <4 x float> %i.dg, splat (float 1.000000e+00)
  %i.di = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cr)
  %i.dj = shl <4 x i32> %i.di, splat (i32 23)
  %i.dk = add <4 x i32> %i.dj, splat (i32 1065353216)
  %i.dl = bitcast <4 x i32> %i.dk to <4 x float>
  %i.dm = fmul fast <4 x float> %i.dh, %i.dl
  %i.dn = fadd fast <4 x float> %i.dm, splat (float -1.000000e+00)
  %i.do = bitcast <8 x i16> %i.cc to <4 x i32>
  %i.dp = and <4 x i32> %i.do, splat (i32 2147418112)
  %i.dq = bitcast <4 x i32> %i.dp to <4 x float>
  %i.dr = fcmp fast uge <4 x float> %i.dq, splat (float f0x38D1B717)
  %.v = select <4 x i1> %i.dr, <4 x float> %i.dn, <4 x float> %i.ci
  %i.ds = fneg fast <4 x float> %i.cd
  %i.dt = fsub fast <4 x float> splat (float 5.000000e-01), %i.cf
  %i.du = fmul fast <4 x float> %i.ce, %i.dt
  %i.dv = fsub fast <4 x float> %i.du, %i.cd
  %i.dw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ds, <4 x float> splat (float f0x42B0C0A5))
  %i.dx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dw, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dy = fmul fast <4 x float> %i.dx, splat (float f0x3FB8AA3B)
  %i.dz = fadd fast <4 x float> %i.dy, splat (float 5.000000e-01) ; 2 uses
  %i.ea = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dz)
  %i.eb = sitofp fast <4 x i32> %i.ea to <4 x float> ; 2 uses
  %i.ec = fcmp fast olt <4 x float> %i.dz, %i.eb
  %i.ed = select <4 x i1> %i.ec, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ee = fsub fast <4 x float> %i.eb, %i.ed      ; 2 uses
  %i.ef = fmul fast <4 x float> %i.ee, splat (float f0x3F317218)
  %i.eg = fsub fast <4 x float> %i.dx, %i.ef      ; 8 uses
  %i.eh = fmul fast <4 x float> %i.eg, %i.eg
  %i.ei = fmul fast <4 x float> %i.eg, splat (float f0x39506967)
  %i.ej = fadd fast <4 x float> %i.ei, splat (float f0x3AB743CE)
  %i.ek = fmul fast <4 x float> %i.ej, %i.eg
  %i.el = fadd fast <4 x float> %i.ek, splat (float f0x3C088908)
  %i.em = fmul fast <4 x float> %i.el, %i.eg
  %i.en = fadd fast <4 x float> %i.em, splat (float f0x3D2AA9C1)
  %i.eo = fmul fast <4 x float> %i.en, %i.eg
  %i.ep = fadd fast <4 x float> %i.eo, splat (float f0x3E2AAAAA)
  %i.eq = fmul fast <4 x float> %i.ep, %i.eg
  %i.er = fadd fast <4 x float> %i.eq, splat (float 5.000000e-01)
  %i.es = fmul fast <4 x float> %i.eh, %i.er
  %i.et = fadd fast <4 x float> %i.eg, %i.es
  %i.eu = fadd fast <4 x float> %i.et, splat (float 1.000000e+00)
  %i.ev = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ee)
  %i.ew = shl <4 x i32> %i.ev, splat (i32 23)
  %i.ex = add <4 x i32> %i.ew, splat (i32 1065353216)
  %i.ey = bitcast <4 x i32> %i.ex to <4 x float>
  %i.ez = fmul fast <4 x float> %i.eu, %i.ey
  %i.fa = fadd fast <4 x float> %i.ez, splat (float -1.000000e+00)
  %i.fb = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.cd)
  %i.fc = fcmp fast uge <4 x float> %i.fb, splat (float f0x38D1B717)
  %.v93 = select <4 x i1> %i.fc, <4 x float> %i.fa, <4 x float> %i.dv
  %i.fd = fsub fast <4 x float> %.v, %.v93
  %i.fe = fmul fast <4 x float> %i.fd, splat (float 5.000000e-01)
  %i.ff = bitcast <4 x float> %i.fe to <8 x i16>
  %i.fg = shufflevector <8 x i16> %i.ff, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.fh = bitcast <8 x i16> %i.fg to <4 x float>
  %i.fi = shufflevector <4 x float> %i.fh, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.fj = bitcast <4 x float> %i.fi to <2 x i64>
  %i.fk = extractelement <2 x i64> %i.fj, i64 0
  store i64 %i.fk, ptr %.02594, align 1, !tbaa !57
  %i.fl = getelementptr inbounds nuw i8, ptr %.02594, i64 8 ; 2 uses
  %i.fm = add nuw nsw i32 %.095, 4                ; 3 uses
  %i.fn = or disjoint i32 %i.fm, 3
  %i.fo = load i32, ptr %4, align 4, !tbaa !40    ; 2 uses
  %i.fp = icmp slt i32 %i.fn, %i.fo
  br i1 %i.fp, label %.lr.ph, label %.preheader, !llvm.loop !409

.lr.ph100:                                        ; preds = %.lr.ph100.preheader129, %.lr.ph100
  %.199 = phi i32 [ %i.fz, %.lr.ph100 ], [ %.199.ph, %.lr.ph100.preheader129 ]
  %.12698 = phi ptr [ %i.fy, %.lr.ph100 ], [ %.12698.ph, %.lr.ph100.preheader129 ] ; 3 uses
  %i.fq = load i16, ptr %.12698, align 2, !tbaa !251
  %i.fr = zext i16 %i.fq to i32
  %i.fs = shl nuw i32 %i.fr, 16
  %i.ft = bitcast i32 %i.fs to float
  %i.fu = call fast noundef nofpclass(nan inf) float @llvm.sinh.f32(float %i.ft)
  %i.fv = bitcast float %i.fu to i32
  %i.fw = lshr i32 %i.fv, 16
  %i.fx = trunc nuw i32 %i.fw to i16
  store i16 %i.fx, ptr %.12698, align 2, !tbaa !251
  %i.fy = getelementptr inbounds nuw i8, ptr %.12698, i64 2
  %i.fz = add nuw nsw i32 %.199, 1                ; 2 uses
  %exitcond110.not = icmp eq i32 %i.fz, %i.bg
  br i1 %exitcond110.not, label %._crit_edge, label %.lr.ph100, !llvm.loop !410

._crit_edge:                                      ; preds = %.lr.ph100, %middle.block, %.preheader
  %indvars.iv.next112 = add nsw i64 %indvars.iv111, 1 ; 2 uses
  %lftr.wideiv114 = trunc i64 %indvars.iv.next112 to i32
  %exitcond115.not = icmp eq i32 %i.q, %lftr.wideiv114
  br i1 %exitcond115.not, label %._crit_edge103, label %.noexc, !llvm.loop !411

._crit_edge103:                                   ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge103, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor14unary_op_asinhEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !40     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !40
  %i.h = load i32, ptr %0, align 4, !tbaa !40     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !40
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !40
  %i.k = load i32, ptr %i.a, align 4, !tbaa !40   ; 3 uses
  %.not122 = icmp sgt i32 %i.k, %i.j
  br i1 %.not122, label %._crit_edge124, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !40     ; 4 uses
  %i.o = icmp sgt i32 %i.n, 3
  br i1 %i.o, label %.noexc.preheader, label %.noexc.lr.ph.split.us

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  br label %.noexc

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.r = load ptr, ptr %3, align 8, !tbaa !46, !noalias !412
  %i.s = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !412
  %i.t = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !412
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.noexc.us.preheader, label %._crit_edge124

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.us
  %i.v = sext i32 %i.k to i64
  %i.w = add nsw i32 %i.j, 1
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.v, %.noexc.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass
  br label %bb.c

bb.c:                                             ; preds = %.noexc.us, %bb.c
  %.1120.us = phi i32 [ 0, %.noexc.us ], [ %i.ah, %bb.c ]
  %.126119.us = phi ptr [ %i.x, %.noexc.us ], [ %i.ag, %bb.c ] ; 3 uses
  %i.y = load i16, ptr %.126119.us, align 2, !tbaa !251
  %i.z = zext i16 %i.y to i32
  %i.aa = shl nuw i32 %i.z, 16
  %i.ab = bitcast i32 %i.aa to float
  %i.ac = call fast noundef nofpclass(nan inf) float @asinhf(float noundef nofpclass(nan inf) %i.ab) #20
  %i.ad = bitcast float %i.ac to i32
  %i.ae = lshr i32 %i.ad, 16
  %i.af = trunc nuw i32 %i.ae to i16
  store i16 %i.af, ptr %.126119.us, align 2, !tbaa !251
  %i.ag = getelementptr inbounds nuw i8, ptr %.126119.us, i64 2
  %i.ah = add nuw nsw i32 %.1120.us, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ah, %i.n
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !415

._crit_edge.us:                                   ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond130.not.a = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond130.not.a, label %._crit_edge124, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ai = phi i32 [ %i.n, %.noexc.preheader ], [ %i.aq, %._crit_edge ] ; 2 uses
  %indvars.iv132 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next133, %._crit_edge ] ; 2 uses
  %i.aj = load ptr, ptr %3, align 8, !tbaa !46, !noalias !412
  %i.ak = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !412
  %i.al = mul i64 %i.ak, %indvars.iv132
  %i.am = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !412
  %i.an = mul i64 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.an ; 2 uses
  %i.ap = icmp sgt i32 %i.ai, 3
  br i1 %i.ap, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.aq = phi i32 [ %i.ai, %.noexc ], [ %i.em, %.lr.ph ] ; 3 uses
  %.025.lcssa = phi ptr [ %i.ao, %.noexc ], [ %i.ej, %.lr.ph ]
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.ek, %.lr.ph ] ; 2 uses
  %i.ar = icmp slt i32 %.0.lcssa, %i.aq
  br i1 %i.ar, label %.lr.ph121, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0116 = phi i32 [ %i.ek, %.lr.ph ], [ 0, %.noexc ]
  %.025115 = phi ptr [ %i.ej, %.lr.ph ], [ %i.ao, %.noexc ] ; 3 uses
  %i.as = load i64, ptr %.025115, align 1, !tbaa !57
  %i.at = insertelement <2 x i64> poison, i64 %i.as, i64 0
  %i.au = bitcast <2 x i64> %i.at to <8 x i16>
  %i.av = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.au, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.aw = bitcast <8 x i16> %i.av to <4 x i32>
  %i.ax = and <4 x i32> %i.aw, splat (i32 2147418112)
  %i.ay = bitcast <4 x i32> %i.ax to <4 x float>  ; 5 uses
  %i.az = fmul fast <4 x float> %i.ay, %i.ay
  %i.ba = fadd fast <4 x float> %i.az, splat (float 1.000000e+00)
  %i.bb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.sqrt.v4f32(<4 x float> nofpclass(nan inf) %i.ba)
  %i.bc = fadd fast <4 x float> %i.bb, %i.ay      ; 2 uses
  %i.bd = fcmp fast ole <4 x float> %i.bc, zeroinitializer
  %i.be = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bc, <4 x float> splat (float f0x00800000))
  %i.bf = bitcast <4 x float> %i.be to <4 x i32>  ; 2 uses
  %i.bg = lshr <4 x i32> %i.bf, splat (i32 23)
  %i.bh = and <4 x i32> %i.bf, splat (i32 -2139095041)
  %i.bi = or disjoint <4 x i32> %i.bh, splat (i32 1056964608)
  %i.bj = bitcast <4 x i32> %i.bi to <4 x float>  ; 3 uses
  %i.bk = add nsw <4 x i32> %i.bg, splat (i32 -127)
  %i.bl = sitofp fast <4 x i32> %i.bk to <4 x float> ; 2 uses
  %i.bm = fadd fast <4 x float> %i.bl, splat (float 1.000000e+00)
  %i.bn = fcmp fast olt <4 x float> %i.bj, splat (float f0x3F3504F3) ; 2 uses
  %i.bo = select <4 x i1> %i.bn, <4 x float> %i.bj, <4 x float> zeroinitializer
  %i.bp = fadd fast <4 x float> %i.bj, splat (float -1.000000e+00)
  %i.bq = select fast <4 x i1> %i.bn, <4 x float> %i.bl, <4 x float> %i.bm
  %i.br = fadd fast <4 x float> %i.bp, %i.bo      ; 12 uses
  %i.bs = fmul fast <4 x float> %i.br, %i.br      ; 2 uses
  %i.bt = fmul fast <4 x float> %i.br, splat (float f0x3D9021BB)
  %i.bu = fadd fast <4 x float> %i.bt, splat (float f0xBDEBD1B8)
  %i.bv = fmul fast <4 x float> %i.bu, %i.br
  %i.bw = fadd fast <4 x float> %i.bv, splat (float f0x3DEF251A)
  %i.bx = fmul fast <4 x float> %i.bw, %i.br
  %i.by = fadd fast <4 x float> %i.bx, splat (float f0xBDFE5D4F)
  %i.bz = fmul fast <4 x float> %i.by, %i.br
  %i.ca = fadd fast <4 x float> %i.bz, splat (float f0x3E11E9BF)
  %i.cb = fmul fast <4 x float> %i.ca, %i.br
  %i.cc = fadd fast <4 x float> %i.cb, splat (float f0xBE2AAE50)
  %i.cd = fmul fast <4 x float> %i.cc, %i.br
  %i.ce = fadd fast <4 x float> %i.cd, splat (float f0x3E4CCEAC)
  %i.cf = fmul fast <4 x float> %i.ce, %i.br
  %i.cg = fadd fast <4 x float> %i.cf, splat (float f0xBE7FFFFC)
  %i.ch = fmul fast <4 x float> %i.cg, %i.br
  %i.ci = fadd fast <4 x float> %i.ch, splat (float f0x3EAAAAAA)
  %i.cj = fmul fast <4 x float> %i.bs, %i.br
  %reass.mul.a = fmul fast <4 x float> %i.cj, %i.ci
  %.neg = fmul fast <4 x float> %i.bs, splat (float -5.000000e-01)
  %reass.mul112 = fmul fast <4 x float> %i.bq, splat (float f0x3F317218)
  %6 = fadd fast <4 x float> %i.br, %.neg
  %i.ck = fadd fast <4 x float> %reass.mul.a, %6
  %i.cl = fadd fast <4 x float> %i.ck, %reass.mul112
  %i.cm = bitcast <4 x float> %i.cl to <4 x i32>
  %i.cn = select <4 x i1> %i.bd, <4 x i32> splat (i32 -1), <4 x i32> %i.cm
  %i.co = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ay, <4 x float> splat (float f0x00800000))
  %i.cp = bitcast <4 x float> %i.co to <4 x i32>  ; 2 uses
  %i.cq = lshr <4 x i32> %i.cp, splat (i32 23)
  %i.cr = and <4 x i32> %i.cp, splat (i32 -2139095041)
  %i.cs = or disjoint <4 x i32> %i.cr, splat (i32 1056964608)
  %i.ct = bitcast <4 x i32> %i.cs to <4 x float>  ; 3 uses
  %i.cu = add nsw <4 x i32> %i.cq, splat (i32 -127)
  %i.cv = sitofp fast <4 x i32> %i.cu to <4 x float> ; 2 uses
  %i.cw = fadd fast <4 x float> %i.cv, splat (float 1.000000e+00)
  %i.cx = fcmp fast olt <4 x float> %i.ct, splat (float f0x3F3504F3) ; 2 uses
  %i.cy = select <4 x i1> %i.cx, <4 x float> %i.ct, <4 x float> zeroinitializer
  %i.cz = fadd fast <4 x float> %i.ct, splat (float -1.000000e+00)
  %i.da = select fast <4 x i1> %i.cx, <4 x float> %i.cv, <4 x float> %i.cw ; 2 uses
  %i.db = fadd fast <4 x float> %i.cz, %i.cy      ; 12 uses
  %i.dc = fmul fast <4 x float> %i.db, %i.db      ; 2 uses
  %i.dd = fmul fast <4 x float> %i.db, splat (float f0x3D9021BB)
  %i.de = fadd fast <4 x float> %i.dd, splat (float f0xBDEBD1B8)
  %i.df = fmul fast <4 x float> %i.de, %i.db
  %i.dg = fadd fast <4 x float> %i.df, splat (float f0x3DEF251A)
  %i.dh = fmul fast <4 x float> %i.dg, %i.db
  %i.di = fadd fast <4 x float> %i.dh, splat (float f0xBDFE5D4F)
  %i.dj = fmul fast <4 x float> %i.di, %i.db
  %i.dk = fadd fast <4 x float> %i.dj, splat (float f0x3E11E9BF)
  %i.dl = fmul fast <4 x float> %i.dk, %i.db
  %i.dm = fadd fast <4 x float> %i.dl, splat (float f0xBE2AAE50)
  %i.dn = fmul fast <4 x float> %i.dm, %i.db
  %i.do = fadd fast <4 x float> %i.dn, splat (float f0x3E4CCEAC)
  %i.dp = fmul fast <4 x float> %i.do, %i.db
  %i.dq = fadd fast <4 x float> %i.dp, splat (float f0xBE7FFFFC)
  %i.dr = fmul fast <4 x float> %i.dq, %i.db
  %i.ds = fadd fast <4 x float> %i.dr, splat (float f0x3EAAAAAA)
  %7 = fmul fast <4 x float> %i.dc, %i.db
  %i.dt = fmul fast <4 x float> %7, %i.ds
  %reass.mul110 = fmul fast <4 x float> %i.da, splat (float f0xB95E8083)
  %reass.add113 = fadd fast <4 x float> %reass.mul110, %i.dt
  %reass.mul114 = fmul fast <4 x float> %i.dc, splat (float -5.000000e-01)
  %8 = fadd fast <4 x float> %reass.mul114, %reass.add113
  %i.du = fadd fast <4 x float> %i.db, %8
  %9 = fmul fast <4 x float> %i.da, splat (float f0x3F318000)
  %i.dv = fadd fast <4 x float> %9, %i.du
  %i.dw = fadd fast <4 x float> %i.dv, splat (float f0x3F317218)
  %i.dx = fcmp fast ule <4 x float> %i.ay, splat (float f0x5F0AC723)
  %i.dy = bitcast <4 x float> %i.dw to <4 x i32>
  %i.dz = select <4 x i1> %i.dx, <4 x i32> %i.cn, <4 x i32> %i.dy
  %i.ea = bitcast <8 x i16> %i.av to <4 x i32>
  %i.eb = and <4 x i32> %i.ea, splat (i32 -2147483648)
  %i.ec = or <4 x i32> %i.dz, %i.eb
  %i.ed = bitcast <4 x i32> %i.ec to <8 x i16>
  %i.ee = shufflevector <8 x i16> %i.ed, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.ef = bitcast <8 x i16> %i.ee to <4 x float>
  %i.eg = shufflevector <4 x float> %i.ef, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.eh = bitcast <4 x float> %i.eg to <2 x i64>
  %i.ei = extractelement <2 x i64> %i.eh, i64 0
  store i64 %i.ei, ptr %.025115, align 1, !tbaa !57
  %i.ej = getelementptr inbounds nuw i8, ptr %.025115, i64 8 ; 2 uses
  %i.ek = add nuw nsw i32 %.0116, 4               ; 3 uses
  %i.el = or disjoint i32 %i.ek, 3
  %i.em = load i32, ptr %4, align 4, !tbaa !40    ; 2 uses
  %i.en = icmp slt i32 %i.el, %i.em
  br i1 %i.en, label %.lr.ph, label %.preheader, !llvm.loop !416

.lr.ph121:                                        ; preds = %.preheader, %.lr.ph121
  %.1120 = phi i32 [ %i.ex, %.lr.ph121 ], [ %.0.lcssa, %.preheader ]
  %.126119 = phi ptr [ %i.ew, %.lr.ph121 ], [ %.025.lcssa, %.preheader ] ; 3 uses
  %i.eo = load i16, ptr %.126119, align 2, !tbaa !251
  %i.ep = zext i16 %i.eo to i32
  %i.eq = shl nuw i32 %i.ep, 16
  %i.er = bitcast i32 %i.eq to float
  %i.es = call fast noundef nofpclass(nan inf) float @asinhf(float noundef nofpclass(nan inf) %i.er) #20
  %i.et = bitcast float %i.es to i32
  %i.eu = lshr i32 %i.et, 16
  %i.ev = trunc nuw i32 %i.eu to i16
  store i16 %i.ev, ptr %.126119, align 2, !tbaa !251
  %i.ew = getelementptr inbounds nuw i8, ptr %.126119, i64 2
  %i.ex = add nuw nsw i32 %.1120, 1               ; 2 uses
  %exitcond131.not = icmp eq i32 %i.ex, %i.aq
  br i1 %exitcond131.not, label %._crit_edge, label %.lr.ph121, !llvm.loop !415

._crit_edge:                                      ; preds = %.lr.ph121, %.preheader
  %indvars.iv.next133 = add nsw i64 %indvars.iv132, 1 ; 2 uses
  %lftr.wideiv135 = trunc i64 %indvars.iv.next133 to i32
  %exitcond136.not = icmp eq i32 %i.q, %lftr.wideiv135
  br i1 %exitcond136.not, label %._crit_edge124, label %.noexc, !llvm.loop !417

._crit_edge124:                                   ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge124, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor13unary_op_coshEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !40     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !40
  %i.h = load i32, ptr %0, align 4, !tbaa !40     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !40
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !40
  %i.k = load i32, ptr %i.a, align 4, !tbaa !40   ; 3 uses
  %.not92 = icmp sgt i32 %i.k, %i.j
  br i1 %.not92, label %._crit_edge94, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !40     ; 5 uses
  %i.o = icmp sgt i32 %i.n, 3
  br i1 %i.o, label %.noexc.preheader, label %.noexc.lr.ph.split.us

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  br label %.noexc

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.r = load ptr, ptr %3, align 8, !tbaa !46, !noalias !418
  %i.s = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !418
  %i.t = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !418
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.noexc.us.preheader, label %._crit_edge94

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.us
  %i.v = sext i32 %i.k to i64
  %i.w = add nsw i32 %i.j, 1
  %exitcond.not = icmp eq i32 %i.n, 1
  %exitcond.not.1 = icmp eq i32 %i.n, 2
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.v, %.noexc.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass ; 4 uses
  %i.y = load i16, ptr %i.x, align 2, !tbaa !251
  %i.z = zext i16 %i.y to i32
  %i.aa = shl nuw i32 %i.z, 16
  %i.ab = bitcast i32 %i.aa to float
  %i.ac = call fast noundef nofpclass(nan inf) float @llvm.cosh.f32(float %i.ab)
  %i.ad = bitcast float %i.ac to i32
  %i.ae = lshr i32 %i.ad, 16
  %i.af = trunc nuw nsw i32 %i.ae to i16
  store i16 %i.af, ptr %i.x, align 2, !tbaa !251
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %.noexc.us
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 2 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !251
  %i.ai = zext i16 %i.ah to i32
  %i.aj = shl nuw i32 %i.ai, 16
  %i.ak = bitcast i32 %i.aj to float
  %i.al = call fast noundef nofpclass(nan inf) float @llvm.cosh.f32(float %i.ak)
  %i.am = bitcast float %i.al to i32
  %i.an = lshr i32 %i.am, 16
  %i.ao = trunc nuw nsw i32 %i.an to i16
  store i16 %i.ao, ptr %i.ag, align 2, !tbaa !251
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !251
  %i.ar = zext i16 %i.aq to i32
  %i.as = shl nuw i32 %i.ar, 16
  %i.at = bitcast i32 %i.as to float
  %i.au = call fast noundef nofpclass(nan inf) float @llvm.cosh.f32(float %i.at)
  %i.av = bitcast float %i.au to i32
  %i.aw = lshr i32 %i.av, 16
  %i.ax = trunc nuw nsw i32 %i.aw to i16
  store i16 %i.ax, ptr %i.ap, align 2, !tbaa !251
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.d, %bb.c, %.noexc.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond100.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond100.not, label %._crit_edge94, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ay = phi i32 [ %i.n, %.noexc.preheader ], [ %i.bg, %._crit_edge ] ; 2 uses
  %indvars.iv102 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next103, %._crit_edge ] ; 2 uses
  %i.az = load ptr, ptr %3, align 8, !tbaa !46, !noalias !418
  %i.ba = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !418
  %i.bb = mul i64 %i.ba, %indvars.iv102
  %i.bc = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !418
  %i.bd = mul i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bd ; 2 uses
  %i.bf = icmp sgt i32 %i.ay, 3
  br i1 %i.bf, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.bg = phi i32 [ %i.ay, %.noexc ], [ %i.ey, %.lr.ph ] ; 4 uses
  %.025.lcssa = phi ptr [ %i.be, %.noexc ], [ %i.ev, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.ew, %.lr.ph ] ; 4 uses
  %i.bh = icmp slt i32 %.0.lcssa, %i.bg
  br i1 %i.bh, label %.lr.ph91.preheader, label %._crit_edge

.lr.ph91.preheader:                               ; preds = %.preheader
  %i.bi = xor i32 %.0.lcssa, -1
  %i.bj = add i32 %i.bg, %i.bi                    ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bj, 7
  br i1 %min.iters.check, label %.lr.ph91.preheader120, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph91.preheader
  %n.vec = and i64 %i.bl, 8589934584              ; 4 uses
  %i.bm = trunc i64 %n.vec to i32
  %i.bn = add i32 %.0.lcssa, %i.bm
  %i.bo = shl nuw nsw i64 %n.vec, 1
  %i.bp = getelementptr i8, ptr %.025.lcssa, i64 %i.bo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.025.lcssa, i64 %i.bq ; 2 uses
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !251
  %i.br = zext <8 x i16> %wide.load to <8 x i32>
  %i.bs = shl nuw <8 x i32> %i.br, splat (i32 16)
  %i.bt = bitcast <8 x i32> %i.bs to <8 x float>
  %i.bu = call fast <8 x float> @llvm.cosh.v8f32(<8 x float> %i.bt)
  %i.bv = bitcast <8 x float> %i.bu to <8 x i32>
  %i.bw = lshr <8 x i32> %i.bv, splat (i32 16)
  %i.bx = trunc nuw nsw <8 x i32> %i.bw to <8 x i16>
  store <8 x i16> %i.bx, ptr %next.gep, align 2, !tbaa !251
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !421

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph91.preheader120

.lr.ph91.preheader120:                            ; preds = %.lr.ph91.preheader, %middle.block
  %.190.ph = phi i32 [ %.0.lcssa, %.lr.ph91.preheader ], [ %i.bn, %middle.block ]
  %.12689.ph = phi ptr [ %.025.lcssa, %.lr.ph91.preheader ], [ %i.bp, %middle.block ]
  br label %.lr.ph91

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.086 = phi i32 [ %i.ew, %.lr.ph ], [ 0, %.noexc ]
  %.02585 = phi ptr [ %i.ev, %.lr.ph ], [ %i.be, %.noexc ] ; 3 uses
  %i.bz = load i64, ptr %.02585, align 1, !tbaa !57
  %i.ca = insertelement <2 x i64> poison, i64 %i.bz, i64 0
  %i.cb = bitcast <2 x i64> %i.ca to <8 x i16>
  %i.cc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cd = bitcast <8 x i16> %i.cc to <4 x float>  ; 2 uses
  %i.ce = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cd, <4 x float> splat (float f0x42B0C0A5))
  %i.cf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ce, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cg = fmul fast <4 x float> %i.cf, splat (float f0x3FB8AA3B)
  %i.ch = fadd fast <4 x float> %i.cg, splat (float 5.000000e-01) ; 2 uses
  %i.ci = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ch)
  %i.cj = sitofp fast <4 x i32> %i.ci to <4 x float> ; 2 uses
  %i.ck = fcmp fast olt <4 x float> %i.ch, %i.cj
  %i.cl = select <4 x i1> %i.ck, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.cm = fsub fast <4 x float> %i.cj, %i.cl      ; 2 uses
  %i.cn = fmul fast <4 x float> %i.cm, splat (float f0x3F317218)
  %i.co = fsub fast <4 x float> %i.cf, %i.cn      ; 8 uses
  %i.cp = fmul fast <4 x float> %i.co, %i.co
  %i.cq = fmul fast <4 x float> %i.co, splat (float f0x39506967)
  %i.cr = fadd fast <4 x float> %i.cq, splat (float f0x3AB743CE)
  %i.cs = fmul fast <4 x float> %i.cr, %i.co
  %i.ct = fadd fast <4 x float> %i.cs, splat (float f0x3C088908)
  %i.cu = fmul fast <4 x float> %i.ct, %i.co
  %i.cv = fadd fast <4 x float> %i.cu, splat (float f0x3D2AA9C1)
  %i.cw = fmul fast <4 x float> %i.cv, %i.co
  %i.cx = fadd fast <4 x float> %i.cw, splat (float f0x3E2AAAAA)
  %i.cy = fmul fast <4 x float> %i.cx, %i.co
  %i.cz = fadd fast <4 x float> %i.cy, splat (float 5.000000e-01)
  %i.da = fmul fast <4 x float> %i.cp, %i.cz
  %i.db = fadd fast <4 x float> %i.co, %i.da
  %i.dc = fadd fast <4 x float> %i.db, splat (float 1.000000e+00)
  %i.dd = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cm)
  %i.de = shl <4 x i32> %i.dd, splat (i32 23)
  %i.df = add <4 x i32> %i.de, splat (i32 1065353216)
  %i.dg = bitcast <4 x i32> %i.df to <4 x float>
  %i.dh = fmul fast <4 x float> %i.dc, %i.dg
  %i.di = fneg fast <4 x float> %i.cd
  %i.dj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.di, <4 x float> splat (float f0x42B0C0A5))
  %i.dk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dj, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dl = fmul fast <4 x float> %i.dk, splat (float f0x3FB8AA3B)
  %i.dm = fadd fast <4 x float> %i.dl, splat (float 5.000000e-01) ; 2 uses
  %i.dn = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dm)
  %i.do = sitofp fast <4 x i32> %i.dn to <4 x float> ; 2 uses
  %i.dp = fcmp fast olt <4 x float> %i.dm, %i.do
  %i.dq = select <4 x i1> %i.dp, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.dr = fsub fast <4 x float> %i.do, %i.dq      ; 2 uses
  %i.ds = fmul fast <4 x float> %i.dr, splat (float f0x3F317218)
  %i.dt = fsub fast <4 x float> %i.dk, %i.ds      ; 8 uses
  %i.du = fmul fast <4 x float> %i.dt, %i.dt
  %i.dv = fmul fast <4 x float> %i.dt, splat (float f0x39506967)
  %i.dw = fadd fast <4 x float> %i.dv, splat (float f0x3AB743CE)
  %i.dx = fmul fast <4 x float> %i.dw, %i.dt
  %i.dy = fadd fast <4 x float> %i.dx, splat (float f0x3C088908)
  %i.dz = fmul fast <4 x float> %i.dy, %i.dt
  %i.ea = fadd fast <4 x float> %i.dz, splat (float f0x3D2AA9C1)
  %i.eb = fmul fast <4 x float> %i.ea, %i.dt
  %i.ec = fadd fast <4 x float> %i.eb, splat (float f0x3E2AAAAA)
  %i.ed = fmul fast <4 x float> %i.ec, %i.dt
  %i.ee = fadd fast <4 x float> %i.ed, splat (float 5.000000e-01)
  %i.ef = fmul fast <4 x float> %i.du, %i.ee
  %i.eg = fadd fast <4 x float> %i.dt, %i.ef
  %i.eh = fadd fast <4 x float> %i.eg, splat (float 1.000000e+00)
  %i.ei = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dr)
  %i.ej = shl <4 x i32> %i.ei, splat (i32 23)
  %i.ek = add <4 x i32> %i.ej, splat (i32 1065353216)
  %i.el = bitcast <4 x i32> %i.ek to <4 x float>
  %i.em = fmul fast <4 x float> %i.eh, %i.el
  %i.en = fadd fast <4 x float> %i.em, %i.dh
  %i.eo = fmul fast <4 x float> %i.en, splat (float 5.000000e-01)
  %i.ep = bitcast <4 x float> %i.eo to <8 x i16>
  %i.eq = shufflevector <8 x i16> %i.ep, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.er = bitcast <8 x i16> %i.eq to <4 x float>
  %i.es = shufflevector <4 x float> %i.er, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.et = bitcast <4 x float> %i.es to <2 x i64>
  %i.eu = extractelement <2 x i64> %i.et, i64 0
  store i64 %i.eu, ptr %.02585, align 1, !tbaa !57
  %i.ev = getelementptr inbounds nuw i8, ptr %.02585, i64 8 ; 2 uses
  %i.ew = add nuw nsw i32 %.086, 4                ; 3 uses
  %i.ex = or disjoint i32 %i.ew, 3
  %i.ey = load i32, ptr %4, align 4, !tbaa !40    ; 2 uses
  %i.ez = icmp slt i32 %i.ex, %i.ey
  br i1 %i.ez, label %.lr.ph, label %.preheader, !llvm.loop !422

.lr.ph91:                                         ; preds = %.lr.ph91.preheader120, %.lr.ph91
  %.190 = phi i32 [ %i.fj, %.lr.ph91 ], [ %.190.ph, %.lr.ph91.preheader120 ]
  %.12689 = phi ptr [ %i.fi, %.lr.ph91 ], [ %.12689.ph, %.lr.ph91.preheader120 ] ; 3 uses
  %i.fa = load i16, ptr %.12689, align 2, !tbaa !251
  %i.fb = zext i16 %i.fa to i32
  %i.fc = shl nuw i32 %i.fb, 16
  %i.fd = bitcast i32 %i.fc to float
  %i.fe = call fast noundef nofpclass(nan inf) float @llvm.cosh.f32(float %i.fd)
  %i.ff = bitcast float %i.fe to i32
  %i.fg = lshr i32 %i.ff, 16
  %i.fh = trunc nuw nsw i32 %i.fg to i16
  store i16 %i.fh, ptr %.12689, align 2, !tbaa !251
  %i.fi = getelementptr inbounds nuw i8, ptr %.12689, i64 2
  %i.fj = add nuw nsw i32 %.190, 1                ; 2 uses
  %exitcond101.not = icmp eq i32 %i.fj, %i.bg
  br i1 %exitcond101.not, label %._crit_edge, label %.lr.ph91, !llvm.loop !423

._crit_edge:                                      ; preds = %.lr.ph91, %middle.block, %.preheader
  %indvars.iv.next103 = add nsw i64 %indvars.iv102, 1 ; 2 uses
  %lftr.wideiv105 = trunc i64 %indvars.iv.next103 to i32
  %exitcond106.not = icmp eq i32 %i.q, %lftr.wideiv105
  br i1 %exitcond106.not, label %._crit_edge94, label %.noexc, !llvm.loop !424

._crit_edge94:                                    ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge94, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor14unary_op_acoshEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !40     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !40
  %i.h = load i32, ptr %0, align 4, !tbaa !40     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !40
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !40
  %i.k = load i32, ptr %i.a, align 4, !tbaa !40   ; 3 uses
  %.not121 = icmp sgt i32 %i.k, %i.j
  br i1 %.not121, label %._crit_edge123, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !40     ; 4 uses
  %i.o = icmp sgt i32 %i.n, 3
  br i1 %i.o, label %.noexc.preheader, label %.noexc.lr.ph.split.us

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  br label %.noexc

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.r = load ptr, ptr %3, align 8, !tbaa !46, !noalias !425
  %i.s = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !425
  %i.t = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !425
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.noexc.us.preheader, label %._crit_edge123

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.us
  %i.v = sext i32 %i.k to i64
  %i.w = add nsw i32 %i.j, 1
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.v, %.noexc.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass
  br label %bb.c

bb.c:                                             ; preds = %.noexc.us, %bb.c
  %.1119.us = phi i32 [ 0, %.noexc.us ], [ %i.ah, %bb.c ]
  %.126118.us = phi ptr [ %i.x, %.noexc.us ], [ %i.ag, %bb.c ] ; 3 uses
  %i.y = load i16, ptr %.126118.us, align 2, !tbaa !251
  %i.z = zext i16 %i.y to i32
  %i.aa = shl nuw i32 %i.z, 16
  %i.ab = bitcast i32 %i.aa to float
  %i.ac = call fast noundef nofpclass(nan inf) float @acoshf(float noundef nofpclass(nan inf) %i.ab) #20
  %i.ad = bitcast float %i.ac to i32
  %i.ae = lshr i32 %i.ad, 16
  %i.af = trunc nuw i32 %i.ae to i16
  store i16 %i.af, ptr %.126118.us, align 2, !tbaa !251
  %i.ag = getelementptr inbounds nuw i8, ptr %.126118.us, i64 2
  %i.ah = add nuw nsw i32 %.1119.us, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ah, %i.n
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !428

._crit_edge.us:                                   ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond129.not.a = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond129.not.a, label %._crit_edge123, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ai = phi i32 [ %i.n, %.noexc.preheader ], [ %i.aq, %._crit_edge ] ; 2 uses
  %indvars.iv131 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next132, %._crit_edge ] ; 2 uses
  %i.aj = load ptr, ptr %3, align 8, !tbaa !46, !noalias !425
  %i.ak = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !425
  %i.al = mul i64 %i.ak, %indvars.iv131
  %i.am = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !425
  %i.an = mul i64 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.an ; 2 uses
  %i.ap = icmp sgt i32 %i.ai, 3
  br i1 %i.ap, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.aq = phi i32 [ %i.ai, %.noexc ], [ %i.eg, %.lr.ph ] ; 3 uses
  %.025.lcssa = phi ptr [ %i.ao, %.noexc ], [ %i.ed, %.lr.ph ]
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.ee, %.lr.ph ] ; 2 uses
  %i.ar = icmp slt i32 %.0.lcssa, %i.aq
  br i1 %i.ar, label %.lr.ph120, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0115 = phi i32 [ %i.ee, %.lr.ph ], [ 0, %.noexc ]
  %.025114 = phi ptr [ %i.ed, %.lr.ph ], [ %i.ao, %.noexc ] ; 3 uses
  %i.as = load i64, ptr %.025114, align 1, !tbaa !57
  %i.at = insertelement <2 x i64> poison, i64 %i.as, i64 0
  %i.au = bitcast <2 x i64> %i.at to <8 x i16>
  %i.av = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.au, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aw = bitcast <8 x i16> %i.av to <4 x float>  ; 5 uses
  %i.ax = fadd fast <4 x float> %i.aw, splat (float -1.000000e+00)
  %i.ay = fadd fast <4 x float> %i.aw, splat (float 1.000000e+00)
  %i.az = fmul fast <4 x float> %i.ax, %i.ay
  %i.ba = call fast <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.az)
  %i.bb = fadd fast <4 x float> %i.ba, %i.aw      ; 2 uses
  %i.bc = fcmp fast ole <4 x float> %i.bb, zeroinitializer
  %i.bd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bb, <4 x float> splat (float f0x00800000))
  %i.be = bitcast <4 x float> %i.bd to <4 x i32>  ; 2 uses
  %i.bf = lshr <4 x i32> %i.be, splat (i32 23)
  %i.bg = and <4 x i32> %i.be, splat (i32 -2139095041)
  %i.bh = or disjoint <4 x i32> %i.bg, splat (i32 1056964608)
  %i.bi = bitcast <4 x i32> %i.bh to <4 x float>  ; 3 uses
  %i.bj = add nsw <4 x i32> %i.bf, splat (i32 -127)
  %i.bk = sitofp fast <4 x i32> %i.bj to <4 x float> ; 2 uses
  %i.bl = fadd fast <4 x float> %i.bk, splat (float 1.000000e+00)
  %i.bm = fcmp fast olt <4 x float> %i.bi, splat (float f0x3F3504F3) ; 2 uses
  %i.bn = select <4 x i1> %i.bm, <4 x float> %i.bi, <4 x float> zeroinitializer
  %i.bo = fadd fast <4 x float> %i.bi, splat (float -1.000000e+00)
  %i.bp = select fast <4 x i1> %i.bm, <4 x float> %i.bk, <4 x float> %i.bl
  %i.bq = fadd fast <4 x float> %i.bo, %i.bn      ; 12 uses
  %i.br = fmul fast <4 x float> %i.bq, %i.bq      ; 2 uses
  %i.bs = fmul fast <4 x float> %i.bq, splat (float f0x3D9021BB)
  %i.bt = fadd fast <4 x float> %i.bs, splat (float f0xBDEBD1B8)
  %i.bu = fmul fast <4 x float> %i.bt, %i.bq
  %i.bv = fadd fast <4 x float> %i.bu, splat (float f0x3DEF251A)
  %i.bw = fmul fast <4 x float> %i.bv, %i.bq
  %i.bx = fadd fast <4 x float> %i.bw, splat (float f0xBDFE5D4F)
  %i.by = fmul fast <4 x float> %i.bx, %i.bq
  %i.bz = fadd fast <4 x float> %i.by, splat (float f0x3E11E9BF)
  %i.ca = fmul fast <4 x float> %i.bz, %i.bq
  %i.cb = fadd fast <4 x float> %i.ca, splat (float f0xBE2AAE50)
  %i.cc = fmul fast <4 x float> %i.cb, %i.bq
  %i.cd = fadd fast <4 x float> %i.cc, splat (float f0x3E4CCEAC)
  %i.ce = fmul fast <4 x float> %i.cd, %i.bq
  %i.cf = fadd fast <4 x float> %i.ce, splat (float f0xBE7FFFFC)
  %i.cg = fmul fast <4 x float> %i.cf, %i.bq
  %i.ch = fadd fast <4 x float> %i.cg, splat (float f0x3EAAAAAA)
  %i.ci = fmul fast <4 x float> %i.br, %i.bq
  %reass.mul.a = fmul fast <4 x float> %i.ci, %i.ch
  %.neg = fmul fast <4 x float> %i.br, splat (float -5.000000e-01)
  %reass.mul111 = fmul fast <4 x float> %i.bp, splat (float f0x3F317218)
  %6 = fadd fast <4 x float> %i.bq, %.neg
  %i.cj = fadd fast <4 x float> %reass.mul.a, %6
  %i.ck = fadd fast <4 x float> %i.cj, %reass.mul111
  %i.cl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aw, <4 x float> splat (float f0x00800000))
  %i.cm = bitcast <4 x float> %i.cl to <4 x i32>  ; 2 uses
  %i.cn = lshr <4 x i32> %i.cm, splat (i32 23)
  %i.co = and <4 x i32> %i.cm, splat (i32 -2139095041)
  %i.cp = or disjoint <4 x i32> %i.co, splat (i32 1056964608)
  %i.cq = bitcast <4 x i32> %i.cp to <4 x float>  ; 3 uses
  %i.cr = add nsw <4 x i32> %i.cn, splat (i32 -127)
  %i.cs = sitofp fast <4 x i32> %i.cr to <4 x float> ; 2 uses
  %i.ct = fadd fast <4 x float> %i.cs, splat (float 1.000000e+00)
  %i.cu = fcmp fast olt <4 x float> %i.cq, splat (float f0x3F3504F3) ; 2 uses
  %i.cv = select <4 x i1> %i.cu, <4 x float> %i.cq, <4 x float> zeroinitializer
  %i.cw = fadd fast <4 x float> %i.cq, splat (float -1.000000e+00)
  %i.cx = select fast <4 x i1> %i.cu, <4 x float> %i.cs, <4 x float> %i.ct ; 2 uses
  %i.cy = fadd fast <4 x float> %i.cw, %i.cv      ; 12 uses
  %i.cz = fmul fast <4 x float> %i.cy, %i.cy      ; 2 uses
  %i.da = fmul fast <4 x float> %i.cy, splat (float f0x3D9021BB)
  %i.db = fadd fast <4 x float> %i.da, splat (float f0xBDEBD1B8)
  %i.dc = fmul fast <4 x float> %i.db, %i.cy
  %i.dd = fadd fast <4 x float> %i.dc, splat (float f0x3DEF251A)
  %i.de = fmul fast <4 x float> %i.dd, %i.cy
  %i.df = fadd fast <4 x float> %i.de, splat (float f0xBDFE5D4F)
  %i.dg = fmul fast <4 x float> %i.df, %i.cy
  %i.dh = fadd fast <4 x float> %i.dg, splat (float f0x3E11E9BF)
  %i.di = fmul fast <4 x float> %i.dh, %i.cy
  %i.dj = fadd fast <4 x float> %i.di, splat (float f0xBE2AAE50)
  %i.dk = fmul fast <4 x float> %i.dj, %i.cy
  %i.dl = fadd fast <4 x float> %i.dk, splat (float f0x3E4CCEAC)
  %i.dm = fmul fast <4 x float> %i.dl, %i.cy
  %i.dn = fadd fast <4 x float> %i.dm, splat (float f0xBE7FFFFC)
  %i.do = fmul fast <4 x float> %i.dn, %i.cy
  %i.dp = fadd fast <4 x float> %i.do, splat (float f0x3EAAAAAA)
  %7 = fmul fast <4 x float> %i.cz, %i.cy
  %i.dq = fmul fast <4 x float> %7, %i.dp
  %reass.mul109 = fmul fast <4 x float> %i.cx, splat (float f0xB95E8083)
  %reass.add112 = fadd fast <4 x float> %reass.mul109, %i.dq
  %reass.mul113 = fmul fast <4 x float> %i.cz, splat (float -5.000000e-01)
  %8 = fadd fast <4 x float> %reass.mul113, %reass.add112
  %i.dr = fadd fast <4 x float> %i.cy, %8
  %9 = fmul fast <4 x float> %i.cx, splat (float f0x3F318000)
  %i.ds = fadd fast <4 x float> %9, %i.dr
  %i.dt = fadd fast <4 x float> %i.ds, splat (float f0x3F317218)
  %i.du = fcmp fast ule <4 x float> %i.aw, splat (float f0x5F0AC723)
  %i.dv = select <4 x i1> %i.bc, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.ck
  %i.dw = select <4 x i1> %i.du, <4 x float> %i.dv, <4 x float> %i.dt
  %i.dx = bitcast <4 x float> %i.dw to <8 x i16>
  %i.dy = shufflevector <8 x i16> %i.dx, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.dz = bitcast <8 x i16> %i.dy to <4 x float>
  %i.ea = shufflevector <4 x float> %i.dz, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.eb = bitcast <4 x float> %i.ea to <2 x i64>
  %i.ec = extractelement <2 x i64> %i.eb, i64 0
  store i64 %i.ec, ptr %.025114, align 1, !tbaa !57
  %i.ed = getelementptr inbounds nuw i8, ptr %.025114, i64 8 ; 2 uses
  %i.ee = add nuw nsw i32 %.0115, 4               ; 3 uses
  %i.ef = or disjoint i32 %i.ee, 3
  %i.eg = load i32, ptr %4, align 4, !tbaa !40    ; 2 uses
  %i.eh = icmp slt i32 %i.ef, %i.eg
  br i1 %i.eh, label %.lr.ph, label %.preheader, !llvm.loop !429

.lr.ph120:                                        ; preds = %.preheader, %.lr.ph120
  %.1119 = phi i32 [ %i.er, %.lr.ph120 ], [ %.0.lcssa, %.preheader ]
  %.126118 = phi ptr [ %i.eq, %.lr.ph120 ], [ %.025.lcssa, %.preheader ] ; 3 uses
  %i.ei = load i16, ptr %.126118, align 2, !tbaa !251
  %i.ej = zext i16 %i.ei to i32
  %i.ek = shl nuw i32 %i.ej, 16
  %i.el = bitcast i32 %i.ek to float
  %i.em = call fast noundef nofpclass(nan inf) float @acoshf(float noundef nofpclass(nan inf) %i.el) #20
  %i.en = bitcast float %i.em to i32
  %i.eo = lshr i32 %i.en, 16
  %i.ep = trunc nuw i32 %i.eo to i16
  store i16 %i.ep, ptr %.126118, align 2, !tbaa !251
  %i.eq = getelementptr inbounds nuw i8, ptr %.126118, i64 2
  %i.er = add nuw nsw i32 %.1119, 1               ; 2 uses
  %exitcond130.not = icmp eq i32 %i.er, %i.aq
  br i1 %exitcond130.not, label %._crit_edge, label %.lr.ph120, !llvm.loop !428

._crit_edge:                                      ; preds = %.lr.ph120, %.preheader
  %indvars.iv.next132 = add nsw i64 %indvars.iv131, 1 ; 2 uses
  %lftr.wideiv134 = trunc i64 %indvars.iv.next132 to i32
  %exitcond135.not = icmp eq i32 %i.q, %lftr.wideiv134
  br i1 %exitcond135.not, label %._crit_edge123, label %.noexc, !llvm.loop !430

._crit_edge123:                                   ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge123, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor14unary_op_atanhEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !40     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !40
  %i.h = load i32, ptr %0, align 4, !tbaa !40     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !40
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !40
  %i.k = load i32, ptr %i.a, align 4, !tbaa !40   ; 3 uses
  %.not131 = icmp sgt i32 %i.k, %i.j
  br i1 %.not131, label %._crit_edge133, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !40     ; 4 uses
  %i.o = icmp sgt i32 %i.n, 3
  br i1 %i.o, label %.noexc.preheader, label %.noexc.lr.ph.split.us

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  br label %.noexc

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.r = load ptr, ptr %3, align 8, !tbaa !46, !noalias !431
  %i.s = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !431
  %i.t = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !431
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.noexc.us.preheader, label %._crit_edge133

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.us
  %i.v = sext i32 %i.k to i64
  %i.w = add nsw i32 %i.j, 1
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.v, %.noexc.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass
  br label %bb.c

bb.c:                                             ; preds = %.noexc.us, %bb.c
  %.1129.us = phi i32 [ 0, %.noexc.us ], [ %i.ah, %bb.c ]
  %.126128.us = phi ptr [ %i.x, %.noexc.us ], [ %i.ag, %bb.c ] ; 3 uses
  %i.y = load i16, ptr %.126128.us, align 2, !tbaa !251
  %i.z = zext i16 %i.y to i32
  %i.aa = shl nuw i32 %i.z, 16
  %i.ab = bitcast i32 %i.aa to float
  %i.ac = call fast noundef nofpclass(nan inf) float @atanhf(float noundef nofpclass(nan inf) %i.ab) #20
  %i.ad = bitcast float %i.ac to i32
  %i.ae = lshr i32 %i.ad, 16
  %i.af = trunc nuw i32 %i.ae to i16
  store i16 %i.af, ptr %.126128.us, align 2, !tbaa !251
  %i.ag = getelementptr inbounds nuw i8, ptr %.126128.us, i64 2
  %i.ah = add nuw nsw i32 %.1129.us, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ah, %i.n
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !434

._crit_edge.us:                                   ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond139.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond139.not, label %._crit_edge133, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ai = phi i32 [ %i.n, %.noexc.preheader ], [ %i.aq, %._crit_edge ] ; 2 uses
  %indvars.iv141 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next142, %._crit_edge ] ; 2 uses
  %i.aj = load ptr, ptr %3, align 8, !tbaa !46, !noalias !431
  %i.ak = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !431
  %i.al = mul i64 %i.ak, %indvars.iv141
  %i.am = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !431
  %i.an = mul i64 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.an ; 2 uses
  %i.ap = icmp sgt i32 %i.ai, 3
  br i1 %i.ap, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.aq = phi i32 [ %i.ai, %.noexc ], [ %i.eq, %.lr.ph ] ; 3 uses
  %.025.lcssa = phi ptr [ %i.ao, %.noexc ], [ %i.en, %.lr.ph ]
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.eo, %.lr.ph ] ; 2 uses
  %i.ar = icmp slt i32 %.0.lcssa, %i.aq
  br i1 %i.ar, label %.lr.ph130, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0125 = phi i32 [ %i.eo, %.lr.ph ], [ 0, %.noexc ]
  %.025124 = phi ptr [ %i.en, %.lr.ph ], [ %i.ao, %.noexc ] ; 3 uses
  %i.as = load i64, ptr %.025124, align 1, !tbaa !57
  %i.at = insertelement <2 x i64> poison, i64 %i.as, i64 0
  %i.au = bitcast <2 x i64> %i.at to <8 x i16>
  %i.av = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.au, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.aw = bitcast <8 x i16> %i.av to <4 x float>  ; 8 uses
  %i.ax = fmul fast <4 x float> %i.aw, %i.aw      ; 2 uses
  %i.ay = fmul fast <4 x float> %i.aw, splat (float f0x3EAAAAAB) ; 2 uses
  %i.az = fadd fast <4 x float> %i.ay, splat (float -5.000000e-01)
  %i.ba = fmul fast <4 x float> %i.ax, %i.az
  %i.bb = fadd fast <4 x float> %i.ba, %i.aw
  %i.bc = fadd fast <4 x float> %i.aw, splat (float 1.000000e+00)
  %i.bd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bc, <4 x float> splat (float f0x00800000))
  %i.be = bitcast <4 x float> %i.bd to <4 x i32>  ; 2 uses
  %i.bf = lshr <4 x i32> %i.be, splat (i32 23)
  %i.bg = and <4 x i32> %i.be, splat (i32 -2139095041)
  %i.bh = or disjoint <4 x i32> %i.bg, splat (i32 1056964608)
  %i.bi = bitcast <4 x i32> %i.bh to <4 x float>  ; 3 uses
  %i.bj = add nsw <4 x i32> %i.bf, splat (i32 -127)
  %i.bk = sitofp fast <4 x i32> %i.bj to <4 x float> ; 2 uses
  %i.bl = fadd fast <4 x float> %i.bk, splat (float 1.000000e+00)
  %i.bm = fcmp fast olt <4 x float> %i.bi, splat (float f0x3F3504F3) ; 2 uses
  %i.bn = select <4 x i1> %i.bm, <4 x float> %i.bi, <4 x float> zeroinitializer
  %i.bo = fadd fast <4 x float> %i.bi, splat (float -1.000000e+00)
  %i.bp = select fast <4 x i1> %i.bm, <4 x float> %i.bk, <4 x float> %i.bl
  %i.bq = fadd fast <4 x float> %i.bo, %i.bn      ; 12 uses
  %i.br = fmul fast <4 x float> %i.bq, %i.bq      ; 2 uses
  %i.bs = fmul fast <4 x float> %i.bq, splat (float f0x3D9021BB)
  %i.bt = fadd fast <4 x float> %i.bs, splat (float f0xBDEBD1B8)
  %i.bu = fmul fast <4 x float> %i.bt, %i.bq
  %i.bv = fadd fast <4 x float> %i.bu, splat (float f0x3DEF251A)
  %i.bw = fmul fast <4 x float> %i.bv, %i.bq
  %i.bx = fadd fast <4 x float> %i.bw, splat (float f0xBDFE5D4F)
  %i.by = fmul fast <4 x float> %i.bx, %i.bq
  %i.bz = fadd fast <4 x float> %i.by, splat (float f0x3E11E9BF)
  %i.ca = fmul fast <4 x float> %i.bz, %i.bq
  %i.cb = fadd fast <4 x float> %i.ca, splat (float f0xBE2AAE50)
  %i.cc = fmul fast <4 x float> %i.cb, %i.bq
  %i.cd = fadd fast <4 x float> %i.cc, splat (float f0x3E4CCEAC)
  %i.ce = fmul fast <4 x float> %i.cd, %i.bq
  %i.cf = fadd fast <4 x float> %i.ce, splat (float f0xBE7FFFFC)
  %i.cg = fmul fast <4 x float> %i.cf, %i.bq
  %i.ch = fadd fast <4 x float> %i.cg, splat (float f0x3EAAAAAA)
  %i.ci = fmul fast <4 x float> %i.br, %i.bq
  %reass.mul.a = fmul fast <4 x float> %i.ci, %i.ch
  %.neg = fmul fast <4 x float> %i.br, splat (float -5.000000e-01)
  %reass.mul121 = fmul fast <4 x float> %i.bp, splat (float f0x3F317218)
  %6 = fadd fast <4 x float> %i.bq, %.neg
  %i.cj = fadd fast <4 x float> %reass.mul.a, %6
  %i.ck = fadd fast <4 x float> %i.cj, %reass.mul121
  %i.cl = bitcast <8 x i16> %i.av to <4 x i32>
  %i.cm = and <4 x i32> %i.cl, splat (i32 2147418112)
  %i.cn = bitcast <4 x i32> %i.cm to <4 x float>
  %i.co = fcmp fast uge <4 x float> %i.cn, splat (float f0x38D1B717)
  %i.cp = select <4 x i1> %i.co, <4 x float> %i.ck, <4 x float> %i.bb
  %i.cq = fsub fast <4 x float> splat (float -5.000000e-01), %i.ay
  %i.cr = fmul fast <4 x float> %i.ax, %i.cq
  %i.cs = fsub fast <4 x float> %i.cr, %i.aw
  %i.ct = fsub fast <4 x float> splat (float 1.000000e+00), %i.aw
  %i.cu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ct, <4 x float> splat (float f0x00800000))
  %i.cv = bitcast <4 x float> %i.cu to <4 x i32>  ; 2 uses
  %i.cw = lshr <4 x i32> %i.cv, splat (i32 23)
  %i.cx = and <4 x i32> %i.cv, splat (i32 -2139095041)
  %i.cy = or disjoint <4 x i32> %i.cx, splat (i32 1056964608)
  %i.cz = bitcast <4 x i32> %i.cy to <4 x float>  ; 3 uses
  %i.da = add nsw <4 x i32> %i.cw, splat (i32 -127)
  %i.db = sitofp fast <4 x i32> %i.da to <4 x float> ; 2 uses
  %i.dc = fadd fast <4 x float> %i.db, splat (float 1.000000e+00)
  %i.dd = fcmp fast olt <4 x float> %i.cz, splat (float f0x3F3504F3) ; 2 uses
  %i.de = select <4 x i1> %i.dd, <4 x float> %i.cz, <4 x float> zeroinitializer
  %i.df = fadd fast <4 x float> %i.cz, splat (float -1.000000e+00)
  %i.dg = select fast <4 x i1> %i.dd, <4 x float> %i.db, <4 x float> %i.dc
  %i.dh = fadd fast <4 x float> %i.df, %i.de      ; 12 uses
  %i.di = fmul fast <4 x float> %i.dh, %i.dh      ; 2 uses
  %i.dj = fmul fast <4 x float> %i.dh, splat (float f0x3D9021BB)
  %i.dk = fadd fast <4 x float> %i.dj, splat (float f0xBDEBD1B8)
  %i.dl = fmul fast <4 x float> %i.dk, %i.dh
  %i.dm = fadd fast <4 x float> %i.dl, splat (float f0x3DEF251A)
  %i.dn = fmul fast <4 x float> %i.dm, %i.dh
  %i.do = fadd fast <4 x float> %i.dn, splat (float f0xBDFE5D4F)
  %i.dp = fmul fast <4 x float> %i.do, %i.dh
  %i.dq = fadd fast <4 x float> %i.dp, splat (float f0x3E11E9BF)
  %i.dr = fmul fast <4 x float> %i.dq, %i.dh
  %i.ds = fadd fast <4 x float> %i.dr, splat (float f0xBE2AAE50)
  %i.dt = fmul fast <4 x float> %i.ds, %i.dh
  %i.du = fadd fast <4 x float> %i.dt, splat (float f0x3E4CCEAC)
  %i.dv = fmul fast <4 x float> %i.du, %i.dh
  %i.dw = fadd fast <4 x float> %i.dv, splat (float f0xBE7FFFFC)
  %i.dx = fmul fast <4 x float> %i.dw, %i.dh
  %i.dy = fadd fast <4 x float> %i.dx, splat (float f0x3EAAAAAA)
  %i.dz = fmul fast <4 x float> %i.di, %i.dh
  %reass.mul119.a = fmul fast <4 x float> %i.dz, %i.dy
  %.neg117 = fmul fast <4 x float> %i.di, splat (float -5.000000e-01)
  %reass.mul123 = fmul fast <4 x float> %i.dg, splat (float f0x3F317218)
  %7 = fadd fast <4 x float> %i.dh, %.neg117
  %i.ea = fadd fast <4 x float> %reass.mul119.a, %7
  %i.eb = fadd fast <4 x float> %i.ea, %reass.mul123
  %i.ec = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.aw)
  %i.ed = fcmp fast uge <4 x float> %i.ec, splat (float f0x38D1B717)
  %i.ee = select <4 x i1> %i.ed, <4 x float> %i.eb, <4 x float> %i.cs
  %i.ef = fsub fast <4 x float> %i.cp, %i.ee
  %i.eg = fmul fast <4 x float> %i.ef, splat (float 5.000000e-01)
  %i.eh = bitcast <4 x float> %i.eg to <8 x i16>
  %i.ei = shufflevector <8 x i16> %i.eh, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.ej = bitcast <8 x i16> %i.ei to <4 x float>
  %i.ek = shufflevector <4 x float> %i.ej, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.el = bitcast <4 x float> %i.ek to <2 x i64>
  %i.em = extractelement <2 x i64> %i.el, i64 0
  store i64 %i.em, ptr %.025124, align 1, !tbaa !57
  %i.en = getelementptr inbounds nuw i8, ptr %.025124, i64 8 ; 2 uses
  %i.eo = add nuw nsw i32 %.0125, 4               ; 3 uses
  %i.ep = or disjoint i32 %i.eo, 3
  %i.eq = load i32, ptr %4, align 4, !tbaa !40    ; 2 uses
  %i.er = icmp slt i32 %i.ep, %i.eq
  br i1 %i.er, label %.lr.ph, label %.preheader, !llvm.loop !435

.lr.ph130:                                        ; preds = %.preheader, %.lr.ph130
  %.1129 = phi i32 [ %i.fb, %.lr.ph130 ], [ %.0.lcssa, %.preheader ]
  %.126128 = phi ptr [ %i.fa, %.lr.ph130 ], [ %.025.lcssa, %.preheader ] ; 3 uses
  %i.es = load i16, ptr %.126128, align 2, !tbaa !251
  %i.et = zext i16 %i.es to i32
  %i.eu = shl nuw i32 %i.et, 16
  %i.ev = bitcast i32 %i.eu to float
  %i.ew = call fast noundef nofpclass(nan inf) float @atanhf(float noundef nofpclass(nan inf) %i.ev) #20
  %i.ex = bitcast float %i.ew to i32
  %i.ey = lshr i32 %i.ex, 16
  %i.ez = trunc nuw i32 %i.ey to i16
  store i16 %i.ez, ptr %.126128, align 2, !tbaa !251
  %i.fa = getelementptr inbounds nuw i8, ptr %.126128, i64 2
  %i.fb = add nuw nsw i32 %.1129, 1               ; 2 uses
  %exitcond140.not = icmp eq i32 %i.fb, %i.aq
  br i1 %exitcond140.not, label %._crit_edge, label %.lr.ph130, !llvm.loop !434

._crit_edge:                                      ; preds = %.lr.ph130, %.preheader
  %indvars.iv.next142 = add nsw i64 %indvars.iv141, 1 ; 2 uses
  %lftr.wideiv144 = trunc i64 %indvars.iv.next142 to i32
  %exitcond145.not = icmp eq i32 %i.q, %lftr.wideiv144
  br i1 %exitcond145.not, label %._crit_edge133, label %.noexc, !llvm.loop !436

._crit_edge133:                                   ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge133, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor14unary_op_log1pEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !40     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !40
  %i.h = load i32, ptr %0, align 4, !tbaa !40     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !40
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !40
  %i.k = load i32, ptr %i.a, align 4, !tbaa !40   ; 3 uses
  %.not84 = icmp sgt i32 %i.k, %i.j
  br i1 %.not84, label %._crit_edge86, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !40     ; 4 uses
  %i.o = icmp sgt i32 %i.n, 3
  br i1 %i.o, label %.noexc.preheader, label %.noexc.lr.ph.split.us

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  br label %.noexc

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.r = load ptr, ptr %3, align 8, !tbaa !46, !noalias !437
  %i.s = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !437
  %i.t = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !437
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.noexc.us.preheader, label %._crit_edge86

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.us
  %i.v = sext i32 %i.k to i64
  %i.w = add nsw i32 %i.j, 1
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.v, %.noexc.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass
  br label %bb.c

bb.c:                                             ; preds = %.noexc.us, %bb.c
  %.182.us = phi i32 [ 0, %.noexc.us ], [ %i.ah, %bb.c ]
  %.12681.us = phi ptr [ %i.x, %.noexc.us ], [ %i.ag, %bb.c ] ; 3 uses
  %i.y = load i16, ptr %.12681.us, align 2, !tbaa !251
  %i.z = zext i16 %i.y to i32
  %i.aa = shl nuw i32 %i.z, 16
  %i.ab = bitcast i32 %i.aa to float
  %i.ac = call fast noundef nofpclass(nan inf) float @log1pf(float noundef nofpclass(nan inf) %i.ab) #20
  %i.ad = bitcast float %i.ac to i32
  %i.ae = lshr i32 %i.ad, 16
  %i.af = trunc nuw i32 %i.ae to i16
  store i16 %i.af, ptr %.12681.us, align 2, !tbaa !251
  %i.ag = getelementptr inbounds nuw i8, ptr %.12681.us, i64 2
  %i.ah = add nuw nsw i32 %.182.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ah, %i.n
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !440

._crit_edge.us:                                   ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond92.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond92.not, label %._crit_edge86, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ai = phi i32 [ %i.n, %.noexc.preheader ], [ %i.aq, %._crit_edge ] ; 2 uses
  %indvars.iv94 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next95, %._crit_edge ] ; 2 uses
  %i.aj = load ptr, ptr %3, align 8, !tbaa !46, !noalias !437
  %i.ak = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !437
  %i.al = mul i64 %i.ak, %indvars.iv94
  %i.am = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !437
  %i.an = mul i64 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.an ; 2 uses
  %i.ap = icmp sgt i32 %i.ai, 3
  br i1 %i.ap, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.aq = phi i32 [ %i.ai, %.noexc ], [ %i.db, %.lr.ph ] ; 3 uses
  %.025.lcssa = phi ptr [ %i.ao, %.noexc ], [ %i.cy, %.lr.ph ]
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.cz, %.lr.ph ] ; 2 uses
  %i.ar = icmp slt i32 %.0.lcssa, %i.aq
  br i1 %i.ar, label %.lr.ph83, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.078 = phi i32 [ %i.cz, %.lr.ph ], [ 0, %.noexc ]
  %.02577 = phi ptr [ %i.cy, %.lr.ph ], [ %i.ao, %.noexc ] ; 3 uses
  %i.as = load i64, ptr %.02577, align 1, !tbaa !57
  %i.at = insertelement <2 x i64> poison, i64 %i.as, i64 0
  %i.au = bitcast <2 x i64> %i.at to <8 x i16>
  %i.av = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.au, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.aw = bitcast <8 x i16> %i.av to <4 x float>  ; 5 uses
  %i.ax = fmul fast <4 x float> %i.aw, %i.aw
  %i.ay = fmul fast <4 x float> %i.aw, splat (float f0x3EAAAAAB)
  %i.az = fadd fast <4 x float> %i.ay, splat (float -5.000000e-01)
  %i.ba = fmul fast <4 x float> %i.ax, %i.az
  %i.bb = fadd fast <4 x float> %i.ba, %i.aw
  %i.bc = fadd fast <4 x float> %i.aw, splat (float 1.000000e+00) ; 2 uses
  %i.bd = fcmp fast ole <4 x float> %i.bc, zeroinitializer
  %i.be = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bc, <4 x float> splat (float f0x00800000))
  %i.bf = bitcast <4 x float> %i.be to <4 x i32>  ; 2 uses
  %i.bg = lshr <4 x i32> %i.bf, splat (i32 23)
  %i.bh = and <4 x i32> %i.bf, splat (i32 -2139095041)
  %i.bi = or disjoint <4 x i32> %i.bh, splat (i32 1056964608)
  %i.bj = bitcast <4 x i32> %i.bi to <4 x float>  ; 3 uses
  %i.bk = add nsw <4 x i32> %i.bg, splat (i32 -127)
  %i.bl = sitofp fast <4 x i32> %i.bk to <4 x float> ; 2 uses
  %i.bm = fadd fast <4 x float> %i.bl, splat (float 1.000000e+00)
  %i.bn = fcmp fast olt <4 x float> %i.bj, splat (float f0x3F3504F3) ; 2 uses
  %i.bo = select <4 x i1> %i.bn, <4 x float> %i.bj, <4 x float> zeroinitializer
  %i.bp = fadd fast <4 x float> %i.bj, splat (float -1.000000e+00)
  %i.bq = select fast <4 x i1> %i.bn, <4 x float> %i.bl, <4 x float> %i.bm
  %i.br = fadd fast <4 x float> %i.bp, %i.bo      ; 12 uses
  %i.bs = fmul fast <4 x float> %i.br, %i.br      ; 2 uses
  %i.bt = fmul fast <4 x float> %i.br, splat (float f0x3D9021BB)
  %i.bu = fadd fast <4 x float> %i.bt, splat (float f0xBDEBD1B8)
  %i.bv = fmul fast <4 x float> %i.bu, %i.br
  %i.bw = fadd fast <4 x float> %i.bv, splat (float f0x3DEF251A)
  %i.bx = fmul fast <4 x float> %i.bw, %i.br
  %i.by = fadd fast <4 x float> %i.bx, splat (float f0xBDFE5D4F)
  %i.bz = fmul fast <4 x float> %i.by, %i.br
  %i.ca = fadd fast <4 x float> %i.bz, splat (float f0x3E11E9BF)
  %i.cb = fmul fast <4 x float> %i.ca, %i.br
  %i.cc = fadd fast <4 x float> %i.cb, splat (float f0xBE2AAE50)
  %i.cd = fmul fast <4 x float> %i.cc, %i.br
  %i.ce = fadd fast <4 x float> %i.cd, splat (float f0x3E4CCEAC)
  %i.cf = fmul fast <4 x float> %i.ce, %i.br
  %i.cg = fadd fast <4 x float> %i.cf, splat (float f0xBE7FFFFC)
  %i.ch = fmul fast <4 x float> %i.cg, %i.br
  %i.ci = fadd fast <4 x float> %i.ch, splat (float f0x3EAAAAAA)
  %i.cj = fmul fast <4 x float> %i.bs, %i.br
  %reass.mul.a = fmul fast <4 x float> %i.cj, %i.ci
  %.neg = fmul fast <4 x float> %i.bs, splat (float -5.000000e-01)
  %reass.mul76 = fmul fast <4 x float> %i.bq, splat (float f0x3F317218)
  %6 = fadd fast <4 x float> %i.br, %.neg
  %i.ck = fadd fast <4 x float> %reass.mul.a, %6
  %i.cl = fadd fast <4 x float> %i.ck, %reass.mul76
  %i.cm = bitcast <8 x i16> %i.av to <4 x i32>
  %i.cn = and <4 x i32> %i.cm, splat (i32 2147418112)
  %i.co = bitcast <4 x i32> %i.cn to <4 x float>
  %i.cp = fcmp fast uge <4 x float> %i.co, splat (float f0x38D1B717)
  %i.cq = select <4 x i1> %i.bd, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.cl
  %i.cr = select <4 x i1> %i.cp, <4 x float> %i.cq, <4 x float> %i.bb
  %i.cs = bitcast <4 x float> %i.cr to <8 x i16>
  %i.ct = shufflevector <8 x i16> %i.cs, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.cu = bitcast <8 x i16> %i.ct to <4 x float>
  %i.cv = shufflevector <4 x float> %i.cu, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.cw = bitcast <4 x float> %i.cv to <2 x i64>
  %i.cx = extractelement <2 x i64> %i.cw, i64 0
  store i64 %i.cx, ptr %.02577, align 1, !tbaa !57
  %i.cy = getelementptr inbounds nuw i8, ptr %.02577, i64 8 ; 2 uses
  %i.cz = add nuw nsw i32 %.078, 4                ; 3 uses
  %i.da = or disjoint i32 %i.cz, 3
  %i.db = load i32, ptr %4, align 4, !tbaa !40    ; 2 uses
  %i.dc = icmp slt i32 %i.da, %i.db
  br i1 %i.dc, label %.lr.ph, label %.preheader, !llvm.loop !441

.lr.ph83:                                         ; preds = %.preheader, %.lr.ph83
  %.182 = phi i32 [ %i.dm, %.lr.ph83 ], [ %.0.lcssa, %.preheader ]
  %.12681 = phi ptr [ %i.dl, %.lr.ph83 ], [ %.025.lcssa, %.preheader ] ; 3 uses
  %i.dd = load i16, ptr %.12681, align 2, !tbaa !251
  %i.de = zext i16 %i.dd to i32
  %i.df = shl nuw i32 %i.de, 16
  %i.dg = bitcast i32 %i.df to float
  %i.dh = call fast noundef nofpclass(nan inf) float @log1pf(float noundef nofpclass(nan inf) %i.dg) #20
  %i.di = bitcast float %i.dh to i32
  %i.dj = lshr i32 %i.di, 16
  %i.dk = trunc nuw i32 %i.dj to i16
  store i16 %i.dk, ptr %.12681, align 2, !tbaa !251
  %i.dl = getelementptr inbounds nuw i8, ptr %.12681, i64 2
  %i.dm = add nuw nsw i32 %.182, 1                ; 2 uses
  %exitcond93.not = icmp eq i32 %i.dm, %i.aq
  br i1 %exitcond93.not, label %._crit_edge, label %.lr.ph83, !llvm.loop !440

._crit_edge:                                      ; preds = %.lr.ph83, %.preheader
  %indvars.iv.next95 = add nsw i64 %indvars.iv94, 1 ; 2 uses
  %lftr.wideiv97 = trunc i64 %indvars.iv.next95 to i32
  %exitcond98.not = icmp eq i32 %i.q, %lftr.wideiv97
  br i1 %exitcond98.not, label %._crit_edge86, label %.noexc, !llvm.loop !442

._crit_edge86:                                    ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge86, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.floor.v4f32(<4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.ceil.v4f32(<4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.log.v4f32(<4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sin.v4f32(<4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.cos.v4f32(<4 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.tan.v4f32(<4 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.asin.v4f32(<4 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.acos.v4f32(<4 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.atan.v4f32(<4 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.tanh.v4f32(<4 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.log10.v4f32(<4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.nearbyint.v4f32(<4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.trunc.v4f32(<4 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sinh.v4f32(<4 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.cosh.v4f32(<4 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.floor.v8f32(<8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.ceil.v8f32(<8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.sqrt.v8f32(<8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.exp.v8f32(<8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.log.v8f32(<8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.sin.v8f32(<8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.cos.v8f32(<8 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.tan.v8f32(<8 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.asin.v8f32(<8 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.acos.v8f32(<8 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.atan.v8f32(<8 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.tanh.v8f32(<8 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.log10.v8f32(<8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.nearbyint.v8f32(<8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.trunc.v8f32(<8 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.sinh.v8f32(<8 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.cosh.v8f32(<8 x float>) #11

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "_ZGVbN4v_expm1f" "_ZGVcN8v_expm1f" "_ZGVdN8v_expm1f" "_ZGVeN16v_expm1f" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "_ZGVbN4v_asinhf" "_ZGVcN8v_asinhf" "_ZGVdN8v_asinhf" "_ZGVeN16v_asinhf" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "_ZGVbN4v_acoshf" "_ZGVcN8v_acoshf" "_ZGVdN8v_acoshf" "_ZGVeN16v_acoshf" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "_ZGVbN4v_atanhf" "_ZGVcN8v_atanhf" "_ZGVdN8v_atanhf" "_ZGVeN16v_atanhf" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "_ZGVbN4v_log1pf" "_ZGVcN8v_log1pf" "_ZGVdN8v_log1pf" "_ZGVeN16v_log1pf" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { builtin nounwind }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
end_hunk_5
