Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/unaryop_x86?download=true
inline.NumInlined: 57
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN4ncnnL16unary_op_inplaceINS_19UnaryOp_x86_functor14unary_op_truncEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  br i1 %exitcond51.not, label %._crit_edge, label %.lr.ph41, !llvm.loop !196

._crit_edge:                                      ; preds = %.lr.ph41, %middle.block, %.preheader
  %indvars.iv.next53 = add nsw i64 %indvars.iv52, 1 ; 2 uses
  %lftr.wideiv55 = trunc i64 %indvars.iv.next53 to i32
  %exitcond56.not = icmp eq i32 %i.q, %lftr.wideiv55
  br i1 %exitcond56.not, label %._crit_edge44, label %.noexc, !llvm.loop !197

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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.trunc.f32(float) #9

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16unary_op_inplaceINS_19UnaryOp_x86_functor13unary_op_signEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.h = load i32, ptr %0, align 4, !tbaa !37     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !37
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 3 uses
  %.not43 = icmp sgt i32 %i.k, %i.j
  br i1 %.not43, label %._crit_edge45, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !37     ; 5 uses
  %i.o = icmp sgt i32 %i.n, 3
  br i1 %i.o, label %.noexc.preheader, label %.noexc.lr.ph.split.us

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  %.pre58 = load ptr, ptr %3, align 8, !tbaa !39, !noalias !205
  %.pre60 = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !205
  %.pre62 = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !205
  br label %.noexc

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.r = load ptr, ptr %3, align 8, !tbaa !39, !noalias !205
  %i.s = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !205
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !205
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.noexc.us.preheader, label %._crit_edge45

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
  %i.y = load float, ptr %i.x, align 4, !tbaa !42 ; 2 uses
  %i.z = fcmp fast ogt float %i.y, 0.000000e+00
  %i.aa = fcmp fast olt float %i.y, 0.000000e+00
  %i.ab = select fast i1 %i.aa, float -1.000000e+00, float 0.000000e+00
  %i.ac = select fast i1 %i.z, float 1.000000e+00, float %i.ab
  store float %i.ac, ptr %i.x, align 4, !tbaa !42
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %.noexc.us
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !42 ; 2 uses
  %i.af = fcmp fast ogt float %i.ae, 0.000000e+00
  %i.ag = fcmp fast olt float %i.ae, 0.000000e+00
  %i.ah = select fast i1 %i.ag, float -1.000000e+00, float 0.000000e+00
  %i.ai = select fast i1 %i.af, float 1.000000e+00, float %i.ah
  store float %i.ai, ptr %i.ad, align 4, !tbaa !42
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !42 ; 2 uses
  %i.al = fcmp fast ogt float %i.ak, 0.000000e+00
  %i.am = fcmp fast olt float %i.ak, 0.000000e+00
  %i.an = select fast i1 %i.am, float -1.000000e+00, float 0.000000e+00
  %i.ao = select fast i1 %i.al, float 1.000000e+00, float %i.an
  store float %i.ao, ptr %i.aj, align 4, !tbaa !42
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.d, %bb.c, %.noexc.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond51.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond51.not, label %._crit_edge45, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ap = phi i32 [ %i.n, %.noexc.preheader ], [ %i.ax, %._crit_edge ] ; 2 uses
  %i.aq = phi i64 [ %.pre62, %.noexc.preheader ], [ %i.ay, %._crit_edge ] ; 2 uses
  %i.ar = phi i64 [ %.pre60, %.noexc.preheader ], [ %i.az, %._crit_edge ] ; 2 uses
  %i.as = phi ptr [ %.pre58, %.noexc.preheader ], [ %i.ba, %._crit_edge ] ; 2 uses
  %indvars.iv53 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next54, %._crit_edge ] ; 2 uses
  %i.at = mul i64 %i.ar, %indvars.iv53
  %i.au = mul i64 %i.at, %i.aq
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.au ; 2 uses
  %i.aw = icmp sgt i32 %i.ap, 3
  br i1 %i.aw, label %.lr.ph, label %.preheader

.preheader.loopexit:                              ; preds = %.lr.ph
  %.pre = load ptr, ptr %3, align 8, !tbaa !39, !noalias !205
  %.pre59 = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !205
  %.pre61 = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !205
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.noexc
  %i.ax = phi i32 [ %i.ap, %.noexc ], [ %i.cc, %.preheader.loopexit ] ; 4 uses
  %i.ay = phi i64 [ %i.aq, %.noexc ], [ %.pre61, %.preheader.loopexit ]
  %i.az = phi i64 [ %i.ar, %.noexc ], [ %.pre59, %.preheader.loopexit ]
  %i.ba = phi ptr [ %i.as, %.noexc ], [ %.pre, %.preheader.loopexit ]
  %.025.lcssa = phi ptr [ %i.av, %.noexc ], [ %i.bz, %.preheader.loopexit ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.ca, %.preheader.loopexit ] ; 4 uses
  %i.bb = icmp slt i32 %.0.lcssa, %i.ax
  br i1 %i.bb, label %.lr.ph42.preheader, label %._crit_edge

.lr.ph42.preheader:                               ; preds = %.preheader
  %i.bc = xor i32 %.0.lcssa, -1
  %i.bd = add i32 %i.ax, %i.bc                    ; 2 uses
  %i.be = zext i32 %i.bd to i64
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bd, 7
  br i1 %min.iters.check, label %.lr.ph42.preheader77, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph42.preheader
  %n.vec = and i64 %i.bf, 8589934584              ; 4 uses
  %i.bg = trunc i64 %n.vec to i32
  %i.bh = add i32 %.0.lcssa, %i.bg
  %i.bi = shl nuw nsw i64 %n.vec, 2
  %i.bj = getelementptr i8, ptr %.025.lcssa, i64 %i.bi
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bk = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.025.lcssa, i64 %i.bk ; 3 uses
  %i.bl = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !42 ; 2 uses
  %wide.load75 = load <4 x float>, ptr %i.bl, align 4, !tbaa !42 ; 2 uses
  %i.bm = fcmp fast ogt <4 x float> %wide.load, zeroinitializer
  %i.bn = fcmp fast ogt <4 x float> %wide.load75, zeroinitializer
  %i.bo = fcmp fast olt <4 x float> %wide.load, zeroinitializer
  %i.bp = fcmp fast olt <4 x float> %wide.load75, zeroinitializer
  %i.bq = select fast <4 x i1> %i.bo, <4 x float> splat (float -1.000000e+00), <4 x float> zeroinitializer
  %i.br = select fast <4 x i1> %i.bp, <4 x float> splat (float -1.000000e+00), <4 x float> zeroinitializer
  %i.bs = select fast <4 x i1> %i.bm, <4 x float> splat (float 1.000000e+00), <4 x float> %i.bq
  %i.bt = select fast <4 x i1> %i.bn, <4 x float> splat (float 1.000000e+00), <4 x float> %i.br
  store <4 x float> %i.bs, ptr %next.gep, align 4, !tbaa !42
  store <4 x float> %i.bt, ptr %i.bl, align 4, !tbaa !42
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !201

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph42.preheader77

.lr.ph42.preheader77:                             ; preds = %.lr.ph42.preheader, %middle.block
  %.141.ph = phi i32 [ %.0.lcssa, %.lr.ph42.preheader ], [ %i.bh, %middle.block ]
  %.12640.ph = phi ptr [ %.025.lcssa, %.lr.ph42.preheader ], [ %i.bj, %middle.block ]
  br label %.lr.ph42

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.037 = phi i32 [ %i.ca, %.lr.ph ], [ 0, %.noexc ]
  %.02536 = phi ptr [ %i.bz, %.lr.ph ], [ %i.av, %.noexc ] ; 3 uses
  %i.bv = load <4 x float>, ptr %.02536, align 16, !tbaa !46 ; 2 uses
  %i.bw = fcmp fast ogt <4 x float> %i.bv, zeroinitializer
  %i.bx = fcmp fast olt <4 x float> %i.bv, zeroinitializer
  %i.by = select fast <4 x i1> %i.bx, <4 x float> splat (float -1.000000e+00), <4 x float> splat (float -0.000000e+00)
  %6 = select fast <4 x i1> %i.bw, <4 x float> splat (float 1.000000e+00), <4 x float> %i.by
  store <4 x float> %6, ptr %.02536, align 16, !tbaa !46
  %i.bz = getelementptr inbounds nuw i8, ptr %.02536, i64 16 ; 2 uses
  %i.ca = add nuw nsw i32 %.037, 4                ; 3 uses
  %i.cb = or disjoint i32 %i.ca, 3
  %i.cc = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.cd = icmp slt i32 %i.cb, %i.cc
  br i1 %i.cd, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !202

.lr.ph42:                                         ; preds = %.lr.ph42.preheader77, %.lr.ph42
  %.141 = phi i32 [ %i.ck, %.lr.ph42 ], [ %.141.ph, %.lr.ph42.preheader77 ]
  %.12640 = phi ptr [ %i.cj, %.lr.ph42 ], [ %.12640.ph, %.lr.ph42.preheader77 ] ; 3 uses
  %i.ce = load float, ptr %.12640, align 4, !tbaa !42 ; 2 uses
  %i.cf = fcmp fast ogt float %i.ce, 0.000000e+00
  %i.cg = fcmp fast olt float %i.ce, 0.000000e+00
  %i.ch = select fast i1 %i.cg, float -1.000000e+00, float 0.000000e+00
  %i.ci = select fast i1 %i.cf, float 1.000000e+00, float %i.ch
  store float %i.ci, ptr %.12640, align 4, !tbaa !42
  %i.cj = getelementptr inbounds nuw i8, ptr %.12640, i64 4
  %i.ck = add nuw nsw i32 %.141, 1                ; 2 uses
  %exitcond52.not = icmp eq i32 %i.ck, %i.ax
  br i1 %exitcond52.not, label %._crit_edge, label %.lr.ph42, !llvm.loop !203

._crit_edge:                                      ; preds = %.lr.ph42, %middle.block, %.preheader
  %indvars.iv.next54 = add nsw i64 %indvars.iv53, 1 ; 2 uses
  %lftr.wideiv56 = trunc i64 %indvars.iv.next54 to i32
  %exitcond57.not = icmp eq i32 %i.q, %lftr.wideiv56
  br i1 %exitcond57.not, label %._crit_edge45, label %.noexc, !llvm.loop !204

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
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.h = load i32, ptr %0, align 4, !tbaa !37     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !37
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 3 uses
  %.not69 = icmp sgt i32 %i.k, %i.j
  br i1 %.not69, label %._crit_edge71, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !37     ; 4 uses
  %i.o = icmp sgt i32 %i.n, 3
  br i1 %i.o, label %.noexc.preheader, label %.noexc.lr.ph.split.us

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  br label %.noexc

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.r = load ptr, ptr %3, align 8, !tbaa !39, !noalias !211
  %i.s = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !211
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !211
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
  %i.y = load float, ptr %.12666.us, align 4, !tbaa !42
  %i.z = call fast noundef nofpclass(nan inf) float @expm1f(float noundef nofpclass(nan inf) %i.y) #20
  store float %i.z, ptr %.12666.us, align 4, !tbaa !42
  %i.aa = getelementptr inbounds nuw i8, ptr %.12666.us, i64 4
  %i.ab = add nuw nsw i32 %.167.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ab, %i.n
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !208

._crit_edge.us:                                   ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond77.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond77.not, label %._crit_edge71, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ac = phi i32 [ %i.n, %.noexc.preheader ], [ %i.ak, %._crit_edge ] ; 2 uses
  %indvars.iv79 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next80, %._crit_edge ] ; 2 uses
  %i.ad = load ptr, ptr %3, align 8, !tbaa !39, !noalias !211
  %i.ae = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !211
  %i.af = mul i64 %i.ae, %indvars.iv79
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !211
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
  %i.am = load <4 x float>, ptr %.02562, align 16, !tbaa !46 ; 6 uses
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
  %i.bp = fadd fast <4 x float> %i.bc, splat (float 1.000000e+00)
  %i.bq = fadd fast <4 x float> %i.bp, %i.bo
  %i.br = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ba)
  %i.bs = shl <4 x i32> %i.br, splat (i32 23)
  %i.bt = add <4 x i32> %i.bs, splat (i32 1065353216)
  %i.bu = bitcast <4 x i32> %i.bt to <4 x float>
  %i.bv = fmul fast <4 x float> %i.bq, %i.bu
  %i.bw = fadd fast <4 x float> %i.bv, splat (float -1.000000e+00)
  %i.bx = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.am)
  %i.by = fcmp fast uge <4 x float> %i.bx, splat (float f0x38D1B717)
  %.v = select <4 x i1> %i.by, <4 x float> %i.bw, <4 x float> %i.ar
  store <4 x float> %.v, ptr %.02562, align 16, !tbaa !46
  %i.bz = getelementptr inbounds nuw i8, ptr %.02562, i64 16 ; 2 uses
  %i.ca = add nuw nsw i32 %.063, 4                ; 3 uses
  %i.cb = or disjoint i32 %i.ca, 3
  %i.cc = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.cd = icmp slt i32 %i.cb, %i.cc
  br i1 %i.cd, label %.lr.ph, label %.preheader, !llvm.loop !209

.lr.ph68:                                         ; preds = %.preheader, %.lr.ph68
  %.167 = phi i32 [ %i.ch, %.lr.ph68 ], [ %.0.lcssa, %.preheader ]
  %.12666 = phi ptr [ %i.cg, %.lr.ph68 ], [ %.025.lcssa, %.preheader ] ; 3 uses
  %i.ce = load float, ptr %.12666, align 4, !tbaa !42
  %i.cf = call fast noundef nofpclass(nan inf) float @expm1f(float noundef nofpclass(nan inf) %i.ce) #20
  store float %i.cf, ptr %.12666, align 4, !tbaa !42
  %i.cg = getelementptr inbounds nuw i8, ptr %.12666, i64 4
  %i.ch = add nuw nsw i32 %.167, 1                ; 2 uses
  %exitcond78.not = icmp eq i32 %i.ch, %i.ak
  br i1 %exitcond78.not, label %._crit_edge, label %.lr.ph68, !llvm.loop !208

._crit_edge:                                      ; preds = %.lr.ph68, %.preheader
  %indvars.iv.next80 = add nsw i64 %indvars.iv79, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor14unary_op_truncEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %i.aa = bitcast i32 %i.z to float
  %i.ab = call fast noundef nofpclass(nan inf) float @llvm.trunc.f32(float %i.aa)
  %i.ac = bitcast float %i.ab to i32
  %i.ad = lshr i32 %i.ac, 16
  %i.ae = trunc nuw i32 %i.ad to i16
  store i16 %i.ae, ptr %i.w, align 2, !tbaa !51
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %.noexc.us
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 2 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !51
  %i.ah = zext i16 %i.ag to i32
  %i.ai = shl nuw i32 %i.ah, 16
  %i.aj = bitcast i32 %i.ai to float
  %i.ak = call fast noundef nofpclass(nan inf) float @llvm.trunc.f32(float %i.aj)
  %i.al = bitcast float %i.ak to i32
  %i.am = lshr i32 %i.al, 16
  %i.an = trunc nuw i32 %i.am to i16
  store i16 %i.an, ptr %i.af, align 2, !tbaa !51
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !51
  %i.aq = zext i16 %i.ap to i32
  %i.ar = shl nuw i32 %i.aq, 16
  %i.as = bitcast i32 %i.ar to float
  %i.at = call fast noundef nofpclass(nan inf) float @llvm.trunc.f32(float %i.as)
  %i.au = bitcast float %i.at to i32
  %i.av = lshr i32 %i.au, 16
  %i.aw = trunc nuw i32 %i.av to i16
  store i16 %i.aw, ptr %i.ao, align 2, !tbaa !51
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.d, %bb.c, %.noexc.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond53.not = icmp eq i32 %i.v, %lftr.wideiv
  br i1 %exitcond53.not, label %._crit_edge47, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ax = phi i64 [ %.pre64, %.noexc.preheader ], [ %i.bf, %._crit_edge ] ; 2 uses
  %i.ay = phi ptr [ %.pre62, %.noexc.preheader ], [ %i.bg, %._crit_edge ] ; 2 uses
  %i.az = phi i32 [ %i.n, %.noexc.preheader ], [ %i.bh, %._crit_edge ] ; 2 uses
  %i.ba = phi i64 [ %.pre60, %.noexc.preheader ], [ %i.bi, %._crit_edge ] ; 2 uses
  %indvars.iv55 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next56, %._crit_edge ] ; 2 uses
  %i.bb = mul i64 %i.ax, %indvars.iv55
  %i.bc = mul i64 %i.bb, %i.ba
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bc ; 2 uses
  %i.be = icmp sgt i32 %i.az, 3
  br i1 %i.be, label %.lr.ph, label %.preheader

.preheader.loopexit:                              ; preds = %.lr.ph
  %.pre = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !391
  %.pre61 = load ptr, ptr %3, align 8, !tbaa !39, !noalias !391
  %.pre63 = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !391
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.noexc
  %i.bf = phi i64 [ %i.ax, %.noexc ], [ %.pre63, %.preheader.loopexit ]
  %i.bg = phi ptr [ %i.ay, %.noexc ], [ %.pre61, %.preheader.loopexit ]
  %i.bh = phi i32 [ %i.az, %.noexc ], [ %i.cr, %.preheader.loopexit ] ; 4 uses
  %i.bi = phi i64 [ %i.ba, %.noexc ], [ %.pre, %.preheader.loopexit ]
  %.025.lcssa = phi ptr [ %i.bd, %.noexc ], [ %i.co, %.preheader.loopexit ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.cp, %.preheader.loopexit ] ; 4 uses
  %i.bj = icmp slt i32 %.0.lcssa, %i.bh
  br i1 %i.bj, label %.lr.ph44.preheader, label %._crit_edge

.lr.ph44.preheader:                               ; preds = %.preheader
  %i.bk = xor i32 %.0.lcssa, -1
  %i.bl = add i32 %i.bh, %i.bk                    ; 2 uses
  %i.bm = zext i32 %i.bl to i64
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bl, 7
  br i1 %min.iters.check, label %.lr.ph44.preheader78, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph44.preheader
  %n.vec = and i64 %i.bn, 8589934584              ; 4 uses
  %i.bo = trunc i64 %n.vec to i32
  %i.bp = add i32 %.0.lcssa, %i.bo
  %i.bq = shl nuw nsw i64 %n.vec, 1
  %i.br = getelementptr i8, ptr %.025.lcssa, i64 %i.bq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bs = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.025.lcssa, i64 %i.bs ; 2 uses
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !51
  %i.bt = zext <8 x i16> %wide.load to <8 x i32>
  %i.bu = shl nuw <8 x i32> %i.bt, splat (i32 16)
  %i.bv = bitcast <8 x i32> %i.bu to <8 x float>
  %i.bw = call fast <8 x float> @llvm.trunc.v8f32(<8 x float> %i.bv)
  %i.bx = bitcast <8 x float> %i.bw to <8 x i32>
  %i.by = lshr <8 x i32> %i.bx, splat (i32 16)
  %i.bz = trunc nuw <8 x i32> %i.by to <8 x i16>
  store <8 x i16> %i.bz, ptr %next.gep, align 2, !tbaa !51
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !387

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bn, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph44.preheader78

.lr.ph44.preheader78:                             ; preds = %.lr.ph44.preheader, %middle.block
  %.143.ph = phi i32 [ %.0.lcssa, %.lr.ph44.preheader ], [ %i.bp, %middle.block ]
  %.12642.ph = phi ptr [ %.025.lcssa, %.lr.ph44.preheader ], [ %i.br, %middle.block ]
  br label %.lr.ph44

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.039 = phi i32 [ %i.cp, %.lr.ph ], [ 0, %.noexc ]
  %.02538 = phi ptr [ %i.co, %.lr.ph ], [ %i.bd, %.noexc ] ; 3 uses
  %i.cb = load i64, ptr %.02538, align 1, !tbaa !46
  %i.cc = insertelement <2 x i64> poison, i64 %i.cb, i64 0
  %i.cd = bitcast <2 x i64> %i.cc to <8 x i16>
  %i.ce = shufflevector <8 x i16> %i.cd, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.cf = bitcast <8 x i16> %i.ce to <4 x float>
  %i.cg = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cf)
  %i.ch = sitofp fast <4 x i32> %i.cg to <4 x float>
  %i.ci = bitcast <4 x float> %i.ch to <8 x i16>
  %i.cj = shufflevector <8 x i16> %i.ci, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.ck = bitcast <8 x i16> %i.cj to <4 x float>
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.cm = bitcast <4 x float> %i.cl to <2 x i64>
  %i.cn = extractelement <2 x i64> %i.cm, i64 0
  store i64 %i.cn, ptr %.02538, align 1, !tbaa !46
  %i.co = getelementptr inbounds nuw i8, ptr %.02538, i64 8 ; 2 uses
  %i.cp = add nuw nsw i32 %.039, 4                ; 3 uses
  %i.cq = or disjoint i32 %i.cp, 3
  %i.cr = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.cs = icmp slt i32 %i.cq, %i.cr
  br i1 %i.cs, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !388

.lr.ph44:                                         ; preds = %.lr.ph44.preheader78, %.lr.ph44
  %.143 = phi i32 [ %i.dc, %.lr.ph44 ], [ %.143.ph, %.lr.ph44.preheader78 ]
  %.12642 = phi ptr [ %i.db, %.lr.ph44 ], [ %.12642.ph, %.lr.ph44.preheader78 ] ; 3 uses
  %i.ct = load i16, ptr %.12642, align 2, !tbaa !51
  %i.cu = zext i16 %i.ct to i32
  %i.cv = shl nuw i32 %i.cu, 16
  %i.cw = bitcast i32 %i.cv to float
  %i.cx = call fast noundef nofpclass(nan inf) float @llvm.trunc.f32(float %i.cw)
  %i.cy = bitcast float %i.cx to i32
  %i.cz = lshr i32 %i.cy, 16
  %i.da = trunc nuw i32 %i.cz to i16
  store i16 %i.da, ptr %.12642, align 2, !tbaa !51
  %i.db = getelementptr inbounds nuw i8, ptr %.12642, i64 2
  %i.dc = add nuw nsw i32 %.143, 1                ; 2 uses
  %exitcond54.not = icmp eq i32 %i.dc, %i.bh
  br i1 %exitcond54.not, label %._crit_edge, label %.lr.ph44, !llvm.loop !389

._crit_edge:                                      ; preds = %.lr.ph44, %middle.block, %.preheader
  %indvars.iv.next56 = add nsw i64 %indvars.iv55, 1 ; 2 uses
  %lftr.wideiv58 = trunc i64 %indvars.iv.next56 to i32
  %exitcond59.not = icmp eq i32 %i.q, %lftr.wideiv58
  br i1 %exitcond59.not, label %._crit_edge47, label %.noexc, !llvm.loop !390

._crit_edge47:                                    ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge47, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor13unary_op_signEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.h = load i32, ptr %0, align 4, !tbaa !37     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !37
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 3 uses
  %.not46 = icmp sgt i32 %i.k, %i.j
  br i1 %.not46, label %._crit_edge48, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !37     ; 5 uses
  %i.o = icmp sgt i32 %i.n, 3
  br i1 %i.o, label %.noexc.preheader, label %.noexc.lr.ph.split.us

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  %.pre61 = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !398
  %.pre63 = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !398
  br label %.noexc

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.r = load ptr, ptr %3, align 8, !tbaa !39, !noalias !398
  %i.s = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !398
  %6 = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !398
  %factor.op.mul = mul i64 %i.s, %6
  %i.t = icmp sgt i32 %i.n, 0
  br i1 %i.t, label %.noexc.us.preheader, label %._crit_edge48

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.us
  %i.u = sext i32 %i.k to i64
  %i.v = add nsw i32 %i.j, 1
  %exitcond.not = icmp eq i32 %i.n, 1
  %exitcond.not.1 = icmp eq i32 %i.n, 2
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.u, %.noexc.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass ; 4 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !51
  %i.y = zext i16 %i.x to i32
  %i.z = shl nuw i32 %i.y, 16
  %i.aa = bitcast i32 %i.z to float               ; 2 uses
  %i.ab = fcmp fast ogt float %i.aa, 0.000000e+00
  %i.ac = fcmp fast olt float %i.aa, 0.000000e+00
  %i.ad = select i1 %i.ac, i16 -16512, i16 0
  %i.ae = select i1 %i.ab, i16 16256, i16 %i.ad
  store i16 %i.ae, ptr %i.w, align 2, !tbaa !51
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %.noexc.us
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 2 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !51
  %i.ah = zext i16 %i.ag to i32
  %i.ai = shl nuw i32 %i.ah, 16
  %i.aj = bitcast i32 %i.ai to float              ; 2 uses
  %i.ak = fcmp fast ogt float %i.aj, 0.000000e+00
  %i.al = fcmp fast olt float %i.aj, 0.000000e+00
  %i.am = select i1 %i.al, i16 -16512, i16 0
  %i.an = select i1 %i.ak, i16 16256, i16 %i.am
  store i16 %i.an, ptr %i.af, align 2, !tbaa !51
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !51
  %i.aq = zext i16 %i.ap to i32
  %i.ar = shl nuw i32 %i.aq, 16
  %i.as = bitcast i32 %i.ar to float              ; 2 uses
  %i.at = fcmp fast ogt float %i.as, 0.000000e+00
  %i.au = fcmp fast olt float %i.as, 0.000000e+00
  %i.av = select i1 %i.au, i16 -16512, i16 0
  %i.aw = select i1 %i.at, i16 16256, i16 %i.av
  store i16 %i.aw, ptr %i.ao, align 2, !tbaa !51
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.d, %bb.c, %.noexc.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond54.not = icmp eq i32 %i.v, %lftr.wideiv
  br i1 %exitcond54.not, label %._crit_edge48, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %7 = phi i64 [ %.pre63, %.noexc.preheader ], [ %8, %._crit_edge ] ; 2 uses
  %i.ax = phi i64 [ %.pre61, %.noexc.preheader ], [ %i.be, %._crit_edge ] ; 2 uses
  %i.ay = phi i32 [ %i.n, %.noexc.preheader ], [ %i.bf, %._crit_edge ] ; 2 uses
  %indvars.iv56 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next57, %._crit_edge ] ; 2 uses
  %i.az = load ptr, ptr %3, align 8, !tbaa !39, !noalias !398
  %i.ba = mul i64 %i.ax, %indvars.iv56
  %i.bb = mul i64 %i.ba, %7
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bb ; 2 uses
  %i.bd = icmp sgt i32 %i.ay, 3
  br i1 %i.bd, label %.lr.ph, label %.preheader

.preheader.loopexit:                              ; preds = %.lr.ph
  %.pre = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !398
  %.pre.a = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !398
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.noexc
  %8 = phi i64 [ %7, %.noexc ], [ %.pre.a, %.preheader.loopexit ]
  %i.be = phi i64 [ %i.ax, %.noexc ], [ %.pre, %.preheader.loopexit ]
  %i.bf = phi i32 [ %i.ay, %.noexc ], [ %i.cp, %.preheader.loopexit ] ; 4 uses
  %.025.lcssa = phi ptr [ %i.bc, %.noexc ], [ %i.cm, %.preheader.loopexit ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.cn, %.preheader.loopexit ] ; 4 uses
  %i.bg = icmp slt i32 %.0.lcssa, %i.bf
  br i1 %i.bg, label %.lr.ph45.preheader, label %._crit_edge

.lr.ph45.preheader:                               ; preds = %.preheader
  %i.bh = xor i32 %.0.lcssa, -1
  %i.bi = add i32 %i.bf, %i.bh                    ; 2 uses
  %i.bj = zext i32 %i.bi to i64
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bi, 7
  br i1 %min.iters.check, label %.lr.ph45.preheader75, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph45.preheader
  %n.vec = and i64 %i.bk, 8589934584              ; 4 uses
  %i.bl = trunc i64 %n.vec to i32
  %i.bm = add i32 %.0.lcssa, %i.bl
  %i.bn = shl nuw nsw i64 %n.vec, 1
  %i.bo = getelementptr i8, ptr %.025.lcssa, i64 %i.bn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bp = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.025.lcssa, i64 %i.bp ; 2 uses
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !51
  %i.bq = zext <8 x i16> %wide.load to <8 x i32>
  %i.br = shl nuw <8 x i32> %i.bq, splat (i32 16)
  %i.bs = bitcast <8 x i32> %i.br to <8 x float>  ; 2 uses
  %i.bt = fcmp fast ogt <8 x float> %i.bs, zeroinitializer
  %i.bu = fcmp fast olt <8 x float> %i.bs, zeroinitializer
  %i.bv = select <8 x i1> %i.bu, <8 x i16> splat (i16 -16512), <8 x i16> zeroinitializer
  %i.bw = select <8 x i1> %i.bt, <8 x i16> splat (i16 16256), <8 x i16> %i.bv
  store <8 x i16> %i.bw, ptr %next.gep, align 2, !tbaa !51
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !394

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph45.preheader75

.lr.ph45.preheader75:                             ; preds = %.lr.ph45.preheader, %middle.block
  %.144.ph = phi i32 [ %.0.lcssa, %.lr.ph45.preheader ], [ %i.bm, %middle.block ]
  %.12643.ph = phi ptr [ %.025.lcssa, %.lr.ph45.preheader ], [ %i.bo, %middle.block ]
  br label %.lr.ph45

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.040 = phi i32 [ %i.cn, %.lr.ph ], [ 0, %.noexc ]
  %.02539 = phi ptr [ %i.cm, %.lr.ph ], [ %i.bc, %.noexc ] ; 3 uses
  %i.by = load i64, ptr %.02539, align 1, !tbaa !46
  %i.bz = insertelement <2 x i64> poison, i64 %i.by, i64 0
  %i.ca = bitcast <2 x i64> %i.bz to <8 x i16>
  %i.cb = shufflevector <8 x i16> %i.ca, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.cc = bitcast <8 x i16> %i.cb to <4 x float>  ; 2 uses
  %i.cd = fcmp fast ogt <4 x float> %i.cc, zeroinitializer
  %i.ce = fcmp fast olt <4 x float> %i.cc, zeroinitializer
  %i.cf = select fast <4 x i1> %i.ce, <4 x float> splat (float -1.000000e+00), <4 x float> splat (float -0.000000e+00)
  %9 = select fast <4 x i1> %i.cd, <4 x float> splat (float 1.000000e+00), <4 x float> %i.cf
  %i.cg = bitcast <4 x float> %9 to <8 x i16>
  %i.ch = shufflevector <8 x i16> %i.cg, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.ci = bitcast <8 x i16> %i.ch to <4 x float>
  %i.cj = shufflevector <4 x float> %i.ci, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ck = bitcast <4 x float> %i.cj to <2 x i64>
  %i.cl = extractelement <2 x i64> %i.ck, i64 0
  store i64 %i.cl, ptr %.02539, align 1, !tbaa !46
  %i.cm = getelementptr inbounds nuw i8, ptr %.02539, i64 8 ; 2 uses
  %i.cn = add nuw nsw i32 %.040, 4                ; 3 uses
  %i.co = or disjoint i32 %i.cn, 3
  %i.cp = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.cq = icmp slt i32 %i.co, %i.cp
  br i1 %i.cq, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !395

.lr.ph45:                                         ; preds = %.lr.ph45.preheader75, %.lr.ph45
  %.144 = phi i32 [ %i.da, %.lr.ph45 ], [ %.144.ph, %.lr.ph45.preheader75 ]
  %.12643 = phi ptr [ %i.cz, %.lr.ph45 ], [ %.12643.ph, %.lr.ph45.preheader75 ] ; 3 uses
  %i.cr = load i16, ptr %.12643, align 2, !tbaa !51
  %i.cs = zext i16 %i.cr to i32
  %i.ct = shl nuw i32 %i.cs, 16
  %i.cu = bitcast i32 %i.ct to float              ; 2 uses
  %i.cv = fcmp fast ogt float %i.cu, 0.000000e+00
  %i.cw = fcmp fast olt float %i.cu, 0.000000e+00
  %i.cx = select i1 %i.cw, i16 -16512, i16 0
  %i.cy = select i1 %i.cv, i16 16256, i16 %i.cx
  store i16 %i.cy, ptr %.12643, align 2, !tbaa !51
  %i.cz = getelementptr inbounds nuw i8, ptr %.12643, i64 2
  %i.da = add nuw nsw i32 %.144, 1                ; 2 uses
  %exitcond55.not = icmp eq i32 %i.da, %i.bf
  br i1 %exitcond55.not, label %._crit_edge, label %.lr.ph45, !llvm.loop !396

._crit_edge:                                      ; preds = %.lr.ph45, %middle.block, %.preheader
  %indvars.iv.next57 = add nsw i64 %indvars.iv56, 1 ; 2 uses
  %lftr.wideiv59 = trunc i64 %indvars.iv.next57 to i32
  %exitcond60.not = icmp eq i32 %i.q, %lftr.wideiv59
  br i1 %exitcond60.not, label %._crit_edge48, label %.noexc, !llvm.loop !397

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
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.h = load i32, ptr %0, align 4, !tbaa !37     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !37
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 3 uses
  %.not72 = icmp sgt i32 %i.k, %i.j
  br i1 %.not72, label %._crit_edge74, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !37     ; 4 uses
  %i.o = icmp sgt i32 %i.n, 3
  br i1 %i.o, label %.noexc.preheader, label %.noexc.lr.ph.split.us

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  br label %.noexc

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.r = load ptr, ptr %3, align 8, !tbaa !39, !noalias !404
  %i.s = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !404
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !404
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
  %i.y = load i16, ptr %.12669.us, align 2, !tbaa !51
  %i.z = zext i16 %i.y to i32
  %i.aa = shl nuw i32 %i.z, 16
  %i.ab = bitcast i32 %i.aa to float
  %i.ac = call fast noundef nofpclass(nan inf) float @expm1f(float noundef nofpclass(nan inf) %i.ab) #20
  %i.ad = bitcast float %i.ac to i32
  %i.ae = lshr i32 %i.ad, 16
  %i.af = trunc nuw i32 %i.ae to i16
  store i16 %i.af, ptr %.12669.us, align 2, !tbaa !51
  %i.ag = getelementptr inbounds nuw i8, ptr %.12669.us, i64 2
  %i.ah = add nuw nsw i32 %.170.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ah, %i.n
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !401

._crit_edge.us:                                   ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond80.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond80.not, label %._crit_edge74, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ai = phi i32 [ %i.n, %.noexc.preheader ], [ %i.aq, %._crit_edge ] ; 2 uses
  %indvars.iv82 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next83, %._crit_edge ] ; 2 uses
  %i.aj = load ptr, ptr %3, align 8, !tbaa !39, !noalias !404
  %i.ak = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !404
  %i.al = mul i64 %i.ak, %indvars.iv82
  %i.am = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !404
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
  %i.as = load i64, ptr %.02565, align 1, !tbaa !46
  %i.at = insertelement <2 x i64> poison, i64 %i.as, i64 0
  %i.au = bitcast <2 x i64> %i.at to <8 x i16>
  %i.av = shufflevector <8 x i16> %i.au, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3> ; 2 uses
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
  %i.bz = fadd fast <4 x float> %i.bm, splat (float 1.000000e+00)
  %i.ca = fadd fast <4 x float> %i.bz, %i.by
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
end_hunk_1
